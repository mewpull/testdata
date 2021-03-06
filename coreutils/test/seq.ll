; ModuleID = 'coreutils-8.30/src/seq.bc'
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
%struct.operand = type { x86_fp80, i64, i32 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"Usage: %s [OPTION]... LAST\0A  or:  %s [OPTION]... FIRST LAST\0A  or:  %s [OPTION]... FIRST INCREMENT LAST\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Print numbers from FIRST to LAST, in steps of INCREMENT.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [212 x i8] c"  -f, --format=FORMAT      use printf style floating-point FORMAT\0A  -s, --separator=STRING   use STRING to separate numbers (default: \5Cn)\0A  -w, --equal-width        equalize width by padding with leading zeroes\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [513 x i8] c"\0AIf FIRST or INCREMENT is omitted, it defaults to 1.  That is, an\0Aomitted INCREMENT defaults to 1 even when LAST is smaller than FIRST.\0AThe sequence of numbers ends when the sum of the current number and\0AINCREMENT would become greater than LAST.\0AFIRST, INCREMENT, and LAST are interpreted as floating point values.\0AINCREMENT is usually positive if FIRST is smaller than LAST, and\0AINCREMENT is usually negative if FIRST is greater than LAST.\0AINCREMENT must not be 0; none of FIRST, INCREMENT and LAST may be NaN.\0A\00", align 1
@.str.7 = private unnamed_addr constant [208 x i8] c"FORMAT must be suitable for printing one argument of type 'double';\0Ait defaults to %.PRECf if FIRST, INCREMENT, and LAST are all fixed point\0Adecimal numbers with maximum precision PREC, and to %g otherwise.\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.35 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@equal_width = internal unnamed_addr global i1 false, align 1, !dbg !0
@.str.12 = private constant [2 x i8] c"\0A\00", align 1, !dbg !47
@separator = internal unnamed_addr global i8* null, align 8, !dbg !29
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"+f:s:w\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !33
@optarg = external local_unnamed_addr global i8*, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"Ulrich Drepper\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"format %s has no %% directive\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"-+#0 '\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"format %s ends in %%\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"efgaEFGA\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"format %s has unknown %%%c directive\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"format %s has too many %% directives\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"format string may not be specified when printing equal width strings\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"invalid Zero increment value: %s\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%0.Lf\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@get_default_format.format_buf = internal global [28 x i8] zeroinitializer, align 16, !dbg !52
@.str.57 = private unnamed_addr constant [11 x i8] c"%%0%d.%dLf\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"%%.%dLf\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"%Lg\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"invalid floating point argument: %s\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"invalid %s argument: %s\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"not-a-number\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"equal-width\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), align 8, !dbg !86
@.str.61 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !92
@.str.64 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !122
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !127
@.str.67 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.68 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.69 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !130
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !137
@.str.76 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.77 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.78 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.81, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.82, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.83, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.86, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.88, i32 0, i32 0), i8* null], align 16, !dbg !144
@.str.79 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.80 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.81 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.82 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.83 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.84 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.85 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.86 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.87 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.88 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !170
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !177
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !189
@.str.11.89 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.90 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.91 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.92 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.93 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.94 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.95 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !196
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !203
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !191
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !205
@.str.102 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.103 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.104 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.105 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.118 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.119 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.120 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.121 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.122 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.123 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !211
@.str.1.136 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.149 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.152 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.153 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !659 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !664, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 %0, metadata !663, metadata !DIExpression()), !dbg !687
  %3 = icmp eq i32 %0, 0, !dbg !688
  br i1 %3, label %9, label %4, !dbg !689

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !690, !tbaa !692
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !690
  %7 = load i8*, i8** @program_name, align 8, !dbg !690, !tbaa !692
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !690
  br label %69, !dbg !690

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !696
  %11 = load i8*, i8** @program_name, align 8, !dbg !696, !tbaa !692
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11, i8* %11) #12, !dbg !696
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !697
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !697, !tbaa !692
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !697
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23, i64 0, i64 0), i32 5) #12, !dbg !698
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !698, !tbaa !692
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #12, !dbg !698
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !703
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !692
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !703
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !704
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !692
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !704
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !705
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !692
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !705
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([513 x i8], [513 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !706
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !706, !tbaa !692
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !706
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !707
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !707, !tbaa !692
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !707
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !708
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #12, !dbg !708
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %34, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !683
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !709
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !672, metadata !DIExpression()) #12, !dbg !710
  br label %36, !dbg !711

; <label>:36:                                     ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !672, metadata !DIExpression()) #12, !dbg !710
  %39 = tail call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %37) #8, !dbg !711
  %40 = icmp eq i32 %39, 0, !dbg !711
  br i1 %40, label %46, label %41, !dbg !712

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !713
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !672, metadata !DIExpression()) #12, !dbg !710
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !714
  %44 = load i8*, i8** %43, align 8, !dbg !714, !tbaa !715
  %45 = icmp eq i8* %44, null, !dbg !717
  br i1 %45, label %46, label %36, !dbg !718, !llvm.loop !719

; <label>:46:                                     ; preds = %41, %36
  %47 = phi %struct.infomap* [ %42, %41 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !672, metadata !DIExpression()) #12, !dbg !710
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !672, metadata !DIExpression()) #12, !dbg !710
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !722
  %49 = load i8*, i8** %48, align 8, !dbg !722, !tbaa !724
  %50 = icmp eq i8* %49, null, !dbg !725
  %51 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %49, !dbg !726
  call void @llvm.dbg.value(metadata i8* %51, metadata !671, metadata !DIExpression()) #12, !dbg !727
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #12, !dbg !728
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0)) #12, !dbg !728
  %54 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !729
  call void @llvm.dbg.value(metadata i8* %54, metadata !679, metadata !DIExpression()) #12, !dbg !730
  %55 = icmp eq i8* %54, null, !dbg !731
  br i1 %55, label %62, label %56, !dbg !733

; <label>:56:                                     ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i64 3) #8, !dbg !734
  %58 = icmp eq i32 %57, 0, !dbg !734
  br i1 %58, label %62, label %59, !dbg !735

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.35, i64 0, i64 0), i32 5) #12, !dbg !736
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !736
  br label %62, !dbg !738

; <label>:62:                                     ; preds = %46, %56, %59
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i32 5) #12, !dbg !739
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !739
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i64 0, i64 0), i32 5) #12, !dbg !740
  %66 = icmp eq i8* %51, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), !dbg !740
  %67 = select i1 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !740
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* %51, i8* %67) #12, !dbg !740
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #12, !dbg !741
  br label %69

; <label>:69:                                     ; preds = %62, %4
  tail call void @exit(i32 %0) #15, !dbg !742
  unreachable, !dbg !742
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !743 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.operand, align 16
  %7 = alloca %struct.operand, align 16
  %8 = alloca %struct.operand, align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !748, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i8** %1, metadata !749, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i8* null, metadata !759, metadata !DIExpression()), !dbg !771
  %11 = load i8*, i8** %1, align 8, !dbg !772, !tbaa !692
  tail call void @set_program_name(i8* %11) #12, !dbg !773
  %12 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !774
  %13 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !775
  %14 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !776
  %15 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !777
  store i1 false, i1* @equal_width, align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** @separator, align 8, !dbg !778, !tbaa !692
  call void @llvm.dbg.value(metadata i8* null, metadata !759, metadata !DIExpression()), !dbg !771
  %16 = load i32, i32* @optind, align 4, !dbg !779, !tbaa !780
  %17 = icmp slt i32 %16, %0, !dbg !782
  br i1 %17, label %18, label %52, !dbg !783

; <label>:18:                                     ; preds = %2, %48
  %19 = phi i32 [ %50, %48 ], [ %16, %2 ]
  %20 = phi i8* [ %49, %48 ], [ null, %2 ]
  call void @llvm.dbg.value(metadata i8* %20, metadata !759, metadata !DIExpression()), !dbg !771
  %21 = sext i32 %19 to i64, !dbg !784
  %22 = getelementptr inbounds i8*, i8** %1, i64 %21, !dbg !784
  %23 = load i8*, i8** %22, align 8, !dbg !784, !tbaa !692
  %24 = load i8, i8* %23, align 1, !dbg !784, !tbaa !787
  %25 = icmp eq i8 %24, 45, !dbg !788
  br i1 %25, label %26, label %34, !dbg !789

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !790
  %28 = load i8, i8* %27, align 1, !dbg !790, !tbaa !787
  %29 = icmp eq i8 %28, 46, !dbg !791
  br i1 %29, label %52, label %30, !dbg !792

; <label>:30:                                     ; preds = %26
  %31 = sext i8 %28 to i32, !dbg !790
  call void @llvm.dbg.value(metadata i32 %31, metadata !750, metadata !DIExpression()), !dbg !793
  %32 = add nsw i32 %31, -48, !dbg !794
  %33 = icmp ult i32 %32, 10, !dbg !794
  br i1 %33, label %52, label %34, !dbg !795

; <label>:34:                                     ; preds = %30, %18
  %35 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !796
  call void @llvm.dbg.value(metadata i32 %35, metadata !750, metadata !DIExpression()), !dbg !793
  switch i32 %35, label %47 [
    i32 -1, label %36
    i32 102, label %38
    i32 115, label %40
    i32 119, label %42
    i32 -130, label %43
    i32 -131, label %44
  ], !dbg !797

; <label>:36:                                     ; preds = %34
  call void @llvm.dbg.value(metadata i8* %20, metadata !759, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i8* %20, metadata !759, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i8* %20, metadata !759, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i8* %20, metadata !759, metadata !DIExpression()), !dbg !771
  %37 = load i32, i32* @optind, align 4, !dbg !798, !tbaa !780
  br label %52, !dbg !797

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** @optarg, align 8, !dbg !799, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %39, metadata !759, metadata !DIExpression()), !dbg !771
  br label %48, !dbg !801

; <label>:40:                                     ; preds = %34
  %41 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !802, !tbaa !692
  store i64 %41, i64* bitcast (i8** @separator to i64*), align 8, !dbg !803, !tbaa !692
  br label %48, !dbg !804

; <label>:42:                                     ; preds = %34
  store i1 true, i1* @equal_width, align 1
  br label %48, !dbg !805

; <label>:43:                                     ; preds = %34
  tail call void @usage(i32 0) #16, !dbg !806
  unreachable, !dbg !806

; <label>:44:                                     ; preds = %34
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !807, !tbaa !692
  %46 = load i8*, i8** @Version, align 8, !dbg !807, !tbaa !692
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* null) #12, !dbg !807
  tail call void @exit(i32 0) #15, !dbg !807
  unreachable, !dbg !807

; <label>:47:                                     ; preds = %34
  tail call void @usage(i32 1) #16, !dbg !808
  unreachable, !dbg !808

; <label>:48:                                     ; preds = %42, %40, %38
  %49 = phi i8* [ %20, %42 ], [ %20, %40 ], [ %39, %38 ], !dbg !809
  call void @llvm.dbg.value(metadata i8* %49, metadata !759, metadata !DIExpression()), !dbg !771
  %50 = load i32, i32* @optind, align 4, !dbg !779, !tbaa !780
  %51 = icmp slt i32 %50, %0, !dbg !782
  br i1 %51, label %18, label %52, !dbg !783, !llvm.loop !810

; <label>:52:                                     ; preds = %48, %30, %26, %36, %2
  %53 = phi i32 [ %16, %2 ], [ %37, %36 ], [ %19, %26 ], [ %19, %30 ], [ %50, %48 ], !dbg !798
  %54 = phi i8* [ null, %2 ], [ %20, %36 ], [ %20, %26 ], [ %20, %30 ], [ %49, %48 ], !dbg !771
  call void @llvm.dbg.value(metadata i8* %54, metadata !759, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i8* %54, metadata !759, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i8* %54, metadata !759, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i8* %54, metadata !759, metadata !DIExpression()), !dbg !771
  %55 = sub nsw i32 %0, %53, !dbg !812
  call void @llvm.dbg.value(metadata i32 %55, metadata !760, metadata !DIExpression()), !dbg !813
  %56 = icmp eq i32 %55, 0, !dbg !814
  br i1 %56, label %57, label %59, !dbg !816

; <label>:57:                                     ; preds = %52
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #12, !dbg !817
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %58) #12, !dbg !819
  tail call void @usage(i32 1) #16, !dbg !820
  unreachable, !dbg !820

; <label>:59:                                     ; preds = %52
  %60 = icmp ugt i32 %55, 3, !dbg !821
  br i1 %60, label %61, label %69, !dbg !823

; <label>:61:                                     ; preds = %59
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !824
  %63 = load i32, i32* @optind, align 4, !dbg !826, !tbaa !780
  %64 = add nsw i32 %63, 3, !dbg !827
  %65 = sext i32 %64 to i64, !dbg !828
  %66 = getelementptr inbounds i8*, i8** %1, i64 %65, !dbg !828
  %67 = load i8*, i8** %66, align 8, !dbg !828, !tbaa !692
  %68 = tail call i8* @quote(i8* %67) #12, !dbg !829
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %62, i8* %68) #12, !dbg !830
  tail call void @usage(i32 1) #16, !dbg !831
  unreachable, !dbg !831

; <label>:69:                                     ; preds = %59
  %70 = icmp eq i8* %54, null, !dbg !832
  br i1 %70, label %165, label %71, !dbg !834

; <label>:71:                                     ; preds = %69, %87
  %72 = phi i64 [ %88, %87 ], [ 0, %69 ], !dbg !835
  %73 = phi i64 [ %90, %87 ], [ 0, %69 ], !dbg !859
  call void @llvm.dbg.value(metadata i64 %73, metadata !846, metadata !DIExpression()) #12, !dbg !860
  call void @llvm.dbg.value(metadata i64 %72, metadata !847, metadata !DIExpression()) #12, !dbg !861
  %74 = getelementptr inbounds i8, i8* %54, i64 %73, !dbg !862
  %75 = load i8, i8* %74, align 1, !dbg !862, !tbaa !787
  %76 = icmp eq i8 %75, 37, !dbg !863
  br i1 %76, label %77, label %82, !dbg !864

; <label>:77:                                     ; preds = %71
  %78 = add i64 %73, 1, !dbg !865
  %79 = getelementptr inbounds i8, i8* %54, i64 %78, !dbg !866
  %80 = load i8, i8* %79, align 1, !dbg !866, !tbaa !787
  %81 = icmp eq i8 %80, 37, !dbg !867
  br i1 %81, label %87, label %91, !dbg !868

; <label>:82:                                     ; preds = %71
  %83 = icmp eq i8 %75, 0, !dbg !869
  br i1 %83, label %84, label %87, !dbg !871

; <label>:84:                                     ; preds = %82
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0), i32 5) #12, !dbg !872
  %86 = tail call i8* @quote(i8* nonnull %54) #12, !dbg !872
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %85, i8* %86) #12, !dbg !872
  unreachable, !dbg !872

; <label>:87:                                     ; preds = %82, %77
  %88 = add i64 %72, 1, !dbg !873
  call void @llvm.dbg.value(metadata i64 %88, metadata !847, metadata !DIExpression()) #12, !dbg !861
  %89 = select i1 %76, i64 2, i64 1, !dbg !874
  %90 = add i64 %89, %73, !dbg !875
  call void @llvm.dbg.value(metadata i64 %90, metadata !846, metadata !DIExpression()) #12, !dbg !860
  br label %71, !dbg !876, !llvm.loop !877

; <label>:91:                                     ; preds = %77
  call void @llvm.dbg.value(metadata i64 %72, metadata !847, metadata !DIExpression()) #12, !dbg !861
  call void @llvm.dbg.value(metadata i64 %72, metadata !847, metadata !DIExpression()) #12, !dbg !861
  call void @llvm.dbg.value(metadata i64 %72, metadata !847, metadata !DIExpression()) #12, !dbg !861
  %92 = getelementptr inbounds i8, i8* %54, i64 %78, !dbg !866
  call void @llvm.dbg.value(metadata i64 %72, metadata !847, metadata !DIExpression()) #12, !dbg !861
  call void @llvm.dbg.value(metadata i64 %72, metadata !847, metadata !DIExpression()) #12, !dbg !861
  call void @llvm.dbg.value(metadata i64 %72, metadata !847, metadata !DIExpression()) #12, !dbg !861
  call void @llvm.dbg.value(metadata i64 %72, metadata !847, metadata !DIExpression()) #12, !dbg !861
  call void @llvm.dbg.value(metadata i64 %72, metadata !847, metadata !DIExpression()) #12, !dbg !861
  call void @llvm.dbg.value(metadata i64 %72, metadata !847, metadata !DIExpression()) #12, !dbg !861
  call void @llvm.dbg.value(metadata i64 %78, metadata !846, metadata !DIExpression()) #12, !dbg !860
  %93 = tail call i64 @strspn(i8* nonnull %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !880
  %94 = add i64 %93, %78, !dbg !881
  call void @llvm.dbg.value(metadata i64 %94, metadata !846, metadata !DIExpression()) #12, !dbg !860
  %95 = getelementptr inbounds i8, i8* %54, i64 %94, !dbg !882
  %96 = tail call i64 @strspn(i8* nonnull %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !883
  %97 = add i64 %94, %96, !dbg !884
  call void @llvm.dbg.value(metadata i64 %97, metadata !846, metadata !DIExpression()) #12, !dbg !860
  %98 = getelementptr inbounds i8, i8* %54, i64 %97, !dbg !885
  %99 = load i8, i8* %98, align 1, !dbg !885, !tbaa !787
  %100 = icmp eq i8 %99, 46, !dbg !887
  br i1 %100, label %101, label %108, !dbg !888

; <label>:101:                                    ; preds = %91
  %102 = add i64 %97, 1, !dbg !889
  call void @llvm.dbg.value(metadata i64 %102, metadata !846, metadata !DIExpression()) #12, !dbg !860
  %103 = getelementptr inbounds i8, i8* %54, i64 %102, !dbg !891
  %104 = tail call i64 @strspn(i8* nonnull %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !892
  %105 = add i64 %104, %102, !dbg !893
  call void @llvm.dbg.value(metadata i64 %105, metadata !846, metadata !DIExpression()) #12, !dbg !860
  %106 = getelementptr inbounds i8, i8* %54, i64 %105
  %107 = load i8, i8* %106, align 1, !dbg !894, !tbaa !787
  br label %108, !dbg !895

; <label>:108:                                    ; preds = %101, %91
  %109 = phi i64 [ %105, %101 ], [ %97, %91 ], !dbg !894
  %110 = phi i8 [ %107, %101 ], [ %99, %91 ], !dbg !894
  call void @llvm.dbg.value(metadata i64 %109, metadata !846, metadata !DIExpression()) #12, !dbg !860
  call void @llvm.dbg.value(metadata i64 %109, metadata !849, metadata !DIExpression()) #12, !dbg !896
  %111 = icmp eq i8 %110, 76, !dbg !897
  %112 = zext i1 %111 to i64, !dbg !898
  %113 = add i64 %109, %112, !dbg !899
  call void @llvm.dbg.value(metadata i64 %113, metadata !846, metadata !DIExpression()) #12, !dbg !860
  %114 = getelementptr inbounds i8, i8* %54, i64 %113, !dbg !900
  %115 = load i8, i8* %114, align 1, !dbg !900, !tbaa !787
  %116 = icmp eq i8 %115, 0, !dbg !902
  br i1 %116, label %117, label %120, !dbg !903

; <label>:117:                                    ; preds = %108
  %118 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 5) #12, !dbg !904
  %119 = tail call i8* @quote(i8* nonnull %54) #12, !dbg !904
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %118, i8* %119) #12, !dbg !904
  unreachable, !dbg !904

; <label>:120:                                    ; preds = %108
  %121 = sext i8 %115 to i32, !dbg !900
  %122 = tail call i8* @memchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i32 %121, i64 9) #12, !dbg !905
  %123 = icmp eq i8* %122, null, !dbg !905
  br i1 %123, label %124, label %129, !dbg !907

; <label>:124:                                    ; preds = %120
  %125 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0), i32 5) #12, !dbg !908
  %126 = tail call i8* @quote(i8* nonnull %54) #12, !dbg !908
  %127 = load i8, i8* %114, align 1, !dbg !908, !tbaa !787
  %128 = sext i8 %127 to i32, !dbg !908
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %125, i8* %126, i32 %128) #12, !dbg !908
  unreachable, !dbg !908

; <label>:129:                                    ; preds = %120
  %130 = add i64 %113, 1, !dbg !909
  call void @llvm.dbg.value(metadata i64 %130, metadata !846, metadata !DIExpression()) #12, !dbg !860
  br label %131, !dbg !910

; <label>:131:                                    ; preds = %147, %129
  %132 = phi i64 [ 0, %129 ], [ %148, %147 ], !dbg !911
  %133 = phi i64 [ %130, %129 ], [ %150, %147 ], !dbg !912
  call void @llvm.dbg.value(metadata i64 %133, metadata !846, metadata !DIExpression()) #12, !dbg !860
  call void @llvm.dbg.value(metadata i64 %132, metadata !848, metadata !DIExpression()) #12, !dbg !913
  %134 = getelementptr inbounds i8, i8* %54, i64 %133, !dbg !914
  %135 = load i8, i8* %134, align 1, !dbg !914, !tbaa !787
  %136 = icmp eq i8 %135, 37, !dbg !915
  br i1 %136, label %137, label %145, !dbg !916

; <label>:137:                                    ; preds = %131
  %138 = add i64 %133, 1, !dbg !917
  %139 = getelementptr inbounds i8, i8* %54, i64 %138, !dbg !918
  %140 = load i8, i8* %139, align 1, !dbg !918, !tbaa !787
  %141 = icmp eq i8 %140, 37, !dbg !919
  br i1 %141, label %147, label %142, !dbg !920

; <label>:142:                                    ; preds = %137
  %143 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i64 0, i64 0), i32 5) #12, !dbg !921
  %144 = tail call i8* @quote(i8* nonnull %54) #12, !dbg !921
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %143, i8* %144) #12, !dbg !921
  unreachable, !dbg !921

; <label>:145:                                    ; preds = %131
  %146 = icmp eq i8 %135, 0, !dbg !922
  br i1 %146, label %151, label %147, !dbg !923

; <label>:147:                                    ; preds = %145, %137
  %148 = add i64 %132, 1, !dbg !924
  call void @llvm.dbg.value(metadata i64 %148, metadata !848, metadata !DIExpression()) #12, !dbg !913
  %149 = select i1 %136, i64 2, i64 1, !dbg !925
  %150 = add i64 %149, %133, !dbg !926
  call void @llvm.dbg.value(metadata i64 %150, metadata !846, metadata !DIExpression()) #12, !dbg !860
  br label %131, !dbg !927, !llvm.loop !928

; <label>:151:                                    ; preds = %145
  call void @llvm.dbg.value(metadata i64 %132, metadata !848, metadata !DIExpression()) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 %133, metadata !846, metadata !DIExpression()) #12, !dbg !860
  call void @llvm.dbg.value(metadata i64 %132, metadata !848, metadata !DIExpression()) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 %133, metadata !846, metadata !DIExpression()) #12, !dbg !860
  call void @llvm.dbg.value(metadata i64 %132, metadata !848, metadata !DIExpression()) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 %133, metadata !846, metadata !DIExpression()) #12, !dbg !860
  call void @llvm.dbg.value(metadata i64 %132, metadata !848, metadata !DIExpression()) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 %133, metadata !846, metadata !DIExpression()) #12, !dbg !860
  call void @llvm.dbg.value(metadata i64 %132, metadata !848, metadata !DIExpression()) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 %133, metadata !846, metadata !DIExpression()) #12, !dbg !860
  call void @llvm.dbg.value(metadata i64 %132, metadata !848, metadata !DIExpression()) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 %133, metadata !846, metadata !DIExpression()) #12, !dbg !860
  call void @llvm.dbg.value(metadata i64 %132, metadata !848, metadata !DIExpression()) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 %133, metadata !846, metadata !DIExpression()) #12, !dbg !860
  %152 = getelementptr inbounds i8, i8* %54, i64 %109
  call void @llvm.dbg.value(metadata i64 %132, metadata !848, metadata !DIExpression()) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 %133, metadata !846, metadata !DIExpression()) #12, !dbg !860
  call void @llvm.dbg.value(metadata i64 %132, metadata !848, metadata !DIExpression()) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 %133, metadata !846, metadata !DIExpression()) #12, !dbg !860
  call void @llvm.dbg.value(metadata i64 %133, metadata !851, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !931
  %153 = add i64 %133, 2, !dbg !932
  %154 = tail call noalias i8* @xmalloc(i64 %153) #12, !dbg !933
  call void @llvm.dbg.value(metadata i8* %154, metadata !857, metadata !DIExpression()) #12, !dbg !934
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %154, i8* nonnull align 1 %54, i64 %109, i1 false) #12, !dbg !935
  %155 = getelementptr inbounds i8, i8* %154, i64 %109, !dbg !936
  store i8 76, i8* %155, align 1, !dbg !937, !tbaa !787
  %156 = getelementptr inbounds i8, i8* %155, i64 1, !dbg !938
  %157 = getelementptr inbounds i8, i8* %152, i64 %112, !dbg !939
  call void @llvm.dbg.value(metadata i8* %156, metadata !940, metadata !DIExpression()) #12, !dbg !949
  call void @llvm.dbg.value(metadata i8* %157, metadata !948, metadata !DIExpression()) #12, !dbg !949
  %158 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %156, i1 false, i1 true) #12, !dbg !951
  %159 = tail call i8* @__strcpy_chk(i8* nonnull %156, i8* nonnull %157, i64 %158) #12, !dbg !952
  call void @llvm.dbg.value(metadata i8* %154, metadata !759, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i8* %154, metadata !759, metadata !DIExpression()), !dbg !771
  %160 = icmp eq i8* %154, null, !dbg !953
  br i1 %160, label %165, label %161, !dbg !955

; <label>:161:                                    ; preds = %151
  %162 = load i1, i1* @equal_width, align 1
  br i1 %162, label %163, label %165, !dbg !956

; <label>:163:                                    ; preds = %161
  %164 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.18, i64 0, i64 0), i32 5) #12, !dbg !957
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %164) #12, !dbg !959
  tail call void @usage(i32 1) #16, !dbg !960
  unreachable, !dbg !960

; <label>:165:                                    ; preds = %151, %69, %161
  %166 = phi i1 [ true, %161 ], [ false, %151 ], [ false, %69 ]
  %167 = phi i8* [ %154, %161 ], [ null, %151 ], [ null, %69 ]
  %168 = phi i64 [ %72, %161 ], [ %72, %151 ], [ 0, %69 ]
  %169 = phi i64 [ %132, %161 ], [ %132, %151 ], [ 0, %69 ]
  %170 = load i32, i32* @optind, align 4, !dbg !961, !tbaa !780
  %171 = sext i32 %170 to i64, !dbg !962
  %172 = getelementptr inbounds i8*, i8** %1, i64 %171, !dbg !962
  %173 = load i8*, i8** %172, align 8, !dbg !962, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %173, metadata !963, metadata !DIExpression()) #12, !dbg !969
  %174 = load i8, i8* %173, align 1, !dbg !971, !tbaa !787
  %175 = sext i8 %174 to i32, !dbg !971
  %176 = add nsw i32 %175, -48, !dbg !971
  %177 = icmp ult i32 %176, 10, !dbg !971
  br i1 %177, label %178, label %238, !dbg !972

; <label>:178:                                    ; preds = %165
  %179 = tail call i64 @strlen(i8* nonnull %173) #8, !dbg !973
  call void @llvm.dbg.value(metadata i64 %179, metadata !968, metadata !DIExpression()) #12, !dbg !974
  %180 = tail call i64 @strspn(i8* nonnull %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !975
  %181 = icmp eq i64 %179, %180, !dbg !976
  br i1 %181, label %182, label %238, !dbg !977

; <label>:182:                                    ; preds = %178
  %183 = icmp eq i32 %55, 1, !dbg !978
  br i1 %183, label %218, label %184, !dbg !979

; <label>:184:                                    ; preds = %182
  %185 = add nsw i32 %170, 1, !dbg !980
  %186 = sext i32 %185 to i64, !dbg !981
  %187 = getelementptr inbounds i8*, i8** %1, i64 %186, !dbg !981
  %188 = load i8*, i8** %187, align 8, !dbg !981, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %188, metadata !963, metadata !DIExpression()) #12, !dbg !982
  %189 = load i8, i8* %188, align 1, !dbg !984, !tbaa !787
  %190 = sext i8 %189 to i32, !dbg !984
  %191 = add nsw i32 %190, -48, !dbg !984
  %192 = icmp ult i32 %191, 10, !dbg !984
  br i1 %192, label %193, label %238, !dbg !985

; <label>:193:                                    ; preds = %184
  %194 = tail call i64 @strlen(i8* nonnull %188) #8, !dbg !986
  call void @llvm.dbg.value(metadata i64 %194, metadata !968, metadata !DIExpression()) #12, !dbg !987
  %195 = tail call i64 @strspn(i8* nonnull %188, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !988
  %196 = icmp eq i64 %194, %195, !dbg !989
  br i1 %196, label %197, label %238, !dbg !990

; <label>:197:                                    ; preds = %193
  %198 = icmp ult i32 %55, 3, !dbg !991
  br i1 %198, label %218, label %199, !dbg !992

; <label>:199:                                    ; preds = %197
  %200 = tail call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* %188) #8, !dbg !993
  %201 = icmp eq i32 %200, 0, !dbg !993
  br i1 %201, label %202, label %238, !dbg !994

; <label>:202:                                    ; preds = %199
  %203 = add nsw i32 %170, 2, !dbg !995
  %204 = sext i32 %203 to i64, !dbg !996
  %205 = getelementptr inbounds i8*, i8** %1, i64 %204, !dbg !996
  %206 = load i8*, i8** %205, align 8, !dbg !996, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %206, metadata !963, metadata !DIExpression()) #12, !dbg !997
  %207 = load i8, i8* %206, align 1, !dbg !999, !tbaa !787
  %208 = sext i8 %207 to i32, !dbg !999
  %209 = add nsw i32 %208, -48, !dbg !999
  %210 = icmp ult i32 %209, 10, !dbg !999
  br i1 %210, label %211, label %238, !dbg !1000

; <label>:211:                                    ; preds = %202
  %212 = tail call i64 @strlen(i8* nonnull %206) #8, !dbg !1001
  call void @llvm.dbg.value(metadata i64 %212, metadata !968, metadata !DIExpression()) #12, !dbg !1002
  %213 = tail call i64 @strspn(i8* nonnull %206, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !1003
  %214 = icmp ne i64 %212, %213, !dbg !1004
  %215 = load i1, i1* @equal_width, align 1
  %216 = or i1 %166, %215, !dbg !1005
  %217 = or i1 %214, %216, !dbg !1006
  br i1 %217, label %238, label %221, !dbg !1006

; <label>:218:                                    ; preds = %182, %197
  %219 = load i1, i1* @equal_width, align 1
  %220 = or i1 %166, %219, !dbg !1005
  br i1 %220, label %238, label %221, !dbg !1005

; <label>:221:                                    ; preds = %211, %218
  %222 = load i8*, i8** @separator, align 8, !dbg !1007, !tbaa !692
  %223 = tail call i64 @strlen(i8* %222) #8, !dbg !1008
  %224 = icmp eq i64 %223, 1, !dbg !1009
  br i1 %224, label %225, label %238, !dbg !1010

; <label>:225:                                    ; preds = %221
  %226 = select i1 %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* %173, !dbg !1011
  call void @llvm.dbg.value(metadata i8* %226, metadata !761, metadata !DIExpression()), !dbg !1012
  %227 = add i32 %55, -1, !dbg !1013
  %228 = add i32 %227, %170, !dbg !1014
  %229 = zext i32 %228 to i64, !dbg !1015
  %230 = getelementptr inbounds i8*, i8** %1, i64 %229, !dbg !1015
  %231 = load i8*, i8** %230, align 8, !dbg !1015, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %231, metadata !764, metadata !DIExpression()), !dbg !1016
  %232 = tail call fastcc zeroext i1 @seq_fast(i8* %226, i8* %231), !dbg !1017
  br i1 %232, label %458, label %233

; <label>:233:                                    ; preds = %225
  %234 = load i32, i32* @optind, align 4, !dbg !1019, !tbaa !780
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %1, i64 %235
  %237 = load i8*, i8** %236, align 8, !dbg !1020, !tbaa !692
  br label %238

; <label>:238:                                    ; preds = %233, %202, %184, %165, %211, %221, %218, %199, %193, %178
  %239 = phi i8* [ %237, %233 ], [ %173, %202 ], [ %173, %184 ], [ %173, %165 ], [ %173, %211 ], [ %173, %221 ], [ %173, %218 ], [ %173, %199 ], [ %173, %193 ], [ %173, %178 ], !dbg !1020
  %240 = phi i32 [ %234, %233 ], [ %170, %202 ], [ %170, %184 ], [ %170, %165 ], [ %170, %211 ], [ %170, %221 ], [ %170, %218 ], [ %170, %199 ], [ %170, %193 ], [ %170, %178 ], !dbg !1019
  %241 = bitcast %struct.operand* %6 to i8*, !dbg !1021
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %241) #12, !dbg !1021
  %242 = add nsw i32 %240, 1, !dbg !1019
  store i32 %242, i32* @optind, align 4, !dbg !1019, !tbaa !780
  call fastcc void @scan_arg(%struct.operand* nonnull sret %6, i8* %239), !dbg !1021
  %243 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 0, !dbg !1021
  %244 = load x86_fp80, x86_fp80* %243, align 16, !dbg !1021
  %245 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 1, !dbg !1021
  %246 = load i64, i64* %245, align 16, !dbg !1021
  %247 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 2, !dbg !1021
  %248 = load i32, i32* %247, align 8, !dbg !1021
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %241) #12, !dbg !1021
  %249 = load i32, i32* @optind, align 4, !dbg !1022, !tbaa !780
  %250 = icmp slt i32 %249, %0, !dbg !1024
  br i1 %250, label %251, label %287, !dbg !1025

; <label>:251:                                    ; preds = %238
  %252 = bitcast %struct.operand* %7 to i8*, !dbg !1026
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %252) #12, !dbg !1026
  %253 = add nsw i32 %249, 1, !dbg !1028
  store i32 %253, i32* @optind, align 4, !dbg !1028, !tbaa !780
  %254 = sext i32 %249 to i64, !dbg !1029
  %255 = getelementptr inbounds i8*, i8** %1, i64 %254, !dbg !1029
  %256 = load i8*, i8** %255, align 8, !dbg !1029, !tbaa !692
  call fastcc void @scan_arg(%struct.operand* nonnull sret %7, i8* %256), !dbg !1026
  %257 = getelementptr inbounds %struct.operand, %struct.operand* %7, i64 0, i32 0, !dbg !1026
  %258 = load x86_fp80, x86_fp80* %257, align 16, !dbg !1026
  %259 = getelementptr inbounds %struct.operand, %struct.operand* %7, i64 0, i32 1, !dbg !1026
  %260 = load i64, i64* %259, align 16, !dbg !1026
  %261 = getelementptr inbounds %struct.operand, %struct.operand* %7, i64 0, i32 2, !dbg !1026
  %262 = load i32, i32* %261, align 8, !dbg !1026
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %252) #12, !dbg !1026
  %263 = load i32, i32* @optind, align 4, !dbg !1030, !tbaa !780
  %264 = icmp slt i32 %263, %0, !dbg !1032
  br i1 %264, label %265, label %287, !dbg !1033

; <label>:265:                                    ; preds = %251
  %266 = fcmp oeq x86_fp80 %258, 0xK00000000000000000000, !dbg !1034
  br i1 %266, label %267, label %275, !dbg !1037

; <label>:267:                                    ; preds = %265
  %268 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #12, !dbg !1038
  %269 = load i32, i32* @optind, align 4, !dbg !1040, !tbaa !780
  %270 = add nsw i32 %269, -1, !dbg !1041
  %271 = sext i32 %270 to i64, !dbg !1042
  %272 = getelementptr inbounds i8*, i8** %1, i64 %271, !dbg !1042
  %273 = load i8*, i8** %272, align 8, !dbg !1042, !tbaa !692
  %274 = call i8* @quote(i8* %273) #12, !dbg !1043
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %268, i8* %274) #12, !dbg !1044
  call void @usage(i32 1) #16, !dbg !1045
  unreachable, !dbg !1045

; <label>:275:                                    ; preds = %265
  %276 = bitcast %struct.operand* %8 to i8*, !dbg !1046
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %276) #12, !dbg !1046
  %277 = add nsw i32 %263, 1, !dbg !1047
  store i32 %277, i32* @optind, align 4, !dbg !1047, !tbaa !780
  %278 = sext i32 %263 to i64, !dbg !1048
  %279 = getelementptr inbounds i8*, i8** %1, i64 %278, !dbg !1048
  %280 = load i8*, i8** %279, align 8, !dbg !1048, !tbaa !692
  call fastcc void @scan_arg(%struct.operand* nonnull sret %8, i8* %280), !dbg !1046
  %281 = getelementptr inbounds %struct.operand, %struct.operand* %8, i64 0, i32 0, !dbg !1046
  %282 = load x86_fp80, x86_fp80* %281, align 16, !dbg !1046
  %283 = getelementptr inbounds %struct.operand, %struct.operand* %8, i64 0, i32 1, !dbg !1046
  %284 = load i64, i64* %283, align 16, !dbg !1046
  %285 = getelementptr inbounds %struct.operand, %struct.operand* %8, i64 0, i32 2, !dbg !1046
  %286 = load i32, i32* %285, align 8, !dbg !1046
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %276) #12, !dbg !1046
  br label %287, !dbg !1049

; <label>:287:                                    ; preds = %251, %275, %238
  %288 = phi i64 [ %246, %275 ], [ %246, %251 ], [ 1, %238 ], !dbg !1050
  %289 = phi i64 [ %284, %275 ], [ %260, %251 ], [ %246, %238 ], !dbg !1050
  %290 = phi i32 [ %248, %275 ], [ %248, %251 ], [ 0, %238 ], !dbg !1050
  %291 = phi x86_fp80 [ %244, %275 ], [ %244, %251 ], [ 0xK3FFF8000000000000000, %238 ], !dbg !1050
  %292 = phi i32 [ %262, %275 ], [ 0, %251 ], [ 0, %238 ], !dbg !1050
  %293 = phi x86_fp80 [ %258, %275 ], [ 0xK3FFF8000000000000000, %251 ], [ 0xK3FFF8000000000000000, %238 ], !dbg !1050
  %294 = phi i32 [ %286, %275 ], [ %262, %251 ], [ %248, %238 ], !dbg !1050
  %295 = phi x86_fp80 [ %282, %275 ], [ %258, %251 ], [ %244, %238 ], !dbg !1050
  %296 = fmul x86_fp80 %291, 0xK00000000000000000000, !dbg !1051
  %297 = fcmp oeq x86_fp80 %296, 0xK00000000000000000000, !dbg !1051
  %298 = or i32 %292, %290, !dbg !1052
  %299 = icmp eq i32 %298, 0, !dbg !1052
  %300 = and i1 %297, %299, !dbg !1052
  br i1 %300, label %301, label %347, !dbg !1052

; <label>:301:                                    ; preds = %287
  %302 = icmp eq i32 %294, 0, !dbg !1053
  %303 = fcmp oge x86_fp80 %291, 0xK00000000000000000000, !dbg !1054
  %304 = and i1 %303, %302, !dbg !1055
  %305 = fcmp oeq x86_fp80 %293, 0xK3FFF8000000000000000, !dbg !1056
  %306 = and i1 %305, %304, !dbg !1055
  br i1 %306, label %307, label %347, !dbg !1055

; <label>:307:                                    ; preds = %301
  %308 = fcmp ult x86_fp80 %295, 0xK00000000000000000000, !dbg !1057
  %309 = load i1, i1* @equal_width, align 1
  %310 = or i1 %166, %309, !dbg !1058
  %311 = or i1 %308, %310, !dbg !1059
  br i1 %311, label %347, label %312, !dbg !1059

; <label>:312:                                    ; preds = %307
  %313 = load i8*, i8** @separator, align 8, !dbg !1060, !tbaa !692
  %314 = call i64 @strlen(i8* %313) #8, !dbg !1061
  %315 = icmp eq i64 %314, 1, !dbg !1062
  br i1 %315, label %316, label %347, !dbg !1063

; <label>:316:                                    ; preds = %312
  %317 = bitcast i8** %9 to i8*, !dbg !1064
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %317) #12, !dbg !1064
  %318 = bitcast i8** %10 to i8*, !dbg !1065
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %318) #12, !dbg !1065
  call void @llvm.dbg.value(metadata i8** %9, metadata !765, metadata !DIExpression(DW_OP_deref)), !dbg !1066
  %319 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %9, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), x86_fp80 %291) #12, !dbg !1067
  %320 = icmp slt i32 %319, 0, !dbg !1069
  br i1 %320, label %321, label %322, !dbg !1070

; <label>:321:                                    ; preds = %316
  call void @xalloc_die() #15, !dbg !1071
  unreachable, !dbg !1071

; <label>:322:                                    ; preds = %316
  %323 = fmul x86_fp80 %295, 0xK00000000000000000000, !dbg !1072
  %324 = fcmp oeq x86_fp80 %323, 0xK00000000000000000000, !dbg !1072
  br i1 %324, label %327, label %325, !dbg !1074

; <label>:325:                                    ; preds = %322
  %326 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #12, !dbg !1075
  call void @llvm.dbg.value(metadata i8* %326, metadata !768, metadata !DIExpression()), !dbg !1076
  store i8* %326, i8** %10, align 8, !dbg !1077, !tbaa !692
  br label %331, !dbg !1078

; <label>:327:                                    ; preds = %322
  call void @llvm.dbg.value(metadata i8** %10, metadata !768, metadata !DIExpression(DW_OP_deref)), !dbg !1076
  %328 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %10, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), x86_fp80 %295) #12, !dbg !1079
  %329 = icmp slt i32 %328, 0, !dbg !1081
  br i1 %329, label %330, label %331, !dbg !1082

; <label>:330:                                    ; preds = %327
  call void @xalloc_die() #15, !dbg !1083
  unreachable, !dbg !1083

; <label>:331:                                    ; preds = %327, %325
  %332 = load i8*, i8** %9, align 8, !dbg !1084, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %332, metadata !765, metadata !DIExpression()), !dbg !1066
  %333 = load i8, i8* %332, align 1, !dbg !1086, !tbaa !787
  %334 = icmp eq i8 %333, 45, !dbg !1087
  br i1 %334, label %343, label %335, !dbg !1088

; <label>:335:                                    ; preds = %331
  %336 = load i8*, i8** %10, align 8, !dbg !1089, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %336, metadata !768, metadata !DIExpression()), !dbg !1076
  %337 = load i8, i8* %336, align 1, !dbg !1090, !tbaa !787
  %338 = icmp eq i8 %337, 45, !dbg !1091
  br i1 %338, label %343, label %339, !dbg !1092

; <label>:339:                                    ; preds = %335
  %340 = call fastcc zeroext i1 @seq_fast(i8* %332, i8* %336), !dbg !1093
  br i1 %340, label %346, label %341, !dbg !1094

; <label>:341:                                    ; preds = %339
  %342 = load i8*, i8** %9, align 8, !dbg !1095, !tbaa !692
  br label %343, !dbg !1094

; <label>:343:                                    ; preds = %341, %335, %331
  %344 = phi i8* [ %342, %341 ], [ %332, %335 ], [ %332, %331 ], !dbg !1095
  call void @llvm.dbg.value(metadata i8* %344, metadata !765, metadata !DIExpression()), !dbg !1066
  call void @free(i8* %344) #12, !dbg !1096
  %345 = load i8*, i8** %10, align 8, !dbg !1097, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %345, metadata !768, metadata !DIExpression()), !dbg !1076
  call void @free(i8* %345) #12, !dbg !1098
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %318) #12, !dbg !1099
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %317) #12, !dbg !1099
  br label %347

; <label>:346:                                    ; preds = %339
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %318) #12, !dbg !1099
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %317) #12, !dbg !1099
  br label %458

; <label>:347:                                    ; preds = %301, %343, %307, %312, %287
  %348 = icmp eq i8* %167, null, !dbg !1100
  br i1 %348, label %349, label %386, !dbg !1102

; <label>:349:                                    ; preds = %347
  call void @llvm.dbg.value(metadata %struct.operand* undef, metadata !751, metadata !DIExpression(DW_OP_deref)), !dbg !1103
  call void @llvm.dbg.value(metadata %struct.operand* undef, metadata !752, metadata !DIExpression(DW_OP_deref)), !dbg !1104
  call void @llvm.dbg.value(metadata %struct.operand* undef, metadata !753, metadata !DIExpression(DW_OP_deref)), !dbg !1105
  call void @llvm.dbg.value(metadata x86_fp80 %295, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %289, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1106
  call void @llvm.dbg.value(metadata i32 %294, metadata !70, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1106
  call void @llvm.dbg.value(metadata x86_fp80 %293, metadata !69, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1108
  call void @llvm.dbg.value(metadata i32 %292, metadata !69, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1108
  call void @llvm.dbg.value(metadata x86_fp80 %291, metadata !68, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %288, metadata !68, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1109
  call void @llvm.dbg.value(metadata i32 %290, metadata !68, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1109
  %350 = icmp sgt i32 %290, %292, !dbg !1110
  %351 = select i1 %350, i32 %290, i32 %292, !dbg !1110
  call void @llvm.dbg.value(metadata i32 %351, metadata !71, metadata !DIExpression()) #12, !dbg !1111
  %352 = icmp eq i32 %351, 2147483647, !dbg !1112
  %353 = icmp eq i32 %294, 2147483647, !dbg !1113
  %354 = or i1 %352, %353, !dbg !1114
  br i1 %354, label %386, label %355, !dbg !1114

; <label>:355:                                    ; preds = %349
  %356 = load i1, i1* @equal_width, align 1
  br i1 %356, label %357, label %384, !dbg !1115

; <label>:357:                                    ; preds = %355
  %358 = sub nsw i32 %351, %290, !dbg !1116
  %359 = sext i32 %358 to i64, !dbg !1117
  call void @llvm.dbg.value(metadata i64 undef, metadata !72, metadata !DIExpression()) #12, !dbg !1118
  %360 = sub nsw i32 %351, %294, !dbg !1119
  %361 = sext i32 %360 to i64, !dbg !1120
  call void @llvm.dbg.value(metadata i64 undef, metadata !77, metadata !DIExpression()) #12, !dbg !1121
  %362 = icmp ne i32 %294, 0, !dbg !1122
  %363 = icmp eq i32 %351, 0, !dbg !1124
  %364 = and i1 %363, %362, !dbg !1125
  %365 = sext i1 %364 to i64, !dbg !1125
  call void @llvm.dbg.value(metadata i64 undef, metadata !77, metadata !DIExpression()) #12, !dbg !1121
  %366 = icmp eq i32 %294, 0, !dbg !1126
  %367 = icmp ne i32 %351, 0, !dbg !1128
  %368 = and i1 %367, %366, !dbg !1129
  call void @llvm.dbg.value(metadata i64 undef, metadata !77, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !1121
  %369 = zext i1 %368 to i64, !dbg !1129
  %370 = add i64 %289, %361, !dbg !1130
  %371 = add i64 %370, %365, !dbg !1125
  %372 = add i64 %371, %369, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %372, metadata !77, metadata !DIExpression()) #12, !dbg !1121
  %373 = icmp eq i32 %290, 0, !dbg !1131
  %374 = and i1 %373, %367, !dbg !1133
  %375 = zext i1 %374 to i64, !dbg !1133
  %376 = add i64 %288, %359, !dbg !1134
  %377 = add i64 %376, %375, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %377, metadata !72, metadata !DIExpression()) #12, !dbg !1118
  %378 = icmp ugt i64 %377, %372, !dbg !1135
  %379 = select i1 %378, i64 %377, i64 %372, !dbg !1135
  call void @llvm.dbg.value(metadata i64 %379, metadata !78, metadata !DIExpression()) #12, !dbg !1136
  %380 = icmp ult i64 %379, 2147483648, !dbg !1137
  br i1 %380, label %381, label %386, !dbg !1138

; <label>:381:                                    ; preds = %357
  %382 = trunc i64 %379 to i32, !dbg !1139
  call void @llvm.dbg.value(metadata i32 %382, metadata !79, metadata !DIExpression()) #12, !dbg !1140
  %383 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), i32 1, i64 28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i32 %382, i32 %351) #12, !dbg !1141
  br label %386

; <label>:384:                                    ; preds = %355
  %385 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), i32 1, i64 28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i32 %351) #12, !dbg !1142
  br label %386, !dbg !1144

; <label>:386:                                    ; preds = %384, %381, %357, %349, %347
  %387 = phi i8* [ %167, %347 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), %384 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), %381 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), %357 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), %349 ], !dbg !1145
  call void @llvm.dbg.value(metadata i8* %387, metadata !759, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i64 %72, metadata !1146, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !1173
  call void @llvm.dbg.value(metadata i64 %132, metadata !1146, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !1173
  call void @llvm.dbg.value(metadata i8* %387, metadata !1151, metadata !DIExpression()) #12, !dbg !1175
  call void @llvm.dbg.value(metadata x86_fp80 %291, metadata !1152, metadata !DIExpression()) #12, !dbg !1176
  call void @llvm.dbg.value(metadata x86_fp80 %293, metadata !1153, metadata !DIExpression()) #12, !dbg !1177
  call void @llvm.dbg.value(metadata x86_fp80 %295, metadata !1154, metadata !DIExpression()) #12, !dbg !1178
  %388 = fcmp olt x86_fp80 %293, 0xK00000000000000000000, !dbg !1179
  %389 = fcmp olt x86_fp80 %291, %295, !dbg !1180
  %390 = fcmp olt x86_fp80 %295, %291, !dbg !1181
  %391 = select i1 %388, i1 %389, i1 %390, !dbg !1182
  br i1 %391, label %458, label %392, !dbg !1183

; <label>:392:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 0, metadata !1155, metadata !DIExpression()) #12, !dbg !1184
  call void @llvm.dbg.value(metadata x86_fp80 %291, metadata !1156, metadata !DIExpression()) #12, !dbg !1185
  call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, metadata !1159, metadata !DIExpression()) #12, !dbg !1186
  call void @llvm.dbg.value(metadata x86_fp80 %291, metadata !1160, metadata !DIExpression()) #12, !dbg !1187
  %393 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %387, x86_fp80 %291) #12, !dbg !1188
  %394 = icmp slt i32 %393, 0, !dbg !1190
  br i1 %394, label %399, label %395, !dbg !1191

; <label>:395:                                    ; preds = %392
  %396 = bitcast x86_fp80* %3 to i8*
  %397 = bitcast i8** %4 to i8*
  %398 = bitcast i8** %5 to i8*
  br label %400, !dbg !1191

; <label>:399:                                    ; preds = %449, %392
  call fastcc void @io_error() #15, !dbg !1192
  unreachable, !dbg !1192

; <label>:400:                                    ; preds = %449, %395
  %401 = phi i8 [ 0, %395 ], [ %411, %449 ]
  %402 = phi x86_fp80 [ %291, %395 ], [ %407, %449 ]
  %403 = phi x86_fp80 [ 0xK3FFF8000000000000000, %395 ], [ %450, %449 ]
  call void @llvm.dbg.value(metadata i8 %401, metadata !1155, metadata !DIExpression()) #12, !dbg !1184
  call void @llvm.dbg.value(metadata x86_fp80 %402, metadata !1156, metadata !DIExpression()) #12, !dbg !1185
  call void @llvm.dbg.value(metadata x86_fp80 %403, metadata !1159, metadata !DIExpression()) #12, !dbg !1186
  %404 = icmp eq i8 %401, 0, !dbg !1193
  br i1 %404, label %405, label %453, !dbg !1195

; <label>:405:                                    ; preds = %400
  %406 = fmul x86_fp80 %293, %403, !dbg !1196
  %407 = fadd x86_fp80 %291, %406, !dbg !1197
  %408 = fcmp olt x86_fp80 %407, %295, !dbg !1198
  %409 = fcmp ogt x86_fp80 %407, %295, !dbg !1199
  %410 = select i1 %388, i1 %408, i1 %409, !dbg !1200
  %411 = zext i1 %410 to i8, !dbg !1201
  br i1 %410, label %412, label %443, !dbg !1202

; <label>:412:                                    ; preds = %405
  call void @llvm.dbg.value(metadata i8 0, metadata !1164, metadata !DIExpression()) #12, !dbg !1203
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %396) #12, !dbg !1204
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %397) #12, !dbg !1205
  %413 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12, !dbg !1206
  call void @llvm.dbg.value(metadata i8** %4, metadata !1168, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1207
  %414 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %4, i32 1, i8* %387, x86_fp80 %407) #12, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %414, metadata !1169, metadata !DIExpression()) #12, !dbg !1209
  %415 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !1210
  %416 = icmp slt i32 %414, 0, !dbg !1211
  br i1 %416, label %417, label %418, !dbg !1213

; <label>:417:                                    ; preds = %412
  call void @xalloc_die() #15, !dbg !1214
  unreachable, !dbg !1214

; <label>:418:                                    ; preds = %412
  %419 = load i8*, i8** %4, align 8, !dbg !1215, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %419, metadata !1168, metadata !DIExpression()) #12, !dbg !1207
  %420 = sext i32 %414 to i64, !dbg !1216
  %421 = sub i64 %420, %169, !dbg !1217
  %422 = getelementptr inbounds i8, i8* %419, i64 %421, !dbg !1215
  store i8 0, i8* %422, align 1, !dbg !1218, !tbaa !787
  %423 = load i8*, i8** %4, align 8, !dbg !1219, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %423, metadata !1168, metadata !DIExpression()) #12, !dbg !1207
  %424 = getelementptr inbounds i8, i8* %423, i64 %168, !dbg !1220
  call void @llvm.dbg.value(metadata x86_fp80* %3, metadata !1167, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1221
  %425 = call zeroext i1 @xstrtold(i8* %424, i8** null, x86_fp80* nonnull %3, x86_fp80 (i8*, i8**)* nonnull @c_strtold) #12, !dbg !1222
  %426 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1223
  %427 = fcmp oeq x86_fp80 %426, %295, !dbg !1224
  %428 = and i1 %425, %427, !dbg !1225
  br i1 %428, label %431, label %429, !dbg !1225

; <label>:429:                                    ; preds = %418
  %430 = load i8*, i8** %4, align 8, !dbg !1226, !tbaa !692
  call void @free(i8* %430) #12, !dbg !1227
  br label %441, !dbg !1228

; <label>:431:                                    ; preds = %418
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %398) #12, !dbg !1229
  call void @llvm.dbg.value(metadata i8* null, metadata !1170, metadata !DIExpression()) #12, !dbg !1230
  store i8* null, i8** %5, align 8, !dbg !1230, !tbaa !692
  call void @llvm.dbg.value(metadata i8** %5, metadata !1170, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1230
  %432 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* %387, x86_fp80 %402) #12, !dbg !1231
  %433 = icmp slt i32 %432, 0, !dbg !1233
  br i1 %433, label %434, label %435, !dbg !1234

; <label>:434:                                    ; preds = %431
  call void @xalloc_die() #15, !dbg !1235
  unreachable, !dbg !1235

; <label>:435:                                    ; preds = %431
  %436 = load i8*, i8** %5, align 8, !dbg !1236, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %436, metadata !1170, metadata !DIExpression()) #12, !dbg !1230
  %437 = load i8*, i8** %4, align 8, !dbg !1236, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %437, metadata !1168, metadata !DIExpression()) #12, !dbg !1207
  %438 = call i32 @strcmp(i8* %436, i8* %437) #8, !dbg !1236
  %439 = icmp eq i32 %438, 0, !dbg !1236
  call void @free(i8* %436) #12, !dbg !1237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %398) #12, !dbg !1238
  %440 = load i8*, i8** %4, align 8, !dbg !1226, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %440, metadata !1168, metadata !DIExpression()) #12, !dbg !1207
  call void @free(i8* %440) #12, !dbg !1227
  br i1 %439, label %441, label %442, !dbg !1228

; <label>:441:                                    ; preds = %435, %429
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %397) #12, !dbg !1228
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %396) #12, !dbg !1228
  br label %453

; <label>:442:                                    ; preds = %435
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %397) #12, !dbg !1228
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %396) #12, !dbg !1228
  br label %443

; <label>:443:                                    ; preds = %442, %405
  %444 = load i8*, i8** @separator, align 8, !dbg !1239, !tbaa !692
  %445 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1239, !tbaa !692
  %446 = call i32 @fputs_unlocked(i8* %444, %struct._IO_FILE* %445) #12, !dbg !1239
  %447 = icmp eq i32 %446, -1, !dbg !1241
  br i1 %447, label %448, label %449, !dbg !1242

; <label>:448:                                    ; preds = %443
  call fastcc void @io_error() #15, !dbg !1243
  unreachable, !dbg !1243

; <label>:449:                                    ; preds = %443
  %450 = fadd x86_fp80 %403, 0xK3FFF8000000000000000, !dbg !1244
  call void @llvm.dbg.value(metadata i8 %411, metadata !1155, metadata !DIExpression()) #12, !dbg !1184
  call void @llvm.dbg.value(metadata x86_fp80 %407, metadata !1156, metadata !DIExpression()) #12, !dbg !1185
  call void @llvm.dbg.value(metadata x86_fp80 %450, metadata !1159, metadata !DIExpression()) #12, !dbg !1186
  call void @llvm.dbg.value(metadata x86_fp80 %407, metadata !1160, metadata !DIExpression()) #12, !dbg !1187
  %451 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %387, x86_fp80 %407) #12, !dbg !1188
  %452 = icmp slt i32 %451, 0, !dbg !1190
  br i1 %452, label %399, label %400, !dbg !1191, !llvm.loop !1245

; <label>:453:                                    ; preds = %400, %441
  %454 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1248, !tbaa !692
  %455 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* %454) #12, !dbg !1248
  %456 = icmp eq i32 %455, -1, !dbg !1250
  br i1 %456, label %457, label %458, !dbg !1251

; <label>:457:                                    ; preds = %453
  call fastcc void @io_error() #15, !dbg !1252
  unreachable, !dbg !1252

; <label>:458:                                    ; preds = %225, %453, %386, %346
  ret i32 0, !dbg !1253
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

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #8

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @seq_fast(i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1254 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1258, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i8* %1, metadata !1259, metadata !DIExpression()), !dbg !1282
  %3 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !1283
  %4 = icmp eq i32 %3, 0, !dbg !1283
  call void @llvm.dbg.value(metadata i8* %0, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %0, metadata !1289, metadata !DIExpression()), !dbg !1292
  br label %5, !dbg !1293

; <label>:5:                                      ; preds = %8, %2
  %6 = phi i8* [ %0, %2 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i8* %6, metadata !1284, metadata !DIExpression()), !dbg !1290
  %7 = load i8, i8* %6, align 1, !dbg !1294, !tbaa !787
  switch i8 %7, label %14 [
    i8 48, label %8
    i8 0, label %10
  ], !dbg !1293

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1295
  call void @llvm.dbg.value(metadata i8* %9, metadata !1284, metadata !DIExpression()), !dbg !1290
  br label %5, !dbg !1293, !llvm.loop !1296

; <label>:10:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %6, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %6, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %6, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %6, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %6, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %6, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %6, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %6, metadata !1284, metadata !DIExpression()), !dbg !1290
  %11 = icmp eq i8* %6, %0, !dbg !1299
  %12 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1301
  %13 = select i1 %11, i8* %6, i8* %12, !dbg !1302
  br label %14, !dbg !1302

; <label>:14:                                     ; preds = %5, %10
  %15 = phi i8* [ %13, %10 ], [ %6, %5 ]
  call void @llvm.dbg.value(metadata i8* %15, metadata !1258, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i8* %1, metadata !1284, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %1, metadata !1289, metadata !DIExpression()), !dbg !1305
  br label %16, !dbg !1306

; <label>:16:                                     ; preds = %19, %14
  %17 = phi i8* [ %1, %14 ], [ %20, %19 ]
  call void @llvm.dbg.value(metadata i8* %17, metadata !1284, metadata !DIExpression()), !dbg !1303
  %18 = load i8, i8* %17, align 1, !dbg !1307, !tbaa !787
  switch i8 %18, label %25 [
    i8 48, label %19
    i8 0, label %21
  ], !dbg !1306

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1308
  call void @llvm.dbg.value(metadata i8* %20, metadata !1284, metadata !DIExpression()), !dbg !1303
  br label %16, !dbg !1306, !llvm.loop !1296

; <label>:21:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i8* %17, metadata !1284, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %17, metadata !1284, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %17, metadata !1284, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %17, metadata !1284, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %17, metadata !1284, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %17, metadata !1284, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %17, metadata !1284, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %17, metadata !1284, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %17, metadata !1284, metadata !DIExpression()), !dbg !1303
  %22 = icmp eq i8* %17, %1, !dbg !1309
  %23 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1310
  %24 = select i1 %22, i8* %17, i8* %23, !dbg !1311
  br label %25, !dbg !1311

; <label>:25:                                     ; preds = %16, %21
  %26 = phi i8* [ %24, %21 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i8* %26, metadata !1259, metadata !DIExpression()), !dbg !1282
  %27 = tail call i64 @strlen(i8* %15) #8, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %27, metadata !1261, metadata !DIExpression()), !dbg !1313
  br i1 %4, label %30, label %28, !dbg !1314

; <label>:28:                                     ; preds = %25
  %29 = tail call i64 @strlen(i8* %26) #8, !dbg !1315
  br label %30, !dbg !1314

; <label>:30:                                     ; preds = %25, %28
  %31 = phi i64 [ %29, %28 ], [ 0, %25 ], !dbg !1314
  call void @llvm.dbg.value(metadata i64 %31, metadata !1262, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %27, metadata !1261, metadata !DIExpression()), !dbg !1313
  %32 = add i64 %27, 1, !dbg !1317
  %33 = icmp ugt i64 %32, %31, !dbg !1317
  %34 = select i1 %33, i64 %32, i64 %31, !dbg !1317
  %35 = icmp ugt i64 %34, 31, !dbg !1317
  %36 = select i1 %35, i64 %34, i64 31, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %36, metadata !1263, metadata !DIExpression()), !dbg !1318
  %37 = add i64 %36, 1, !dbg !1319
  %38 = tail call noalias i8* @xmalloc(i64 %37) #12, !dbg !1320
  call void @llvm.dbg.value(metadata i8* %38, metadata !1264, metadata !DIExpression()), !dbg !1321
  %39 = getelementptr inbounds i8, i8* %38, i64 %36, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %27, metadata !1261, metadata !DIExpression()), !dbg !1313
  %40 = sub i64 0, %27, !dbg !1323
  %41 = getelementptr inbounds i8, i8* %39, i64 %40, !dbg !1323
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 %15, i64 %32, i1 false), !dbg !1324
  call void @llvm.dbg.value(metadata i8* %41, metadata !1265, metadata !DIExpression()), !dbg !1325
  br i1 %4, label %54, label %42, !dbg !1326

; <label>:42:                                     ; preds = %30
  %43 = tail call noalias i8* @xmalloc(i64 %37) #12, !dbg !1327
  call void @llvm.dbg.value(metadata i8* %43, metadata !1267, metadata !DIExpression()), !dbg !1330
  %44 = getelementptr inbounds i8, i8* %43, i64 %36, !dbg !1331
  %45 = sub i64 0, %31, !dbg !1332
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !1332
  %47 = add i64 %31, 1, !dbg !1333
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 %26, i64 %47, i1 false), !dbg !1334
  call void @llvm.dbg.value(metadata i8* %46, metadata !1266, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i8* %43, metadata !1267, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %46, metadata !1266, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i8* %41, metadata !1265, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %27, metadata !1261, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i8* %41, metadata !1336, metadata !DIExpression()) #12, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %27, metadata !1341, metadata !DIExpression()) #12, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %46, metadata !1342, metadata !DIExpression()) #12, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %31, metadata !1343, metadata !DIExpression()) #12, !dbg !1348
  %48 = icmp ult i64 %27, %31, !dbg !1349
  br i1 %48, label %54, label %49, !dbg !1351

; <label>:49:                                     ; preds = %42
  %50 = icmp ult i64 %31, %27, !dbg !1352
  br i1 %50, label %147, label %51, !dbg !1354

; <label>:51:                                     ; preds = %49
  %52 = tail call i32 @strcmp(i8* %41, i8* %46) #8, !dbg !1355
  %53 = icmp slt i32 %52, 1, !dbg !1356
  br i1 %53, label %54, label %147, !dbg !1357

; <label>:54:                                     ; preds = %42, %30, %51
  %55 = phi i8* [ %46, %51 ], [ null, %30 ], [ %46, %42 ]
  %56 = phi i8* [ %43, %51 ], [ null, %30 ], [ %43, %42 ]
  %57 = shl i64 %37, 1, !dbg !1358
  %58 = icmp ugt i64 %57, 8192, !dbg !1358
  %59 = select i1 %58, i64 %57, i64 8192, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %59, metadata !1269, metadata !DIExpression()), !dbg !1359
  %60 = tail call noalias i8* @xmalloc(i64 %59) #12, !dbg !1360
  call void @llvm.dbg.value(metadata i8* %60, metadata !1272, metadata !DIExpression()), !dbg !1361
  %61 = getelementptr inbounds i8, i8* %60, i64 %59, !dbg !1362
  call void @llvm.dbg.value(metadata i8* %61, metadata !1273, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %60, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %41, metadata !1265, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %27, metadata !1261, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i8* %60, metadata !1365, metadata !DIExpression()) #12, !dbg !1376
  call void @llvm.dbg.value(metadata i8* %41, metadata !1374, metadata !DIExpression()) #12, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %27, metadata !1375, metadata !DIExpression()) #12, !dbg !1376
  %62 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %60, i1 false, i1 true) #12, !dbg !1378
  %63 = tail call i8* @__mempcpy_chk(i8* nonnull %60, i8* nonnull %41, i64 %27, i64 %62) #12, !dbg !1379
  call void @llvm.dbg.value(metadata i8* %63, metadata !1274, metadata !DIExpression()), !dbg !1364
  br label %64, !dbg !1380

; <label>:64:                                     ; preds = %135, %54
  %65 = phi i64 [ %27, %54 ], [ %97, %135 ], !dbg !1313
  %66 = phi i8* [ %41, %54 ], [ %116, %135 ], !dbg !1381
  %67 = phi i64 [ %36, %54 ], [ %117, %135 ], !dbg !1381
  %68 = phi i8* [ %38, %54 ], [ %118, %135 ], !dbg !1381
  %69 = phi i64 [ %59, %54 ], [ %119, %135 ], !dbg !1382
  %70 = phi i8* [ %60, %54 ], [ %120, %135 ], !dbg !1382
  %71 = phi i8* [ %61, %54 ], [ %121, %135 ], !dbg !1382
  %72 = phi i8* [ %63, %54 ], [ %136, %135 ], !dbg !1383
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %71, metadata !1273, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %69, metadata !1269, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %67, metadata !1263, metadata !DIExpression()), !dbg !1318
  %73 = icmp ult i64 %65, %31, !dbg !1386
  %74 = or i1 %4, %73, !dbg !1388
  call void @llvm.dbg.value(metadata i8* %66, metadata !1265, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %65, metadata !1261, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i8* %66, metadata !1336, metadata !DIExpression()) #12, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %65, metadata !1341, metadata !DIExpression()) #12, !dbg !1390
  call void @llvm.dbg.value(metadata i8* %46, metadata !1342, metadata !DIExpression()) #12, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %31, metadata !1343, metadata !DIExpression()) #12, !dbg !1392
  br i1 %74, label %80, label %75, !dbg !1388

; <label>:75:                                     ; preds = %64
  %76 = icmp ult i64 %31, %65, !dbg !1393
  br i1 %76, label %138, label %77, !dbg !1394

; <label>:77:                                     ; preds = %75
  %78 = tail call i32 @strcmp(i8* %66, i8* %55) #8, !dbg !1395
  %79 = icmp slt i32 %78, 0, !dbg !1396
  br i1 %79, label %80, label %138, !dbg !1380

; <label>:80:                                     ; preds = %64, %77
  %81 = load i8*, i8** @separator, align 8, !dbg !1397, !tbaa !692
  %82 = load i8, i8* %81, align 1, !dbg !1398, !tbaa !787
  %83 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1399
  call void @llvm.dbg.value(metadata i8* %83, metadata !1274, metadata !DIExpression()), !dbg !1364
  store i8 %82, i8* %72, align 1, !dbg !1400, !tbaa !787
  call void @llvm.dbg.value(metadata i8* %66, metadata !1401, metadata !DIExpression()), !dbg !1409
  %84 = getelementptr inbounds i8, i8* %66, i64 -1, !dbg !1411
  %85 = getelementptr inbounds i8, i8* %84, i64 %65, !dbg !1412
  call void @llvm.dbg.value(metadata i8* %85, metadata !1408, metadata !DIExpression()), !dbg !1413
  br label %86, !dbg !1414

; <label>:86:                                     ; preds = %91, %80
  %87 = phi i8* [ %85, %80 ], [ %92, %91 ], !dbg !1415
  call void @llvm.dbg.value(metadata i8* %87, metadata !1408, metadata !DIExpression()), !dbg !1413
  %88 = load i8, i8* %87, align 1, !dbg !1417, !tbaa !787
  %89 = add i8 %88, 1, !dbg !1417
  store i8 %89, i8* %87, align 1, !dbg !1417, !tbaa !787
  %90 = icmp slt i8 %88, 57, !dbg !1419
  br i1 %90, label %96, label %91, !dbg !1420

; <label>:91:                                     ; preds = %86
  %92 = getelementptr inbounds i8, i8* %87, i64 -1, !dbg !1421
  call void @llvm.dbg.value(metadata i8* %92, metadata !1408, metadata !DIExpression()), !dbg !1413
  store i8 48, i8* %87, align 1, !dbg !1422, !tbaa !787
  %93 = icmp ult i8* %92, %66, !dbg !1423
  br i1 %93, label %94, label %86, !dbg !1424, !llvm.loop !1425

; <label>:94:                                     ; preds = %91
  store i8 49, i8* %84, align 1, !dbg !1428, !tbaa !787
  %95 = add i64 %65, 1, !dbg !1429
  br label %96, !dbg !1430

; <label>:96:                                     ; preds = %86, %94
  %97 = phi i64 [ %95, %94 ], [ %65, %86 ], !dbg !1431
  %98 = phi i8* [ %84, %94 ], [ %66, %86 ], !dbg !1431
  call void @llvm.dbg.value(metadata i64 %97, metadata !1261, metadata !DIExpression()), !dbg !1313
  %99 = icmp eq i64 %97, %67, !dbg !1432
  br i1 %99, label %100, label %115, !dbg !1433

; <label>:100:                                    ; preds = %96
  %101 = shl i64 %67, 1, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %101, metadata !1263, metadata !DIExpression()), !dbg !1318
  %102 = or i64 %101, 1, !dbg !1435
  %103 = tail call i8* @xrealloc(i8* %68, i64 %102) #12, !dbg !1436
  call void @llvm.dbg.value(metadata i8* %103, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %97, metadata !1261, metadata !DIExpression()), !dbg !1313
  %104 = getelementptr inbounds i8, i8* %103, i64 %67, !dbg !1437
  %105 = add i64 %67, 1, !dbg !1438
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %104, i8* align 1 %103, i64 %105, i1 false), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %104, metadata !1265, metadata !DIExpression()), !dbg !1325
  %106 = shl i64 %102, 1, !dbg !1440
  %107 = icmp ult i64 %69, %106, !dbg !1441
  br i1 %107, label %108, label %115, !dbg !1442

; <label>:108:                                    ; preds = %100
  %109 = ptrtoint i8* %83 to i64, !dbg !1443
  %110 = ptrtoint i8* %70 to i64, !dbg !1443
  %111 = sub i64 %109, %110, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %111, metadata !1275, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %106, metadata !1269, metadata !DIExpression()), !dbg !1359
  %112 = tail call i8* @xrealloc(i8* %70, i64 %106) #12, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %112, metadata !1272, metadata !DIExpression()), !dbg !1361
  %113 = getelementptr inbounds i8, i8* %112, i64 %106, !dbg !1446
  call void @llvm.dbg.value(metadata i8* %113, metadata !1273, metadata !DIExpression()), !dbg !1363
  %114 = getelementptr inbounds i8, i8* %112, i64 %111, !dbg !1447
  call void @llvm.dbg.value(metadata i8* %114, metadata !1274, metadata !DIExpression()), !dbg !1364
  br label %115, !dbg !1448

; <label>:115:                                    ; preds = %100, %108, %96
  %116 = phi i8* [ %104, %108 ], [ %104, %100 ], [ %98, %96 ], !dbg !1449
  %117 = phi i64 [ %101, %108 ], [ %101, %100 ], [ %67, %96 ], !dbg !1449
  %118 = phi i8* [ %103, %108 ], [ %103, %100 ], [ %68, %96 ], !dbg !1449
  %119 = phi i64 [ %106, %108 ], [ %69, %100 ], [ %69, %96 ], !dbg !1450
  %120 = phi i8* [ %112, %108 ], [ %70, %100 ], [ %70, %96 ], !dbg !1450
  %121 = phi i8* [ %113, %108 ], [ %71, %100 ], [ %71, %96 ], !dbg !1450
  %122 = phi i8* [ %114, %108 ], [ %83, %100 ], [ %83, %96 ], !dbg !1431
  call void @llvm.dbg.value(metadata i8* %122, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %121, metadata !1273, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %120, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %119, metadata !1269, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %118, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %117, metadata !1263, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i8* %116, metadata !1265, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %97, metadata !1261, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i8* %122, metadata !1365, metadata !DIExpression()) #12, !dbg !1451
  call void @llvm.dbg.value(metadata i8* %116, metadata !1374, metadata !DIExpression()) #12, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %97, metadata !1375, metadata !DIExpression()) #12, !dbg !1451
  %123 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %122, i1 false, i1 true) #12, !dbg !1453
  %124 = tail call i8* @__mempcpy_chk(i8* nonnull %122, i8* nonnull %116, i64 %97, i64 %123) #12, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %124, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %97, metadata !1261, metadata !DIExpression()), !dbg !1313
  %125 = xor i64 %97, -1, !dbg !1455
  %126 = getelementptr inbounds i8, i8* %121, i64 %125, !dbg !1455
  %127 = icmp ult i8* %126, %124, !dbg !1456
  br i1 %127, label %128, label %135, !dbg !1457

; <label>:128:                                    ; preds = %115
  %129 = ptrtoint i8* %124 to i64, !dbg !1458
  %130 = ptrtoint i8* %120 to i64, !dbg !1458
  %131 = sub i64 %129, %130, !dbg !1458
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1458, !tbaa !692
  %133 = tail call i64 @fwrite_unlocked(i8* %120, i64 %131, i64 1, %struct._IO_FILE* %132), !dbg !1458
  %134 = icmp eq i64 %133, 1, !dbg !1460
  br i1 %134, label %135, label %137, !dbg !1461

; <label>:135:                                    ; preds = %128, %115
  %136 = phi i8* [ %120, %128 ], [ %124, %115 ]
  br label %64, !dbg !1364, !llvm.loop !1462

; <label>:137:                                    ; preds = %128
  tail call fastcc void @io_error() #16, !dbg !1464
  unreachable, !dbg !1464

; <label>:138:                                    ; preds = %75, %77
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %70, metadata !1272, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %72, metadata !1274, metadata !DIExpression()), !dbg !1364
  %139 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1465
  call void @llvm.dbg.value(metadata i8* %139, metadata !1274, metadata !DIExpression()), !dbg !1364
  store i8 10, i8* %72, align 1, !dbg !1466, !tbaa !787
  %140 = ptrtoint i8* %139 to i64, !dbg !1467
  %141 = ptrtoint i8* %70 to i64, !dbg !1467
  %142 = sub i64 %140, %141, !dbg !1467
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1467, !tbaa !692
  %144 = tail call i64 @fwrite_unlocked(i8* %70, i64 %142, i64 1, %struct._IO_FILE* %143), !dbg !1467
  %145 = icmp eq i64 %144, 1, !dbg !1469
  br i1 %145, label %147, label %146, !dbg !1470

; <label>:146:                                    ; preds = %138
  tail call fastcc void @io_error() #16, !dbg !1471
  unreachable, !dbg !1471

; <label>:147:                                    ; preds = %49, %138, %51
  %148 = phi i1 [ false, %51 ], [ true, %138 ], [ false, %49 ]
  %149 = phi i8* [ %43, %51 ], [ %56, %138 ], [ %43, %49 ]
  %150 = phi i8* [ %38, %51 ], [ %68, %138 ], [ %38, %49 ], !dbg !1321
  call void @llvm.dbg.value(metadata i8* %150, metadata !1264, metadata !DIExpression()), !dbg !1321
  tail call void @free(i8* %150) #12, !dbg !1472
  tail call void @free(i8* %149) #12, !dbg !1473
  ret i1 %148, !dbg !1474
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @scan_arg(%struct.operand* noalias sret, i8*) unnamed_addr #7 !dbg !1475 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !1479, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.declare(metadata %struct.operand* %0, metadata !1480, metadata !DIExpression()), !dbg !1491
  %3 = getelementptr inbounds %struct.operand, %struct.operand* %0, i64 0, i32 0, !dbg !1492
  %4 = tail call zeroext i1 @xstrtold(i8* %1, i8** null, x86_fp80* %3, x86_fp80 (i8*, i8**)* nonnull @c_strtold) #12, !dbg !1494
  br i1 %4, label %8, label %5, !dbg !1495

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), i32 5) #12, !dbg !1496
  %7 = tail call i8* @quote(i8* %1) #12, !dbg !1498
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7) #12, !dbg !1499
  tail call void @usage(i32 1) #16, !dbg !1500
  unreachable, !dbg !1500

; <label>:8:                                      ; preds = %2
  %9 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1501, !tbaa !1503
  %10 = fcmp uno x86_fp80 %9, 0xK00000000000000000000, !dbg !1501
  br i1 %10, label %14, label %11, !dbg !1507

; <label>:11:                                     ; preds = %8
  %12 = tail call i16** @__ctype_b_loc() #17, !dbg !1508
  %13 = load i16*, i16** %12, align 8, !tbaa !692
  br label %18, !dbg !1508

; <label>:14:                                     ; preds = %8
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0), i32 5) #12, !dbg !1509
  %16 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0)) #12, !dbg !1511
  %17 = tail call i8* @quote_n(i32 1, i8* %1) #12, !dbg !1512
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %15, i8* %16, i8* %17) #12, !dbg !1513
  tail call void @usage(i32 1) #16, !dbg !1514
  unreachable, !dbg !1514

; <label>:18:                                     ; preds = %18, %11
  %19 = phi i8* [ %28, %18 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i8* %19, metadata !1479, metadata !DIExpression()), !dbg !1490
  %20 = load i8, i8* %19, align 1, !dbg !1508, !tbaa !787
  %21 = zext i8 %20 to i64, !dbg !1508
  %22 = getelementptr inbounds i16, i16* %13, i64 %21, !dbg !1508
  %23 = load i16, i16* %22, align 2, !dbg !1508, !tbaa !1515
  %24 = and i16 %23, 8192, !dbg !1508
  %25 = icmp ne i16 %24, 0, !dbg !1508
  %26 = icmp eq i8 %20, 43, !dbg !1517
  %27 = or i1 %26, %25, !dbg !1518
  %28 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1519
  call void @llvm.dbg.value(metadata i8* %28, metadata !1479, metadata !DIExpression()), !dbg !1490
  br i1 %27, label %18, label %29, !dbg !1518, !llvm.loop !1520

; <label>:29:                                     ; preds = %18
  call void @llvm.dbg.value(metadata i8* %19, metadata !1479, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8* %19, metadata !1479, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8* %19, metadata !1479, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8* %19, metadata !1479, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8* %19, metadata !1479, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8* %19, metadata !1479, metadata !DIExpression()), !dbg !1490
  %30 = getelementptr inbounds %struct.operand, %struct.operand* %0, i64 0, i32 1, !dbg !1522
  store i64 0, i64* %30, align 16, !dbg !1523, !tbaa !1524
  %31 = getelementptr inbounds %struct.operand, %struct.operand* %0, i64 0, i32 2, !dbg !1525
  store i32 2147483647, i32* %31, align 8, !dbg !1526, !tbaa !1527
  %32 = tail call i8* @strchr(i8* %19, i32 46) #8, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %32, metadata !1481, metadata !DIExpression()), !dbg !1529
  %33 = icmp ne i8* %32, null, !dbg !1530
  br i1 %33, label %38, label %34, !dbg !1532

; <label>:34:                                     ; preds = %29
  %35 = tail call i8* @strchr(i8* %19, i32 112) #8, !dbg !1533
  %36 = icmp eq i8* %35, null, !dbg !1533
  br i1 %36, label %37, label %38, !dbg !1534

; <label>:37:                                     ; preds = %34
  store i32 0, i32* %31, align 8, !dbg !1535, !tbaa !1527
  br label %38, !dbg !1536

; <label>:38:                                     ; preds = %34, %37, %29
  %39 = tail call i64 @strcspn(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !1537
  %40 = getelementptr inbounds i8, i8* %19, i64 %39, !dbg !1538
  %41 = load i8, i8* %40, align 1, !dbg !1538, !tbaa !787
  %42 = icmp eq i8 %41, 0, !dbg !1538
  %43 = fmul x86_fp80 %9, 0xK00000000000000000000, !dbg !1539
  %44 = fcmp oeq x86_fp80 %43, 0xK00000000000000000000, !dbg !1539
  %45 = and i1 %44, %42, !dbg !1540
  br i1 %45, label %46, label %122, !dbg !1540

; <label>:46:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i64 0, metadata !1482, metadata !DIExpression()), !dbg !1541
  %47 = tail call i64 @strlen(i8* nonnull %19) #8, !dbg !1542
  store i64 %47, i64* %30, align 16, !dbg !1543, !tbaa !1524
  br i1 %33, label %48, label %67, !dbg !1544

; <label>:48:                                     ; preds = %46
  %49 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1545
  %50 = tail call i64 @strcspn(i8* nonnull %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #8, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %50, metadata !1482, metadata !DIExpression()), !dbg !1541
  %51 = icmp ult i64 %50, 2147483648, !dbg !1549
  br i1 %51, label %52, label %55, !dbg !1551

; <label>:52:                                     ; preds = %48
  %53 = trunc i64 %50 to i32, !dbg !1552
  store i32 %53, i32* %31, align 8, !dbg !1553, !tbaa !1527
  %54 = icmp eq i64 %50, 0, !dbg !1554
  br i1 %54, label %64, label %55, !dbg !1555

; <label>:55:                                     ; preds = %48, %52
  %56 = icmp eq i8* %32, %19, !dbg !1556
  br i1 %56, label %64, label %57, !dbg !1557

; <label>:57:                                     ; preds = %55
  %58 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !1558
  %59 = load i8, i8* %58, align 1, !dbg !1558, !tbaa !787
  %60 = sext i8 %59 to i32, !dbg !1558
  %61 = add nsw i32 %60, -48, !dbg !1558
  %62 = icmp ugt i32 %61, 9, !dbg !1558
  %63 = zext i1 %62 to i64, !dbg !1557
  br label %64, !dbg !1557

; <label>:64:                                     ; preds = %55, %57, %52
  %65 = phi i64 [ -1, %52 ], [ 1, %55 ], [ %63, %57 ], !dbg !1555
  %66 = add i64 %65, %47, !dbg !1559
  store i64 %66, i64* %30, align 16, !dbg !1559, !tbaa !1524
  br label %67, !dbg !1560

; <label>:67:                                     ; preds = %64, %46
  %68 = phi i64 [ %50, %64 ], [ 0, %46 ], !dbg !1561
  call void @llvm.dbg.value(metadata i64 %68, metadata !1482, metadata !DIExpression()), !dbg !1541
  %69 = tail call i8* @strchr(i8* nonnull %19, i32 101) #8, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %69, metadata !1485, metadata !DIExpression()), !dbg !1563
  %70 = icmp eq i8* %69, null, !dbg !1564
  br i1 %70, label %71, label %74, !dbg !1566

; <label>:71:                                     ; preds = %67
  %72 = tail call i8* @strchr(i8* nonnull %19, i32 69) #8, !dbg !1567
  call void @llvm.dbg.value(metadata i8* %72, metadata !1485, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* %72, metadata !1485, metadata !DIExpression()), !dbg !1563
  %73 = icmp eq i8* %72, null, !dbg !1568
  br i1 %73, label %122, label %74, !dbg !1569

; <label>:74:                                     ; preds = %67, %71
  %75 = phi i8* [ %72, %71 ], [ %69, %67 ]
  %76 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !1570
  %77 = tail call i64 @strtol(i8* nocapture nonnull %76, i8** null, i32 10) #12, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %77, metadata !1486, metadata !DIExpression()), !dbg !1572
  %78 = icmp slt i64 %77, 0, !dbg !1573
  %79 = load i32, i32* %31, align 8, !dbg !1574, !tbaa !1527
  %80 = sext i32 %79 to i64, !dbg !1575
  %81 = icmp sgt i64 %77, %80, !dbg !1575
  %82 = select i1 %81, i64 %80, i64 %77, !dbg !1575
  %83 = select i1 %78, i64 %77, i64 %82, !dbg !1576
  %84 = trunc i64 %83 to i32, !dbg !1577
  %85 = sub i32 %79, %84, !dbg !1577
  store i32 %85, i32* %31, align 8, !dbg !1577, !tbaa !1527
  %86 = tail call i64 @strlen(i8* nonnull %19) #8, !dbg !1578
  %87 = ptrtoint i8* %75 to i64, !dbg !1579
  %88 = ptrtoint i8* %19 to i64, !dbg !1579
  %89 = load i64, i64* %30, align 16, !dbg !1580, !tbaa !1524
  %90 = sub i64 %87, %88, !dbg !1581
  %91 = sub i64 %90, %86, !dbg !1581
  %92 = add i64 %91, %89, !dbg !1580
  store i64 %92, i64* %30, align 16, !dbg !1580, !tbaa !1524
  br i1 %78, label %93, label %106, !dbg !1582

; <label>:93:                                     ; preds = %74
  br i1 %33, label %94, label %99, !dbg !1583

; <label>:94:                                     ; preds = %93
  %95 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1586
  %96 = icmp eq i8* %75, %95, !dbg !1590
  br i1 %96, label %97, label %103, !dbg !1591

; <label>:97:                                     ; preds = %94
  %98 = add i64 %92, 1, !dbg !1592
  br label %101, !dbg !1593

; <label>:99:                                     ; preds = %93
  %100 = add i64 %92, 1, !dbg !1594
  br label %101

; <label>:101:                                    ; preds = %99, %97
  %102 = phi i64 [ %98, %97 ], [ %100, %99 ]
  store i64 %102, i64* %30, align 16, !dbg !1595, !tbaa !1524
  br label %103, !dbg !1596

; <label>:103:                                    ; preds = %101, %94
  %104 = phi i64 [ %92, %94 ], [ %102, %101 ]
  %105 = sub nsw i64 0, %77, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %105, metadata !1486, metadata !DIExpression()), !dbg !1572
  br label %118, !dbg !1597

; <label>:106:                                    ; preds = %74
  br i1 %33, label %107, label %113, !dbg !1598

; <label>:107:                                    ; preds = %106
  %108 = icmp eq i32 %85, 0, !dbg !1601
  %109 = icmp ne i64 %68, 0, !dbg !1602
  %110 = and i1 %109, %108, !dbg !1603
  br i1 %110, label %111, label %113, !dbg !1603

; <label>:111:                                    ; preds = %107
  %112 = add i64 %92, -1, !dbg !1604
  store i64 %112, i64* %30, align 16, !dbg !1604, !tbaa !1524
  br label %113, !dbg !1605

; <label>:113:                                    ; preds = %111, %107, %106
  %114 = phi i64 [ %112, %111 ], [ %92, %107 ], [ %92, %106 ]
  %115 = icmp ult i64 %68, %77, !dbg !1606
  %116 = select i1 %115, i64 %68, i64 %77, !dbg !1606
  %117 = sub i64 %77, %116, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %117, metadata !1486, metadata !DIExpression()), !dbg !1572
  br label %118

; <label>:118:                                    ; preds = %113, %103
  %119 = phi i64 [ %104, %103 ], [ %114, %113 ], !dbg !1608
  %120 = phi i64 [ %105, %103 ], [ %117, %113 ], !dbg !1609
  call void @llvm.dbg.value(metadata i64 %120, metadata !1486, metadata !DIExpression()), !dbg !1572
  %121 = add i64 %119, %120, !dbg !1608
  store i64 %121, i64* %30, align 16, !dbg !1608, !tbaa !1524
  br label %122, !dbg !1610

; <label>:122:                                    ; preds = %118, %71, %38
  ret void, !dbg !1611
}

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @io_error() unnamed_addr #0 !dbg !1612 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1613, !tbaa !692
  tail call void @clearerr_unlocked(%struct._IO_FILE* %1) #12, !dbg !1613
  %2 = tail call i32* @__errno_location() #17, !dbg !1614
  %3 = load i32, i32* %2, align 4, !dbg !1614, !tbaa !780
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 5) #12, !dbg !1614
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %3, i8* %4) #12, !dbg !1614
  unreachable, !dbg !1614
}

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local x86_fp80 @c_strtold(i8*, i8**) #7 !dbg !1615 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1619, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8** %1, metadata !1620, metadata !DIExpression()), !dbg !1624
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1625, !tbaa !692
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !1625
  br i1 %4, label %5, label %7, !dbg !1631

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), %struct.__locale_struct* null) #12, !dbg !1632
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1633, !tbaa !692
  br label %7, !dbg !1634

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1635, !tbaa !692
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !1622, metadata !DIExpression()), !dbg !1636
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !1637
  br i1 %9, label %10, label %13, !dbg !1639

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !1640
  br i1 %11, label %15, label %12, !dbg !1643

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !1644, !tbaa !692
  br label %15, !dbg !1645

; <label>:13:                                     ; preds = %7
  %14 = tail call x86_fp80 @strtold_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #12, !dbg !1646
  call void @llvm.dbg.value(metadata x86_fp80 %14, metadata !1621, metadata !DIExpression()), !dbg !1647
  br label %15, !dbg !1648

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi x86_fp80 [ %14, %13 ], [ 0xK00000000000000000000, %10 ], [ 0xK00000000000000000000, %12 ], !dbg !1649
  ret x86_fp80 %16, !dbg !1650
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare x86_fp80 @strtold_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1651 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1653, metadata !DIExpression()), !dbg !1654
  store i8* %0, i8** @file_name, align 8, !dbg !1655, !tbaa !692
  ret void, !dbg !1656
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1657 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1661, metadata !DIExpression()), !dbg !1662
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1663, !tbaa !1664
  ret void, !dbg !1666
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1667 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1672, !tbaa !692
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1673
  %3 = icmp eq i32 %2, 0, !dbg !1674
  br i1 %3, label %22, label %4, !dbg !1675

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1676, !tbaa !1664, !range !1677
  %6 = icmp eq i8 %5, 0, !dbg !1676
  br i1 %6, label %11, label %7, !dbg !1678

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1679
  %9 = load i32, i32* %8, align 4, !dbg !1679, !tbaa !780
  %10 = icmp eq i32 %9, 32, !dbg !1680
  br i1 %10, label %22, label %11, !dbg !1681

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i32 5) #12, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %12, metadata !1669, metadata !DIExpression()), !dbg !1683
  %13 = load i8*, i8** @file_name, align 8, !dbg !1684, !tbaa !692
  %14 = icmp eq i8* %13, null, !dbg !1684
  %15 = tail call i32* @__errno_location() #17, !dbg !1686
  %16 = load i32, i32* %15, align 4, !dbg !1686, !tbaa !780
  br i1 %14, label %19, label %17, !dbg !1687

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1688
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.68, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1689
  br label %20, !dbg !1689

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.69, i64 0, i64 0), i8* %12) #12, !dbg !1690
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1691, !tbaa !780
  tail call void @_exit(i32 %21) #15, !dbg !1692
  unreachable, !dbg !1692

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1693, !tbaa !692
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1695
  %25 = icmp eq i32 %24, 0, !dbg !1696
  br i1 %25, label %28, label %26, !dbg !1697

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1698, !tbaa !780
  tail call void @_exit(i32 %27) #15, !dbg !1699
  unreachable, !dbg !1699

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1700
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1701 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1703, metadata !DIExpression()), !dbg !1706
  %2 = icmp eq i8* %0, null, !dbg !1707
  br i1 %2, label %3, label %6, !dbg !1709

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1710, !tbaa !692
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.76, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1712
  tail call void @abort() #15, !dbg !1713
  unreachable, !dbg !1713

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #8, !dbg !1714
  call void @llvm.dbg.value(metadata i8* %7, metadata !1704, metadata !DIExpression()), !dbg !1715
  %8 = icmp eq i8* %7, null, !dbg !1716
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1717
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1718
  call void @llvm.dbg.value(metadata i8* %10, metadata !1705, metadata !DIExpression()), !dbg !1719
  %11 = ptrtoint i8* %10 to i64, !dbg !1720
  %12 = ptrtoint i8* %0 to i64, !dbg !1720
  %13 = sub i64 %11, %12, !dbg !1720
  %14 = icmp sgt i64 %13, 6, !dbg !1722
  br i1 %14, label %15, label %24, !dbg !1723

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1724
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.77, i64 0, i64 0), i64 7) #8, !dbg !1725
  %18 = icmp eq i32 %17, 0, !dbg !1726
  br i1 %18, label %19, label %24, !dbg !1727

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1703, metadata !DIExpression()), !dbg !1706
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i64 3) #8, !dbg !1728
  %21 = icmp eq i32 %20, 0, !dbg !1731
  br i1 %21, label %22, label %24, !dbg !1732

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1733
  call void @llvm.dbg.value(metadata i8* %23, metadata !1703, metadata !DIExpression()), !dbg !1706
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1735, !tbaa !692
  br label %24, !dbg !1736

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1703, metadata !DIExpression()), !dbg !1706
  store i8* %25, i8** @program_name, align 8, !dbg !1737, !tbaa !692
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1738, !tbaa !692
  ret void, !dbg !1739
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1740 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1745, metadata !DIExpression()), !dbg !1748
  %2 = tail call i32* @__errno_location() #17, !dbg !1749
  %3 = load i32, i32* %2, align 4, !dbg !1749, !tbaa !780
  call void @llvm.dbg.value(metadata i32 %3, metadata !1746, metadata !DIExpression()), !dbg !1750
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1751
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1751
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1751
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1752
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1752
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1747, metadata !DIExpression()), !dbg !1753
  store i32 %3, i32* %2, align 4, !dbg !1754, !tbaa !780
  ret %struct.quoting_options* %8, !dbg !1755
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #13 !dbg !1756 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1762, metadata !DIExpression()), !dbg !1763
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1764
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1764
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1765
  %5 = load i32, i32* %4, align 8, !dbg !1765, !tbaa !1766
  ret i32 %5, !dbg !1768
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1769 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1773, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i32 %1, metadata !1774, metadata !DIExpression()), !dbg !1776
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1777
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1777
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1778
  store i32 %1, i32* %5, align 8, !dbg !1779, !tbaa !1766
  ret void, !dbg !1780
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1781 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1785, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %1, metadata !1786, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i32 %2, metadata !1787, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %1, metadata !1788, metadata !DIExpression()), !dbg !1797
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1798
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1798
  %6 = lshr i8 %1, 5, !dbg !1799
  %7 = zext i8 %6 to i64, !dbg !1799
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1800
  call void @llvm.dbg.value(metadata i32* %8, metadata !1790, metadata !DIExpression()), !dbg !1801
  %9 = and i8 %1, 31, !dbg !1802
  %10 = zext i8 %9 to i32, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %10, metadata !1792, metadata !DIExpression()), !dbg !1803
  %11 = load i32, i32* %8, align 4, !dbg !1804, !tbaa !780
  %12 = lshr i32 %11, %10, !dbg !1805
  %13 = and i32 %12, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i32 %13, metadata !1793, metadata !DIExpression()), !dbg !1807
  %14 = and i32 %2, 1, !dbg !1808
  %15 = xor i32 %13, %14, !dbg !1809
  %16 = shl i32 %15, %10, !dbg !1810
  %17 = xor i32 %16, %11, !dbg !1811
  store i32 %17, i32* %8, align 4, !dbg !1811, !tbaa !780
  ret i32 %13, !dbg !1812
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1813 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1817, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i32 %1, metadata !1818, metadata !DIExpression()), !dbg !1821
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1822
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1824
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1817, metadata !DIExpression()), !dbg !1820
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1825
  %6 = load i32, i32* %5, align 4, !dbg !1825, !tbaa !1826
  call void @llvm.dbg.value(metadata i32 %6, metadata !1819, metadata !DIExpression()), !dbg !1827
  store i32 %1, i32* %5, align 4, !dbg !1828, !tbaa !1826
  ret i32 %6, !dbg !1829
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1830 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1834, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8* %1, metadata !1835, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %2, metadata !1836, metadata !DIExpression()), !dbg !1839
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1840
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1842
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1834, metadata !DIExpression()), !dbg !1837
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1843
  store i32 10, i32* %6, align 8, !dbg !1844, !tbaa !1766
  %7 = icmp ne i8* %1, null, !dbg !1845
  %8 = icmp ne i8* %2, null, !dbg !1847
  %9 = and i1 %7, %8, !dbg !1848
  br i1 %9, label %11, label %10, !dbg !1848

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1849
  unreachable, !dbg !1849

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1850
  store i8* %1, i8** %12, align 8, !dbg !1851, !tbaa !1852
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1853
  store i8* %2, i8** %13, align 8, !dbg !1854, !tbaa !1855
  ret void, !dbg !1856
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1861, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %1, metadata !1862, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %2, metadata !1863, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %3, metadata !1864, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1865, metadata !DIExpression()), !dbg !1873
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1874
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1874
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1866, metadata !DIExpression()), !dbg !1875
  %8 = tail call i32* @__errno_location() #17, !dbg !1876
  %9 = load i32, i32* %8, align 4, !dbg !1876, !tbaa !780
  call void @llvm.dbg.value(metadata i32 %9, metadata !1867, metadata !DIExpression()), !dbg !1877
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1878
  %11 = load i32, i32* %10, align 8, !dbg !1878, !tbaa !1766
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1879
  %13 = load i32, i32* %12, align 4, !dbg !1879, !tbaa !1826
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1880
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1881
  %16 = load i8*, i8** %15, align 8, !dbg !1881, !tbaa !1852
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1882
  %18 = load i8*, i8** %17, align 8, !dbg !1882, !tbaa !1855
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %19, metadata !1868, metadata !DIExpression()), !dbg !1884
  store i32 %9, i32* %8, align 4, !dbg !1885, !tbaa !780
  ret i64 %19, !dbg !1886
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1887 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i64 %1, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %2, metadata !1895, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %3, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 %4, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %5, metadata !1898, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i32* %6, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %7, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %8, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 0, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 0, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* null, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 0, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1907, metadata !DIExpression()), !dbg !1970
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1971
  %14 = icmp eq i64 %13, 1, !dbg !1972
  %15 = lshr i32 %5, 1, !dbg !1973
  %16 = trunc i32 %15 to i8, !dbg !1973
  %17 = and i8 %16, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i8 %17, metadata !1909, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 1, metadata !1912, metadata !DIExpression()), !dbg !1976
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1977

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1967
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1968
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1969
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1970
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1978
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1974
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1975
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1976
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %39, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %38, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %37, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %36, metadata !1909, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %35, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 %34, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %33, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* %32, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %31, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 0, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8* %30, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %29, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 %28, metadata !1897, metadata !DIExpression()), !dbg !1961
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
  ], !dbg !1980

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 1, metadata !1909, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %36, metadata !1909, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 5, metadata !1897, metadata !DIExpression()), !dbg !1961
  br label %93, !dbg !1981

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1909, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 5, metadata !1897, metadata !DIExpression()), !dbg !1961
  %43 = and i8 %36, 1, !dbg !1982
  %44 = icmp eq i8 %43, 0, !dbg !1982
  br i1 %44, label %45, label %93, !dbg !1981

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1984
  br i1 %46, label %93, label %47, !dbg !1987

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1984, !tbaa !787
  br label %93, !dbg !1984

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.89, i64 0, i64 0), i32 %28), !dbg !1988
  call void @llvm.dbg.value(metadata i8* %49, metadata !1900, metadata !DIExpression()), !dbg !1964
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), i32 %28), !dbg !1992
  call void @llvm.dbg.value(metadata i8* %50, metadata !1901, metadata !DIExpression()), !dbg !1965
  br label %51, !dbg !1993

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %52, metadata !1900, metadata !DIExpression()), !dbg !1964
  %54 = and i8 %36, 1, !dbg !1994
  %55 = icmp eq i8 %54, 0, !dbg !1994
  br i1 %55, label %56, label %71, !dbg !1996

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 0, metadata !1903, metadata !DIExpression()), !dbg !1966
  %57 = load i8, i8* %52, align 1, !dbg !1997, !tbaa !787
  %58 = icmp eq i8 %57, 0, !dbg !2000
  br i1 %58, label %71, label %59, !dbg !2000

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %62, metadata !1903, metadata !DIExpression()), !dbg !1966
  %63 = icmp ult i64 %62, %40, !dbg !2001
  br i1 %63, label %64, label %66, !dbg !2004

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2001
  store i8 %60, i8* %65, align 1, !dbg !2001, !tbaa !787
  br label %66, !dbg !2001

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2004
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2005
  call void @llvm.dbg.value(metadata i8* %68, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %67, metadata !1903, metadata !DIExpression()), !dbg !1966
  %69 = load i8, i8* %68, align 1, !dbg !1997, !tbaa !787
  %70 = icmp eq i8 %69, 0, !dbg !2000
  br i1 %70, label %71, label %59, !dbg !2000, !llvm.loop !2006

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1966
  call void @llvm.dbg.value(metadata i64 %72, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 1, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8* %53, metadata !1905, metadata !DIExpression()), !dbg !1968
  %73 = call i64 @strlen(i8* %53) #8, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %73, metadata !1906, metadata !DIExpression()), !dbg !1969
  br label %93, !dbg !2009

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1907, metadata !DIExpression()), !dbg !1970
  br label %75, !dbg !2010

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1978
  call void @llvm.dbg.value(metadata i8 %76, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 1, metadata !1909, metadata !DIExpression()), !dbg !1973
  br label %77, !dbg !2011

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1970
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1978
  call void @llvm.dbg.value(metadata i8 %79, metadata !1909, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %78, metadata !1907, metadata !DIExpression()), !dbg !1970
  %80 = and i8 %79, 1, !dbg !2012
  %81 = icmp eq i8 %80, 0, !dbg !2012
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2014
  br label %83, !dbg !2014

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2015
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %85, metadata !1909, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %84, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i32 2, metadata !1897, metadata !DIExpression()), !dbg !1961
  %86 = and i8 %85, 1, !dbg !2016
  %87 = icmp eq i8 %86, 0, !dbg !2016
  br i1 %87, label %88, label %93, !dbg !2018

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2019
  br i1 %89, label %93, label %90, !dbg !2022

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2019, !tbaa !787
  br label %93, !dbg !2019

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1909, metadata !DIExpression()), !dbg !1973
  br label %93, !dbg !2023

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2024
  unreachable, !dbg !2024

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1966
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), %41 ], !dbg !1978
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1978
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1978
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %101, metadata !1909, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %100, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %99, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %97, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 %94, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 0, metadata !1902, metadata !DIExpression()), !dbg !2026
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
  br label %121, !dbg !2027

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2028
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1966
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1967
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1974
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1975
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1976
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %125, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %122, metadata !1902, metadata !DIExpression()), !dbg !2026
  %130 = icmp eq i64 %125, -1, !dbg !2029
  br i1 %130, label %131, label %135, !dbg !2030

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2031
  %133 = load i8, i8* %132, align 1, !dbg !2031, !tbaa !787
  %134 = icmp eq i8 %133, 0, !dbg !2032
  br i1 %134, label %617, label %137, !dbg !2033

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2034
  br i1 %136, label %617, label %137, !dbg !2033

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1918, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 0, metadata !1919, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 0, metadata !1920, metadata !DIExpression()), !dbg !2037
  br i1 %107, label %138, label %153, !dbg !2038

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2040
  %140 = and i1 %108, %130, !dbg !2041
  br i1 %140, label %141, label %143, !dbg !2041

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #8, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %142, metadata !1896, metadata !DIExpression()), !dbg !1960
  br label %143, !dbg !2043

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1896, metadata !DIExpression()), !dbg !1960
  %145 = icmp ugt i64 %139, %144, !dbg !2044
  br i1 %145, label %153, label %146, !dbg !2045

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2046
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #8, !dbg !2047
  %149 = icmp ne i32 %148, 0, !dbg !2048
  %150 = or i1 %149, %110, !dbg !2049
  %151 = xor i1 %149, true, !dbg !2049
  %152 = zext i1 %151 to i8, !dbg !2049
  br i1 %150, label %153, label %661, !dbg !2049

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2050
  call void @llvm.dbg.value(metadata i8 %155, metadata !1918, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %154, metadata !1896, metadata !DIExpression()), !dbg !1960
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2051
  %157 = load i8, i8* %156, align 1, !dbg !2051, !tbaa !787
  call void @llvm.dbg.value(metadata i8 %157, metadata !1913, metadata !DIExpression()), !dbg !2052
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
  ], !dbg !2053

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2054

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2055

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1919, metadata !DIExpression()), !dbg !2036
  %161 = and i8 %126, 1, !dbg !2059
  %162 = icmp eq i8 %161, 0, !dbg !2059
  %163 = and i1 %114, %162, !dbg !2059
  br i1 %163, label %164, label %180, !dbg !2059

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2061
  br i1 %165, label %166, label %168, !dbg !2065

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2061
  store i8 39, i8* %167, align 1, !dbg !2061, !tbaa !787
  br label %168, !dbg !2061

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %169, metadata !1903, metadata !DIExpression()), !dbg !1966
  %170 = icmp ult i64 %169, %129, !dbg !2066
  br i1 %170, label %171, label %173, !dbg !2069

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2066
  store i8 36, i8* %172, align 1, !dbg !2066, !tbaa !787
  br label %173, !dbg !2066

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %174, metadata !1903, metadata !DIExpression()), !dbg !1966
  %175 = icmp ult i64 %174, %129, !dbg !2070
  br i1 %175, label %176, label %178, !dbg !2073

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2070
  store i8 39, i8* %177, align 1, !dbg !2070, !tbaa !787
  br label %178, !dbg !2070

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %179, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 1, metadata !1910, metadata !DIExpression()), !dbg !1974
  br label %180, !dbg !2074

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2025
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %182, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %181, metadata !1903, metadata !DIExpression()), !dbg !1966
  %183 = icmp ult i64 %181, %129, !dbg !2075
  br i1 %183, label %184, label %186, !dbg !2078

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2075
  store i8 92, i8* %185, align 1, !dbg !2075, !tbaa !787
  br label %186, !dbg !2075

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %187, metadata !1903, metadata !DIExpression()), !dbg !1966
  br i1 %104, label %188, label %478, !dbg !2079

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2081
  %190 = icmp ult i64 %189, %154, !dbg !2082
  br i1 %190, label %191, label %467, !dbg !2083

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2084
  %193 = load i8, i8* %192, align 1, !dbg !2084, !tbaa !787
  %194 = add i8 %193, -48, !dbg !2085
  %195 = icmp ult i8 %194, 10, !dbg !2085
  br i1 %195, label %196, label %467, !dbg !2085

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2086
  br i1 %197, label %198, label %200, !dbg !2090

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2086
  store i8 48, i8* %199, align 1, !dbg !2086, !tbaa !787
  br label %200, !dbg !2086

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %201, metadata !1903, metadata !DIExpression()), !dbg !1966
  %202 = icmp ult i64 %201, %129, !dbg !2091
  br i1 %202, label %203, label %205, !dbg !2094

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2091
  store i8 48, i8* %204, align 1, !dbg !2091, !tbaa !787
  br label %205, !dbg !2091

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %206, metadata !1903, metadata !DIExpression()), !dbg !1966
  br label %467, !dbg !2095

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2096

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2097

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2098

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2100

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2102
  %213 = icmp ult i64 %212, %154, !dbg !2103
  br i1 %213, label %214, label %467, !dbg !2104

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2105
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2106
  %217 = load i8, i8* %216, align 1, !dbg !2106, !tbaa !787
  %218 = icmp eq i8 %217, 63, !dbg !2107
  br i1 %218, label %219, label %467, !dbg !2108

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2109
  %221 = load i8, i8* %220, align 1, !dbg !2109, !tbaa !787
  %222 = sext i8 %221 to i32, !dbg !2109
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
  ], !dbg !2110

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2111

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1913, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %212, metadata !1902, metadata !DIExpression()), !dbg !2026
  %225 = icmp ult i64 %123, %129, !dbg !2113
  br i1 %225, label %226, label %228, !dbg !2116

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2113
  store i8 63, i8* %227, align 1, !dbg !2113, !tbaa !787
  br label %228, !dbg !2113

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %229, metadata !1903, metadata !DIExpression()), !dbg !1966
  %230 = icmp ult i64 %229, %129, !dbg !2117
  br i1 %230, label %231, label %233, !dbg !2120

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2117
  store i8 34, i8* %232, align 1, !dbg !2117, !tbaa !787
  br label %233, !dbg !2117

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %234, metadata !1903, metadata !DIExpression()), !dbg !1966
  %235 = icmp ult i64 %234, %129, !dbg !2121
  br i1 %235, label %236, label %238, !dbg !2124

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2121
  store i8 34, i8* %237, align 1, !dbg !2121, !tbaa !787
  br label %238, !dbg !2121

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %239, metadata !1903, metadata !DIExpression()), !dbg !1966
  %240 = icmp ult i64 %239, %129, !dbg !2125
  br i1 %240, label %241, label %243, !dbg !2128

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2125
  store i8 63, i8* %242, align 1, !dbg !2125, !tbaa !787
  br label %243, !dbg !2125

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %244, metadata !1903, metadata !DIExpression()), !dbg !1966
  br label %467, !dbg !2129

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1917, metadata !DIExpression()), !dbg !2130
  br label %255, !dbg !2131

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1917, metadata !DIExpression()), !dbg !2130
  br label %255, !dbg !2132

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1917, metadata !DIExpression()), !dbg !2130
  br label %253, !dbg !2133

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1917, metadata !DIExpression()), !dbg !2130
  br label %253, !dbg !2134

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1917, metadata !DIExpression()), !dbg !2130
  br label %255, !dbg !2135

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1917, metadata !DIExpression()), !dbg !2130
  br i1 %114, label %251, label %252, !dbg !2136

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2137

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2140

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2142
  call void @llvm.dbg.value(metadata i8 %254, metadata !1917, metadata !DIExpression()), !dbg !2130
  br i1 %113, label %255, label %661, !dbg !2143

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2142
  call void @llvm.dbg.value(metadata i8 %256, metadata !1917, metadata !DIExpression()), !dbg !2130
  br i1 %103, label %524, label %478, !dbg !2145

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2146
  br i1 %258, label %259, label %264, !dbg !2148

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2149, !tbaa !787
  %261 = icmp ne i8 %260, 0, !dbg !2150
  %262 = icmp ne i64 %122, 0, !dbg !2151
  %263 = or i1 %262, %261, !dbg !2153
  br i1 %263, label %467, label %270, !dbg !2153

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2154
  %266 = icmp ne i64 %122, 0, !dbg !2151
  %267 = or i1 %266, %265, !dbg !2148
  br i1 %267, label %467, label %270, !dbg !2148

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2151
  br i1 %269, label %270, label %467, !dbg !2155

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1920, metadata !DIExpression()), !dbg !2037
  br label %271, !dbg !2156

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2142
  call void @llvm.dbg.value(metadata i8 %272, metadata !1920, metadata !DIExpression()), !dbg !2037
  br i1 %113, label %467, label %661, !dbg !2157

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 1, metadata !1920, metadata !DIExpression()), !dbg !2037
  br i1 %114, label %274, label %467, !dbg !2159

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2160

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2163
  %277 = icmp ne i64 %124, 0, !dbg !2165
  %278 = or i1 %277, %276, !dbg !2166
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2166
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %280, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %279, metadata !1904, metadata !DIExpression()), !dbg !1967
  %281 = icmp ult i64 %123, %280, !dbg !2167
  br i1 %281, label %282, label %284, !dbg !2170

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2167
  store i8 39, i8* %283, align 1, !dbg !2167, !tbaa !787
  br label %284, !dbg !2167

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %285, metadata !1903, metadata !DIExpression()), !dbg !1966
  %286 = icmp ult i64 %285, %280, !dbg !2171
  br i1 %286, label %287, label %289, !dbg !2174

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2171
  store i8 92, i8* %288, align 1, !dbg !2171, !tbaa !787
  br label %289, !dbg !2171

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %290, metadata !1903, metadata !DIExpression()), !dbg !1966
  %291 = icmp ult i64 %290, %280, !dbg !2175
  br i1 %291, label %292, label %294, !dbg !2178

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2175
  store i8 39, i8* %293, align 1, !dbg !2175, !tbaa !787
  br label %294, !dbg !2175

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %295, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1974
  br label %467, !dbg !2179

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2180

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1921, metadata !DIExpression()), !dbg !2181
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2182
  %299 = load i16*, i16** %298, align 8, !dbg !2182, !tbaa !692
  %300 = zext i8 %157 to i64, !dbg !2182
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2182
  %302 = load i16, i16* %301, align 2, !dbg !2182, !tbaa !1515
  %303 = lshr i16 %302, 14, !dbg !2184
  %304 = trunc i16 %303 to i8, !dbg !2184
  %305 = and i8 %304, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i8 %305, metadata !1924, metadata !DIExpression()), !dbg !2185
  br label %359, !dbg !2186

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2187
  store i64 0, i64* %10, align 8, !dbg !2188
  call void @llvm.dbg.value(metadata i64 0, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 1, metadata !1924, metadata !DIExpression()), !dbg !2185
  %307 = icmp eq i64 %154, -1, !dbg !2189
  br i1 %307, label %308, label %310, !dbg !2191

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #8, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %309, metadata !1896, metadata !DIExpression()), !dbg !1960
  br label %310, !dbg !2193

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2194
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  br label %312, !dbg !2195

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2196
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2197
  call void @llvm.dbg.value(metadata i8 %314, metadata !1924, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %313, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2198
  %315 = add i64 %313, %122, !dbg !2199
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2200
  %317 = sub i64 %311, %315, !dbg !2201
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1925, metadata !DIExpression(DW_OP_deref)), !dbg !2202
  call void @llvm.dbg.value(metadata i32* %12, metadata !1943, metadata !DIExpression(DW_OP_deref)), !dbg !2203
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %318, metadata !1946, metadata !DIExpression()), !dbg !2205
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2206

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %313, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %313, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %313, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %313, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %313, metadata !1921, metadata !DIExpression()), !dbg !2181
  %320 = icmp ugt i64 %311, %315, !dbg !2207
  br i1 %320, label %321, label %344, !dbg !2209

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1921, metadata !DIExpression()), !dbg !2181
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2210
  %325 = load i8, i8* %324, align 1, !dbg !2210, !tbaa !787
  %326 = icmp eq i8 %325, 0, !dbg !2209
  br i1 %326, label %344, label %327, !dbg !2211

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %328, metadata !1921, metadata !DIExpression()), !dbg !2181
  %329 = add i64 %328, %122, !dbg !2213
  %330 = icmp ult i64 %329, %311, !dbg !2207
  br i1 %330, label %321, label %344, !dbg !2209, !llvm.loop !2214

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2215
  %333 = and i1 %116, %332, !dbg !2218
  call void @llvm.dbg.value(metadata i64 1, metadata !1947, metadata !DIExpression()), !dbg !2219
  br i1 %333, label %334, label %347, !dbg !2218

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1947, metadata !DIExpression()), !dbg !2219
  %336 = add i64 %335, %315, !dbg !2220
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2221
  %338 = load i8, i8* %337, align 1, !dbg !2221, !tbaa !787
  %339 = sext i8 %338 to i32, !dbg !2221
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2222

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %341, metadata !1947, metadata !DIExpression()), !dbg !2219
  %342 = icmp ult i64 %341, %318, !dbg !2215
  br i1 %342, label %334, label %347, !dbg !2224, !llvm.loop !2225

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %314, metadata !1924, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %313, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %314, metadata !1924, metadata !DIExpression()), !dbg !2185
  br label %344, !dbg !2227

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1924, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %352, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2227
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2228, !tbaa !780
  call void @llvm.dbg.value(metadata i32 %348, metadata !1943, metadata !DIExpression()), !dbg !2203
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !2230
  %350 = icmp eq i32 %349, 0, !dbg !2230
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2231
  call void @llvm.dbg.value(metadata i8 %351, metadata !1924, metadata !DIExpression()), !dbg !2185
  %352 = add i64 %318, %313, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %352, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %351, metadata !1924, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %352, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2227
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1925, metadata !DIExpression(DW_OP_deref)), !dbg !2202
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #8, !dbg !2233
  %354 = icmp eq i32 %353, 0, !dbg !2234
  br i1 %354, label %312, label %355, !dbg !2235, !llvm.loop !2236

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2238
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 2, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 2, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 2, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 2, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 2, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8 %100, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 %94, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %94, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %94, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %94, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %94, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8 %100, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 %351, metadata !1924, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %352, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2227
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2238
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2239
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2240
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2240
  call void @llvm.dbg.value(metadata i8 %362, metadata !1924, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %361, metadata !1921, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %360, metadata !1896, metadata !DIExpression()), !dbg !1960
  %363 = and i8 %362, 1, !dbg !2241
  %364 = icmp ne i8 %363, 0, !dbg !2241
  call void @llvm.dbg.value(metadata i8 %363, metadata !1920, metadata !DIExpression()), !dbg !2037
  %365 = icmp ult i64 %361, 2, !dbg !2242
  %366 = or i1 %364, %115, !dbg !2243
  %367 = and i1 %365, %366, !dbg !2244
  br i1 %367, label %467, label %368, !dbg !2244

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2245
  call void @llvm.dbg.value(metadata i64 %369, metadata !1954, metadata !DIExpression()), !dbg !2246
  br label %370, !dbg !2247

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2248
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2252
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1974
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2248
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2254
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2036
  call void @llvm.dbg.value(metadata i8 %376, metadata !1919, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %375, metadata !1918, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 %374, metadata !1913, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %373, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %372, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %371, metadata !1902, metadata !DIExpression()), !dbg !2026
  br i1 %366, label %423, label %377, !dbg !2258

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2259

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1919, metadata !DIExpression()), !dbg !2036
  %379 = and i8 %373, 1, !dbg !2262
  %380 = icmp eq i8 %379, 0, !dbg !2262
  %381 = and i1 %114, %380, !dbg !2262
  br i1 %381, label %382, label %398, !dbg !2262

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2264
  br i1 %383, label %384, label %386, !dbg !2268

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2264
  store i8 39, i8* %385, align 1, !dbg !2264, !tbaa !787
  br label %386, !dbg !2264

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %387, metadata !1903, metadata !DIExpression()), !dbg !1966
  %388 = icmp ult i64 %387, %129, !dbg !2269
  br i1 %388, label %389, label %391, !dbg !2272

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2269
  store i8 36, i8* %390, align 1, !dbg !2269, !tbaa !787
  br label %391, !dbg !2269

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %392, metadata !1903, metadata !DIExpression()), !dbg !1966
  %393 = icmp ult i64 %392, %129, !dbg !2273
  br i1 %393, label %394, label %396, !dbg !2276

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2273
  store i8 39, i8* %395, align 1, !dbg !2273, !tbaa !787
  br label %396, !dbg !2273

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %397, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 1, metadata !1910, metadata !DIExpression()), !dbg !1974
  br label %398, !dbg !2277

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2025
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %400, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %399, metadata !1903, metadata !DIExpression()), !dbg !1966
  %401 = icmp ult i64 %399, %129, !dbg !2278
  br i1 %401, label %402, label %404, !dbg !2281

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2278
  store i8 92, i8* %403, align 1, !dbg !2278, !tbaa !787
  br label %404, !dbg !2278

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %405, metadata !1903, metadata !DIExpression()), !dbg !1966
  %406 = icmp ult i64 %405, %129, !dbg !2282
  br i1 %406, label %407, label %411, !dbg !2285

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2282
  %409 = or i8 %408, 48, !dbg !2282
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2282
  store i8 %409, i8* %410, align 1, !dbg !2282, !tbaa !787
  br label %411, !dbg !2282

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %412, metadata !1903, metadata !DIExpression()), !dbg !1966
  %413 = icmp ult i64 %412, %129, !dbg !2286
  br i1 %413, label %414, label %419, !dbg !2289

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2286
  %416 = and i8 %415, 7, !dbg !2286
  %417 = or i8 %416, 48, !dbg !2286
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2286
  store i8 %417, i8* %418, align 1, !dbg !2286, !tbaa !787
  br label %419, !dbg !2286

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %420, metadata !1903, metadata !DIExpression()), !dbg !1966
  %421 = and i8 %374, 7, !dbg !2290
  %422 = or i8 %421, 48, !dbg !2291
  call void @llvm.dbg.value(metadata i8 %422, metadata !1913, metadata !DIExpression()), !dbg !2052
  br label %432, !dbg !2292

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2293
  %425 = icmp eq i8 %424, 0, !dbg !2293
  br i1 %425, label %432, label %426, !dbg !2294

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2295
  br i1 %427, label %428, label %430, !dbg !2298

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2295
  store i8 92, i8* %429, align 1, !dbg !2295, !tbaa !787
  br label %430, !dbg !2295

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %431, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 0, metadata !1918, metadata !DIExpression()), !dbg !2035
  br label %432, !dbg !2299

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2300
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1974
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2301
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2302
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2304
  call void @llvm.dbg.value(metadata i8 %437, metadata !1919, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %436, metadata !1918, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 %435, metadata !1913, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %434, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %433, metadata !1903, metadata !DIExpression()), !dbg !1966
  %438 = add i64 %371, 1, !dbg !2305
  %439 = icmp ugt i64 %369, %438, !dbg !2307
  br i1 %439, label %440, label %562, !dbg !2308

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2309
  %442 = icmp ne i8 %441, 0, !dbg !2309
  %443 = and i8 %437, 1, !dbg !2309
  %444 = icmp eq i8 %443, 0, !dbg !2309
  %445 = and i1 %442, %444, !dbg !2309
  br i1 %445, label %446, label %457, !dbg !2309

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2312
  br i1 %447, label %448, label %450, !dbg !2316

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2312
  store i8 39, i8* %449, align 1, !dbg !2312, !tbaa !787
  br label %450, !dbg !2312

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %451, metadata !1903, metadata !DIExpression()), !dbg !1966
  %452 = icmp ult i64 %451, %129, !dbg !2317
  br i1 %452, label %453, label %455, !dbg !2320

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2317
  store i8 39, i8* %454, align 1, !dbg !2317, !tbaa !787
  br label %455, !dbg !2317

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %456, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1974
  br label %457, !dbg !2321

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2322
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %459, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %458, metadata !1903, metadata !DIExpression()), !dbg !1966
  %460 = icmp ult i64 %458, %129, !dbg !2323
  br i1 %460, label %461, label %463, !dbg !2325

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2323
  store i8 %435, i8* %462, align 1, !dbg !2323, !tbaa !787
  br label %463, !dbg !2323

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %464, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %438, metadata !1902, metadata !DIExpression()), !dbg !2026
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2326
  %466 = load i8, i8* %465, align 1, !dbg !2326, !tbaa !787
  call void @llvm.dbg.value(metadata i8 %466, metadata !1913, metadata !DIExpression()), !dbg !2052
  br label %370, !dbg !2327, !llvm.loop !2328

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2331
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2025
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1967
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2332
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2025
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2025
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2050
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2050
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2050
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %476, metadata !1920, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8 %475, metadata !1919, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %155, metadata !1918, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 %474, metadata !1913, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %473, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %472, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %471, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %470, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %469, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %468, metadata !1902, metadata !DIExpression()), !dbg !2026
  br i1 %105, label %489, label %478, !dbg !2333

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
  br i1 %112, label %490, label %512, !dbg !2335

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2336

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
  %501 = lshr i8 %494, 5, !dbg !2337
  %502 = zext i8 %501 to i64, !dbg !2337
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2338
  %504 = load i32, i32* %503, align 4, !dbg !2338, !tbaa !780
  %505 = and i8 %494, 31, !dbg !2339
  %506 = zext i8 %505 to i32, !dbg !2339
  %507 = shl i32 1, %506, !dbg !2340
  %508 = and i32 %504, %507, !dbg !2340
  %509 = icmp eq i32 %508, 0, !dbg !2340
  %510 = icmp eq i8 %155, 0, !dbg !2341
  %511 = and i1 %510, %509, !dbg !2342
  br i1 %511, label %562, label %524, !dbg !2342

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
  %523 = icmp eq i8 %155, 0, !dbg !2341
  br i1 %523, label %562, label %524, !dbg !2343

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2344
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2025
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1967
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2332
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1974
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1975
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2345
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2050
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %532, metadata !1920, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8 %531, metadata !1913, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %530, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %529, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %528, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %527, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %526, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %525, metadata !1902, metadata !DIExpression()), !dbg !2026
  br i1 %110, label %534, label %661, !dbg !2348

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1919, metadata !DIExpression()), !dbg !2036
  %535 = and i8 %529, 1, !dbg !2350
  %536 = icmp eq i8 %535, 0, !dbg !2350
  %537 = and i1 %114, %536, !dbg !2350
  br i1 %537, label %538, label %554, !dbg !2350

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2352
  br i1 %539, label %540, label %542, !dbg !2356

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2352
  store i8 39, i8* %541, align 1, !dbg !2352, !tbaa !787
  br label %542, !dbg !2352

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %543, metadata !1903, metadata !DIExpression()), !dbg !1966
  %544 = icmp ult i64 %543, %533, !dbg !2357
  br i1 %544, label %545, label %547, !dbg !2360

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2357
  store i8 36, i8* %546, align 1, !dbg !2357, !tbaa !787
  br label %547, !dbg !2357

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %548, metadata !1903, metadata !DIExpression()), !dbg !1966
  %549 = icmp ult i64 %548, %533, !dbg !2361
  br i1 %549, label %550, label %552, !dbg !2364

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2361
  store i8 39, i8* %551, align 1, !dbg !2361, !tbaa !787
  br label %552, !dbg !2361

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %553, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 1, metadata !1910, metadata !DIExpression()), !dbg !1974
  br label %554, !dbg !2365

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2322
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %556, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %555, metadata !1903, metadata !DIExpression()), !dbg !1966
  %557 = icmp ult i64 %555, %533, !dbg !2366
  br i1 %557, label %558, label %560, !dbg !2369

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2366
  store i8 92, i8* %559, align 1, !dbg !2366, !tbaa !787
  br label %560, !dbg !2366

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %561, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %572, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %571, metadata !1920, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8 %570, metadata !1919, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %569, metadata !1913, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %568, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %567, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %566, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %565, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %564, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %563, metadata !1902, metadata !DIExpression()), !dbg !2026
  br label %589, !dbg !2370

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2344
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2025
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1967
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2332
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1974
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1975
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2373
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2050
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2050
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %571, metadata !1920, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8 %570, metadata !1919, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %569, metadata !1913, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %568, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %567, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %566, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %565, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %564, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %563, metadata !1902, metadata !DIExpression()), !dbg !2026
  %573 = and i8 %567, 1, !dbg !2370
  %574 = icmp ne i8 %573, 0, !dbg !2370
  %575 = and i8 %570, 1, !dbg !2370
  %576 = icmp eq i8 %575, 0, !dbg !2370
  %577 = and i1 %574, %576, !dbg !2370
  br i1 %577, label %578, label %589, !dbg !2370

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2374
  br i1 %579, label %580, label %582, !dbg !2378

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2374
  store i8 39, i8* %581, align 1, !dbg !2374, !tbaa !787
  br label %582, !dbg !2374

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2378
  call void @llvm.dbg.value(metadata i64 %583, metadata !1903, metadata !DIExpression()), !dbg !1966
  %584 = icmp ult i64 %583, %572, !dbg !2379
  br i1 %584, label %585, label %587, !dbg !2382

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2379
  store i8 39, i8* %586, align 1, !dbg !2379, !tbaa !787
  br label %587, !dbg !2379

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %588, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1974
  br label %589, !dbg !2383

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2322
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %598, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %597, metadata !1903, metadata !DIExpression()), !dbg !1966
  %599 = icmp ult i64 %597, %590, !dbg !2384
  br i1 %599, label %600, label %602, !dbg !2387

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2384
  store i8 %592, i8* %601, align 1, !dbg !2384, !tbaa !787
  br label %602, !dbg !2384

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %603, metadata !1903, metadata !DIExpression()), !dbg !1966
  %604 = and i8 %591, 1, !dbg !2388
  %605 = icmp eq i8 %604, 0, !dbg !2388
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2390
  call void @llvm.dbg.value(metadata i8 %606, metadata !1912, metadata !DIExpression()), !dbg !1976
  br label %607, !dbg !2391

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2344
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2025
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1967
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2332
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1974
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2025
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1976
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %614, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %613, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %612, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %611, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %610, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %609, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %608, metadata !1902, metadata !DIExpression()), !dbg !2026
  %616 = add i64 %608, 1, !dbg !2392
  call void @llvm.dbg.value(metadata i64 %616, metadata !1902, metadata !DIExpression()), !dbg !2026
  br label %121, !dbg !2393, !llvm.loop !2394

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %618, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %618, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %125, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %125, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %126, metadata !1910, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %127, metadata !1911, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %128, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  %619 = icmp eq i64 %123, 0, !dbg !2396
  %620 = and i1 %114, %619, !dbg !2398
  %621 = xor i1 %620, true, !dbg !2398
  %622 = or i1 %110, %621, !dbg !2398
  br i1 %622, label %623, label %661, !dbg !2398

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2399
  %625 = xor i1 %624, true, !dbg !2399
  %626 = and i8 %127, 1, !dbg !2401
  %627 = icmp eq i8 %626, 0, !dbg !2401
  %628 = or i1 %627, %625, !dbg !2399
  br i1 %628, label %638, label %629, !dbg !2399

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2402
  %631 = icmp eq i8 %630, 0, !dbg !2402
  br i1 %631, label %634, label %632, !dbg !2405

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %618, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %618, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %618, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %618, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %124, metadata !1904, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %125, metadata !1896, metadata !DIExpression()), !dbg !1960
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2406
  br label %671, !dbg !2407

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2408
  %636 = icmp ne i64 %124, 0, !dbg !2410
  %637 = and i1 %636, %635, !dbg !2411
  br i1 %637, label %27, label %638, !dbg !2411

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1894, metadata !DIExpression()), !dbg !1958
  %639 = icmp ne i8* %98, null, !dbg !2412
  %640 = and i1 %639, %110, !dbg !2414
  br i1 %640, label %641, label %656, !dbg !2414

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1903, metadata !DIExpression()), !dbg !1966
  %642 = load i8, i8* %98, align 1, !dbg !2415, !tbaa !787
  %643 = icmp eq i8 %642, 0, !dbg !2418
  br i1 %643, label %656, label %644, !dbg !2418

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %647, metadata !1903, metadata !DIExpression()), !dbg !1966
  %648 = icmp ult i64 %647, %129, !dbg !2419
  br i1 %648, label %649, label %651, !dbg !2422

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2419
  store i8 %645, i8* %650, align 1, !dbg !2419, !tbaa !787
  br label %651, !dbg !2419

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2422
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2423
  call void @llvm.dbg.value(metadata i8* %653, metadata !1905, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %652, metadata !1903, metadata !DIExpression()), !dbg !1966
  %654 = load i8, i8* %653, align 1, !dbg !2415, !tbaa !787
  %655 = icmp eq i8 %654, 0, !dbg !2418
  br i1 %655, label %656, label %644, !dbg !2418, !llvm.loop !2424

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1966
  call void @llvm.dbg.value(metadata i64 %657, metadata !1903, metadata !DIExpression()), !dbg !1966
  %658 = icmp ult i64 %657, %129, !dbg !2426
  br i1 %658, label %659, label %671, !dbg !2428

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2429
  store i8 0, i8* %660, align 1, !dbg !2430, !tbaa !787
  br label %671, !dbg !2429

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1894, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %663, metadata !1896, metadata !DIExpression()), !dbg !1960
  %665 = icmp ne i32 %662, 2, !dbg !2431
  %666 = icmp eq i8 %102, 0, !dbg !2433
  %667 = or i1 %665, %666, !dbg !2434
  call void @llvm.dbg.value(metadata i32 4, metadata !1897, metadata !DIExpression()), !dbg !1961
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2434
  call void @llvm.dbg.value(metadata i32 %668, metadata !1897, metadata !DIExpression()), !dbg !1961
  %669 = and i32 %5, -3, !dbg !2435
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2436
  br label %671, !dbg !2437

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2438
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2439 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2443, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i32 %1, metadata !2444, metadata !DIExpression()), !dbg !2448
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2449
  call void @llvm.dbg.value(metadata i8* %3, metadata !2445, metadata !DIExpression()), !dbg !2450
  %4 = icmp eq i8* %3, %0, !dbg !2451
  br i1 %4, label %5, label %71, !dbg !2453

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2454
  call void @llvm.dbg.value(metadata i8* %6, metadata !2446, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8* %6, metadata !2456, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8* null, metadata !2462, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 85, metadata !2463, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 84, metadata !2464, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 70, metadata !2465, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 45, metadata !2466, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 56, metadata !2467, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8 0, metadata !2468, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2469, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 0, metadata !2470, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 0, metadata !2471, metadata !DIExpression()), !dbg !2484
  %7 = load i8, i8* %6, align 1, !dbg !2485, !tbaa !787
  %8 = and i8 %7, -33, !dbg !2485
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2485

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2487, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8* null, metadata !2492, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 84, metadata !2493, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 70, metadata !2494, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 45, metadata !2495, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 56, metadata !2496, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 0, metadata !2497, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 0, metadata !2498, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 0, metadata !2499, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 0, metadata !2500, metadata !DIExpression()), !dbg !2513
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2514
  %11 = load i8, i8* %10, align 1, !dbg !2514, !tbaa !787
  %12 = and i8 %11, -33, !dbg !2514
  %13 = icmp eq i8 %12, 84, !dbg !2514
  br i1 %13, label %14, label %68, !dbg !2514

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2516, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8* null, metadata !2521, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 70, metadata !2522, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 45, metadata !2523, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 56, metadata !2524, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 0, metadata !2526, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 0, metadata !2528, metadata !DIExpression()), !dbg !2540
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2541
  %16 = load i8, i8* %15, align 1, !dbg !2541, !tbaa !787
  %17 = and i8 %16, -33, !dbg !2541
  %18 = icmp eq i8 %17, 70, !dbg !2541
  br i1 %18, label %19, label %68, !dbg !2541

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2543, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8* null, metadata !2548, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8 45, metadata !2549, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 56, metadata !2550, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 0, metadata !2551, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 0, metadata !2552, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 0, metadata !2553, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 0, metadata !2554, metadata !DIExpression()), !dbg !2565
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2566
  %21 = load i8, i8* %20, align 1, !dbg !2566, !tbaa !787
  %22 = icmp eq i8 %21, 45, !dbg !2566
  br i1 %22, label %23, label %68, !dbg !2568

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2569, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8* null, metadata !2574, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 56, metadata !2575, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 0, metadata !2576, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 0, metadata !2577, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 0, metadata !2578, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2579, metadata !DIExpression()), !dbg !2589
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2590
  %25 = load i8, i8* %24, align 1, !dbg !2590, !tbaa !787
  %26 = icmp eq i8 %25, 56, !dbg !2590
  br i1 %26, label %27, label %68, !dbg !2592

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2593, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* null, metadata !2598, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 0, metadata !2599, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2600, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2601, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2602, metadata !DIExpression()), !dbg !2611
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2612
  %29 = load i8, i8* %28, align 1, !dbg !2612, !tbaa !787
  %30 = icmp eq i8 %29, 0, !dbg !2612
  br i1 %30, label %31, label %68, !dbg !2614

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2615, !tbaa !787
  %33 = icmp eq i8 %32, 96, !dbg !2616
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.92, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.93, i64 0, i64 0), !dbg !2615
  br label %71, !dbg !2617

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2487, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* null, metadata !2492, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 66, metadata !2493, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8 49, metadata !2494, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 56, metadata !2495, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 48, metadata !2496, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 51, metadata !2497, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8 48, metadata !2498, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2499, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 0, metadata !2500, metadata !DIExpression()), !dbg !2630
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2631
  %37 = load i8, i8* %36, align 1, !dbg !2631, !tbaa !787
  %38 = and i8 %37, -33, !dbg !2631
  %39 = icmp eq i8 %38, 66, !dbg !2631
  br i1 %39, label %40, label %68, !dbg !2631

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2516, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8* null, metadata !2521, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8 49, metadata !2522, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8 56, metadata !2523, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8 48, metadata !2524, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 51, metadata !2525, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 48, metadata !2526, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2528, metadata !DIExpression()), !dbg !2641
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2642
  %42 = load i8, i8* %41, align 1, !dbg !2642, !tbaa !787
  %43 = icmp eq i8 %42, 49, !dbg !2642
  br i1 %43, label %44, label %68, !dbg !2643

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2543, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* null, metadata !2548, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8 56, metadata !2549, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 48, metadata !2550, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8 51, metadata !2551, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8 48, metadata !2552, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 0, metadata !2553, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 0, metadata !2554, metadata !DIExpression()), !dbg !2652
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2653
  %46 = load i8, i8* %45, align 1, !dbg !2653, !tbaa !787
  %47 = icmp eq i8 %46, 56, !dbg !2653
  br i1 %47, label %48, label %68, !dbg !2654

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2569, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8* null, metadata !2574, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8 48, metadata !2575, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8 51, metadata !2576, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 48, metadata !2577, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 0, metadata !2578, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 0, metadata !2579, metadata !DIExpression()), !dbg !2662
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2663
  %50 = load i8, i8* %49, align 1, !dbg !2663, !tbaa !787
  %51 = icmp eq i8 %50, 48, !dbg !2663
  br i1 %51, label %52, label %68, !dbg !2664

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2593, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8* null, metadata !2598, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8 51, metadata !2599, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8 48, metadata !2600, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 0, metadata !2601, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 0, metadata !2602, metadata !DIExpression()), !dbg !2671
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2672
  %54 = load i8, i8* %53, align 1, !dbg !2672, !tbaa !787
  %55 = icmp eq i8 %54, 51, !dbg !2672
  br i1 %55, label %56, label %68, !dbg !2673

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2674, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8* null, metadata !2679, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8 48, metadata !2680, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 0, metadata !2681, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 0, metadata !2682, metadata !DIExpression()), !dbg !2690
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2691
  %58 = load i8, i8* %57, align 1, !dbg !2691, !tbaa !787
  %59 = icmp eq i8 %58, 48, !dbg !2691
  br i1 %59, label %60, label %68, !dbg !2693

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2694, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i8* null, metadata !2699, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 0, metadata !2700, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 0, metadata !2701, metadata !DIExpression()), !dbg !2708
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2709
  %62 = load i8, i8* %61, align 1, !dbg !2709, !tbaa !787
  %63 = icmp eq i8 %62, 0, !dbg !2709
  br i1 %63, label %64, label %68, !dbg !2711

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2712, !tbaa !787
  %66 = icmp eq i8 %65, 96, !dbg !2713
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.94, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.95, i64 0, i64 0), !dbg !2712
  br label %71, !dbg !2714

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2715
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), !dbg !2716
  br label %71, !dbg !2717

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2718
  ret i8* %72, !dbg !2719
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2720 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2724, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %1, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2726, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8* %0, metadata !2730, metadata !DIExpression()) #12, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()) #12, !dbg !2745
  call void @llvm.dbg.value(metadata i64* null, metadata !2736, metadata !DIExpression()) #12, !dbg !2746
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2737, metadata !DIExpression()) #12, !dbg !2747
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2748
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2748
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2738, metadata !DIExpression()) #12, !dbg !2749
  %6 = tail call i32* @__errno_location() #17, !dbg !2750
  %7 = load i32, i32* %6, align 4, !dbg !2750, !tbaa !780
  call void @llvm.dbg.value(metadata i32 %7, metadata !2739, metadata !DIExpression()) #12, !dbg !2751
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2752
  %9 = load i32, i32* %8, align 4, !dbg !2752, !tbaa !1826
  %10 = or i32 %9, 1, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %10, metadata !2740, metadata !DIExpression()) #12, !dbg !2754
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2755
  %12 = load i32, i32* %11, align 8, !dbg !2755, !tbaa !1766
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2756
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2757
  %15 = load i8*, i8** %14, align 8, !dbg !2757, !tbaa !1852
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2758
  %17 = load i8*, i8** %16, align 8, !dbg !2758, !tbaa !1855
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2759
  %19 = add i64 %18, 1, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %19, metadata !2741, metadata !DIExpression()) #12, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %19, metadata !2762, metadata !DIExpression()) #12, !dbg !2767
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2769
  call void @llvm.dbg.value(metadata i8* %20, metadata !2742, metadata !DIExpression()) #12, !dbg !2770
  %21 = load i32, i32* %11, align 8, !dbg !2771, !tbaa !1766
  %22 = load i8*, i8** %14, align 8, !dbg !2772, !tbaa !1852
  %23 = load i8*, i8** %16, align 8, !dbg !2773, !tbaa !1855
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2774
  store i32 %7, i32* %6, align 4, !dbg !2775, !tbaa !780
  ret i8* %20, !dbg !2776
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2731 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2730, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i64* %2, metadata !2736, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2737, metadata !DIExpression()), !dbg !2780
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2781
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2781
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2738, metadata !DIExpression()), !dbg !2782
  %7 = tail call i32* @__errno_location() #17, !dbg !2783
  %8 = load i32, i32* %7, align 4, !dbg !2783, !tbaa !780
  call void @llvm.dbg.value(metadata i32 %8, metadata !2739, metadata !DIExpression()), !dbg !2784
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2785
  %10 = load i32, i32* %9, align 4, !dbg !2785, !tbaa !1826
  %11 = icmp ne i64* %2, null, !dbg !2786
  %12 = xor i1 %11, true, !dbg !2786
  %13 = zext i1 %12 to i32, !dbg !2786
  %14 = or i32 %10, %13, !dbg !2787
  call void @llvm.dbg.value(metadata i32 %14, metadata !2740, metadata !DIExpression()), !dbg !2788
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2789
  %16 = load i32, i32* %15, align 8, !dbg !2789, !tbaa !1766
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2790
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2791
  %19 = load i8*, i8** %18, align 8, !dbg !2791, !tbaa !1852
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2792
  %21 = load i8*, i8** %20, align 8, !dbg !2792, !tbaa !1855
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2793
  %23 = add i64 %22, 1, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %23, metadata !2741, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 %23, metadata !2762, metadata !DIExpression()) #12, !dbg !2796
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2798
  call void @llvm.dbg.value(metadata i8* %24, metadata !2742, metadata !DIExpression()), !dbg !2799
  %25 = load i32, i32* %15, align 8, !dbg !2800, !tbaa !1766
  %26 = load i8*, i8** %18, align 8, !dbg !2801, !tbaa !1852
  %27 = load i8*, i8** %20, align 8, !dbg !2802, !tbaa !1855
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2803
  store i32 %8, i32* %7, align 4, !dbg !2804, !tbaa !780
  br i1 %11, label %29, label %30, !dbg !2805

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2806, !tbaa !2808
  br label %30, !dbg !2809

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2810
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2811 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2815, !tbaa !692
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2813, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 1, metadata !2814, metadata !DIExpression()), !dbg !2817
  %2 = load i32, i32* @nslots, align 4, !dbg !2818, !tbaa !780
  %3 = icmp sgt i32 %2, 1, !dbg !2821
  br i1 %3, label %4, label %12, !dbg !2822

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2814, metadata !DIExpression()), !dbg !2817
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2823
  %7 = load i8*, i8** %6, align 8, !dbg !2823, !tbaa !2824
  tail call void @free(i8* %7) #12, !dbg !2826
  %8 = add nuw nsw i64 %5, 1, !dbg !2827
  call void @llvm.dbg.value(metadata i32 undef, metadata !2814, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2817
  %9 = load i32, i32* @nslots, align 4, !dbg !2818, !tbaa !780
  %10 = sext i32 %9 to i64, !dbg !2821
  %11 = icmp slt i64 %8, %10, !dbg !2821
  br i1 %11, label %4, label %12, !dbg !2822, !llvm.loop !2828

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2830
  %14 = load i8*, i8** %13, align 8, !dbg !2830, !tbaa !2824
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2832
  br i1 %15, label %17, label %16, !dbg !2833

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2834
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2836, !tbaa !2837
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2838, !tbaa !2824
  br label %17, !dbg !2839

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2840
  br i1 %18, label %21, label %19, !dbg !2842

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2843
  tail call void @free(i8* %20) #12, !dbg !2845
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2846, !tbaa !692
  br label %21, !dbg !2847

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2848, !tbaa !780
  ret void, !dbg !2849
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2850 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2854, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8* %1, metadata !2855, metadata !DIExpression()), !dbg !2857
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2858
  ret i8* %3, !dbg !2859
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2860 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2864, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %1, metadata !2865, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %2, metadata !2866, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2867, metadata !DIExpression()), !dbg !2882
  %5 = tail call i32* @__errno_location() #17, !dbg !2883
  %6 = load i32, i32* %5, align 4, !dbg !2883, !tbaa !780
  call void @llvm.dbg.value(metadata i32 %6, metadata !2868, metadata !DIExpression()), !dbg !2884
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2885, !tbaa !692
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2869, metadata !DIExpression()), !dbg !2886
  %8 = icmp slt i32 %0, 0, !dbg !2887
  br i1 %8, label %9, label %10, !dbg !2889

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2890
  unreachable, !dbg !2890

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2891, !tbaa !780
  %12 = icmp sgt i32 %11, %0, !dbg !2892
  br i1 %12, label %34, label %13, !dbg !2893

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2894
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2873, metadata !DIExpression()), !dbg !2895
  %15 = icmp eq i32 %0, 2147483647, !dbg !2896
  br i1 %15, label %16, label %17, !dbg !2898

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2899
  unreachable, !dbg !2899

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2900
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2900
  %20 = add nsw i32 %0, 1, !dbg !2901
  %21 = sext i32 %20 to i64, !dbg !2902
  %22 = shl nsw i64 %21, 4, !dbg !2903
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2904
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2904
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2869, metadata !DIExpression()), !dbg !2886
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2905, !tbaa !692
  br i1 %14, label %25, label %26, !dbg !2906

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2907, !tbaa.struct !2909
  br label %26, !dbg !2910

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2911, !tbaa !780
  %28 = sext i32 %27 to i64, !dbg !2912
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2912
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2913
  %31 = sub nsw i32 %20, %27, !dbg !2914
  %32 = sext i32 %31 to i64, !dbg !2915
  %33 = shl nsw i64 %32, 4, !dbg !2916
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2913
  store i32 %20, i32* @nslots, align 4, !dbg !2917, !tbaa !780
  br label %34, !dbg !2918

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2919
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2869, metadata !DIExpression()), !dbg !2886
  %36 = sext i32 %0 to i64, !dbg !2920
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2921
  %38 = load i64, i64* %37, align 8, !dbg !2921, !tbaa !2837
  call void @llvm.dbg.value(metadata i64 %38, metadata !2874, metadata !DIExpression()), !dbg !2922
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2923
  %40 = load i8*, i8** %39, align 8, !dbg !2923, !tbaa !2824
  call void @llvm.dbg.value(metadata i8* %40, metadata !2876, metadata !DIExpression()), !dbg !2924
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2925
  %42 = load i32, i32* %41, align 4, !dbg !2925, !tbaa !1826
  %43 = or i32 %42, 1, !dbg !2926
  call void @llvm.dbg.value(metadata i32 %43, metadata !2877, metadata !DIExpression()), !dbg !2927
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2928
  %45 = load i32, i32* %44, align 8, !dbg !2928, !tbaa !1766
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2929
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2930
  %48 = load i8*, i8** %47, align 8, !dbg !2930, !tbaa !1852
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2931
  %50 = load i8*, i8** %49, align 8, !dbg !2931, !tbaa !1855
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %51, metadata !2878, metadata !DIExpression()), !dbg !2933
  %52 = icmp ugt i64 %38, %51, !dbg !2934
  br i1 %52, label %63, label %53, !dbg !2936

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %54, metadata !2874, metadata !DIExpression()), !dbg !2922
  store i64 %54, i64* %37, align 8, !dbg !2939, !tbaa !2837
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2940
  br i1 %55, label %57, label %56, !dbg !2942

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2943
  br label %57, !dbg !2943

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2762, metadata !DIExpression()) #12, !dbg !2944
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %58, metadata !2876, metadata !DIExpression()), !dbg !2924
  store i8* %58, i8** %39, align 8, !dbg !2947, !tbaa !2824
  %59 = load i32, i32* %44, align 8, !dbg !2948, !tbaa !1766
  %60 = load i8*, i8** %47, align 8, !dbg !2949, !tbaa !1852
  %61 = load i8*, i8** %49, align 8, !dbg !2950, !tbaa !1855
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2951
  br label %63, !dbg !2952

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2953
  call void @llvm.dbg.value(metadata i8* %64, metadata !2876, metadata !DIExpression()), !dbg !2924
  store i32 %6, i32* %5, align 4, !dbg !2954, !tbaa !780
  ret i8* %64, !dbg !2955
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2956 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2960, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %1, metadata !2961, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %2, metadata !2962, metadata !DIExpression()), !dbg !2965
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2966
  ret i8* %4, !dbg !2967
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2968 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2972, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 0, metadata !2854, metadata !DIExpression()) #12, !dbg !2974
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #12, !dbg !2976
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2977
  ret i8* %2, !dbg !2978
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2979 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2983, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %1, metadata !2984, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 0, metadata !2960, metadata !DIExpression()) #12, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %0, metadata !2961, metadata !DIExpression()) #12, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %1, metadata !2962, metadata !DIExpression()) #12, !dbg !2990
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2991
  ret i8* %3, !dbg !2992
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2993 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2997, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i32 %1, metadata !2998, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8* %2, metadata !2999, metadata !DIExpression()), !dbg !3003
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3004
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3004
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3000, metadata !DIExpression(DW_OP_deref)), !dbg !3005
  call void @llvm.dbg.value(metadata i32 %1, metadata !3006, metadata !DIExpression()) #12, !dbg !3012
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !3014, !alias.scope !3015
  %6 = icmp eq i32 %1, 10, !dbg !3018
  br i1 %6, label %7, label %8, !dbg !3020

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3021, !noalias !3015
  unreachable, !dbg !3021

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3022
  store i32 %1, i32* %9, align 8, !dbg !3023, !tbaa !1766, !alias.scope !3015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3000, metadata !DIExpression(DW_OP_deref)), !dbg !3005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3011, metadata !DIExpression(DW_OP_deref)), !dbg !3014
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3024
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3025
  ret i8* %10, !dbg !3026
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3027 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3031, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 %1, metadata !3032, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i8* %2, metadata !3033, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i64 %3, metadata !3034, metadata !DIExpression()), !dbg !3039
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3040
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3035, metadata !DIExpression(DW_OP_deref)), !dbg !3041
  call void @llvm.dbg.value(metadata i32 %1, metadata !3006, metadata !DIExpression()) #12, !dbg !3042
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !3044, !alias.scope !3045
  %7 = icmp eq i32 %1, 10, !dbg !3048
  br i1 %7, label %8, label %9, !dbg !3049

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3050, !noalias !3045
  unreachable, !dbg !3050

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3051
  store i32 %1, i32* %10, align 8, !dbg !3052, !tbaa !1766, !alias.scope !3045
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3035, metadata !DIExpression(DW_OP_deref)), !dbg !3041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3011, metadata !DIExpression(DW_OP_deref)), !dbg !3044
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3053
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3054
  ret i8* %11, !dbg !3055
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3056 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3060, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8* %1, metadata !3061, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i32 0, metadata !2997, metadata !DIExpression()) #12, !dbg !3064
  call void @llvm.dbg.value(metadata i32 %0, metadata !2998, metadata !DIExpression()) #12, !dbg !3066
  call void @llvm.dbg.value(metadata i8* %1, metadata !2999, metadata !DIExpression()) #12, !dbg !3067
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3068
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3068
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3000, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %0, metadata !3006, metadata !DIExpression()) #12, !dbg !3070
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !3072, !alias.scope !3073
  %5 = icmp eq i32 %0, 10, !dbg !3076
  br i1 %5, label %6, label %7, !dbg !3077

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3078, !noalias !3073
  unreachable, !dbg !3078

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3079
  store i32 %0, i32* %8, align 8, !dbg !3080, !tbaa !1766, !alias.scope !3073
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3000, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3069
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3011, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3072
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3081
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3082
  ret i8* %9, !dbg !3083
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3084 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3088, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8* %1, metadata !3089, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %2, metadata !3090, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 0, metadata !3031, metadata !DIExpression()) #12, !dbg !3094
  call void @llvm.dbg.value(metadata i32 %0, metadata !3032, metadata !DIExpression()) #12, !dbg !3096
  call void @llvm.dbg.value(metadata i8* %1, metadata !3033, metadata !DIExpression()) #12, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %2, metadata !3034, metadata !DIExpression()) #12, !dbg !3098
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3099
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3099
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3035, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3100
  call void @llvm.dbg.value(metadata i32 %0, metadata !3006, metadata !DIExpression()) #12, !dbg !3101
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !3103, !alias.scope !3104
  %6 = icmp eq i32 %0, 10, !dbg !3107
  br i1 %6, label %7, label %8, !dbg !3108

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3109, !noalias !3104
  unreachable, !dbg !3109

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3110
  store i32 %0, i32* %9, align 8, !dbg !3111, !tbaa !1766, !alias.scope !3104
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3035, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3100
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3011, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3103
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !3112
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3113
  ret i8* %10, !dbg !3114
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3115 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i8 %2, metadata !3121, metadata !DIExpression()), !dbg !3125
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3126
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3127, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3122, metadata !DIExpression(DW_OP_deref)), !dbg !3129
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1785, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8 %2, metadata !1786, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i32 1, metadata !1787, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %2, metadata !1788, metadata !DIExpression()), !dbg !3134
  %6 = lshr i8 %2, 5, !dbg !3135
  %7 = zext i8 %6 to i64, !dbg !3135
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3136
  call void @llvm.dbg.value(metadata i32* %8, metadata !1790, metadata !DIExpression()), !dbg !3137
  %9 = and i8 %2, 31, !dbg !3138
  %10 = zext i8 %9 to i32, !dbg !3138
  call void @llvm.dbg.value(metadata i32 %10, metadata !1792, metadata !DIExpression()), !dbg !3139
  %11 = load i32, i32* %8, align 4, !dbg !3140, !tbaa !780
  %12 = lshr i32 %11, %10, !dbg !3141
  %13 = and i32 %12, 1, !dbg !3142
  call void @llvm.dbg.value(metadata i32 %13, metadata !1793, metadata !DIExpression()), !dbg !3143
  %14 = xor i32 %13, 1, !dbg !3144
  %15 = shl i32 %14, %10, !dbg !3145
  %16 = xor i32 %15, %11, !dbg !3146
  store i32 %16, i32* %8, align 4, !dbg !3146, !tbaa !780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3122, metadata !DIExpression(DW_OP_deref)), !dbg !3129
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3147
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3148
  ret i8* %17, !dbg !3149
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3150 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3154, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8 %1, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()) #12, !dbg !3158
  call void @llvm.dbg.value(metadata i64 -1, metadata !3120, metadata !DIExpression()) #12, !dbg !3160
  call void @llvm.dbg.value(metadata i8 %1, metadata !3121, metadata !DIExpression()) #12, !dbg !3161
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3162
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3163, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3122, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1785, metadata !DIExpression()) #12, !dbg !3165
  call void @llvm.dbg.value(metadata i8 %1, metadata !1786, metadata !DIExpression()) #12, !dbg !3167
  call void @llvm.dbg.value(metadata i32 1, metadata !1787, metadata !DIExpression()) #12, !dbg !3168
  call void @llvm.dbg.value(metadata i8 %1, metadata !1788, metadata !DIExpression()) #12, !dbg !3169
  %5 = lshr i8 %1, 5, !dbg !3170
  %6 = zext i8 %5 to i64, !dbg !3170
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3171
  call void @llvm.dbg.value(metadata i32* %7, metadata !1790, metadata !DIExpression()) #12, !dbg !3172
  %8 = and i8 %1, 31, !dbg !3173
  %9 = zext i8 %8 to i32, !dbg !3173
  call void @llvm.dbg.value(metadata i32 %9, metadata !1792, metadata !DIExpression()) #12, !dbg !3174
  %10 = load i32, i32* %7, align 4, !dbg !3175, !tbaa !780
  %11 = lshr i32 %10, %9, !dbg !3176
  %12 = and i32 %11, 1, !dbg !3177
  call void @llvm.dbg.value(metadata i32 %12, metadata !1793, metadata !DIExpression()) #12, !dbg !3178
  %13 = xor i32 %12, 1, !dbg !3179
  %14 = shl i32 %13, %9, !dbg !3180
  %15 = xor i32 %14, %10, !dbg !3181
  store i32 %15, i32* %7, align 4, !dbg !3181, !tbaa !780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3122, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3164
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3182
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3183
  ret i8* %16, !dbg !3184
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3185 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i8* %0, metadata !3154, metadata !DIExpression()) #12, !dbg !3189
  call void @llvm.dbg.value(metadata i8 58, metadata !3155, metadata !DIExpression()) #12, !dbg !3191
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()) #12, !dbg !3192
  call void @llvm.dbg.value(metadata i64 -1, metadata !3120, metadata !DIExpression()) #12, !dbg !3194
  call void @llvm.dbg.value(metadata i8 58, metadata !3121, metadata !DIExpression()) #12, !dbg !3195
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3196
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3197, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3122, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3198
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1785, metadata !DIExpression()) #12, !dbg !3199
  call void @llvm.dbg.value(metadata i8 58, metadata !1786, metadata !DIExpression()) #12, !dbg !3201
  call void @llvm.dbg.value(metadata i32 1, metadata !1787, metadata !DIExpression()) #12, !dbg !3202
  call void @llvm.dbg.value(metadata i8 58, metadata !1788, metadata !DIExpression()) #12, !dbg !3203
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3204
  call void @llvm.dbg.value(metadata i32* %4, metadata !1790, metadata !DIExpression()) #12, !dbg !3205
  call void @llvm.dbg.value(metadata i32 26, metadata !1792, metadata !DIExpression()) #12, !dbg !3206
  %5 = load i32, i32* %4, align 4, !dbg !3207, !tbaa !780
  %6 = or i32 %5, 67108864, !dbg !3208
  store i32 %6, i32* %4, align 4, !dbg !3208, !tbaa !780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3122, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3198
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3209
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3210
  ret i8* %7, !dbg !3211
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3212 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3214, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %1, metadata !3215, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()) #12, !dbg !3218
  call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()) #12, !dbg !3220
  call void @llvm.dbg.value(metadata i8 58, metadata !3121, metadata !DIExpression()) #12, !dbg !3221
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3222
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3223, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3122, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3224
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1785, metadata !DIExpression()) #12, !dbg !3225
  call void @llvm.dbg.value(metadata i8 58, metadata !1786, metadata !DIExpression()) #12, !dbg !3227
  call void @llvm.dbg.value(metadata i32 1, metadata !1787, metadata !DIExpression()) #12, !dbg !3228
  call void @llvm.dbg.value(metadata i8 58, metadata !1788, metadata !DIExpression()) #12, !dbg !3229
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3230
  call void @llvm.dbg.value(metadata i32* %5, metadata !1790, metadata !DIExpression()) #12, !dbg !3231
  call void @llvm.dbg.value(metadata i32 26, metadata !1792, metadata !DIExpression()) #12, !dbg !3232
  %6 = load i32, i32* %5, align 4, !dbg !3233, !tbaa !780
  %7 = or i32 %6, 67108864, !dbg !3234
  store i32 %7, i32* %5, align 4, !dbg !3234, !tbaa !780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3122, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3224
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3235
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3236
  ret i8* %8, !dbg !3237
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3238 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3011, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3244
  call void @llvm.dbg.value(metadata i32 %0, metadata !3240, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i32 %1, metadata !3241, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8* %2, metadata !3242, metadata !DIExpression()), !dbg !3248
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3249
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3249
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3250
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3250
  call void @llvm.dbg.value(metadata i32 %1, metadata !3006, metadata !DIExpression()) #12, !dbg !3251
  call void @llvm.dbg.value(metadata i32 0, metadata !3011, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3244
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3244, !alias.scope !3252
  %8 = icmp eq i32 %1, 10, !dbg !3255
  br i1 %8, label %9, label %10, !dbg !3256

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3257, !noalias !3252
  unreachable, !dbg !3257

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3011, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3244
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3250
  store i32 %1, i32* %11, align 8, !dbg !3250
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3250
  %13 = bitcast i32* %12 to i8*, !dbg !3250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3250
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3243, metadata !DIExpression(DW_OP_deref)), !dbg !3258
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1785, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 58, metadata !1786, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i32 1, metadata !1787, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 58, metadata !1788, metadata !DIExpression()), !dbg !3263
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3264
  call void @llvm.dbg.value(metadata i32* %14, metadata !1790, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 26, metadata !1792, metadata !DIExpression()), !dbg !3266
  %15 = load i32, i32* %14, align 4, !dbg !3267, !tbaa !780
  %16 = or i32 %15, 67108864, !dbg !3268
  store i32 %16, i32* %14, align 4, !dbg !3268, !tbaa !780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3243, metadata !DIExpression(DW_OP_deref)), !dbg !3258
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3269
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3270
  ret i8* %17, !dbg !3271
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3272 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3276, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %1, metadata !3277, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %2, metadata !3278, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8* %3, metadata !3279, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i32 %0, metadata !3284, metadata !DIExpression()) #12, !dbg !3294
  call void @llvm.dbg.value(metadata i8* %1, metadata !3289, metadata !DIExpression()) #12, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %2, metadata !3290, metadata !DIExpression()) #12, !dbg !3297
  call void @llvm.dbg.value(metadata i8* %3, metadata !3291, metadata !DIExpression()) #12, !dbg !3298
  call void @llvm.dbg.value(metadata i64 -1, metadata !3292, metadata !DIExpression()) #12, !dbg !3299
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3300
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3301, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3293, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3302
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1834, metadata !DIExpression()) #12, !dbg !3303
  call void @llvm.dbg.value(metadata i8* %1, metadata !1835, metadata !DIExpression()) #12, !dbg !3305
  call void @llvm.dbg.value(metadata i8* %2, metadata !1836, metadata !DIExpression()) #12, !dbg !3306
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1834, metadata !DIExpression()) #12, !dbg !3303
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3307
  store i32 10, i32* %7, align 8, !dbg !3308, !tbaa !1766
  %8 = icmp ne i8* %1, null, !dbg !3309
  %9 = icmp ne i8* %2, null, !dbg !3310
  %10 = and i1 %8, %9, !dbg !3311
  br i1 %10, label %12, label %11, !dbg !3311

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3312
  unreachable, !dbg !3312

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3313
  store i8* %1, i8** %13, align 8, !dbg !3314, !tbaa !1852
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3315
  store i8* %2, i8** %14, align 8, !dbg !3316, !tbaa !1855
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3293, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3302
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3317
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3318
  ret i8* %15, !dbg !3319
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3285 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3284, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8* %1, metadata !3289, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8* %2, metadata !3290, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8* %3, metadata !3291, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %4, metadata !3292, metadata !DIExpression()), !dbg !3324
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3325
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3326, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3293, metadata !DIExpression(DW_OP_deref)), !dbg !3327
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1834, metadata !DIExpression()) #12, !dbg !3328
  call void @llvm.dbg.value(metadata i8* %1, metadata !1835, metadata !DIExpression()) #12, !dbg !3330
  call void @llvm.dbg.value(metadata i8* %2, metadata !1836, metadata !DIExpression()) #12, !dbg !3331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1834, metadata !DIExpression()) #12, !dbg !3328
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3332
  store i32 10, i32* %8, align 8, !dbg !3333, !tbaa !1766
  %9 = icmp ne i8* %1, null, !dbg !3334
  %10 = icmp ne i8* %2, null, !dbg !3335
  %11 = and i1 %9, %10, !dbg !3336
  br i1 %11, label %13, label %12, !dbg !3336

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3337
  unreachable, !dbg !3337

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3338
  store i8* %1, i8** %14, align 8, !dbg !3339, !tbaa !1852
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3340
  store i8* %2, i8** %15, align 8, !dbg !3341, !tbaa !1855
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3293, metadata !DIExpression(DW_OP_deref)), !dbg !3327
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3342
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3343
  ret i8* %16, !dbg !3344
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3345 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8* %1, metadata !3350, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8* %2, metadata !3351, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 0, metadata !3276, metadata !DIExpression()) #12, !dbg !3355
  call void @llvm.dbg.value(metadata i8* %0, metadata !3277, metadata !DIExpression()) #12, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %1, metadata !3278, metadata !DIExpression()) #12, !dbg !3358
  call void @llvm.dbg.value(metadata i8* %2, metadata !3279, metadata !DIExpression()) #12, !dbg !3359
  call void @llvm.dbg.value(metadata i32 0, metadata !3284, metadata !DIExpression()) #12, !dbg !3360
  call void @llvm.dbg.value(metadata i8* %0, metadata !3289, metadata !DIExpression()) #12, !dbg !3362
  call void @llvm.dbg.value(metadata i8* %1, metadata !3290, metadata !DIExpression()) #12, !dbg !3363
  call void @llvm.dbg.value(metadata i8* %2, metadata !3291, metadata !DIExpression()) #12, !dbg !3364
  call void @llvm.dbg.value(metadata i64 -1, metadata !3292, metadata !DIExpression()) #12, !dbg !3365
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3366
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3367, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3293, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1834, metadata !DIExpression()) #12, !dbg !3369
  call void @llvm.dbg.value(metadata i8* %0, metadata !1835, metadata !DIExpression()) #12, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %1, metadata !1836, metadata !DIExpression()) #12, !dbg !3372
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1834, metadata !DIExpression()) #12, !dbg !3369
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3373
  store i32 10, i32* %6, align 8, !dbg !3374, !tbaa !1766
  %7 = icmp ne i8* %0, null, !dbg !3375
  %8 = icmp ne i8* %1, null, !dbg !3376
  %9 = and i1 %7, %8, !dbg !3377
  br i1 %9, label %11, label %10, !dbg !3377

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3378
  unreachable, !dbg !3378

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3379
  store i8* %0, i8** %12, align 8, !dbg !3380, !tbaa !1852
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3381
  store i8* %1, i8** %13, align 8, !dbg !3382, !tbaa !1855
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3293, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3368
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3383
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3384
  ret i8* %14, !dbg !3385
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3386 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3390, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i8* %1, metadata !3391, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i8* %2, metadata !3392, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %3, metadata !3393, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 0, metadata !3284, metadata !DIExpression()) #12, !dbg !3398
  call void @llvm.dbg.value(metadata i8* %0, metadata !3289, metadata !DIExpression()) #12, !dbg !3400
  call void @llvm.dbg.value(metadata i8* %1, metadata !3290, metadata !DIExpression()) #12, !dbg !3401
  call void @llvm.dbg.value(metadata i8* %2, metadata !3291, metadata !DIExpression()) #12, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %3, metadata !3292, metadata !DIExpression()) #12, !dbg !3403
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3404
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3405, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3293, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1834, metadata !DIExpression()) #12, !dbg !3407
  call void @llvm.dbg.value(metadata i8* %0, metadata !1835, metadata !DIExpression()) #12, !dbg !3409
  call void @llvm.dbg.value(metadata i8* %1, metadata !1836, metadata !DIExpression()) #12, !dbg !3410
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1834, metadata !DIExpression()) #12, !dbg !3407
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3411
  store i32 10, i32* %7, align 8, !dbg !3412, !tbaa !1766
  %8 = icmp ne i8* %0, null, !dbg !3413
  %9 = icmp ne i8* %1, null, !dbg !3414
  %10 = and i1 %8, %9, !dbg !3415
  br i1 %10, label %12, label %11, !dbg !3415

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3416
  unreachable, !dbg !3416

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3417
  store i8* %0, i8** %13, align 8, !dbg !3418, !tbaa !1852
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3419
  store i8* %1, i8** %14, align 8, !dbg !3420, !tbaa !1855
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3293, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3406
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3421
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3422
  ret i8* %15, !dbg !3423
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3424 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3428, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i8* %1, metadata !3429, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %2, metadata !3430, metadata !DIExpression()), !dbg !3433
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3434
  ret i8* %4, !dbg !3435
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3436 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3440, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %1, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()) #12, !dbg !3444
  call void @llvm.dbg.value(metadata i8* %0, metadata !3429, metadata !DIExpression()) #12, !dbg !3446
  call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()) #12, !dbg !3447
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3448
  ret i8* %3, !dbg !3449
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3450 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3454, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %1, metadata !3455, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i32 %0, metadata !3428, metadata !DIExpression()) #12, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %1, metadata !3429, metadata !DIExpression()) #12, !dbg !3460
  call void @llvm.dbg.value(metadata i64 -1, metadata !3430, metadata !DIExpression()) #12, !dbg !3461
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3462
  ret i8* %3, !dbg !3463
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3464 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3466, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i32 0, metadata !3454, metadata !DIExpression()) #12, !dbg !3468
  call void @llvm.dbg.value(metadata i8* %0, metadata !3455, metadata !DIExpression()) #12, !dbg !3470
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()) #12, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %0, metadata !3429, metadata !DIExpression()) #12, !dbg !3473
  call void @llvm.dbg.value(metadata i64 -1, metadata !3430, metadata !DIExpression()) #12, !dbg !3474
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3475
  ret i8* %2, !dbg !3476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3477 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3536, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8* %1, metadata !3537, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i8* %2, metadata !3538, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i8* %3, metadata !3539, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8** %4, metadata !3540, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %5, metadata !3541, metadata !DIExpression()), !dbg !3547
  %7 = icmp eq i8* %1, null, !dbg !3548
  br i1 %7, label %10, label %8, !dbg !3550

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3551
  br label %12, !dbg !3551

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.103, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3552
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.104, i64 0, i64 0), i32 5) #12, !dbg !3553
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !3553
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.105, i64 0, i64 0), i32 5) #12, !dbg !3554
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3554
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
  ], !dbg !3555

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3556
  unreachable, !dbg !3556

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.106, i64 0, i64 0), i32 5) #12, !dbg !3558
  %20 = load i8*, i8** %4, align 8, !dbg !3558, !tbaa !692
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3558
  br label %146, !dbg !3559

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.107, i64 0, i64 0), i32 5) #12, !dbg !3560
  %24 = load i8*, i8** %4, align 8, !dbg !3560, !tbaa !692
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3560
  %26 = load i8*, i8** %25, align 8, !dbg !3560, !tbaa !692
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3560
  br label %146, !dbg !3561

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.108, i64 0, i64 0), i32 5) #12, !dbg !3562
  %30 = load i8*, i8** %4, align 8, !dbg !3562, !tbaa !692
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3562
  %32 = load i8*, i8** %31, align 8, !dbg !3562, !tbaa !692
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3562
  %34 = load i8*, i8** %33, align 8, !dbg !3562, !tbaa !692
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3562
  br label %146, !dbg !3563

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.109, i64 0, i64 0), i32 5) #12, !dbg !3564
  %38 = load i8*, i8** %4, align 8, !dbg !3564, !tbaa !692
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3564
  %40 = load i8*, i8** %39, align 8, !dbg !3564, !tbaa !692
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3564
  %42 = load i8*, i8** %41, align 8, !dbg !3564, !tbaa !692
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3564
  %44 = load i8*, i8** %43, align 8, !dbg !3564, !tbaa !692
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3564
  br label %146, !dbg !3565

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.110, i64 0, i64 0), i32 5) #12, !dbg !3566
  %48 = load i8*, i8** %4, align 8, !dbg !3566, !tbaa !692
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3566
  %50 = load i8*, i8** %49, align 8, !dbg !3566, !tbaa !692
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3566
  %52 = load i8*, i8** %51, align 8, !dbg !3566, !tbaa !692
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3566
  %54 = load i8*, i8** %53, align 8, !dbg !3566, !tbaa !692
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3566
  %56 = load i8*, i8** %55, align 8, !dbg !3566, !tbaa !692
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3566
  br label %146, !dbg !3567

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.111, i64 0, i64 0), i32 5) #12, !dbg !3568
  %60 = load i8*, i8** %4, align 8, !dbg !3568, !tbaa !692
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3568
  %62 = load i8*, i8** %61, align 8, !dbg !3568, !tbaa !692
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3568
  %64 = load i8*, i8** %63, align 8, !dbg !3568, !tbaa !692
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3568
  %66 = load i8*, i8** %65, align 8, !dbg !3568, !tbaa !692
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3568
  %68 = load i8*, i8** %67, align 8, !dbg !3568, !tbaa !692
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3568
  %70 = load i8*, i8** %69, align 8, !dbg !3568, !tbaa !692
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3568
  br label %146, !dbg !3569

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.112, i64 0, i64 0), i32 5) #12, !dbg !3570
  %74 = load i8*, i8** %4, align 8, !dbg !3570, !tbaa !692
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3570
  %76 = load i8*, i8** %75, align 8, !dbg !3570, !tbaa !692
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3570
  %78 = load i8*, i8** %77, align 8, !dbg !3570, !tbaa !692
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3570
  %80 = load i8*, i8** %79, align 8, !dbg !3570, !tbaa !692
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3570
  %82 = load i8*, i8** %81, align 8, !dbg !3570, !tbaa !692
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3570
  %84 = load i8*, i8** %83, align 8, !dbg !3570, !tbaa !692
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3570
  %86 = load i8*, i8** %85, align 8, !dbg !3570, !tbaa !692
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3570
  br label %146, !dbg !3571

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.113, i64 0, i64 0), i32 5) #12, !dbg !3572
  %90 = load i8*, i8** %4, align 8, !dbg !3572, !tbaa !692
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3572
  %92 = load i8*, i8** %91, align 8, !dbg !3572, !tbaa !692
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3572
  %94 = load i8*, i8** %93, align 8, !dbg !3572, !tbaa !692
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3572
  %96 = load i8*, i8** %95, align 8, !dbg !3572, !tbaa !692
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3572
  %98 = load i8*, i8** %97, align 8, !dbg !3572, !tbaa !692
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3572
  %100 = load i8*, i8** %99, align 8, !dbg !3572, !tbaa !692
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3572
  %102 = load i8*, i8** %101, align 8, !dbg !3572, !tbaa !692
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3572
  %104 = load i8*, i8** %103, align 8, !dbg !3572, !tbaa !692
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3572
  br label %146, !dbg !3573

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.114, i64 0, i64 0), i32 5) #12, !dbg !3574
  %108 = load i8*, i8** %4, align 8, !dbg !3574, !tbaa !692
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3574
  %110 = load i8*, i8** %109, align 8, !dbg !3574, !tbaa !692
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3574
  %112 = load i8*, i8** %111, align 8, !dbg !3574, !tbaa !692
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3574
  %114 = load i8*, i8** %113, align 8, !dbg !3574, !tbaa !692
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3574
  %116 = load i8*, i8** %115, align 8, !dbg !3574, !tbaa !692
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3574
  %118 = load i8*, i8** %117, align 8, !dbg !3574, !tbaa !692
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3574
  %120 = load i8*, i8** %119, align 8, !dbg !3574, !tbaa !692
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3574
  %122 = load i8*, i8** %121, align 8, !dbg !3574, !tbaa !692
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3574
  %124 = load i8*, i8** %123, align 8, !dbg !3574, !tbaa !692
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3574
  br label %146, !dbg !3575

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.115, i64 0, i64 0), i32 5) #12, !dbg !3576
  %128 = load i8*, i8** %4, align 8, !dbg !3576, !tbaa !692
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3576
  %130 = load i8*, i8** %129, align 8, !dbg !3576, !tbaa !692
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3576
  %132 = load i8*, i8** %131, align 8, !dbg !3576, !tbaa !692
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3576
  %134 = load i8*, i8** %133, align 8, !dbg !3576, !tbaa !692
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3576
  %136 = load i8*, i8** %135, align 8, !dbg !3576, !tbaa !692
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3576
  %138 = load i8*, i8** %137, align 8, !dbg !3576, !tbaa !692
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3576
  %140 = load i8*, i8** %139, align 8, !dbg !3576, !tbaa !692
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3576
  %142 = load i8*, i8** %141, align 8, !dbg !3576, !tbaa !692
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3576
  %144 = load i8*, i8** %143, align 8, !dbg !3576, !tbaa !692
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3576
  br label %146, !dbg !3577

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3578
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3579 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3583, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i8* %1, metadata !3584, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i8* %2, metadata !3585, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %3, metadata !3586, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8** %4, metadata !3587, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i64 0, metadata !3588, metadata !DIExpression()), !dbg !3594
  br label %6, !dbg !3595

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3597
  call void @llvm.dbg.value(metadata i64 %7, metadata !3588, metadata !DIExpression()), !dbg !3594
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3599
  %9 = load i8*, i8** %8, align 8, !dbg !3599, !tbaa !692
  %10 = icmp eq i8* %9, null, !dbg !3600
  %11 = add i64 %7, 1, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %11, metadata !3588, metadata !DIExpression()), !dbg !3594
  br i1 %10, label %12, label %6, !dbg !3600, !llvm.loop !3602

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3588, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %7, metadata !3588, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %7, metadata !3588, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %7, metadata !3588, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %7, metadata !3588, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %7, metadata !3588, metadata !DIExpression()), !dbg !3594
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3604
  ret void, !dbg !3605
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3606 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3617, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i8* %1, metadata !3618, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i8* %2, metadata !3619, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i8* %3, metadata !3620, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3621, metadata !DIExpression()), !dbg !3629
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3630
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3630
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3623, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 0, metadata !3622, metadata !DIExpression()), !dbg !3632
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3622, metadata !DIExpression()), !dbg !3632
  %11 = load i32, i32* %8, align 8, !dbg !3633
  %12 = icmp ult i32 %11, 41, !dbg !3633
  br i1 %12, label %13, label %18, !dbg !3633

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3633
  %15 = sext i32 %11 to i64, !dbg !3633
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3633
  %17 = add i32 %11, 8, !dbg !3633
  store i32 %17, i32* %8, align 8, !dbg !3633
  br label %21, !dbg !3633

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3633
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3633
  store i8* %20, i8** %10, align 8, !dbg !3633
  br label %21, !dbg !3633

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3633
  %25 = load i8*, i8** %24, align 8, !dbg !3633
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3636
  store i8* %25, i8** %26, align 16, !dbg !3637, !tbaa !692
  %27 = icmp eq i8* %25, null, !dbg !3638
  br i1 %27, label %30, label %28, !dbg !3639

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3622, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 1, metadata !3622, metadata !DIExpression()), !dbg !3632
  %29 = icmp ult i32 %22, 41, !dbg !3633
  br i1 %29, label %35, label %32, !dbg !3633

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3640
  call void @llvm.dbg.value(metadata i64 %31, metadata !3622, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %31, metadata !3622, metadata !DIExpression()), !dbg !3632
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3641
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3642
  ret void, !dbg !3642

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3633
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3633
  store i8* %34, i8** %10, align 8, !dbg !3633
  br label %40, !dbg !3633

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3633
  %37 = sext i32 %22 to i64, !dbg !3633
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3633
  %39 = add i32 %22, 8, !dbg !3633
  store i32 %39, i32* %8, align 8, !dbg !3633
  br label %40, !dbg !3633

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3633
  %44 = load i8*, i8** %43, align 8, !dbg !3633
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3636
  store i8* %44, i8** %45, align 8, !dbg !3637, !tbaa !692
  %46 = icmp eq i8* %44, null, !dbg !3638
  br i1 %46, label %30, label %47, !dbg !3639

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3622, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 2, metadata !3622, metadata !DIExpression()), !dbg !3632
  %48 = icmp ult i32 %41, 41, !dbg !3633
  br i1 %48, label %52, label %49, !dbg !3633

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3633
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3633
  store i8* %51, i8** %10, align 8, !dbg !3633
  br label %57, !dbg !3633

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3633
  %54 = sext i32 %41 to i64, !dbg !3633
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3633
  %56 = add i32 %41, 8, !dbg !3633
  store i32 %56, i32* %8, align 8, !dbg !3633
  br label %57, !dbg !3633

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3633
  %61 = load i8*, i8** %60, align 8, !dbg !3633
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3636
  store i8* %61, i8** %62, align 16, !dbg !3637, !tbaa !692
  %63 = icmp eq i8* %61, null, !dbg !3638
  br i1 %63, label %30, label %64, !dbg !3639

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3622, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 3, metadata !3622, metadata !DIExpression()), !dbg !3632
  %65 = icmp ult i32 %58, 41, !dbg !3633
  br i1 %65, label %69, label %66, !dbg !3633

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3633
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3633
  store i8* %68, i8** %10, align 8, !dbg !3633
  br label %74, !dbg !3633

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3633
  %71 = sext i32 %58 to i64, !dbg !3633
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3633
  %73 = add i32 %58, 8, !dbg !3633
  store i32 %73, i32* %8, align 8, !dbg !3633
  br label %74, !dbg !3633

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3633
  %78 = load i8*, i8** %77, align 8, !dbg !3633
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3636
  store i8* %78, i8** %79, align 8, !dbg !3637, !tbaa !692
  %80 = icmp eq i8* %78, null, !dbg !3638
  br i1 %80, label %30, label %81, !dbg !3639

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3622, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 4, metadata !3622, metadata !DIExpression()), !dbg !3632
  %82 = icmp ult i32 %75, 41, !dbg !3633
  br i1 %82, label %86, label %83, !dbg !3633

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3633
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3633
  store i8* %85, i8** %10, align 8, !dbg !3633
  br label %91, !dbg !3633

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3633
  %88 = sext i32 %75 to i64, !dbg !3633
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3633
  %90 = add i32 %75, 8, !dbg !3633
  store i32 %90, i32* %8, align 8, !dbg !3633
  br label %91, !dbg !3633

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3633
  %95 = load i8*, i8** %94, align 8, !dbg !3633
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3636
  store i8* %95, i8** %96, align 16, !dbg !3637, !tbaa !692
  %97 = icmp eq i8* %95, null, !dbg !3638
  br i1 %97, label %30, label %98, !dbg !3639

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3622, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 5, metadata !3622, metadata !DIExpression()), !dbg !3632
  %99 = icmp ult i32 %92, 41, !dbg !3633
  br i1 %99, label %103, label %100, !dbg !3633

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3633
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3633
  store i8* %102, i8** %10, align 8, !dbg !3633
  br label %108, !dbg !3633

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3633
  %105 = sext i32 %92 to i64, !dbg !3633
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3633
  %107 = add i32 %92, 8, !dbg !3633
  store i32 %107, i32* %8, align 8, !dbg !3633
  br label %108, !dbg !3633

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3633
  %111 = load i8*, i8** %110, align 8, !dbg !3633
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3636
  store i8* %111, i8** %112, align 8, !dbg !3637, !tbaa !692
  %113 = icmp eq i8* %111, null, !dbg !3638
  br i1 %113, label %30, label %114, !dbg !3639

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3622, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 6, metadata !3622, metadata !DIExpression()), !dbg !3632
  %115 = load i8*, i8** %10, align 8, !dbg !3633
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3633
  store i8* %116, i8** %10, align 8, !dbg !3633
  %117 = bitcast i8* %115 to i8**, !dbg !3633
  %118 = load i8*, i8** %117, align 8, !dbg !3633
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3636
  store i8* %118, i8** %119, align 16, !dbg !3637, !tbaa !692
  %120 = icmp eq i8* %118, null, !dbg !3638
  br i1 %120, label %30, label %121, !dbg !3639

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3622, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 7, metadata !3622, metadata !DIExpression()), !dbg !3632
  %122 = load i8*, i8** %10, align 8, !dbg !3633
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3633
  store i8* %123, i8** %10, align 8, !dbg !3633
  %124 = bitcast i8* %122 to i8**, !dbg !3633
  %125 = load i8*, i8** %124, align 8, !dbg !3633
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3636
  store i8* %125, i8** %126, align 8, !dbg !3637, !tbaa !692
  %127 = icmp eq i8* %125, null, !dbg !3638
  br i1 %127, label %30, label %128, !dbg !3639

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3622, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 8, metadata !3622, metadata !DIExpression()), !dbg !3632
  %129 = load i8*, i8** %10, align 8, !dbg !3633
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3633
  store i8* %130, i8** %10, align 8, !dbg !3633
  %131 = bitcast i8* %129 to i8**, !dbg !3633
  %132 = load i8*, i8** %131, align 8, !dbg !3633
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3636
  store i8* %132, i8** %133, align 16, !dbg !3637, !tbaa !692
  %134 = icmp eq i8* %132, null, !dbg !3638
  br i1 %134, label %30, label %135, !dbg !3639

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3622, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 9, metadata !3622, metadata !DIExpression()), !dbg !3632
  %136 = load i8*, i8** %10, align 8, !dbg !3633
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3633
  store i8* %137, i8** %10, align 8, !dbg !3633
  %138 = bitcast i8* %136 to i8**, !dbg !3633
  %139 = load i8*, i8** %138, align 8, !dbg !3633
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3636
  store i8* %139, i8** %140, align 8, !dbg !3637, !tbaa !692
  %141 = icmp eq i8* %139, null, !dbg !3638
  %142 = select i1 %141, i64 9, i64 10, !dbg !3639
  br label %30, !dbg !3639
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3643 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3647, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i8* %1, metadata !3648, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i8* %2, metadata !3649, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8* %3, metadata !3650, metadata !DIExpression()), !dbg !3661
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3662
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3662
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3651, metadata !DIExpression()), !dbg !3663
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3664
  call void @llvm.va_start(i8* nonnull %6), !dbg !3664
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3665
  call void @llvm.va_end(i8* nonnull %6), !dbg !3666
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3667
  ret void, !dbg !3667
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3668 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.118, i64 0, i64 0), i32 5) #12, !dbg !3669
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.119, i64 0, i64 0)) #12, !dbg !3669
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.120, i64 0, i64 0), i32 5) #12, !dbg !3670
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.121, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.122, i64 0, i64 0)) #12, !dbg !3670
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.123, i64 0, i64 0), i32 5) #12, !dbg !3671
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3671, !tbaa !692
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3671
  ret void, !dbg !3672
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3673 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3677, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 %1, metadata !3678, metadata !DIExpression()), !dbg !3680
  %3 = udiv i64 9223372036854775807, %1, !dbg !3681
  %4 = icmp ult i64 %3, %0, !dbg !3681
  br i1 %4, label %5, label %6, !dbg !3683

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3684
  unreachable, !dbg !3684

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3685
  call void @llvm.dbg.value(metadata i64 %7, metadata !3686, metadata !DIExpression()) #12, !dbg !3693
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3695
  call void @llvm.dbg.value(metadata i8* %8, metadata !3692, metadata !DIExpression()) #12, !dbg !3696
  %9 = icmp eq i8* %8, null, !dbg !3697
  %10 = icmp ne i64 %7, 0, !dbg !3699
  %11 = and i1 %10, %9, !dbg !3700
  br i1 %11, label %12, label %13, !dbg !3700

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3701
  unreachable, !dbg !3701

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3702
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3687 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3686, metadata !DIExpression()), !dbg !3703
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %2, metadata !3692, metadata !DIExpression()), !dbg !3705
  %3 = icmp eq i8* %2, null, !dbg !3706
  %4 = icmp ne i64 %0, 0, !dbg !3707
  %5 = and i1 %4, %3, !dbg !3708
  br i1 %5, label %6, label %7, !dbg !3708

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3709
  unreachable, !dbg !3709

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3710
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3715, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %1, metadata !3716, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %2, metadata !3717, metadata !DIExpression()), !dbg !3720
  %4 = udiv i64 9223372036854775807, %2, !dbg !3721
  %5 = icmp ult i64 %4, %1, !dbg !3721
  br i1 %5, label %6, label %7, !dbg !3723

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3724
  unreachable, !dbg !3724

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3725
  call void @llvm.dbg.value(metadata i8* %0, metadata !3726, metadata !DIExpression()) #12, !dbg !3732
  call void @llvm.dbg.value(metadata i64 %8, metadata !3731, metadata !DIExpression()) #12, !dbg !3734
  %9 = icmp eq i64 %8, 0, !dbg !3735
  %10 = icmp ne i8* %0, null, !dbg !3737
  %11 = and i1 %10, %9, !dbg !3738
  br i1 %11, label %12, label %13, !dbg !3738

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3739
  br label %19, !dbg !3741

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3742
  call void @llvm.dbg.value(metadata i8* %14, metadata !3726, metadata !DIExpression()) #12, !dbg !3732
  %15 = icmp eq i8* %14, null, !dbg !3743
  %16 = icmp ne i64 %8, 0, !dbg !3745
  %17 = and i1 %16, %15, !dbg !3746
  br i1 %17, label %18, label %19, !dbg !3746

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3747
  unreachable, !dbg !3747

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3748
  ret i8* %20, !dbg !3749
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3727 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3726, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %1, metadata !3731, metadata !DIExpression()), !dbg !3751
  %3 = icmp eq i64 %1, 0, !dbg !3752
  %4 = icmp ne i8* %0, null, !dbg !3753
  %5 = and i1 %4, %3, !dbg !3754
  br i1 %5, label %6, label %7, !dbg !3754

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3755
  br label %13, !dbg !3756

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3757
  call void @llvm.dbg.value(metadata i8* %8, metadata !3726, metadata !DIExpression()), !dbg !3750
  %9 = icmp eq i8* %8, null, !dbg !3758
  %10 = icmp ne i64 %1, 0, !dbg !3759
  %11 = and i1 %10, %9, !dbg !3760
  br i1 %11, label %12, label %13, !dbg !3760

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3761
  unreachable, !dbg !3761

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3762
  ret i8* %14, !dbg !3763
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !233 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !238, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i64* %1, metadata !239, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i64 %2, metadata !240, metadata !DIExpression()), !dbg !3766
  %4 = load i64, i64* %1, align 8, !dbg !3767, !tbaa !2808
  call void @llvm.dbg.value(metadata i64 %4, metadata !241, metadata !DIExpression()), !dbg !3768
  %5 = icmp eq i8* %0, null, !dbg !3769
  br i1 %5, label %6, label %20, !dbg !3771

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3772
  br i1 %7, label %8, label %13, !dbg !3775

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3776
  call void @llvm.dbg.value(metadata i64 %9, metadata !241, metadata !DIExpression()), !dbg !3768
  %10 = icmp ugt i64 %2, 128, !dbg !3778
  %11 = zext i1 %10 to i64, !dbg !3778
  %12 = add nuw nsw i64 %9, %11, !dbg !3779
  call void @llvm.dbg.value(metadata i64 %12, metadata !241, metadata !DIExpression()), !dbg !3768
  br label %13, !dbg !3780

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3781
  call void @llvm.dbg.value(metadata i64 %14, metadata !241, metadata !DIExpression()), !dbg !3768
  %15 = udiv i64 9223372036854775807, %2, !dbg !3782
  %16 = icmp ult i64 %15, %14, !dbg !3782
  br i1 %16, label %19, label %17, !dbg !3784

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !241, metadata !DIExpression()), !dbg !3768
  store i64 %14, i64* %1, align 8, !dbg !3785, !tbaa !2808
  %18 = mul i64 %14, %2, !dbg !3786
  call void @llvm.dbg.value(metadata i8* %0, metadata !3726, metadata !DIExpression()) #12, !dbg !3787
  call void @llvm.dbg.value(metadata i64 %28, metadata !3731, metadata !DIExpression()) #12, !dbg !3789
  br label %31, !dbg !3790

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3791
  unreachable, !dbg !3791

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3792
  %22 = icmp ugt i64 %21, %4, !dbg !3795
  br i1 %22, label %24, label %23, !dbg !3796

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3797
  unreachable, !dbg !3797

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3798
  %26 = add i64 %4, 1, !dbg !3799
  %27 = add i64 %26, %25, !dbg !3800
  call void @llvm.dbg.value(metadata i64 %27, metadata !241, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 %27, metadata !241, metadata !DIExpression()), !dbg !3768
  store i64 %27, i64* %1, align 8, !dbg !3785, !tbaa !2808
  %28 = mul i64 %27, %2, !dbg !3786
  call void @llvm.dbg.value(metadata i8* %0, metadata !3726, metadata !DIExpression()) #12, !dbg !3787
  call void @llvm.dbg.value(metadata i64 %28, metadata !3731, metadata !DIExpression()) #12, !dbg !3789
  %29 = icmp eq i64 %28, 0, !dbg !3801
  br i1 %29, label %30, label %31, !dbg !3790

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3802
  br label %38, !dbg !3803

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3804
  call void @llvm.dbg.value(metadata i8* %33, metadata !3726, metadata !DIExpression()) #12, !dbg !3787
  %34 = icmp eq i8* %33, null, !dbg !3805
  %35 = icmp ne i64 %32, 0, !dbg !3806
  %36 = and i1 %35, %34, !dbg !3807
  br i1 %36, label %37, label %38, !dbg !3807

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3808
  unreachable, !dbg !3808

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3809
  ret i8* %39, !dbg !3810
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !3811 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3813, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64 %0, metadata !3686, metadata !DIExpression()) #12, !dbg !3815
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3817
  call void @llvm.dbg.value(metadata i8* %2, metadata !3692, metadata !DIExpression()) #12, !dbg !3818
  %3 = icmp eq i8* %2, null, !dbg !3819
  %4 = icmp ne i64 %0, 0, !dbg !3820
  %5 = and i1 %4, %3, !dbg !3821
  br i1 %5, label %6, label %7, !dbg !3821

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3822
  unreachable, !dbg !3822

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3823
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3824 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3828, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64* %1, metadata !3829, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %0, metadata !238, metadata !DIExpression()) #12, !dbg !3832
  call void @llvm.dbg.value(metadata i64* %1, metadata !239, metadata !DIExpression()) #12, !dbg !3834
  call void @llvm.dbg.value(metadata i64 1, metadata !240, metadata !DIExpression()) #12, !dbg !3835
  %3 = load i64, i64* %1, align 8, !dbg !3836, !tbaa !2808
  call void @llvm.dbg.value(metadata i64 %3, metadata !241, metadata !DIExpression()) #12, !dbg !3837
  %4 = icmp eq i8* %0, null, !dbg !3838
  br i1 %4, label %5, label %12, !dbg !3839

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3840
  br i1 %6, label %9, label %7, !dbg !3841

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !241, metadata !DIExpression()) #12, !dbg !3837
  %8 = icmp slt i64 %3, 0, !dbg !3842
  br i1 %8, label %11, label %9, !dbg !3843

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !241, metadata !DIExpression()) #12, !dbg !3837
  store i64 %10, i64* %1, align 8, !dbg !3844, !tbaa !2808
  call void @llvm.dbg.value(metadata i8* %0, metadata !3726, metadata !DIExpression()) #12, !dbg !3845
  call void @llvm.dbg.value(metadata i64 %18, metadata !3731, metadata !DIExpression()) #12, !dbg !3847
  br label %21, !dbg !3848

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3849
  unreachable, !dbg !3849

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3850
  br i1 %13, label %15, label %14, !dbg !3851

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3852
  unreachable, !dbg !3852

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3853
  %17 = add i64 %3, 1, !dbg !3854
  %18 = add i64 %17, %16, !dbg !3855
  call void @llvm.dbg.value(metadata i64 %18, metadata !241, metadata !DIExpression()) #12, !dbg !3837
  call void @llvm.dbg.value(metadata i64 %18, metadata !241, metadata !DIExpression()) #12, !dbg !3837
  store i64 %18, i64* %1, align 8, !dbg !3844, !tbaa !2808
  call void @llvm.dbg.value(metadata i8* %0, metadata !3726, metadata !DIExpression()) #12, !dbg !3845
  call void @llvm.dbg.value(metadata i64 %18, metadata !3731, metadata !DIExpression()) #12, !dbg !3847
  %19 = icmp eq i64 %18, 0, !dbg !3856
  br i1 %19, label %20, label %21, !dbg !3848

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3857
  br label %28, !dbg !3858

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3859
  call void @llvm.dbg.value(metadata i8* %23, metadata !3726, metadata !DIExpression()) #12, !dbg !3845
  %24 = icmp eq i8* %23, null, !dbg !3860
  %25 = icmp ne i64 %22, 0, !dbg !3861
  %26 = and i1 %25, %24, !dbg !3862
  br i1 %26, label %27, label %28, !dbg !3862

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3863
  unreachable, !dbg !3863

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3864
  ret i8* %29, !dbg !3865
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3866 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3868, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i64 %0, metadata !3686, metadata !DIExpression()) #12, !dbg !3870
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %2, metadata !3692, metadata !DIExpression()) #12, !dbg !3873
  %3 = icmp eq i8* %2, null, !dbg !3874
  %4 = icmp ne i64 %0, 0, !dbg !3875
  %5 = and i1 %4, %3, !dbg !3876
  br i1 %5, label %6, label %7, !dbg !3876

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3877
  unreachable, !dbg !3877

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3878
  ret i8* %2, !dbg !3879
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3880 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3882, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i64 %1, metadata !3883, metadata !DIExpression()), !dbg !3886
  %3 = udiv i64 9223372036854775807, %1, !dbg !3887
  %4 = icmp ult i64 %3, %0, !dbg !3887
  br i1 %4, label %8, label %5, !dbg !3889

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3890
  call void @llvm.dbg.value(metadata i8* %6, metadata !3884, metadata !DIExpression()), !dbg !3891
  %7 = icmp eq i8* %6, null, !dbg !3892
  br i1 %7, label %8, label %9, !dbg !3893

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3894
  unreachable, !dbg !3894

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3895
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3896 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3900, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i64 %1, metadata !3901, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 %1, metadata !3686, metadata !DIExpression()) #12, !dbg !3904
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3906
  call void @llvm.dbg.value(metadata i8* %3, metadata !3692, metadata !DIExpression()) #12, !dbg !3907
  %4 = icmp eq i8* %3, null, !dbg !3908
  %5 = icmp ne i64 %1, 0, !dbg !3909
  %6 = and i1 %5, %4, !dbg !3910
  br i1 %6, label %7, label %8, !dbg !3910

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3911
  unreachable, !dbg !3911

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3912
  ret i8* %3, !dbg !3913
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3914 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3916, metadata !DIExpression()), !dbg !3917
  %2 = tail call i64 @strlen(i8* %0) #8, !dbg !3918
  %3 = add i64 %2, 1, !dbg !3919
  call void @llvm.dbg.value(metadata i8* %0, metadata !3900, metadata !DIExpression()) #12, !dbg !3920
  call void @llvm.dbg.value(metadata i64 %3, metadata !3901, metadata !DIExpression()) #12, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %3, metadata !3686, metadata !DIExpression()) #12, !dbg !3923
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %4, metadata !3692, metadata !DIExpression()) #12, !dbg !3926
  %5 = icmp eq i8* %4, null, !dbg !3927
  %6 = icmp ne i64 %3, 0, !dbg !3928
  %7 = and i1 %6, %5, !dbg !3929
  br i1 %7, label %8, label %9, !dbg !3929

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3930
  unreachable, !dbg !3930

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !3931
  ret i8* %4, !dbg !3932
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3933 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3935, !tbaa !780
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.136, i64 0, i64 0), i32 5) #12, !dbg !3936
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i64 0, i64 0), i8* %2) #12, !dbg !3937
  tail call void @abort() #15, !dbg !3938
  unreachable, !dbg !3938
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @xstrtold(i8*, i8**, x86_fp80* nocapture, x86_fp80 (i8*, i8**)* nocapture) local_unnamed_addr #7 !dbg !3939 {
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3947, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i8** %1, metadata !3948, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata x86_fp80* %2, metadata !3949, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata x86_fp80 (i8*, i8**)* %3, metadata !3950, metadata !DIExpression()), !dbg !3957
  %6 = bitcast i8** %5 to i8*, !dbg !3958
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12, !dbg !3958
  call void @llvm.dbg.value(metadata i8 1, metadata !3953, metadata !DIExpression()), !dbg !3959
  %7 = tail call i32* @__errno_location() #17, !dbg !3960
  store i32 0, i32* %7, align 4, !dbg !3961, !tbaa !780
  call void @llvm.dbg.value(metadata i8** %5, metadata !3952, metadata !DIExpression(DW_OP_deref)), !dbg !3962
  %8 = call x86_fp80 %3(i8* %0, i8** nonnull %5) #12, !dbg !3963
  call void @llvm.dbg.value(metadata x86_fp80 %8, metadata !3951, metadata !DIExpression()), !dbg !3964
  %9 = load i8*, i8** %5, align 8, !dbg !3965, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %9, metadata !3952, metadata !DIExpression()), !dbg !3962
  %10 = icmp eq i8* %9, %0, !dbg !3967
  %11 = ptrtoint i8* %9 to i64, !dbg !3968
  br i1 %10, label %22, label %12, !dbg !3968

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i8** %1, null, !dbg !3969
  br i1 %13, label %14, label %17, !dbg !3970

; <label>:14:                                     ; preds = %12
  %15 = load i8, i8* %9, align 1, !dbg !3971, !tbaa !787
  %16 = icmp eq i8 %15, 0, !dbg !3972
  br i1 %16, label %17, label %27, !dbg !3973

; <label>:17:                                     ; preds = %14, %12
  %18 = fcmp une x86_fp80 %8, 0xK00000000000000000000, !dbg !3974
  br i1 %18, label %19, label %22, !dbg !3977

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %7, align 4, !dbg !3978, !tbaa !780
  %21 = icmp ne i32 %20, 34, !dbg !3979
  br label %22, !dbg !3980

; <label>:22:                                     ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  %24 = icmp eq i8** %1, null, !dbg !3981
  br i1 %24, label %27, label %25, !dbg !3983

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8** %5, metadata !3952, metadata !DIExpression(DW_OP_deref)), !dbg !3962
  %26 = bitcast i8** %1 to i64*, !dbg !3984
  store i64 %11, i64* %26, align 8, !dbg !3984, !tbaa !692
  br label %27, !dbg !3985

; <label>:27:                                     ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store x86_fp80 %8, x86_fp80* %2, align 16, !dbg !3986, !tbaa !3987
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12, !dbg !3988
  ret i1 %28, !dbg !3989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3990 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3993, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()), !dbg !4000
  %3 = icmp eq i64 %0, 0, !dbg !4001
  %4 = icmp eq i64 %1, 0, !dbg !4002
  %5 = or i1 %3, %4, !dbg !4003
  br i1 %5, label %12, label %6, !dbg !4003

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4004
  call void @llvm.dbg.value(metadata i64 %7, metadata !3996, metadata !DIExpression()), !dbg !4005
  %8 = udiv i64 %7, %1, !dbg !4006
  %9 = icmp eq i64 %8, %0, !dbg !4008
  br i1 %9, label %12, label %10, !dbg !4009

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4010
  store i32 12, i32* %11, align 4, !dbg !4012, !tbaa !780
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3993, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %13, metadata !3994, metadata !DIExpression()), !dbg !4000
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !4013
  call void @llvm.dbg.value(metadata i8* %15, metadata !3995, metadata !DIExpression()), !dbg !4014
  br label %16, !dbg !4015

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4016
  ret i8* %17, !dbg !4017
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4018 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4035, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i8* %1, metadata !4036, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i64 %2, metadata !4037, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4038, metadata !DIExpression()), !dbg !4047
  %6 = bitcast i32* %5 to i8*, !dbg !4048
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4048
  %7 = icmp eq i32* %0, null, !dbg !4049
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4051
  call void @llvm.dbg.value(metadata i32* %8, metadata !4035, metadata !DIExpression()), !dbg !4044
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4052
  call void @llvm.dbg.value(metadata i64 %9, metadata !4039, metadata !DIExpression()), !dbg !4053
  %10 = icmp ugt i64 %9, -3, !dbg !4054
  %11 = icmp ne i64 %2, 0, !dbg !4055
  %12 = and i1 %11, %10, !dbg !4056
  br i1 %12, label %13, label %18, !dbg !4056

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4057
  br i1 %14, label %18, label %15, !dbg !4058

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4059, !tbaa !787
  call void @llvm.dbg.value(metadata i8 %16, metadata !4041, metadata !DIExpression()), !dbg !4060
  %17 = zext i8 %16 to i32, !dbg !4061
  store i32 %17, i32* %8, align 4, !dbg !4062, !tbaa !780
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4063
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4064
  ret i64 %19, !dbg !4064
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4065 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4104, metadata !DIExpression()), !dbg !4109
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4110
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4111, metadata !DIExpression()), !dbg !4115
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4117
  %4 = load i32, i32* %3, align 8, !dbg !4117, !tbaa !4118
  %5 = and i32 %4, 32, !dbg !4117
  %6 = icmp eq i32 %5, 0, !dbg !4120
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4121
  %8 = icmp ne i32 %7, 0, !dbg !4122
  br i1 %6, label %9, label %19, !dbg !4123

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4125
  %11 = xor i1 %8, true, !dbg !4126
  %12 = or i1 %10, %11, !dbg !4126
  %13 = sext i1 %8 to i32, !dbg !4126
  br i1 %12, label %22, label %14, !dbg !4126

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4127
  %16 = load i32, i32* %15, align 4, !dbg !4127, !tbaa !780
  %17 = icmp ne i32 %16, 9, !dbg !4128
  %18 = sext i1 %17 to i32, !dbg !4129
  br label %22, !dbg !4129

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4130

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4132
  store i32 0, i32* %21, align 4, !dbg !4134, !tbaa !780
  br label %22, !dbg !4132

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4135
  ret i32 %23, !dbg !4136
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4137 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4142, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i8 1, metadata !4143, metadata !DIExpression()), !dbg !4146
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4147
  call void @llvm.dbg.value(metadata i8* %2, metadata !4144, metadata !DIExpression()), !dbg !4148
  %3 = icmp eq i8* %2, null, !dbg !4149
  br i1 %3, label %11, label %4, !dbg !4151

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0)) #8, !dbg !4152
  %6 = icmp eq i32 %5, 0, !dbg !4157
  br i1 %6, label %10, label %7, !dbg !4158

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.149, i64 0, i64 0)) #8, !dbg !4159
  %9 = icmp eq i32 %8, 0, !dbg !4160
  br i1 %9, label %10, label %11, !dbg !4161

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4143, metadata !DIExpression()), !dbg !4146
  br label %11, !dbg !4162

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4163
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4164 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4170
  call void @llvm.dbg.value(metadata i8* %1, metadata !4169, metadata !DIExpression()), !dbg !4171
  %2 = icmp eq i8* %1, null, !dbg !4172
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), i8* %1, !dbg !4174
  call void @llvm.dbg.value(metadata i8* %3, metadata !4169, metadata !DIExpression()), !dbg !4171
  %4 = load i8, i8* %3, align 1, !dbg !4175, !tbaa !787
  %5 = icmp eq i8 %4, 0, !dbg !4179
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.153, i64 0, i64 0), i8* %3, !dbg !4180
  call void @llvm.dbg.value(metadata i8* %6, metadata !4169, metadata !DIExpression()), !dbg !4171
  ret i8* %6, !dbg !4181
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4182 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4221, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i32 0, metadata !4222, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i32 0, metadata !4224, metadata !DIExpression()), !dbg !4227
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4228
  call void @llvm.dbg.value(metadata i32 %2, metadata !4223, metadata !DIExpression()), !dbg !4229
  %3 = icmp slt i32 %2, 0, !dbg !4230
  br i1 %3, label %4, label %6, !dbg !4232

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4233
  br label %24, !dbg !4234

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4235
  %8 = icmp eq i32 %7, 0, !dbg !4235
  br i1 %8, label %13, label %9, !dbg !4237

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4238
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4239
  %12 = icmp eq i64 %11, -1, !dbg !4240
  br i1 %12, label %16, label %13, !dbg !4241

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4242
  %15 = icmp eq i32 %14, 0, !dbg !4242
  br i1 %15, label %16, label %18, !dbg !4243

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4222, metadata !DIExpression()), !dbg !4226
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4244
  call void @llvm.dbg.value(metadata i32 %21, metadata !4224, metadata !DIExpression()), !dbg !4227
  br label %24, !dbg !4245

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4246
  %20 = load i32, i32* %19, align 4, !dbg !4246, !tbaa !780
  call void @llvm.dbg.value(metadata i32 %20, metadata !4222, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i32 %20, metadata !4222, metadata !DIExpression()), !dbg !4226
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4244
  call void @llvm.dbg.value(metadata i32 %21, metadata !4224, metadata !DIExpression()), !dbg !4227
  %22 = icmp eq i32 %20, 0, !dbg !4247
  br i1 %22, label %24, label %23, !dbg !4245

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4249, !tbaa !780
  call void @llvm.dbg.value(metadata i32 -1, metadata !4224, metadata !DIExpression()), !dbg !4227
  br label %24, !dbg !4251

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4252
  ret i32 %25, !dbg !4253
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4254 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4293, metadata !DIExpression()), !dbg !4294
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4295
  br i1 %2, label %6, label %3, !dbg !4297

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4298
  %5 = icmp eq i32 %4, 0, !dbg !4298
  br i1 %5, label %6, label %8, !dbg !4299

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4300
  br label %17, !dbg !4301

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4302, metadata !DIExpression()) #12, !dbg !4307
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4309
  %10 = load i32, i32* %9, align 8, !dbg !4309, !tbaa !4118
  %11 = and i32 %10, 256, !dbg !4311
  %12 = icmp eq i32 %11, 0, !dbg !4311
  br i1 %12, label %15, label %13, !dbg !4312

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4313
  br label %15, !dbg !4313

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4314
  br label %17, !dbg !4315

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4316
  ret i32 %18, !dbg !4317
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4318 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4358, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64 %1, metadata !4359, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata i32 %2, metadata !4360, metadata !DIExpression()), !dbg !4366
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4367
  %5 = load i8*, i8** %4, align 8, !dbg !4367, !tbaa !4368
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4369
  %7 = load i8*, i8** %6, align 8, !dbg !4369, !tbaa !4370
  %8 = icmp eq i8* %5, %7, !dbg !4371
  br i1 %8, label %9, label %28, !dbg !4372

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4373
  %11 = load i8*, i8** %10, align 8, !dbg !4373, !tbaa !4374
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4375
  %13 = load i8*, i8** %12, align 8, !dbg !4375, !tbaa !4376
  %14 = icmp eq i8* %11, %13, !dbg !4377
  br i1 %14, label %15, label %28, !dbg !4378

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4379
  %17 = load i8*, i8** %16, align 8, !dbg !4379, !tbaa !4380
  %18 = icmp eq i8* %17, null, !dbg !4381
  br i1 %18, label %19, label %28, !dbg !4382

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4383
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4384
  call void @llvm.dbg.value(metadata i64 %21, metadata !4361, metadata !DIExpression()), !dbg !4385
  %22 = icmp eq i64 %21, -1, !dbg !4386
  br i1 %22, label %30, label %23, !dbg !4388

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4389
  %25 = load i32, i32* %24, align 8, !dbg !4390, !tbaa !4118
  %26 = and i32 %25, -17, !dbg !4390
  store i32 %26, i32* %24, align 8, !dbg !4390, !tbaa !4118
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4391
  store i64 %21, i64* %27, align 8, !dbg !4392, !tbaa !4393
  br label %30, !dbg !4394

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4395
  br label %30, !dbg !4396

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4397
  ret i32 %31, !dbg !4398
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
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !88, !94, !124, !132, !139, !146, !220, !213, !228, !245, !247, !249, !251, !254, !256, !258, !647, !649, !651}
!llvm.ident = !{!653, !653, !653, !653, !653, !653, !653, !653, !653, !653, !653, !653, !653, !653, !653, !653, !653, !653, !653, !653}
!llvm.module.flags = !{!654, !655, !656, !657, !658}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "equal_width", scope: !2, file: !3, line: 46, type: !85, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !27)
!3 = !DIFile(filename: "src/seq.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!7, !22, !24, !25, !26}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !{!28, !29, !33, !47, !52}
!28 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "separator", scope: !2, file: !3, line: 49, type: !31, isLocal: true, isDefinition: true)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 55, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1536, elements: !45)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !38, line: 50, size: 256, elements: !39)
!38 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!39 = !{!40, !41, !42, !44}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !37, file: !38, line: 52, baseType: !31, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !37, file: !38, line: 55, baseType: !25, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !37, file: !38, line: 56, baseType: !43, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !37, file: !38, line: 57, baseType: !25, size: 32, offset: 192)
!45 = !{!46}
!46 = !DISubrange(count: 6)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "terminator", scope: !2, file: !3, line: 53, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 16, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 2)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "format_buf", scope: !54, file: !3, line: 362, type: !82, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "get_default_format", scope: !3, file: !3, line: 360, type: !55, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !67)
!55 = !DISubroutineType(types: !56)
!56 = !{!31, !57, !57, !57}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "operand", file: !3, line: 127, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "operand", file: !3, line: 112, size: 256, elements: !59)
!59 = !{!60, !62, !66}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !58, file: !3, line: 115, baseType: !61, size: 128)
!61 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !58, file: !3, line: 121, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 62, baseType: !65)
!64 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!65 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !58, file: !3, line: 125, baseType: !25, size: 32, offset: 192)
!67 = !{!68, !69, !70, !71, !72, !77, !78, !79}
!68 = !DILocalVariable(name: "first", arg: 1, scope: !54, file: !3, line: 360, type: !57)
!69 = !DILocalVariable(name: "step", arg: 2, scope: !54, file: !3, line: 360, type: !57)
!70 = !DILocalVariable(name: "last", arg: 3, scope: !54, file: !3, line: 360, type: !57)
!71 = !DILocalVariable(name: "prec", scope: !54, file: !3, line: 364, type: !25)
!72 = !DILocalVariable(name: "first_width", scope: !73, file: !3, line: 371, type: !63)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 369, column: 9)
!74 = distinct !DILexicalBlock(scope: !75, file: !3, line: 368, column: 11)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 367, column: 5)
!76 = distinct !DILexicalBlock(scope: !54, file: !3, line: 366, column: 7)
!77 = !DILocalVariable(name: "last_width", scope: !73, file: !3, line: 373, type: !63)
!78 = !DILocalVariable(name: "width", scope: !73, file: !3, line: 380, type: !63)
!79 = !DILocalVariable(name: "w", scope: !80, file: !3, line: 383, type: !25)
!80 = distinct !DILexicalBlock(scope: !81, file: !3, line: 382, column: 13)
!81 = distinct !DILexicalBlock(scope: !73, file: !3, line: 381, column: 15)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 224, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 28)
!85 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "Version", scope: !88, file: !89, line: 2, type: !31, isLocal: false, isDefinition: true)
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !91)
!89 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!90 = !{}
!91 = !{!86}
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !94, file: !120, line: 51, type: !121, isLocal: true, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !96, globals: !119)
!95 = !DIFile(filename: "./lib/c-strtold.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!96 = !{!22, !97}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !98, line: 24, baseType: !99)
!98 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !100, line: 42, baseType: !101)
!100 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !100, line: 28, size: 1856, elements: !103)
!103 = !{!104, !110, !113, !116, !117}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !102, file: !100, line: 31, baseType: !105, size: 832)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 832, elements: !108)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !100, line: 31, flags: DIFlagFwdDecl)
!108 = !{!109}
!109 = !DISubrange(count: 13)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !102, file: !100, line: 34, baseType: !111, size: 64, offset: 832)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !102, file: !100, line: 35, baseType: !114, size: 64, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !102, file: !100, line: 36, baseType: !114, size: 64, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !102, file: !100, line: 39, baseType: !118, size: 832, offset: 1024)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 832, elements: !108)
!119 = !{!92}
!120 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "file_name", scope: !124, file: !129, line: 46, type: !31, isLocal: true, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !126)
!125 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!126 = !{!122, !127}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !124, file: !129, line: 56, type: !85, isLocal: true, isDefinition: true)
!129 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "exit_failure", scope: !132, file: !135, line: 24, type: !136, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !134)
!133 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!134 = !{!130}
!135 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "program_name", scope: !139, file: !143, line: 33, type: !31, isLocal: false, isDefinition: true)
!139 = distinct !DICompileUnit(language: DW_LANG_C99, file: !140, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !141, globals: !142)
!140 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!141 = !{!24, !22}
!142 = !{!137}
!143 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !146, file: !172, line: 85, type: !207, isLocal: false, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !168, globals: !169)
!147 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!148 = !{!149, !163, !5}
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !150, line: 32, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!152 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!153 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!154 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!155 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!156 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!157 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!158 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!159 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!160 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!161 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!162 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !150, line: 242, baseType: !7, size: 32, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!166 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!167 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!168 = !{!25, !26, !63, !22}
!169 = !{!144, !170, !177, !189, !191, !196, !203, !205}
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !146, file: !172, line: 101, type: !173, isLocal: false, isDefinition: true)
!172 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 320, elements: !175)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!175 = !{!176}
!176 = !DISubrange(count: 10)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !146, file: !172, line: 1052, type: !179, isLocal: false, isDefinition: true)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !172, line: 65, size: 448, elements: !180)
!180 = !{!181, !182, !183, !187, !188}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !179, file: !172, line: 68, baseType: !149, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !172, line: 71, baseType: !25, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !179, file: !172, line: 75, baseType: !184, size: 256, offset: 64)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !179, file: !172, line: 78, baseType: !31, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !179, file: !172, line: 81, baseType: !31, size: 64, offset: 384)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !146, file: !172, line: 116, type: !179, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "slot0", scope: !146, file: !172, line: 842, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 256)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "slotvec", scope: !146, file: !172, line: 845, type: !198, isLocal: true, isDefinition: true)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !172, line: 834, size: 128, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !199, file: !172, line: 836, baseType: !63, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !199, file: !172, line: 837, baseType: !22, size: 64, offset: 64)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "nslots", scope: !146, file: !172, line: 843, type: !25, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "slotvec0", scope: !146, file: !172, line: 844, type: !199, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 704, elements: !209)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!209 = !{!210}
!210 = !DISubrange(count: 11)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !213, file: !216, line: 26, type: !217, isLocal: false, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !215)
!214 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!215 = !{!211}
!216 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 376, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 47)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !227)
!221 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!222 = !{!223}
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !224, line: 41, baseType: !7, size: 32, elements: !225)
!224 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!225 = !{!226}
!226 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!227 = !{!24}
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, retainedTypes: !244)
!229 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!230 = !{!231}
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !233, file: !232, line: 186, baseType: !7, size: 32, elements: !242)
!232 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!233 = distinct !DISubprogram(name: "x2nrealloc", scope: !232, file: !232, line: 174, type: !234, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !237)
!234 = !DISubroutineType(types: !235)
!235 = !{!24, !24, !236, !63}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!237 = !{!238, !239, !240, !241}
!238 = !DILocalVariable(name: "p", arg: 1, scope: !233, file: !232, line: 174, type: !24)
!239 = !DILocalVariable(name: "pn", arg: 2, scope: !233, file: !232, line: 174, type: !236)
!240 = !DILocalVariable(name: "s", arg: 3, scope: !233, file: !232, line: 174, type: !63)
!241 = !DILocalVariable(name: "n", scope: !233, file: !232, line: 176, type: !63)
!242 = !{!243}
!243 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!244 = !{!63, !22, !24}
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!246 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !227)
!248 = !DIFile(filename: "./lib/xstrtold.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !227)
!250 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !253)
!252 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!253 = !{!63}
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!255 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!257 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !260, retainedTypes: !227)
!259 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!260 = !{!261}
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !262, line: 41, baseType: !7, size: 32, elements: !263)
!262 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!264 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!265 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!266 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!267 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!268 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!269 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!270 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!271 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!272 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!273 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!274 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!275 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!276 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!277 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!278 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!279 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!280 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!281 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!282 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!283 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!284 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!285 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!286 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!287 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!288 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!289 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!290 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!291 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!292 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!293 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!294 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!295 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!296 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!297 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!298 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!299 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!300 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!301 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!302 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!303 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!304 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!305 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!306 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!307 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!308 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!309 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!310 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!311 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!312 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!313 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!372 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!375 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!376 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!377 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!378 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!379 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!380 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!381 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!382 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!383 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!384 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!385 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!386 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!459 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!532 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!533 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!534 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!535 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!536 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!537 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!538 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!539 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!540 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!541 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!542 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!543 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!544 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!545 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!546 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!548 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!549 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!550 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!551 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!552 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!553 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!579 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!580 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!581 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!582 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!583 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!588 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!589 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!590 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!591 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!647 = distinct !DICompileUnit(language: DW_LANG_C99, file: !648, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!648 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!649 = distinct !DICompileUnit(language: DW_LANG_C99, file: !650, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !227)
!650 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !227)
!652 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!653 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!654 = !{i32 2, !"Dwarf Version", i32 4}
!655 = !{i32 2, !"Debug Info Version", i32 3}
!656 = !{i32 1, !"wchar_size", i32 4}
!657 = !{i32 7, !"PIC Level", i32 2}
!658 = !{i32 7, !"PIE Level", i32 2}
!659 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 66, type: !660, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !25}
!662 = !{!663}
!663 = !DILocalVariable(name: "status", arg: 1, scope: !659, file: !3, line: 66, type: !25)
!664 = !DILocalVariable(name: "infomap", scope: !665, file: !666, line: 632, type: !680)
!665 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !666, file: !666, line: 630, type: !667, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !669)
!666 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!667 = !DISubroutineType(types: !668)
!668 = !{null, !31}
!669 = !{!670, !664, !671, !672, !679}
!670 = !DILocalVariable(name: "program", arg: 1, scope: !665, file: !666, line: 630, type: !31)
!671 = !DILocalVariable(name: "node", scope: !665, file: !666, line: 642, type: !31)
!672 = !DILocalVariable(name: "map_prog", scope: !665, file: !666, line: 643, type: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !665, file: !666, line: 632, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !675, file: !666, line: 632, baseType: !31, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !666, line: 632, baseType: !31, size: 64, offset: 64)
!679 = !DILocalVariable(name: "lc_messages", scope: !665, file: !666, line: 655, type: !31)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 896, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 7)
!683 = !DILocation(line: 632, column: 67, scope: !665, inlinedAt: !684)
!684 = distinct !DILocation(line: 106, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 71, column: 5)
!686 = distinct !DILexicalBlock(scope: !659, file: !3, line: 68, column: 7)
!687 = !DILocation(line: 66, column: 12, scope: !659)
!688 = !DILocation(line: 68, column: 14, scope: !686)
!689 = !DILocation(line: 68, column: 7, scope: !659)
!690 = !DILocation(line: 69, column: 5, scope: !691)
!691 = distinct !DILexicalBlock(scope: !686, file: !3, line: 69, column: 5)
!692 = !{!693, !693, i64 0}
!693 = !{!"any pointer", !694, i64 0}
!694 = !{!"omnipotent char", !695, i64 0}
!695 = !{!"Simple C/C++ TBAA"}
!696 = !DILocation(line: 72, column: 7, scope: !685)
!697 = !DILocation(line: 77, column: 7, scope: !685)
!698 = !DILocation(line: 587, column: 3, scope: !699, inlinedAt: !702)
!699 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !666, file: !666, line: 585, type: !700, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !90)
!700 = !DISubroutineType(types: !701)
!701 = !{null}
!702 = distinct !DILocation(line: 81, column: 7, scope: !685)
!703 = !DILocation(line: 83, column: 7, scope: !685)
!704 = !DILocation(line: 88, column: 7, scope: !685)
!705 = !DILocation(line: 89, column: 7, scope: !685)
!706 = !DILocation(line: 90, column: 7, scope: !685)
!707 = !DILocation(line: 101, column: 7, scope: !685)
!708 = !DILocation(line: 632, column: 3, scope: !665, inlinedAt: !684)
!709 = !DILocation(line: 643, column: 36, scope: !665, inlinedAt: !684)
!710 = !DILocation(line: 643, column: 25, scope: !665, inlinedAt: !684)
!711 = !DILocation(line: 645, column: 33, scope: !665, inlinedAt: !684)
!712 = !DILocation(line: 645, column: 3, scope: !665, inlinedAt: !684)
!713 = !DILocation(line: 646, column: 13, scope: !665, inlinedAt: !684)
!714 = !DILocation(line: 645, column: 20, scope: !665, inlinedAt: !684)
!715 = !{!716, !693, i64 0}
!716 = !{!"infomap", !693, i64 0, !693, i64 8}
!717 = !DILocation(line: 645, column: 10, scope: !665, inlinedAt: !684)
!718 = !DILocation(line: 645, column: 28, scope: !665, inlinedAt: !684)
!719 = distinct !{!719, !720, !721}
!720 = !DILocation(line: 645, column: 3, scope: !665)
!721 = !DILocation(line: 646, column: 13, scope: !665)
!722 = !DILocation(line: 648, column: 17, scope: !723, inlinedAt: !684)
!723 = distinct !DILexicalBlock(scope: !665, file: !666, line: 648, column: 7)
!724 = !{!716, !693, i64 8}
!725 = !DILocation(line: 648, column: 7, scope: !723, inlinedAt: !684)
!726 = !DILocation(line: 648, column: 7, scope: !665, inlinedAt: !684)
!727 = !DILocation(line: 642, column: 15, scope: !665, inlinedAt: !684)
!728 = !DILocation(line: 651, column: 3, scope: !665, inlinedAt: !684)
!729 = !DILocation(line: 655, column: 29, scope: !665, inlinedAt: !684)
!730 = !DILocation(line: 655, column: 15, scope: !665, inlinedAt: !684)
!731 = !DILocation(line: 656, column: 7, scope: !732, inlinedAt: !684)
!732 = distinct !DILexicalBlock(scope: !665, file: !666, line: 656, column: 7)
!733 = !DILocation(line: 656, column: 19, scope: !732, inlinedAt: !684)
!734 = !DILocation(line: 656, column: 22, scope: !732, inlinedAt: !684)
!735 = !DILocation(line: 656, column: 7, scope: !665, inlinedAt: !684)
!736 = !DILocation(line: 662, column: 7, scope: !737, inlinedAt: !684)
!737 = distinct !DILexicalBlock(scope: !732, file: !666, line: 657, column: 5)
!738 = !DILocation(line: 664, column: 5, scope: !737, inlinedAt: !684)
!739 = !DILocation(line: 665, column: 3, scope: !665, inlinedAt: !684)
!740 = !DILocation(line: 667, column: 3, scope: !665, inlinedAt: !684)
!741 = !DILocation(line: 669, column: 1, scope: !665, inlinedAt: !684)
!742 = !DILocation(line: 108, column: 3, scope: !659)
!743 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 549, type: !744, isLocal: false, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !747)
!744 = !DISubroutineType(types: !745)
!745 = !{!25, !25, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!747 = !{!748, !749, !750, !751, !752, !753, !754, !759, !760, !761, !764, !765, !768}
!748 = !DILocalVariable(name: "argc", arg: 1, scope: !743, file: !3, line: 549, type: !25)
!749 = !DILocalVariable(name: "argv", arg: 2, scope: !743, file: !3, line: 549, type: !746)
!750 = !DILocalVariable(name: "optc", scope: !743, file: !3, line: 551, type: !25)
!751 = !DILocalVariable(name: "first", scope: !743, file: !3, line: 552, type: !57)
!752 = !DILocalVariable(name: "step", scope: !743, file: !3, line: 553, type: !57)
!753 = !DILocalVariable(name: "last", scope: !743, file: !3, line: 554, type: !57)
!754 = !DILocalVariable(name: "layout", scope: !743, file: !3, line: 555, type: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "layout", file: !3, line: 130, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !755, file: !3, line: 133, baseType: !63, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "suffix_len", scope: !755, file: !3, line: 134, baseType: !63, size: 64, offset: 64)
!759 = !DILocalVariable(name: "format_str", scope: !743, file: !3, line: 558, type: !31)
!760 = !DILocalVariable(name: "n_args", scope: !743, file: !3, line: 610, type: !7)
!761 = !DILocalVariable(name: "s1", scope: !762, file: !3, line: 645, type: !31)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 644, column: 5)
!763 = distinct !DILexicalBlock(scope: !743, file: !3, line: 639, column: 7)
!764 = !DILocalVariable(name: "s2", scope: !762, file: !3, line: 646, type: !31)
!765 = !DILocalVariable(name: "s1", scope: !766, file: !3, line: 679, type: !22)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 678, column: 5)
!767 = distinct !DILexicalBlock(scope: !743, file: !3, line: 674, column: 7)
!768 = !DILocalVariable(name: "s2", scope: !766, file: !3, line: 680, type: !22)
!769 = !DILocation(line: 549, column: 11, scope: !743)
!770 = !DILocation(line: 549, column: 24, scope: !743)
!771 = !DILocation(line: 558, column: 15, scope: !743)
!772 = !DILocation(line: 561, column: 21, scope: !743)
!773 = !DILocation(line: 561, column: 3, scope: !743)
!774 = !DILocation(line: 562, column: 3, scope: !743)
!775 = !DILocation(line: 563, column: 3, scope: !743)
!776 = !DILocation(line: 564, column: 3, scope: !743)
!777 = !DILocation(line: 566, column: 3, scope: !743)
!778 = !DILocation(line: 569, column: 13, scope: !743)
!779 = !DILocation(line: 574, column: 10, scope: !743)
!780 = !{!781, !781, i64 0}
!781 = !{!"int", !694, i64 0}
!782 = !DILocation(line: 574, column: 17, scope: !743)
!783 = !DILocation(line: 574, column: 3, scope: !743)
!784 = !DILocation(line: 576, column: 11, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 576, column: 11)
!786 = distinct !DILexicalBlock(scope: !743, file: !3, line: 575, column: 5)
!787 = !{!694, !694, i64 0}
!788 = !DILocation(line: 576, column: 27, scope: !785)
!789 = !DILocation(line: 577, column: 11, scope: !785)
!790 = !DILocation(line: 577, column: 23, scope: !785)
!791 = !DILocation(line: 577, column: 40, scope: !785)
!792 = !DILocation(line: 577, column: 47, scope: !785)
!793 = !DILocation(line: 551, column: 7, scope: !743)
!794 = !DILocation(line: 577, column: 50, scope: !785)
!795 = !DILocation(line: 576, column: 11, scope: !786)
!796 = !DILocation(line: 583, column: 14, scope: !786)
!797 = !DILocation(line: 584, column: 11, scope: !786)
!798 = !DILocation(line: 610, column: 32, scope: !743)
!799 = !DILocation(line: 590, column: 24, scope: !800)
!800 = distinct !DILexicalBlock(scope: !786, file: !3, line: 588, column: 9)
!801 = !DILocation(line: 591, column: 11, scope: !800)
!802 = !DILocation(line: 594, column: 23, scope: !800)
!803 = !DILocation(line: 594, column: 21, scope: !800)
!804 = !DILocation(line: 595, column: 11, scope: !800)
!805 = !DILocation(line: 599, column: 11, scope: !800)
!806 = !DILocation(line: 601, column: 9, scope: !800)
!807 = !DILocation(line: 603, column: 9, scope: !800)
!808 = !DILocation(line: 606, column: 11, scope: !800)
!809 = !DILocation(line: 0, scope: !800)
!810 = distinct !{!810, !783, !811}
!811 = !DILocation(line: 608, column: 5, scope: !743)
!812 = !DILocation(line: 610, column: 30, scope: !743)
!813 = !DILocation(line: 610, column: 16, scope: !743)
!814 = !DILocation(line: 611, column: 14, scope: !815)
!815 = distinct !DILexicalBlock(scope: !743, file: !3, line: 611, column: 7)
!816 = !DILocation(line: 611, column: 7, scope: !743)
!817 = !DILocation(line: 613, column: 20, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !3, line: 612, column: 5)
!819 = !DILocation(line: 613, column: 7, scope: !818)
!820 = !DILocation(line: 614, column: 7, scope: !818)
!821 = !DILocation(line: 617, column: 9, scope: !822)
!822 = distinct !DILexicalBlock(scope: !743, file: !3, line: 617, column: 7)
!823 = !DILocation(line: 617, column: 7, scope: !743)
!824 = !DILocation(line: 619, column: 20, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !3, line: 618, column: 5)
!826 = !DILocation(line: 619, column: 55, scope: !825)
!827 = !DILocation(line: 619, column: 62, scope: !825)
!828 = !DILocation(line: 619, column: 50, scope: !825)
!829 = !DILocation(line: 619, column: 43, scope: !825)
!830 = !DILocation(line: 619, column: 7, scope: !825)
!831 = !DILocation(line: 620, column: 7, scope: !825)
!832 = !DILocation(line: 623, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !743, file: !3, line: 623, column: 7)
!834 = !DILocation(line: 623, column: 7, scope: !743)
!835 = !DILocation(line: 0, scope: !836, inlinedAt: !858)
!836 = distinct !DILexicalBlock(scope: !837, file: !3, line: 237, column: 5)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 236, column: 3)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 236, column: 3)
!839 = distinct !DISubprogram(name: "long_double_format", scope: !3, file: !3, line: 228, type: !840, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !843)
!840 = !DISubroutineType(types: !841)
!841 = !{!31, !31, !842}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!843 = !{!844, !845, !846, !847, !848, !849, !850, !851, !857}
!844 = !DILocalVariable(name: "fmt", arg: 1, scope: !839, file: !3, line: 228, type: !31)
!845 = !DILocalVariable(name: "layout", arg: 2, scope: !839, file: !3, line: 228, type: !842)
!846 = !DILocalVariable(name: "i", scope: !839, file: !3, line: 230, type: !63)
!847 = !DILocalVariable(name: "prefix_len", scope: !839, file: !3, line: 231, type: !63)
!848 = !DILocalVariable(name: "suffix_len", scope: !839, file: !3, line: 232, type: !63)
!849 = !DILocalVariable(name: "length_modifier_offset", scope: !839, file: !3, line: 233, type: !63)
!850 = !DILocalVariable(name: "has_L", scope: !839, file: !3, line: 234, type: !85)
!851 = !DILocalVariable(name: "format_size", scope: !852, file: !3, line: 270, type: !63)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 269, column: 7)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 266, column: 14)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 263, column: 9)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 262, column: 3)
!856 = distinct !DILexicalBlock(scope: !839, file: !3, line: 262, column: 3)
!857 = !DILocalVariable(name: "ldfmt", scope: !852, file: !3, line: 271, type: !22)
!858 = distinct !DILocation(line: 624, column: 18, scope: !833)
!859 = !DILocation(line: 0, scope: !837, inlinedAt: !858)
!860 = !DILocation(line: 230, column: 10, scope: !839, inlinedAt: !858)
!861 = !DILocation(line: 231, column: 10, scope: !839, inlinedAt: !858)
!862 = !DILocation(line: 236, column: 18, scope: !837, inlinedAt: !858)
!863 = !DILocation(line: 236, column: 25, scope: !837, inlinedAt: !858)
!864 = !DILocation(line: 236, column: 32, scope: !837, inlinedAt: !858)
!865 = !DILocation(line: 236, column: 41, scope: !837, inlinedAt: !858)
!866 = !DILocation(line: 236, column: 35, scope: !837, inlinedAt: !858)
!867 = !DILocation(line: 236, column: 46, scope: !837, inlinedAt: !858)
!868 = !DILocation(line: 236, column: 3, scope: !838, inlinedAt: !858)
!869 = !DILocation(line: 238, column: 12, scope: !870, inlinedAt: !858)
!870 = distinct !DILexicalBlock(scope: !836, file: !3, line: 238, column: 11)
!871 = !DILocation(line: 238, column: 11, scope: !836, inlinedAt: !858)
!872 = !DILocation(line: 239, column: 9, scope: !870, inlinedAt: !858)
!873 = !DILocation(line: 241, column: 17, scope: !836, inlinedAt: !858)
!874 = !DILocation(line: 236, column: 60, scope: !837, inlinedAt: !858)
!875 = !DILocation(line: 236, column: 57, scope: !837, inlinedAt: !858)
!876 = !DILocation(line: 236, column: 3, scope: !837, inlinedAt: !858)
!877 = distinct !{!877, !878, !879}
!878 = !DILocation(line: 236, column: 3, scope: !838)
!879 = !DILocation(line: 242, column: 5, scope: !838)
!880 = !DILocation(line: 245, column: 8, scope: !839, inlinedAt: !858)
!881 = !DILocation(line: 245, column: 5, scope: !839, inlinedAt: !858)
!882 = !DILocation(line: 246, column: 20, scope: !839, inlinedAt: !858)
!883 = !DILocation(line: 246, column: 8, scope: !839, inlinedAt: !858)
!884 = !DILocation(line: 246, column: 5, scope: !839, inlinedAt: !858)
!885 = !DILocation(line: 247, column: 7, scope: !886, inlinedAt: !858)
!886 = distinct !DILexicalBlock(scope: !839, file: !3, line: 247, column: 7)
!887 = !DILocation(line: 247, column: 14, scope: !886, inlinedAt: !858)
!888 = !DILocation(line: 247, column: 7, scope: !839, inlinedAt: !858)
!889 = !DILocation(line: 249, column: 8, scope: !890, inlinedAt: !858)
!890 = distinct !DILexicalBlock(scope: !886, file: !3, line: 248, column: 5)
!891 = !DILocation(line: 250, column: 24, scope: !890, inlinedAt: !858)
!892 = !DILocation(line: 250, column: 12, scope: !890, inlinedAt: !858)
!893 = !DILocation(line: 250, column: 9, scope: !890, inlinedAt: !858)
!894 = !DILocation(line: 254, column: 12, scope: !839, inlinedAt: !858)
!895 = !DILocation(line: 251, column: 5, scope: !890, inlinedAt: !858)
!896 = !DILocation(line: 233, column: 10, scope: !839, inlinedAt: !858)
!897 = !DILocation(line: 254, column: 19, scope: !839, inlinedAt: !858)
!898 = !DILocation(line: 255, column: 8, scope: !839, inlinedAt: !858)
!899 = !DILocation(line: 255, column: 5, scope: !839, inlinedAt: !858)
!900 = !DILocation(line: 256, column: 7, scope: !901, inlinedAt: !858)
!901 = distinct !DILexicalBlock(scope: !839, file: !3, line: 256, column: 7)
!902 = !DILocation(line: 256, column: 14, scope: !901, inlinedAt: !858)
!903 = !DILocation(line: 256, column: 7, scope: !839, inlinedAt: !858)
!904 = !DILocation(line: 257, column: 5, scope: !901, inlinedAt: !858)
!905 = !DILocation(line: 258, column: 9, scope: !906, inlinedAt: !858)
!906 = distinct !DILexicalBlock(scope: !839, file: !3, line: 258, column: 7)
!907 = !DILocation(line: 258, column: 7, scope: !839, inlinedAt: !858)
!908 = !DILocation(line: 259, column: 5, scope: !906, inlinedAt: !858)
!909 = !DILocation(line: 262, column: 9, scope: !856, inlinedAt: !858)
!910 = !DILocation(line: 262, column: 8, scope: !856, inlinedAt: !858)
!911 = !DILocation(line: 0, scope: !853, inlinedAt: !858)
!912 = !DILocation(line: 0, scope: !855, inlinedAt: !858)
!913 = !DILocation(line: 232, column: 10, scope: !839, inlinedAt: !858)
!914 = !DILocation(line: 263, column: 9, scope: !854, inlinedAt: !858)
!915 = !DILocation(line: 263, column: 16, scope: !854, inlinedAt: !858)
!916 = !DILocation(line: 263, column: 23, scope: !854, inlinedAt: !858)
!917 = !DILocation(line: 263, column: 32, scope: !854, inlinedAt: !858)
!918 = !DILocation(line: 263, column: 26, scope: !854, inlinedAt: !858)
!919 = !DILocation(line: 263, column: 37, scope: !854, inlinedAt: !858)
!920 = !DILocation(line: 263, column: 9, scope: !855, inlinedAt: !858)
!921 = !DILocation(line: 264, column: 7, scope: !854, inlinedAt: !858)
!922 = !DILocation(line: 266, column: 14, scope: !853, inlinedAt: !858)
!923 = !DILocation(line: 266, column: 14, scope: !854, inlinedAt: !858)
!924 = !DILocation(line: 267, column: 17, scope: !853, inlinedAt: !858)
!925 = !DILocation(line: 262, column: 20, scope: !855, inlinedAt: !858)
!926 = !DILocation(line: 262, column: 17, scope: !855, inlinedAt: !858)
!927 = !DILocation(line: 262, column: 3, scope: !855, inlinedAt: !858)
!928 = distinct !{!928, !929, !930}
!929 = !DILocation(line: 262, column: 3, scope: !856)
!930 = !DILocation(line: 279, column: 7, scope: !856)
!931 = !DILocation(line: 270, column: 16, scope: !852, inlinedAt: !858)
!932 = !DILocation(line: 271, column: 44, scope: !852, inlinedAt: !858)
!933 = !DILocation(line: 271, column: 23, scope: !852, inlinedAt: !858)
!934 = !DILocation(line: 271, column: 15, scope: !852, inlinedAt: !858)
!935 = !DILocation(line: 272, column: 9, scope: !852, inlinedAt: !858)
!936 = !DILocation(line: 273, column: 9, scope: !852, inlinedAt: !858)
!937 = !DILocation(line: 273, column: 39, scope: !852, inlinedAt: !858)
!938 = !DILocation(line: 274, column: 48, scope: !852, inlinedAt: !858)
!939 = !DILocation(line: 275, column: 46, scope: !852, inlinedAt: !858)
!940 = !DILocalVariable(name: "__dest", arg: 1, scope: !941, file: !942, line: 88, type: !945)
!941 = distinct !DISubprogram(name: "strcpy", scope: !942, file: !942, line: 88, type: !943, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !947)
!942 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!943 = !DISubroutineType(types: !944)
!944 = !{!22, !945, !946}
!945 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!946 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!947 = !{!940, !948}
!948 = !DILocalVariable(name: "__src", arg: 2, scope: !941, file: !942, line: 88, type: !946)
!949 = !DILocation(line: 88, column: 1, scope: !941, inlinedAt: !950)
!950 = distinct !DILocation(line: 274, column: 9, scope: !852, inlinedAt: !858)
!951 = !DILocation(line: 90, column: 49, scope: !941, inlinedAt: !950)
!952 = !DILocation(line: 90, column: 10, scope: !941, inlinedAt: !950)
!953 = !DILocation(line: 626, column: 18, scope: !954)
!954 = distinct !DILexicalBlock(scope: !743, file: !3, line: 626, column: 7)
!955 = !DILocation(line: 626, column: 26, scope: !954)
!956 = !DILocation(line: 626, column: 7, scope: !743)
!957 = !DILocation(line: 628, column: 20, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !3, line: 627, column: 5)
!959 = !DILocation(line: 628, column: 7, scope: !958)
!960 = !DILocation(line: 630, column: 7, scope: !958)
!961 = !DILocation(line: 639, column: 26, scope: !763)
!962 = !DILocation(line: 639, column: 21, scope: !763)
!963 = !DILocalVariable(name: "s", arg: 1, scope: !964, file: !3, line: 542, type: !31)
!964 = distinct !DISubprogram(name: "all_digits_p", scope: !3, file: !3, line: 542, type: !965, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !967)
!965 = !DISubroutineType(types: !966)
!966 = !{!85, !31}
!967 = !{!963, !968}
!968 = !DILocalVariable(name: "n", scope: !964, file: !3, line: 544, type: !63)
!969 = !DILocation(line: 542, column: 27, scope: !964, inlinedAt: !970)
!970 = distinct !DILocation(line: 639, column: 7, scope: !763)
!971 = !DILocation(line: 545, column: 10, scope: !964, inlinedAt: !970)
!972 = !DILocation(line: 545, column: 25, scope: !964, inlinedAt: !970)
!973 = !DILocation(line: 544, column: 14, scope: !964, inlinedAt: !970)
!974 = !DILocation(line: 544, column: 10, scope: !964, inlinedAt: !970)
!975 = !DILocation(line: 545, column: 33, scope: !964, inlinedAt: !970)
!976 = !DILocation(line: 545, column: 30, scope: !964, inlinedAt: !970)
!977 = !DILocation(line: 640, column: 7, scope: !763)
!978 = !DILocation(line: 640, column: 18, scope: !763)
!979 = !DILocation(line: 640, column: 23, scope: !763)
!980 = !DILocation(line: 640, column: 52, scope: !763)
!981 = !DILocation(line: 640, column: 40, scope: !763)
!982 = !DILocation(line: 542, column: 27, scope: !964, inlinedAt: !983)
!983 = distinct !DILocation(line: 640, column: 26, scope: !763)
!984 = !DILocation(line: 545, column: 10, scope: !964, inlinedAt: !983)
!985 = !DILocation(line: 545, column: 25, scope: !964, inlinedAt: !983)
!986 = !DILocation(line: 544, column: 14, scope: !964, inlinedAt: !983)
!987 = !DILocation(line: 544, column: 10, scope: !964, inlinedAt: !983)
!988 = !DILocation(line: 545, column: 33, scope: !964, inlinedAt: !983)
!989 = !DILocation(line: 545, column: 30, scope: !964, inlinedAt: !983)
!990 = !DILocation(line: 641, column: 7, scope: !763)
!991 = !DILocation(line: 641, column: 18, scope: !763)
!992 = !DILocation(line: 641, column: 22, scope: !763)
!993 = !DILocation(line: 641, column: 26, scope: !763)
!994 = !DILocation(line: 642, column: 26, scope: !763)
!995 = !DILocation(line: 642, column: 55, scope: !763)
!996 = !DILocation(line: 642, column: 43, scope: !763)
!997 = !DILocation(line: 542, column: 27, scope: !964, inlinedAt: !998)
!998 = distinct !DILocation(line: 642, column: 29, scope: !763)
!999 = !DILocation(line: 545, column: 10, scope: !964, inlinedAt: !998)
!1000 = !DILocation(line: 545, column: 25, scope: !964, inlinedAt: !998)
!1001 = !DILocation(line: 544, column: 14, scope: !964, inlinedAt: !998)
!1002 = !DILocation(line: 544, column: 10, scope: !964, inlinedAt: !998)
!1003 = !DILocation(line: 545, column: 33, scope: !964, inlinedAt: !998)
!1004 = !DILocation(line: 545, column: 30, scope: !964, inlinedAt: !998)
!1005 = !DILocation(line: 643, column: 23, scope: !763)
!1006 = !DILocation(line: 643, column: 7, scope: !763)
!1007 = !DILocation(line: 643, column: 49, scope: !763)
!1008 = !DILocation(line: 643, column: 41, scope: !763)
!1009 = !DILocation(line: 643, column: 60, scope: !763)
!1010 = !DILocation(line: 639, column: 7, scope: !743)
!1011 = !DILocation(line: 645, column: 24, scope: !762)
!1012 = !DILocation(line: 645, column: 19, scope: !762)
!1013 = !DILocation(line: 646, column: 46, scope: !762)
!1014 = !DILocation(line: 646, column: 36, scope: !762)
!1015 = !DILocation(line: 646, column: 24, scope: !762)
!1016 = !DILocation(line: 646, column: 19, scope: !762)
!1017 = !DILocation(line: 647, column: 11, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !762, file: !3, line: 647, column: 11)
!1019 = !DILocation(line: 653, column: 31, scope: !743)
!1020 = !DILocation(line: 653, column: 20, scope: !743)
!1021 = !DILocation(line: 653, column: 10, scope: !743)
!1022 = !DILocation(line: 655, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !743, file: !3, line: 655, column: 7)
!1024 = !DILocation(line: 655, column: 14, scope: !1023)
!1025 = !DILocation(line: 655, column: 7, scope: !743)
!1026 = !DILocation(line: 658, column: 14, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 656, column: 5)
!1028 = !DILocation(line: 658, column: 35, scope: !1027)
!1029 = !DILocation(line: 658, column: 24, scope: !1027)
!1030 = !DILocation(line: 660, column: 11, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 660, column: 11)
!1032 = !DILocation(line: 660, column: 18, scope: !1031)
!1033 = !DILocation(line: 660, column: 11, scope: !1027)
!1034 = !DILocation(line: 663, column: 26, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 663, column: 15)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 661, column: 9)
!1037 = !DILocation(line: 663, column: 15, scope: !1036)
!1038 = !DILocation(line: 665, column: 28, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 664, column: 13)
!1040 = !DILocation(line: 666, column: 34, scope: !1039)
!1041 = !DILocation(line: 666, column: 40, scope: !1039)
!1042 = !DILocation(line: 666, column: 29, scope: !1039)
!1043 = !DILocation(line: 666, column: 22, scope: !1039)
!1044 = !DILocation(line: 665, column: 15, scope: !1039)
!1045 = !DILocation(line: 667, column: 15, scope: !1039)
!1046 = !DILocation(line: 670, column: 18, scope: !1036)
!1047 = !DILocation(line: 670, column: 39, scope: !1036)
!1048 = !DILocation(line: 670, column: 28, scope: !1036)
!1049 = !DILocation(line: 671, column: 9, scope: !1036)
!1050 = !DILocation(line: 0, scope: !743)
!1051 = !DILocation(line: 674, column: 8, scope: !767)
!1052 = !DILocation(line: 674, column: 31, scope: !767)
!1053 = !DILocation(line: 675, column: 48, scope: !767)
!1054 = !DILocation(line: 676, column: 12, scope: !767)
!1055 = !DILocation(line: 676, column: 7, scope: !767)
!1056 = !DILocation(line: 676, column: 41, scope: !767)
!1057 = !DILocation(line: 676, column: 51, scope: !767)
!1058 = !DILocation(line: 677, column: 23, scope: !767)
!1059 = !DILocation(line: 677, column: 7, scope: !767)
!1060 = !DILocation(line: 677, column: 49, scope: !767)
!1061 = !DILocation(line: 677, column: 41, scope: !767)
!1062 = !DILocation(line: 677, column: 60, scope: !767)
!1063 = !DILocation(line: 674, column: 7, scope: !743)
!1064 = !DILocation(line: 679, column: 7, scope: !766)
!1065 = !DILocation(line: 680, column: 7, scope: !766)
!1066 = !DILocation(line: 679, column: 13, scope: !766)
!1067 = !DILocation(line: 681, column: 11, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !766, file: !3, line: 681, column: 11)
!1069 = !DILocation(line: 681, column: 48, scope: !1068)
!1070 = !DILocation(line: 681, column: 11, scope: !766)
!1071 = !DILocation(line: 682, column: 9, scope: !1068)
!1072 = !DILocation(line: 683, column: 13, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !766, file: !3, line: 683, column: 11)
!1074 = !DILocation(line: 683, column: 11, scope: !766)
!1075 = !DILocation(line: 684, column: 14, scope: !1073)
!1076 = !DILocation(line: 680, column: 13, scope: !766)
!1077 = !DILocation(line: 684, column: 12, scope: !1073)
!1078 = !DILocation(line: 684, column: 9, scope: !1073)
!1079 = !DILocation(line: 685, column: 16, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 685, column: 16)
!1081 = !DILocation(line: 685, column: 52, scope: !1080)
!1082 = !DILocation(line: 685, column: 16, scope: !1073)
!1083 = !DILocation(line: 686, column: 9, scope: !1080)
!1084 = !DILocation(line: 688, column: 12, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !766, file: !3, line: 688, column: 11)
!1086 = !DILocation(line: 688, column: 11, scope: !1085)
!1087 = !DILocation(line: 688, column: 15, scope: !1085)
!1088 = !DILocation(line: 688, column: 22, scope: !1085)
!1089 = !DILocation(line: 688, column: 26, scope: !1085)
!1090 = !DILocation(line: 688, column: 25, scope: !1085)
!1091 = !DILocation(line: 688, column: 29, scope: !1085)
!1092 = !DILocation(line: 688, column: 36, scope: !1085)
!1093 = !DILocation(line: 688, column: 39, scope: !1085)
!1094 = !DILocation(line: 688, column: 11, scope: !766)
!1095 = !DILocation(line: 695, column: 13, scope: !766)
!1096 = !DILocation(line: 695, column: 7, scope: !766)
!1097 = !DILocation(line: 696, column: 13, scope: !766)
!1098 = !DILocation(line: 696, column: 7, scope: !766)
!1099 = !DILocation(line: 698, column: 5, scope: !767)
!1100 = !DILocation(line: 700, column: 18, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !743, file: !3, line: 700, column: 7)
!1102 = !DILocation(line: 700, column: 7, scope: !743)
!1103 = !DILocation(line: 552, column: 11, scope: !743)
!1104 = !DILocation(line: 553, column: 11, scope: !743)
!1105 = !DILocation(line: 554, column: 11, scope: !743)
!1106 = !DILocation(line: 360, column: 58, scope: !54, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 701, column: 18, scope: !1101)
!1108 = !DILocation(line: 360, column: 44, scope: !54, inlinedAt: !1107)
!1109 = !DILocation(line: 360, column: 29, scope: !54, inlinedAt: !1107)
!1110 = !DILocation(line: 364, column: 14, scope: !54, inlinedAt: !1107)
!1111 = !DILocation(line: 364, column: 7, scope: !54, inlinedAt: !1107)
!1112 = !DILocation(line: 366, column: 12, scope: !76, inlinedAt: !1107)
!1113 = !DILocation(line: 366, column: 41, scope: !76, inlinedAt: !1107)
!1114 = !DILocation(line: 366, column: 23, scope: !76, inlinedAt: !1107)
!1115 = !DILocation(line: 368, column: 11, scope: !75, inlinedAt: !1107)
!1116 = !DILocation(line: 371, column: 52, scope: !73, inlinedAt: !1107)
!1117 = !DILocation(line: 371, column: 46, scope: !73, inlinedAt: !1107)
!1118 = !DILocation(line: 371, column: 18, scope: !73, inlinedAt: !1107)
!1119 = !DILocation(line: 373, column: 50, scope: !73, inlinedAt: !1107)
!1120 = !DILocation(line: 373, column: 44, scope: !73, inlinedAt: !1107)
!1121 = !DILocation(line: 373, column: 18, scope: !73, inlinedAt: !1107)
!1122 = !DILocation(line: 374, column: 15, scope: !1123, inlinedAt: !1107)
!1123 = distinct !DILexicalBlock(scope: !73, file: !3, line: 374, column: 15)
!1124 = !DILocation(line: 374, column: 38, scope: !1123, inlinedAt: !1107)
!1125 = !DILocation(line: 374, column: 30, scope: !1123, inlinedAt: !1107)
!1126 = !DILocation(line: 376, column: 30, scope: !1127, inlinedAt: !1107)
!1127 = distinct !DILexicalBlock(scope: !73, file: !3, line: 376, column: 15)
!1128 = !DILocation(line: 376, column: 38, scope: !1127, inlinedAt: !1107)
!1129 = !DILocation(line: 376, column: 35, scope: !1127, inlinedAt: !1107)
!1130 = !DILocation(line: 373, column: 42, scope: !73, inlinedAt: !1107)
!1131 = !DILocation(line: 378, column: 31, scope: !1132, inlinedAt: !1107)
!1132 = distinct !DILexicalBlock(scope: !73, file: !3, line: 378, column: 15)
!1133 = !DILocation(line: 378, column: 36, scope: !1132, inlinedAt: !1107)
!1134 = !DILocation(line: 371, column: 44, scope: !73, inlinedAt: !1107)
!1135 = !DILocation(line: 380, column: 26, scope: !73, inlinedAt: !1107)
!1136 = !DILocation(line: 380, column: 18, scope: !73, inlinedAt: !1107)
!1137 = !DILocation(line: 381, column: 21, scope: !81, inlinedAt: !1107)
!1138 = !DILocation(line: 381, column: 15, scope: !73, inlinedAt: !1107)
!1139 = !DILocation(line: 383, column: 23, scope: !80, inlinedAt: !1107)
!1140 = !DILocation(line: 383, column: 19, scope: !80, inlinedAt: !1107)
!1141 = !DILocation(line: 384, column: 15, scope: !80, inlinedAt: !1107)
!1142 = !DILocation(line: 390, column: 11, scope: !1143, inlinedAt: !1107)
!1143 = distinct !DILexicalBlock(scope: !74, file: !3, line: 389, column: 9)
!1144 = !DILocation(line: 391, column: 11, scope: !1143, inlinedAt: !1107)
!1145 = !DILocation(line: 0, scope: !833)
!1146 = !DILocalVariable(name: "layout", arg: 2, scope: !1147, file: !3, line: 294, type: !755)
!1147 = distinct !DISubprogram(name: "print_numbers", scope: !3, file: !3, line: 294, type: !1148, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !31, !755, !61, !61, !61}
!1150 = !{!1151, !1146, !1152, !1153, !1154, !1155, !1156, !1159, !1160, !1164, !1167, !1168, !1169, !1170}
!1151 = !DILocalVariable(name: "fmt", arg: 1, scope: !1147, file: !3, line: 294, type: !31)
!1152 = !DILocalVariable(name: "first", arg: 3, scope: !1147, file: !3, line: 295, type: !61)
!1153 = !DILocalVariable(name: "step", arg: 4, scope: !1147, file: !3, line: 295, type: !61)
!1154 = !DILocalVariable(name: "last", arg: 5, scope: !1147, file: !3, line: 295, type: !61)
!1155 = !DILocalVariable(name: "out_of_range", scope: !1147, file: !3, line: 297, type: !85)
!1156 = !DILocalVariable(name: "x", scope: !1157, file: !3, line: 301, type: !61)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 300, column: 5)
!1158 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 299, column: 7)
!1159 = !DILocalVariable(name: "i", scope: !1157, file: !3, line: 302, type: !61)
!1160 = !DILocalVariable(name: "x0", scope: !1161, file: !3, line: 306, type: !61)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 305, column: 9)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 304, column: 7)
!1163 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 304, column: 7)
!1164 = !DILocalVariable(name: "print_extra_number", scope: !1165, file: !3, line: 323, type: !85)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 315, column: 13)
!1166 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 314, column: 15)
!1167 = !DILocalVariable(name: "x_val", scope: !1165, file: !3, line: 324, type: !61)
!1168 = !DILocalVariable(name: "x_str", scope: !1165, file: !3, line: 325, type: !22)
!1169 = !DILocalVariable(name: "x_strlen", scope: !1165, file: !3, line: 326, type: !25)
!1170 = !DILocalVariable(name: "x0_str", scope: !1171, file: !3, line: 337, type: !22)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 336, column: 17)
!1172 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 334, column: 19)
!1173 = !DILocation(line: 294, column: 47, scope: !1147, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 703, column: 3, scope: !743)
!1175 = !DILocation(line: 294, column: 28, scope: !1147, inlinedAt: !1174)
!1176 = !DILocation(line: 295, column: 28, scope: !1147, inlinedAt: !1174)
!1177 = !DILocation(line: 295, column: 47, scope: !1147, inlinedAt: !1174)
!1178 = !DILocation(line: 295, column: 65, scope: !1147, inlinedAt: !1174)
!1179 = !DILocation(line: 297, column: 29, scope: !1147, inlinedAt: !1174)
!1180 = !DILocation(line: 297, column: 41, scope: !1147, inlinedAt: !1174)
!1181 = !DILocation(line: 297, column: 55, scope: !1147, inlinedAt: !1174)
!1182 = !DILocation(line: 297, column: 24, scope: !1147, inlinedAt: !1174)
!1183 = !DILocation(line: 299, column: 7, scope: !1147, inlinedAt: !1174)
!1184 = !DILocation(line: 297, column: 8, scope: !1147, inlinedAt: !1174)
!1185 = !DILocation(line: 301, column: 19, scope: !1157, inlinedAt: !1174)
!1186 = !DILocation(line: 302, column: 19, scope: !1157, inlinedAt: !1174)
!1187 = !DILocation(line: 306, column: 23, scope: !1161, inlinedAt: !1174)
!1188 = !DILocation(line: 307, column: 15, scope: !1189, inlinedAt: !1174)
!1189 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 307, column: 15)
!1190 = !DILocation(line: 307, column: 31, scope: !1189, inlinedAt: !1174)
!1191 = !DILocation(line: 307, column: 15, scope: !1161, inlinedAt: !1174)
!1192 = !DILocation(line: 308, column: 13, scope: !1189, inlinedAt: !1174)
!1193 = !DILocation(line: 309, column: 15, scope: !1194, inlinedAt: !1174)
!1194 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 309, column: 15)
!1195 = !DILocation(line: 309, column: 15, scope: !1161, inlinedAt: !1174)
!1196 = !DILocation(line: 311, column: 25, scope: !1161, inlinedAt: !1174)
!1197 = !DILocation(line: 311, column: 21, scope: !1161, inlinedAt: !1174)
!1198 = !DILocation(line: 312, column: 40, scope: !1161, inlinedAt: !1174)
!1199 = !DILocation(line: 312, column: 54, scope: !1161, inlinedAt: !1174)
!1200 = !DILocation(line: 312, column: 27, scope: !1161, inlinedAt: !1174)
!1201 = !DILocation(line: 312, column: 24, scope: !1161, inlinedAt: !1174)
!1202 = !DILocation(line: 314, column: 15, scope: !1161, inlinedAt: !1174)
!1203 = !DILocation(line: 323, column: 20, scope: !1165, inlinedAt: !1174)
!1204 = !DILocation(line: 324, column: 15, scope: !1165, inlinedAt: !1174)
!1205 = !DILocation(line: 325, column: 15, scope: !1165, inlinedAt: !1174)
!1206 = !DILocation(line: 327, column: 15, scope: !1165, inlinedAt: !1174)
!1207 = !DILocation(line: 325, column: 21, scope: !1165, inlinedAt: !1174)
!1208 = !DILocation(line: 328, column: 26, scope: !1165, inlinedAt: !1174)
!1209 = !DILocation(line: 326, column: 19, scope: !1165, inlinedAt: !1174)
!1210 = !DILocation(line: 329, column: 15, scope: !1165, inlinedAt: !1174)
!1211 = !DILocation(line: 330, column: 28, scope: !1212, inlinedAt: !1174)
!1212 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 330, column: 19)
!1213 = !DILocation(line: 330, column: 19, scope: !1165, inlinedAt: !1174)
!1214 = !DILocation(line: 331, column: 17, scope: !1212, inlinedAt: !1174)
!1215 = !DILocation(line: 332, column: 15, scope: !1165, inlinedAt: !1174)
!1216 = !DILocation(line: 332, column: 21, scope: !1165, inlinedAt: !1174)
!1217 = !DILocation(line: 332, column: 30, scope: !1165, inlinedAt: !1174)
!1218 = !DILocation(line: 332, column: 51, scope: !1165, inlinedAt: !1174)
!1219 = !DILocation(line: 334, column: 29, scope: !1172, inlinedAt: !1174)
!1220 = !DILocation(line: 334, column: 35, scope: !1172, inlinedAt: !1174)
!1221 = !DILocation(line: 324, column: 27, scope: !1165, inlinedAt: !1174)
!1222 = !DILocation(line: 334, column: 19, scope: !1172, inlinedAt: !1174)
!1223 = !DILocation(line: 335, column: 22, scope: !1172, inlinedAt: !1174)
!1224 = !DILocation(line: 335, column: 28, scope: !1172, inlinedAt: !1174)
!1225 = !DILocation(line: 335, column: 19, scope: !1172, inlinedAt: !1174)
!1226 = !DILocation(line: 344, column: 21, scope: !1165, inlinedAt: !1174)
!1227 = !DILocation(line: 344, column: 15, scope: !1165, inlinedAt: !1174)
!1228 = !DILocation(line: 347, column: 13, scope: !1166, inlinedAt: !1174)
!1229 = !DILocation(line: 337, column: 19, scope: !1171, inlinedAt: !1174)
!1230 = !DILocation(line: 337, column: 25, scope: !1171, inlinedAt: !1174)
!1231 = !DILocation(line: 338, column: 23, scope: !1232, inlinedAt: !1174)
!1232 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 338, column: 23)
!1233 = !DILocation(line: 338, column: 51, scope: !1232, inlinedAt: !1174)
!1234 = !DILocation(line: 338, column: 23, scope: !1171, inlinedAt: !1174)
!1235 = !DILocation(line: 339, column: 21, scope: !1232, inlinedAt: !1174)
!1236 = !DILocation(line: 340, column: 41, scope: !1171, inlinedAt: !1174)
!1237 = !DILocation(line: 341, column: 19, scope: !1171, inlinedAt: !1174)
!1238 = !DILocation(line: 342, column: 17, scope: !1172, inlinedAt: !1174)
!1239 = !DILocation(line: 349, column: 15, scope: !1240, inlinedAt: !1174)
!1240 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 349, column: 15)
!1241 = !DILocation(line: 349, column: 41, scope: !1240, inlinedAt: !1174)
!1242 = !DILocation(line: 349, column: 15, scope: !1161, inlinedAt: !1174)
!1243 = !DILocation(line: 350, column: 13, scope: !1240, inlinedAt: !1174)
!1244 = !DILocation(line: 304, column: 22, scope: !1162, inlinedAt: !1174)
!1245 = distinct !{!1245, !1246, !1247}
!1246 = !DILocation(line: 304, column: 7, scope: !1163)
!1247 = !DILocation(line: 351, column: 9, scope: !1163)
!1248 = !DILocation(line: 353, column: 11, scope: !1249, inlinedAt: !1174)
!1249 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 353, column: 11)
!1250 = !DILocation(line: 353, column: 38, scope: !1249, inlinedAt: !1174)
!1251 = !DILocation(line: 353, column: 11, scope: !1157, inlinedAt: !1174)
!1252 = !DILocation(line: 354, column: 9, scope: !1249, inlinedAt: !1174)
!1253 = !DILocation(line: 706, column: 1, scope: !743)
!1254 = distinct !DISubprogram(name: "seq_fast", scope: !3, file: !3, line: 449, type: !1255, isLocal: true, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1257)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!85, !31, !31}
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1272, !1273, !1274, !1275}
!1258 = !DILocalVariable(name: "a", arg: 1, scope: !1254, file: !3, line: 449, type: !31)
!1259 = !DILocalVariable(name: "b", arg: 2, scope: !1254, file: !3, line: 449, type: !31)
!1260 = !DILocalVariable(name: "inf", scope: !1254, file: !3, line: 451, type: !85)
!1261 = !DILocalVariable(name: "p_len", scope: !1254, file: !3, line: 458, type: !63)
!1262 = !DILocalVariable(name: "q_len", scope: !1254, file: !3, line: 459, type: !63)
!1263 = !DILocalVariable(name: "inc_size", scope: !1254, file: !3, line: 463, type: !63)
!1264 = !DILocalVariable(name: "p0", scope: !1254, file: !3, line: 466, type: !22)
!1265 = !DILocalVariable(name: "p", scope: !1254, file: !3, line: 467, type: !22)
!1266 = !DILocalVariable(name: "q", scope: !1254, file: !3, line: 468, type: !22)
!1267 = !DILocalVariable(name: "q0", scope: !1254, file: !3, line: 469, type: !22)
!1268 = !DILocalVariable(name: "ok", scope: !1254, file: !3, line: 478, type: !85)
!1269 = !DILocalVariable(name: "buf_size", scope: !1270, file: !3, line: 484, type: !63)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 480, column: 5)
!1271 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 479, column: 7)
!1272 = !DILocalVariable(name: "buf", scope: !1270, file: !3, line: 485, type: !22)
!1273 = !DILocalVariable(name: "buf_end", scope: !1270, file: !3, line: 486, type: !31)
!1274 = !DILocalVariable(name: "bufp", scope: !1270, file: !3, line: 488, type: !22)
!1275 = !DILocalVariable(name: "buf_offset", scope: !1276, file: !3, line: 508, type: !63)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 507, column: 17)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 506, column: 19)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 501, column: 13)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 500, column: 15)
!1280 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 495, column: 9)
!1281 = !DILocation(line: 449, column: 23, scope: !1254)
!1282 = !DILocation(line: 449, column: 38, scope: !1254)
!1283 = !DILocation(line: 451, column: 14, scope: !1254)
!1284 = !DILocalVariable(name: "s", arg: 1, scope: !1285, file: !3, line: 433, type: !31)
!1285 = distinct !DISubprogram(name: "trim_leading_zeros", scope: !3, file: !3, line: 433, type: !1286, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!31, !31}
!1288 = !{!1284, !1289}
!1289 = !DILocalVariable(name: "p", scope: !1285, file: !3, line: 435, type: !31)
!1290 = !DILocation(line: 433, column: 33, scope: !1285, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 455, column: 7, scope: !1254)
!1292 = !DILocation(line: 435, column: 15, scope: !1285, inlinedAt: !1291)
!1293 = !DILocation(line: 436, column: 3, scope: !1285, inlinedAt: !1291)
!1294 = !DILocation(line: 436, column: 10, scope: !1285, inlinedAt: !1291)
!1295 = !DILocation(line: 437, column: 5, scope: !1285, inlinedAt: !1291)
!1296 = distinct !{!1296, !1297, !1298}
!1297 = !DILocation(line: 436, column: 3, scope: !1285)
!1298 = !DILocation(line: 437, column: 7, scope: !1285)
!1299 = !DILocation(line: 440, column: 16, scope: !1300, inlinedAt: !1291)
!1300 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 440, column: 7)
!1301 = !DILocation(line: 441, column: 5, scope: !1300, inlinedAt: !1291)
!1302 = !DILocation(line: 440, column: 7, scope: !1285, inlinedAt: !1291)
!1303 = !DILocation(line: 433, column: 33, scope: !1285, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 456, column: 7, scope: !1254)
!1305 = !DILocation(line: 435, column: 15, scope: !1285, inlinedAt: !1304)
!1306 = !DILocation(line: 436, column: 3, scope: !1285, inlinedAt: !1304)
!1307 = !DILocation(line: 436, column: 10, scope: !1285, inlinedAt: !1304)
!1308 = !DILocation(line: 437, column: 5, scope: !1285, inlinedAt: !1304)
!1309 = !DILocation(line: 440, column: 16, scope: !1300, inlinedAt: !1304)
!1310 = !DILocation(line: 441, column: 5, scope: !1300, inlinedAt: !1304)
!1311 = !DILocation(line: 440, column: 7, scope: !1285, inlinedAt: !1304)
!1312 = !DILocation(line: 458, column: 18, scope: !1254)
!1313 = !DILocation(line: 458, column: 10, scope: !1254)
!1314 = !DILocation(line: 459, column: 18, scope: !1254)
!1315 = !DILocation(line: 459, column: 28, scope: !1254)
!1316 = !DILocation(line: 459, column: 10, scope: !1254)
!1317 = !DILocation(line: 463, column: 21, scope: !1254)
!1318 = !DILocation(line: 463, column: 10, scope: !1254)
!1319 = !DILocation(line: 466, column: 32, scope: !1254)
!1320 = !DILocation(line: 466, column: 14, scope: !1254)
!1321 = !DILocation(line: 466, column: 9, scope: !1254)
!1322 = !DILocation(line: 467, column: 24, scope: !1254)
!1323 = !DILocation(line: 467, column: 35, scope: !1254)
!1324 = !DILocation(line: 467, column: 13, scope: !1254)
!1325 = !DILocation(line: 467, column: 9, scope: !1254)
!1326 = !DILocation(line: 470, column: 7, scope: !1254)
!1327 = !DILocation(line: 472, column: 12, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 471, column: 5)
!1329 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 470, column: 7)
!1330 = !DILocation(line: 469, column: 9, scope: !1254)
!1331 = !DILocation(line: 473, column: 22, scope: !1328)
!1332 = !DILocation(line: 473, column: 33, scope: !1328)
!1333 = !DILocation(line: 473, column: 51, scope: !1328)
!1334 = !DILocation(line: 473, column: 11, scope: !1328)
!1335 = !DILocation(line: 468, column: 9, scope: !1254)
!1336 = !DILocalVariable(name: "a", arg: 1, scope: !1337, file: !3, line: 421, type: !31)
!1337 = distinct !DISubprogram(name: "cmp", scope: !3, file: !3, line: 421, type: !1338, isLocal: true, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1340)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!25, !31, !63, !31, !63}
!1340 = !{!1336, !1341, !1342, !1343}
!1341 = !DILocalVariable(name: "a_len", arg: 2, scope: !1337, file: !3, line: 421, type: !63)
!1342 = !DILocalVariable(name: "b", arg: 3, scope: !1337, file: !3, line: 421, type: !31)
!1343 = !DILocalVariable(name: "b_len", arg: 4, scope: !1337, file: !3, line: 421, type: !63)
!1344 = !DILocation(line: 421, column: 18, scope: !1337, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 478, column: 20, scope: !1254)
!1346 = !DILocation(line: 421, column: 28, scope: !1337, inlinedAt: !1345)
!1347 = !DILocation(line: 421, column: 47, scope: !1337, inlinedAt: !1345)
!1348 = !DILocation(line: 421, column: 57, scope: !1337, inlinedAt: !1345)
!1349 = !DILocation(line: 423, column: 13, scope: !1350, inlinedAt: !1345)
!1350 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 423, column: 7)
!1351 = !DILocation(line: 423, column: 7, scope: !1337, inlinedAt: !1345)
!1352 = !DILocation(line: 425, column: 13, scope: !1353, inlinedAt: !1345)
!1353 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 425, column: 7)
!1354 = !DILocation(line: 425, column: 7, scope: !1337, inlinedAt: !1345)
!1355 = !DILocation(line: 427, column: 11, scope: !1337, inlinedAt: !1345)
!1356 = !DILocation(line: 478, column: 45, scope: !1254)
!1357 = !DILocation(line: 479, column: 7, scope: !1254)
!1358 = !DILocation(line: 484, column: 25, scope: !1270)
!1359 = !DILocation(line: 484, column: 14, scope: !1270)
!1360 = !DILocation(line: 485, column: 19, scope: !1270)
!1361 = !DILocation(line: 485, column: 13, scope: !1270)
!1362 = !DILocation(line: 486, column: 33, scope: !1270)
!1363 = !DILocation(line: 486, column: 19, scope: !1270)
!1364 = !DILocation(line: 488, column: 13, scope: !1270)
!1365 = !DILocalVariable(name: "__dest", arg: 1, scope: !1366, file: !942, line: 45, type: !1369)
!1366 = distinct !DISubprogram(name: "mempcpy", scope: !942, file: !942, line: 45, type: !1367, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1373)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!24, !1369, !1370, !63}
!1369 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!1370 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1371)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1373 = !{!1365, !1374, !1375}
!1374 = !DILocalVariable(name: "__src", arg: 2, scope: !1366, file: !942, line: 45, type: !1370)
!1375 = !DILocalVariable(name: "__len", arg: 3, scope: !1366, file: !942, line: 45, type: !63)
!1376 = !DILocation(line: 45, column: 1, scope: !1366, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 491, column: 14, scope: !1270)
!1378 = !DILocation(line: 48, column: 57, scope: !1366, inlinedAt: !1377)
!1379 = !DILocation(line: 48, column: 10, scope: !1366, inlinedAt: !1377)
!1380 = !DILocation(line: 494, column: 7, scope: !1270)
!1381 = !DILocation(line: 0, scope: !1278)
!1382 = !DILocation(line: 0, scope: !1276)
!1383 = !DILocation(line: 0, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 520, column: 13)
!1385 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 519, column: 15)
!1386 = !DILocation(line: 423, column: 13, scope: !1350, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 494, column: 21, scope: !1270)
!1388 = !DILocation(line: 494, column: 18, scope: !1270)
!1389 = !DILocation(line: 421, column: 18, scope: !1337, inlinedAt: !1387)
!1390 = !DILocation(line: 421, column: 28, scope: !1337, inlinedAt: !1387)
!1391 = !DILocation(line: 421, column: 47, scope: !1337, inlinedAt: !1387)
!1392 = !DILocation(line: 421, column: 57, scope: !1337, inlinedAt: !1387)
!1393 = !DILocation(line: 425, column: 13, scope: !1353, inlinedAt: !1387)
!1394 = !DILocation(line: 425, column: 7, scope: !1337, inlinedAt: !1387)
!1395 = !DILocation(line: 427, column: 11, scope: !1337, inlinedAt: !1387)
!1396 = !DILocation(line: 494, column: 46, scope: !1270)
!1397 = !DILocation(line: 496, column: 22, scope: !1280)
!1398 = !DILocation(line: 496, column: 21, scope: !1280)
!1399 = !DILocation(line: 496, column: 16, scope: !1280)
!1400 = !DILocation(line: 496, column: 19, scope: !1280)
!1401 = !DILocalVariable(name: "s", scope: !1402, file: !3, line: 404, type: !22)
!1402 = distinct !DISubprogram(name: "incr", scope: !3, file: !3, line: 402, type: !1403, isLocal: true, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1405)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !746, !236}
!1405 = !{!1406, !1407, !1401, !1408}
!1406 = !DILocalVariable(name: "s0", arg: 1, scope: !1402, file: !3, line: 402, type: !746)
!1407 = !DILocalVariable(name: "s_len", arg: 2, scope: !1402, file: !3, line: 402, type: !236)
!1408 = !DILocalVariable(name: "endp", scope: !1402, file: !3, line: 405, type: !22)
!1409 = !DILocation(line: 404, column: 9, scope: !1402, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 497, column: 11, scope: !1280)
!1411 = !DILocation(line: 405, column: 18, scope: !1402, inlinedAt: !1410)
!1412 = !DILocation(line: 405, column: 27, scope: !1402, inlinedAt: !1410)
!1413 = !DILocation(line: 405, column: 9, scope: !1402, inlinedAt: !1410)
!1414 = !DILocation(line: 407, column: 3, scope: !1402, inlinedAt: !1410)
!1415 = !DILocation(line: 0, scope: !1416, inlinedAt: !1410)
!1416 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 408, column: 5)
!1417 = !DILocation(line: 409, column: 18, scope: !1418, inlinedAt: !1410)
!1418 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 409, column: 11)
!1419 = !DILocation(line: 409, column: 21, scope: !1418, inlinedAt: !1410)
!1420 = !DILocation(line: 409, column: 11, scope: !1416, inlinedAt: !1410)
!1421 = !DILocation(line: 411, column: 12, scope: !1416, inlinedAt: !1410)
!1422 = !DILocation(line: 411, column: 15, scope: !1416, inlinedAt: !1410)
!1423 = !DILocation(line: 413, column: 15, scope: !1402, inlinedAt: !1410)
!1424 = !DILocation(line: 412, column: 5, scope: !1416, inlinedAt: !1410)
!1425 = distinct !{!1425, !1426, !1427}
!1426 = !DILocation(line: 407, column: 3, scope: !1402)
!1427 = !DILocation(line: 413, column: 19, scope: !1402)
!1428 = !DILocation(line: 414, column: 12, scope: !1402, inlinedAt: !1410)
!1429 = !DILocation(line: 415, column: 3, scope: !1402, inlinedAt: !1410)
!1430 = !DILocation(line: 416, column: 1, scope: !1402, inlinedAt: !1410)
!1431 = !DILocation(line: 0, scope: !1280)
!1432 = !DILocation(line: 500, column: 21, scope: !1279)
!1433 = !DILocation(line: 500, column: 15, scope: !1280)
!1434 = !DILocation(line: 502, column: 24, scope: !1278)
!1435 = !DILocation(line: 503, column: 43, scope: !1278)
!1436 = !DILocation(line: 503, column: 20, scope: !1278)
!1437 = !DILocation(line: 504, column: 31, scope: !1278)
!1438 = !DILocation(line: 504, column: 50, scope: !1278)
!1439 = !DILocation(line: 504, column: 19, scope: !1278)
!1440 = !DILocation(line: 506, column: 45, scope: !1277)
!1441 = !DILocation(line: 506, column: 28, scope: !1277)
!1442 = !DILocation(line: 506, column: 19, scope: !1278)
!1443 = !DILocation(line: 508, column: 44, scope: !1276)
!1444 = !DILocation(line: 508, column: 26, scope: !1276)
!1445 = !DILocation(line: 510, column: 25, scope: !1276)
!1446 = !DILocation(line: 511, column: 33, scope: !1276)
!1447 = !DILocation(line: 512, column: 30, scope: !1276)
!1448 = !DILocation(line: 513, column: 17, scope: !1276)
!1449 = !DILocation(line: 0, scope: !1254)
!1450 = !DILocation(line: 0, scope: !1270)
!1451 = !DILocation(line: 45, column: 1, scope: !1366, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 516, column: 18, scope: !1280)
!1453 = !DILocation(line: 48, column: 57, scope: !1366, inlinedAt: !1452)
!1454 = !DILocation(line: 48, column: 10, scope: !1366, inlinedAt: !1452)
!1455 = !DILocation(line: 519, column: 23, scope: !1385)
!1456 = !DILocation(line: 519, column: 37, scope: !1385)
!1457 = !DILocation(line: 519, column: 15, scope: !1280)
!1458 = !DILocation(line: 521, column: 19, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 521, column: 19)
!1460 = !DILocation(line: 521, column: 55, scope: !1459)
!1461 = !DILocation(line: 521, column: 19, scope: !1384)
!1462 = distinct !{!1462, !1380, !1463}
!1463 = !DILocation(line: 525, column: 9, scope: !1270)
!1464 = !DILocation(line: 522, column: 17, scope: !1459)
!1465 = !DILocation(line: 528, column: 12, scope: !1270)
!1466 = !DILocation(line: 528, column: 15, scope: !1270)
!1467 = !DILocation(line: 529, column: 11, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 529, column: 11)
!1469 = !DILocation(line: 529, column: 47, scope: !1468)
!1470 = !DILocation(line: 529, column: 11, scope: !1270)
!1471 = !DILocation(line: 530, column: 9, scope: !1468)
!1472 = !DILocation(line: 535, column: 3, scope: !1254)
!1473 = !DILocation(line: 536, column: 3, scope: !1254)
!1474 = !DILocation(line: 537, column: 3, scope: !1254)
!1475 = distinct !DISubprogram(name: "scan_arg", scope: !3, file: !3, line: 141, type: !1476, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!57, !31}
!1478 = !{!1479, !1480, !1481, !1482, !1485, !1486}
!1479 = !DILocalVariable(name: "arg", arg: 1, scope: !1475, file: !3, line: 141, type: !31)
!1480 = !DILocalVariable(name: "ret", scope: !1475, file: !3, line: 143, type: !57)
!1481 = !DILocalVariable(name: "decimal_point", scope: !1475, file: !3, line: 167, type: !31)
!1482 = !DILocalVariable(name: "fraction_len", scope: !1483, file: !3, line: 174, type: !63)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 173, column: 5)
!1484 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 172, column: 7)
!1485 = !DILocalVariable(name: "e", scope: !1483, file: !3, line: 187, type: !31)
!1486 = !DILocalVariable(name: "exponent", scope: !1487, file: !3, line: 192, type: !1489)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 191, column: 9)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 190, column: 11)
!1489 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1490 = !DILocation(line: 141, column: 23, scope: !1475)
!1491 = !DILocation(line: 143, column: 11, scope: !1475)
!1492 = !DILocation(line: 145, column: 35, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 145, column: 7)
!1494 = !DILocation(line: 145, column: 9, scope: !1493)
!1495 = !DILocation(line: 145, column: 7, scope: !1475)
!1496 = !DILocation(line: 147, column: 20, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 146, column: 5)
!1498 = !DILocation(line: 147, column: 62, scope: !1497)
!1499 = !DILocation(line: 147, column: 7, scope: !1497)
!1500 = !DILocation(line: 148, column: 7, scope: !1497)
!1501 = !DILocation(line: 151, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 151, column: 7)
!1503 = !{!1504, !1505, i64 0}
!1504 = !{!"operand", !1505, i64 0, !1506, i64 16, !781, i64 24}
!1505 = !{!"long double", !694, i64 0}
!1506 = !{!"long", !694, i64 0}
!1507 = !DILocation(line: 151, column: 7, scope: !1475)
!1508 = !DILocation(line: 159, column: 10, scope: !1475)
!1509 = !DILocation(line: 153, column: 20, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 152, column: 5)
!1511 = !DILocation(line: 153, column: 50, scope: !1510)
!1512 = !DILocation(line: 154, column: 14, scope: !1510)
!1513 = !DILocation(line: 153, column: 7, scope: !1510)
!1514 = !DILocation(line: 155, column: 7, scope: !1510)
!1515 = !{!1516, !1516, i64 0}
!1516 = !{!"short", !694, i64 0}
!1517 = !DILocation(line: 159, column: 44, scope: !1475)
!1518 = !DILocation(line: 159, column: 36, scope: !1475)
!1519 = !DILocation(line: 160, column: 8, scope: !1475)
!1520 = distinct !{!1520, !1521, !1519}
!1521 = !DILocation(line: 159, column: 3, scope: !1475)
!1522 = !DILocation(line: 163, column: 7, scope: !1475)
!1523 = !DILocation(line: 163, column: 13, scope: !1475)
!1524 = !{!1504, !1506, i64 16}
!1525 = !DILocation(line: 164, column: 7, scope: !1475)
!1526 = !DILocation(line: 164, column: 17, scope: !1475)
!1527 = !{!1504, !781, i64 24}
!1528 = !DILocation(line: 167, column: 31, scope: !1475)
!1529 = !DILocation(line: 167, column: 15, scope: !1475)
!1530 = !DILocation(line: 168, column: 9, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 168, column: 7)
!1532 = !DILocation(line: 168, column: 23, scope: !1531)
!1533 = !DILocation(line: 168, column: 28, scope: !1531)
!1534 = !DILocation(line: 168, column: 7, scope: !1475)
!1535 = !DILocation(line: 169, column: 19, scope: !1531)
!1536 = !DILocation(line: 169, column: 5, scope: !1531)
!1537 = !DILocation(line: 172, column: 13, scope: !1484)
!1538 = !DILocation(line: 172, column: 9, scope: !1484)
!1539 = !DILocation(line: 172, column: 37, scope: !1484)
!1540 = !DILocation(line: 172, column: 34, scope: !1484)
!1541 = !DILocation(line: 174, column: 14, scope: !1483)
!1542 = !DILocation(line: 175, column: 19, scope: !1483)
!1543 = !DILocation(line: 175, column: 17, scope: !1483)
!1544 = !DILocation(line: 177, column: 11, scope: !1483)
!1545 = !DILocation(line: 179, column: 49, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 178, column: 9)
!1547 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 177, column: 11)
!1548 = !DILocation(line: 179, column: 26, scope: !1546)
!1549 = !DILocation(line: 180, column: 28, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 180, column: 15)
!1551 = !DILocation(line: 180, column: 15, scope: !1546)
!1552 = !DILocation(line: 181, column: 29, scope: !1550)
!1553 = !DILocation(line: 181, column: 27, scope: !1550)
!1554 = !DILocation(line: 182, column: 38, scope: !1546)
!1555 = !DILocation(line: 182, column: 25, scope: !1546)
!1556 = !DILocation(line: 184, column: 42, scope: !1546)
!1557 = !DILocation(line: 185, column: 28, scope: !1546)
!1558 = !DILocation(line: 185, column: 33, scope: !1546)
!1559 = !DILocation(line: 182, column: 21, scope: !1546)
!1560 = !DILocation(line: 186, column: 9, scope: !1546)
!1561 = !DILocation(line: 0, scope: !1483)
!1562 = !DILocation(line: 187, column: 23, scope: !1483)
!1563 = !DILocation(line: 187, column: 19, scope: !1483)
!1564 = !DILocation(line: 188, column: 13, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 188, column: 11)
!1566 = !DILocation(line: 188, column: 11, scope: !1483)
!1567 = !DILocation(line: 189, column: 13, scope: !1565)
!1568 = !DILocation(line: 190, column: 11, scope: !1488)
!1569 = !DILocation(line: 190, column: 11, scope: !1483)
!1570 = !DILocation(line: 192, column: 37, scope: !1487)
!1571 = !DILocation(line: 192, column: 27, scope: !1487)
!1572 = !DILocation(line: 192, column: 16, scope: !1487)
!1573 = !DILocation(line: 193, column: 37, scope: !1487)
!1574 = !DILocation(line: 0, scope: !1487)
!1575 = !DILocation(line: 194, column: 45, scope: !1487)
!1576 = !DILocation(line: 193, column: 28, scope: !1487)
!1577 = !DILocation(line: 193, column: 25, scope: !1487)
!1578 = !DILocation(line: 196, column: 24, scope: !1487)
!1579 = !DILocation(line: 196, column: 42, scope: !1487)
!1580 = !DILocation(line: 196, column: 21, scope: !1487)
!1581 = !DILocation(line: 196, column: 37, scope: !1487)
!1582 = !DILocation(line: 198, column: 15, scope: !1487)
!1583 = !DILocation(line: 200, column: 19, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 199, column: 13)
!1585 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 198, column: 15)
!1586 = !DILocation(line: 202, column: 42, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 202, column: 23)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 201, column: 17)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 200, column: 19)
!1590 = !DILocation(line: 202, column: 25, scope: !1587)
!1591 = !DILocation(line: 202, column: 23, scope: !1588)
!1592 = !DILocation(line: 203, column: 30, scope: !1587)
!1593 = !DILocation(line: 203, column: 21, scope: !1587)
!1594 = !DILocation(line: 206, column: 26, scope: !1589)
!1595 = !DILocation(line: 0, scope: !1589)
!1596 = !DILocation(line: 207, column: 26, scope: !1584)
!1597 = !DILocation(line: 208, column: 13, scope: !1584)
!1598 = !DILocation(line: 211, column: 33, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 211, column: 19)
!1600 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 210, column: 13)
!1601 = !DILocation(line: 211, column: 50, scope: !1599)
!1602 = !DILocation(line: 211, column: 58, scope: !1599)
!1603 = !DILocation(line: 211, column: 55, scope: !1599)
!1604 = !DILocation(line: 212, column: 26, scope: !1599)
!1605 = !DILocation(line: 212, column: 17, scope: !1599)
!1606 = !DILocation(line: 213, column: 27, scope: !1600)
!1607 = !DILocation(line: 213, column: 24, scope: !1600)
!1608 = !DILocation(line: 215, column: 21, scope: !1487)
!1609 = !DILocation(line: 0, scope: !1600)
!1610 = !DILocation(line: 216, column: 9, scope: !1487)
!1611 = !DILocation(line: 220, column: 1, scope: !1475)
!1612 = distinct !DISubprogram(name: "io_error", scope: !3, file: !3, line: 283, type: !700, isLocal: true, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !90)
!1613 = !DILocation(line: 286, column: 3, scope: !1612)
!1614 = !DILocation(line: 287, column: 3, scope: !1612)
!1615 = distinct !DISubprogram(name: "c_strtold", scope: !120, file: !120, line: 66, type: !1616, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !94, retainedNodes: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!61, !31, !746}
!1618 = !{!1619, !1620, !1621, !1622}
!1619 = !DILocalVariable(name: "nptr", arg: 1, scope: !1615, file: !120, line: 66, type: !31)
!1620 = !DILocalVariable(name: "endptr", arg: 2, scope: !1615, file: !120, line: 66, type: !746)
!1621 = !DILocalVariable(name: "r", scope: !1615, file: !120, line: 68, type: !61)
!1622 = !DILocalVariable(name: "locale", scope: !1615, file: !120, line: 72, type: !97)
!1623 = !DILocation(line: 66, column: 23, scope: !1615)
!1624 = !DILocation(line: 66, column: 36, scope: !1615)
!1625 = !DILocation(line: 58, column: 8, scope: !1626, inlinedAt: !1630)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !120, line: 58, column: 7)
!1627 = distinct !DISubprogram(name: "c_locale", scope: !120, file: !120, line: 56, type: !1628, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !94, retainedNodes: !90)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!97}
!1630 = distinct !DILocation(line: 72, column: 21, scope: !1615)
!1631 = !DILocation(line: 58, column: 7, scope: !1627, inlinedAt: !1630)
!1632 = !DILocation(line: 59, column: 22, scope: !1626, inlinedAt: !1630)
!1633 = !DILocation(line: 59, column: 20, scope: !1626, inlinedAt: !1630)
!1634 = !DILocation(line: 59, column: 5, scope: !1626, inlinedAt: !1630)
!1635 = !DILocation(line: 60, column: 10, scope: !1627, inlinedAt: !1630)
!1636 = !DILocation(line: 72, column: 12, scope: !1615)
!1637 = !DILocation(line: 73, column: 8, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1615, file: !120, line: 73, column: 7)
!1639 = !DILocation(line: 73, column: 7, scope: !1615)
!1640 = !DILocation(line: 75, column: 11, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !120, line: 75, column: 11)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !120, line: 74, column: 5)
!1643 = !DILocation(line: 75, column: 11, scope: !1642)
!1644 = !DILocation(line: 76, column: 17, scope: !1641)
!1645 = !DILocation(line: 76, column: 9, scope: !1641)
!1646 = !DILocation(line: 80, column: 7, scope: !1615)
!1647 = !DILocation(line: 68, column: 10, scope: !1615)
!1648 = !DILocation(line: 111, column: 3, scope: !1615)
!1649 = !DILocation(line: 0, scope: !1642)
!1650 = !DILocation(line: 112, column: 1, scope: !1615)
!1651 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !129, file: !129, line: 51, type: !667, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !124, retainedNodes: !1652)
!1652 = !{!1653}
!1653 = !DILocalVariable(name: "file", arg: 1, scope: !1651, file: !129, line: 51, type: !31)
!1654 = !DILocation(line: 51, column: 41, scope: !1651)
!1655 = !DILocation(line: 53, column: 13, scope: !1651)
!1656 = !DILocation(line: 54, column: 1, scope: !1651)
!1657 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !129, file: !129, line: 88, type: !1658, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !124, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !85}
!1660 = !{!1661}
!1661 = !DILocalVariable(name: "ignore", arg: 1, scope: !1657, file: !129, line: 88, type: !85)
!1662 = !DILocation(line: 88, column: 37, scope: !1657)
!1663 = !DILocation(line: 90, column: 16, scope: !1657)
!1664 = !{!1665, !1665, i64 0}
!1665 = !{!"_Bool", !694, i64 0}
!1666 = !DILocation(line: 91, column: 1, scope: !1657)
!1667 = distinct !DISubprogram(name: "close_stdout", scope: !129, file: !129, line: 117, type: !700, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !124, retainedNodes: !1668)
!1668 = !{!1669}
!1669 = !DILocalVariable(name: "write_error", scope: !1670, file: !129, line: 122, type: !31)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !129, line: 121, column: 5)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !129, line: 119, column: 7)
!1672 = !DILocation(line: 119, column: 21, scope: !1671)
!1673 = !DILocation(line: 119, column: 7, scope: !1671)
!1674 = !DILocation(line: 119, column: 29, scope: !1671)
!1675 = !DILocation(line: 120, column: 7, scope: !1671)
!1676 = !DILocation(line: 120, column: 12, scope: !1671)
!1677 = !{i8 0, i8 2}
!1678 = !DILocation(line: 120, column: 25, scope: !1671)
!1679 = !DILocation(line: 120, column: 28, scope: !1671)
!1680 = !DILocation(line: 120, column: 34, scope: !1671)
!1681 = !DILocation(line: 119, column: 7, scope: !1667)
!1682 = !DILocation(line: 122, column: 33, scope: !1670)
!1683 = !DILocation(line: 122, column: 19, scope: !1670)
!1684 = !DILocation(line: 123, column: 11, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1670, file: !129, line: 123, column: 11)
!1686 = !DILocation(line: 0, scope: !1685)
!1687 = !DILocation(line: 123, column: 11, scope: !1670)
!1688 = !DILocation(line: 124, column: 36, scope: !1685)
!1689 = !DILocation(line: 124, column: 9, scope: !1685)
!1690 = !DILocation(line: 127, column: 9, scope: !1685)
!1691 = !DILocation(line: 129, column: 14, scope: !1670)
!1692 = !DILocation(line: 129, column: 7, scope: !1670)
!1693 = !DILocation(line: 134, column: 42, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1667, file: !129, line: 134, column: 7)
!1695 = !DILocation(line: 134, column: 28, scope: !1694)
!1696 = !DILocation(line: 134, column: 50, scope: !1694)
!1697 = !DILocation(line: 134, column: 7, scope: !1667)
!1698 = !DILocation(line: 135, column: 12, scope: !1694)
!1699 = !DILocation(line: 135, column: 5, scope: !1694)
!1700 = !DILocation(line: 136, column: 1, scope: !1667)
!1701 = distinct !DISubprogram(name: "set_program_name", scope: !143, file: !143, line: 39, type: !667, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !139, retainedNodes: !1702)
!1702 = !{!1703, !1704, !1705}
!1703 = !DILocalVariable(name: "argv0", arg: 1, scope: !1701, file: !143, line: 39, type: !31)
!1704 = !DILocalVariable(name: "slash", scope: !1701, file: !143, line: 46, type: !31)
!1705 = !DILocalVariable(name: "base", scope: !1701, file: !143, line: 47, type: !31)
!1706 = !DILocation(line: 39, column: 31, scope: !1701)
!1707 = !DILocation(line: 51, column: 13, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1701, file: !143, line: 51, column: 7)
!1709 = !DILocation(line: 51, column: 7, scope: !1701)
!1710 = !DILocation(line: 55, column: 14, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !143, line: 52, column: 5)
!1712 = !DILocation(line: 54, column: 7, scope: !1711)
!1713 = !DILocation(line: 56, column: 7, scope: !1711)
!1714 = !DILocation(line: 59, column: 11, scope: !1701)
!1715 = !DILocation(line: 46, column: 15, scope: !1701)
!1716 = !DILocation(line: 60, column: 17, scope: !1701)
!1717 = !DILocation(line: 60, column: 33, scope: !1701)
!1718 = !DILocation(line: 60, column: 11, scope: !1701)
!1719 = !DILocation(line: 47, column: 15, scope: !1701)
!1720 = !DILocation(line: 61, column: 12, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1701, file: !143, line: 61, column: 7)
!1722 = !DILocation(line: 61, column: 20, scope: !1721)
!1723 = !DILocation(line: 61, column: 25, scope: !1721)
!1724 = !DILocation(line: 61, column: 42, scope: !1721)
!1725 = !DILocation(line: 61, column: 28, scope: !1721)
!1726 = !DILocation(line: 61, column: 61, scope: !1721)
!1727 = !DILocation(line: 61, column: 7, scope: !1701)
!1728 = !DILocation(line: 64, column: 11, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !143, line: 64, column: 11)
!1730 = distinct !DILexicalBlock(scope: !1721, file: !143, line: 62, column: 5)
!1731 = !DILocation(line: 64, column: 36, scope: !1729)
!1732 = !DILocation(line: 64, column: 11, scope: !1730)
!1733 = !DILocation(line: 66, column: 24, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1729, file: !143, line: 65, column: 9)
!1735 = !DILocation(line: 70, column: 41, scope: !1734)
!1736 = !DILocation(line: 72, column: 9, scope: !1734)
!1737 = !DILocation(line: 84, column: 16, scope: !1701)
!1738 = !DILocation(line: 90, column: 27, scope: !1701)
!1739 = !DILocation(line: 92, column: 1, scope: !1701)
!1740 = distinct !DISubprogram(name: "clone_quoting_options", scope: !172, file: !172, line: 122, type: !1741, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !1744)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!1743, !1743}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1744 = !{!1745, !1746, !1747}
!1745 = !DILocalVariable(name: "o", arg: 1, scope: !1740, file: !172, line: 122, type: !1743)
!1746 = !DILocalVariable(name: "e", scope: !1740, file: !172, line: 124, type: !25)
!1747 = !DILocalVariable(name: "p", scope: !1740, file: !172, line: 125, type: !1743)
!1748 = !DILocation(line: 122, column: 48, scope: !1740)
!1749 = !DILocation(line: 124, column: 11, scope: !1740)
!1750 = !DILocation(line: 124, column: 7, scope: !1740)
!1751 = !DILocation(line: 125, column: 40, scope: !1740)
!1752 = !DILocation(line: 125, column: 31, scope: !1740)
!1753 = !DILocation(line: 125, column: 27, scope: !1740)
!1754 = !DILocation(line: 127, column: 9, scope: !1740)
!1755 = !DILocation(line: 128, column: 3, scope: !1740)
!1756 = distinct !DISubprogram(name: "get_quoting_style", scope: !172, file: !172, line: 133, type: !1757, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !1761)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!149, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!1761 = !{!1762}
!1762 = !DILocalVariable(name: "o", arg: 1, scope: !1756, file: !172, line: 133, type: !1759)
!1763 = !DILocation(line: 133, column: 50, scope: !1756)
!1764 = !DILocation(line: 135, column: 11, scope: !1756)
!1765 = !DILocation(line: 135, column: 46, scope: !1756)
!1766 = !{!1767, !694, i64 0}
!1767 = !{!"quoting_options", !694, i64 0, !781, i64 4, !694, i64 8, !693, i64 40, !693, i64 48}
!1768 = !DILocation(line: 135, column: 3, scope: !1756)
!1769 = distinct !DISubprogram(name: "set_quoting_style", scope: !172, file: !172, line: 141, type: !1770, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !1743, !149}
!1772 = !{!1773, !1774}
!1773 = !DILocalVariable(name: "o", arg: 1, scope: !1769, file: !172, line: 141, type: !1743)
!1774 = !DILocalVariable(name: "s", arg: 2, scope: !1769, file: !172, line: 141, type: !149)
!1775 = !DILocation(line: 141, column: 44, scope: !1769)
!1776 = !DILocation(line: 141, column: 66, scope: !1769)
!1777 = !DILocation(line: 143, column: 4, scope: !1769)
!1778 = !DILocation(line: 143, column: 39, scope: !1769)
!1779 = !DILocation(line: 143, column: 45, scope: !1769)
!1780 = !DILocation(line: 144, column: 1, scope: !1769)
!1781 = distinct !DISubprogram(name: "set_char_quoting", scope: !172, file: !172, line: 152, type: !1782, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !1784)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!25, !1743, !23, !25}
!1784 = !{!1785, !1786, !1787, !1788, !1790, !1792, !1793}
!1785 = !DILocalVariable(name: "o", arg: 1, scope: !1781, file: !172, line: 152, type: !1743)
!1786 = !DILocalVariable(name: "c", arg: 2, scope: !1781, file: !172, line: 152, type: !23)
!1787 = !DILocalVariable(name: "i", arg: 3, scope: !1781, file: !172, line: 152, type: !25)
!1788 = !DILocalVariable(name: "uc", scope: !1781, file: !172, line: 154, type: !1789)
!1789 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1790 = !DILocalVariable(name: "p", scope: !1781, file: !172, line: 155, type: !1791)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1792 = !DILocalVariable(name: "shift", scope: !1781, file: !172, line: 157, type: !25)
!1793 = !DILocalVariable(name: "r", scope: !1781, file: !172, line: 158, type: !25)
!1794 = !DILocation(line: 152, column: 43, scope: !1781)
!1795 = !DILocation(line: 152, column: 51, scope: !1781)
!1796 = !DILocation(line: 152, column: 58, scope: !1781)
!1797 = !DILocation(line: 154, column: 17, scope: !1781)
!1798 = !DILocation(line: 156, column: 6, scope: !1781)
!1799 = !DILocation(line: 156, column: 62, scope: !1781)
!1800 = !DILocation(line: 156, column: 57, scope: !1781)
!1801 = !DILocation(line: 155, column: 17, scope: !1781)
!1802 = !DILocation(line: 157, column: 15, scope: !1781)
!1803 = !DILocation(line: 157, column: 7, scope: !1781)
!1804 = !DILocation(line: 158, column: 12, scope: !1781)
!1805 = !DILocation(line: 158, column: 15, scope: !1781)
!1806 = !DILocation(line: 158, column: 25, scope: !1781)
!1807 = !DILocation(line: 158, column: 7, scope: !1781)
!1808 = !DILocation(line: 159, column: 13, scope: !1781)
!1809 = !DILocation(line: 159, column: 18, scope: !1781)
!1810 = !DILocation(line: 159, column: 23, scope: !1781)
!1811 = !DILocation(line: 159, column: 6, scope: !1781)
!1812 = !DILocation(line: 160, column: 3, scope: !1781)
!1813 = distinct !DISubprogram(name: "set_quoting_flags", scope: !172, file: !172, line: 168, type: !1814, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!25, !1743, !25}
!1816 = !{!1817, !1818, !1819}
!1817 = !DILocalVariable(name: "o", arg: 1, scope: !1813, file: !172, line: 168, type: !1743)
!1818 = !DILocalVariable(name: "i", arg: 2, scope: !1813, file: !172, line: 168, type: !25)
!1819 = !DILocalVariable(name: "r", scope: !1813, file: !172, line: 170, type: !25)
!1820 = !DILocation(line: 168, column: 44, scope: !1813)
!1821 = !DILocation(line: 168, column: 51, scope: !1813)
!1822 = !DILocation(line: 171, column: 8, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1813, file: !172, line: 171, column: 7)
!1824 = !DILocation(line: 171, column: 7, scope: !1813)
!1825 = !DILocation(line: 173, column: 10, scope: !1813)
!1826 = !{!1767, !781, i64 4}
!1827 = !DILocation(line: 170, column: 7, scope: !1813)
!1828 = !DILocation(line: 174, column: 12, scope: !1813)
!1829 = !DILocation(line: 175, column: 3, scope: !1813)
!1830 = distinct !DISubprogram(name: "set_custom_quoting", scope: !172, file: !172, line: 179, type: !1831, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !1833)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1743, !31, !31}
!1833 = !{!1834, !1835, !1836}
!1834 = !DILocalVariable(name: "o", arg: 1, scope: !1830, file: !172, line: 179, type: !1743)
!1835 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1830, file: !172, line: 180, type: !31)
!1836 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1830, file: !172, line: 180, type: !31)
!1837 = !DILocation(line: 179, column: 45, scope: !1830)
!1838 = !DILocation(line: 180, column: 33, scope: !1830)
!1839 = !DILocation(line: 180, column: 57, scope: !1830)
!1840 = !DILocation(line: 182, column: 8, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1830, file: !172, line: 182, column: 7)
!1842 = !DILocation(line: 182, column: 7, scope: !1830)
!1843 = !DILocation(line: 184, column: 6, scope: !1830)
!1844 = !DILocation(line: 184, column: 12, scope: !1830)
!1845 = !DILocation(line: 185, column: 8, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1830, file: !172, line: 185, column: 7)
!1847 = !DILocation(line: 185, column: 23, scope: !1846)
!1848 = !DILocation(line: 185, column: 19, scope: !1846)
!1849 = !DILocation(line: 186, column: 5, scope: !1846)
!1850 = !DILocation(line: 187, column: 6, scope: !1830)
!1851 = !DILocation(line: 187, column: 17, scope: !1830)
!1852 = !{!1767, !693, i64 40}
!1853 = !DILocation(line: 188, column: 6, scope: !1830)
!1854 = !DILocation(line: 188, column: 18, scope: !1830)
!1855 = !{!1767, !693, i64 48}
!1856 = !DILocation(line: 189, column: 1, scope: !1830)
!1857 = distinct !DISubprogram(name: "quotearg_buffer", scope: !172, file: !172, line: 784, type: !1858, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!63, !22, !63, !31, !63, !1759}
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1861 = !DILocalVariable(name: "buffer", arg: 1, scope: !1857, file: !172, line: 784, type: !22)
!1862 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1857, file: !172, line: 784, type: !63)
!1863 = !DILocalVariable(name: "arg", arg: 3, scope: !1857, file: !172, line: 785, type: !31)
!1864 = !DILocalVariable(name: "argsize", arg: 4, scope: !1857, file: !172, line: 785, type: !63)
!1865 = !DILocalVariable(name: "o", arg: 5, scope: !1857, file: !172, line: 786, type: !1759)
!1866 = !DILocalVariable(name: "p", scope: !1857, file: !172, line: 788, type: !1759)
!1867 = !DILocalVariable(name: "e", scope: !1857, file: !172, line: 789, type: !25)
!1868 = !DILocalVariable(name: "r", scope: !1857, file: !172, line: 790, type: !63)
!1869 = !DILocation(line: 784, column: 24, scope: !1857)
!1870 = !DILocation(line: 784, column: 39, scope: !1857)
!1871 = !DILocation(line: 785, column: 30, scope: !1857)
!1872 = !DILocation(line: 785, column: 42, scope: !1857)
!1873 = !DILocation(line: 786, column: 48, scope: !1857)
!1874 = !DILocation(line: 788, column: 37, scope: !1857)
!1875 = !DILocation(line: 788, column: 33, scope: !1857)
!1876 = !DILocation(line: 789, column: 11, scope: !1857)
!1877 = !DILocation(line: 789, column: 7, scope: !1857)
!1878 = !DILocation(line: 791, column: 43, scope: !1857)
!1879 = !DILocation(line: 791, column: 53, scope: !1857)
!1880 = !DILocation(line: 791, column: 60, scope: !1857)
!1881 = !DILocation(line: 792, column: 43, scope: !1857)
!1882 = !DILocation(line: 792, column: 58, scope: !1857)
!1883 = !DILocation(line: 790, column: 14, scope: !1857)
!1884 = !DILocation(line: 790, column: 10, scope: !1857)
!1885 = !DILocation(line: 793, column: 9, scope: !1857)
!1886 = !DILocation(line: 794, column: 3, scope: !1857)
!1887 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !172, file: !172, line: 256, type: !1888, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !1892)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!63, !22, !63, !31, !63, !149, !25, !1890, !31, !31}
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1917, !1918, !1919, !1920, !1921, !1924, !1925, !1943, !1946, !1947, !1954}
!1893 = !DILocalVariable(name: "buffer", arg: 1, scope: !1887, file: !172, line: 256, type: !22)
!1894 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1887, file: !172, line: 256, type: !63)
!1895 = !DILocalVariable(name: "arg", arg: 3, scope: !1887, file: !172, line: 257, type: !31)
!1896 = !DILocalVariable(name: "argsize", arg: 4, scope: !1887, file: !172, line: 257, type: !63)
!1897 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1887, file: !172, line: 258, type: !149)
!1898 = !DILocalVariable(name: "flags", arg: 6, scope: !1887, file: !172, line: 258, type: !25)
!1899 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1887, file: !172, line: 259, type: !1890)
!1900 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1887, file: !172, line: 260, type: !31)
!1901 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1887, file: !172, line: 261, type: !31)
!1902 = !DILocalVariable(name: "i", scope: !1887, file: !172, line: 263, type: !63)
!1903 = !DILocalVariable(name: "len", scope: !1887, file: !172, line: 264, type: !63)
!1904 = !DILocalVariable(name: "orig_buffersize", scope: !1887, file: !172, line: 265, type: !63)
!1905 = !DILocalVariable(name: "quote_string", scope: !1887, file: !172, line: 266, type: !31)
!1906 = !DILocalVariable(name: "quote_string_len", scope: !1887, file: !172, line: 267, type: !63)
!1907 = !DILocalVariable(name: "backslash_escapes", scope: !1887, file: !172, line: 268, type: !85)
!1908 = !DILocalVariable(name: "unibyte_locale", scope: !1887, file: !172, line: 269, type: !85)
!1909 = !DILocalVariable(name: "elide_outer_quotes", scope: !1887, file: !172, line: 270, type: !85)
!1910 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1887, file: !172, line: 271, type: !85)
!1911 = !DILocalVariable(name: "encountered_single_quote", scope: !1887, file: !172, line: 272, type: !85)
!1912 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1887, file: !172, line: 273, type: !85)
!1913 = !DILocalVariable(name: "c", scope: !1914, file: !172, line: 402, type: !1789)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !172, line: 401, column: 5)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !172, line: 400, column: 3)
!1916 = distinct !DILexicalBlock(scope: !1887, file: !172, line: 400, column: 3)
!1917 = !DILocalVariable(name: "esc", scope: !1914, file: !172, line: 403, type: !1789)
!1918 = !DILocalVariable(name: "is_right_quote", scope: !1914, file: !172, line: 404, type: !85)
!1919 = !DILocalVariable(name: "escaping", scope: !1914, file: !172, line: 405, type: !85)
!1920 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1914, file: !172, line: 406, type: !85)
!1921 = !DILocalVariable(name: "m", scope: !1922, file: !172, line: 610, type: !63)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !172, line: 608, column: 11)
!1923 = distinct !DILexicalBlock(scope: !1914, file: !172, line: 426, column: 9)
!1924 = !DILocalVariable(name: "printable", scope: !1922, file: !172, line: 612, type: !85)
!1925 = !DILocalVariable(name: "mbstate", scope: !1926, file: !172, line: 621, type: !1928)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !172, line: 620, column: 15)
!1927 = distinct !DILexicalBlock(scope: !1922, file: !172, line: 614, column: 17)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1929, line: 6, baseType: !1930)
!1929 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1931, line: 21, baseType: !1932)
!1931 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1931, line: 13, size: 64, elements: !1933)
!1933 = !{!1934, !1935}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1932, file: !1931, line: 15, baseType: !25, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1932, file: !1931, line: 20, baseType: !1936, size: 32, offset: 32)
!1936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !1931, line: 16, size: 32, elements: !1937)
!1937 = !{!1938, !1939}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1936, file: !1931, line: 18, baseType: !7, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1936, file: !1931, line: 19, baseType: !1940, size: 32)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !1941)
!1941 = !{!1942}
!1942 = !DISubrange(count: 4)
!1943 = !DILocalVariable(name: "w", scope: !1944, file: !172, line: 631, type: !1945)
!1944 = distinct !DILexicalBlock(scope: !1926, file: !172, line: 630, column: 19)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !64, line: 90, baseType: !25)
!1946 = !DILocalVariable(name: "bytes", scope: !1944, file: !172, line: 632, type: !63)
!1947 = !DILocalVariable(name: "j", scope: !1948, file: !172, line: 657, type: !63)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !172, line: 656, column: 27)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !172, line: 654, column: 29)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !172, line: 649, column: 23)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !172, line: 641, column: 30)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !172, line: 636, column: 30)
!1953 = distinct !DILexicalBlock(scope: !1944, file: !172, line: 634, column: 25)
!1954 = !DILocalVariable(name: "ilim", scope: !1955, file: !172, line: 684, type: !63)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !172, line: 681, column: 15)
!1956 = distinct !DILexicalBlock(scope: !1922, file: !172, line: 680, column: 17)
!1957 = !DILocation(line: 256, column: 33, scope: !1887)
!1958 = !DILocation(line: 256, column: 48, scope: !1887)
!1959 = !DILocation(line: 257, column: 39, scope: !1887)
!1960 = !DILocation(line: 257, column: 51, scope: !1887)
!1961 = !DILocation(line: 258, column: 46, scope: !1887)
!1962 = !DILocation(line: 258, column: 65, scope: !1887)
!1963 = !DILocation(line: 259, column: 47, scope: !1887)
!1964 = !DILocation(line: 260, column: 39, scope: !1887)
!1965 = !DILocation(line: 261, column: 39, scope: !1887)
!1966 = !DILocation(line: 264, column: 10, scope: !1887)
!1967 = !DILocation(line: 265, column: 10, scope: !1887)
!1968 = !DILocation(line: 266, column: 15, scope: !1887)
!1969 = !DILocation(line: 267, column: 10, scope: !1887)
!1970 = !DILocation(line: 268, column: 8, scope: !1887)
!1971 = !DILocation(line: 269, column: 25, scope: !1887)
!1972 = !DILocation(line: 269, column: 36, scope: !1887)
!1973 = !DILocation(line: 270, column: 8, scope: !1887)
!1974 = !DILocation(line: 271, column: 8, scope: !1887)
!1975 = !DILocation(line: 272, column: 8, scope: !1887)
!1976 = !DILocation(line: 273, column: 8, scope: !1887)
!1977 = !DILocation(line: 273, column: 3, scope: !1887)
!1978 = !DILocation(line: 0, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1887, file: !172, line: 317, column: 5)
!1980 = !DILocation(line: 316, column: 3, scope: !1887)
!1981 = !DILocation(line: 323, column: 11, scope: !1979)
!1982 = !DILocation(line: 323, column: 12, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !172, line: 323, column: 11)
!1984 = !DILocation(line: 324, column: 9, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !172, line: 324, column: 9)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !172, line: 324, column: 9)
!1987 = !DILocation(line: 324, column: 9, scope: !1986)
!1988 = !DILocation(line: 362, column: 26, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !172, line: 340, column: 11)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !172, line: 339, column: 13)
!1991 = distinct !DILexicalBlock(scope: !1979, file: !172, line: 338, column: 7)
!1992 = !DILocation(line: 363, column: 27, scope: !1989)
!1993 = !DILocation(line: 364, column: 11, scope: !1989)
!1994 = !DILocation(line: 365, column: 14, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !172, line: 365, column: 13)
!1996 = !DILocation(line: 365, column: 13, scope: !1991)
!1997 = !DILocation(line: 366, column: 43, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !172, line: 366, column: 11)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !172, line: 366, column: 11)
!2000 = !DILocation(line: 366, column: 11, scope: !1999)
!2001 = !DILocation(line: 367, column: 13, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !172, line: 367, column: 13)
!2003 = distinct !DILexicalBlock(scope: !1998, file: !172, line: 367, column: 13)
!2004 = !DILocation(line: 367, column: 13, scope: !2003)
!2005 = !DILocation(line: 366, column: 70, scope: !1998)
!2006 = distinct !{!2006, !2000, !2007}
!2007 = !DILocation(line: 367, column: 13, scope: !1999)
!2008 = !DILocation(line: 370, column: 28, scope: !1991)
!2009 = !DILocation(line: 372, column: 7, scope: !1979)
!2010 = !DILocation(line: 376, column: 7, scope: !1979)
!2011 = !DILocation(line: 379, column: 7, scope: !1979)
!2012 = !DILocation(line: 381, column: 12, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1979, file: !172, line: 381, column: 11)
!2014 = !DILocation(line: 381, column: 11, scope: !1979)
!2015 = !DILocation(line: 0, scope: !2013)
!2016 = !DILocation(line: 386, column: 12, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1979, file: !172, line: 386, column: 11)
!2018 = !DILocation(line: 386, column: 11, scope: !1979)
!2019 = !DILocation(line: 387, column: 9, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !172, line: 387, column: 9)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !172, line: 387, column: 9)
!2022 = !DILocation(line: 387, column: 9, scope: !2021)
!2023 = !DILocation(line: 394, column: 7, scope: !1979)
!2024 = !DILocation(line: 397, column: 7, scope: !1979)
!2025 = !DILocation(line: 0, scope: !1887)
!2026 = !DILocation(line: 263, column: 10, scope: !1887)
!2027 = !DILocation(line: 400, column: 8, scope: !1916)
!2028 = !DILocation(line: 0, scope: !1915)
!2029 = !DILocation(line: 400, column: 27, scope: !1915)
!2030 = !DILocation(line: 400, column: 19, scope: !1915)
!2031 = !DILocation(line: 400, column: 41, scope: !1915)
!2032 = !DILocation(line: 400, column: 48, scope: !1915)
!2033 = !DILocation(line: 400, column: 3, scope: !1916)
!2034 = !DILocation(line: 400, column: 60, scope: !1915)
!2035 = !DILocation(line: 404, column: 12, scope: !1914)
!2036 = !DILocation(line: 405, column: 12, scope: !1914)
!2037 = !DILocation(line: 406, column: 12, scope: !1914)
!2038 = !DILocation(line: 409, column: 11, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1914, file: !172, line: 408, column: 11)
!2040 = !DILocation(line: 411, column: 17, scope: !2039)
!2041 = !DILocation(line: 412, column: 39, scope: !2039)
!2042 = !DILocation(line: 416, column: 32, scope: !2039)
!2043 = !DILocation(line: 412, column: 19, scope: !2039)
!2044 = !DILocation(line: 412, column: 15, scope: !2039)
!2045 = !DILocation(line: 417, column: 11, scope: !2039)
!2046 = !DILocation(line: 417, column: 26, scope: !2039)
!2047 = !DILocation(line: 417, column: 14, scope: !2039)
!2048 = !DILocation(line: 417, column: 63, scope: !2039)
!2049 = !DILocation(line: 408, column: 11, scope: !1914)
!2050 = !DILocation(line: 0, scope: !1914)
!2051 = !DILocation(line: 424, column: 11, scope: !1914)
!2052 = !DILocation(line: 402, column: 21, scope: !1914)
!2053 = !DILocation(line: 425, column: 7, scope: !1914)
!2054 = !DILocation(line: 428, column: 15, scope: !1923)
!2055 = !DILocation(line: 430, column: 15, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !172, line: 430, column: 15)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !172, line: 429, column: 13)
!2058 = distinct !DILexicalBlock(scope: !1923, file: !172, line: 428, column: 15)
!2059 = !DILocation(line: 430, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !172, line: 430, column: 15)
!2061 = !DILocation(line: 430, column: 15, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !172, line: 430, column: 15)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !172, line: 430, column: 15)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !172, line: 430, column: 15)
!2065 = !DILocation(line: 430, column: 15, scope: !2063)
!2066 = !DILocation(line: 430, column: 15, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !172, line: 430, column: 15)
!2068 = distinct !DILexicalBlock(scope: !2064, file: !172, line: 430, column: 15)
!2069 = !DILocation(line: 430, column: 15, scope: !2068)
!2070 = !DILocation(line: 430, column: 15, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !172, line: 430, column: 15)
!2072 = distinct !DILexicalBlock(scope: !2064, file: !172, line: 430, column: 15)
!2073 = !DILocation(line: 430, column: 15, scope: !2072)
!2074 = !DILocation(line: 430, column: 15, scope: !2064)
!2075 = !DILocation(line: 430, column: 15, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !172, line: 430, column: 15)
!2077 = distinct !DILexicalBlock(scope: !2056, file: !172, line: 430, column: 15)
!2078 = !DILocation(line: 430, column: 15, scope: !2077)
!2079 = !DILocation(line: 438, column: 19, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2057, file: !172, line: 437, column: 19)
!2081 = !DILocation(line: 438, column: 24, scope: !2080)
!2082 = !DILocation(line: 438, column: 28, scope: !2080)
!2083 = !DILocation(line: 438, column: 38, scope: !2080)
!2084 = !DILocation(line: 438, column: 48, scope: !2080)
!2085 = !DILocation(line: 438, column: 59, scope: !2080)
!2086 = !DILocation(line: 440, column: 19, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !172, line: 440, column: 19)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !172, line: 440, column: 19)
!2089 = distinct !DILexicalBlock(scope: !2080, file: !172, line: 439, column: 17)
!2090 = !DILocation(line: 440, column: 19, scope: !2088)
!2091 = !DILocation(line: 441, column: 19, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !172, line: 441, column: 19)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !172, line: 441, column: 19)
!2094 = !DILocation(line: 441, column: 19, scope: !2093)
!2095 = !DILocation(line: 442, column: 17, scope: !2089)
!2096 = !DILocation(line: 449, column: 20, scope: !2058)
!2097 = !DILocation(line: 454, column: 11, scope: !1923)
!2098 = !DILocation(line: 457, column: 19, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1923, file: !172, line: 455, column: 13)
!2100 = !DILocation(line: 463, column: 19, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2099, file: !172, line: 462, column: 19)
!2102 = !DILocation(line: 463, column: 24, scope: !2101)
!2103 = !DILocation(line: 463, column: 28, scope: !2101)
!2104 = !DILocation(line: 463, column: 38, scope: !2101)
!2105 = !DILocation(line: 463, column: 47, scope: !2101)
!2106 = !DILocation(line: 463, column: 41, scope: !2101)
!2107 = !DILocation(line: 463, column: 52, scope: !2101)
!2108 = !DILocation(line: 462, column: 19, scope: !2099)
!2109 = !DILocation(line: 464, column: 25, scope: !2101)
!2110 = !DILocation(line: 464, column: 17, scope: !2101)
!2111 = !DILocation(line: 471, column: 25, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2101, file: !172, line: 465, column: 19)
!2113 = !DILocation(line: 475, column: 21, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !172, line: 475, column: 21)
!2115 = distinct !DILexicalBlock(scope: !2112, file: !172, line: 475, column: 21)
!2116 = !DILocation(line: 475, column: 21, scope: !2115)
!2117 = !DILocation(line: 476, column: 21, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !172, line: 476, column: 21)
!2119 = distinct !DILexicalBlock(scope: !2112, file: !172, line: 476, column: 21)
!2120 = !DILocation(line: 476, column: 21, scope: !2119)
!2121 = !DILocation(line: 477, column: 21, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !172, line: 477, column: 21)
!2123 = distinct !DILexicalBlock(scope: !2112, file: !172, line: 477, column: 21)
!2124 = !DILocation(line: 477, column: 21, scope: !2123)
!2125 = !DILocation(line: 478, column: 21, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !172, line: 478, column: 21)
!2127 = distinct !DILexicalBlock(scope: !2112, file: !172, line: 478, column: 21)
!2128 = !DILocation(line: 478, column: 21, scope: !2127)
!2129 = !DILocation(line: 479, column: 21, scope: !2112)
!2130 = !DILocation(line: 403, column: 21, scope: !1914)
!2131 = !DILocation(line: 492, column: 31, scope: !1923)
!2132 = !DILocation(line: 493, column: 31, scope: !1923)
!2133 = !DILocation(line: 495, column: 31, scope: !1923)
!2134 = !DILocation(line: 496, column: 31, scope: !1923)
!2135 = !DILocation(line: 497, column: 31, scope: !1923)
!2136 = !DILocation(line: 500, column: 15, scope: !1923)
!2137 = !DILocation(line: 502, column: 19, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !172, line: 501, column: 13)
!2139 = distinct !DILexicalBlock(scope: !1923, file: !172, line: 500, column: 15)
!2140 = !DILocation(line: 509, column: 33, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !1923, file: !172, line: 509, column: 15)
!2142 = !DILocation(line: 0, scope: !1923)
!2143 = !DILocation(line: 514, column: 15, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1923, file: !172, line: 513, column: 15)
!2145 = !DILocation(line: 518, column: 15, scope: !1923)
!2146 = !DILocation(line: 526, column: 26, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !1923, file: !172, line: 526, column: 15)
!2148 = !DILocation(line: 526, column: 15, scope: !1923)
!2149 = !DILocation(line: 526, column: 40, scope: !2147)
!2150 = !DILocation(line: 526, column: 47, scope: !2147)
!2151 = !DILocation(line: 530, column: 17, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1923, file: !172, line: 530, column: 15)
!2153 = !DILocation(line: 526, column: 18, scope: !2147)
!2154 = !DILocation(line: 526, column: 65, scope: !2147)
!2155 = !DILocation(line: 530, column: 15, scope: !1923)
!2156 = !DILocation(line: 535, column: 11, scope: !1923)
!2157 = !DILocation(line: 549, column: 15, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !1923, file: !172, line: 548, column: 15)
!2159 = !DILocation(line: 556, column: 15, scope: !1923)
!2160 = !DILocation(line: 558, column: 19, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !172, line: 557, column: 13)
!2162 = distinct !DILexicalBlock(scope: !1923, file: !172, line: 556, column: 15)
!2163 = !DILocation(line: 561, column: 19, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2161, file: !172, line: 561, column: 19)
!2165 = !DILocation(line: 561, column: 35, scope: !2164)
!2166 = !DILocation(line: 561, column: 30, scope: !2164)
!2167 = !DILocation(line: 570, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !172, line: 570, column: 15)
!2169 = distinct !DILexicalBlock(scope: !2161, file: !172, line: 570, column: 15)
!2170 = !DILocation(line: 570, column: 15, scope: !2169)
!2171 = !DILocation(line: 571, column: 15, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !172, line: 571, column: 15)
!2173 = distinct !DILexicalBlock(scope: !2161, file: !172, line: 571, column: 15)
!2174 = !DILocation(line: 571, column: 15, scope: !2173)
!2175 = !DILocation(line: 572, column: 15, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !172, line: 572, column: 15)
!2177 = distinct !DILexicalBlock(scope: !2161, file: !172, line: 572, column: 15)
!2178 = !DILocation(line: 572, column: 15, scope: !2177)
!2179 = !DILocation(line: 574, column: 13, scope: !2161)
!2180 = !DILocation(line: 614, column: 17, scope: !1922)
!2181 = !DILocation(line: 610, column: 20, scope: !1922)
!2182 = !DILocation(line: 617, column: 29, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !1927, file: !172, line: 615, column: 15)
!2184 = !DILocation(line: 617, column: 27, scope: !2183)
!2185 = !DILocation(line: 612, column: 18, scope: !1922)
!2186 = !DILocation(line: 618, column: 15, scope: !2183)
!2187 = !DILocation(line: 621, column: 17, scope: !1926)
!2188 = !DILocation(line: 622, column: 17, scope: !1926)
!2189 = !DILocation(line: 626, column: 29, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1926, file: !172, line: 626, column: 21)
!2191 = !DILocation(line: 626, column: 21, scope: !1926)
!2192 = !DILocation(line: 627, column: 29, scope: !2190)
!2193 = !DILocation(line: 627, column: 19, scope: !2190)
!2194 = !DILocation(line: 0, scope: !2039)
!2195 = !DILocation(line: 629, column: 17, scope: !1926)
!2196 = !DILocation(line: 624, column: 19, scope: !1926)
!2197 = !DILocation(line: 625, column: 27, scope: !1926)
!2198 = !DILocation(line: 631, column: 21, scope: !1944)
!2199 = !DILocation(line: 632, column: 56, scope: !1944)
!2200 = !DILocation(line: 632, column: 50, scope: !1944)
!2201 = !DILocation(line: 633, column: 53, scope: !1944)
!2202 = !DILocation(line: 621, column: 27, scope: !1926)
!2203 = !DILocation(line: 631, column: 29, scope: !1944)
!2204 = !DILocation(line: 632, column: 36, scope: !1944)
!2205 = !DILocation(line: 632, column: 28, scope: !1944)
!2206 = !DILocation(line: 634, column: 25, scope: !1944)
!2207 = !DILocation(line: 644, column: 38, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !1951, file: !172, line: 642, column: 23)
!2209 = !DILocation(line: 644, column: 48, scope: !2208)
!2210 = !DILocation(line: 644, column: 51, scope: !2208)
!2211 = !DILocation(line: 644, column: 25, scope: !2208)
!2212 = !DILocation(line: 645, column: 28, scope: !2208)
!2213 = !DILocation(line: 644, column: 34, scope: !2208)
!2214 = distinct !{!2214, !2211, !2212}
!2215 = !DILocation(line: 658, column: 43, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !172, line: 658, column: 29)
!2217 = distinct !DILexicalBlock(scope: !1948, file: !172, line: 658, column: 29)
!2218 = !DILocation(line: 655, column: 29, scope: !1949)
!2219 = !DILocation(line: 657, column: 36, scope: !1948)
!2220 = !DILocation(line: 659, column: 49, scope: !2216)
!2221 = !DILocation(line: 659, column: 39, scope: !2216)
!2222 = !DILocation(line: 659, column: 31, scope: !2216)
!2223 = !DILocation(line: 658, column: 53, scope: !2216)
!2224 = !DILocation(line: 658, column: 29, scope: !2217)
!2225 = distinct !{!2225, !2224, !2226}
!2226 = !DILocation(line: 667, column: 33, scope: !2217)
!2227 = !DILocation(line: 674, column: 19, scope: !1926)
!2228 = !DILocation(line: 670, column: 41, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !1950, file: !172, line: 670, column: 29)
!2230 = !DILocation(line: 670, column: 31, scope: !2229)
!2231 = !DILocation(line: 670, column: 29, scope: !1950)
!2232 = !DILocation(line: 672, column: 27, scope: !1950)
!2233 = !DILocation(line: 675, column: 26, scope: !1926)
!2234 = !DILocation(line: 675, column: 24, scope: !1926)
!2235 = !DILocation(line: 674, column: 19, scope: !1944)
!2236 = distinct !{!2236, !2195, !2237}
!2237 = !DILocation(line: 675, column: 44, scope: !1926)
!2238 = !DILocation(line: 676, column: 15, scope: !1927)
!2239 = !DILocation(line: 0, scope: !2190)
!2240 = !DILocation(line: 0, scope: !1926)
!2241 = !DILocation(line: 678, column: 40, scope: !1922)
!2242 = !DILocation(line: 680, column: 19, scope: !1956)
!2243 = !DILocation(line: 680, column: 45, scope: !1956)
!2244 = !DILocation(line: 680, column: 23, scope: !1956)
!2245 = !DILocation(line: 684, column: 33, scope: !1955)
!2246 = !DILocation(line: 684, column: 24, scope: !1955)
!2247 = !DILocation(line: 686, column: 17, scope: !1955)
!2248 = !DILocation(line: 0, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !172, line: 687, column: 19)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !172, line: 686, column: 17)
!2251 = distinct !DILexicalBlock(scope: !1955, file: !172, line: 686, column: 17)
!2252 = !DILocation(line: 0, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !172, line: 703, column: 21)
!2254 = !DILocation(line: 0, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !172, line: 696, column: 23)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !172, line: 695, column: 30)
!2257 = distinct !DILexicalBlock(scope: !2249, file: !172, line: 688, column: 25)
!2258 = !DILocation(line: 688, column: 43, scope: !2257)
!2259 = !DILocation(line: 690, column: 25, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !172, line: 690, column: 25)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !172, line: 689, column: 23)
!2262 = !DILocation(line: 690, column: 25, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !172, line: 690, column: 25)
!2264 = !DILocation(line: 690, column: 25, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !172, line: 690, column: 25)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !172, line: 690, column: 25)
!2267 = distinct !DILexicalBlock(scope: !2263, file: !172, line: 690, column: 25)
!2268 = !DILocation(line: 690, column: 25, scope: !2266)
!2269 = !DILocation(line: 690, column: 25, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !172, line: 690, column: 25)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !172, line: 690, column: 25)
!2272 = !DILocation(line: 690, column: 25, scope: !2271)
!2273 = !DILocation(line: 690, column: 25, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !172, line: 690, column: 25)
!2275 = distinct !DILexicalBlock(scope: !2267, file: !172, line: 690, column: 25)
!2276 = !DILocation(line: 690, column: 25, scope: !2275)
!2277 = !DILocation(line: 690, column: 25, scope: !2267)
!2278 = !DILocation(line: 690, column: 25, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !172, line: 690, column: 25)
!2280 = distinct !DILexicalBlock(scope: !2260, file: !172, line: 690, column: 25)
!2281 = !DILocation(line: 690, column: 25, scope: !2280)
!2282 = !DILocation(line: 691, column: 25, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !172, line: 691, column: 25)
!2284 = distinct !DILexicalBlock(scope: !2261, file: !172, line: 691, column: 25)
!2285 = !DILocation(line: 691, column: 25, scope: !2284)
!2286 = !DILocation(line: 692, column: 25, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !172, line: 692, column: 25)
!2288 = distinct !DILexicalBlock(scope: !2261, file: !172, line: 692, column: 25)
!2289 = !DILocation(line: 692, column: 25, scope: !2288)
!2290 = !DILocation(line: 693, column: 38, scope: !2261)
!2291 = !DILocation(line: 693, column: 33, scope: !2261)
!2292 = !DILocation(line: 694, column: 23, scope: !2261)
!2293 = !DILocation(line: 695, column: 30, scope: !2256)
!2294 = !DILocation(line: 695, column: 30, scope: !2257)
!2295 = !DILocation(line: 697, column: 25, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !172, line: 697, column: 25)
!2297 = distinct !DILexicalBlock(scope: !2255, file: !172, line: 697, column: 25)
!2298 = !DILocation(line: 697, column: 25, scope: !2297)
!2299 = !DILocation(line: 699, column: 23, scope: !2255)
!2300 = !DILocation(line: 0, scope: !2288)
!2301 = !DILocation(line: 0, scope: !2261)
!2302 = !DILocation(line: 0, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2039, file: !172, line: 418, column: 9)
!2304 = !DILocation(line: 0, scope: !2260)
!2305 = !DILocation(line: 700, column: 35, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2249, file: !172, line: 700, column: 25)
!2307 = !DILocation(line: 700, column: 30, scope: !2306)
!2308 = !DILocation(line: 700, column: 25, scope: !2249)
!2309 = !DILocation(line: 702, column: 21, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !172, line: 702, column: 21)
!2311 = distinct !DILexicalBlock(scope: !2249, file: !172, line: 702, column: 21)
!2312 = !DILocation(line: 702, column: 21, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !172, line: 702, column: 21)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !172, line: 702, column: 21)
!2315 = distinct !DILexicalBlock(scope: !2310, file: !172, line: 702, column: 21)
!2316 = !DILocation(line: 702, column: 21, scope: !2314)
!2317 = !DILocation(line: 702, column: 21, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !172, line: 702, column: 21)
!2319 = distinct !DILexicalBlock(scope: !2315, file: !172, line: 702, column: 21)
!2320 = !DILocation(line: 702, column: 21, scope: !2319)
!2321 = !DILocation(line: 702, column: 21, scope: !2315)
!2322 = !DILocation(line: 0, scope: !2297)
!2323 = !DILocation(line: 703, column: 21, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2253, file: !172, line: 703, column: 21)
!2325 = !DILocation(line: 703, column: 21, scope: !2253)
!2326 = !DILocation(line: 704, column: 25, scope: !2249)
!2327 = !DILocation(line: 686, column: 17, scope: !2250)
!2328 = distinct !{!2328, !2329, !2330}
!2329 = !DILocation(line: 686, column: 17, scope: !2251)
!2330 = !DILocation(line: 705, column: 19, scope: !2251)
!2331 = !DILocation(line: 0, scope: !1916)
!2332 = !DILocation(line: 416, column: 30, scope: !2039)
!2333 = !DILocation(line: 712, column: 34, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !1914, file: !172, line: 712, column: 11)
!2335 = !DILocation(line: 714, column: 14, scope: !2334)
!2336 = !DILocation(line: 715, column: 14, scope: !2334)
!2337 = !DILocation(line: 715, column: 35, scope: !2334)
!2338 = !DILocation(line: 715, column: 17, scope: !2334)
!2339 = !DILocation(line: 715, column: 47, scope: !2334)
!2340 = !DILocation(line: 715, column: 65, scope: !2334)
!2341 = !DILocation(line: 716, column: 15, scope: !2334)
!2342 = !DILocation(line: 716, column: 11, scope: !2334)
!2343 = !DILocation(line: 712, column: 11, scope: !1914)
!2344 = !DILocation(line: 400, column: 10, scope: !1916)
!2345 = !DILocation(line: 0, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !172, line: 519, column: 13)
!2347 = distinct !DILexicalBlock(scope: !1923, file: !172, line: 518, column: 15)
!2348 = !DILocation(line: 720, column: 7, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !1914, file: !172, line: 720, column: 7)
!2350 = !DILocation(line: 720, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2349, file: !172, line: 720, column: 7)
!2352 = !DILocation(line: 720, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !172, line: 720, column: 7)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !172, line: 720, column: 7)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !172, line: 720, column: 7)
!2356 = !DILocation(line: 720, column: 7, scope: !2354)
!2357 = !DILocation(line: 720, column: 7, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !172, line: 720, column: 7)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !172, line: 720, column: 7)
!2360 = !DILocation(line: 720, column: 7, scope: !2359)
!2361 = !DILocation(line: 720, column: 7, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !172, line: 720, column: 7)
!2363 = distinct !DILexicalBlock(scope: !2355, file: !172, line: 720, column: 7)
!2364 = !DILocation(line: 720, column: 7, scope: !2363)
!2365 = !DILocation(line: 720, column: 7, scope: !2355)
!2366 = !DILocation(line: 720, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !172, line: 720, column: 7)
!2368 = distinct !DILexicalBlock(scope: !2349, file: !172, line: 720, column: 7)
!2369 = !DILocation(line: 720, column: 7, scope: !2368)
!2370 = !DILocation(line: 723, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !172, line: 723, column: 7)
!2372 = distinct !DILexicalBlock(scope: !1914, file: !172, line: 723, column: 7)
!2373 = !DILocation(line: 424, column: 9, scope: !1914)
!2374 = !DILocation(line: 723, column: 7, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !172, line: 723, column: 7)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !172, line: 723, column: 7)
!2377 = distinct !DILexicalBlock(scope: !2371, file: !172, line: 723, column: 7)
!2378 = !DILocation(line: 723, column: 7, scope: !2376)
!2379 = !DILocation(line: 723, column: 7, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !172, line: 723, column: 7)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !172, line: 723, column: 7)
!2382 = !DILocation(line: 723, column: 7, scope: !2381)
!2383 = !DILocation(line: 723, column: 7, scope: !2377)
!2384 = !DILocation(line: 724, column: 7, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !172, line: 724, column: 7)
!2386 = distinct !DILexicalBlock(scope: !1914, file: !172, line: 724, column: 7)
!2387 = !DILocation(line: 724, column: 7, scope: !2386)
!2388 = !DILocation(line: 726, column: 13, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !1914, file: !172, line: 726, column: 11)
!2390 = !DILocation(line: 726, column: 11, scope: !1914)
!2391 = !DILocation(line: 728, column: 5, scope: !1915)
!2392 = !DILocation(line: 400, column: 75, scope: !1915)
!2393 = !DILocation(line: 400, column: 3, scope: !1915)
!2394 = distinct !{!2394, !2033, !2395}
!2395 = !DILocation(line: 728, column: 5, scope: !1916)
!2396 = !DILocation(line: 730, column: 11, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !1887, file: !172, line: 730, column: 7)
!2398 = !DILocation(line: 730, column: 16, scope: !2397)
!2399 = !DILocation(line: 738, column: 51, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !1887, file: !172, line: 738, column: 7)
!2401 = !DILocation(line: 739, column: 10, scope: !2400)
!2402 = !DILocation(line: 741, column: 11, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !172, line: 741, column: 11)
!2404 = distinct !DILexicalBlock(scope: !2400, file: !172, line: 740, column: 5)
!2405 = !DILocation(line: 741, column: 11, scope: !2404)
!2406 = !DILocation(line: 742, column: 16, scope: !2403)
!2407 = !DILocation(line: 742, column: 9, scope: !2403)
!2408 = !DILocation(line: 746, column: 18, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2403, file: !172, line: 746, column: 16)
!2410 = !DILocation(line: 746, column: 32, scope: !2409)
!2411 = !DILocation(line: 746, column: 29, scope: !2409)
!2412 = !DILocation(line: 755, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !1887, file: !172, line: 755, column: 7)
!2414 = !DILocation(line: 755, column: 20, scope: !2413)
!2415 = !DILocation(line: 756, column: 12, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !172, line: 756, column: 5)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !172, line: 756, column: 5)
!2418 = !DILocation(line: 756, column: 5, scope: !2417)
!2419 = !DILocation(line: 757, column: 7, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !172, line: 757, column: 7)
!2421 = distinct !DILexicalBlock(scope: !2416, file: !172, line: 757, column: 7)
!2422 = !DILocation(line: 757, column: 7, scope: !2421)
!2423 = !DILocation(line: 756, column: 39, scope: !2416)
!2424 = distinct !{!2424, !2418, !2425}
!2425 = !DILocation(line: 757, column: 7, scope: !2417)
!2426 = !DILocation(line: 759, column: 11, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !1887, file: !172, line: 759, column: 7)
!2428 = !DILocation(line: 759, column: 7, scope: !1887)
!2429 = !DILocation(line: 760, column: 5, scope: !2427)
!2430 = !DILocation(line: 760, column: 17, scope: !2427)
!2431 = !DILocation(line: 766, column: 21, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !1887, file: !172, line: 766, column: 7)
!2433 = !DILocation(line: 766, column: 54, scope: !2432)
!2434 = !DILocation(line: 766, column: 51, scope: !2432)
!2435 = !DILocation(line: 770, column: 42, scope: !1887)
!2436 = !DILocation(line: 768, column: 10, scope: !1887)
!2437 = !DILocation(line: 768, column: 3, scope: !1887)
!2438 = !DILocation(line: 772, column: 1, scope: !1887)
!2439 = distinct !DISubprogram(name: "gettext_quote", scope: !172, file: !172, line: 207, type: !2440, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!31, !31, !149}
!2442 = !{!2443, !2444, !2445, !2446}
!2443 = !DILocalVariable(name: "msgid", arg: 1, scope: !2439, file: !172, line: 207, type: !31)
!2444 = !DILocalVariable(name: "s", arg: 2, scope: !2439, file: !172, line: 207, type: !149)
!2445 = !DILocalVariable(name: "translation", scope: !2439, file: !172, line: 209, type: !31)
!2446 = !DILocalVariable(name: "locale_code", scope: !2439, file: !172, line: 210, type: !31)
!2447 = !DILocation(line: 207, column: 28, scope: !2439)
!2448 = !DILocation(line: 207, column: 54, scope: !2439)
!2449 = !DILocation(line: 209, column: 29, scope: !2439)
!2450 = !DILocation(line: 209, column: 15, scope: !2439)
!2451 = !DILocation(line: 212, column: 19, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2439, file: !172, line: 212, column: 7)
!2453 = !DILocation(line: 212, column: 7, scope: !2439)
!2454 = !DILocation(line: 233, column: 17, scope: !2439)
!2455 = !DILocation(line: 210, column: 15, scope: !2439)
!2456 = !DILocalVariable(name: "s1", arg: 1, scope: !2457, file: !2458, line: 160, type: !31)
!2457 = distinct !DISubprogram(name: "strcaseeq0", scope: !2458, file: !2458, line: 160, type: !2459, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2461)
!2458 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!25, !31, !31, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!2461 = !{!2456, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471}
!2462 = !DILocalVariable(name: "s2", arg: 2, scope: !2457, file: !2458, line: 160, type: !31)
!2463 = !DILocalVariable(name: "s20", arg: 3, scope: !2457, file: !2458, line: 160, type: !23)
!2464 = !DILocalVariable(name: "s21", arg: 4, scope: !2457, file: !2458, line: 160, type: !23)
!2465 = !DILocalVariable(name: "s22", arg: 5, scope: !2457, file: !2458, line: 160, type: !23)
!2466 = !DILocalVariable(name: "s23", arg: 6, scope: !2457, file: !2458, line: 160, type: !23)
!2467 = !DILocalVariable(name: "s24", arg: 7, scope: !2457, file: !2458, line: 160, type: !23)
!2468 = !DILocalVariable(name: "s25", arg: 8, scope: !2457, file: !2458, line: 160, type: !23)
!2469 = !DILocalVariable(name: "s26", arg: 9, scope: !2457, file: !2458, line: 160, type: !23)
!2470 = !DILocalVariable(name: "s27", arg: 10, scope: !2457, file: !2458, line: 160, type: !23)
!2471 = !DILocalVariable(name: "s28", arg: 11, scope: !2457, file: !2458, line: 160, type: !23)
!2472 = !DILocation(line: 160, column: 25, scope: !2457, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 234, column: 7, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2439, file: !172, line: 234, column: 7)
!2475 = !DILocation(line: 160, column: 41, scope: !2457, inlinedAt: !2473)
!2476 = !DILocation(line: 160, column: 50, scope: !2457, inlinedAt: !2473)
!2477 = !DILocation(line: 160, column: 60, scope: !2457, inlinedAt: !2473)
!2478 = !DILocation(line: 160, column: 70, scope: !2457, inlinedAt: !2473)
!2479 = !DILocation(line: 160, column: 80, scope: !2457, inlinedAt: !2473)
!2480 = !DILocation(line: 160, column: 90, scope: !2457, inlinedAt: !2473)
!2481 = !DILocation(line: 160, column: 100, scope: !2457, inlinedAt: !2473)
!2482 = !DILocation(line: 160, column: 110, scope: !2457, inlinedAt: !2473)
!2483 = !DILocation(line: 160, column: 120, scope: !2457, inlinedAt: !2473)
!2484 = !DILocation(line: 160, column: 130, scope: !2457, inlinedAt: !2473)
!2485 = !DILocation(line: 162, column: 7, scope: !2486, inlinedAt: !2473)
!2486 = distinct !DILexicalBlock(scope: !2457, file: !2458, line: 162, column: 7)
!2487 = !DILocalVariable(name: "s1", arg: 1, scope: !2488, file: !2458, line: 146, type: !31)
!2488 = distinct !DISubprogram(name: "strcaseeq1", scope: !2458, file: !2458, line: 146, type: !2489, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!25, !31, !31, !23, !23, !23, !23, !23, !23, !23, !23}
!2491 = !{!2487, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500}
!2492 = !DILocalVariable(name: "s2", arg: 2, scope: !2488, file: !2458, line: 146, type: !31)
!2493 = !DILocalVariable(name: "s21", arg: 3, scope: !2488, file: !2458, line: 146, type: !23)
!2494 = !DILocalVariable(name: "s22", arg: 4, scope: !2488, file: !2458, line: 146, type: !23)
!2495 = !DILocalVariable(name: "s23", arg: 5, scope: !2488, file: !2458, line: 146, type: !23)
!2496 = !DILocalVariable(name: "s24", arg: 6, scope: !2488, file: !2458, line: 146, type: !23)
!2497 = !DILocalVariable(name: "s25", arg: 7, scope: !2488, file: !2458, line: 146, type: !23)
!2498 = !DILocalVariable(name: "s26", arg: 8, scope: !2488, file: !2458, line: 146, type: !23)
!2499 = !DILocalVariable(name: "s27", arg: 9, scope: !2488, file: !2458, line: 146, type: !23)
!2500 = !DILocalVariable(name: "s28", arg: 10, scope: !2488, file: !2458, line: 146, type: !23)
!2501 = !DILocation(line: 146, column: 25, scope: !2488, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 167, column: 16, scope: !2503, inlinedAt: !2473)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !2458, line: 164, column: 11)
!2504 = distinct !DILexicalBlock(scope: !2486, file: !2458, line: 163, column: 5)
!2505 = !DILocation(line: 146, column: 41, scope: !2488, inlinedAt: !2502)
!2506 = !DILocation(line: 146, column: 50, scope: !2488, inlinedAt: !2502)
!2507 = !DILocation(line: 146, column: 60, scope: !2488, inlinedAt: !2502)
!2508 = !DILocation(line: 146, column: 70, scope: !2488, inlinedAt: !2502)
!2509 = !DILocation(line: 146, column: 80, scope: !2488, inlinedAt: !2502)
!2510 = !DILocation(line: 146, column: 90, scope: !2488, inlinedAt: !2502)
!2511 = !DILocation(line: 146, column: 100, scope: !2488, inlinedAt: !2502)
!2512 = !DILocation(line: 146, column: 110, scope: !2488, inlinedAt: !2502)
!2513 = !DILocation(line: 146, column: 120, scope: !2488, inlinedAt: !2502)
!2514 = !DILocation(line: 148, column: 7, scope: !2515, inlinedAt: !2502)
!2515 = distinct !DILexicalBlock(scope: !2488, file: !2458, line: 148, column: 7)
!2516 = !DILocalVariable(name: "s1", arg: 1, scope: !2517, file: !2458, line: 132, type: !31)
!2517 = distinct !DISubprogram(name: "strcaseeq2", scope: !2458, file: !2458, line: 132, type: !2518, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!25, !31, !31, !23, !23, !23, !23, !23, !23, !23}
!2520 = !{!2516, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528}
!2521 = !DILocalVariable(name: "s2", arg: 2, scope: !2517, file: !2458, line: 132, type: !31)
!2522 = !DILocalVariable(name: "s22", arg: 3, scope: !2517, file: !2458, line: 132, type: !23)
!2523 = !DILocalVariable(name: "s23", arg: 4, scope: !2517, file: !2458, line: 132, type: !23)
!2524 = !DILocalVariable(name: "s24", arg: 5, scope: !2517, file: !2458, line: 132, type: !23)
!2525 = !DILocalVariable(name: "s25", arg: 6, scope: !2517, file: !2458, line: 132, type: !23)
!2526 = !DILocalVariable(name: "s26", arg: 7, scope: !2517, file: !2458, line: 132, type: !23)
!2527 = !DILocalVariable(name: "s27", arg: 8, scope: !2517, file: !2458, line: 132, type: !23)
!2528 = !DILocalVariable(name: "s28", arg: 9, scope: !2517, file: !2458, line: 132, type: !23)
!2529 = !DILocation(line: 132, column: 25, scope: !2517, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 153, column: 16, scope: !2531, inlinedAt: !2502)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !2458, line: 150, column: 11)
!2532 = distinct !DILexicalBlock(scope: !2515, file: !2458, line: 149, column: 5)
!2533 = !DILocation(line: 132, column: 41, scope: !2517, inlinedAt: !2530)
!2534 = !DILocation(line: 132, column: 50, scope: !2517, inlinedAt: !2530)
!2535 = !DILocation(line: 132, column: 60, scope: !2517, inlinedAt: !2530)
!2536 = !DILocation(line: 132, column: 70, scope: !2517, inlinedAt: !2530)
!2537 = !DILocation(line: 132, column: 80, scope: !2517, inlinedAt: !2530)
!2538 = !DILocation(line: 132, column: 90, scope: !2517, inlinedAt: !2530)
!2539 = !DILocation(line: 132, column: 100, scope: !2517, inlinedAt: !2530)
!2540 = !DILocation(line: 132, column: 110, scope: !2517, inlinedAt: !2530)
!2541 = !DILocation(line: 134, column: 7, scope: !2542, inlinedAt: !2530)
!2542 = distinct !DILexicalBlock(scope: !2517, file: !2458, line: 134, column: 7)
!2543 = !DILocalVariable(name: "s1", arg: 1, scope: !2544, file: !2458, line: 118, type: !31)
!2544 = distinct !DISubprogram(name: "strcaseeq3", scope: !2458, file: !2458, line: 118, type: !2545, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!25, !31, !31, !23, !23, !23, !23, !23, !23}
!2547 = !{!2543, !2548, !2549, !2550, !2551, !2552, !2553, !2554}
!2548 = !DILocalVariable(name: "s2", arg: 2, scope: !2544, file: !2458, line: 118, type: !31)
!2549 = !DILocalVariable(name: "s23", arg: 3, scope: !2544, file: !2458, line: 118, type: !23)
!2550 = !DILocalVariable(name: "s24", arg: 4, scope: !2544, file: !2458, line: 118, type: !23)
!2551 = !DILocalVariable(name: "s25", arg: 5, scope: !2544, file: !2458, line: 118, type: !23)
!2552 = !DILocalVariable(name: "s26", arg: 6, scope: !2544, file: !2458, line: 118, type: !23)
!2553 = !DILocalVariable(name: "s27", arg: 7, scope: !2544, file: !2458, line: 118, type: !23)
!2554 = !DILocalVariable(name: "s28", arg: 8, scope: !2544, file: !2458, line: 118, type: !23)
!2555 = !DILocation(line: 118, column: 25, scope: !2544, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 139, column: 16, scope: !2557, inlinedAt: !2530)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !2458, line: 136, column: 11)
!2558 = distinct !DILexicalBlock(scope: !2542, file: !2458, line: 135, column: 5)
!2559 = !DILocation(line: 118, column: 41, scope: !2544, inlinedAt: !2556)
!2560 = !DILocation(line: 118, column: 50, scope: !2544, inlinedAt: !2556)
!2561 = !DILocation(line: 118, column: 60, scope: !2544, inlinedAt: !2556)
!2562 = !DILocation(line: 118, column: 70, scope: !2544, inlinedAt: !2556)
!2563 = !DILocation(line: 118, column: 80, scope: !2544, inlinedAt: !2556)
!2564 = !DILocation(line: 118, column: 90, scope: !2544, inlinedAt: !2556)
!2565 = !DILocation(line: 118, column: 100, scope: !2544, inlinedAt: !2556)
!2566 = !DILocation(line: 120, column: 7, scope: !2567, inlinedAt: !2556)
!2567 = distinct !DILexicalBlock(scope: !2544, file: !2458, line: 120, column: 7)
!2568 = !DILocation(line: 120, column: 7, scope: !2544, inlinedAt: !2556)
!2569 = !DILocalVariable(name: "s1", arg: 1, scope: !2570, file: !2458, line: 104, type: !31)
!2570 = distinct !DISubprogram(name: "strcaseeq4", scope: !2458, file: !2458, line: 104, type: !2571, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!25, !31, !31, !23, !23, !23, !23, !23}
!2573 = !{!2569, !2574, !2575, !2576, !2577, !2578, !2579}
!2574 = !DILocalVariable(name: "s2", arg: 2, scope: !2570, file: !2458, line: 104, type: !31)
!2575 = !DILocalVariable(name: "s24", arg: 3, scope: !2570, file: !2458, line: 104, type: !23)
!2576 = !DILocalVariable(name: "s25", arg: 4, scope: !2570, file: !2458, line: 104, type: !23)
!2577 = !DILocalVariable(name: "s26", arg: 5, scope: !2570, file: !2458, line: 104, type: !23)
!2578 = !DILocalVariable(name: "s27", arg: 6, scope: !2570, file: !2458, line: 104, type: !23)
!2579 = !DILocalVariable(name: "s28", arg: 7, scope: !2570, file: !2458, line: 104, type: !23)
!2580 = !DILocation(line: 104, column: 25, scope: !2570, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 125, column: 16, scope: !2582, inlinedAt: !2556)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !2458, line: 122, column: 11)
!2583 = distinct !DILexicalBlock(scope: !2567, file: !2458, line: 121, column: 5)
!2584 = !DILocation(line: 104, column: 41, scope: !2570, inlinedAt: !2581)
!2585 = !DILocation(line: 104, column: 50, scope: !2570, inlinedAt: !2581)
!2586 = !DILocation(line: 104, column: 60, scope: !2570, inlinedAt: !2581)
!2587 = !DILocation(line: 104, column: 70, scope: !2570, inlinedAt: !2581)
!2588 = !DILocation(line: 104, column: 80, scope: !2570, inlinedAt: !2581)
!2589 = !DILocation(line: 104, column: 90, scope: !2570, inlinedAt: !2581)
!2590 = !DILocation(line: 106, column: 7, scope: !2591, inlinedAt: !2581)
!2591 = distinct !DILexicalBlock(scope: !2570, file: !2458, line: 106, column: 7)
!2592 = !DILocation(line: 106, column: 7, scope: !2570, inlinedAt: !2581)
!2593 = !DILocalVariable(name: "s1", arg: 1, scope: !2594, file: !2458, line: 90, type: !31)
!2594 = distinct !DISubprogram(name: "strcaseeq5", scope: !2458, file: !2458, line: 90, type: !2595, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!25, !31, !31, !23, !23, !23, !23}
!2597 = !{!2593, !2598, !2599, !2600, !2601, !2602}
!2598 = !DILocalVariable(name: "s2", arg: 2, scope: !2594, file: !2458, line: 90, type: !31)
!2599 = !DILocalVariable(name: "s25", arg: 3, scope: !2594, file: !2458, line: 90, type: !23)
!2600 = !DILocalVariable(name: "s26", arg: 4, scope: !2594, file: !2458, line: 90, type: !23)
!2601 = !DILocalVariable(name: "s27", arg: 5, scope: !2594, file: !2458, line: 90, type: !23)
!2602 = !DILocalVariable(name: "s28", arg: 6, scope: !2594, file: !2458, line: 90, type: !23)
!2603 = !DILocation(line: 90, column: 25, scope: !2594, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 111, column: 16, scope: !2605, inlinedAt: !2581)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !2458, line: 108, column: 11)
!2606 = distinct !DILexicalBlock(scope: !2591, file: !2458, line: 107, column: 5)
!2607 = !DILocation(line: 90, column: 41, scope: !2594, inlinedAt: !2604)
!2608 = !DILocation(line: 90, column: 50, scope: !2594, inlinedAt: !2604)
!2609 = !DILocation(line: 90, column: 60, scope: !2594, inlinedAt: !2604)
!2610 = !DILocation(line: 90, column: 70, scope: !2594, inlinedAt: !2604)
!2611 = !DILocation(line: 90, column: 80, scope: !2594, inlinedAt: !2604)
!2612 = !DILocation(line: 92, column: 7, scope: !2613, inlinedAt: !2604)
!2613 = distinct !DILexicalBlock(scope: !2594, file: !2458, line: 92, column: 7)
!2614 = !DILocation(line: 92, column: 7, scope: !2594, inlinedAt: !2604)
!2615 = !DILocation(line: 235, column: 12, scope: !2474)
!2616 = !DILocation(line: 235, column: 21, scope: !2474)
!2617 = !DILocation(line: 235, column: 5, scope: !2474)
!2618 = !DILocation(line: 146, column: 25, scope: !2488, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 167, column: 16, scope: !2503, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 236, column: 7, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2439, file: !172, line: 236, column: 7)
!2622 = !DILocation(line: 146, column: 41, scope: !2488, inlinedAt: !2619)
!2623 = !DILocation(line: 146, column: 50, scope: !2488, inlinedAt: !2619)
!2624 = !DILocation(line: 146, column: 60, scope: !2488, inlinedAt: !2619)
!2625 = !DILocation(line: 146, column: 70, scope: !2488, inlinedAt: !2619)
!2626 = !DILocation(line: 146, column: 80, scope: !2488, inlinedAt: !2619)
!2627 = !DILocation(line: 146, column: 90, scope: !2488, inlinedAt: !2619)
!2628 = !DILocation(line: 146, column: 100, scope: !2488, inlinedAt: !2619)
!2629 = !DILocation(line: 146, column: 110, scope: !2488, inlinedAt: !2619)
!2630 = !DILocation(line: 146, column: 120, scope: !2488, inlinedAt: !2619)
!2631 = !DILocation(line: 148, column: 7, scope: !2515, inlinedAt: !2619)
!2632 = !DILocation(line: 132, column: 25, scope: !2517, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 153, column: 16, scope: !2531, inlinedAt: !2619)
!2634 = !DILocation(line: 132, column: 41, scope: !2517, inlinedAt: !2633)
!2635 = !DILocation(line: 132, column: 50, scope: !2517, inlinedAt: !2633)
!2636 = !DILocation(line: 132, column: 60, scope: !2517, inlinedAt: !2633)
!2637 = !DILocation(line: 132, column: 70, scope: !2517, inlinedAt: !2633)
!2638 = !DILocation(line: 132, column: 80, scope: !2517, inlinedAt: !2633)
!2639 = !DILocation(line: 132, column: 90, scope: !2517, inlinedAt: !2633)
!2640 = !DILocation(line: 132, column: 100, scope: !2517, inlinedAt: !2633)
!2641 = !DILocation(line: 132, column: 110, scope: !2517, inlinedAt: !2633)
!2642 = !DILocation(line: 134, column: 7, scope: !2542, inlinedAt: !2633)
!2643 = !DILocation(line: 134, column: 7, scope: !2517, inlinedAt: !2633)
!2644 = !DILocation(line: 118, column: 25, scope: !2544, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 139, column: 16, scope: !2557, inlinedAt: !2633)
!2646 = !DILocation(line: 118, column: 41, scope: !2544, inlinedAt: !2645)
!2647 = !DILocation(line: 118, column: 50, scope: !2544, inlinedAt: !2645)
!2648 = !DILocation(line: 118, column: 60, scope: !2544, inlinedAt: !2645)
!2649 = !DILocation(line: 118, column: 70, scope: !2544, inlinedAt: !2645)
!2650 = !DILocation(line: 118, column: 80, scope: !2544, inlinedAt: !2645)
!2651 = !DILocation(line: 118, column: 90, scope: !2544, inlinedAt: !2645)
!2652 = !DILocation(line: 118, column: 100, scope: !2544, inlinedAt: !2645)
!2653 = !DILocation(line: 120, column: 7, scope: !2567, inlinedAt: !2645)
!2654 = !DILocation(line: 120, column: 7, scope: !2544, inlinedAt: !2645)
!2655 = !DILocation(line: 104, column: 25, scope: !2570, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 125, column: 16, scope: !2582, inlinedAt: !2645)
!2657 = !DILocation(line: 104, column: 41, scope: !2570, inlinedAt: !2656)
!2658 = !DILocation(line: 104, column: 50, scope: !2570, inlinedAt: !2656)
!2659 = !DILocation(line: 104, column: 60, scope: !2570, inlinedAt: !2656)
!2660 = !DILocation(line: 104, column: 70, scope: !2570, inlinedAt: !2656)
!2661 = !DILocation(line: 104, column: 80, scope: !2570, inlinedAt: !2656)
!2662 = !DILocation(line: 104, column: 90, scope: !2570, inlinedAt: !2656)
!2663 = !DILocation(line: 106, column: 7, scope: !2591, inlinedAt: !2656)
!2664 = !DILocation(line: 106, column: 7, scope: !2570, inlinedAt: !2656)
!2665 = !DILocation(line: 90, column: 25, scope: !2594, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 111, column: 16, scope: !2605, inlinedAt: !2656)
!2667 = !DILocation(line: 90, column: 41, scope: !2594, inlinedAt: !2666)
!2668 = !DILocation(line: 90, column: 50, scope: !2594, inlinedAt: !2666)
!2669 = !DILocation(line: 90, column: 60, scope: !2594, inlinedAt: !2666)
!2670 = !DILocation(line: 90, column: 70, scope: !2594, inlinedAt: !2666)
!2671 = !DILocation(line: 90, column: 80, scope: !2594, inlinedAt: !2666)
!2672 = !DILocation(line: 92, column: 7, scope: !2613, inlinedAt: !2666)
!2673 = !DILocation(line: 92, column: 7, scope: !2594, inlinedAt: !2666)
!2674 = !DILocalVariable(name: "s1", arg: 1, scope: !2675, file: !2458, line: 76, type: !31)
!2675 = distinct !DISubprogram(name: "strcaseeq6", scope: !2458, file: !2458, line: 76, type: !2676, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!25, !31, !31, !23, !23, !23}
!2678 = !{!2674, !2679, !2680, !2681, !2682}
!2679 = !DILocalVariable(name: "s2", arg: 2, scope: !2675, file: !2458, line: 76, type: !31)
!2680 = !DILocalVariable(name: "s26", arg: 3, scope: !2675, file: !2458, line: 76, type: !23)
!2681 = !DILocalVariable(name: "s27", arg: 4, scope: !2675, file: !2458, line: 76, type: !23)
!2682 = !DILocalVariable(name: "s28", arg: 5, scope: !2675, file: !2458, line: 76, type: !23)
!2683 = !DILocation(line: 76, column: 25, scope: !2675, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 97, column: 16, scope: !2685, inlinedAt: !2666)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !2458, line: 94, column: 11)
!2686 = distinct !DILexicalBlock(scope: !2613, file: !2458, line: 93, column: 5)
!2687 = !DILocation(line: 76, column: 41, scope: !2675, inlinedAt: !2684)
!2688 = !DILocation(line: 76, column: 50, scope: !2675, inlinedAt: !2684)
!2689 = !DILocation(line: 76, column: 60, scope: !2675, inlinedAt: !2684)
!2690 = !DILocation(line: 76, column: 70, scope: !2675, inlinedAt: !2684)
!2691 = !DILocation(line: 78, column: 7, scope: !2692, inlinedAt: !2684)
!2692 = distinct !DILexicalBlock(scope: !2675, file: !2458, line: 78, column: 7)
!2693 = !DILocation(line: 78, column: 7, scope: !2675, inlinedAt: !2684)
!2694 = !DILocalVariable(name: "s1", arg: 1, scope: !2695, file: !2458, line: 62, type: !31)
!2695 = distinct !DISubprogram(name: "strcaseeq7", scope: !2458, file: !2458, line: 62, type: !2696, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!25, !31, !31, !23, !23}
!2698 = !{!2694, !2699, !2700, !2701}
!2699 = !DILocalVariable(name: "s2", arg: 2, scope: !2695, file: !2458, line: 62, type: !31)
!2700 = !DILocalVariable(name: "s27", arg: 3, scope: !2695, file: !2458, line: 62, type: !23)
!2701 = !DILocalVariable(name: "s28", arg: 4, scope: !2695, file: !2458, line: 62, type: !23)
!2702 = !DILocation(line: 62, column: 25, scope: !2695, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 83, column: 16, scope: !2704, inlinedAt: !2684)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !2458, line: 80, column: 11)
!2705 = distinct !DILexicalBlock(scope: !2692, file: !2458, line: 79, column: 5)
!2706 = !DILocation(line: 62, column: 41, scope: !2695, inlinedAt: !2703)
!2707 = !DILocation(line: 62, column: 50, scope: !2695, inlinedAt: !2703)
!2708 = !DILocation(line: 62, column: 60, scope: !2695, inlinedAt: !2703)
!2709 = !DILocation(line: 64, column: 7, scope: !2710, inlinedAt: !2703)
!2710 = distinct !DILexicalBlock(scope: !2695, file: !2458, line: 64, column: 7)
!2711 = !DILocation(line: 236, column: 7, scope: !2439)
!2712 = !DILocation(line: 237, column: 12, scope: !2621)
!2713 = !DILocation(line: 237, column: 21, scope: !2621)
!2714 = !DILocation(line: 237, column: 5, scope: !2621)
!2715 = !DILocation(line: 239, column: 13, scope: !2439)
!2716 = !DILocation(line: 239, column: 11, scope: !2439)
!2717 = !DILocation(line: 239, column: 3, scope: !2439)
!2718 = !DILocation(line: 0, scope: !2439)
!2719 = !DILocation(line: 240, column: 1, scope: !2439)
!2720 = distinct !DISubprogram(name: "quotearg_alloc", scope: !172, file: !172, line: 799, type: !2721, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!22, !31, !63, !1759}
!2723 = !{!2724, !2725, !2726}
!2724 = !DILocalVariable(name: "arg", arg: 1, scope: !2720, file: !172, line: 799, type: !31)
!2725 = !DILocalVariable(name: "argsize", arg: 2, scope: !2720, file: !172, line: 799, type: !63)
!2726 = !DILocalVariable(name: "o", arg: 3, scope: !2720, file: !172, line: 800, type: !1759)
!2727 = !DILocation(line: 799, column: 29, scope: !2720)
!2728 = !DILocation(line: 799, column: 41, scope: !2720)
!2729 = !DILocation(line: 800, column: 47, scope: !2720)
!2730 = !DILocalVariable(name: "arg", arg: 1, scope: !2731, file: !172, line: 812, type: !31)
!2731 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !172, file: !172, line: 812, type: !2732, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!22, !31, !63, !236, !1759}
!2734 = !{!2730, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742}
!2735 = !DILocalVariable(name: "argsize", arg: 2, scope: !2731, file: !172, line: 812, type: !63)
!2736 = !DILocalVariable(name: "size", arg: 3, scope: !2731, file: !172, line: 812, type: !236)
!2737 = !DILocalVariable(name: "o", arg: 4, scope: !2731, file: !172, line: 813, type: !1759)
!2738 = !DILocalVariable(name: "p", scope: !2731, file: !172, line: 815, type: !1759)
!2739 = !DILocalVariable(name: "e", scope: !2731, file: !172, line: 816, type: !25)
!2740 = !DILocalVariable(name: "flags", scope: !2731, file: !172, line: 818, type: !25)
!2741 = !DILocalVariable(name: "bufsize", scope: !2731, file: !172, line: 819, type: !63)
!2742 = !DILocalVariable(name: "buf", scope: !2731, file: !172, line: 823, type: !22)
!2743 = !DILocation(line: 812, column: 33, scope: !2731, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 802, column: 10, scope: !2720)
!2745 = !DILocation(line: 812, column: 45, scope: !2731, inlinedAt: !2744)
!2746 = !DILocation(line: 812, column: 62, scope: !2731, inlinedAt: !2744)
!2747 = !DILocation(line: 813, column: 51, scope: !2731, inlinedAt: !2744)
!2748 = !DILocation(line: 815, column: 37, scope: !2731, inlinedAt: !2744)
!2749 = !DILocation(line: 815, column: 33, scope: !2731, inlinedAt: !2744)
!2750 = !DILocation(line: 816, column: 11, scope: !2731, inlinedAt: !2744)
!2751 = !DILocation(line: 816, column: 7, scope: !2731, inlinedAt: !2744)
!2752 = !DILocation(line: 818, column: 18, scope: !2731, inlinedAt: !2744)
!2753 = !DILocation(line: 818, column: 24, scope: !2731, inlinedAt: !2744)
!2754 = !DILocation(line: 818, column: 7, scope: !2731, inlinedAt: !2744)
!2755 = !DILocation(line: 819, column: 69, scope: !2731, inlinedAt: !2744)
!2756 = !DILocation(line: 820, column: 53, scope: !2731, inlinedAt: !2744)
!2757 = !DILocation(line: 821, column: 49, scope: !2731, inlinedAt: !2744)
!2758 = !DILocation(line: 822, column: 49, scope: !2731, inlinedAt: !2744)
!2759 = !DILocation(line: 819, column: 20, scope: !2731, inlinedAt: !2744)
!2760 = !DILocation(line: 822, column: 62, scope: !2731, inlinedAt: !2744)
!2761 = !DILocation(line: 819, column: 10, scope: !2731, inlinedAt: !2744)
!2762 = !DILocalVariable(name: "n", arg: 1, scope: !2763, file: !232, line: 216, type: !63)
!2763 = distinct !DISubprogram(name: "xcharalloc", scope: !232, file: !232, line: 216, type: !2764, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!22, !63}
!2766 = !{!2762}
!2767 = !DILocation(line: 216, column: 20, scope: !2763, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 823, column: 15, scope: !2731, inlinedAt: !2744)
!2769 = !DILocation(line: 218, column: 10, scope: !2763, inlinedAt: !2768)
!2770 = !DILocation(line: 823, column: 9, scope: !2731, inlinedAt: !2744)
!2771 = !DILocation(line: 824, column: 60, scope: !2731, inlinedAt: !2744)
!2772 = !DILocation(line: 826, column: 32, scope: !2731, inlinedAt: !2744)
!2773 = !DILocation(line: 826, column: 47, scope: !2731, inlinedAt: !2744)
!2774 = !DILocation(line: 824, column: 3, scope: !2731, inlinedAt: !2744)
!2775 = !DILocation(line: 827, column: 9, scope: !2731, inlinedAt: !2744)
!2776 = !DILocation(line: 802, column: 3, scope: !2720)
!2777 = !DILocation(line: 812, column: 33, scope: !2731)
!2778 = !DILocation(line: 812, column: 45, scope: !2731)
!2779 = !DILocation(line: 812, column: 62, scope: !2731)
!2780 = !DILocation(line: 813, column: 51, scope: !2731)
!2781 = !DILocation(line: 815, column: 37, scope: !2731)
!2782 = !DILocation(line: 815, column: 33, scope: !2731)
!2783 = !DILocation(line: 816, column: 11, scope: !2731)
!2784 = !DILocation(line: 816, column: 7, scope: !2731)
!2785 = !DILocation(line: 818, column: 18, scope: !2731)
!2786 = !DILocation(line: 818, column: 27, scope: !2731)
!2787 = !DILocation(line: 818, column: 24, scope: !2731)
!2788 = !DILocation(line: 818, column: 7, scope: !2731)
!2789 = !DILocation(line: 819, column: 69, scope: !2731)
!2790 = !DILocation(line: 820, column: 53, scope: !2731)
!2791 = !DILocation(line: 821, column: 49, scope: !2731)
!2792 = !DILocation(line: 822, column: 49, scope: !2731)
!2793 = !DILocation(line: 819, column: 20, scope: !2731)
!2794 = !DILocation(line: 822, column: 62, scope: !2731)
!2795 = !DILocation(line: 819, column: 10, scope: !2731)
!2796 = !DILocation(line: 216, column: 20, scope: !2763, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 823, column: 15, scope: !2731)
!2798 = !DILocation(line: 218, column: 10, scope: !2763, inlinedAt: !2797)
!2799 = !DILocation(line: 823, column: 9, scope: !2731)
!2800 = !DILocation(line: 824, column: 60, scope: !2731)
!2801 = !DILocation(line: 826, column: 32, scope: !2731)
!2802 = !DILocation(line: 826, column: 47, scope: !2731)
!2803 = !DILocation(line: 824, column: 3, scope: !2731)
!2804 = !DILocation(line: 827, column: 9, scope: !2731)
!2805 = !DILocation(line: 828, column: 7, scope: !2731)
!2806 = !DILocation(line: 829, column: 11, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2731, file: !172, line: 828, column: 7)
!2808 = !{!1506, !1506, i64 0}
!2809 = !DILocation(line: 829, column: 5, scope: !2807)
!2810 = !DILocation(line: 830, column: 3, scope: !2731)
!2811 = distinct !DISubprogram(name: "quotearg_free", scope: !172, file: !172, line: 848, type: !700, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2812)
!2812 = !{!2813, !2814}
!2813 = !DILocalVariable(name: "sv", scope: !2811, file: !172, line: 850, type: !198)
!2814 = !DILocalVariable(name: "i", scope: !2811, file: !172, line: 851, type: !25)
!2815 = !DILocation(line: 850, column: 24, scope: !2811)
!2816 = !DILocation(line: 850, column: 19, scope: !2811)
!2817 = !DILocation(line: 851, column: 7, scope: !2811)
!2818 = !DILocation(line: 852, column: 19, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !172, line: 852, column: 3)
!2820 = distinct !DILexicalBlock(scope: !2811, file: !172, line: 852, column: 3)
!2821 = !DILocation(line: 852, column: 17, scope: !2819)
!2822 = !DILocation(line: 852, column: 3, scope: !2820)
!2823 = !DILocation(line: 853, column: 17, scope: !2819)
!2824 = !{!2825, !693, i64 8}
!2825 = !{!"slotvec", !1506, i64 0, !693, i64 8}
!2826 = !DILocation(line: 853, column: 5, scope: !2819)
!2827 = !DILocation(line: 852, column: 28, scope: !2819)
!2828 = distinct !{!2828, !2822, !2829}
!2829 = !DILocation(line: 853, column: 20, scope: !2820)
!2830 = !DILocation(line: 854, column: 13, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2811, file: !172, line: 854, column: 7)
!2832 = !DILocation(line: 854, column: 17, scope: !2831)
!2833 = !DILocation(line: 854, column: 7, scope: !2811)
!2834 = !DILocation(line: 856, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !172, line: 855, column: 5)
!2836 = !DILocation(line: 857, column: 21, scope: !2835)
!2837 = !{!2825, !1506, i64 0}
!2838 = !DILocation(line: 858, column: 20, scope: !2835)
!2839 = !DILocation(line: 859, column: 5, scope: !2835)
!2840 = !DILocation(line: 860, column: 10, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2811, file: !172, line: 860, column: 7)
!2842 = !DILocation(line: 860, column: 7, scope: !2811)
!2843 = !DILocation(line: 862, column: 13, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !172, line: 861, column: 5)
!2845 = !DILocation(line: 862, column: 7, scope: !2844)
!2846 = !DILocation(line: 863, column: 15, scope: !2844)
!2847 = !DILocation(line: 864, column: 5, scope: !2844)
!2848 = !DILocation(line: 865, column: 10, scope: !2811)
!2849 = !DILocation(line: 866, column: 1, scope: !2811)
!2850 = distinct !DISubprogram(name: "quotearg_n", scope: !172, file: !172, line: 931, type: !2851, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!22, !25, !31}
!2853 = !{!2854, !2855}
!2854 = !DILocalVariable(name: "n", arg: 1, scope: !2850, file: !172, line: 931, type: !25)
!2855 = !DILocalVariable(name: "arg", arg: 2, scope: !2850, file: !172, line: 931, type: !31)
!2856 = !DILocation(line: 931, column: 17, scope: !2850)
!2857 = !DILocation(line: 931, column: 32, scope: !2850)
!2858 = !DILocation(line: 933, column: 10, scope: !2850)
!2859 = !DILocation(line: 933, column: 3, scope: !2850)
!2860 = distinct !DISubprogram(name: "quotearg_n_options", scope: !172, file: !172, line: 877, type: !2861, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2863)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!22, !25, !31, !63, !1759}
!2863 = !{!2864, !2865, !2866, !2867, !2868, !2869, !2870, !2873, !2874, !2876, !2877, !2878}
!2864 = !DILocalVariable(name: "n", arg: 1, scope: !2860, file: !172, line: 877, type: !25)
!2865 = !DILocalVariable(name: "arg", arg: 2, scope: !2860, file: !172, line: 877, type: !31)
!2866 = !DILocalVariable(name: "argsize", arg: 3, scope: !2860, file: !172, line: 877, type: !63)
!2867 = !DILocalVariable(name: "options", arg: 4, scope: !2860, file: !172, line: 878, type: !1759)
!2868 = !DILocalVariable(name: "e", scope: !2860, file: !172, line: 880, type: !25)
!2869 = !DILocalVariable(name: "sv", scope: !2860, file: !172, line: 882, type: !198)
!2870 = !DILocalVariable(name: "preallocated", scope: !2871, file: !172, line: 889, type: !85)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !172, line: 888, column: 5)
!2872 = distinct !DILexicalBlock(scope: !2860, file: !172, line: 887, column: 7)
!2873 = !DILocalVariable(name: "nmax", scope: !2871, file: !172, line: 890, type: !25)
!2874 = !DILocalVariable(name: "size", scope: !2875, file: !172, line: 903, type: !63)
!2875 = distinct !DILexicalBlock(scope: !2860, file: !172, line: 902, column: 3)
!2876 = !DILocalVariable(name: "val", scope: !2875, file: !172, line: 904, type: !22)
!2877 = !DILocalVariable(name: "flags", scope: !2875, file: !172, line: 906, type: !25)
!2878 = !DILocalVariable(name: "qsize", scope: !2875, file: !172, line: 907, type: !63)
!2879 = !DILocation(line: 877, column: 25, scope: !2860)
!2880 = !DILocation(line: 877, column: 40, scope: !2860)
!2881 = !DILocation(line: 877, column: 52, scope: !2860)
!2882 = !DILocation(line: 878, column: 51, scope: !2860)
!2883 = !DILocation(line: 880, column: 11, scope: !2860)
!2884 = !DILocation(line: 880, column: 7, scope: !2860)
!2885 = !DILocation(line: 882, column: 24, scope: !2860)
!2886 = !DILocation(line: 882, column: 19, scope: !2860)
!2887 = !DILocation(line: 884, column: 9, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2860, file: !172, line: 884, column: 7)
!2889 = !DILocation(line: 884, column: 7, scope: !2860)
!2890 = !DILocation(line: 885, column: 5, scope: !2888)
!2891 = !DILocation(line: 887, column: 7, scope: !2872)
!2892 = !DILocation(line: 887, column: 14, scope: !2872)
!2893 = !DILocation(line: 887, column: 7, scope: !2860)
!2894 = !DILocation(line: 889, column: 31, scope: !2871)
!2895 = !DILocation(line: 890, column: 11, scope: !2871)
!2896 = !DILocation(line: 892, column: 16, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2871, file: !172, line: 892, column: 11)
!2898 = !DILocation(line: 892, column: 11, scope: !2871)
!2899 = !DILocation(line: 893, column: 9, scope: !2897)
!2900 = !DILocation(line: 895, column: 32, scope: !2871)
!2901 = !DILocation(line: 895, column: 61, scope: !2871)
!2902 = !DILocation(line: 895, column: 58, scope: !2871)
!2903 = !DILocation(line: 895, column: 66, scope: !2871)
!2904 = !DILocation(line: 895, column: 22, scope: !2871)
!2905 = !DILocation(line: 895, column: 15, scope: !2871)
!2906 = !DILocation(line: 896, column: 11, scope: !2871)
!2907 = !DILocation(line: 897, column: 15, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2871, file: !172, line: 896, column: 11)
!2909 = !{i64 0, i64 8, !2808, i64 8, i64 8, !692}
!2910 = !DILocation(line: 897, column: 9, scope: !2908)
!2911 = !DILocation(line: 898, column: 20, scope: !2871)
!2912 = !DILocation(line: 898, column: 18, scope: !2871)
!2913 = !DILocation(line: 898, column: 7, scope: !2871)
!2914 = !DILocation(line: 898, column: 38, scope: !2871)
!2915 = !DILocation(line: 898, column: 31, scope: !2871)
!2916 = !DILocation(line: 898, column: 48, scope: !2871)
!2917 = !DILocation(line: 899, column: 14, scope: !2871)
!2918 = !DILocation(line: 900, column: 5, scope: !2871)
!2919 = !DILocation(line: 0, scope: !2860)
!2920 = !DILocation(line: 903, column: 19, scope: !2875)
!2921 = !DILocation(line: 903, column: 25, scope: !2875)
!2922 = !DILocation(line: 903, column: 12, scope: !2875)
!2923 = !DILocation(line: 904, column: 23, scope: !2875)
!2924 = !DILocation(line: 904, column: 11, scope: !2875)
!2925 = !DILocation(line: 906, column: 26, scope: !2875)
!2926 = !DILocation(line: 906, column: 32, scope: !2875)
!2927 = !DILocation(line: 906, column: 9, scope: !2875)
!2928 = !DILocation(line: 908, column: 55, scope: !2875)
!2929 = !DILocation(line: 909, column: 46, scope: !2875)
!2930 = !DILocation(line: 910, column: 55, scope: !2875)
!2931 = !DILocation(line: 911, column: 55, scope: !2875)
!2932 = !DILocation(line: 907, column: 20, scope: !2875)
!2933 = !DILocation(line: 907, column: 12, scope: !2875)
!2934 = !DILocation(line: 913, column: 14, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2875, file: !172, line: 913, column: 9)
!2936 = !DILocation(line: 913, column: 9, scope: !2875)
!2937 = !DILocation(line: 915, column: 35, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2935, file: !172, line: 914, column: 7)
!2939 = !DILocation(line: 915, column: 20, scope: !2938)
!2940 = !DILocation(line: 916, column: 17, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !172, line: 916, column: 13)
!2942 = !DILocation(line: 916, column: 13, scope: !2938)
!2943 = !DILocation(line: 917, column: 11, scope: !2941)
!2944 = !DILocation(line: 216, column: 20, scope: !2763, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 918, column: 27, scope: !2938)
!2946 = !DILocation(line: 218, column: 10, scope: !2763, inlinedAt: !2945)
!2947 = !DILocation(line: 918, column: 19, scope: !2938)
!2948 = !DILocation(line: 919, column: 69, scope: !2938)
!2949 = !DILocation(line: 921, column: 44, scope: !2938)
!2950 = !DILocation(line: 922, column: 44, scope: !2938)
!2951 = !DILocation(line: 919, column: 9, scope: !2938)
!2952 = !DILocation(line: 923, column: 7, scope: !2938)
!2953 = !DILocation(line: 0, scope: !2875)
!2954 = !DILocation(line: 925, column: 11, scope: !2875)
!2955 = !DILocation(line: 926, column: 5, scope: !2875)
!2956 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !172, file: !172, line: 937, type: !2957, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!22, !25, !31, !63}
!2959 = !{!2960, !2961, !2962}
!2960 = !DILocalVariable(name: "n", arg: 1, scope: !2956, file: !172, line: 937, type: !25)
!2961 = !DILocalVariable(name: "arg", arg: 2, scope: !2956, file: !172, line: 937, type: !31)
!2962 = !DILocalVariable(name: "argsize", arg: 3, scope: !2956, file: !172, line: 937, type: !63)
!2963 = !DILocation(line: 937, column: 21, scope: !2956)
!2964 = !DILocation(line: 937, column: 36, scope: !2956)
!2965 = !DILocation(line: 937, column: 48, scope: !2956)
!2966 = !DILocation(line: 939, column: 10, scope: !2956)
!2967 = !DILocation(line: 939, column: 3, scope: !2956)
!2968 = distinct !DISubprogram(name: "quotearg", scope: !172, file: !172, line: 943, type: !2969, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2971)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!22, !31}
!2971 = !{!2972}
!2972 = !DILocalVariable(name: "arg", arg: 1, scope: !2968, file: !172, line: 943, type: !31)
!2973 = !DILocation(line: 943, column: 23, scope: !2968)
!2974 = !DILocation(line: 931, column: 17, scope: !2850, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 945, column: 10, scope: !2968)
!2976 = !DILocation(line: 931, column: 32, scope: !2850, inlinedAt: !2975)
!2977 = !DILocation(line: 933, column: 10, scope: !2850, inlinedAt: !2975)
!2978 = !DILocation(line: 945, column: 3, scope: !2968)
!2979 = distinct !DISubprogram(name: "quotearg_mem", scope: !172, file: !172, line: 949, type: !2980, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!22, !31, !63}
!2982 = !{!2983, !2984}
!2983 = !DILocalVariable(name: "arg", arg: 1, scope: !2979, file: !172, line: 949, type: !31)
!2984 = !DILocalVariable(name: "argsize", arg: 2, scope: !2979, file: !172, line: 949, type: !63)
!2985 = !DILocation(line: 949, column: 27, scope: !2979)
!2986 = !DILocation(line: 949, column: 39, scope: !2979)
!2987 = !DILocation(line: 937, column: 21, scope: !2956, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 951, column: 10, scope: !2979)
!2989 = !DILocation(line: 937, column: 36, scope: !2956, inlinedAt: !2988)
!2990 = !DILocation(line: 937, column: 48, scope: !2956, inlinedAt: !2988)
!2991 = !DILocation(line: 939, column: 10, scope: !2956, inlinedAt: !2988)
!2992 = !DILocation(line: 951, column: 3, scope: !2979)
!2993 = distinct !DISubprogram(name: "quotearg_n_style", scope: !172, file: !172, line: 955, type: !2994, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!22, !25, !149, !31}
!2996 = !{!2997, !2998, !2999, !3000}
!2997 = !DILocalVariable(name: "n", arg: 1, scope: !2993, file: !172, line: 955, type: !25)
!2998 = !DILocalVariable(name: "s", arg: 2, scope: !2993, file: !172, line: 955, type: !149)
!2999 = !DILocalVariable(name: "arg", arg: 3, scope: !2993, file: !172, line: 955, type: !31)
!3000 = !DILocalVariable(name: "o", scope: !2993, file: !172, line: 957, type: !1760)
!3001 = !DILocation(line: 955, column: 23, scope: !2993)
!3002 = !DILocation(line: 955, column: 45, scope: !2993)
!3003 = !DILocation(line: 955, column: 60, scope: !2993)
!3004 = !DILocation(line: 957, column: 3, scope: !2993)
!3005 = !DILocation(line: 957, column: 32, scope: !2993)
!3006 = !DILocalVariable(name: "style", arg: 1, scope: !3007, file: !172, line: 193, type: !149)
!3007 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !172, file: !172, line: 193, type: !3008, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!179, !149}
!3010 = !{!3006, !3011}
!3011 = !DILocalVariable(name: "o", scope: !3007, file: !172, line: 195, type: !179)
!3012 = !DILocation(line: 193, column: 48, scope: !3007, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 957, column: 36, scope: !2993)
!3014 = !DILocation(line: 195, column: 26, scope: !3007, inlinedAt: !3013)
!3015 = !{!3016}
!3016 = distinct !{!3016, !3017, !"quoting_options_from_style: argument 0"}
!3017 = distinct !{!3017, !"quoting_options_from_style"}
!3018 = !DILocation(line: 196, column: 13, scope: !3019, inlinedAt: !3013)
!3019 = distinct !DILexicalBlock(scope: !3007, file: !172, line: 196, column: 7)
!3020 = !DILocation(line: 196, column: 7, scope: !3007, inlinedAt: !3013)
!3021 = !DILocation(line: 197, column: 5, scope: !3019, inlinedAt: !3013)
!3022 = !DILocation(line: 198, column: 5, scope: !3007, inlinedAt: !3013)
!3023 = !DILocation(line: 198, column: 11, scope: !3007, inlinedAt: !3013)
!3024 = !DILocation(line: 958, column: 10, scope: !2993)
!3025 = !DILocation(line: 959, column: 1, scope: !2993)
!3026 = !DILocation(line: 958, column: 3, scope: !2993)
!3027 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !172, file: !172, line: 962, type: !3028, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!22, !25, !149, !31, !63}
!3030 = !{!3031, !3032, !3033, !3034, !3035}
!3031 = !DILocalVariable(name: "n", arg: 1, scope: !3027, file: !172, line: 962, type: !25)
!3032 = !DILocalVariable(name: "s", arg: 2, scope: !3027, file: !172, line: 962, type: !149)
!3033 = !DILocalVariable(name: "arg", arg: 3, scope: !3027, file: !172, line: 963, type: !31)
!3034 = !DILocalVariable(name: "argsize", arg: 4, scope: !3027, file: !172, line: 963, type: !63)
!3035 = !DILocalVariable(name: "o", scope: !3027, file: !172, line: 965, type: !1760)
!3036 = !DILocation(line: 962, column: 27, scope: !3027)
!3037 = !DILocation(line: 962, column: 49, scope: !3027)
!3038 = !DILocation(line: 963, column: 35, scope: !3027)
!3039 = !DILocation(line: 963, column: 47, scope: !3027)
!3040 = !DILocation(line: 965, column: 3, scope: !3027)
!3041 = !DILocation(line: 965, column: 32, scope: !3027)
!3042 = !DILocation(line: 193, column: 48, scope: !3007, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 965, column: 36, scope: !3027)
!3044 = !DILocation(line: 195, column: 26, scope: !3007, inlinedAt: !3043)
!3045 = !{!3046}
!3046 = distinct !{!3046, !3047, !"quoting_options_from_style: argument 0"}
!3047 = distinct !{!3047, !"quoting_options_from_style"}
!3048 = !DILocation(line: 196, column: 13, scope: !3019, inlinedAt: !3043)
!3049 = !DILocation(line: 196, column: 7, scope: !3007, inlinedAt: !3043)
!3050 = !DILocation(line: 197, column: 5, scope: !3019, inlinedAt: !3043)
!3051 = !DILocation(line: 198, column: 5, scope: !3007, inlinedAt: !3043)
!3052 = !DILocation(line: 198, column: 11, scope: !3007, inlinedAt: !3043)
!3053 = !DILocation(line: 966, column: 10, scope: !3027)
!3054 = !DILocation(line: 967, column: 1, scope: !3027)
!3055 = !DILocation(line: 966, column: 3, scope: !3027)
!3056 = distinct !DISubprogram(name: "quotearg_style", scope: !172, file: !172, line: 970, type: !3057, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!22, !149, !31}
!3059 = !{!3060, !3061}
!3060 = !DILocalVariable(name: "s", arg: 1, scope: !3056, file: !172, line: 970, type: !149)
!3061 = !DILocalVariable(name: "arg", arg: 2, scope: !3056, file: !172, line: 970, type: !31)
!3062 = !DILocation(line: 970, column: 36, scope: !3056)
!3063 = !DILocation(line: 970, column: 51, scope: !3056)
!3064 = !DILocation(line: 955, column: 23, scope: !2993, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 972, column: 10, scope: !3056)
!3066 = !DILocation(line: 955, column: 45, scope: !2993, inlinedAt: !3065)
!3067 = !DILocation(line: 955, column: 60, scope: !2993, inlinedAt: !3065)
!3068 = !DILocation(line: 957, column: 3, scope: !2993, inlinedAt: !3065)
!3069 = !DILocation(line: 957, column: 32, scope: !2993, inlinedAt: !3065)
!3070 = !DILocation(line: 193, column: 48, scope: !3007, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 957, column: 36, scope: !2993, inlinedAt: !3065)
!3072 = !DILocation(line: 195, column: 26, scope: !3007, inlinedAt: !3071)
!3073 = !{!3074}
!3074 = distinct !{!3074, !3075, !"quoting_options_from_style: argument 0"}
!3075 = distinct !{!3075, !"quoting_options_from_style"}
!3076 = !DILocation(line: 196, column: 13, scope: !3019, inlinedAt: !3071)
!3077 = !DILocation(line: 196, column: 7, scope: !3007, inlinedAt: !3071)
!3078 = !DILocation(line: 197, column: 5, scope: !3019, inlinedAt: !3071)
!3079 = !DILocation(line: 198, column: 5, scope: !3007, inlinedAt: !3071)
!3080 = !DILocation(line: 198, column: 11, scope: !3007, inlinedAt: !3071)
!3081 = !DILocation(line: 958, column: 10, scope: !2993, inlinedAt: !3065)
!3082 = !DILocation(line: 959, column: 1, scope: !2993, inlinedAt: !3065)
!3083 = !DILocation(line: 972, column: 3, scope: !3056)
!3084 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !172, file: !172, line: 976, type: !3085, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!22, !149, !31, !63}
!3087 = !{!3088, !3089, !3090}
!3088 = !DILocalVariable(name: "s", arg: 1, scope: !3084, file: !172, line: 976, type: !149)
!3089 = !DILocalVariable(name: "arg", arg: 2, scope: !3084, file: !172, line: 976, type: !31)
!3090 = !DILocalVariable(name: "argsize", arg: 3, scope: !3084, file: !172, line: 976, type: !63)
!3091 = !DILocation(line: 976, column: 40, scope: !3084)
!3092 = !DILocation(line: 976, column: 55, scope: !3084)
!3093 = !DILocation(line: 976, column: 67, scope: !3084)
!3094 = !DILocation(line: 962, column: 27, scope: !3027, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 978, column: 10, scope: !3084)
!3096 = !DILocation(line: 962, column: 49, scope: !3027, inlinedAt: !3095)
!3097 = !DILocation(line: 963, column: 35, scope: !3027, inlinedAt: !3095)
!3098 = !DILocation(line: 963, column: 47, scope: !3027, inlinedAt: !3095)
!3099 = !DILocation(line: 965, column: 3, scope: !3027, inlinedAt: !3095)
!3100 = !DILocation(line: 965, column: 32, scope: !3027, inlinedAt: !3095)
!3101 = !DILocation(line: 193, column: 48, scope: !3007, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 965, column: 36, scope: !3027, inlinedAt: !3095)
!3103 = !DILocation(line: 195, column: 26, scope: !3007, inlinedAt: !3102)
!3104 = !{!3105}
!3105 = distinct !{!3105, !3106, !"quoting_options_from_style: argument 0"}
!3106 = distinct !{!3106, !"quoting_options_from_style"}
!3107 = !DILocation(line: 196, column: 13, scope: !3019, inlinedAt: !3102)
!3108 = !DILocation(line: 196, column: 7, scope: !3007, inlinedAt: !3102)
!3109 = !DILocation(line: 197, column: 5, scope: !3019, inlinedAt: !3102)
!3110 = !DILocation(line: 198, column: 5, scope: !3007, inlinedAt: !3102)
!3111 = !DILocation(line: 198, column: 11, scope: !3007, inlinedAt: !3102)
!3112 = !DILocation(line: 966, column: 10, scope: !3027, inlinedAt: !3095)
!3113 = !DILocation(line: 967, column: 1, scope: !3027, inlinedAt: !3095)
!3114 = !DILocation(line: 978, column: 3, scope: !3084)
!3115 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !172, file: !172, line: 982, type: !3116, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3118)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!22, !31, !63, !23}
!3118 = !{!3119, !3120, !3121, !3122}
!3119 = !DILocalVariable(name: "arg", arg: 1, scope: !3115, file: !172, line: 982, type: !31)
!3120 = !DILocalVariable(name: "argsize", arg: 2, scope: !3115, file: !172, line: 982, type: !63)
!3121 = !DILocalVariable(name: "ch", arg: 3, scope: !3115, file: !172, line: 982, type: !23)
!3122 = !DILocalVariable(name: "options", scope: !3115, file: !172, line: 984, type: !179)
!3123 = !DILocation(line: 982, column: 32, scope: !3115)
!3124 = !DILocation(line: 982, column: 44, scope: !3115)
!3125 = !DILocation(line: 982, column: 58, scope: !3115)
!3126 = !DILocation(line: 984, column: 3, scope: !3115)
!3127 = !DILocation(line: 985, column: 13, scope: !3115)
!3128 = !{i64 0, i64 4, !787, i64 4, i64 4, !780, i64 8, i64 32, !787, i64 40, i64 8, !692, i64 48, i64 8, !692}
!3129 = !DILocation(line: 984, column: 26, scope: !3115)
!3130 = !DILocation(line: 152, column: 43, scope: !1781, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 986, column: 3, scope: !3115)
!3132 = !DILocation(line: 152, column: 51, scope: !1781, inlinedAt: !3131)
!3133 = !DILocation(line: 152, column: 58, scope: !1781, inlinedAt: !3131)
!3134 = !DILocation(line: 154, column: 17, scope: !1781, inlinedAt: !3131)
!3135 = !DILocation(line: 156, column: 62, scope: !1781, inlinedAt: !3131)
!3136 = !DILocation(line: 156, column: 57, scope: !1781, inlinedAt: !3131)
!3137 = !DILocation(line: 155, column: 17, scope: !1781, inlinedAt: !3131)
!3138 = !DILocation(line: 157, column: 15, scope: !1781, inlinedAt: !3131)
!3139 = !DILocation(line: 157, column: 7, scope: !1781, inlinedAt: !3131)
!3140 = !DILocation(line: 158, column: 12, scope: !1781, inlinedAt: !3131)
!3141 = !DILocation(line: 158, column: 15, scope: !1781, inlinedAt: !3131)
!3142 = !DILocation(line: 158, column: 25, scope: !1781, inlinedAt: !3131)
!3143 = !DILocation(line: 158, column: 7, scope: !1781, inlinedAt: !3131)
!3144 = !DILocation(line: 159, column: 18, scope: !1781, inlinedAt: !3131)
!3145 = !DILocation(line: 159, column: 23, scope: !1781, inlinedAt: !3131)
!3146 = !DILocation(line: 159, column: 6, scope: !1781, inlinedAt: !3131)
!3147 = !DILocation(line: 987, column: 10, scope: !3115)
!3148 = !DILocation(line: 988, column: 1, scope: !3115)
!3149 = !DILocation(line: 987, column: 3, scope: !3115)
!3150 = distinct !DISubprogram(name: "quotearg_char", scope: !172, file: !172, line: 991, type: !3151, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!22, !31, !23}
!3153 = !{!3154, !3155}
!3154 = !DILocalVariable(name: "arg", arg: 1, scope: !3150, file: !172, line: 991, type: !31)
!3155 = !DILocalVariable(name: "ch", arg: 2, scope: !3150, file: !172, line: 991, type: !23)
!3156 = !DILocation(line: 991, column: 28, scope: !3150)
!3157 = !DILocation(line: 991, column: 38, scope: !3150)
!3158 = !DILocation(line: 982, column: 32, scope: !3115, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 993, column: 10, scope: !3150)
!3160 = !DILocation(line: 982, column: 44, scope: !3115, inlinedAt: !3159)
!3161 = !DILocation(line: 982, column: 58, scope: !3115, inlinedAt: !3159)
!3162 = !DILocation(line: 984, column: 3, scope: !3115, inlinedAt: !3159)
!3163 = !DILocation(line: 985, column: 13, scope: !3115, inlinedAt: !3159)
!3164 = !DILocation(line: 984, column: 26, scope: !3115, inlinedAt: !3159)
!3165 = !DILocation(line: 152, column: 43, scope: !1781, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 986, column: 3, scope: !3115, inlinedAt: !3159)
!3167 = !DILocation(line: 152, column: 51, scope: !1781, inlinedAt: !3166)
!3168 = !DILocation(line: 152, column: 58, scope: !1781, inlinedAt: !3166)
!3169 = !DILocation(line: 154, column: 17, scope: !1781, inlinedAt: !3166)
!3170 = !DILocation(line: 156, column: 62, scope: !1781, inlinedAt: !3166)
!3171 = !DILocation(line: 156, column: 57, scope: !1781, inlinedAt: !3166)
!3172 = !DILocation(line: 155, column: 17, scope: !1781, inlinedAt: !3166)
!3173 = !DILocation(line: 157, column: 15, scope: !1781, inlinedAt: !3166)
!3174 = !DILocation(line: 157, column: 7, scope: !1781, inlinedAt: !3166)
!3175 = !DILocation(line: 158, column: 12, scope: !1781, inlinedAt: !3166)
!3176 = !DILocation(line: 158, column: 15, scope: !1781, inlinedAt: !3166)
!3177 = !DILocation(line: 158, column: 25, scope: !1781, inlinedAt: !3166)
!3178 = !DILocation(line: 158, column: 7, scope: !1781, inlinedAt: !3166)
!3179 = !DILocation(line: 159, column: 18, scope: !1781, inlinedAt: !3166)
!3180 = !DILocation(line: 159, column: 23, scope: !1781, inlinedAt: !3166)
!3181 = !DILocation(line: 159, column: 6, scope: !1781, inlinedAt: !3166)
!3182 = !DILocation(line: 987, column: 10, scope: !3115, inlinedAt: !3159)
!3183 = !DILocation(line: 988, column: 1, scope: !3115, inlinedAt: !3159)
!3184 = !DILocation(line: 993, column: 3, scope: !3150)
!3185 = distinct !DISubprogram(name: "quotearg_colon", scope: !172, file: !172, line: 997, type: !2969, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3186)
!3186 = !{!3187}
!3187 = !DILocalVariable(name: "arg", arg: 1, scope: !3185, file: !172, line: 997, type: !31)
!3188 = !DILocation(line: 997, column: 29, scope: !3185)
!3189 = !DILocation(line: 991, column: 28, scope: !3150, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 999, column: 10, scope: !3185)
!3191 = !DILocation(line: 991, column: 38, scope: !3150, inlinedAt: !3190)
!3192 = !DILocation(line: 982, column: 32, scope: !3115, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 993, column: 10, scope: !3150, inlinedAt: !3190)
!3194 = !DILocation(line: 982, column: 44, scope: !3115, inlinedAt: !3193)
!3195 = !DILocation(line: 982, column: 58, scope: !3115, inlinedAt: !3193)
!3196 = !DILocation(line: 984, column: 3, scope: !3115, inlinedAt: !3193)
!3197 = !DILocation(line: 985, column: 13, scope: !3115, inlinedAt: !3193)
!3198 = !DILocation(line: 984, column: 26, scope: !3115, inlinedAt: !3193)
!3199 = !DILocation(line: 152, column: 43, scope: !1781, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 986, column: 3, scope: !3115, inlinedAt: !3193)
!3201 = !DILocation(line: 152, column: 51, scope: !1781, inlinedAt: !3200)
!3202 = !DILocation(line: 152, column: 58, scope: !1781, inlinedAt: !3200)
!3203 = !DILocation(line: 154, column: 17, scope: !1781, inlinedAt: !3200)
!3204 = !DILocation(line: 156, column: 57, scope: !1781, inlinedAt: !3200)
!3205 = !DILocation(line: 155, column: 17, scope: !1781, inlinedAt: !3200)
!3206 = !DILocation(line: 157, column: 7, scope: !1781, inlinedAt: !3200)
!3207 = !DILocation(line: 158, column: 12, scope: !1781, inlinedAt: !3200)
!3208 = !DILocation(line: 159, column: 6, scope: !1781, inlinedAt: !3200)
!3209 = !DILocation(line: 987, column: 10, scope: !3115, inlinedAt: !3193)
!3210 = !DILocation(line: 988, column: 1, scope: !3115, inlinedAt: !3193)
!3211 = !DILocation(line: 999, column: 3, scope: !3185)
!3212 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !172, file: !172, line: 1003, type: !2980, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3213)
!3213 = !{!3214, !3215}
!3214 = !DILocalVariable(name: "arg", arg: 1, scope: !3212, file: !172, line: 1003, type: !31)
!3215 = !DILocalVariable(name: "argsize", arg: 2, scope: !3212, file: !172, line: 1003, type: !63)
!3216 = !DILocation(line: 1003, column: 33, scope: !3212)
!3217 = !DILocation(line: 1003, column: 45, scope: !3212)
!3218 = !DILocation(line: 982, column: 32, scope: !3115, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 1005, column: 10, scope: !3212)
!3220 = !DILocation(line: 982, column: 44, scope: !3115, inlinedAt: !3219)
!3221 = !DILocation(line: 982, column: 58, scope: !3115, inlinedAt: !3219)
!3222 = !DILocation(line: 984, column: 3, scope: !3115, inlinedAt: !3219)
!3223 = !DILocation(line: 985, column: 13, scope: !3115, inlinedAt: !3219)
!3224 = !DILocation(line: 984, column: 26, scope: !3115, inlinedAt: !3219)
!3225 = !DILocation(line: 152, column: 43, scope: !1781, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 986, column: 3, scope: !3115, inlinedAt: !3219)
!3227 = !DILocation(line: 152, column: 51, scope: !1781, inlinedAt: !3226)
!3228 = !DILocation(line: 152, column: 58, scope: !1781, inlinedAt: !3226)
!3229 = !DILocation(line: 154, column: 17, scope: !1781, inlinedAt: !3226)
!3230 = !DILocation(line: 156, column: 57, scope: !1781, inlinedAt: !3226)
!3231 = !DILocation(line: 155, column: 17, scope: !1781, inlinedAt: !3226)
!3232 = !DILocation(line: 157, column: 7, scope: !1781, inlinedAt: !3226)
!3233 = !DILocation(line: 158, column: 12, scope: !1781, inlinedAt: !3226)
!3234 = !DILocation(line: 159, column: 6, scope: !1781, inlinedAt: !3226)
!3235 = !DILocation(line: 987, column: 10, scope: !3115, inlinedAt: !3219)
!3236 = !DILocation(line: 988, column: 1, scope: !3115, inlinedAt: !3219)
!3237 = !DILocation(line: 1005, column: 3, scope: !3212)
!3238 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !172, file: !172, line: 1009, type: !2994, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3239)
!3239 = !{!3240, !3241, !3242, !3243}
!3240 = !DILocalVariable(name: "n", arg: 1, scope: !3238, file: !172, line: 1009, type: !25)
!3241 = !DILocalVariable(name: "s", arg: 2, scope: !3238, file: !172, line: 1009, type: !149)
!3242 = !DILocalVariable(name: "arg", arg: 3, scope: !3238, file: !172, line: 1009, type: !31)
!3243 = !DILocalVariable(name: "options", scope: !3238, file: !172, line: 1011, type: !179)
!3244 = !DILocation(line: 195, column: 26, scope: !3007, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 1012, column: 13, scope: !3238)
!3246 = !DILocation(line: 1009, column: 29, scope: !3238)
!3247 = !DILocation(line: 1009, column: 51, scope: !3238)
!3248 = !DILocation(line: 1009, column: 66, scope: !3238)
!3249 = !DILocation(line: 1011, column: 3, scope: !3238)
!3250 = !DILocation(line: 1012, column: 13, scope: !3238)
!3251 = !DILocation(line: 193, column: 48, scope: !3007, inlinedAt: !3245)
!3252 = !{!3253}
!3253 = distinct !{!3253, !3254, !"quoting_options_from_style: argument 0"}
!3254 = distinct !{!3254, !"quoting_options_from_style"}
!3255 = !DILocation(line: 196, column: 13, scope: !3019, inlinedAt: !3245)
!3256 = !DILocation(line: 196, column: 7, scope: !3007, inlinedAt: !3245)
!3257 = !DILocation(line: 197, column: 5, scope: !3019, inlinedAt: !3245)
!3258 = !DILocation(line: 1011, column: 26, scope: !3238)
!3259 = !DILocation(line: 152, column: 43, scope: !1781, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 1013, column: 3, scope: !3238)
!3261 = !DILocation(line: 152, column: 51, scope: !1781, inlinedAt: !3260)
!3262 = !DILocation(line: 152, column: 58, scope: !1781, inlinedAt: !3260)
!3263 = !DILocation(line: 154, column: 17, scope: !1781, inlinedAt: !3260)
!3264 = !DILocation(line: 156, column: 57, scope: !1781, inlinedAt: !3260)
!3265 = !DILocation(line: 155, column: 17, scope: !1781, inlinedAt: !3260)
!3266 = !DILocation(line: 157, column: 7, scope: !1781, inlinedAt: !3260)
!3267 = !DILocation(line: 158, column: 12, scope: !1781, inlinedAt: !3260)
!3268 = !DILocation(line: 159, column: 6, scope: !1781, inlinedAt: !3260)
!3269 = !DILocation(line: 1014, column: 10, scope: !3238)
!3270 = !DILocation(line: 1015, column: 1, scope: !3238)
!3271 = !DILocation(line: 1014, column: 3, scope: !3238)
!3272 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !172, file: !172, line: 1018, type: !3273, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!22, !25, !31, !31, !31}
!3275 = !{!3276, !3277, !3278, !3279}
!3276 = !DILocalVariable(name: "n", arg: 1, scope: !3272, file: !172, line: 1018, type: !25)
!3277 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3272, file: !172, line: 1018, type: !31)
!3278 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3272, file: !172, line: 1019, type: !31)
!3279 = !DILocalVariable(name: "arg", arg: 4, scope: !3272, file: !172, line: 1019, type: !31)
!3280 = !DILocation(line: 1018, column: 24, scope: !3272)
!3281 = !DILocation(line: 1018, column: 39, scope: !3272)
!3282 = !DILocation(line: 1019, column: 32, scope: !3272)
!3283 = !DILocation(line: 1019, column: 57, scope: !3272)
!3284 = !DILocalVariable(name: "n", arg: 1, scope: !3285, file: !172, line: 1026, type: !25)
!3285 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !172, file: !172, line: 1026, type: !3286, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!22, !25, !31, !31, !31, !63}
!3288 = !{!3284, !3289, !3290, !3291, !3292, !3293}
!3289 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3285, file: !172, line: 1026, type: !31)
!3290 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3285, file: !172, line: 1027, type: !31)
!3291 = !DILocalVariable(name: "arg", arg: 4, scope: !3285, file: !172, line: 1028, type: !31)
!3292 = !DILocalVariable(name: "argsize", arg: 5, scope: !3285, file: !172, line: 1028, type: !63)
!3293 = !DILocalVariable(name: "o", scope: !3285, file: !172, line: 1030, type: !179)
!3294 = !DILocation(line: 1026, column: 28, scope: !3285, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 1021, column: 10, scope: !3272)
!3296 = !DILocation(line: 1026, column: 43, scope: !3285, inlinedAt: !3295)
!3297 = !DILocation(line: 1027, column: 36, scope: !3285, inlinedAt: !3295)
!3298 = !DILocation(line: 1028, column: 36, scope: !3285, inlinedAt: !3295)
!3299 = !DILocation(line: 1028, column: 48, scope: !3285, inlinedAt: !3295)
!3300 = !DILocation(line: 1030, column: 3, scope: !3285, inlinedAt: !3295)
!3301 = !DILocation(line: 1030, column: 30, scope: !3285, inlinedAt: !3295)
!3302 = !DILocation(line: 1030, column: 26, scope: !3285, inlinedAt: !3295)
!3303 = !DILocation(line: 179, column: 45, scope: !1830, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 1031, column: 3, scope: !3285, inlinedAt: !3295)
!3305 = !DILocation(line: 180, column: 33, scope: !1830, inlinedAt: !3304)
!3306 = !DILocation(line: 180, column: 57, scope: !1830, inlinedAt: !3304)
!3307 = !DILocation(line: 184, column: 6, scope: !1830, inlinedAt: !3304)
!3308 = !DILocation(line: 184, column: 12, scope: !1830, inlinedAt: !3304)
!3309 = !DILocation(line: 185, column: 8, scope: !1846, inlinedAt: !3304)
!3310 = !DILocation(line: 185, column: 23, scope: !1846, inlinedAt: !3304)
!3311 = !DILocation(line: 185, column: 19, scope: !1846, inlinedAt: !3304)
!3312 = !DILocation(line: 186, column: 5, scope: !1846, inlinedAt: !3304)
!3313 = !DILocation(line: 187, column: 6, scope: !1830, inlinedAt: !3304)
!3314 = !DILocation(line: 187, column: 17, scope: !1830, inlinedAt: !3304)
!3315 = !DILocation(line: 188, column: 6, scope: !1830, inlinedAt: !3304)
!3316 = !DILocation(line: 188, column: 18, scope: !1830, inlinedAt: !3304)
!3317 = !DILocation(line: 1032, column: 10, scope: !3285, inlinedAt: !3295)
!3318 = !DILocation(line: 1033, column: 1, scope: !3285, inlinedAt: !3295)
!3319 = !DILocation(line: 1021, column: 3, scope: !3272)
!3320 = !DILocation(line: 1026, column: 28, scope: !3285)
!3321 = !DILocation(line: 1026, column: 43, scope: !3285)
!3322 = !DILocation(line: 1027, column: 36, scope: !3285)
!3323 = !DILocation(line: 1028, column: 36, scope: !3285)
!3324 = !DILocation(line: 1028, column: 48, scope: !3285)
!3325 = !DILocation(line: 1030, column: 3, scope: !3285)
!3326 = !DILocation(line: 1030, column: 30, scope: !3285)
!3327 = !DILocation(line: 1030, column: 26, scope: !3285)
!3328 = !DILocation(line: 179, column: 45, scope: !1830, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 1031, column: 3, scope: !3285)
!3330 = !DILocation(line: 180, column: 33, scope: !1830, inlinedAt: !3329)
!3331 = !DILocation(line: 180, column: 57, scope: !1830, inlinedAt: !3329)
!3332 = !DILocation(line: 184, column: 6, scope: !1830, inlinedAt: !3329)
!3333 = !DILocation(line: 184, column: 12, scope: !1830, inlinedAt: !3329)
!3334 = !DILocation(line: 185, column: 8, scope: !1846, inlinedAt: !3329)
!3335 = !DILocation(line: 185, column: 23, scope: !1846, inlinedAt: !3329)
!3336 = !DILocation(line: 185, column: 19, scope: !1846, inlinedAt: !3329)
!3337 = !DILocation(line: 186, column: 5, scope: !1846, inlinedAt: !3329)
!3338 = !DILocation(line: 187, column: 6, scope: !1830, inlinedAt: !3329)
!3339 = !DILocation(line: 187, column: 17, scope: !1830, inlinedAt: !3329)
!3340 = !DILocation(line: 188, column: 6, scope: !1830, inlinedAt: !3329)
!3341 = !DILocation(line: 188, column: 18, scope: !1830, inlinedAt: !3329)
!3342 = !DILocation(line: 1032, column: 10, scope: !3285)
!3343 = !DILocation(line: 1033, column: 1, scope: !3285)
!3344 = !DILocation(line: 1032, column: 3, scope: !3285)
!3345 = distinct !DISubprogram(name: "quotearg_custom", scope: !172, file: !172, line: 1036, type: !3346, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3348)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!22, !31, !31, !31}
!3348 = !{!3349, !3350, !3351}
!3349 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3345, file: !172, line: 1036, type: !31)
!3350 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3345, file: !172, line: 1036, type: !31)
!3351 = !DILocalVariable(name: "arg", arg: 3, scope: !3345, file: !172, line: 1037, type: !31)
!3352 = !DILocation(line: 1036, column: 30, scope: !3345)
!3353 = !DILocation(line: 1036, column: 54, scope: !3345)
!3354 = !DILocation(line: 1037, column: 30, scope: !3345)
!3355 = !DILocation(line: 1018, column: 24, scope: !3272, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 1039, column: 10, scope: !3345)
!3357 = !DILocation(line: 1018, column: 39, scope: !3272, inlinedAt: !3356)
!3358 = !DILocation(line: 1019, column: 32, scope: !3272, inlinedAt: !3356)
!3359 = !DILocation(line: 1019, column: 57, scope: !3272, inlinedAt: !3356)
!3360 = !DILocation(line: 1026, column: 28, scope: !3285, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 1021, column: 10, scope: !3272, inlinedAt: !3356)
!3362 = !DILocation(line: 1026, column: 43, scope: !3285, inlinedAt: !3361)
!3363 = !DILocation(line: 1027, column: 36, scope: !3285, inlinedAt: !3361)
!3364 = !DILocation(line: 1028, column: 36, scope: !3285, inlinedAt: !3361)
!3365 = !DILocation(line: 1028, column: 48, scope: !3285, inlinedAt: !3361)
!3366 = !DILocation(line: 1030, column: 3, scope: !3285, inlinedAt: !3361)
!3367 = !DILocation(line: 1030, column: 30, scope: !3285, inlinedAt: !3361)
!3368 = !DILocation(line: 1030, column: 26, scope: !3285, inlinedAt: !3361)
!3369 = !DILocation(line: 179, column: 45, scope: !1830, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 1031, column: 3, scope: !3285, inlinedAt: !3361)
!3371 = !DILocation(line: 180, column: 33, scope: !1830, inlinedAt: !3370)
!3372 = !DILocation(line: 180, column: 57, scope: !1830, inlinedAt: !3370)
!3373 = !DILocation(line: 184, column: 6, scope: !1830, inlinedAt: !3370)
!3374 = !DILocation(line: 184, column: 12, scope: !1830, inlinedAt: !3370)
!3375 = !DILocation(line: 185, column: 8, scope: !1846, inlinedAt: !3370)
!3376 = !DILocation(line: 185, column: 23, scope: !1846, inlinedAt: !3370)
!3377 = !DILocation(line: 185, column: 19, scope: !1846, inlinedAt: !3370)
!3378 = !DILocation(line: 186, column: 5, scope: !1846, inlinedAt: !3370)
!3379 = !DILocation(line: 187, column: 6, scope: !1830, inlinedAt: !3370)
!3380 = !DILocation(line: 187, column: 17, scope: !1830, inlinedAt: !3370)
!3381 = !DILocation(line: 188, column: 6, scope: !1830, inlinedAt: !3370)
!3382 = !DILocation(line: 188, column: 18, scope: !1830, inlinedAt: !3370)
!3383 = !DILocation(line: 1032, column: 10, scope: !3285, inlinedAt: !3361)
!3384 = !DILocation(line: 1033, column: 1, scope: !3285, inlinedAt: !3361)
!3385 = !DILocation(line: 1039, column: 3, scope: !3345)
!3386 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !172, file: !172, line: 1043, type: !3387, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!22, !31, !31, !31, !63}
!3389 = !{!3390, !3391, !3392, !3393}
!3390 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3386, file: !172, line: 1043, type: !31)
!3391 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3386, file: !172, line: 1043, type: !31)
!3392 = !DILocalVariable(name: "arg", arg: 3, scope: !3386, file: !172, line: 1044, type: !31)
!3393 = !DILocalVariable(name: "argsize", arg: 4, scope: !3386, file: !172, line: 1044, type: !63)
!3394 = !DILocation(line: 1043, column: 34, scope: !3386)
!3395 = !DILocation(line: 1043, column: 58, scope: !3386)
!3396 = !DILocation(line: 1044, column: 34, scope: !3386)
!3397 = !DILocation(line: 1044, column: 46, scope: !3386)
!3398 = !DILocation(line: 1026, column: 28, scope: !3285, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 1046, column: 10, scope: !3386)
!3400 = !DILocation(line: 1026, column: 43, scope: !3285, inlinedAt: !3399)
!3401 = !DILocation(line: 1027, column: 36, scope: !3285, inlinedAt: !3399)
!3402 = !DILocation(line: 1028, column: 36, scope: !3285, inlinedAt: !3399)
!3403 = !DILocation(line: 1028, column: 48, scope: !3285, inlinedAt: !3399)
!3404 = !DILocation(line: 1030, column: 3, scope: !3285, inlinedAt: !3399)
!3405 = !DILocation(line: 1030, column: 30, scope: !3285, inlinedAt: !3399)
!3406 = !DILocation(line: 1030, column: 26, scope: !3285, inlinedAt: !3399)
!3407 = !DILocation(line: 179, column: 45, scope: !1830, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 1031, column: 3, scope: !3285, inlinedAt: !3399)
!3409 = !DILocation(line: 180, column: 33, scope: !1830, inlinedAt: !3408)
!3410 = !DILocation(line: 180, column: 57, scope: !1830, inlinedAt: !3408)
!3411 = !DILocation(line: 184, column: 6, scope: !1830, inlinedAt: !3408)
!3412 = !DILocation(line: 184, column: 12, scope: !1830, inlinedAt: !3408)
!3413 = !DILocation(line: 185, column: 8, scope: !1846, inlinedAt: !3408)
!3414 = !DILocation(line: 185, column: 23, scope: !1846, inlinedAt: !3408)
!3415 = !DILocation(line: 185, column: 19, scope: !1846, inlinedAt: !3408)
!3416 = !DILocation(line: 186, column: 5, scope: !1846, inlinedAt: !3408)
!3417 = !DILocation(line: 187, column: 6, scope: !1830, inlinedAt: !3408)
!3418 = !DILocation(line: 187, column: 17, scope: !1830, inlinedAt: !3408)
!3419 = !DILocation(line: 188, column: 6, scope: !1830, inlinedAt: !3408)
!3420 = !DILocation(line: 188, column: 18, scope: !1830, inlinedAt: !3408)
!3421 = !DILocation(line: 1032, column: 10, scope: !3285, inlinedAt: !3399)
!3422 = !DILocation(line: 1033, column: 1, scope: !3285, inlinedAt: !3399)
!3423 = !DILocation(line: 1046, column: 3, scope: !3386)
!3424 = distinct !DISubprogram(name: "quote_n_mem", scope: !172, file: !172, line: 1061, type: !3425, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!31, !25, !31, !63}
!3427 = !{!3428, !3429, !3430}
!3428 = !DILocalVariable(name: "n", arg: 1, scope: !3424, file: !172, line: 1061, type: !25)
!3429 = !DILocalVariable(name: "arg", arg: 2, scope: !3424, file: !172, line: 1061, type: !31)
!3430 = !DILocalVariable(name: "argsize", arg: 3, scope: !3424, file: !172, line: 1061, type: !63)
!3431 = !DILocation(line: 1061, column: 18, scope: !3424)
!3432 = !DILocation(line: 1061, column: 33, scope: !3424)
!3433 = !DILocation(line: 1061, column: 45, scope: !3424)
!3434 = !DILocation(line: 1063, column: 10, scope: !3424)
!3435 = !DILocation(line: 1063, column: 3, scope: !3424)
!3436 = distinct !DISubprogram(name: "quote_mem", scope: !172, file: !172, line: 1067, type: !3437, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!31, !31, !63}
!3439 = !{!3440, !3441}
!3440 = !DILocalVariable(name: "arg", arg: 1, scope: !3436, file: !172, line: 1067, type: !31)
!3441 = !DILocalVariable(name: "argsize", arg: 2, scope: !3436, file: !172, line: 1067, type: !63)
!3442 = !DILocation(line: 1067, column: 24, scope: !3436)
!3443 = !DILocation(line: 1067, column: 36, scope: !3436)
!3444 = !DILocation(line: 1061, column: 18, scope: !3424, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 1069, column: 10, scope: !3436)
!3446 = !DILocation(line: 1061, column: 33, scope: !3424, inlinedAt: !3445)
!3447 = !DILocation(line: 1061, column: 45, scope: !3424, inlinedAt: !3445)
!3448 = !DILocation(line: 1063, column: 10, scope: !3424, inlinedAt: !3445)
!3449 = !DILocation(line: 1069, column: 3, scope: !3436)
!3450 = distinct !DISubprogram(name: "quote_n", scope: !172, file: !172, line: 1073, type: !3451, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!31, !25, !31}
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "n", arg: 1, scope: !3450, file: !172, line: 1073, type: !25)
!3455 = !DILocalVariable(name: "arg", arg: 2, scope: !3450, file: !172, line: 1073, type: !31)
!3456 = !DILocation(line: 1073, column: 14, scope: !3450)
!3457 = !DILocation(line: 1073, column: 29, scope: !3450)
!3458 = !DILocation(line: 1061, column: 18, scope: !3424, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 1075, column: 10, scope: !3450)
!3460 = !DILocation(line: 1061, column: 33, scope: !3424, inlinedAt: !3459)
!3461 = !DILocation(line: 1061, column: 45, scope: !3424, inlinedAt: !3459)
!3462 = !DILocation(line: 1063, column: 10, scope: !3424, inlinedAt: !3459)
!3463 = !DILocation(line: 1075, column: 3, scope: !3450)
!3464 = distinct !DISubprogram(name: "quote", scope: !172, file: !172, line: 1079, type: !1286, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3465)
!3465 = !{!3466}
!3466 = !DILocalVariable(name: "arg", arg: 1, scope: !3464, file: !172, line: 1079, type: !31)
!3467 = !DILocation(line: 1079, column: 20, scope: !3464)
!3468 = !DILocation(line: 1073, column: 14, scope: !3450, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 1081, column: 10, scope: !3464)
!3470 = !DILocation(line: 1073, column: 29, scope: !3450, inlinedAt: !3469)
!3471 = !DILocation(line: 1061, column: 18, scope: !3424, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 1075, column: 10, scope: !3450, inlinedAt: !3469)
!3473 = !DILocation(line: 1061, column: 33, scope: !3424, inlinedAt: !3472)
!3474 = !DILocation(line: 1061, column: 45, scope: !3424, inlinedAt: !3472)
!3475 = !DILocation(line: 1063, column: 10, scope: !3424, inlinedAt: !3472)
!3476 = !DILocation(line: 1081, column: 3, scope: !3464)
!3477 = distinct !DISubprogram(name: "version_etc_arn", scope: !224, file: !224, line: 62, type: !3478, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3535)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{null, !3480, !31, !31, !31, !3534, !63}
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3482, line: 7, baseType: !3483)
!3482 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3484, line: 49, size: 1728, elements: !3485)
!3484 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3501, !3503, !3504, !3505, !3508, !3509, !3511, !3515, !3518, !3520, !3523, !3526, !3527, !3528, !3529, !3530}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3483, file: !3484, line: 51, baseType: !25, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3483, file: !3484, line: 54, baseType: !22, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3483, file: !3484, line: 55, baseType: !22, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3483, file: !3484, line: 56, baseType: !22, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3483, file: !3484, line: 57, baseType: !22, size: 64, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3483, file: !3484, line: 58, baseType: !22, size: 64, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3483, file: !3484, line: 59, baseType: !22, size: 64, offset: 384)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3483, file: !3484, line: 60, baseType: !22, size: 64, offset: 448)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3483, file: !3484, line: 61, baseType: !22, size: 64, offset: 512)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3483, file: !3484, line: 64, baseType: !22, size: 64, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3483, file: !3484, line: 65, baseType: !22, size: 64, offset: 640)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3483, file: !3484, line: 66, baseType: !22, size: 64, offset: 704)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3483, file: !3484, line: 68, baseType: !3499, size: 64, offset: 768)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3484, line: 36, flags: DIFlagFwdDecl)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3483, file: !3484, line: 70, baseType: !3502, size: 64, offset: 832)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3483, file: !3484, line: 72, baseType: !25, size: 32, offset: 896)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3483, file: !3484, line: 73, baseType: !25, size: 32, offset: 928)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3483, file: !3484, line: 74, baseType: !3506, size: 64, offset: 960)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !3507, line: 150, baseType: !1489)
!3507 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3483, file: !3484, line: 77, baseType: !26, size: 16, offset: 1024)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3483, file: !3484, line: 78, baseType: !3510, size: 8, offset: 1040)
!3510 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3483, file: !3484, line: 79, baseType: !3512, size: 8, offset: 1048)
!3512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !3513)
!3513 = !{!3514}
!3514 = !DISubrange(count: 1)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3483, file: !3484, line: 81, baseType: !3516, size: 64, offset: 1088)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3484, line: 43, baseType: null)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3483, file: !3484, line: 89, baseType: !3519, size: 64, offset: 1152)
!3519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !3507, line: 151, baseType: !1489)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3483, file: !3484, line: 91, baseType: !3521, size: 64, offset: 1216)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3484, line: 37, flags: DIFlagFwdDecl)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3483, file: !3484, line: 92, baseType: !3524, size: 64, offset: 1280)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3484, line: 38, flags: DIFlagFwdDecl)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3483, file: !3484, line: 93, baseType: !3502, size: 64, offset: 1344)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3483, file: !3484, line: 94, baseType: !24, size: 64, offset: 1408)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3483, file: !3484, line: 95, baseType: !63, size: 64, offset: 1472)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3483, file: !3484, line: 96, baseType: !25, size: 32, offset: 1536)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3483, file: !3484, line: 98, baseType: !3531, size: 160, offset: 1568)
!3531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !3532)
!3532 = !{!3533}
!3533 = !DISubrange(count: 20)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541}
!3536 = !DILocalVariable(name: "stream", arg: 1, scope: !3477, file: !224, line: 62, type: !3480)
!3537 = !DILocalVariable(name: "command_name", arg: 2, scope: !3477, file: !224, line: 63, type: !31)
!3538 = !DILocalVariable(name: "package", arg: 3, scope: !3477, file: !224, line: 63, type: !31)
!3539 = !DILocalVariable(name: "version", arg: 4, scope: !3477, file: !224, line: 64, type: !31)
!3540 = !DILocalVariable(name: "authors", arg: 5, scope: !3477, file: !224, line: 65, type: !3534)
!3541 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3477, file: !224, line: 65, type: !63)
!3542 = !DILocation(line: 62, column: 24, scope: !3477)
!3543 = !DILocation(line: 63, column: 30, scope: !3477)
!3544 = !DILocation(line: 63, column: 56, scope: !3477)
!3545 = !DILocation(line: 64, column: 30, scope: !3477)
!3546 = !DILocation(line: 65, column: 39, scope: !3477)
!3547 = !DILocation(line: 65, column: 55, scope: !3477)
!3548 = !DILocation(line: 67, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3477, file: !224, line: 67, column: 7)
!3550 = !DILocation(line: 67, column: 7, scope: !3477)
!3551 = !DILocation(line: 68, column: 5, scope: !3549)
!3552 = !DILocation(line: 70, column: 5, scope: !3549)
!3553 = !DILocation(line: 84, column: 3, scope: !3477)
!3554 = !DILocation(line: 86, column: 3, scope: !3477)
!3555 = !DILocation(line: 95, column: 3, scope: !3477)
!3556 = !DILocation(line: 99, column: 7, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3477, file: !224, line: 96, column: 5)
!3558 = !DILocation(line: 102, column: 7, scope: !3557)
!3559 = !DILocation(line: 103, column: 7, scope: !3557)
!3560 = !DILocation(line: 106, column: 7, scope: !3557)
!3561 = !DILocation(line: 107, column: 7, scope: !3557)
!3562 = !DILocation(line: 110, column: 7, scope: !3557)
!3563 = !DILocation(line: 112, column: 7, scope: !3557)
!3564 = !DILocation(line: 117, column: 7, scope: !3557)
!3565 = !DILocation(line: 119, column: 7, scope: !3557)
!3566 = !DILocation(line: 124, column: 7, scope: !3557)
!3567 = !DILocation(line: 126, column: 7, scope: !3557)
!3568 = !DILocation(line: 131, column: 7, scope: !3557)
!3569 = !DILocation(line: 134, column: 7, scope: !3557)
!3570 = !DILocation(line: 139, column: 7, scope: !3557)
!3571 = !DILocation(line: 142, column: 7, scope: !3557)
!3572 = !DILocation(line: 147, column: 7, scope: !3557)
!3573 = !DILocation(line: 151, column: 7, scope: !3557)
!3574 = !DILocation(line: 156, column: 7, scope: !3557)
!3575 = !DILocation(line: 160, column: 7, scope: !3557)
!3576 = !DILocation(line: 167, column: 7, scope: !3557)
!3577 = !DILocation(line: 171, column: 7, scope: !3557)
!3578 = !DILocation(line: 173, column: 1, scope: !3477)
!3579 = distinct !DISubprogram(name: "version_etc_ar", scope: !224, file: !224, line: 180, type: !3580, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{null, !3480, !31, !31, !31, !3534}
!3582 = !{!3583, !3584, !3585, !3586, !3587, !3588}
!3583 = !DILocalVariable(name: "stream", arg: 1, scope: !3579, file: !224, line: 180, type: !3480)
!3584 = !DILocalVariable(name: "command_name", arg: 2, scope: !3579, file: !224, line: 181, type: !31)
!3585 = !DILocalVariable(name: "package", arg: 3, scope: !3579, file: !224, line: 181, type: !31)
!3586 = !DILocalVariable(name: "version", arg: 4, scope: !3579, file: !224, line: 182, type: !31)
!3587 = !DILocalVariable(name: "authors", arg: 5, scope: !3579, file: !224, line: 182, type: !3534)
!3588 = !DILocalVariable(name: "n_authors", scope: !3579, file: !224, line: 184, type: !63)
!3589 = !DILocation(line: 180, column: 23, scope: !3579)
!3590 = !DILocation(line: 181, column: 29, scope: !3579)
!3591 = !DILocation(line: 181, column: 55, scope: !3579)
!3592 = !DILocation(line: 182, column: 29, scope: !3579)
!3593 = !DILocation(line: 182, column: 59, scope: !3579)
!3594 = !DILocation(line: 184, column: 10, scope: !3579)
!3595 = !DILocation(line: 186, column: 8, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3579, file: !224, line: 186, column: 3)
!3597 = !DILocation(line: 0, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3596, file: !224, line: 186, column: 3)
!3599 = !DILocation(line: 186, column: 23, scope: !3598)
!3600 = !DILocation(line: 186, column: 3, scope: !3596)
!3601 = !DILocation(line: 186, column: 52, scope: !3598)
!3602 = distinct !{!3602, !3600, !3603}
!3603 = !DILocation(line: 187, column: 5, scope: !3596)
!3604 = !DILocation(line: 188, column: 3, scope: !3579)
!3605 = !DILocation(line: 189, column: 1, scope: !3579)
!3606 = distinct !DISubprogram(name: "version_etc_va", scope: !224, file: !224, line: 196, type: !3607, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3616)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{null, !3480, !31, !31, !31, !3609}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !221, line: 189, size: 192, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3615}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3610, file: !221, line: 189, baseType: !7, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3610, file: !221, line: 189, baseType: !7, size: 32, offset: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3610, file: !221, line: 189, baseType: !24, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3610, file: !221, line: 189, baseType: !24, size: 64, offset: 128)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3623}
!3617 = !DILocalVariable(name: "stream", arg: 1, scope: !3606, file: !224, line: 196, type: !3480)
!3618 = !DILocalVariable(name: "command_name", arg: 2, scope: !3606, file: !224, line: 197, type: !31)
!3619 = !DILocalVariable(name: "package", arg: 3, scope: !3606, file: !224, line: 197, type: !31)
!3620 = !DILocalVariable(name: "version", arg: 4, scope: !3606, file: !224, line: 198, type: !31)
!3621 = !DILocalVariable(name: "authors", arg: 5, scope: !3606, file: !224, line: 198, type: !3609)
!3622 = !DILocalVariable(name: "n_authors", scope: !3606, file: !224, line: 200, type: !63)
!3623 = !DILocalVariable(name: "authtab", scope: !3606, file: !224, line: 201, type: !3624)
!3624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 640, elements: !175)
!3625 = !DILocation(line: 196, column: 23, scope: !3606)
!3626 = !DILocation(line: 197, column: 29, scope: !3606)
!3627 = !DILocation(line: 197, column: 55, scope: !3606)
!3628 = !DILocation(line: 198, column: 29, scope: !3606)
!3629 = !DILocation(line: 198, column: 46, scope: !3606)
!3630 = !DILocation(line: 201, column: 3, scope: !3606)
!3631 = !DILocation(line: 201, column: 15, scope: !3606)
!3632 = !DILocation(line: 200, column: 10, scope: !3606)
!3633 = !DILocation(line: 205, column: 35, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !224, line: 203, column: 3)
!3635 = distinct !DILexicalBlock(scope: !3606, file: !224, line: 203, column: 3)
!3636 = !DILocation(line: 205, column: 14, scope: !3634)
!3637 = !DILocation(line: 205, column: 33, scope: !3634)
!3638 = !DILocation(line: 205, column: 67, scope: !3634)
!3639 = !DILocation(line: 203, column: 3, scope: !3635)
!3640 = !DILocation(line: 0, scope: !3634)
!3641 = !DILocation(line: 208, column: 3, scope: !3606)
!3642 = !DILocation(line: 210, column: 1, scope: !3606)
!3643 = distinct !DISubprogram(name: "version_etc", scope: !224, file: !224, line: 227, type: !3644, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{null, !3480, !31, !31, !31, null}
!3646 = !{!3647, !3648, !3649, !3650, !3651}
!3647 = !DILocalVariable(name: "stream", arg: 1, scope: !3643, file: !224, line: 227, type: !3480)
!3648 = !DILocalVariable(name: "command_name", arg: 2, scope: !3643, file: !224, line: 228, type: !31)
!3649 = !DILocalVariable(name: "package", arg: 3, scope: !3643, file: !224, line: 228, type: !31)
!3650 = !DILocalVariable(name: "version", arg: 4, scope: !3643, file: !224, line: 229, type: !31)
!3651 = !DILocalVariable(name: "authors", scope: !3643, file: !224, line: 231, type: !3652)
!3652 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3653, line: 52, baseType: !3654)
!3653 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3655, line: 48, baseType: !3656)
!3655 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !221, line: 231, baseType: !3657)
!3657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3610, size: 192, elements: !3513)
!3658 = !DILocation(line: 227, column: 20, scope: !3643)
!3659 = !DILocation(line: 228, column: 26, scope: !3643)
!3660 = !DILocation(line: 228, column: 52, scope: !3643)
!3661 = !DILocation(line: 229, column: 26, scope: !3643)
!3662 = !DILocation(line: 231, column: 3, scope: !3643)
!3663 = !DILocation(line: 231, column: 11, scope: !3643)
!3664 = !DILocation(line: 233, column: 3, scope: !3643)
!3665 = !DILocation(line: 234, column: 3, scope: !3643)
!3666 = !DILocation(line: 235, column: 3, scope: !3643)
!3667 = !DILocation(line: 236, column: 1, scope: !3643)
!3668 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !224, file: !224, line: 239, type: !700, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !90)
!3669 = !DILocation(line: 245, column: 3, scope: !3668)
!3670 = !DILocation(line: 251, column: 3, scope: !3668)
!3671 = !DILocation(line: 256, column: 3, scope: !3668)
!3672 = !DILocation(line: 258, column: 1, scope: !3668)
!3673 = distinct !DISubprogram(name: "xnmalloc", scope: !232, file: !232, line: 99, type: !3674, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!24, !63, !63}
!3676 = !{!3677, !3678}
!3677 = !DILocalVariable(name: "n", arg: 1, scope: !3673, file: !232, line: 99, type: !63)
!3678 = !DILocalVariable(name: "s", arg: 2, scope: !3673, file: !232, line: 99, type: !63)
!3679 = !DILocation(line: 99, column: 18, scope: !3673)
!3680 = !DILocation(line: 99, column: 28, scope: !3673)
!3681 = !DILocation(line: 101, column: 7, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3673, file: !232, line: 101, column: 7)
!3683 = !DILocation(line: 101, column: 7, scope: !3673)
!3684 = !DILocation(line: 102, column: 5, scope: !3682)
!3685 = !DILocation(line: 103, column: 21, scope: !3673)
!3686 = !DILocalVariable(name: "n", arg: 1, scope: !3687, file: !3688, line: 39, type: !63)
!3687 = distinct !DISubprogram(name: "xmalloc", scope: !3688, file: !3688, line: 39, type: !3689, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3691)
!3688 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!24, !63}
!3691 = !{!3686, !3692}
!3692 = !DILocalVariable(name: "p", scope: !3687, file: !3688, line: 41, type: !24)
!3693 = !DILocation(line: 39, column: 17, scope: !3687, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 103, column: 10, scope: !3673)
!3695 = !DILocation(line: 41, column: 13, scope: !3687, inlinedAt: !3694)
!3696 = !DILocation(line: 41, column: 9, scope: !3687, inlinedAt: !3694)
!3697 = !DILocation(line: 42, column: 8, scope: !3698, inlinedAt: !3694)
!3698 = distinct !DILexicalBlock(scope: !3687, file: !3688, line: 42, column: 7)
!3699 = !DILocation(line: 42, column: 15, scope: !3698, inlinedAt: !3694)
!3700 = !DILocation(line: 42, column: 10, scope: !3698, inlinedAt: !3694)
!3701 = !DILocation(line: 43, column: 5, scope: !3698, inlinedAt: !3694)
!3702 = !DILocation(line: 103, column: 3, scope: !3673)
!3703 = !DILocation(line: 39, column: 17, scope: !3687)
!3704 = !DILocation(line: 41, column: 13, scope: !3687)
!3705 = !DILocation(line: 41, column: 9, scope: !3687)
!3706 = !DILocation(line: 42, column: 8, scope: !3698)
!3707 = !DILocation(line: 42, column: 15, scope: !3698)
!3708 = !DILocation(line: 42, column: 10, scope: !3698)
!3709 = !DILocation(line: 43, column: 5, scope: !3698)
!3710 = !DILocation(line: 44, column: 3, scope: !3687)
!3711 = distinct !DISubprogram(name: "xnrealloc", scope: !232, file: !232, line: 112, type: !3712, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!24, !24, !63, !63}
!3714 = !{!3715, !3716, !3717}
!3715 = !DILocalVariable(name: "p", arg: 1, scope: !3711, file: !232, line: 112, type: !24)
!3716 = !DILocalVariable(name: "n", arg: 2, scope: !3711, file: !232, line: 112, type: !63)
!3717 = !DILocalVariable(name: "s", arg: 3, scope: !3711, file: !232, line: 112, type: !63)
!3718 = !DILocation(line: 112, column: 18, scope: !3711)
!3719 = !DILocation(line: 112, column: 28, scope: !3711)
!3720 = !DILocation(line: 112, column: 38, scope: !3711)
!3721 = !DILocation(line: 114, column: 7, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3711, file: !232, line: 114, column: 7)
!3723 = !DILocation(line: 114, column: 7, scope: !3711)
!3724 = !DILocation(line: 115, column: 5, scope: !3722)
!3725 = !DILocation(line: 116, column: 25, scope: !3711)
!3726 = !DILocalVariable(name: "p", arg: 1, scope: !3727, file: !3688, line: 51, type: !24)
!3727 = distinct !DISubprogram(name: "xrealloc", scope: !3688, file: !3688, line: 51, type: !3728, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!24, !24, !63}
!3730 = !{!3726, !3731}
!3731 = !DILocalVariable(name: "n", arg: 2, scope: !3727, file: !3688, line: 51, type: !63)
!3732 = !DILocation(line: 51, column: 17, scope: !3727, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 116, column: 10, scope: !3711)
!3734 = !DILocation(line: 51, column: 27, scope: !3727, inlinedAt: !3733)
!3735 = !DILocation(line: 53, column: 8, scope: !3736, inlinedAt: !3733)
!3736 = distinct !DILexicalBlock(scope: !3727, file: !3688, line: 53, column: 7)
!3737 = !DILocation(line: 53, column: 13, scope: !3736, inlinedAt: !3733)
!3738 = !DILocation(line: 53, column: 10, scope: !3736, inlinedAt: !3733)
!3739 = !DILocation(line: 57, column: 7, scope: !3740, inlinedAt: !3733)
!3740 = distinct !DILexicalBlock(scope: !3736, file: !3688, line: 54, column: 5)
!3741 = !DILocation(line: 58, column: 7, scope: !3740, inlinedAt: !3733)
!3742 = !DILocation(line: 61, column: 7, scope: !3727, inlinedAt: !3733)
!3743 = !DILocation(line: 62, column: 8, scope: !3744, inlinedAt: !3733)
!3744 = distinct !DILexicalBlock(scope: !3727, file: !3688, line: 62, column: 7)
!3745 = !DILocation(line: 62, column: 13, scope: !3744, inlinedAt: !3733)
!3746 = !DILocation(line: 62, column: 10, scope: !3744, inlinedAt: !3733)
!3747 = !DILocation(line: 63, column: 5, scope: !3744, inlinedAt: !3733)
!3748 = !DILocation(line: 0, scope: !3727, inlinedAt: !3733)
!3749 = !DILocation(line: 116, column: 3, scope: !3711)
!3750 = !DILocation(line: 51, column: 17, scope: !3727)
!3751 = !DILocation(line: 51, column: 27, scope: !3727)
!3752 = !DILocation(line: 53, column: 8, scope: !3736)
!3753 = !DILocation(line: 53, column: 13, scope: !3736)
!3754 = !DILocation(line: 53, column: 10, scope: !3736)
!3755 = !DILocation(line: 57, column: 7, scope: !3740)
!3756 = !DILocation(line: 58, column: 7, scope: !3740)
!3757 = !DILocation(line: 61, column: 7, scope: !3727)
!3758 = !DILocation(line: 62, column: 8, scope: !3744)
!3759 = !DILocation(line: 62, column: 13, scope: !3744)
!3760 = !DILocation(line: 62, column: 10, scope: !3744)
!3761 = !DILocation(line: 63, column: 5, scope: !3744)
!3762 = !DILocation(line: 0, scope: !3727)
!3763 = !DILocation(line: 65, column: 1, scope: !3727)
!3764 = !DILocation(line: 174, column: 19, scope: !233)
!3765 = !DILocation(line: 174, column: 30, scope: !233)
!3766 = !DILocation(line: 174, column: 41, scope: !233)
!3767 = !DILocation(line: 176, column: 14, scope: !233)
!3768 = !DILocation(line: 176, column: 10, scope: !233)
!3769 = !DILocation(line: 178, column: 9, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !233, file: !232, line: 178, column: 7)
!3771 = !DILocation(line: 178, column: 7, scope: !233)
!3772 = !DILocation(line: 180, column: 13, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !232, line: 180, column: 11)
!3774 = distinct !DILexicalBlock(scope: !3770, file: !232, line: 179, column: 5)
!3775 = !DILocation(line: 180, column: 11, scope: !3774)
!3776 = !DILocation(line: 188, column: 30, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3773, file: !232, line: 181, column: 9)
!3778 = !DILocation(line: 189, column: 16, scope: !3777)
!3779 = !DILocation(line: 189, column: 13, scope: !3777)
!3780 = !DILocation(line: 190, column: 9, scope: !3777)
!3781 = !DILocation(line: 0, scope: !3777)
!3782 = !DILocation(line: 191, column: 11, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3774, file: !232, line: 191, column: 11)
!3784 = !DILocation(line: 191, column: 11, scope: !3774)
!3785 = !DILocation(line: 206, column: 7, scope: !233)
!3786 = !DILocation(line: 207, column: 25, scope: !233)
!3787 = !DILocation(line: 51, column: 17, scope: !3727, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 207, column: 10, scope: !233)
!3789 = !DILocation(line: 51, column: 27, scope: !3727, inlinedAt: !3788)
!3790 = !DILocation(line: 53, column: 10, scope: !3736, inlinedAt: !3788)
!3791 = !DILocation(line: 192, column: 9, scope: !3783)
!3792 = !DILocation(line: 200, column: 69, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !232, line: 200, column: 11)
!3794 = distinct !DILexicalBlock(scope: !3770, file: !232, line: 195, column: 5)
!3795 = !DILocation(line: 201, column: 11, scope: !3793)
!3796 = !DILocation(line: 200, column: 11, scope: !3794)
!3797 = !DILocation(line: 202, column: 9, scope: !3793)
!3798 = !DILocation(line: 203, column: 14, scope: !3794)
!3799 = !DILocation(line: 203, column: 18, scope: !3794)
!3800 = !DILocation(line: 203, column: 9, scope: !3794)
!3801 = !DILocation(line: 53, column: 8, scope: !3736, inlinedAt: !3788)
!3802 = !DILocation(line: 57, column: 7, scope: !3740, inlinedAt: !3788)
!3803 = !DILocation(line: 58, column: 7, scope: !3740, inlinedAt: !3788)
!3804 = !DILocation(line: 61, column: 7, scope: !3727, inlinedAt: !3788)
!3805 = !DILocation(line: 62, column: 8, scope: !3744, inlinedAt: !3788)
!3806 = !DILocation(line: 62, column: 13, scope: !3744, inlinedAt: !3788)
!3807 = !DILocation(line: 62, column: 10, scope: !3744, inlinedAt: !3788)
!3808 = !DILocation(line: 63, column: 5, scope: !3744, inlinedAt: !3788)
!3809 = !DILocation(line: 0, scope: !3727, inlinedAt: !3788)
!3810 = !DILocation(line: 207, column: 3, scope: !233)
!3811 = distinct !DISubprogram(name: "xcharalloc", scope: !232, file: !232, line: 216, type: !2764, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3812)
!3812 = !{!3813}
!3813 = !DILocalVariable(name: "n", arg: 1, scope: !3811, file: !232, line: 216, type: !63)
!3814 = !DILocation(line: 216, column: 20, scope: !3811)
!3815 = !DILocation(line: 39, column: 17, scope: !3687, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 218, column: 10, scope: !3811)
!3817 = !DILocation(line: 41, column: 13, scope: !3687, inlinedAt: !3816)
!3818 = !DILocation(line: 41, column: 9, scope: !3687, inlinedAt: !3816)
!3819 = !DILocation(line: 42, column: 8, scope: !3698, inlinedAt: !3816)
!3820 = !DILocation(line: 42, column: 15, scope: !3698, inlinedAt: !3816)
!3821 = !DILocation(line: 42, column: 10, scope: !3698, inlinedAt: !3816)
!3822 = !DILocation(line: 43, column: 5, scope: !3698, inlinedAt: !3816)
!3823 = !DILocation(line: 218, column: 3, scope: !3811)
!3824 = distinct !DISubprogram(name: "x2realloc", scope: !3688, file: !3688, line: 74, type: !3825, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3827)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!24, !24, !236}
!3827 = !{!3828, !3829}
!3828 = !DILocalVariable(name: "p", arg: 1, scope: !3824, file: !3688, line: 74, type: !24)
!3829 = !DILocalVariable(name: "pn", arg: 2, scope: !3824, file: !3688, line: 74, type: !236)
!3830 = !DILocation(line: 74, column: 18, scope: !3824)
!3831 = !DILocation(line: 74, column: 29, scope: !3824)
!3832 = !DILocation(line: 174, column: 19, scope: !233, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 76, column: 10, scope: !3824)
!3834 = !DILocation(line: 174, column: 30, scope: !233, inlinedAt: !3833)
!3835 = !DILocation(line: 174, column: 41, scope: !233, inlinedAt: !3833)
!3836 = !DILocation(line: 176, column: 14, scope: !233, inlinedAt: !3833)
!3837 = !DILocation(line: 176, column: 10, scope: !233, inlinedAt: !3833)
!3838 = !DILocation(line: 178, column: 9, scope: !3770, inlinedAt: !3833)
!3839 = !DILocation(line: 178, column: 7, scope: !233, inlinedAt: !3833)
!3840 = !DILocation(line: 180, column: 13, scope: !3773, inlinedAt: !3833)
!3841 = !DILocation(line: 180, column: 11, scope: !3774, inlinedAt: !3833)
!3842 = !DILocation(line: 191, column: 11, scope: !3783, inlinedAt: !3833)
!3843 = !DILocation(line: 191, column: 11, scope: !3774, inlinedAt: !3833)
!3844 = !DILocation(line: 206, column: 7, scope: !233, inlinedAt: !3833)
!3845 = !DILocation(line: 51, column: 17, scope: !3727, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 207, column: 10, scope: !233, inlinedAt: !3833)
!3847 = !DILocation(line: 51, column: 27, scope: !3727, inlinedAt: !3846)
!3848 = !DILocation(line: 53, column: 10, scope: !3736, inlinedAt: !3846)
!3849 = !DILocation(line: 192, column: 9, scope: !3783, inlinedAt: !3833)
!3850 = !DILocation(line: 201, column: 11, scope: !3793, inlinedAt: !3833)
!3851 = !DILocation(line: 200, column: 11, scope: !3794, inlinedAt: !3833)
!3852 = !DILocation(line: 202, column: 9, scope: !3793, inlinedAt: !3833)
!3853 = !DILocation(line: 203, column: 14, scope: !3794, inlinedAt: !3833)
!3854 = !DILocation(line: 203, column: 18, scope: !3794, inlinedAt: !3833)
!3855 = !DILocation(line: 203, column: 9, scope: !3794, inlinedAt: !3833)
!3856 = !DILocation(line: 53, column: 8, scope: !3736, inlinedAt: !3846)
!3857 = !DILocation(line: 57, column: 7, scope: !3740, inlinedAt: !3846)
!3858 = !DILocation(line: 58, column: 7, scope: !3740, inlinedAt: !3846)
!3859 = !DILocation(line: 61, column: 7, scope: !3727, inlinedAt: !3846)
!3860 = !DILocation(line: 62, column: 8, scope: !3744, inlinedAt: !3846)
!3861 = !DILocation(line: 62, column: 13, scope: !3744, inlinedAt: !3846)
!3862 = !DILocation(line: 62, column: 10, scope: !3744, inlinedAt: !3846)
!3863 = !DILocation(line: 63, column: 5, scope: !3744, inlinedAt: !3846)
!3864 = !DILocation(line: 0, scope: !3727, inlinedAt: !3846)
!3865 = !DILocation(line: 76, column: 3, scope: !3824)
!3866 = distinct !DISubprogram(name: "xzalloc", scope: !3688, file: !3688, line: 84, type: !3689, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3867)
!3867 = !{!3868}
!3868 = !DILocalVariable(name: "s", arg: 1, scope: !3866, file: !3688, line: 84, type: !63)
!3869 = !DILocation(line: 84, column: 17, scope: !3866)
!3870 = !DILocation(line: 39, column: 17, scope: !3687, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 86, column: 18, scope: !3866)
!3872 = !DILocation(line: 41, column: 13, scope: !3687, inlinedAt: !3871)
!3873 = !DILocation(line: 41, column: 9, scope: !3687, inlinedAt: !3871)
!3874 = !DILocation(line: 42, column: 8, scope: !3698, inlinedAt: !3871)
!3875 = !DILocation(line: 42, column: 15, scope: !3698, inlinedAt: !3871)
!3876 = !DILocation(line: 42, column: 10, scope: !3698, inlinedAt: !3871)
!3877 = !DILocation(line: 43, column: 5, scope: !3698, inlinedAt: !3871)
!3878 = !DILocation(line: 86, column: 10, scope: !3866)
!3879 = !DILocation(line: 86, column: 3, scope: !3866)
!3880 = distinct !DISubprogram(name: "xcalloc", scope: !3688, file: !3688, line: 93, type: !3674, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3881)
!3881 = !{!3882, !3883, !3884}
!3882 = !DILocalVariable(name: "n", arg: 1, scope: !3880, file: !3688, line: 93, type: !63)
!3883 = !DILocalVariable(name: "s", arg: 2, scope: !3880, file: !3688, line: 93, type: !63)
!3884 = !DILocalVariable(name: "p", scope: !3880, file: !3688, line: 95, type: !24)
!3885 = !DILocation(line: 93, column: 17, scope: !3880)
!3886 = !DILocation(line: 93, column: 27, scope: !3880)
!3887 = !DILocation(line: 100, column: 7, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3880, file: !3688, line: 100, column: 7)
!3889 = !DILocation(line: 101, column: 7, scope: !3888)
!3890 = !DILocation(line: 101, column: 18, scope: !3888)
!3891 = !DILocation(line: 95, column: 9, scope: !3880)
!3892 = !DILocation(line: 101, column: 16, scope: !3888)
!3893 = !DILocation(line: 100, column: 7, scope: !3880)
!3894 = !DILocation(line: 102, column: 5, scope: !3888)
!3895 = !DILocation(line: 103, column: 3, scope: !3880)
!3896 = distinct !DISubprogram(name: "xmemdup", scope: !3688, file: !3688, line: 111, type: !3897, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!24, !1371, !63}
!3899 = !{!3900, !3901}
!3900 = !DILocalVariable(name: "p", arg: 1, scope: !3896, file: !3688, line: 111, type: !1371)
!3901 = !DILocalVariable(name: "s", arg: 2, scope: !3896, file: !3688, line: 111, type: !63)
!3902 = !DILocation(line: 111, column: 22, scope: !3896)
!3903 = !DILocation(line: 111, column: 32, scope: !3896)
!3904 = !DILocation(line: 39, column: 17, scope: !3687, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 113, column: 18, scope: !3896)
!3906 = !DILocation(line: 41, column: 13, scope: !3687, inlinedAt: !3905)
!3907 = !DILocation(line: 41, column: 9, scope: !3687, inlinedAt: !3905)
!3908 = !DILocation(line: 42, column: 8, scope: !3698, inlinedAt: !3905)
!3909 = !DILocation(line: 42, column: 15, scope: !3698, inlinedAt: !3905)
!3910 = !DILocation(line: 42, column: 10, scope: !3698, inlinedAt: !3905)
!3911 = !DILocation(line: 43, column: 5, scope: !3698, inlinedAt: !3905)
!3912 = !DILocation(line: 113, column: 10, scope: !3896)
!3913 = !DILocation(line: 113, column: 3, scope: !3896)
!3914 = distinct !DISubprogram(name: "xstrdup", scope: !3688, file: !3688, line: 119, type: !2969, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3915)
!3915 = !{!3916}
!3916 = !DILocalVariable(name: "string", arg: 1, scope: !3914, file: !3688, line: 119, type: !31)
!3917 = !DILocation(line: 119, column: 22, scope: !3914)
!3918 = !DILocation(line: 121, column: 27, scope: !3914)
!3919 = !DILocation(line: 121, column: 43, scope: !3914)
!3920 = !DILocation(line: 111, column: 22, scope: !3896, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 121, column: 10, scope: !3914)
!3922 = !DILocation(line: 111, column: 32, scope: !3896, inlinedAt: !3921)
!3923 = !DILocation(line: 39, column: 17, scope: !3687, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 113, column: 18, scope: !3896, inlinedAt: !3921)
!3925 = !DILocation(line: 41, column: 13, scope: !3687, inlinedAt: !3924)
!3926 = !DILocation(line: 41, column: 9, scope: !3687, inlinedAt: !3924)
!3927 = !DILocation(line: 42, column: 8, scope: !3698, inlinedAt: !3924)
!3928 = !DILocation(line: 42, column: 15, scope: !3698, inlinedAt: !3924)
!3929 = !DILocation(line: 42, column: 10, scope: !3698, inlinedAt: !3924)
!3930 = !DILocation(line: 43, column: 5, scope: !3698, inlinedAt: !3924)
!3931 = !DILocation(line: 113, column: 10, scope: !3896, inlinedAt: !3921)
!3932 = !DILocation(line: 121, column: 3, scope: !3914)
!3933 = distinct !DISubprogram(name: "xalloc_die", scope: !3934, file: !3934, line: 32, type: !700, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !245, retainedNodes: !90)
!3934 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3935 = !DILocation(line: 34, column: 10, scope: !3933)
!3936 = !DILocation(line: 34, column: 33, scope: !3933)
!3937 = !DILocation(line: 34, column: 3, scope: !3933)
!3938 = !DILocation(line: 40, column: 3, scope: !3933)
!3939 = distinct !DISubprogram(name: "xstrtold", scope: !3940, file: !3940, line: 44, type: !3941, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !247, retainedNodes: !3946)
!3940 = !DIFile(filename: "./lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!85, !31, !3943, !3944, !3945}
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!3946 = !{!3947, !3948, !3949, !3950, !3951, !3952, !3953}
!3947 = !DILocalVariable(name: "str", arg: 1, scope: !3939, file: !3940, line: 44, type: !31)
!3948 = !DILocalVariable(name: "ptr", arg: 2, scope: !3939, file: !3940, line: 44, type: !3943)
!3949 = !DILocalVariable(name: "result", arg: 3, scope: !3939, file: !3940, line: 44, type: !3944)
!3950 = !DILocalVariable(name: "convert", arg: 4, scope: !3939, file: !3940, line: 45, type: !3945)
!3951 = !DILocalVariable(name: "val", scope: !3939, file: !3940, line: 47, type: !61)
!3952 = !DILocalVariable(name: "terminator", scope: !3939, file: !3940, line: 48, type: !22)
!3953 = !DILocalVariable(name: "ok", scope: !3939, file: !3940, line: 49, type: !85)
!3954 = !DILocation(line: 44, column: 22, scope: !3939)
!3955 = !DILocation(line: 44, column: 40, scope: !3939)
!3956 = !DILocation(line: 44, column: 53, scope: !3939)
!3957 = !DILocation(line: 45, column: 19, scope: !3939)
!3958 = !DILocation(line: 48, column: 3, scope: !3939)
!3959 = !DILocation(line: 49, column: 8, scope: !3939)
!3960 = !DILocation(line: 51, column: 3, scope: !3939)
!3961 = !DILocation(line: 51, column: 9, scope: !3939)
!3962 = !DILocation(line: 48, column: 9, scope: !3939)
!3963 = !DILocation(line: 52, column: 9, scope: !3939)
!3964 = !DILocation(line: 47, column: 10, scope: !3939)
!3965 = !DILocation(line: 55, column: 7, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3939, file: !3940, line: 55, column: 7)
!3967 = !DILocation(line: 55, column: 18, scope: !3966)
!3968 = !DILocation(line: 55, column: 25, scope: !3966)
!3969 = !DILocation(line: 55, column: 33, scope: !3966)
!3970 = !DILocation(line: 55, column: 41, scope: !3966)
!3971 = !DILocation(line: 55, column: 44, scope: !3966)
!3972 = !DILocation(line: 55, column: 56, scope: !3966)
!3973 = !DILocation(line: 55, column: 7, scope: !3939)
!3974 = !DILocation(line: 62, column: 15, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !3940, line: 62, column: 11)
!3976 = distinct !DILexicalBlock(scope: !3966, file: !3940, line: 58, column: 5)
!3977 = !DILocation(line: 62, column: 20, scope: !3975)
!3978 = !DILocation(line: 62, column: 23, scope: !3975)
!3979 = !DILocation(line: 62, column: 29, scope: !3975)
!3980 = !DILocation(line: 62, column: 11, scope: !3976)
!3981 = !DILocation(line: 66, column: 11, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3939, file: !3940, line: 66, column: 7)
!3983 = !DILocation(line: 66, column: 7, scope: !3939)
!3984 = !DILocation(line: 67, column: 10, scope: !3982)
!3985 = !DILocation(line: 67, column: 5, scope: !3982)
!3986 = !DILocation(line: 69, column: 11, scope: !3939)
!3987 = !{!1505, !1505, i64 0}
!3988 = !DILocation(line: 71, column: 1, scope: !3939)
!3989 = !DILocation(line: 70, column: 3, scope: !3939)
!3990 = distinct !DISubprogram(name: "rpl_calloc", scope: !3991, file: !3991, line: 42, type: !3674, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !249, retainedNodes: !3992)
!3991 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3992 = !{!3993, !3994, !3995, !3996}
!3993 = !DILocalVariable(name: "n", arg: 1, scope: !3990, file: !3991, line: 42, type: !63)
!3994 = !DILocalVariable(name: "s", arg: 2, scope: !3990, file: !3991, line: 42, type: !63)
!3995 = !DILocalVariable(name: "result", scope: !3990, file: !3991, line: 44, type: !24)
!3996 = !DILocalVariable(name: "bytes", scope: !3997, file: !3991, line: 56, type: !63)
!3997 = distinct !DILexicalBlock(scope: !3998, file: !3991, line: 53, column: 5)
!3998 = distinct !DILexicalBlock(scope: !3990, file: !3991, line: 47, column: 7)
!3999 = !DILocation(line: 42, column: 20, scope: !3990)
!4000 = !DILocation(line: 42, column: 30, scope: !3990)
!4001 = !DILocation(line: 47, column: 9, scope: !3998)
!4002 = !DILocation(line: 47, column: 19, scope: !3998)
!4003 = !DILocation(line: 47, column: 14, scope: !3998)
!4004 = !DILocation(line: 56, column: 24, scope: !3997)
!4005 = !DILocation(line: 56, column: 14, scope: !3997)
!4006 = !DILocation(line: 57, column: 17, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3997, file: !3991, line: 57, column: 11)
!4008 = !DILocation(line: 57, column: 21, scope: !4007)
!4009 = !DILocation(line: 57, column: 11, scope: !3997)
!4010 = !DILocation(line: 59, column: 11, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4007, file: !3991, line: 58, column: 9)
!4012 = !DILocation(line: 59, column: 17, scope: !4011)
!4013 = !DILocation(line: 65, column: 12, scope: !3990)
!4014 = !DILocation(line: 44, column: 9, scope: !3990)
!4015 = !DILocation(line: 72, column: 3, scope: !3990)
!4016 = !DILocation(line: 0, scope: !4011)
!4017 = !DILocation(line: 73, column: 1, scope: !3990)
!4018 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4019, file: !4019, line: 385, type: !4020, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !251, retainedNodes: !4034)
!4019 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!63, !4022, !31, !63, !4023}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1929, line: 6, baseType: !4025)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1931, line: 21, baseType: !4026)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1931, line: 13, size: 64, elements: !4027)
!4027 = !{!4028, !4029}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4026, file: !1931, line: 15, baseType: !25, size: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4026, file: !1931, line: 20, baseType: !4030, size: 32, offset: 32)
!4030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4026, file: !1931, line: 16, size: 32, elements: !4031)
!4031 = !{!4032, !4033}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4030, file: !1931, line: 18, baseType: !7, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4030, file: !1931, line: 19, baseType: !1940, size: 32)
!4034 = !{!4035, !4036, !4037, !4038, !4039, !4040, !4041}
!4035 = !DILocalVariable(name: "pwc", arg: 1, scope: !4018, file: !4019, line: 385, type: !4022)
!4036 = !DILocalVariable(name: "s", arg: 2, scope: !4018, file: !4019, line: 385, type: !31)
!4037 = !DILocalVariable(name: "n", arg: 3, scope: !4018, file: !4019, line: 385, type: !63)
!4038 = !DILocalVariable(name: "ps", arg: 4, scope: !4018, file: !4019, line: 385, type: !4023)
!4039 = !DILocalVariable(name: "ret", scope: !4018, file: !4019, line: 387, type: !63)
!4040 = !DILocalVariable(name: "wc", scope: !4018, file: !4019, line: 388, type: !1945)
!4041 = !DILocalVariable(name: "uc", scope: !4042, file: !4019, line: 449, type: !1789)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !4019, line: 448, column: 5)
!4043 = distinct !DILexicalBlock(scope: !4018, file: !4019, line: 447, column: 7)
!4044 = !DILocation(line: 385, column: 23, scope: !4018)
!4045 = !DILocation(line: 385, column: 40, scope: !4018)
!4046 = !DILocation(line: 385, column: 50, scope: !4018)
!4047 = !DILocation(line: 385, column: 64, scope: !4018)
!4048 = !DILocation(line: 388, column: 3, scope: !4018)
!4049 = !DILocation(line: 404, column: 9, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4018, file: !4019, line: 404, column: 7)
!4051 = !DILocation(line: 404, column: 7, scope: !4018)
!4052 = !DILocation(line: 439, column: 9, scope: !4018)
!4053 = !DILocation(line: 387, column: 10, scope: !4018)
!4054 = !DILocation(line: 447, column: 19, scope: !4043)
!4055 = !DILocation(line: 447, column: 31, scope: !4043)
!4056 = !DILocation(line: 447, column: 26, scope: !4043)
!4057 = !DILocation(line: 447, column: 41, scope: !4043)
!4058 = !DILocation(line: 447, column: 7, scope: !4018)
!4059 = !DILocation(line: 449, column: 26, scope: !4042)
!4060 = !DILocation(line: 449, column: 21, scope: !4042)
!4061 = !DILocation(line: 450, column: 14, scope: !4042)
!4062 = !DILocation(line: 450, column: 12, scope: !4042)
!4063 = !DILocation(line: 0, scope: !4042)
!4064 = !DILocation(line: 456, column: 1, scope: !4018)
!4065 = distinct !DISubprogram(name: "close_stream", scope: !4066, file: !4066, line: 56, type: !4067, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !254, retainedNodes: !4103)
!4066 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!25, !4069}
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3482, line: 7, baseType: !4071)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3484, line: 49, size: 1728, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4071, file: !3484, line: 51, baseType: !25, size: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4071, file: !3484, line: 54, baseType: !22, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4071, file: !3484, line: 55, baseType: !22, size: 64, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4071, file: !3484, line: 56, baseType: !22, size: 64, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4071, file: !3484, line: 57, baseType: !22, size: 64, offset: 256)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4071, file: !3484, line: 58, baseType: !22, size: 64, offset: 320)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4071, file: !3484, line: 59, baseType: !22, size: 64, offset: 384)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4071, file: !3484, line: 60, baseType: !22, size: 64, offset: 448)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4071, file: !3484, line: 61, baseType: !22, size: 64, offset: 512)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4071, file: !3484, line: 64, baseType: !22, size: 64, offset: 576)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4071, file: !3484, line: 65, baseType: !22, size: 64, offset: 640)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4071, file: !3484, line: 66, baseType: !22, size: 64, offset: 704)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4071, file: !3484, line: 68, baseType: !3499, size: 64, offset: 768)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4071, file: !3484, line: 70, baseType: !4087, size: 64, offset: 832)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4071, file: !3484, line: 72, baseType: !25, size: 32, offset: 896)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4071, file: !3484, line: 73, baseType: !25, size: 32, offset: 928)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4071, file: !3484, line: 74, baseType: !3506, size: 64, offset: 960)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4071, file: !3484, line: 77, baseType: !26, size: 16, offset: 1024)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4071, file: !3484, line: 78, baseType: !3510, size: 8, offset: 1040)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4071, file: !3484, line: 79, baseType: !3512, size: 8, offset: 1048)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4071, file: !3484, line: 81, baseType: !3516, size: 64, offset: 1088)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4071, file: !3484, line: 89, baseType: !3519, size: 64, offset: 1152)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4071, file: !3484, line: 91, baseType: !3521, size: 64, offset: 1216)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4071, file: !3484, line: 92, baseType: !3524, size: 64, offset: 1280)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4071, file: !3484, line: 93, baseType: !4087, size: 64, offset: 1344)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4071, file: !3484, line: 94, baseType: !24, size: 64, offset: 1408)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4071, file: !3484, line: 95, baseType: !63, size: 64, offset: 1472)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4071, file: !3484, line: 96, baseType: !25, size: 32, offset: 1536)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4071, file: !3484, line: 98, baseType: !3531, size: 160, offset: 1568)
!4103 = !{!4104, !4105, !4107, !4108}
!4104 = !DILocalVariable(name: "stream", arg: 1, scope: !4065, file: !4066, line: 56, type: !4069)
!4105 = !DILocalVariable(name: "some_pending", scope: !4065, file: !4066, line: 58, type: !4106)
!4106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!4107 = !DILocalVariable(name: "prev_fail", scope: !4065, file: !4066, line: 59, type: !4106)
!4108 = !DILocalVariable(name: "fclose_fail", scope: !4065, file: !4066, line: 60, type: !4106)
!4109 = !DILocation(line: 56, column: 21, scope: !4065)
!4110 = !DILocation(line: 58, column: 30, scope: !4065)
!4111 = !DILocalVariable(name: "__stream", arg: 1, scope: !4112, file: !4113, line: 135, type: !4069)
!4112 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4113, file: !4113, line: 135, type: !4067, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !254, retainedNodes: !4114)
!4113 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4114 = !{!4111}
!4115 = !DILocation(line: 135, column: 1, scope: !4112, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 59, column: 27, scope: !4065)
!4117 = !DILocation(line: 137, column: 10, scope: !4112, inlinedAt: !4116)
!4118 = !{!4119, !781, i64 0}
!4119 = !{!"_IO_FILE", !781, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !693, i64 96, !693, i64 104, !781, i64 112, !781, i64 116, !1506, i64 120, !1516, i64 128, !694, i64 130, !694, i64 131, !693, i64 136, !1506, i64 144, !693, i64 152, !693, i64 160, !693, i64 168, !693, i64 176, !1506, i64 184, !781, i64 192, !694, i64 196}
!4120 = !DILocation(line: 59, column: 43, scope: !4065)
!4121 = !DILocation(line: 60, column: 29, scope: !4065)
!4122 = !DILocation(line: 60, column: 45, scope: !4065)
!4123 = !DILocation(line: 70, column: 17, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4065, file: !4066, line: 70, column: 7)
!4125 = !DILocation(line: 58, column: 50, scope: !4065)
!4126 = !DILocation(line: 70, column: 33, scope: !4124)
!4127 = !DILocation(line: 70, column: 53, scope: !4124)
!4128 = !DILocation(line: 70, column: 59, scope: !4124)
!4129 = !DILocation(line: 70, column: 7, scope: !4065)
!4130 = !DILocation(line: 72, column: 11, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4124, file: !4066, line: 71, column: 5)
!4132 = !DILocation(line: 73, column: 9, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4131, file: !4066, line: 72, column: 11)
!4134 = !DILocation(line: 73, column: 15, scope: !4133)
!4135 = !DILocation(line: 0, scope: !4065)
!4136 = !DILocation(line: 78, column: 1, scope: !4065)
!4137 = distinct !DISubprogram(name: "hard_locale", scope: !4138, file: !4138, line: 38, type: !4139, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !4141)
!4138 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!85, !25}
!4141 = !{!4142, !4143, !4144}
!4142 = !DILocalVariable(name: "category", arg: 1, scope: !4137, file: !4138, line: 38, type: !25)
!4143 = !DILocalVariable(name: "hard", scope: !4137, file: !4138, line: 40, type: !85)
!4144 = !DILocalVariable(name: "p", scope: !4137, file: !4138, line: 41, type: !31)
!4145 = !DILocation(line: 38, column: 18, scope: !4137)
!4146 = !DILocation(line: 40, column: 8, scope: !4137)
!4147 = !DILocation(line: 41, column: 19, scope: !4137)
!4148 = !DILocation(line: 41, column: 15, scope: !4137)
!4149 = !DILocation(line: 43, column: 7, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4137, file: !4138, line: 43, column: 7)
!4151 = !DILocation(line: 43, column: 7, scope: !4137)
!4152 = !DILocation(line: 47, column: 15, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !4138, line: 47, column: 15)
!4154 = distinct !DILexicalBlock(scope: !4155, file: !4138, line: 46, column: 9)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !4138, line: 45, column: 11)
!4156 = distinct !DILexicalBlock(scope: !4150, file: !4138, line: 44, column: 5)
!4157 = !DILocation(line: 47, column: 31, scope: !4153)
!4158 = !DILocation(line: 47, column: 36, scope: !4153)
!4159 = !DILocation(line: 47, column: 39, scope: !4153)
!4160 = !DILocation(line: 47, column: 59, scope: !4153)
!4161 = !DILocation(line: 47, column: 15, scope: !4154)
!4162 = !DILocation(line: 48, column: 13, scope: !4153)
!4163 = !DILocation(line: 71, column: 3, scope: !4137)
!4164 = distinct !DISubprogram(name: "locale_charset", scope: !4165, file: !4165, line: 687, type: !4166, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4168)
!4165 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!31}
!4168 = !{!4169}
!4169 = !DILocalVariable(name: "codeset", scope: !4164, file: !4165, line: 689, type: !31)
!4170 = !DILocation(line: 696, column: 13, scope: !4164)
!4171 = !DILocation(line: 689, column: 15, scope: !4164)
!4172 = !DILocation(line: 754, column: 15, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4164, file: !4165, line: 754, column: 7)
!4174 = !DILocation(line: 754, column: 7, scope: !4164)
!4175 = !DILocation(line: 907, column: 13, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4177, file: !4165, line: 907, column: 13)
!4177 = distinct !DILexicalBlock(scope: !4178, file: !4165, line: 897, column: 7)
!4178 = distinct !DILexicalBlock(scope: !4164, file: !4165, line: 856, column: 3)
!4179 = !DILocation(line: 907, column: 24, scope: !4176)
!4180 = !DILocation(line: 907, column: 13, scope: !4177)
!4181 = !DILocation(line: 995, column: 3, scope: !4164)
!4182 = distinct !DISubprogram(name: "rpl_fclose", scope: !4183, file: !4183, line: 58, type: !4184, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !647, retainedNodes: !4220)
!4183 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!25, !4186}
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3482, line: 7, baseType: !4188)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3484, line: 49, size: 1728, elements: !4189)
!4189 = !{!4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4188, file: !3484, line: 51, baseType: !25, size: 32)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4188, file: !3484, line: 54, baseType: !22, size: 64, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4188, file: !3484, line: 55, baseType: !22, size: 64, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4188, file: !3484, line: 56, baseType: !22, size: 64, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4188, file: !3484, line: 57, baseType: !22, size: 64, offset: 256)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4188, file: !3484, line: 58, baseType: !22, size: 64, offset: 320)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4188, file: !3484, line: 59, baseType: !22, size: 64, offset: 384)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4188, file: !3484, line: 60, baseType: !22, size: 64, offset: 448)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4188, file: !3484, line: 61, baseType: !22, size: 64, offset: 512)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4188, file: !3484, line: 64, baseType: !22, size: 64, offset: 576)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4188, file: !3484, line: 65, baseType: !22, size: 64, offset: 640)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4188, file: !3484, line: 66, baseType: !22, size: 64, offset: 704)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4188, file: !3484, line: 68, baseType: !3499, size: 64, offset: 768)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4188, file: !3484, line: 70, baseType: !4204, size: 64, offset: 832)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4188, file: !3484, line: 72, baseType: !25, size: 32, offset: 896)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4188, file: !3484, line: 73, baseType: !25, size: 32, offset: 928)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4188, file: !3484, line: 74, baseType: !3506, size: 64, offset: 960)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4188, file: !3484, line: 77, baseType: !26, size: 16, offset: 1024)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4188, file: !3484, line: 78, baseType: !3510, size: 8, offset: 1040)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4188, file: !3484, line: 79, baseType: !3512, size: 8, offset: 1048)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4188, file: !3484, line: 81, baseType: !3516, size: 64, offset: 1088)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4188, file: !3484, line: 89, baseType: !3519, size: 64, offset: 1152)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4188, file: !3484, line: 91, baseType: !3521, size: 64, offset: 1216)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4188, file: !3484, line: 92, baseType: !3524, size: 64, offset: 1280)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4188, file: !3484, line: 93, baseType: !4204, size: 64, offset: 1344)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4188, file: !3484, line: 94, baseType: !24, size: 64, offset: 1408)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4188, file: !3484, line: 95, baseType: !63, size: 64, offset: 1472)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4188, file: !3484, line: 96, baseType: !25, size: 32, offset: 1536)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4188, file: !3484, line: 98, baseType: !3531, size: 160, offset: 1568)
!4220 = !{!4221, !4222, !4223, !4224}
!4221 = !DILocalVariable(name: "fp", arg: 1, scope: !4182, file: !4183, line: 58, type: !4186)
!4222 = !DILocalVariable(name: "saved_errno", scope: !4182, file: !4183, line: 60, type: !25)
!4223 = !DILocalVariable(name: "fd", scope: !4182, file: !4183, line: 61, type: !25)
!4224 = !DILocalVariable(name: "result", scope: !4182, file: !4183, line: 62, type: !25)
!4225 = !DILocation(line: 58, column: 19, scope: !4182)
!4226 = !DILocation(line: 60, column: 7, scope: !4182)
!4227 = !DILocation(line: 62, column: 7, scope: !4182)
!4228 = !DILocation(line: 65, column: 8, scope: !4182)
!4229 = !DILocation(line: 61, column: 7, scope: !4182)
!4230 = !DILocation(line: 66, column: 10, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4182, file: !4183, line: 66, column: 7)
!4232 = !DILocation(line: 66, column: 7, scope: !4182)
!4233 = !DILocation(line: 67, column: 12, scope: !4231)
!4234 = !DILocation(line: 67, column: 5, scope: !4231)
!4235 = !DILocation(line: 72, column: 9, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4182, file: !4183, line: 72, column: 7)
!4237 = !DILocation(line: 72, column: 23, scope: !4236)
!4238 = !DILocation(line: 72, column: 33, scope: !4236)
!4239 = !DILocation(line: 72, column: 26, scope: !4236)
!4240 = !DILocation(line: 72, column: 59, scope: !4236)
!4241 = !DILocation(line: 73, column: 7, scope: !4236)
!4242 = !DILocation(line: 73, column: 10, scope: !4236)
!4243 = !DILocation(line: 72, column: 7, scope: !4182)
!4244 = !DILocation(line: 100, column: 12, scope: !4182)
!4245 = !DILocation(line: 105, column: 7, scope: !4182)
!4246 = !DILocation(line: 74, column: 19, scope: !4236)
!4247 = !DILocation(line: 105, column: 19, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4182, file: !4183, line: 105, column: 7)
!4249 = !DILocation(line: 107, column: 13, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4248, file: !4183, line: 106, column: 5)
!4251 = !DILocation(line: 109, column: 5, scope: !4250)
!4252 = !DILocation(line: 0, scope: !4182)
!4253 = !DILocation(line: 112, column: 1, scope: !4182)
!4254 = distinct !DISubprogram(name: "rpl_fflush", scope: !4255, file: !4255, line: 129, type: !4256, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !649, retainedNodes: !4292)
!4255 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!25, !4258}
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3482, line: 7, baseType: !4260)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3484, line: 49, size: 1728, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4260, file: !3484, line: 51, baseType: !25, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4260, file: !3484, line: 54, baseType: !22, size: 64, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4260, file: !3484, line: 55, baseType: !22, size: 64, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4260, file: !3484, line: 56, baseType: !22, size: 64, offset: 192)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4260, file: !3484, line: 57, baseType: !22, size: 64, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4260, file: !3484, line: 58, baseType: !22, size: 64, offset: 320)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4260, file: !3484, line: 59, baseType: !22, size: 64, offset: 384)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4260, file: !3484, line: 60, baseType: !22, size: 64, offset: 448)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4260, file: !3484, line: 61, baseType: !22, size: 64, offset: 512)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4260, file: !3484, line: 64, baseType: !22, size: 64, offset: 576)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4260, file: !3484, line: 65, baseType: !22, size: 64, offset: 640)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4260, file: !3484, line: 66, baseType: !22, size: 64, offset: 704)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4260, file: !3484, line: 68, baseType: !3499, size: 64, offset: 768)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4260, file: !3484, line: 70, baseType: !4276, size: 64, offset: 832)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4260, file: !3484, line: 72, baseType: !25, size: 32, offset: 896)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4260, file: !3484, line: 73, baseType: !25, size: 32, offset: 928)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4260, file: !3484, line: 74, baseType: !3506, size: 64, offset: 960)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4260, file: !3484, line: 77, baseType: !26, size: 16, offset: 1024)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4260, file: !3484, line: 78, baseType: !3510, size: 8, offset: 1040)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4260, file: !3484, line: 79, baseType: !3512, size: 8, offset: 1048)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4260, file: !3484, line: 81, baseType: !3516, size: 64, offset: 1088)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4260, file: !3484, line: 89, baseType: !3519, size: 64, offset: 1152)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4260, file: !3484, line: 91, baseType: !3521, size: 64, offset: 1216)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4260, file: !3484, line: 92, baseType: !3524, size: 64, offset: 1280)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4260, file: !3484, line: 93, baseType: !4276, size: 64, offset: 1344)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4260, file: !3484, line: 94, baseType: !24, size: 64, offset: 1408)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4260, file: !3484, line: 95, baseType: !63, size: 64, offset: 1472)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4260, file: !3484, line: 96, baseType: !25, size: 32, offset: 1536)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4260, file: !3484, line: 98, baseType: !3531, size: 160, offset: 1568)
!4292 = !{!4293}
!4293 = !DILocalVariable(name: "stream", arg: 1, scope: !4254, file: !4255, line: 129, type: !4258)
!4294 = !DILocation(line: 129, column: 19, scope: !4254)
!4295 = !DILocation(line: 150, column: 14, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4254, file: !4255, line: 150, column: 7)
!4297 = !DILocation(line: 150, column: 22, scope: !4296)
!4298 = !DILocation(line: 150, column: 27, scope: !4296)
!4299 = !DILocation(line: 150, column: 7, scope: !4254)
!4300 = !DILocation(line: 151, column: 12, scope: !4296)
!4301 = !DILocation(line: 151, column: 5, scope: !4296)
!4302 = !DILocalVariable(name: "fp", arg: 1, scope: !4303, file: !4255, line: 41, type: !4258)
!4303 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4255, file: !4255, line: 41, type: !4304, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !649, retainedNodes: !4306)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{null, !4258}
!4306 = !{!4302}
!4307 = !DILocation(line: 41, column: 48, scope: !4303, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 156, column: 3, scope: !4254)
!4309 = !DILocation(line: 43, column: 11, scope: !4310, inlinedAt: !4308)
!4310 = distinct !DILexicalBlock(scope: !4303, file: !4255, line: 43, column: 7)
!4311 = !DILocation(line: 43, column: 18, scope: !4310, inlinedAt: !4308)
!4312 = !DILocation(line: 43, column: 7, scope: !4303, inlinedAt: !4308)
!4313 = !DILocation(line: 45, column: 5, scope: !4310, inlinedAt: !4308)
!4314 = !DILocation(line: 158, column: 10, scope: !4254)
!4315 = !DILocation(line: 158, column: 3, scope: !4254)
!4316 = !DILocation(line: 0, scope: !4254)
!4317 = !DILocation(line: 232, column: 1, scope: !4254)
!4318 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4319, file: !4319, line: 28, type: !4320, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !651, retainedNodes: !4357)
!4319 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!25, !4322, !4356, !25}
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3482, line: 7, baseType: !4324)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3484, line: 49, size: 1728, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4324, file: !3484, line: 51, baseType: !25, size: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4324, file: !3484, line: 54, baseType: !22, size: 64, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4324, file: !3484, line: 55, baseType: !22, size: 64, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4324, file: !3484, line: 56, baseType: !22, size: 64, offset: 192)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4324, file: !3484, line: 57, baseType: !22, size: 64, offset: 256)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4324, file: !3484, line: 58, baseType: !22, size: 64, offset: 320)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4324, file: !3484, line: 59, baseType: !22, size: 64, offset: 384)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4324, file: !3484, line: 60, baseType: !22, size: 64, offset: 448)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4324, file: !3484, line: 61, baseType: !22, size: 64, offset: 512)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4324, file: !3484, line: 64, baseType: !22, size: 64, offset: 576)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4324, file: !3484, line: 65, baseType: !22, size: 64, offset: 640)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4324, file: !3484, line: 66, baseType: !22, size: 64, offset: 704)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4324, file: !3484, line: 68, baseType: !3499, size: 64, offset: 768)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4324, file: !3484, line: 70, baseType: !4340, size: 64, offset: 832)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4324, file: !3484, line: 72, baseType: !25, size: 32, offset: 896)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4324, file: !3484, line: 73, baseType: !25, size: 32, offset: 928)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4324, file: !3484, line: 74, baseType: !3506, size: 64, offset: 960)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4324, file: !3484, line: 77, baseType: !26, size: 16, offset: 1024)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4324, file: !3484, line: 78, baseType: !3510, size: 8, offset: 1040)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4324, file: !3484, line: 79, baseType: !3512, size: 8, offset: 1048)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4324, file: !3484, line: 81, baseType: !3516, size: 64, offset: 1088)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4324, file: !3484, line: 89, baseType: !3519, size: 64, offset: 1152)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4324, file: !3484, line: 91, baseType: !3521, size: 64, offset: 1216)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4324, file: !3484, line: 92, baseType: !3524, size: 64, offset: 1280)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4324, file: !3484, line: 93, baseType: !4340, size: 64, offset: 1344)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4324, file: !3484, line: 94, baseType: !24, size: 64, offset: 1408)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4324, file: !3484, line: 95, baseType: !63, size: 64, offset: 1472)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4324, file: !3484, line: 96, baseType: !25, size: 32, offset: 1536)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4324, file: !3484, line: 98, baseType: !3531, size: 160, offset: 1568)
!4356 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3653, line: 63, baseType: !3506)
!4357 = !{!4358, !4359, !4360, !4361}
!4358 = !DILocalVariable(name: "fp", arg: 1, scope: !4318, file: !4319, line: 28, type: !4322)
!4359 = !DILocalVariable(name: "offset", arg: 2, scope: !4318, file: !4319, line: 28, type: !4356)
!4360 = !DILocalVariable(name: "whence", arg: 3, scope: !4318, file: !4319, line: 28, type: !25)
!4361 = !DILocalVariable(name: "pos", scope: !4362, file: !4319, line: 117, type: !4356)
!4362 = distinct !DILexicalBlock(scope: !4363, file: !4319, line: 113, column: 5)
!4363 = distinct !DILexicalBlock(scope: !4318, file: !4319, line: 52, column: 7)
!4364 = !DILocation(line: 28, column: 15, scope: !4318)
!4365 = !DILocation(line: 28, column: 25, scope: !4318)
!4366 = !DILocation(line: 28, column: 37, scope: !4318)
!4367 = !DILocation(line: 52, column: 11, scope: !4363)
!4368 = !{!4119, !693, i64 16}
!4369 = !DILocation(line: 52, column: 31, scope: !4363)
!4370 = !{!4119, !693, i64 8}
!4371 = !DILocation(line: 52, column: 24, scope: !4363)
!4372 = !DILocation(line: 53, column: 7, scope: !4363)
!4373 = !DILocation(line: 53, column: 14, scope: !4363)
!4374 = !{!4119, !693, i64 40}
!4375 = !DILocation(line: 53, column: 35, scope: !4363)
!4376 = !{!4119, !693, i64 32}
!4377 = !DILocation(line: 53, column: 28, scope: !4363)
!4378 = !DILocation(line: 54, column: 7, scope: !4363)
!4379 = !DILocation(line: 54, column: 14, scope: !4363)
!4380 = !{!4119, !693, i64 72}
!4381 = !DILocation(line: 54, column: 28, scope: !4363)
!4382 = !DILocation(line: 52, column: 7, scope: !4318)
!4383 = !DILocation(line: 117, column: 26, scope: !4362)
!4384 = !DILocation(line: 117, column: 19, scope: !4362)
!4385 = !DILocation(line: 117, column: 13, scope: !4362)
!4386 = !DILocation(line: 118, column: 15, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4362, file: !4319, line: 118, column: 11)
!4388 = !DILocation(line: 118, column: 11, scope: !4362)
!4389 = !DILocation(line: 129, column: 11, scope: !4362)
!4390 = !DILocation(line: 129, column: 18, scope: !4362)
!4391 = !DILocation(line: 130, column: 11, scope: !4362)
!4392 = !DILocation(line: 130, column: 19, scope: !4362)
!4393 = !{!4119, !1506, i64 144}
!4394 = !DILocation(line: 161, column: 7, scope: !4362)
!4395 = !DILocation(line: 163, column: 10, scope: !4318)
!4396 = !DILocation(line: 163, column: 3, scope: !4318)
!4397 = !DILocation(line: 0, scope: !4318)
!4398 = !DILocation(line: 164, column: 1, scope: !4318)
