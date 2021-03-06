; ModuleID = 'coreutils-8.30/src/tee.bc'
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
@.str.2 = private unnamed_addr constant [190 x i8] c"Copy standard input to each FILE, and also to standard output.\0A\0A  -a, --append              append to the given FILEs, do not overwrite\0A  -i, --ignore-interrupts   ignore interrupt signals\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [141 x i8] c"  -p                        diagnose errors writing to non pipes\0A      --output-error[=MODE]   set behavior on write error.  See MODE below\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [512 x i8] c"\0AMODE determines behavior with write errors on the outputs:\0A  'warn'         diagnose errors writing to any output\0A  'warn-nopipe'  diagnose errors writing to any output not a pipe\0A  'exit'         exit on error writing to any output\0A  'exit-nopipe'  exit on error writing to any output not a pipe\0AThe default MODE for the -p option is 'warn-nopipe'.\0AThe default operation when --output-error is not specified, is to\0Aexit immediately on error writing to a pipe, and diagnose errors\0Awriting to non pipe outputs.\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.30 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@append = internal unnamed_addr global i1 false, align 1, !dbg !0
@ignore_interrupts = internal unnamed_addr global i1 false, align 1, !dbg !84
@.str.11 = private unnamed_addr constant [4 x i8] c"aip\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !58
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"--output-error\00", align 1
@output_error_args = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* null], align 16, !dbg !78
@output_error_types = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !72
@output_error = internal unnamed_addr global i32 0, align 4, !dbg !56
@.str.14 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.45 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"warn-nopipe\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"exit-nopipe\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"ignore-interrupts\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"output-error\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), align 8, !dbg !85
@.str.47 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !91
@.str.50 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.51 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.52 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.53 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.54 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !105
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !110
@.str.59 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.60 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !113
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !120
@.str.72 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.73 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.74 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.78, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.84, i32 0, i32 0), i8* null], align 16, !dbg !127
@.str.75 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.76 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.77 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.78 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.79 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.80 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.81 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.82 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.83 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.84 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !155
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !162
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !174
@.str.11.85 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.86 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.87 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.88 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.89 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.90 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.91 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !181
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !188
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !176
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !190
@.str.104 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.105 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.106 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.107 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.108 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.109 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.110 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.111 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.112 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.113 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.114 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.115 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.116 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.117 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.120 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.121 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.122 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.124 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.125 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !195
@.str.1.136 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !204
@.str.154 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.155 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.158 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.159 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !685 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !688, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32 %0, metadata !687, metadata !DIExpression()), !dbg !711
  %3 = icmp eq i32 %0, 0, !dbg !712
  br i1 %3, label %9, label %4, !dbg !713

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !714, !tbaa !716
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !714
  %7 = load i8*, i8** @program_name, align 8, !dbg !714, !tbaa !716
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !714
  br label %63, !dbg !714

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !720
  %11 = load i8*, i8** @program_name, align 8, !dbg !720, !tbaa !716
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !720
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !721
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !721, !tbaa !716
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !721
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !722
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !722, !tbaa !716
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !722
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !723
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !723, !tbaa !716
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !723
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !724
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !716
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !724
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !725
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !716
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !725
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !726
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #12, !dbg !726
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %28, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !707
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !727
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !696, metadata !DIExpression()) #12, !dbg !728
  br label %30, !dbg !729

; <label>:30:                                     ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !696, metadata !DIExpression()) #12, !dbg !728
  %33 = tail call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #14, !dbg !729
  %34 = icmp eq i32 %33, 0, !dbg !729
  br i1 %34, label %40, label %35, !dbg !730

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !731
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !696, metadata !DIExpression()) #12, !dbg !728
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !732
  %38 = load i8*, i8** %37, align 8, !dbg !732, !tbaa !733
  %39 = icmp eq i8* %38, null, !dbg !735
  br i1 %39, label %40, label %30, !dbg !736, !llvm.loop !737

; <label>:40:                                     ; preds = %35, %30
  %41 = phi %struct.infomap* [ %36, %35 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !696, metadata !DIExpression()) #12, !dbg !728
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !696, metadata !DIExpression()) #12, !dbg !728
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !740
  %43 = load i8*, i8** %42, align 8, !dbg !740, !tbaa !742
  %44 = icmp eq i8* %43, null, !dbg !743
  %45 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !744
  call void @llvm.dbg.value(metadata i8* %45, metadata !695, metadata !DIExpression()) #12, !dbg !745
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !746
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0)) #12, !dbg !746
  %48 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !747
  call void @llvm.dbg.value(metadata i8* %48, metadata !703, metadata !DIExpression()) #12, !dbg !748
  %49 = icmp eq i8* %48, null, !dbg !749
  br i1 %49, label %56, label %50, !dbg !751

; <label>:50:                                     ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i64 3) #14, !dbg !752
  %52 = icmp eq i32 %51, 0, !dbg !752
  br i1 %52, label %56, label %53, !dbg !753

; <label>:53:                                     ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !754
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !754
  br label %56, !dbg !756

; <label>:56:                                     ; preds = %40, %50, %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i32 5) #12, !dbg !757
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !757
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i64 0, i64 0), i32 5) #12, !dbg !758
  %60 = icmp eq i8* %45, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), !dbg !758
  %61 = select i1 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !758
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* %45, i8* %61) #12, !dbg !758
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #12, !dbg !759
  br label %63

; <label>:63:                                     ; preds = %56, %4
  tail call void @exit(i32 %0) #15, !dbg !760
  unreachable, !dbg !760
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !761 {
  %3 = alloca [8192 x i8], align 16
  call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !770, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i32 %0, metadata !766, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i8** %1, metadata !767, metadata !DIExpression()), !dbg !853
  %4 = load i8*, i8** %1, align 8, !dbg !854, !tbaa !716
  tail call void @set_program_name(i8* %4) #12, !dbg !855
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !856
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !857
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !858
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !859
  store i1 false, i1* @append, align 1
  store i1 false, i1* @ignore_interrupts, align 1
  br label %9, !dbg !860

; <label>:9:                                      ; preds = %21, %2
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !861
  call void @llvm.dbg.value(metadata i32 %10, metadata !769, metadata !DIExpression()), !dbg !862
  switch i32 %10, label %27 [
    i32 -1, label %28
    i32 97, label %11
    i32 105, label %12
    i32 112, label %13
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !860

; <label>:11:                                     ; preds = %9
  store i1 true, i1* @append, align 1
  br label %21, !dbg !863

; <label>:12:                                     ; preds = %9
  store i1 true, i1* @ignore_interrupts, align 1
  br label %21, !dbg !866

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** @optarg, align 8, !dbg !867, !tbaa !716
  %15 = icmp eq i8* %14, null, !dbg !867
  br i1 %15, label %22, label %16, !dbg !869

; <label>:16:                                     ; preds = %13
  %17 = load void ()*, void ()** @argmatch_die, align 8, !dbg !870, !tbaa !716
  %18 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* nonnull %14, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @output_error_args, i64 0, i64 0), i8* bitcast ([4 x i32]* @output_error_types to i8*), i64 4, void ()* %17) #12, !dbg !870
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @output_error_types, i64 0, i64 %18, !dbg !870
  %20 = load i32, i32* %19, align 4, !dbg !870, !tbaa !871
  store i32 %20, i32* @output_error, align 4, !dbg !872, !tbaa !871
  br label %21, !dbg !873

; <label>:21:                                     ; preds = %16, %22, %12, %11
  br label %9, !dbg !861, !llvm.loop !874

; <label>:22:                                     ; preds = %13
  store i32 2, i32* @output_error, align 4, !dbg !876, !tbaa !871
  br label %21

; <label>:23:                                     ; preds = %9
  tail call void @usage(i32 0) #16, !dbg !877
  unreachable, !dbg !877

; <label>:24:                                     ; preds = %9
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !878, !tbaa !716
  %26 = load i8*, i8** @Version, align 8, !dbg !878, !tbaa !716
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* null) #12, !dbg !878
  tail call void @exit(i32 0) #15, !dbg !878
  unreachable, !dbg !878

; <label>:27:                                     ; preds = %9
  tail call void @usage(i32 1) #16, !dbg !879
  unreachable, !dbg !879

; <label>:28:                                     ; preds = %9
  %29 = load i1, i1* @ignore_interrupts, align 1
  br i1 %29, label %30, label %32, !dbg !880

; <label>:30:                                     ; preds = %28
  %31 = tail call void (i32)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !881
  br label %32, !dbg !881

; <label>:32:                                     ; preds = %30, %28
  %33 = load i32, i32* @output_error, align 4, !dbg !883, !tbaa !871
  %34 = icmp eq i32 %33, 0, !dbg !885
  br i1 %34, label %37, label %35, !dbg !886

; <label>:35:                                     ; preds = %32
  %36 = tail call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !887
  br label %37, !dbg !887

; <label>:37:                                     ; preds = %32, %35
  %38 = load i32, i32* @optind, align 4, !dbg !888, !tbaa !889
  %39 = sub nsw i32 %0, %38, !dbg !891
  call void @llvm.dbg.value(metadata i32 %39, metadata !775, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 0, metadata !777, metadata !DIExpression()) #12, !dbg !893
  %40 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !894
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %40) #12, !dbg !894
  call void @llvm.dbg.value(metadata i64 0, metadata !833, metadata !DIExpression()) #12, !dbg !895
  call void @llvm.dbg.value(metadata i8 1, metadata !838, metadata !DIExpression()) #12, !dbg !896
  %41 = load i1, i1* @append, align 1
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), !dbg !897
  call void @llvm.dbg.value(metadata i8* %42, metadata !839, metadata !DIExpression()) #12, !dbg !898
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !899, !tbaa !716
  tail call void @fadvise(%struct._IO_FILE* %43, i32 2) #12, !dbg !900
  call void @llvm.dbg.value(metadata i64 8, metadata !901, metadata !DIExpression()) #12, !dbg !907
  %44 = icmp slt i32 %39, -1, !dbg !909
  br i1 %44, label %45, label %46, !dbg !911

; <label>:45:                                     ; preds = %37
  tail call void @xalloc_die() #15, !dbg !912
  unreachable, !dbg !912

; <label>:46:                                     ; preds = %37
  %47 = sext i32 %38 to i64, !dbg !913
  %48 = getelementptr inbounds i8*, i8** %1, i64 %47, !dbg !913
  call void @llvm.dbg.value(metadata i8** %48, metadata !776, metadata !DIExpression()) #12, !dbg !914
  %49 = add i32 %39, 1, !dbg !915
  %50 = sext i32 %49 to i64, !dbg !916
  call void @llvm.dbg.value(metadata i64 %50, metadata !906, metadata !DIExpression()) #12, !dbg !917
  %51 = shl nsw i64 %50, 3, !dbg !918
  %52 = tail call noalias i8* @xmalloc(i64 %51) #12, !dbg !919
  %53 = bitcast i8* %52 to %struct._IO_FILE**, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %53, metadata !778, metadata !DIExpression()) #12, !dbg !921
  %54 = getelementptr inbounds i8*, i8** %48, i64 -1, !dbg !922
  call void @llvm.dbg.value(metadata i8** %54, metadata !776, metadata !DIExpression()) #12, !dbg !914
  %55 = load i64, i64* bitcast (%struct._IO_FILE** @stdout to i64*), align 8, !dbg !923, !tbaa !716
  %56 = bitcast i8* %52 to i64*, !dbg !924
  store i64 %55, i64* %56, align 8, !dbg !924, !tbaa !716
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i32 5) #12, !dbg !925
  store i8* %57, i8** %54, align 8, !dbg !926, !tbaa !716
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !927, !tbaa !716
  %59 = tail call i32 @setvbuf(%struct._IO_FILE* %58, i8* null, i32 2, i64 0) #12, !dbg !928
  call void @llvm.dbg.value(metadata i64 1, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i32 1, metadata !837, metadata !DIExpression()) #12, !dbg !929
  call void @llvm.dbg.value(metadata i8 1, metadata !838, metadata !DIExpression()) #12, !dbg !896
  %60 = icmp slt i32 %39, 1, !dbg !930
  %61 = zext i32 %49 to i64
  br i1 %60, label %64, label %68, !dbg !933

; <label>:62:                                     ; preds = %89
  call void @llvm.dbg.value(metadata i8 %90, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i64 %91, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %90, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i64 %91, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %90, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i64 %91, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %90, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i64 %91, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %90, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i64 %91, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %90, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i64 %91, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %90, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i64 %91, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %90, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i64 %91, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i64 0, metadata !833, metadata !DIExpression()) #12, !dbg !895
  %63 = icmp eq i64 %91, 0, !dbg !934
  br i1 %63, label %158, label %64, !dbg !934

; <label>:64:                                     ; preds = %46, %62
  %65 = phi i64 [ %91, %62 ], [ 1, %46 ]
  %66 = phi i8 [ %90, %62 ], [ 1, %46 ]
  %67 = icmp slt i32 %39, 0
  br label %98, !dbg !934

; <label>:68:                                     ; preds = %46, %89
  %69 = phi i64 [ %92, %89 ], [ 1, %46 ]
  %70 = phi i64 [ %91, %89 ], [ 1, %46 ]
  %71 = phi i8 [ %90, %89 ], [ 1, %46 ]
  call void @llvm.dbg.value(metadata i64 %70, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %71, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i64 %69, metadata !837, metadata !DIExpression()) #12, !dbg !929
  %72 = getelementptr inbounds i8*, i8** %54, i64 %69, !dbg !935
  %73 = load i8*, i8** %72, align 8, !dbg !935, !tbaa !716
  %74 = tail call %struct._IO_FILE* @fopen_safer(i8* %73, i8* %42) #12, !dbg !937
  %75 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %53, i64 %69, !dbg !938
  store %struct._IO_FILE* %74, %struct._IO_FILE** %75, align 8, !dbg !939, !tbaa !716
  %76 = icmp eq %struct._IO_FILE* %74, null, !dbg !940
  br i1 %76, label %77, label %86, !dbg !942

; <label>:77:                                     ; preds = %68
  %78 = load i32, i32* @output_error, align 4, !dbg !943, !tbaa !871
  %79 = add i32 %78, -3, !dbg !945
  %80 = icmp ult i32 %79, 2, !dbg !945
  %81 = zext i1 %80 to i32, !dbg !945
  %82 = tail call i32* @__errno_location() #17, !dbg !946
  %83 = load i32, i32* %82, align 4, !dbg !946, !tbaa !889
  %84 = load i8*, i8** %72, align 8, !dbg !947, !tbaa !716
  %85 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %84) #12, !dbg !947
  tail call void (i32, i32, i8*, ...) @error(i32 %81, i32 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %85) #12, !dbg !948
  call void @llvm.dbg.value(metadata i8 0, metadata !838, metadata !DIExpression()) #12, !dbg !896
  br label %89, !dbg !949

; <label>:86:                                     ; preds = %68
  %87 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %74, i8* null, i32 2, i64 0) #12, !dbg !950
  %88 = add i64 %70, 1, !dbg !952
  call void @llvm.dbg.value(metadata i64 %88, metadata !777, metadata !DIExpression()) #12, !dbg !893
  br label %89

; <label>:89:                                     ; preds = %86, %77
  %90 = phi i8 [ 0, %77 ], [ %71, %86 ], !dbg !953
  %91 = phi i64 [ %70, %77 ], [ %88, %86 ], !dbg !954
  %92 = add nuw nsw i64 %69, 1, !dbg !955
  call void @llvm.dbg.value(metadata i64 %91, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %90, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 undef, metadata !837, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !929
  %93 = icmp eq i64 %92, %61, !dbg !930
  br i1 %93, label %62, label %68, !dbg !933, !llvm.loop !956

; <label>:94:                                     ; preds = %146, %110
  %95 = phi i8 [ %100, %110 ], [ %147, %146 ], !dbg !959
  %96 = phi i64 [ %99, %110 ], [ %148, %146 ], !dbg !961
  call void @llvm.dbg.value(metadata i64 %96, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i64 %102, metadata !833, metadata !DIExpression()) #12, !dbg !895
  call void @llvm.dbg.value(metadata i8 %95, metadata !838, metadata !DIExpression()) #12, !dbg !896
  %97 = icmp eq i64 %96, 0, !dbg !934
  br i1 %97, label %151, label %98, !dbg !934

; <label>:98:                                     ; preds = %94, %64
  %99 = phi i64 [ %65, %64 ], [ %96, %94 ]
  %100 = phi i8 [ %66, %64 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i64 %99, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %100, metadata !838, metadata !DIExpression()) #12, !dbg !896
  br label %101, !dbg !934

; <label>:101:                                    ; preds = %104, %98
  %102 = call i64 @read(i32 0, i8* nonnull %40, i64 8192) #12, !dbg !962
  call void @llvm.dbg.value(metadata i64 %102, metadata !833, metadata !DIExpression()) #12, !dbg !895
  %103 = icmp slt i64 %102, 0, !dbg !963
  br i1 %103, label %104, label %108, !dbg !965

; <label>:104:                                    ; preds = %101
  %105 = tail call i32* @__errno_location() #17, !dbg !966
  %106 = load i32, i32* %105, align 4, !dbg !966, !tbaa !889
  %107 = icmp eq i32 %106, 4, !dbg !967
  br i1 %107, label %101, label %151, !dbg !968, !llvm.loop !969

; <label>:108:                                    ; preds = %101
  %109 = icmp eq i64 %102, 0, !dbg !972
  br i1 %109, label %158, label %110, !dbg !974

; <label>:110:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 %99, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %100, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 0, metadata !837, metadata !DIExpression()) #12, !dbg !929
  br i1 %67, label %94, label %111, !dbg !975, !llvm.loop !969

; <label>:111:                                    ; preds = %110, %146
  %112 = phi i64 [ %149, %146 ], [ 0, %110 ]
  %113 = phi i64 [ %148, %146 ], [ %99, %110 ]
  %114 = phi i8 [ %147, %146 ], [ %100, %110 ]
  call void @llvm.dbg.value(metadata i64 %113, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %114, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i64 %112, metadata !837, metadata !DIExpression()) #12, !dbg !929
  %115 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %53, i64 %112, !dbg !976
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %115, align 8, !dbg !976, !tbaa !716
  %117 = icmp eq %struct._IO_FILE* %116, null, !dbg !976
  br i1 %117, label %146, label %118, !dbg !977

; <label>:118:                                    ; preds = %111
  %119 = call i64 @fwrite_unlocked(i8* nonnull %40, i64 %102, i64 1, %struct._IO_FILE* nonnull %116) #12, !dbg !978
  %120 = icmp eq i64 %119, 1, !dbg !979
  br i1 %120, label %146, label %121, !dbg !980

; <label>:121:                                    ; preds = %118
  %122 = tail call i32* @__errno_location() #17, !dbg !981
  %123 = load i32, i32* %122, align 4, !dbg !981, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %123, metadata !840, metadata !DIExpression()) #12, !dbg !982
  %124 = icmp eq i32 %123, 32, !dbg !983
  br i1 %124, label %125, label %129, !dbg !984

; <label>:125:                                    ; preds = %121
  %126 = load i32, i32* @output_error, align 4, !dbg !985, !tbaa !871
  %127 = or i32 %126, 2, !dbg !986
  %128 = icmp eq i32 %127, 3, !dbg !986
  br label %129, !dbg !986

; <label>:129:                                    ; preds = %125, %121
  %130 = phi i1 [ true, %121 ], [ %128, %125 ]
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !987, !tbaa !716
  %132 = icmp eq %struct._IO_FILE* %116, %131, !dbg !989
  br i1 %132, label %133, label %134, !dbg !990

; <label>:133:                                    ; preds = %129
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %116) #12, !dbg !991
  br label %134, !dbg !991

; <label>:134:                                    ; preds = %133, %129
  br i1 %130, label %135, label %143, !dbg !992

; <label>:135:                                    ; preds = %134
  %136 = load i32, i32* @output_error, align 4, !dbg !993, !tbaa !871
  %137 = add i32 %136, -3, !dbg !996
  %138 = icmp ult i32 %137, 2, !dbg !996
  %139 = zext i1 %138 to i32, !dbg !996
  %140 = getelementptr inbounds i8*, i8** %54, i64 %112, !dbg !997
  %141 = load i8*, i8** %140, align 8, !dbg !997, !tbaa !716
  %142 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #12, !dbg !997
  tail call void (i32, i32, i8*, ...) @error(i32 %139, i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %142) #12, !dbg !998
  br label %143, !dbg !999

; <label>:143:                                    ; preds = %135, %134
  store %struct._IO_FILE* null, %struct._IO_FILE** %115, align 8, !dbg !1000, !tbaa !716
  %144 = select i1 %130, i8 0, i8 %114, !dbg !1001
  call void @llvm.dbg.value(metadata i8 %144, metadata !838, metadata !DIExpression()) #12, !dbg !896
  %145 = add i64 %113, -1, !dbg !1002
  call void @llvm.dbg.value(metadata i64 %145, metadata !777, metadata !DIExpression()) #12, !dbg !893
  br label %146, !dbg !1003

; <label>:146:                                    ; preds = %143, %118, %111
  %147 = phi i8 [ %144, %143 ], [ %114, %118 ], [ %114, %111 ], !dbg !953
  %148 = phi i64 [ %145, %143 ], [ %113, %118 ], [ %113, %111 ], !dbg !953
  %149 = add nuw nsw i64 %112, 1, !dbg !1004
  call void @llvm.dbg.value(metadata i64 %148, metadata !777, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %147, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 undef, metadata !837, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !929
  %150 = icmp eq i64 %149, %61, !dbg !1005
  br i1 %150, label %94, label %111, !dbg !975, !llvm.loop !1006

; <label>:151:                                    ; preds = %94, %104
  %152 = phi i8 [ %100, %104 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i64 %102, metadata !833, metadata !DIExpression()) #12, !dbg !895
  %153 = icmp eq i64 %102, -1, !dbg !1009
  br i1 %153, label %154, label %158, !dbg !1011

; <label>:154:                                    ; preds = %151
  %155 = tail call i32* @__errno_location() #17, !dbg !1012
  %156 = load i32, i32* %155, align 4, !dbg !1012, !tbaa !889
  %157 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0), i32 5) #12, !dbg !1014
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %156, i8* %157) #12, !dbg !1015
  call void @llvm.dbg.value(metadata i8 0, metadata !838, metadata !DIExpression()) #12, !dbg !896
  br label %158, !dbg !1016

; <label>:158:                                    ; preds = %108, %154, %151, %62
  %159 = phi i8 [ 0, %154 ], [ %152, %151 ], [ %90, %62 ], [ %100, %108 ], !dbg !953
  call void @llvm.dbg.value(metadata i8 %159, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 1, metadata !837, metadata !DIExpression()) #12, !dbg !929
  br i1 %60, label %181, label %160, !dbg !1017

; <label>:160:                                    ; preds = %158
  %161 = zext i32 %49 to i64
  br label %162, !dbg !1019

; <label>:162:                                    ; preds = %177, %160
  %163 = phi i64 [ 1, %160 ], [ %179, %177 ]
  %164 = phi i8 [ %159, %160 ], [ %178, %177 ]
  call void @llvm.dbg.value(metadata i8 %164, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i64 %163, metadata !837, metadata !DIExpression()) #12, !dbg !929
  %165 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %53, i64 %163, !dbg !1019
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %165, align 8, !dbg !1019, !tbaa !716
  %167 = icmp eq %struct._IO_FILE* %166, null, !dbg !1019
  br i1 %167, label %177, label %168, !dbg !1022

; <label>:168:                                    ; preds = %162
  %169 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %166) #12, !dbg !1023
  %170 = icmp eq i32 %169, 0, !dbg !1024
  br i1 %170, label %177, label %171, !dbg !1025

; <label>:171:                                    ; preds = %168
  %172 = tail call i32* @__errno_location() #17, !dbg !1026
  %173 = load i32, i32* %172, align 4, !dbg !1026, !tbaa !889
  %174 = getelementptr inbounds i8*, i8** %54, i64 %163, !dbg !1028
  %175 = load i8*, i8** %174, align 8, !dbg !1028, !tbaa !716
  %176 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %175) #12, !dbg !1028
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %176) #12, !dbg !1029
  call void @llvm.dbg.value(metadata i8 0, metadata !838, metadata !DIExpression()) #12, !dbg !896
  br label %177, !dbg !1030

; <label>:177:                                    ; preds = %171, %168, %162
  %178 = phi i8 [ 0, %171 ], [ %164, %168 ], [ %164, %162 ], !dbg !1031
  %179 = add nuw nsw i64 %163, 1, !dbg !1032
  call void @llvm.dbg.value(metadata i8 %178, metadata !838, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 undef, metadata !837, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !929
  %180 = icmp eq i64 %179, %161, !dbg !1033
  br i1 %180, label %181, label %162, !dbg !1017, !llvm.loop !1034

; <label>:181:                                    ; preds = %177, %158
  %182 = phi i8 [ %159, %158 ], [ %178, %177 ], !dbg !1037
  call void @llvm.dbg.value(metadata i8 %182, metadata !838, metadata !DIExpression()) #12, !dbg !896
  tail call void @free(i8* %52) #12, !dbg !1038
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %40) #12, !dbg !1039
  %183 = tail call i32 @close(i32 0) #12, !dbg !1040
  %184 = icmp eq i32 %183, 0, !dbg !1042
  br i1 %184, label %189, label %185, !dbg !1043

; <label>:185:                                    ; preds = %181
  %186 = tail call i32* @__errno_location() #17, !dbg !1044
  %187 = load i32, i32* %186, align 4, !dbg !1044, !tbaa !889
  %188 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 5) #12, !dbg !1044
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %188) #12, !dbg !1044
  unreachable, !dbg !1044

; <label>:189:                                    ; preds = %181
  %190 = and i8 %182, 1, !dbg !1045
  %191 = xor i8 %190, 1, !dbg !1046
  %192 = zext i8 %191 to i32, !dbg !1046
  ret i32 %192, !dbg !1047
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #7 !dbg !1048 {
  tail call void @usage(i32 1) #12, !dbg !1049
  ret void, !dbg !1050
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #9 !dbg !1051 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1057, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8** %1, metadata !1058, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i8* %2, metadata !1059, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %3, metadata !1060, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i64 -1, metadata !1063, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i8 0, metadata !1064, metadata !DIExpression()), !dbg !1070
  %5 = tail call i64 @strlen(i8* %0) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i64 %5, metadata !1062, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 0, metadata !1061, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i8 0, metadata !1064, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i64 -1, metadata !1063, metadata !DIExpression()), !dbg !1069
  %6 = load i8*, i8** %1, align 8, !dbg !1074, !tbaa !716
  %7 = icmp eq i8* %6, null, !dbg !1077
  br i1 %7, label %38, label %8, !dbg !1077

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !1077

; <label>:10:                                     ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  call void @llvm.dbg.value(metadata i8 %12, metadata !1064, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i64 %13, metadata !1063, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i64 %14, metadata !1061, metadata !DIExpression()), !dbg !1073
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #14, !dbg !1078
  %16 = icmp eq i32 %15, 0, !dbg !1078
  br i1 %16, label %17, label %31, !dbg !1081

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #14, !dbg !1082
  %19 = icmp eq i64 %18, %5, !dbg !1085
  br i1 %19, label %44, label %20, !dbg !1086

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !1087
  br i1 %21, label %31, label %22, !dbg !1089

; <label>:22:                                     ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1090

; <label>:23:                                     ; preds = %22
  %24 = mul i64 %13, %3, !dbg !1093
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1094
  %26 = mul i64 %14, %3, !dbg !1095
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !1096
  %28 = tail call i32 @memcmp(i8* nonnull %25, i8* nonnull %27, i64 %3) #14, !dbg !1097
  %29 = icmp eq i32 %28, 0, !dbg !1097
  br i1 %29, label %31, label %30, !dbg !1098

; <label>:30:                                     ; preds = %23, %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1064, metadata !DIExpression()), !dbg !1070
  br label %31, !dbg !1099

; <label>:31:                                     ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ], !dbg !1101
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ], !dbg !1101
  %34 = add i64 %14, 1, !dbg !1102
  call void @llvm.dbg.value(metadata i8 %33, metadata !1064, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i64 %32, metadata !1063, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i64 %34, metadata !1061, metadata !DIExpression()), !dbg !1073
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !1074
  %36 = load i8*, i8** %35, align 8, !dbg !1074, !tbaa !716
  %37 = icmp eq i8* %36, null, !dbg !1077
  br i1 %37, label %38, label %10, !dbg !1077, !llvm.loop !1103

; <label>:38:                                     ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ], !dbg !1069
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ], !dbg !1070
  call void @llvm.dbg.value(metadata i64 %39, metadata !1063, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i8 %40, metadata !1064, metadata !DIExpression()), !dbg !1070
  %41 = and i8 %40, 1, !dbg !1105
  %42 = icmp eq i8 %41, 0, !dbg !1105
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !1107
  br label %44, !dbg !1107

; <label>:44:                                     ; preds = %17, %38
  %45 = phi i64 [ %43, %38 ], [ %14, %17 ], !dbg !1108
  ret i64 %45, !dbg !1109
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #7 !dbg !1110 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1114, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %1, metadata !1115, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i64 %2, metadata !1116, metadata !DIExpression()), !dbg !1120
  %4 = icmp eq i64 %2, -1, !dbg !1121
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.51, i64 0, i64 0), !dbg !1122
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #12, !dbg !1123
  call void @llvm.dbg.value(metadata i8* %6, metadata !1117, metadata !DIExpression()), !dbg !1124
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12, !dbg !1125
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #12, !dbg !1126
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #12, !dbg !1127
  ret void, !dbg !1128
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !1129 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1133, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i8* %1, metadata !1134, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i64 %2, metadata !1135, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i8* null, metadata !1137, metadata !DIExpression()), !dbg !1141
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.52, i64 0, i64 0), i32 5) #12, !dbg !1142
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1142, !tbaa !716
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !1142
  call void @llvm.dbg.value(metadata i64 0, metadata !1136, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i8* null, metadata !1137, metadata !DIExpression()), !dbg !1141
  %7 = load i8*, i8** %0, align 8, !dbg !1144, !tbaa !716
  %8 = icmp eq i8* %7, null, !dbg !1147
  br i1 %8, label %33, label %9, !dbg !1147

; <label>:9:                                      ; preds = %3, %27
  %10 = phi i8* [ %31, %27 ], [ %7, %3 ]
  %11 = phi i8* [ %28, %27 ], [ null, %3 ]
  %12 = phi i64 [ %29, %27 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !1137, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64 %12, metadata !1136, metadata !DIExpression()), !dbg !1143
  %13 = icmp eq i64 %12, 0, !dbg !1148
  %14 = mul i64 %12, %2, !dbg !1150
  %15 = getelementptr inbounds i8, i8* %1, i64 %14, !dbg !1150
  br i1 %13, label %19, label %16, !dbg !1151

; <label>:16:                                     ; preds = %9
  %17 = tail call i32 @memcmp(i8* %11, i8* %15, i64 %2) #14, !dbg !1152
  %18 = icmp eq i32 %17, 0, !dbg !1152
  br i1 %18, label %23, label %19, !dbg !1153

; <label>:19:                                     ; preds = %9, %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1154, !tbaa !716
  %21 = tail call i8* @quote(i8* nonnull %10) #12, !dbg !1154
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %20, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.53, i64 0, i64 0), i8* %21) #12, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %15, metadata !1137, metadata !DIExpression()), !dbg !1141
  br label %27, !dbg !1156

; <label>:23:                                     ; preds = %16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1157, !tbaa !716
  %25 = tail call i8* @quote(i8* nonnull %10) #12, !dbg !1157
  %26 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %24, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.54, i64 0, i64 0), i8* %25) #12, !dbg !1157
  br label %27

; <label>:27:                                     ; preds = %19, %23
  %28 = phi i8* [ %15, %19 ], [ %11, %23 ], !dbg !1159
  %29 = add i64 %12, 1, !dbg !1160
  call void @llvm.dbg.value(metadata i8* %28, metadata !1137, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64 %29, metadata !1136, metadata !DIExpression()), !dbg !1143
  %30 = getelementptr inbounds i8*, i8** %0, i64 %29, !dbg !1144
  %31 = load i8*, i8** %30, align 8, !dbg !1144, !tbaa !716
  %32 = icmp eq i8* %31, null, !dbg !1147
  br i1 %32, label %33, label %9, !dbg !1147, !llvm.loop !1161

; <label>:33:                                     ; preds = %27, %3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1163, !tbaa !716
  call void @llvm.dbg.value(metadata i32 10, metadata !1164, metadata !DIExpression()) #12, !dbg !1205
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %34, metadata !1204, metadata !DIExpression()) #12, !dbg !1207
  %35 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 5, !dbg !1208
  %36 = load i8*, i8** %35, align 8, !dbg !1208, !tbaa !1209
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 6, !dbg !1208
  %38 = load i8*, i8** %37, align 8, !dbg !1208, !tbaa !1213
  %39 = icmp ult i8* %36, %38, !dbg !1208
  br i1 %39, label %42, label %40, !dbg !1208, !prof !1214

; <label>:40:                                     ; preds = %33
  %41 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %34, i32 10) #12, !dbg !1208
  br label %44, !dbg !1208

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1208
  store i8* %43, i8** %35, align 8, !dbg !1208, !tbaa !1209
  store i8 10, i8* %36, align 1, !dbg !1208, !tbaa !871
  br label %44, !dbg !1208

; <label>:44:                                     ; preds = %40, %42
  ret void, !dbg !1215
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #7 !dbg !1216 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1220, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8* %1, metadata !1221, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i8** %2, metadata !1222, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %3, metadata !1223, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %4, metadata !1224, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata void ()* %5, metadata !1225, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8* %1, metadata !1057, metadata !DIExpression()) #12, !dbg !1233
  call void @llvm.dbg.value(metadata i8** %2, metadata !1058, metadata !DIExpression()) #12, !dbg !1235
  call void @llvm.dbg.value(metadata i8* %3, metadata !1059, metadata !DIExpression()) #12, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %4, metadata !1060, metadata !DIExpression()) #12, !dbg !1237
  call void @llvm.dbg.value(metadata i64 -1, metadata !1063, metadata !DIExpression()) #12, !dbg !1238
  call void @llvm.dbg.value(metadata i8 0, metadata !1064, metadata !DIExpression()) #12, !dbg !1239
  %7 = tail call i64 @strlen(i8* %1) #14, !dbg !1240
  call void @llvm.dbg.value(metadata i64 %7, metadata !1062, metadata !DIExpression()) #12, !dbg !1241
  call void @llvm.dbg.value(metadata i64 0, metadata !1061, metadata !DIExpression()) #12, !dbg !1242
  call void @llvm.dbg.value(metadata i8 0, metadata !1064, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata i64 -1, metadata !1063, metadata !DIExpression()) #12, !dbg !1238
  %8 = load i8*, i8** %2, align 8, !dbg !1243, !tbaa !716
  %9 = icmp eq i8* %8, null, !dbg !1244
  br i1 %9, label %49, label %10, !dbg !1244

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i8* %3, null
  br label %12, !dbg !1244

; <label>:12:                                     ; preds = %33, %10
  %13 = phi i8* [ %8, %10 ], [ %38, %33 ]
  %14 = phi i8 [ 0, %10 ], [ %35, %33 ]
  %15 = phi i64 [ -1, %10 ], [ %34, %33 ]
  %16 = phi i64 [ 0, %10 ], [ %36, %33 ]
  call void @llvm.dbg.value(metadata i8 %14, metadata !1064, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %15, metadata !1063, metadata !DIExpression()) #12, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %16, metadata !1061, metadata !DIExpression()) #12, !dbg !1242
  %17 = tail call i32 @strncmp(i8* nonnull %13, i8* %1, i64 %7) #14, !dbg !1245
  %18 = icmp eq i32 %17, 0, !dbg !1245
  br i1 %18, label %19, label %33, !dbg !1246

; <label>:19:                                     ; preds = %12
  %20 = tail call i64 @strlen(i8* nonnull %13) #14, !dbg !1247
  %21 = icmp eq i64 %20, %7, !dbg !1248
  br i1 %21, label %43, label %22, !dbg !1249

; <label>:22:                                     ; preds = %19
  %23 = icmp eq i64 %15, -1, !dbg !1250
  br i1 %23, label %33, label %24, !dbg !1251

; <label>:24:                                     ; preds = %22
  br i1 %11, label %32, label %25, !dbg !1252

; <label>:25:                                     ; preds = %24
  %26 = mul i64 %15, %4, !dbg !1253
  %27 = getelementptr inbounds i8, i8* %3, i64 %26, !dbg !1254
  %28 = mul i64 %16, %4, !dbg !1255
  %29 = getelementptr inbounds i8, i8* %3, i64 %28, !dbg !1256
  %30 = tail call i32 @memcmp(i8* nonnull %27, i8* nonnull %29, i64 %4) #14, !dbg !1257
  %31 = icmp eq i32 %30, 0, !dbg !1257
  br i1 %31, label %33, label %32, !dbg !1258

; <label>:32:                                     ; preds = %25, %24
  call void @llvm.dbg.value(metadata i8 1, metadata !1064, metadata !DIExpression()) #12, !dbg !1239
  br label %33, !dbg !1259

; <label>:33:                                     ; preds = %32, %25, %22, %12
  %34 = phi i64 [ %15, %12 ], [ %15, %32 ], [ %15, %25 ], [ %16, %22 ], !dbg !1260
  %35 = phi i8 [ %14, %12 ], [ 1, %32 ], [ %14, %25 ], [ %14, %22 ], !dbg !1260
  %36 = add i64 %16, 1, !dbg !1261
  call void @llvm.dbg.value(metadata i8 %35, metadata !1064, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %34, metadata !1063, metadata !DIExpression()) #12, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %36, metadata !1061, metadata !DIExpression()) #12, !dbg !1242
  %37 = getelementptr inbounds i8*, i8** %2, i64 %36, !dbg !1243
  %38 = load i8*, i8** %37, align 8, !dbg !1243, !tbaa !716
  %39 = icmp eq i8* %38, null, !dbg !1244
  br i1 %39, label %40, label %12, !dbg !1244, !llvm.loop !1103

; <label>:40:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i64 %34, metadata !1063, metadata !DIExpression()) #12, !dbg !1238
  call void @llvm.dbg.value(metadata i8 %35, metadata !1064, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %34, metadata !1063, metadata !DIExpression()) #12, !dbg !1238
  call void @llvm.dbg.value(metadata i8 %35, metadata !1064, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %34, metadata !1063, metadata !DIExpression()) #12, !dbg !1238
  call void @llvm.dbg.value(metadata i8 %35, metadata !1064, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %34, metadata !1063, metadata !DIExpression()) #12, !dbg !1238
  call void @llvm.dbg.value(metadata i8 %35, metadata !1064, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %34, metadata !1063, metadata !DIExpression()) #12, !dbg !1238
  call void @llvm.dbg.value(metadata i8 %35, metadata !1064, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %34, metadata !1063, metadata !DIExpression()) #12, !dbg !1238
  call void @llvm.dbg.value(metadata i8 %35, metadata !1064, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %34, metadata !1063, metadata !DIExpression()) #12, !dbg !1238
  call void @llvm.dbg.value(metadata i8 %35, metadata !1064, metadata !DIExpression()) #12, !dbg !1239
  %41 = and i8 %35, 1, !dbg !1262
  %42 = icmp eq i8 %41, 0, !dbg !1262
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %19, %40
  %44 = phi i64 [ %34, %40 ], [ %16, %19 ], !dbg !1263
  call void @llvm.dbg.value(metadata i64 %44, metadata !1226, metadata !DIExpression()), !dbg !1264
  %45 = icmp sgt i64 %44, -1, !dbg !1265
  br i1 %45, label %54, label %46, !dbg !1267

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8* %0, metadata !1114, metadata !DIExpression()) #12, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %1, metadata !1115, metadata !DIExpression()) #12, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %44, metadata !1116, metadata !DIExpression()) #12, !dbg !1271
  %47 = icmp eq i64 %44, -1, !dbg !1272
  br i1 %47, label %49, label %48, !dbg !1273

; <label>:48:                                     ; preds = %40, %46
  br label %49, !dbg !1273

; <label>:49:                                     ; preds = %46, %6, %48
  %50 = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.51, i64 0, i64 0), %48 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), %6 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), %46 ]
  %51 = tail call i8* @dcgettext(i8* null, i8* %50, i32 5) #12, !dbg !1274
  call void @llvm.dbg.value(metadata i8* %51, metadata !1117, metadata !DIExpression()) #12, !dbg !1275
  %52 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12, !dbg !1276
  %53 = tail call i8* @quote_n(i32 1, i8* %0) #12, !dbg !1277
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51, i8* %52, i8* %53) #12, !dbg !1278
  tail call void @argmatch_valid(i8** nonnull %2, i8* %3, i64 %4), !dbg !1279
  tail call void %5() #12, !dbg !1280
  br label %54, !dbg !1281

; <label>:54:                                     ; preds = %43, %49
  %55 = phi i64 [ -1, %49 ], [ %44, %43 ], !dbg !1274
  ret i64 %55, !dbg !1282
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #9 !dbg !1283 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1287, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8** %1, metadata !1288, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8* %2, metadata !1289, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i64 %3, metadata !1290, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 0, metadata !1291, metadata !DIExpression()), !dbg !1296
  %5 = load i8*, i8** %1, align 8, !dbg !1297, !tbaa !716
  %6 = icmp eq i8* %5, null, !dbg !1300
  br i1 %6, label %21, label %7, !dbg !1300

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !1291, metadata !DIExpression()), !dbg !1296
  %8 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %3) #14, !dbg !1301
  %9 = icmp eq i32 %8, 0, !dbg !1301
  call void @llvm.dbg.value(metadata i64 1, metadata !1291, metadata !DIExpression()), !dbg !1296
  br i1 %9, label %21, label %10, !dbg !1303

; <label>:10:                                     ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1291, metadata !DIExpression()), !dbg !1296
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1297
  %13 = load i8*, i8** %12, align 8, !dbg !1297, !tbaa !716
  %14 = icmp eq i8* %13, null, !dbg !1300
  br i1 %14, label %21, label %15, !dbg !1300, !llvm.loop !1304

; <label>:15:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !1291, metadata !DIExpression()), !dbg !1296
  %16 = mul i64 %11, %3, !dbg !1306
  %17 = getelementptr inbounds i8, i8* %2, i64 %16, !dbg !1307
  %18 = tail call i32 @memcmp(i8* %0, i8* %17, i64 %3) #14, !dbg !1301
  %19 = icmp eq i32 %18, 0, !dbg !1301
  %20 = add i64 %11, 1, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %20, metadata !1291, metadata !DIExpression()), !dbg !1296
  br i1 %19, label %21, label %10, !dbg !1303, !llvm.loop !1304

; <label>:21:                                     ; preds = %10, %15, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ %13, %15 ], [ null, %10 ], !dbg !1297
  ret i8* %22, !dbg !1309
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1310 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1312, metadata !DIExpression()), !dbg !1313
  store i8* %0, i8** @file_name, align 8, !dbg !1314, !tbaa !716
  ret void, !dbg !1315
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1316 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1320, metadata !DIExpression()), !dbg !1321
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1322, !tbaa !1323
  ret void, !dbg !1325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1326 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1331, !tbaa !716
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1332
  %3 = icmp eq i32 %2, 0, !dbg !1333
  br i1 %3, label %22, label %4, !dbg !1334

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1335, !tbaa !1323, !range !1336
  %6 = icmp eq i8 %5, 0, !dbg !1335
  br i1 %6, label %11, label %7, !dbg !1337

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1338
  %9 = load i32, i32* %8, align 4, !dbg !1338, !tbaa !889
  %10 = icmp eq i32 %9, 32, !dbg !1339
  br i1 %10, label %22, label %11, !dbg !1340

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i32 5) #12, !dbg !1341
  call void @llvm.dbg.value(metadata i8* %12, metadata !1328, metadata !DIExpression()), !dbg !1342
  %13 = load i8*, i8** @file_name, align 8, !dbg !1343, !tbaa !716
  %14 = icmp eq i8* %13, null, !dbg !1343
  %15 = tail call i32* @__errno_location() #17, !dbg !1345
  %16 = load i32, i32* %15, align 4, !dbg !1345, !tbaa !889
  br i1 %14, label %19, label %17, !dbg !1346

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1347
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.60, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1348
  br label %20, !dbg !1348

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.61, i64 0, i64 0), i8* %12) #12, !dbg !1349
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1350, !tbaa !889
  tail call void @_exit(i32 %21) #15, !dbg !1351
  unreachable, !dbg !1351

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1352, !tbaa !716
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1354
  %25 = icmp eq i32 %24, 0, !dbg !1355
  br i1 %25, label %28, label %26, !dbg !1356

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1357, !tbaa !889
  tail call void @_exit(i32 %27) #15, !dbg !1358
  unreachable, !dbg !1358

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1359
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1360 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1368, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %1, metadata !1369, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %2, metadata !1370, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i32 %3, metadata !1371, metadata !DIExpression()), !dbg !1377
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #12, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %5, metadata !1372, metadata !DIExpression()), !dbg !1378
  ret void, !dbg !1379
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1380 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1418, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i32 %1, metadata !1419, metadata !DIExpression()), !dbg !1421
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1422
  br i1 %3, label %7, label %4, !dbg !1424

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !1425
  call void @llvm.dbg.value(metadata i32 %5, metadata !1368, metadata !DIExpression()) #12, !dbg !1426
  call void @llvm.dbg.value(metadata i64 0, metadata !1369, metadata !DIExpression()) #12, !dbg !1428
  call void @llvm.dbg.value(metadata i64 0, metadata !1370, metadata !DIExpression()) #12, !dbg !1429
  call void @llvm.dbg.value(metadata i32 %1, metadata !1371, metadata !DIExpression()) #12, !dbg !1430
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #12, !dbg !1431
  call void @llvm.dbg.value(metadata i32 %6, metadata !1372, metadata !DIExpression()) #12, !dbg !1431
  br label %7, !dbg !1432

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1433
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #7 !dbg !1434 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1473, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8* %1, metadata !1474, metadata !DIExpression()), !dbg !1489
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !1490
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !1475, metadata !DIExpression()), !dbg !1491
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !1492
  br i1 %4, label %25, label %5, !dbg !1493

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #12, !dbg !1494
  call void @llvm.dbg.value(metadata i32 %6, metadata !1476, metadata !DIExpression()), !dbg !1495
  %7 = icmp ult i32 %6, 3, !dbg !1496
  br i1 %7, label %8, label %25, !dbg !1496

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #12, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %9, metadata !1479, metadata !DIExpression()), !dbg !1498
  %10 = icmp slt i32 %9, 0, !dbg !1499
  br i1 %10, label %11, label %15, !dbg !1500

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #17, !dbg !1501
  %13 = load i32, i32* %12, align 4, !dbg !1501, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %13, metadata !1482, metadata !DIExpression()), !dbg !1502
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !1503
  store i32 %13, i32* %12, align 4, !dbg !1504, !tbaa !889
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !1505
  %17 = icmp eq i32 %16, 0, !dbg !1506
  br i1 %17, label %18, label %21, !dbg !1507

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #12, !dbg !1508
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !1475, metadata !DIExpression()), !dbg !1491
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !1509
  br i1 %20, label %21, label %25, !dbg !1510

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #17, !dbg !1511
  %23 = load i32, i32* %22, align 4, !dbg !1511, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %23, metadata !1485, metadata !DIExpression()), !dbg !1512
  %24 = tail call i32 @close(i32 %9) #12, !dbg !1513
  store i32 %23, i32* %22, align 4, !dbg !1514, !tbaa !889
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !1515
  ret %struct._IO_FILE* %26, !dbg !1516
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1517 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1519, metadata !DIExpression()), !dbg !1522
  %2 = icmp eq i8* %0, null, !dbg !1523
  br i1 %2, label %3, label %6, !dbg !1525

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1526, !tbaa !716
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.72, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1528
  tail call void @abort() #15, !dbg !1529
  unreachable, !dbg !1529

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1530
  call void @llvm.dbg.value(metadata i8* %7, metadata !1520, metadata !DIExpression()), !dbg !1531
  %8 = icmp eq i8* %7, null, !dbg !1532
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1533
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %10, metadata !1521, metadata !DIExpression()), !dbg !1535
  %11 = ptrtoint i8* %10 to i64, !dbg !1536
  %12 = ptrtoint i8* %0 to i64, !dbg !1536
  %13 = sub i64 %11, %12, !dbg !1536
  %14 = icmp sgt i64 %13, 6, !dbg !1538
  br i1 %14, label %15, label %24, !dbg !1539

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1540
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.73, i64 0, i64 0), i64 7) #14, !dbg !1541
  %18 = icmp eq i32 %17, 0, !dbg !1542
  br i1 %18, label %19, label %24, !dbg !1543

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1519, metadata !DIExpression()), !dbg !1522
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.74, i64 0, i64 0), i64 3) #14, !dbg !1544
  %21 = icmp eq i32 %20, 0, !dbg !1547
  br i1 %21, label %22, label %24, !dbg !1548

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %23, metadata !1519, metadata !DIExpression()), !dbg !1522
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1551, !tbaa !716
  br label %24, !dbg !1552

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1519, metadata !DIExpression()), !dbg !1522
  store i8* %25, i8** @program_name, align 8, !dbg !1553, !tbaa !716
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1554, !tbaa !716
  ret void, !dbg !1555
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1556 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1561, metadata !DIExpression()), !dbg !1564
  %2 = tail call i32* @__errno_location() #17, !dbg !1565
  %3 = load i32, i32* %2, align 4, !dbg !1565, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %3, metadata !1562, metadata !DIExpression()), !dbg !1566
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1567
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1567
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1567
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1568
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1568
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1563, metadata !DIExpression()), !dbg !1569
  store i32 %3, i32* %2, align 4, !dbg !1570, !tbaa !889
  ret %struct.quoting_options* %8, !dbg !1571
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !1572 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1578, metadata !DIExpression()), !dbg !1579
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1580
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1580
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1581
  %5 = load i32, i32* %4, align 8, !dbg !1581, !tbaa !1582
  ret i32 %5, !dbg !1584
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1585 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1589, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %1, metadata !1590, metadata !DIExpression()), !dbg !1592
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1593
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1593
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1594
  store i32 %1, i32* %5, align 8, !dbg !1595, !tbaa !1582
  ret void, !dbg !1596
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1597 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1601, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i8 %1, metadata !1602, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i32 %2, metadata !1603, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %1, metadata !1604, metadata !DIExpression()), !dbg !1612
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1613
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1613
  %6 = lshr i8 %1, 5, !dbg !1614
  %7 = zext i8 %6 to i64, !dbg !1614
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1615
  call void @llvm.dbg.value(metadata i32* %8, metadata !1605, metadata !DIExpression()), !dbg !1616
  %9 = and i8 %1, 31, !dbg !1617
  %10 = zext i8 %9 to i32, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %10, metadata !1607, metadata !DIExpression()), !dbg !1618
  %11 = load i32, i32* %8, align 4, !dbg !1619, !tbaa !889
  %12 = lshr i32 %11, %10, !dbg !1620
  %13 = and i32 %12, 1, !dbg !1621
  call void @llvm.dbg.value(metadata i32 %13, metadata !1608, metadata !DIExpression()), !dbg !1622
  %14 = and i32 %2, 1, !dbg !1623
  %15 = xor i32 %13, %14, !dbg !1624
  %16 = shl i32 %15, %10, !dbg !1625
  %17 = xor i32 %16, %11, !dbg !1626
  store i32 %17, i32* %8, align 4, !dbg !1626, !tbaa !889
  ret i32 %13, !dbg !1627
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1628 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1632, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i32 %1, metadata !1633, metadata !DIExpression()), !dbg !1636
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1637
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1639
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1632, metadata !DIExpression()), !dbg !1635
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1640
  %6 = load i32, i32* %5, align 4, !dbg !1640, !tbaa !1641
  call void @llvm.dbg.value(metadata i32 %6, metadata !1634, metadata !DIExpression()), !dbg !1642
  store i32 %1, i32* %5, align 4, !dbg !1643, !tbaa !1641
  ret i32 %6, !dbg !1644
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1645 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1649, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8* %1, metadata !1650, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %2, metadata !1651, metadata !DIExpression()), !dbg !1654
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1655
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1657
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1649, metadata !DIExpression()), !dbg !1652
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1658
  store i32 10, i32* %6, align 8, !dbg !1659, !tbaa !1582
  %7 = icmp ne i8* %1, null, !dbg !1660
  %8 = icmp ne i8* %2, null, !dbg !1662
  %9 = and i1 %7, %8, !dbg !1663
  br i1 %9, label %11, label %10, !dbg !1663

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1664
  unreachable, !dbg !1664

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1665
  store i8* %1, i8** %12, align 8, !dbg !1666, !tbaa !1667
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1668
  store i8* %2, i8** %13, align 8, !dbg !1669, !tbaa !1670
  ret void, !dbg !1671
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1672 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1676, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %1, metadata !1677, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8* %2, metadata !1678, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i64 %3, metadata !1679, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1680, metadata !DIExpression()), !dbg !1688
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1689
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1689
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1681, metadata !DIExpression()), !dbg !1690
  %8 = tail call i32* @__errno_location() #17, !dbg !1691
  %9 = load i32, i32* %8, align 4, !dbg !1691, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %9, metadata !1682, metadata !DIExpression()), !dbg !1692
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1693
  %11 = load i32, i32* %10, align 8, !dbg !1693, !tbaa !1582
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1694
  %13 = load i32, i32* %12, align 4, !dbg !1694, !tbaa !1641
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1695
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1696
  %16 = load i8*, i8** %15, align 8, !dbg !1696, !tbaa !1667
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1697
  %18 = load i8*, i8** %17, align 8, !dbg !1697, !tbaa !1670
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %19, metadata !1683, metadata !DIExpression()), !dbg !1699
  store i32 %9, i32* %8, align 4, !dbg !1700, !tbaa !889
  ret i64 %19, !dbg !1701
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1702 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1708, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i64 %1, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8* %2, metadata !1710, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %3, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %4, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %5, metadata !1713, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i32* %6, metadata !1714, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i8* %7, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %8, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 0, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 0, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8* null, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 0, metadata !1721, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 0, metadata !1722, metadata !DIExpression()), !dbg !1783
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1784
  %14 = icmp eq i64 %13, 1, !dbg !1785
  %15 = lshr i32 %5, 1, !dbg !1786
  %16 = trunc i32 %15 to i8, !dbg !1786
  %17 = and i8 %16, 1, !dbg !1786
  call void @llvm.dbg.value(metadata i8 %17, metadata !1724, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 1, metadata !1727, metadata !DIExpression()), !dbg !1789
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1790

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1780
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1781
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1782
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1783
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1791
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1787
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1788
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1789
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %39, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %38, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %37, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %36, metadata !1724, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i64 %35, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %34, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %33, metadata !1721, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* %32, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %31, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 0, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %30, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %29, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i32 %28, metadata !1712, metadata !DIExpression()), !dbg !1774
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
  ], !dbg !1793

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 %36, metadata !1724, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i32 5, metadata !1712, metadata !DIExpression()), !dbg !1774
  br label %93, !dbg !1794

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1724, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i32 5, metadata !1712, metadata !DIExpression()), !dbg !1774
  %43 = and i8 %36, 1, !dbg !1795
  %44 = icmp eq i8 %43, 0, !dbg !1795
  br i1 %44, label %45, label %93, !dbg !1794

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1797
  br i1 %46, label %93, label %47, !dbg !1800

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1797, !tbaa !871
  br label %93, !dbg !1797

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), i32 %28), !dbg !1801
  call void @llvm.dbg.value(metadata i8* %49, metadata !1715, metadata !DIExpression()), !dbg !1777
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), i32 %28), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %50, metadata !1716, metadata !DIExpression()), !dbg !1778
  br label %51, !dbg !1806

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %52, metadata !1715, metadata !DIExpression()), !dbg !1777
  %54 = and i8 %36, 1, !dbg !1807
  %55 = icmp eq i8 %54, 0, !dbg !1807
  br i1 %55, label %56, label %71, !dbg !1809

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 0, metadata !1718, metadata !DIExpression()), !dbg !1779
  %57 = load i8, i8* %52, align 1, !dbg !1810, !tbaa !871
  %58 = icmp eq i8 %57, 0, !dbg !1813
  br i1 %58, label %71, label %59, !dbg !1813

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %62, metadata !1718, metadata !DIExpression()), !dbg !1779
  %63 = icmp ult i64 %62, %40, !dbg !1814
  br i1 %63, label %64, label %66, !dbg !1817

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1814
  store i8 %60, i8* %65, align 1, !dbg !1814, !tbaa !871
  br label %66, !dbg !1814

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1817
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1818
  call void @llvm.dbg.value(metadata i8* %68, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %67, metadata !1718, metadata !DIExpression()), !dbg !1779
  %69 = load i8, i8* %68, align 1, !dbg !1810, !tbaa !871
  %70 = icmp eq i8 %69, 0, !dbg !1813
  br i1 %70, label %71, label %59, !dbg !1813, !llvm.loop !1819

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1779
  call void @llvm.dbg.value(metadata i64 %72, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 1, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8* %53, metadata !1720, metadata !DIExpression()), !dbg !1781
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %73, metadata !1721, metadata !DIExpression()), !dbg !1782
  br label %93, !dbg !1822

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1722, metadata !DIExpression()), !dbg !1783
  br label %75, !dbg !1823

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1791
  call void @llvm.dbg.value(metadata i8 %76, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1786
  br label %77, !dbg !1824

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1783
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1791
  call void @llvm.dbg.value(metadata i8 %79, metadata !1724, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 %78, metadata !1722, metadata !DIExpression()), !dbg !1783
  %80 = and i8 %79, 1, !dbg !1825
  %81 = icmp eq i8 %80, 0, !dbg !1825
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1827
  br label %83, !dbg !1827

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1828
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1786
  call void @llvm.dbg.value(metadata i8 %85, metadata !1724, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 %84, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1774
  %86 = and i8 %85, 1, !dbg !1829
  %87 = icmp eq i8 %86, 0, !dbg !1829
  br i1 %87, label %88, label %93, !dbg !1831

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1832
  br i1 %89, label %93, label %90, !dbg !1835

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1832, !tbaa !871
  br label %93, !dbg !1832

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1786
  br label %93, !dbg !1836

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1837
  unreachable, !dbg !1837

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1779
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %41 ], !dbg !1791
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1791
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1791
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %101, metadata !1724, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 %100, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %99, metadata !1721, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %97, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i32 %94, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !1839
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
  br label %121, !dbg !1840

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1841
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1779
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1780
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1787
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1788
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1789
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %125, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %122, metadata !1717, metadata !DIExpression()), !dbg !1839
  %130 = icmp eq i64 %125, -1, !dbg !1842
  br i1 %130, label %131, label %135, !dbg !1843

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1844
  %133 = load i8, i8* %132, align 1, !dbg !1844, !tbaa !871
  %134 = icmp eq i8 %133, 0, !dbg !1845
  br i1 %134, label %617, label %137, !dbg !1846

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1847
  br i1 %136, label %617, label %137, !dbg !1846

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1734, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !1850
  br i1 %107, label %138, label %153, !dbg !1851

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1853
  %140 = and i1 %108, %130, !dbg !1854
  br i1 %140, label %141, label %143, !dbg !1854

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %142, metadata !1711, metadata !DIExpression()), !dbg !1773
  br label %143, !dbg !1856

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1711, metadata !DIExpression()), !dbg !1773
  %145 = icmp ugt i64 %139, %144, !dbg !1857
  br i1 %145, label %153, label %146, !dbg !1858

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1859
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1860
  %149 = icmp ne i32 %148, 0, !dbg !1861
  %150 = or i1 %149, %110, !dbg !1862
  %151 = xor i1 %149, true, !dbg !1862
  %152 = zext i1 %151 to i8, !dbg !1862
  br i1 %150, label %153, label %661, !dbg !1862

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1863
  call void @llvm.dbg.value(metadata i8 %155, metadata !1733, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %154, metadata !1711, metadata !DIExpression()), !dbg !1773
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1864
  %157 = load i8, i8* %156, align 1, !dbg !1864, !tbaa !871
  call void @llvm.dbg.value(metadata i8 %157, metadata !1728, metadata !DIExpression()), !dbg !1865
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
  ], !dbg !1866

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1867

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1868

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1849
  %161 = and i8 %126, 1, !dbg !1872
  %162 = icmp eq i8 %161, 0, !dbg !1872
  %163 = and i1 %114, %162, !dbg !1872
  br i1 %163, label %164, label %180, !dbg !1872

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1874
  br i1 %165, label %166, label %168, !dbg !1878

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1874
  store i8 39, i8* %167, align 1, !dbg !1874, !tbaa !871
  br label %168, !dbg !1874

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1878
  call void @llvm.dbg.value(metadata i64 %169, metadata !1718, metadata !DIExpression()), !dbg !1779
  %170 = icmp ult i64 %169, %129, !dbg !1879
  br i1 %170, label %171, label %173, !dbg !1882

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1879
  store i8 36, i8* %172, align 1, !dbg !1879, !tbaa !871
  br label %173, !dbg !1879

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %174, metadata !1718, metadata !DIExpression()), !dbg !1779
  %175 = icmp ult i64 %174, %129, !dbg !1883
  br i1 %175, label %176, label %178, !dbg !1886

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1883
  store i8 39, i8* %177, align 1, !dbg !1883, !tbaa !871
  br label %178, !dbg !1883

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %179, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 1, metadata !1725, metadata !DIExpression()), !dbg !1787
  br label %180, !dbg !1887

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1838
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %182, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %181, metadata !1718, metadata !DIExpression()), !dbg !1779
  %183 = icmp ult i64 %181, %129, !dbg !1888
  br i1 %183, label %184, label %186, !dbg !1891

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1888
  store i8 92, i8* %185, align 1, !dbg !1888, !tbaa !871
  br label %186, !dbg !1888

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %187, metadata !1718, metadata !DIExpression()), !dbg !1779
  br i1 %104, label %188, label %478, !dbg !1892

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1894
  %190 = icmp ult i64 %189, %154, !dbg !1895
  br i1 %190, label %191, label %467, !dbg !1896

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1897
  %193 = load i8, i8* %192, align 1, !dbg !1897, !tbaa !871
  %194 = add i8 %193, -48, !dbg !1898
  %195 = icmp ult i8 %194, 10, !dbg !1898
  br i1 %195, label %196, label %467, !dbg !1898

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1899
  br i1 %197, label %198, label %200, !dbg !1903

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1899
  store i8 48, i8* %199, align 1, !dbg !1899, !tbaa !871
  br label %200, !dbg !1899

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %201, metadata !1718, metadata !DIExpression()), !dbg !1779
  %202 = icmp ult i64 %201, %129, !dbg !1904
  br i1 %202, label %203, label %205, !dbg !1907

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1904
  store i8 48, i8* %204, align 1, !dbg !1904, !tbaa !871
  br label %205, !dbg !1904

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %206, metadata !1718, metadata !DIExpression()), !dbg !1779
  br label %467, !dbg !1908

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1909

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1910

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1911

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1913

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1915
  %213 = icmp ult i64 %212, %154, !dbg !1916
  br i1 %213, label %214, label %467, !dbg !1917

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1918
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1919
  %217 = load i8, i8* %216, align 1, !dbg !1919, !tbaa !871
  %218 = icmp eq i8 %217, 63, !dbg !1920
  br i1 %218, label %219, label %467, !dbg !1921

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1922
  %221 = load i8, i8* %220, align 1, !dbg !1922, !tbaa !871
  %222 = sext i8 %221 to i32, !dbg !1922
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
  ], !dbg !1923

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1924

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1728, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %212, metadata !1717, metadata !DIExpression()), !dbg !1839
  %225 = icmp ult i64 %123, %129, !dbg !1926
  br i1 %225, label %226, label %228, !dbg !1929

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1926
  store i8 63, i8* %227, align 1, !dbg !1926, !tbaa !871
  br label %228, !dbg !1926

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %229, metadata !1718, metadata !DIExpression()), !dbg !1779
  %230 = icmp ult i64 %229, %129, !dbg !1930
  br i1 %230, label %231, label %233, !dbg !1933

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1930
  store i8 34, i8* %232, align 1, !dbg !1930, !tbaa !871
  br label %233, !dbg !1930

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %234, metadata !1718, metadata !DIExpression()), !dbg !1779
  %235 = icmp ult i64 %234, %129, !dbg !1934
  br i1 %235, label %236, label %238, !dbg !1937

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1934
  store i8 34, i8* %237, align 1, !dbg !1934, !tbaa !871
  br label %238, !dbg !1934

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %239, metadata !1718, metadata !DIExpression()), !dbg !1779
  %240 = icmp ult i64 %239, %129, !dbg !1938
  br i1 %240, label %241, label %243, !dbg !1941

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1938
  store i8 63, i8* %242, align 1, !dbg !1938, !tbaa !871
  br label %243, !dbg !1938

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %244, metadata !1718, metadata !DIExpression()), !dbg !1779
  br label %467, !dbg !1942

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1732, metadata !DIExpression()), !dbg !1943
  br label %255, !dbg !1944

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1732, metadata !DIExpression()), !dbg !1943
  br label %255, !dbg !1945

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1732, metadata !DIExpression()), !dbg !1943
  br label %253, !dbg !1946

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1732, metadata !DIExpression()), !dbg !1943
  br label %253, !dbg !1947

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1732, metadata !DIExpression()), !dbg !1943
  br label %255, !dbg !1948

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1732, metadata !DIExpression()), !dbg !1943
  br i1 %114, label %251, label %252, !dbg !1949

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1950

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1953

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1955
  call void @llvm.dbg.value(metadata i8 %254, metadata !1732, metadata !DIExpression()), !dbg !1943
  br i1 %113, label %255, label %661, !dbg !1956

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1955
  call void @llvm.dbg.value(metadata i8 %256, metadata !1732, metadata !DIExpression()), !dbg !1943
  br i1 %103, label %524, label %478, !dbg !1958

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1959
  br i1 %258, label %259, label %264, !dbg !1961

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1962, !tbaa !871
  %261 = icmp ne i8 %260, 0, !dbg !1963
  %262 = icmp ne i64 %122, 0, !dbg !1964
  %263 = or i1 %262, %261, !dbg !1966
  br i1 %263, label %467, label %270, !dbg !1966

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1967
  %266 = icmp ne i64 %122, 0, !dbg !1964
  %267 = or i1 %266, %265, !dbg !1961
  br i1 %267, label %467, label %270, !dbg !1961

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1964
  br i1 %269, label %270, label %467, !dbg !1968

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1850
  br label %271, !dbg !1969

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1955
  call void @llvm.dbg.value(metadata i8 %272, metadata !1735, metadata !DIExpression()), !dbg !1850
  br i1 %113, label %467, label %661, !dbg !1970

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1850
  br i1 %114, label %274, label %467, !dbg !1972

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1973

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1976
  %277 = icmp ne i64 %124, 0, !dbg !1978
  %278 = or i1 %277, %276, !dbg !1979
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1979
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %280, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %279, metadata !1719, metadata !DIExpression()), !dbg !1780
  %281 = icmp ult i64 %123, %280, !dbg !1980
  br i1 %281, label %282, label %284, !dbg !1983

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1980
  store i8 39, i8* %283, align 1, !dbg !1980, !tbaa !871
  br label %284, !dbg !1980

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %285, metadata !1718, metadata !DIExpression()), !dbg !1779
  %286 = icmp ult i64 %285, %280, !dbg !1984
  br i1 %286, label %287, label %289, !dbg !1987

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1984
  store i8 92, i8* %288, align 1, !dbg !1984, !tbaa !871
  br label %289, !dbg !1984

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %290, metadata !1718, metadata !DIExpression()), !dbg !1779
  %291 = icmp ult i64 %290, %280, !dbg !1988
  br i1 %291, label %292, label %294, !dbg !1991

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1988
  store i8 39, i8* %293, align 1, !dbg !1988, !tbaa !871
  br label %294, !dbg !1988

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %295, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1787
  br label %467, !dbg !1992

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1993

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1736, metadata !DIExpression()), !dbg !1994
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1995
  %299 = load i16*, i16** %298, align 8, !dbg !1995, !tbaa !716
  %300 = zext i8 %157 to i64, !dbg !1995
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1995
  %302 = load i16, i16* %301, align 2, !dbg !1995, !tbaa !1997
  %303 = lshr i16 %302, 14, !dbg !1998
  %304 = trunc i16 %303 to i8, !dbg !1998
  %305 = and i8 %304, 1, !dbg !1998
  call void @llvm.dbg.value(metadata i8 %305, metadata !1739, metadata !DIExpression()), !dbg !1999
  br label %359, !dbg !2000

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2001
  store i64 0, i64* %10, align 8, !dbg !2002
  call void @llvm.dbg.value(metadata i64 0, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8 1, metadata !1739, metadata !DIExpression()), !dbg !1999
  %307 = icmp eq i64 %154, -1, !dbg !2003
  br i1 %307, label %308, label %310, !dbg !2005

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %309, metadata !1711, metadata !DIExpression()), !dbg !1773
  br label %310, !dbg !2007

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2008
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  br label %312, !dbg !2009

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2010
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2011
  call void @llvm.dbg.value(metadata i8 %314, metadata !1739, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %313, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2012
  %315 = add i64 %313, %122, !dbg !2013
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2014
  %317 = sub i64 %311, %315, !dbg !2015
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1740, metadata !DIExpression(DW_OP_deref)), !dbg !2016
  call void @llvm.dbg.value(metadata i32* %12, metadata !1756, metadata !DIExpression(DW_OP_deref)), !dbg !2017
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %318, metadata !1759, metadata !DIExpression()), !dbg !2019
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2020

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i64 %313, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i64 %313, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i64 %313, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i64 %313, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i64 %313, metadata !1736, metadata !DIExpression()), !dbg !1994
  %320 = icmp ugt i64 %311, %315, !dbg !2021
  br i1 %320, label %321, label %344, !dbg !2023

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1736, metadata !DIExpression()), !dbg !1994
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2024
  %325 = load i8, i8* %324, align 1, !dbg !2024, !tbaa !871
  %326 = icmp eq i8 %325, 0, !dbg !2023
  br i1 %326, label %344, label %327, !dbg !2025

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %328, metadata !1736, metadata !DIExpression()), !dbg !1994
  %329 = add i64 %328, %122, !dbg !2027
  %330 = icmp ult i64 %329, %311, !dbg !2021
  br i1 %330, label %321, label %344, !dbg !2023, !llvm.loop !2028

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2029
  %333 = and i1 %116, %332, !dbg !2032
  call void @llvm.dbg.value(metadata i64 1, metadata !1760, metadata !DIExpression()), !dbg !2033
  br i1 %333, label %334, label %347, !dbg !2032

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1760, metadata !DIExpression()), !dbg !2033
  %336 = add i64 %335, %315, !dbg !2034
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2035
  %338 = load i8, i8* %337, align 1, !dbg !2035, !tbaa !871
  %339 = sext i8 %338 to i32, !dbg !2035
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2036

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2037
  call void @llvm.dbg.value(metadata i64 %341, metadata !1760, metadata !DIExpression()), !dbg !2033
  %342 = icmp ult i64 %341, %318, !dbg !2029
  br i1 %342, label %334, label %347, !dbg !2038, !llvm.loop !2039

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8 %314, metadata !1739, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %313, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8 %314, metadata !1739, metadata !DIExpression()), !dbg !1999
  br label %344, !dbg !2041

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1739, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %352, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2041
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2042, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %348, metadata !1756, metadata !DIExpression()), !dbg !2017
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !2044
  %350 = icmp eq i32 %349, 0, !dbg !2044
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2045
  call void @llvm.dbg.value(metadata i8 %351, metadata !1739, metadata !DIExpression()), !dbg !1999
  %352 = add i64 %318, %313, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %352, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8 %351, metadata !1739, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %352, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2041
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1740, metadata !DIExpression(DW_OP_deref)), !dbg !2016
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2047
  %354 = icmp eq i32 %353, 0, !dbg !2048
  br i1 %354, label %312, label %355, !dbg !2049, !llvm.loop !2050

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2052
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %100, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 %100, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 %100, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 %100, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 %100, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %94, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %94, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %94, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %94, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %94, metadata !1712, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %100, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 %100, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 %100, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 %100, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 %100, metadata !1722, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %351, metadata !1739, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %352, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2041
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2052
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2053
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2054
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2054
  call void @llvm.dbg.value(metadata i8 %362, metadata !1739, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %361, metadata !1736, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i64 %360, metadata !1711, metadata !DIExpression()), !dbg !1773
  %363 = and i8 %362, 1, !dbg !2055
  %364 = icmp ne i8 %363, 0, !dbg !2055
  call void @llvm.dbg.value(metadata i8 %363, metadata !1735, metadata !DIExpression()), !dbg !1850
  %365 = icmp ult i64 %361, 2, !dbg !2056
  %366 = or i1 %364, %115, !dbg !2057
  %367 = and i1 %365, %366, !dbg !2058
  br i1 %367, label %467, label %368, !dbg !2058

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %369, metadata !1767, metadata !DIExpression()), !dbg !2060
  br label %370, !dbg !2061

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2062
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2066
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1787
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2062
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2068
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1849
  call void @llvm.dbg.value(metadata i8 %376, metadata !1734, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %375, metadata !1733, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %374, metadata !1728, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %373, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %372, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %371, metadata !1717, metadata !DIExpression()), !dbg !1839
  br i1 %366, label %423, label %377, !dbg !2072

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2073

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1849
  %379 = and i8 %373, 1, !dbg !2076
  %380 = icmp eq i8 %379, 0, !dbg !2076
  %381 = and i1 %114, %380, !dbg !2076
  br i1 %381, label %382, label %398, !dbg !2076

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2078
  br i1 %383, label %384, label %386, !dbg !2082

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2078
  store i8 39, i8* %385, align 1, !dbg !2078, !tbaa !871
  br label %386, !dbg !2078

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %387, metadata !1718, metadata !DIExpression()), !dbg !1779
  %388 = icmp ult i64 %387, %129, !dbg !2083
  br i1 %388, label %389, label %391, !dbg !2086

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2083
  store i8 36, i8* %390, align 1, !dbg !2083, !tbaa !871
  br label %391, !dbg !2083

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %392, metadata !1718, metadata !DIExpression()), !dbg !1779
  %393 = icmp ult i64 %392, %129, !dbg !2087
  br i1 %393, label %394, label %396, !dbg !2090

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2087
  store i8 39, i8* %395, align 1, !dbg !2087, !tbaa !871
  br label %396, !dbg !2087

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %397, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 1, metadata !1725, metadata !DIExpression()), !dbg !1787
  br label %398, !dbg !2091

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1838
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %400, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %399, metadata !1718, metadata !DIExpression()), !dbg !1779
  %401 = icmp ult i64 %399, %129, !dbg !2092
  br i1 %401, label %402, label %404, !dbg !2095

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2092
  store i8 92, i8* %403, align 1, !dbg !2092, !tbaa !871
  br label %404, !dbg !2092

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %405, metadata !1718, metadata !DIExpression()), !dbg !1779
  %406 = icmp ult i64 %405, %129, !dbg !2096
  br i1 %406, label %407, label %411, !dbg !2099

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2096
  %409 = or i8 %408, 48, !dbg !2096
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2096
  store i8 %409, i8* %410, align 1, !dbg !2096, !tbaa !871
  br label %411, !dbg !2096

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %412, metadata !1718, metadata !DIExpression()), !dbg !1779
  %413 = icmp ult i64 %412, %129, !dbg !2100
  br i1 %413, label %414, label %419, !dbg !2103

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2100
  %416 = and i8 %415, 7, !dbg !2100
  %417 = or i8 %416, 48, !dbg !2100
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2100
  store i8 %417, i8* %418, align 1, !dbg !2100, !tbaa !871
  br label %419, !dbg !2100

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2103
  call void @llvm.dbg.value(metadata i64 %420, metadata !1718, metadata !DIExpression()), !dbg !1779
  %421 = and i8 %374, 7, !dbg !2104
  %422 = or i8 %421, 48, !dbg !2105
  call void @llvm.dbg.value(metadata i8 %422, metadata !1728, metadata !DIExpression()), !dbg !1865
  br label %432, !dbg !2106

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2107
  %425 = icmp eq i8 %424, 0, !dbg !2107
  br i1 %425, label %432, label %426, !dbg !2108

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2109
  br i1 %427, label %428, label %430, !dbg !2112

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2109
  store i8 92, i8* %429, align 1, !dbg !2109, !tbaa !871
  br label %430, !dbg !2109

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %431, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1848
  br label %432, !dbg !2113

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2114
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1787
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2115
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2116
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2118
  call void @llvm.dbg.value(metadata i8 %437, metadata !1734, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %436, metadata !1733, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %435, metadata !1728, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %434, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %433, metadata !1718, metadata !DIExpression()), !dbg !1779
  %438 = add i64 %371, 1, !dbg !2119
  %439 = icmp ugt i64 %369, %438, !dbg !2121
  br i1 %439, label %440, label %562, !dbg !2122

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2123
  %442 = icmp ne i8 %441, 0, !dbg !2123
  %443 = and i8 %437, 1, !dbg !2123
  %444 = icmp eq i8 %443, 0, !dbg !2123
  %445 = and i1 %442, %444, !dbg !2123
  br i1 %445, label %446, label %457, !dbg !2123

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2126
  br i1 %447, label %448, label %450, !dbg !2130

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2126
  store i8 39, i8* %449, align 1, !dbg !2126, !tbaa !871
  br label %450, !dbg !2126

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %451, metadata !1718, metadata !DIExpression()), !dbg !1779
  %452 = icmp ult i64 %451, %129, !dbg !2131
  br i1 %452, label %453, label %455, !dbg !2134

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2131
  store i8 39, i8* %454, align 1, !dbg !2131, !tbaa !871
  br label %455, !dbg !2131

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %456, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1787
  br label %457, !dbg !2135

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2136
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %459, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %458, metadata !1718, metadata !DIExpression()), !dbg !1779
  %460 = icmp ult i64 %458, %129, !dbg !2137
  br i1 %460, label %461, label %463, !dbg !2139

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2137
  store i8 %435, i8* %462, align 1, !dbg !2137, !tbaa !871
  br label %463, !dbg !2137

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %464, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %438, metadata !1717, metadata !DIExpression()), !dbg !1839
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2140
  %466 = load i8, i8* %465, align 1, !dbg !2140, !tbaa !871
  call void @llvm.dbg.value(metadata i8 %466, metadata !1728, metadata !DIExpression()), !dbg !1865
  br label %370, !dbg !2141, !llvm.loop !2142

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2145
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1838
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1780
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2146
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1838
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1838
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1863
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1863
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1863
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %476, metadata !1735, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 %475, metadata !1734, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %155, metadata !1733, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %474, metadata !1728, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %473, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %472, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %471, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %470, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %469, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %468, metadata !1717, metadata !DIExpression()), !dbg !1839
  br i1 %105, label %489, label %478, !dbg !2147

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
  br i1 %112, label %490, label %512, !dbg !2149

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2150

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
  %501 = lshr i8 %494, 5, !dbg !2151
  %502 = zext i8 %501 to i64, !dbg !2151
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2152
  %504 = load i32, i32* %503, align 4, !dbg !2152, !tbaa !889
  %505 = and i8 %494, 31, !dbg !2153
  %506 = zext i8 %505 to i32, !dbg !2153
  %507 = shl i32 1, %506, !dbg !2154
  %508 = and i32 %504, %507, !dbg !2154
  %509 = icmp eq i32 %508, 0, !dbg !2154
  %510 = icmp eq i8 %155, 0, !dbg !2155
  %511 = and i1 %510, %509, !dbg !2156
  br i1 %511, label %562, label %524, !dbg !2156

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
  %523 = icmp eq i8 %155, 0, !dbg !2155
  br i1 %523, label %562, label %524, !dbg !2157

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2158
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1838
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1780
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2146
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1787
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1788
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2159
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1863
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %532, metadata !1735, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 %531, metadata !1728, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %530, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %529, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %528, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %527, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %526, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %525, metadata !1717, metadata !DIExpression()), !dbg !1839
  br i1 %110, label %534, label %661, !dbg !2162

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1849
  %535 = and i8 %529, 1, !dbg !2164
  %536 = icmp eq i8 %535, 0, !dbg !2164
  %537 = and i1 %114, %536, !dbg !2164
  br i1 %537, label %538, label %554, !dbg !2164

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2166
  br i1 %539, label %540, label %542, !dbg !2170

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2166
  store i8 39, i8* %541, align 1, !dbg !2166, !tbaa !871
  br label %542, !dbg !2166

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %543, metadata !1718, metadata !DIExpression()), !dbg !1779
  %544 = icmp ult i64 %543, %533, !dbg !2171
  br i1 %544, label %545, label %547, !dbg !2174

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2171
  store i8 36, i8* %546, align 1, !dbg !2171, !tbaa !871
  br label %547, !dbg !2171

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %548, metadata !1718, metadata !DIExpression()), !dbg !1779
  %549 = icmp ult i64 %548, %533, !dbg !2175
  br i1 %549, label %550, label %552, !dbg !2178

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2175
  store i8 39, i8* %551, align 1, !dbg !2175, !tbaa !871
  br label %552, !dbg !2175

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %553, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 1, metadata !1725, metadata !DIExpression()), !dbg !1787
  br label %554, !dbg !2179

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2136
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %556, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %555, metadata !1718, metadata !DIExpression()), !dbg !1779
  %557 = icmp ult i64 %555, %533, !dbg !2180
  br i1 %557, label %558, label %560, !dbg !2183

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2180
  store i8 92, i8* %559, align 1, !dbg !2180, !tbaa !871
  br label %560, !dbg !2180

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %561, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %572, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %571, metadata !1735, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 %570, metadata !1734, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %569, metadata !1728, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %568, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %567, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %566, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %565, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %564, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %563, metadata !1717, metadata !DIExpression()), !dbg !1839
  br label %589, !dbg !2184

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2158
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1838
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1780
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2146
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1787
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1788
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2187
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1863
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1863
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %571, metadata !1735, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 %570, metadata !1734, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %569, metadata !1728, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %568, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %567, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %566, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %565, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %564, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %563, metadata !1717, metadata !DIExpression()), !dbg !1839
  %573 = and i8 %567, 1, !dbg !2184
  %574 = icmp ne i8 %573, 0, !dbg !2184
  %575 = and i8 %570, 1, !dbg !2184
  %576 = icmp eq i8 %575, 0, !dbg !2184
  %577 = and i1 %574, %576, !dbg !2184
  br i1 %577, label %578, label %589, !dbg !2184

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2188
  br i1 %579, label %580, label %582, !dbg !2192

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2188
  store i8 39, i8* %581, align 1, !dbg !2188, !tbaa !871
  br label %582, !dbg !2188

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %583, metadata !1718, metadata !DIExpression()), !dbg !1779
  %584 = icmp ult i64 %583, %572, !dbg !2193
  br i1 %584, label %585, label %587, !dbg !2196

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2193
  store i8 39, i8* %586, align 1, !dbg !2193, !tbaa !871
  br label %587, !dbg !2193

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %588, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1787
  br label %589, !dbg !2197

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2136
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %598, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %597, metadata !1718, metadata !DIExpression()), !dbg !1779
  %599 = icmp ult i64 %597, %590, !dbg !2198
  br i1 %599, label %600, label %602, !dbg !2201

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2198
  store i8 %592, i8* %601, align 1, !dbg !2198, !tbaa !871
  br label %602, !dbg !2198

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %603, metadata !1718, metadata !DIExpression()), !dbg !1779
  %604 = and i8 %591, 1, !dbg !2202
  %605 = icmp eq i8 %604, 0, !dbg !2202
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2204
  call void @llvm.dbg.value(metadata i8 %606, metadata !1727, metadata !DIExpression()), !dbg !1789
  br label %607, !dbg !2205

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2158
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1838
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1780
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2146
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1787
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1838
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1789
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %614, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %613, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %612, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %611, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %610, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %609, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %608, metadata !1717, metadata !DIExpression()), !dbg !1839
  %616 = add i64 %608, 1, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %616, metadata !1717, metadata !DIExpression()), !dbg !1839
  br label %121, !dbg !2207, !llvm.loop !2208

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %618, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %618, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %125, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %125, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %126, metadata !1725, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %127, metadata !1726, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %128, metadata !1727, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  %619 = icmp eq i64 %123, 0, !dbg !2210
  %620 = and i1 %114, %619, !dbg !2212
  %621 = xor i1 %620, true, !dbg !2212
  %622 = or i1 %110, %621, !dbg !2212
  br i1 %622, label %623, label %661, !dbg !2212

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2213
  %625 = xor i1 %624, true, !dbg !2213
  %626 = and i8 %127, 1, !dbg !2215
  %627 = icmp eq i8 %626, 0, !dbg !2215
  %628 = or i1 %627, %625, !dbg !2213
  br i1 %628, label %638, label %629, !dbg !2213

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2216
  %631 = icmp eq i8 %630, 0, !dbg !2216
  br i1 %631, label %634, label %632, !dbg !2219

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %618, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %618, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %618, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %618, metadata !1711, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %96, metadata !1716, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %124, metadata !1719, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %125, metadata !1711, metadata !DIExpression()), !dbg !1773
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2220
  br label %671, !dbg !2221

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2222
  %636 = icmp ne i64 %124, 0, !dbg !2224
  %637 = and i1 %636, %635, !dbg !2225
  br i1 %637, label %27, label %638, !dbg !2225

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %129, metadata !1709, metadata !DIExpression()), !dbg !1771
  %639 = icmp ne i8* %98, null, !dbg !2226
  %640 = and i1 %639, %110, !dbg !2228
  br i1 %640, label %641, label %656, !dbg !2228

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %123, metadata !1718, metadata !DIExpression()), !dbg !1779
  %642 = load i8, i8* %98, align 1, !dbg !2229, !tbaa !871
  %643 = icmp eq i8 %642, 0, !dbg !2232
  br i1 %643, label %656, label %644, !dbg !2232

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %647, metadata !1718, metadata !DIExpression()), !dbg !1779
  %648 = icmp ult i64 %647, %129, !dbg !2233
  br i1 %648, label %649, label %651, !dbg !2236

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2233
  store i8 %645, i8* %650, align 1, !dbg !2233, !tbaa !871
  br label %651, !dbg !2233

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2236
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2237
  call void @llvm.dbg.value(metadata i8* %653, metadata !1720, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %652, metadata !1718, metadata !DIExpression()), !dbg !1779
  %654 = load i8, i8* %653, align 1, !dbg !2229, !tbaa !871
  %655 = icmp eq i8 %654, 0, !dbg !2232
  br i1 %655, label %656, label %644, !dbg !2232, !llvm.loop !2238

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1779
  call void @llvm.dbg.value(metadata i64 %657, metadata !1718, metadata !DIExpression()), !dbg !1779
  %658 = icmp ult i64 %657, %129, !dbg !2240
  br i1 %658, label %659, label %671, !dbg !2242

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2243
  store i8 0, i8* %660, align 1, !dbg !2244, !tbaa !871
  br label %671, !dbg !2243

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1709, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %663, metadata !1711, metadata !DIExpression()), !dbg !1773
  %665 = icmp ne i32 %662, 2, !dbg !2245
  %666 = icmp eq i8 %102, 0, !dbg !2247
  %667 = or i1 %665, %666, !dbg !2248
  call void @llvm.dbg.value(metadata i32 4, metadata !1712, metadata !DIExpression()), !dbg !1774
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2248
  call void @llvm.dbg.value(metadata i32 %668, metadata !1712, metadata !DIExpression()), !dbg !1774
  %669 = and i32 %5, -3, !dbg !2249
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2250
  br label %671, !dbg !2251

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2252
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2253 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2257, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 %1, metadata !2258, metadata !DIExpression()), !dbg !2262
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2263
  call void @llvm.dbg.value(metadata i8* %3, metadata !2259, metadata !DIExpression()), !dbg !2264
  %4 = icmp eq i8* %3, %0, !dbg !2265
  br i1 %4, label %5, label %71, !dbg !2267

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2268
  call void @llvm.dbg.value(metadata i8* %6, metadata !2260, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i8* %6, metadata !2270, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8* null, metadata !2276, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 85, metadata !2277, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 84, metadata !2278, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 70, metadata !2279, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 45, metadata !2280, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 56, metadata !2281, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 0, metadata !2282, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 0, metadata !2283, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8 0, metadata !2284, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8 0, metadata !2285, metadata !DIExpression()), !dbg !2298
  %7 = load i8, i8* %6, align 1, !dbg !2299, !tbaa !871
  %8 = and i8 %7, -33, !dbg !2299
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2299

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2301, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8* null, metadata !2306, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 84, metadata !2307, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 70, metadata !2308, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i8 45, metadata !2309, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8 56, metadata !2310, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8 0, metadata !2311, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, metadata !2312, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 0, metadata !2313, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 0, metadata !2314, metadata !DIExpression()), !dbg !2327
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2328
  %11 = load i8, i8* %10, align 1, !dbg !2328, !tbaa !871
  %12 = and i8 %11, -33, !dbg !2328
  %13 = icmp eq i8 %12, 84, !dbg !2328
  br i1 %13, label %14, label %68, !dbg !2328

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2330, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8* null, metadata !2335, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 70, metadata !2336, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i8 45, metadata !2337, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 56, metadata !2338, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8 0, metadata !2340, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8 0, metadata !2341, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2354
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2355
  %16 = load i8, i8* %15, align 1, !dbg !2355, !tbaa !871
  %17 = and i8 %16, -33, !dbg !2355
  %18 = icmp eq i8 %17, 70, !dbg !2355
  br i1 %18, label %19, label %68, !dbg !2355

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2357, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* null, metadata !2362, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 45, metadata !2363, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8 56, metadata !2364, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8 0, metadata !2365, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 0, metadata !2366, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8 0, metadata !2367, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 0, metadata !2368, metadata !DIExpression()), !dbg !2379
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2380
  %21 = load i8, i8* %20, align 1, !dbg !2380, !tbaa !871
  %22 = icmp eq i8 %21, 45, !dbg !2380
  br i1 %22, label %23, label %68, !dbg !2382

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2383, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* null, metadata !2388, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 56, metadata !2389, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2390, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2391, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 0, metadata !2392, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8 0, metadata !2393, metadata !DIExpression()), !dbg !2403
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2404
  %25 = load i8, i8* %24, align 1, !dbg !2404, !tbaa !871
  %26 = icmp eq i8 %25, 56, !dbg !2404
  br i1 %26, label %27, label %68, !dbg !2406

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2407, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8* null, metadata !2412, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8 0, metadata !2413, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 0, metadata !2414, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2425
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2426
  %29 = load i8, i8* %28, align 1, !dbg !2426, !tbaa !871
  %30 = icmp eq i8 %29, 0, !dbg !2426
  br i1 %30, label %31, label %68, !dbg !2428

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2429, !tbaa !871
  %33 = icmp eq i8 %32, 96, !dbg !2430
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.88, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.89, i64 0, i64 0), !dbg !2429
  br label %71, !dbg !2431

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2301, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8* null, metadata !2306, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 66, metadata !2307, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 49, metadata !2308, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i8 56, metadata !2309, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 48, metadata !2310, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 51, metadata !2311, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 48, metadata !2312, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8 0, metadata !2313, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 0, metadata !2314, metadata !DIExpression()), !dbg !2444
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2445
  %37 = load i8, i8* %36, align 1, !dbg !2445, !tbaa !871
  %38 = and i8 %37, -33, !dbg !2445
  %39 = icmp eq i8 %38, 66, !dbg !2445
  br i1 %39, label %40, label %68, !dbg !2445

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2330, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8* null, metadata !2335, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 49, metadata !2336, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 56, metadata !2337, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 48, metadata !2338, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 51, metadata !2339, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 48, metadata !2340, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 0, metadata !2341, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2455
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2456
  %42 = load i8, i8* %41, align 1, !dbg !2456, !tbaa !871
  %43 = icmp eq i8 %42, 49, !dbg !2456
  br i1 %43, label %44, label %68, !dbg !2457

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2357, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* null, metadata !2362, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 56, metadata !2363, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 48, metadata !2364, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 51, metadata !2365, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 48, metadata !2366, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i8 0, metadata !2367, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 0, metadata !2368, metadata !DIExpression()), !dbg !2466
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2467
  %46 = load i8, i8* %45, align 1, !dbg !2467, !tbaa !871
  %47 = icmp eq i8 %46, 56, !dbg !2467
  br i1 %47, label %48, label %68, !dbg !2468

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2383, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* null, metadata !2388, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 48, metadata !2389, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 51, metadata !2390, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 48, metadata !2391, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2392, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 0, metadata !2393, metadata !DIExpression()), !dbg !2476
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2477
  %50 = load i8, i8* %49, align 1, !dbg !2477, !tbaa !871
  %51 = icmp eq i8 %50, 48, !dbg !2477
  br i1 %51, label %52, label %68, !dbg !2478

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2407, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8* null, metadata !2412, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 51, metadata !2413, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 48, metadata !2414, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2485
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2486
  %54 = load i8, i8* %53, align 1, !dbg !2486, !tbaa !871
  %55 = icmp eq i8 %54, 51, !dbg !2486
  br i1 %55, label %56, label %68, !dbg !2487

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2488, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8* null, metadata !2493, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8 48, metadata !2494, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 0, metadata !2495, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8 0, metadata !2496, metadata !DIExpression()), !dbg !2504
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2505
  %58 = load i8, i8* %57, align 1, !dbg !2505, !tbaa !871
  %59 = icmp eq i8 %58, 48, !dbg !2505
  br i1 %59, label %60, label %68, !dbg !2507

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2508, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8* null, metadata !2513, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 0, metadata !2514, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 0, metadata !2515, metadata !DIExpression()), !dbg !2522
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2523
  %62 = load i8, i8* %61, align 1, !dbg !2523, !tbaa !871
  %63 = icmp eq i8 %62, 0, !dbg !2523
  br i1 %63, label %64, label %68, !dbg !2525

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2526, !tbaa !871
  %66 = icmp eq i8 %65, 96, !dbg !2527
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.90, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.91, i64 0, i64 0), !dbg !2526
  br label %71, !dbg !2528

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2529
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), !dbg !2530
  br label %71, !dbg !2531

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2532
  ret i8* %72, !dbg !2533
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2534 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2538, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %1, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8* %0, metadata !2544, metadata !DIExpression()) #12, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %1, metadata !2549, metadata !DIExpression()) #12, !dbg !2559
  call void @llvm.dbg.value(metadata i64* null, metadata !2550, metadata !DIExpression()) #12, !dbg !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2551, metadata !DIExpression()) #12, !dbg !2561
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2562
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2562
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2552, metadata !DIExpression()) #12, !dbg !2563
  %6 = tail call i32* @__errno_location() #17, !dbg !2564
  %7 = load i32, i32* %6, align 4, !dbg !2564, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %7, metadata !2553, metadata !DIExpression()) #12, !dbg !2565
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2566
  %9 = load i32, i32* %8, align 4, !dbg !2566, !tbaa !1641
  %10 = or i32 %9, 1, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %10, metadata !2554, metadata !DIExpression()) #12, !dbg !2568
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2569
  %12 = load i32, i32* %11, align 8, !dbg !2569, !tbaa !1582
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2570
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2571
  %15 = load i8*, i8** %14, align 8, !dbg !2571, !tbaa !1667
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2572
  %17 = load i8*, i8** %16, align 8, !dbg !2572, !tbaa !1670
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2573
  %19 = add i64 %18, 1, !dbg !2574
  call void @llvm.dbg.value(metadata i64 %19, metadata !2555, metadata !DIExpression()) #12, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %19, metadata !2576, metadata !DIExpression()) #12, !dbg !2581
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %20, metadata !2556, metadata !DIExpression()) #12, !dbg !2584
  %21 = load i32, i32* %11, align 8, !dbg !2585, !tbaa !1582
  %22 = load i8*, i8** %14, align 8, !dbg !2586, !tbaa !1667
  %23 = load i8*, i8** %16, align 8, !dbg !2587, !tbaa !1670
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2588
  store i32 %7, i32* %6, align 4, !dbg !2589, !tbaa !889
  ret i8* %20, !dbg !2590
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2545 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2544, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i64 %1, metadata !2549, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64* %2, metadata !2550, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2551, metadata !DIExpression()), !dbg !2594
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2595
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2552, metadata !DIExpression()), !dbg !2596
  %7 = tail call i32* @__errno_location() #17, !dbg !2597
  %8 = load i32, i32* %7, align 4, !dbg !2597, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %8, metadata !2553, metadata !DIExpression()), !dbg !2598
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2599
  %10 = load i32, i32* %9, align 4, !dbg !2599, !tbaa !1641
  %11 = icmp ne i64* %2, null, !dbg !2600
  %12 = xor i1 %11, true, !dbg !2600
  %13 = zext i1 %12 to i32, !dbg !2600
  %14 = or i32 %10, %13, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %14, metadata !2554, metadata !DIExpression()), !dbg !2602
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2603
  %16 = load i32, i32* %15, align 8, !dbg !2603, !tbaa !1582
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2604
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2605
  %19 = load i8*, i8** %18, align 8, !dbg !2605, !tbaa !1667
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2606
  %21 = load i8*, i8** %20, align 8, !dbg !2606, !tbaa !1670
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2607
  %23 = add i64 %22, 1, !dbg !2608
  call void @llvm.dbg.value(metadata i64 %23, metadata !2555, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i64 %23, metadata !2576, metadata !DIExpression()) #12, !dbg !2610
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %24, metadata !2556, metadata !DIExpression()), !dbg !2613
  %25 = load i32, i32* %15, align 8, !dbg !2614, !tbaa !1582
  %26 = load i8*, i8** %18, align 8, !dbg !2615, !tbaa !1667
  %27 = load i8*, i8** %20, align 8, !dbg !2616, !tbaa !1670
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2617
  store i32 %8, i32* %7, align 4, !dbg !2618, !tbaa !889
  br i1 %11, label %29, label %30, !dbg !2619

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2620, !tbaa !2622
  br label %30, !dbg !2623

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2624
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2625 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2629, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2627, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 1, metadata !2628, metadata !DIExpression()), !dbg !2631
  %2 = load i32, i32* @nslots, align 4, !dbg !2632, !tbaa !889
  %3 = icmp sgt i32 %2, 1, !dbg !2635
  br i1 %3, label %4, label %12, !dbg !2636

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2628, metadata !DIExpression()), !dbg !2631
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2637
  %7 = load i8*, i8** %6, align 8, !dbg !2637, !tbaa !2638
  tail call void @free(i8* %7) #12, !dbg !2640
  %8 = add nuw nsw i64 %5, 1, !dbg !2641
  call void @llvm.dbg.value(metadata i32 undef, metadata !2628, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2631
  %9 = load i32, i32* @nslots, align 4, !dbg !2632, !tbaa !889
  %10 = sext i32 %9 to i64, !dbg !2635
  %11 = icmp slt i64 %8, %10, !dbg !2635
  br i1 %11, label %4, label %12, !dbg !2636, !llvm.loop !2642

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2644
  %14 = load i8*, i8** %13, align 8, !dbg !2644, !tbaa !2638
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2646
  br i1 %15, label %17, label %16, !dbg !2647

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2648
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2650, !tbaa !2651
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2652, !tbaa !2638
  br label %17, !dbg !2653

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2654
  br i1 %18, label %21, label %19, !dbg !2656

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2657
  tail call void @free(i8* %20) #12, !dbg !2659
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2660, !tbaa !716
  br label %21, !dbg !2661

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2662, !tbaa !889
  ret void, !dbg !2663
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2664 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2668, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8* %1, metadata !2669, metadata !DIExpression()), !dbg !2671
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2672
  ret i8* %3, !dbg !2673
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2674 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %1, metadata !2679, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %2, metadata !2680, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2681, metadata !DIExpression()), !dbg !2696
  %5 = tail call i32* @__errno_location() #17, !dbg !2697
  %6 = load i32, i32* %5, align 4, !dbg !2697, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %6, metadata !2682, metadata !DIExpression()), !dbg !2698
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2699, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2683, metadata !DIExpression()), !dbg !2700
  %8 = icmp slt i32 %0, 0, !dbg !2701
  br i1 %8, label %9, label %10, !dbg !2703

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2704
  unreachable, !dbg !2704

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2705, !tbaa !889
  %12 = icmp sgt i32 %11, %0, !dbg !2706
  br i1 %12, label %34, label %13, !dbg !2707

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2708
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2687, metadata !DIExpression()), !dbg !2709
  %15 = icmp eq i32 %0, 2147483647, !dbg !2710
  br i1 %15, label %16, label %17, !dbg !2712

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2713
  unreachable, !dbg !2713

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2714
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2714
  %20 = add nsw i32 %0, 1, !dbg !2715
  %21 = sext i32 %20 to i64, !dbg !2716
  %22 = shl nsw i64 %21, 4, !dbg !2717
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2718
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2718
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2683, metadata !DIExpression()), !dbg !2700
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2719, !tbaa !716
  br i1 %14, label %25, label %26, !dbg !2720

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2721, !tbaa.struct !2723
  br label %26, !dbg !2724

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2725, !tbaa !889
  %28 = sext i32 %27 to i64, !dbg !2726
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2726
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2727
  %31 = sub nsw i32 %20, %27, !dbg !2728
  %32 = sext i32 %31 to i64, !dbg !2729
  %33 = shl nsw i64 %32, 4, !dbg !2730
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2727
  store i32 %20, i32* @nslots, align 4, !dbg !2731, !tbaa !889
  br label %34, !dbg !2732

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2733
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2683, metadata !DIExpression()), !dbg !2700
  %36 = sext i32 %0 to i64, !dbg !2734
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2735
  %38 = load i64, i64* %37, align 8, !dbg !2735, !tbaa !2651
  call void @llvm.dbg.value(metadata i64 %38, metadata !2688, metadata !DIExpression()), !dbg !2736
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2737
  %40 = load i8*, i8** %39, align 8, !dbg !2737, !tbaa !2638
  call void @llvm.dbg.value(metadata i8* %40, metadata !2690, metadata !DIExpression()), !dbg !2738
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2739
  %42 = load i32, i32* %41, align 4, !dbg !2739, !tbaa !1641
  %43 = or i32 %42, 1, !dbg !2740
  call void @llvm.dbg.value(metadata i32 %43, metadata !2691, metadata !DIExpression()), !dbg !2741
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2742
  %45 = load i32, i32* %44, align 8, !dbg !2742, !tbaa !1582
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2743
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2744
  %48 = load i8*, i8** %47, align 8, !dbg !2744, !tbaa !1667
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2745
  %50 = load i8*, i8** %49, align 8, !dbg !2745, !tbaa !1670
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2746
  call void @llvm.dbg.value(metadata i64 %51, metadata !2692, metadata !DIExpression()), !dbg !2747
  %52 = icmp ugt i64 %38, %51, !dbg !2748
  br i1 %52, label %63, label %53, !dbg !2750

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %54, metadata !2688, metadata !DIExpression()), !dbg !2736
  store i64 %54, i64* %37, align 8, !dbg !2753, !tbaa !2651
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2754
  br i1 %55, label %57, label %56, !dbg !2756

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2757
  br label %57, !dbg !2757

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2576, metadata !DIExpression()) #12, !dbg !2758
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %58, metadata !2690, metadata !DIExpression()), !dbg !2738
  store i8* %58, i8** %39, align 8, !dbg !2761, !tbaa !2638
  %59 = load i32, i32* %44, align 8, !dbg !2762, !tbaa !1582
  %60 = load i8*, i8** %47, align 8, !dbg !2763, !tbaa !1667
  %61 = load i8*, i8** %49, align 8, !dbg !2764, !tbaa !1670
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2765
  br label %63, !dbg !2766

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2767
  call void @llvm.dbg.value(metadata i8* %64, metadata !2690, metadata !DIExpression()), !dbg !2738
  store i32 %6, i32* %5, align 4, !dbg !2768, !tbaa !889
  ret i8* %64, !dbg !2769
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2774, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8* %1, metadata !2775, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i64 %2, metadata !2776, metadata !DIExpression()), !dbg !2779
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2780
  ret i8* %4, !dbg !2781
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2782 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2786, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32 0, metadata !2668, metadata !DIExpression()) #12, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()) #12, !dbg !2790
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2791
  ret i8* %2, !dbg !2792
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2793 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2797, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %1, metadata !2798, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i32 0, metadata !2774, metadata !DIExpression()) #12, !dbg !2801
  call void @llvm.dbg.value(metadata i8* %0, metadata !2775, metadata !DIExpression()) #12, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %1, metadata !2776, metadata !DIExpression()) #12, !dbg !2804
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2805
  ret i8* %3, !dbg !2806
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2807 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2811, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %1, metadata !2812, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8* %2, metadata !2813, metadata !DIExpression()), !dbg !2817
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2818
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2814, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  call void @llvm.dbg.value(metadata i32 %1, metadata !2820, metadata !DIExpression()) #12, !dbg !2826
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2828, !alias.scope !2829
  %6 = icmp eq i32 %1, 10, !dbg !2832
  br i1 %6, label %7, label %8, !dbg !2834

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2835, !noalias !2829
  unreachable, !dbg !2835

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2836
  store i32 %1, i32* %9, align 8, !dbg !2837, !tbaa !1582, !alias.scope !2829
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2814, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2828
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2839
  ret i8* %10, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2841 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2845, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 %1, metadata !2846, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %2, metadata !2847, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %3, metadata !2848, metadata !DIExpression()), !dbg !2853
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2854
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2854
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2849, metadata !DIExpression(DW_OP_deref)), !dbg !2855
  call void @llvm.dbg.value(metadata i32 %1, metadata !2820, metadata !DIExpression()) #12, !dbg !2856
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !2858, !alias.scope !2859
  %7 = icmp eq i32 %1, 10, !dbg !2862
  br i1 %7, label %8, label %9, !dbg !2863

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2864, !noalias !2859
  unreachable, !dbg !2864

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2865
  store i32 %1, i32* %10, align 8, !dbg !2866, !tbaa !1582, !alias.scope !2859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2849, metadata !DIExpression(DW_OP_deref)), !dbg !2855
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2867
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2868
  ret i8* %11, !dbg !2869
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2870 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2874, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %1, metadata !2875, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i32 0, metadata !2811, metadata !DIExpression()) #12, !dbg !2878
  call void @llvm.dbg.value(metadata i32 %0, metadata !2812, metadata !DIExpression()) #12, !dbg !2880
  call void @llvm.dbg.value(metadata i8* %1, metadata !2813, metadata !DIExpression()) #12, !dbg !2881
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2882
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2814, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2883
  call void @llvm.dbg.value(metadata i32 %0, metadata !2820, metadata !DIExpression()) #12, !dbg !2884
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !2886, !alias.scope !2887
  %5 = icmp eq i32 %0, 10, !dbg !2890
  br i1 %5, label %6, label %7, !dbg !2891

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2892, !noalias !2887
  unreachable, !dbg !2892

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2893
  store i32 %0, i32* %8, align 8, !dbg !2894, !tbaa !1582, !alias.scope !2887
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2814, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2883
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2825, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2886
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2895
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2896
  ret i8* %9, !dbg !2897
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2898 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2902, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* %1, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %2, metadata !2904, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 0, metadata !2845, metadata !DIExpression()) #12, !dbg !2908
  call void @llvm.dbg.value(metadata i32 %0, metadata !2846, metadata !DIExpression()) #12, !dbg !2910
  call void @llvm.dbg.value(metadata i8* %1, metadata !2847, metadata !DIExpression()) #12, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %2, metadata !2848, metadata !DIExpression()) #12, !dbg !2912
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2913
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2913
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2849, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2914
  call void @llvm.dbg.value(metadata i32 %0, metadata !2820, metadata !DIExpression()) #12, !dbg !2915
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2917, !alias.scope !2918
  %6 = icmp eq i32 %0, 10, !dbg !2921
  br i1 %6, label %7, label %8, !dbg !2922

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2923, !noalias !2918
  unreachable, !dbg !2923

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2924
  store i32 %0, i32* %9, align 8, !dbg !2925, !tbaa !1582, !alias.scope !2918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2849, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2914
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2825, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2917
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2926
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2927
  ret i8* %10, !dbg !2928
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2929 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2933, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %1, metadata !2934, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 %2, metadata !2935, metadata !DIExpression()), !dbg !2939
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2940
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2941, !tbaa.struct !2942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2936, metadata !DIExpression(DW_OP_deref)), !dbg !2943
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1601, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8 %2, metadata !1602, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 1, metadata !1603, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %2, metadata !1604, metadata !DIExpression()), !dbg !2948
  %6 = lshr i8 %2, 5, !dbg !2949
  %7 = zext i8 %6 to i64, !dbg !2949
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2950
  call void @llvm.dbg.value(metadata i32* %8, metadata !1605, metadata !DIExpression()), !dbg !2951
  %9 = and i8 %2, 31, !dbg !2952
  %10 = zext i8 %9 to i32, !dbg !2952
  call void @llvm.dbg.value(metadata i32 %10, metadata !1607, metadata !DIExpression()), !dbg !2953
  %11 = load i32, i32* %8, align 4, !dbg !2954, !tbaa !889
  %12 = lshr i32 %11, %10, !dbg !2955
  %13 = and i32 %12, 1, !dbg !2956
  call void @llvm.dbg.value(metadata i32 %13, metadata !1608, metadata !DIExpression()), !dbg !2957
  %14 = xor i32 %13, 1, !dbg !2958
  %15 = shl i32 %14, %10, !dbg !2959
  %16 = xor i32 %15, %11, !dbg !2960
  store i32 %16, i32* %8, align 4, !dbg !2960, !tbaa !889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2936, metadata !DIExpression(DW_OP_deref)), !dbg !2943
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2961
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2962
  ret i8* %17, !dbg !2963
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2964 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2968, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 %1, metadata !2969, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8* %0, metadata !2933, metadata !DIExpression()) #12, !dbg !2972
  call void @llvm.dbg.value(metadata i64 -1, metadata !2934, metadata !DIExpression()) #12, !dbg !2974
  call void @llvm.dbg.value(metadata i8 %1, metadata !2935, metadata !DIExpression()) #12, !dbg !2975
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2976
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2976
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2977, !tbaa.struct !2942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2936, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2978
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1601, metadata !DIExpression()) #12, !dbg !2979
  call void @llvm.dbg.value(metadata i8 %1, metadata !1602, metadata !DIExpression()) #12, !dbg !2981
  call void @llvm.dbg.value(metadata i32 1, metadata !1603, metadata !DIExpression()) #12, !dbg !2982
  call void @llvm.dbg.value(metadata i8 %1, metadata !1604, metadata !DIExpression()) #12, !dbg !2983
  %5 = lshr i8 %1, 5, !dbg !2984
  %6 = zext i8 %5 to i64, !dbg !2984
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2985
  call void @llvm.dbg.value(metadata i32* %7, metadata !1605, metadata !DIExpression()) #12, !dbg !2986
  %8 = and i8 %1, 31, !dbg !2987
  %9 = zext i8 %8 to i32, !dbg !2987
  call void @llvm.dbg.value(metadata i32 %9, metadata !1607, metadata !DIExpression()) #12, !dbg !2988
  %10 = load i32, i32* %7, align 4, !dbg !2989, !tbaa !889
  %11 = lshr i32 %10, %9, !dbg !2990
  %12 = and i32 %11, 1, !dbg !2991
  call void @llvm.dbg.value(metadata i32 %12, metadata !1608, metadata !DIExpression()) #12, !dbg !2992
  %13 = xor i32 %12, 1, !dbg !2993
  %14 = shl i32 %13, %9, !dbg !2994
  %15 = xor i32 %14, %10, !dbg !2995
  store i32 %15, i32* %7, align 4, !dbg !2995, !tbaa !889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2936, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2978
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2996
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2997
  ret i8* %16, !dbg !2998
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2999 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3001, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8* %0, metadata !2968, metadata !DIExpression()) #12, !dbg !3003
  call void @llvm.dbg.value(metadata i8 58, metadata !2969, metadata !DIExpression()) #12, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %0, metadata !2933, metadata !DIExpression()) #12, !dbg !3006
  call void @llvm.dbg.value(metadata i64 -1, metadata !2934, metadata !DIExpression()) #12, !dbg !3008
  call void @llvm.dbg.value(metadata i8 58, metadata !2935, metadata !DIExpression()) #12, !dbg !3009
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3010
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3010
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3011, !tbaa.struct !2942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2936, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3012
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1601, metadata !DIExpression()) #12, !dbg !3013
  call void @llvm.dbg.value(metadata i8 58, metadata !1602, metadata !DIExpression()) #12, !dbg !3015
  call void @llvm.dbg.value(metadata i32 1, metadata !1603, metadata !DIExpression()) #12, !dbg !3016
  call void @llvm.dbg.value(metadata i8 58, metadata !1604, metadata !DIExpression()) #12, !dbg !3017
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3018
  call void @llvm.dbg.value(metadata i32* %4, metadata !1605, metadata !DIExpression()) #12, !dbg !3019
  call void @llvm.dbg.value(metadata i32 26, metadata !1607, metadata !DIExpression()) #12, !dbg !3020
  %5 = load i32, i32* %4, align 4, !dbg !3021, !tbaa !889
  %6 = or i32 %5, 67108864, !dbg !3022
  store i32 %6, i32* %4, align 4, !dbg !3022, !tbaa !889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2936, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3012
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3023
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3024
  ret i8* %7, !dbg !3025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3026 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %1, metadata !3029, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8* %0, metadata !2933, metadata !DIExpression()) #12, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %1, metadata !2934, metadata !DIExpression()) #12, !dbg !3034
  call void @llvm.dbg.value(metadata i8 58, metadata !2935, metadata !DIExpression()) #12, !dbg !3035
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3036
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3036
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3037, !tbaa.struct !2942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2936, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1601, metadata !DIExpression()) #12, !dbg !3039
  call void @llvm.dbg.value(metadata i8 58, metadata !1602, metadata !DIExpression()) #12, !dbg !3041
  call void @llvm.dbg.value(metadata i32 1, metadata !1603, metadata !DIExpression()) #12, !dbg !3042
  call void @llvm.dbg.value(metadata i8 58, metadata !1604, metadata !DIExpression()) #12, !dbg !3043
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3044
  call void @llvm.dbg.value(metadata i32* %5, metadata !1605, metadata !DIExpression()) #12, !dbg !3045
  call void @llvm.dbg.value(metadata i32 26, metadata !1607, metadata !DIExpression()) #12, !dbg !3046
  %6 = load i32, i32* %5, align 4, !dbg !3047, !tbaa !889
  %7 = or i32 %6, 67108864, !dbg !3048
  store i32 %7, i32* %5, align 4, !dbg !3048, !tbaa !889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2936, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3038
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3049
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3050
  ret i8* %8, !dbg !3051
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3052 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2825, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3058
  call void @llvm.dbg.value(metadata i32 %0, metadata !3054, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i32 %1, metadata !3055, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8* %2, metadata !3056, metadata !DIExpression()), !dbg !3062
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3063
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3063
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3064
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3064
  call void @llvm.dbg.value(metadata i32 %1, metadata !2820, metadata !DIExpression()) #12, !dbg !3065
  call void @llvm.dbg.value(metadata i32 0, metadata !2825, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3058
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3058, !alias.scope !3066
  %8 = icmp eq i32 %1, 10, !dbg !3069
  br i1 %8, label %9, label %10, !dbg !3070

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3071, !noalias !3066
  unreachable, !dbg !3071

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2825, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3058
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3064
  store i32 %1, i32* %11, align 8, !dbg !3064
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3064
  %13 = bitcast i32* %12 to i8*, !dbg !3064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3064
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3064
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3057, metadata !DIExpression(DW_OP_deref)), !dbg !3072
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1601, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 58, metadata !1602, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 1, metadata !1603, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i8 58, metadata !1604, metadata !DIExpression()), !dbg !3077
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3078
  call void @llvm.dbg.value(metadata i32* %14, metadata !1605, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i32 26, metadata !1607, metadata !DIExpression()), !dbg !3080
  %15 = load i32, i32* %14, align 4, !dbg !3081, !tbaa !889
  %16 = or i32 %15, 67108864, !dbg !3082
  store i32 %16, i32* %14, align 4, !dbg !3082, !tbaa !889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3057, metadata !DIExpression(DW_OP_deref)), !dbg !3072
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3083
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3084
  ret i8* %17, !dbg !3085
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3086 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3090, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8* %1, metadata !3091, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8* %2, metadata !3092, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8* %3, metadata !3093, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 %0, metadata !3098, metadata !DIExpression()) #12, !dbg !3108
  call void @llvm.dbg.value(metadata i8* %1, metadata !3103, metadata !DIExpression()) #12, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %2, metadata !3104, metadata !DIExpression()) #12, !dbg !3111
  call void @llvm.dbg.value(metadata i8* %3, metadata !3105, metadata !DIExpression()) #12, !dbg !3112
  call void @llvm.dbg.value(metadata i64 -1, metadata !3106, metadata !DIExpression()) #12, !dbg !3113
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3114
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3115, !tbaa.struct !2942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3107, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3116
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1649, metadata !DIExpression()) #12, !dbg !3117
  call void @llvm.dbg.value(metadata i8* %1, metadata !1650, metadata !DIExpression()) #12, !dbg !3119
  call void @llvm.dbg.value(metadata i8* %2, metadata !1651, metadata !DIExpression()) #12, !dbg !3120
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1649, metadata !DIExpression()) #12, !dbg !3117
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3121
  store i32 10, i32* %7, align 8, !dbg !3122, !tbaa !1582
  %8 = icmp ne i8* %1, null, !dbg !3123
  %9 = icmp ne i8* %2, null, !dbg !3124
  %10 = and i1 %8, %9, !dbg !3125
  br i1 %10, label %12, label %11, !dbg !3125

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3126
  unreachable, !dbg !3126

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3127
  store i8* %1, i8** %13, align 8, !dbg !3128, !tbaa !1667
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3129
  store i8* %2, i8** %14, align 8, !dbg !3130, !tbaa !1670
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3107, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3116
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3131
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3132
  ret i8* %15, !dbg !3133
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3099 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3098, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i8* %1, metadata !3103, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i8* %2, metadata !3104, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8* %3, metadata !3105, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %4, metadata !3106, metadata !DIExpression()), !dbg !3138
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3139
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3139
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3140, !tbaa.struct !2942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3107, metadata !DIExpression(DW_OP_deref)), !dbg !3141
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1649, metadata !DIExpression()) #12, !dbg !3142
  call void @llvm.dbg.value(metadata i8* %1, metadata !1650, metadata !DIExpression()) #12, !dbg !3144
  call void @llvm.dbg.value(metadata i8* %2, metadata !1651, metadata !DIExpression()) #12, !dbg !3145
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1649, metadata !DIExpression()) #12, !dbg !3142
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3146
  store i32 10, i32* %8, align 8, !dbg !3147, !tbaa !1582
  %9 = icmp ne i8* %1, null, !dbg !3148
  %10 = icmp ne i8* %2, null, !dbg !3149
  %11 = and i1 %9, %10, !dbg !3150
  br i1 %11, label %13, label %12, !dbg !3150

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3151
  unreachable, !dbg !3151

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3152
  store i8* %1, i8** %14, align 8, !dbg !3153, !tbaa !1667
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3154
  store i8* %2, i8** %15, align 8, !dbg !3155, !tbaa !1670
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3107, metadata !DIExpression(DW_OP_deref)), !dbg !3141
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3156
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3157
  ret i8* %16, !dbg !3158
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3159 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3163, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i8* %1, metadata !3164, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i8* %2, metadata !3165, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i32 0, metadata !3090, metadata !DIExpression()) #12, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %0, metadata !3091, metadata !DIExpression()) #12, !dbg !3171
  call void @llvm.dbg.value(metadata i8* %1, metadata !3092, metadata !DIExpression()) #12, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %2, metadata !3093, metadata !DIExpression()) #12, !dbg !3173
  call void @llvm.dbg.value(metadata i32 0, metadata !3098, metadata !DIExpression()) #12, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %0, metadata !3103, metadata !DIExpression()) #12, !dbg !3176
  call void @llvm.dbg.value(metadata i8* %1, metadata !3104, metadata !DIExpression()) #12, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %2, metadata !3105, metadata !DIExpression()) #12, !dbg !3178
  call void @llvm.dbg.value(metadata i64 -1, metadata !3106, metadata !DIExpression()) #12, !dbg !3179
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3180
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3181, !tbaa.struct !2942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3107, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3182
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1649, metadata !DIExpression()) #12, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %0, metadata !1650, metadata !DIExpression()) #12, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %1, metadata !1651, metadata !DIExpression()) #12, !dbg !3186
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1649, metadata !DIExpression()) #12, !dbg !3183
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3187
  store i32 10, i32* %6, align 8, !dbg !3188, !tbaa !1582
  %7 = icmp ne i8* %0, null, !dbg !3189
  %8 = icmp ne i8* %1, null, !dbg !3190
  %9 = and i1 %7, %8, !dbg !3191
  br i1 %9, label %11, label %10, !dbg !3191

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3192
  unreachable, !dbg !3192

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3193
  store i8* %0, i8** %12, align 8, !dbg !3194, !tbaa !1667
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3195
  store i8* %1, i8** %13, align 8, !dbg !3196, !tbaa !1670
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3107, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3182
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3197
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3198
  ret i8* %14, !dbg !3199
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3200 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3204, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i8* %1, metadata !3205, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i8* %2, metadata !3206, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i64 %3, metadata !3207, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 0, metadata !3098, metadata !DIExpression()) #12, !dbg !3212
  call void @llvm.dbg.value(metadata i8* %0, metadata !3103, metadata !DIExpression()) #12, !dbg !3214
  call void @llvm.dbg.value(metadata i8* %1, metadata !3104, metadata !DIExpression()) #12, !dbg !3215
  call void @llvm.dbg.value(metadata i8* %2, metadata !3105, metadata !DIExpression()) #12, !dbg !3216
  call void @llvm.dbg.value(metadata i64 %3, metadata !3106, metadata !DIExpression()) #12, !dbg !3217
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3218
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3218
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3219, !tbaa.struct !2942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3107, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3220
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1649, metadata !DIExpression()) #12, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %0, metadata !1650, metadata !DIExpression()) #12, !dbg !3223
  call void @llvm.dbg.value(metadata i8* %1, metadata !1651, metadata !DIExpression()) #12, !dbg !3224
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1649, metadata !DIExpression()) #12, !dbg !3221
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3225
  store i32 10, i32* %7, align 8, !dbg !3226, !tbaa !1582
  %8 = icmp ne i8* %0, null, !dbg !3227
  %9 = icmp ne i8* %1, null, !dbg !3228
  %10 = and i1 %8, %9, !dbg !3229
  br i1 %10, label %12, label %11, !dbg !3229

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3230
  unreachable, !dbg !3230

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3231
  store i8* %0, i8** %13, align 8, !dbg !3232, !tbaa !1667
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3233
  store i8* %1, i8** %14, align 8, !dbg !3234, !tbaa !1670
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3107, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3220
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3235
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3236
  ret i8* %15, !dbg !3237
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3238 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3242, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8* %1, metadata !3243, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %2, metadata !3244, metadata !DIExpression()), !dbg !3247
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3248
  ret i8* %4, !dbg !3249
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3250 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3254, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i32 0, metadata !3242, metadata !DIExpression()) #12, !dbg !3258
  call void @llvm.dbg.value(metadata i8* %0, metadata !3243, metadata !DIExpression()) #12, !dbg !3260
  call void @llvm.dbg.value(metadata i64 %1, metadata !3244, metadata !DIExpression()) #12, !dbg !3261
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3262
  ret i8* %3, !dbg !3263
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3264 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3268, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i8* %1, metadata !3269, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 %0, metadata !3242, metadata !DIExpression()) #12, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %1, metadata !3243, metadata !DIExpression()) #12, !dbg !3274
  call void @llvm.dbg.value(metadata i64 -1, metadata !3244, metadata !DIExpression()) #12, !dbg !3275
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3276
  ret i8* %3, !dbg !3277
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3278 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3282, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i32 0, metadata !3268, metadata !DIExpression()) #12, !dbg !3284
  call void @llvm.dbg.value(metadata i8* %0, metadata !3269, metadata !DIExpression()) #12, !dbg !3286
  call void @llvm.dbg.value(metadata i32 0, metadata !3242, metadata !DIExpression()) #12, !dbg !3287
  call void @llvm.dbg.value(metadata i8* %0, metadata !3243, metadata !DIExpression()) #12, !dbg !3289
  call void @llvm.dbg.value(metadata i64 -1, metadata !3244, metadata !DIExpression()) #12, !dbg !3290
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3291
  ret i8* %2, !dbg !3292
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32) local_unnamed_addr #7 !dbg !3293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3298, metadata !DIExpression()), !dbg !3299
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #12, !dbg !3300
  ret i32 %2, !dbg !3301
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3302 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3340, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8* %1, metadata !3341, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i8* %2, metadata !3342, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %3, metadata !3343, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8** %4, metadata !3344, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 %5, metadata !3345, metadata !DIExpression()), !dbg !3351
  %7 = icmp eq i8* %1, null, !dbg !3352
  br i1 %7, label %10, label %8, !dbg !3354

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3355
  br label %12, !dbg !3355

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.105, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3356
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.106, i64 0, i64 0), i32 5) #12, !dbg !3357
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !3357
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.107, i64 0, i64 0), i32 5) #12, !dbg !3358
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3358
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
  ], !dbg !3359

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3360
  unreachable, !dbg !3360

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.108, i64 0, i64 0), i32 5) #12, !dbg !3362
  %20 = load i8*, i8** %4, align 8, !dbg !3362, !tbaa !716
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3362
  br label %146, !dbg !3363

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.109, i64 0, i64 0), i32 5) #12, !dbg !3364
  %24 = load i8*, i8** %4, align 8, !dbg !3364, !tbaa !716
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3364
  %26 = load i8*, i8** %25, align 8, !dbg !3364, !tbaa !716
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3364
  br label %146, !dbg !3365

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.110, i64 0, i64 0), i32 5) #12, !dbg !3366
  %30 = load i8*, i8** %4, align 8, !dbg !3366, !tbaa !716
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3366
  %32 = load i8*, i8** %31, align 8, !dbg !3366, !tbaa !716
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3366
  %34 = load i8*, i8** %33, align 8, !dbg !3366, !tbaa !716
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3366
  br label %146, !dbg !3367

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.111, i64 0, i64 0), i32 5) #12, !dbg !3368
  %38 = load i8*, i8** %4, align 8, !dbg !3368, !tbaa !716
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3368
  %40 = load i8*, i8** %39, align 8, !dbg !3368, !tbaa !716
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3368
  %42 = load i8*, i8** %41, align 8, !dbg !3368, !tbaa !716
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3368
  %44 = load i8*, i8** %43, align 8, !dbg !3368, !tbaa !716
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3368
  br label %146, !dbg !3369

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.112, i64 0, i64 0), i32 5) #12, !dbg !3370
  %48 = load i8*, i8** %4, align 8, !dbg !3370, !tbaa !716
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3370
  %50 = load i8*, i8** %49, align 8, !dbg !3370, !tbaa !716
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3370
  %52 = load i8*, i8** %51, align 8, !dbg !3370, !tbaa !716
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3370
  %54 = load i8*, i8** %53, align 8, !dbg !3370, !tbaa !716
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3370
  %56 = load i8*, i8** %55, align 8, !dbg !3370, !tbaa !716
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3370
  br label %146, !dbg !3371

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.113, i64 0, i64 0), i32 5) #12, !dbg !3372
  %60 = load i8*, i8** %4, align 8, !dbg !3372, !tbaa !716
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3372
  %62 = load i8*, i8** %61, align 8, !dbg !3372, !tbaa !716
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3372
  %64 = load i8*, i8** %63, align 8, !dbg !3372, !tbaa !716
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3372
  %66 = load i8*, i8** %65, align 8, !dbg !3372, !tbaa !716
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3372
  %68 = load i8*, i8** %67, align 8, !dbg !3372, !tbaa !716
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3372
  %70 = load i8*, i8** %69, align 8, !dbg !3372, !tbaa !716
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3372
  br label %146, !dbg !3373

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.114, i64 0, i64 0), i32 5) #12, !dbg !3374
  %74 = load i8*, i8** %4, align 8, !dbg !3374, !tbaa !716
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3374
  %76 = load i8*, i8** %75, align 8, !dbg !3374, !tbaa !716
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3374
  %78 = load i8*, i8** %77, align 8, !dbg !3374, !tbaa !716
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3374
  %80 = load i8*, i8** %79, align 8, !dbg !3374, !tbaa !716
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3374
  %82 = load i8*, i8** %81, align 8, !dbg !3374, !tbaa !716
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3374
  %84 = load i8*, i8** %83, align 8, !dbg !3374, !tbaa !716
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3374
  %86 = load i8*, i8** %85, align 8, !dbg !3374, !tbaa !716
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3374
  br label %146, !dbg !3375

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.115, i64 0, i64 0), i32 5) #12, !dbg !3376
  %90 = load i8*, i8** %4, align 8, !dbg !3376, !tbaa !716
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3376
  %92 = load i8*, i8** %91, align 8, !dbg !3376, !tbaa !716
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3376
  %94 = load i8*, i8** %93, align 8, !dbg !3376, !tbaa !716
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3376
  %96 = load i8*, i8** %95, align 8, !dbg !3376, !tbaa !716
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3376
  %98 = load i8*, i8** %97, align 8, !dbg !3376, !tbaa !716
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3376
  %100 = load i8*, i8** %99, align 8, !dbg !3376, !tbaa !716
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3376
  %102 = load i8*, i8** %101, align 8, !dbg !3376, !tbaa !716
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3376
  %104 = load i8*, i8** %103, align 8, !dbg !3376, !tbaa !716
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3376
  br label %146, !dbg !3377

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.116, i64 0, i64 0), i32 5) #12, !dbg !3378
  %108 = load i8*, i8** %4, align 8, !dbg !3378, !tbaa !716
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3378
  %110 = load i8*, i8** %109, align 8, !dbg !3378, !tbaa !716
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3378
  %112 = load i8*, i8** %111, align 8, !dbg !3378, !tbaa !716
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3378
  %114 = load i8*, i8** %113, align 8, !dbg !3378, !tbaa !716
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3378
  %116 = load i8*, i8** %115, align 8, !dbg !3378, !tbaa !716
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3378
  %118 = load i8*, i8** %117, align 8, !dbg !3378, !tbaa !716
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3378
  %120 = load i8*, i8** %119, align 8, !dbg !3378, !tbaa !716
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3378
  %122 = load i8*, i8** %121, align 8, !dbg !3378, !tbaa !716
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3378
  %124 = load i8*, i8** %123, align 8, !dbg !3378, !tbaa !716
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3378
  br label %146, !dbg !3379

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.117, i64 0, i64 0), i32 5) #12, !dbg !3380
  %128 = load i8*, i8** %4, align 8, !dbg !3380, !tbaa !716
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3380
  %130 = load i8*, i8** %129, align 8, !dbg !3380, !tbaa !716
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3380
  %132 = load i8*, i8** %131, align 8, !dbg !3380, !tbaa !716
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3380
  %134 = load i8*, i8** %133, align 8, !dbg !3380, !tbaa !716
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3380
  %136 = load i8*, i8** %135, align 8, !dbg !3380, !tbaa !716
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3380
  %138 = load i8*, i8** %137, align 8, !dbg !3380, !tbaa !716
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3380
  %140 = load i8*, i8** %139, align 8, !dbg !3380, !tbaa !716
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3380
  %142 = load i8*, i8** %141, align 8, !dbg !3380, !tbaa !716
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3380
  %144 = load i8*, i8** %143, align 8, !dbg !3380, !tbaa !716
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3380
  br label %146, !dbg !3381

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3382
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3383 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3387, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %1, metadata !3388, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i8* %2, metadata !3389, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i8* %3, metadata !3390, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i8** %4, metadata !3391, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i64 0, metadata !3392, metadata !DIExpression()), !dbg !3398
  br label %6, !dbg !3399

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3401
  call void @llvm.dbg.value(metadata i64 %7, metadata !3392, metadata !DIExpression()), !dbg !3398
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3403
  %9 = load i8*, i8** %8, align 8, !dbg !3403, !tbaa !716
  %10 = icmp eq i8* %9, null, !dbg !3404
  %11 = add i64 %7, 1, !dbg !3405
  call void @llvm.dbg.value(metadata i64 %11, metadata !3392, metadata !DIExpression()), !dbg !3398
  br i1 %10, label %12, label %6, !dbg !3404, !llvm.loop !3406

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3392, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %7, metadata !3392, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %7, metadata !3392, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %7, metadata !3392, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %7, metadata !3392, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %7, metadata !3392, metadata !DIExpression()), !dbg !3398
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3408
  ret void, !dbg !3409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3410 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3421, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i8* %1, metadata !3422, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i8* %2, metadata !3423, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i8* %3, metadata !3424, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3425, metadata !DIExpression()), !dbg !3433
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3434
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3434
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3427, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 0, metadata !3426, metadata !DIExpression()), !dbg !3436
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3426, metadata !DIExpression()), !dbg !3436
  %11 = load i32, i32* %8, align 8, !dbg !3437
  %12 = icmp ult i32 %11, 41, !dbg !3437
  br i1 %12, label %13, label %18, !dbg !3437

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3437
  %15 = sext i32 %11 to i64, !dbg !3437
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3437
  %17 = add i32 %11, 8, !dbg !3437
  store i32 %17, i32* %8, align 8, !dbg !3437
  br label %21, !dbg !3437

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3437
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3437
  store i8* %20, i8** %10, align 8, !dbg !3437
  br label %21, !dbg !3437

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3437
  %25 = load i8*, i8** %24, align 8, !dbg !3437
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3440
  store i8* %25, i8** %26, align 16, !dbg !3441, !tbaa !716
  %27 = icmp eq i8* %25, null, !dbg !3442
  br i1 %27, label %30, label %28, !dbg !3443

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 1, metadata !3426, metadata !DIExpression()), !dbg !3436
  %29 = icmp ult i32 %22, 41, !dbg !3437
  br i1 %29, label %35, label %32, !dbg !3437

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3444
  call void @llvm.dbg.value(metadata i64 %31, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %31, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3445
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3446
  ret void, !dbg !3446

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3437
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3437
  store i8* %34, i8** %10, align 8, !dbg !3437
  br label %40, !dbg !3437

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3437
  %37 = sext i32 %22 to i64, !dbg !3437
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3437
  %39 = add i32 %22, 8, !dbg !3437
  store i32 %39, i32* %8, align 8, !dbg !3437
  br label %40, !dbg !3437

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3437
  %44 = load i8*, i8** %43, align 8, !dbg !3437
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3440
  store i8* %44, i8** %45, align 8, !dbg !3441, !tbaa !716
  %46 = icmp eq i8* %44, null, !dbg !3442
  br i1 %46, label %30, label %47, !dbg !3443

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 2, metadata !3426, metadata !DIExpression()), !dbg !3436
  %48 = icmp ult i32 %41, 41, !dbg !3437
  br i1 %48, label %52, label %49, !dbg !3437

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3437
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3437
  store i8* %51, i8** %10, align 8, !dbg !3437
  br label %57, !dbg !3437

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3437
  %54 = sext i32 %41 to i64, !dbg !3437
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3437
  %56 = add i32 %41, 8, !dbg !3437
  store i32 %56, i32* %8, align 8, !dbg !3437
  br label %57, !dbg !3437

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3437
  %61 = load i8*, i8** %60, align 8, !dbg !3437
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3440
  store i8* %61, i8** %62, align 16, !dbg !3441, !tbaa !716
  %63 = icmp eq i8* %61, null, !dbg !3442
  br i1 %63, label %30, label %64, !dbg !3443

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 3, metadata !3426, metadata !DIExpression()), !dbg !3436
  %65 = icmp ult i32 %58, 41, !dbg !3437
  br i1 %65, label %69, label %66, !dbg !3437

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3437
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3437
  store i8* %68, i8** %10, align 8, !dbg !3437
  br label %74, !dbg !3437

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3437
  %71 = sext i32 %58 to i64, !dbg !3437
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3437
  %73 = add i32 %58, 8, !dbg !3437
  store i32 %73, i32* %8, align 8, !dbg !3437
  br label %74, !dbg !3437

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3437
  %78 = load i8*, i8** %77, align 8, !dbg !3437
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3440
  store i8* %78, i8** %79, align 8, !dbg !3441, !tbaa !716
  %80 = icmp eq i8* %78, null, !dbg !3442
  br i1 %80, label %30, label %81, !dbg !3443

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 4, metadata !3426, metadata !DIExpression()), !dbg !3436
  %82 = icmp ult i32 %75, 41, !dbg !3437
  br i1 %82, label %86, label %83, !dbg !3437

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3437
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3437
  store i8* %85, i8** %10, align 8, !dbg !3437
  br label %91, !dbg !3437

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3437
  %88 = sext i32 %75 to i64, !dbg !3437
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3437
  %90 = add i32 %75, 8, !dbg !3437
  store i32 %90, i32* %8, align 8, !dbg !3437
  br label %91, !dbg !3437

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3437
  %95 = load i8*, i8** %94, align 8, !dbg !3437
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3440
  store i8* %95, i8** %96, align 16, !dbg !3441, !tbaa !716
  %97 = icmp eq i8* %95, null, !dbg !3442
  br i1 %97, label %30, label %98, !dbg !3443

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 5, metadata !3426, metadata !DIExpression()), !dbg !3436
  %99 = icmp ult i32 %92, 41, !dbg !3437
  br i1 %99, label %103, label %100, !dbg !3437

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3437
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3437
  store i8* %102, i8** %10, align 8, !dbg !3437
  br label %108, !dbg !3437

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3437
  %105 = sext i32 %92 to i64, !dbg !3437
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3437
  %107 = add i32 %92, 8, !dbg !3437
  store i32 %107, i32* %8, align 8, !dbg !3437
  br label %108, !dbg !3437

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3437
  %111 = load i8*, i8** %110, align 8, !dbg !3437
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3440
  store i8* %111, i8** %112, align 8, !dbg !3441, !tbaa !716
  %113 = icmp eq i8* %111, null, !dbg !3442
  br i1 %113, label %30, label %114, !dbg !3443

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 6, metadata !3426, metadata !DIExpression()), !dbg !3436
  %115 = load i8*, i8** %10, align 8, !dbg !3437
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3437
  store i8* %116, i8** %10, align 8, !dbg !3437
  %117 = bitcast i8* %115 to i8**, !dbg !3437
  %118 = load i8*, i8** %117, align 8, !dbg !3437
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3440
  store i8* %118, i8** %119, align 16, !dbg !3441, !tbaa !716
  %120 = icmp eq i8* %118, null, !dbg !3442
  br i1 %120, label %30, label %121, !dbg !3443

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 7, metadata !3426, metadata !DIExpression()), !dbg !3436
  %122 = load i8*, i8** %10, align 8, !dbg !3437
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3437
  store i8* %123, i8** %10, align 8, !dbg !3437
  %124 = bitcast i8* %122 to i8**, !dbg !3437
  %125 = load i8*, i8** %124, align 8, !dbg !3437
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3440
  store i8* %125, i8** %126, align 8, !dbg !3441, !tbaa !716
  %127 = icmp eq i8* %125, null, !dbg !3442
  br i1 %127, label %30, label %128, !dbg !3443

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 8, metadata !3426, metadata !DIExpression()), !dbg !3436
  %129 = load i8*, i8** %10, align 8, !dbg !3437
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3437
  store i8* %130, i8** %10, align 8, !dbg !3437
  %131 = bitcast i8* %129 to i8**, !dbg !3437
  %132 = load i8*, i8** %131, align 8, !dbg !3437
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3440
  store i8* %132, i8** %133, align 16, !dbg !3441, !tbaa !716
  %134 = icmp eq i8* %132, null, !dbg !3442
  br i1 %134, label %30, label %135, !dbg !3443

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 9, metadata !3426, metadata !DIExpression()), !dbg !3436
  %136 = load i8*, i8** %10, align 8, !dbg !3437
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3437
  store i8* %137, i8** %10, align 8, !dbg !3437
  %138 = bitcast i8* %136 to i8**, !dbg !3437
  %139 = load i8*, i8** %138, align 8, !dbg !3437
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3440
  store i8* %139, i8** %140, align 8, !dbg !3441, !tbaa !716
  %141 = icmp eq i8* %139, null, !dbg !3442
  %142 = select i1 %141, i64 9, i64 10, !dbg !3443
  br label %30, !dbg !3443
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3447 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3451, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i8* %1, metadata !3452, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8* %2, metadata !3453, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8* %3, metadata !3454, metadata !DIExpression()), !dbg !3463
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3464
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3464
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3455, metadata !DIExpression()), !dbg !3465
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3466
  call void @llvm.va_start(i8* nonnull %6), !dbg !3466
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3467
  call void @llvm.va_end(i8* nonnull %6), !dbg !3468
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3469
  ret void, !dbg !3469
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3470 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.120, i64 0, i64 0), i32 5) #12, !dbg !3471
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.121, i64 0, i64 0)) #12, !dbg !3471
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.122, i64 0, i64 0), i32 5) #12, !dbg !3472
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.123, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.124, i64 0, i64 0)) #12, !dbg !3472
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.125, i64 0, i64 0), i32 5) #12, !dbg !3473
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3473, !tbaa !716
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3473
  ret void, !dbg !3474
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3475 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3477, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %1, metadata !3478, metadata !DIExpression()), !dbg !3480
  %3 = udiv i64 9223372036854775807, %1, !dbg !3481
  %4 = icmp ult i64 %3, %0, !dbg !3481
  br i1 %4, label %5, label %6, !dbg !3483

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3484
  unreachable, !dbg !3484

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3485
  call void @llvm.dbg.value(metadata i64 %7, metadata !3486, metadata !DIExpression()) #12, !dbg !3493
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3495
  call void @llvm.dbg.value(metadata i8* %8, metadata !3492, metadata !DIExpression()) #12, !dbg !3496
  %9 = icmp eq i8* %8, null, !dbg !3497
  %10 = icmp ne i64 %7, 0, !dbg !3499
  %11 = and i1 %10, %9, !dbg !3500
  br i1 %11, label %12, label %13, !dbg !3500

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3501
  unreachable, !dbg !3501

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3502
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3487 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3486, metadata !DIExpression()), !dbg !3503
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3504
  call void @llvm.dbg.value(metadata i8* %2, metadata !3492, metadata !DIExpression()), !dbg !3505
  %3 = icmp eq i8* %2, null, !dbg !3506
  %4 = icmp ne i64 %0, 0, !dbg !3507
  %5 = and i1 %4, %3, !dbg !3508
  br i1 %5, label %6, label %7, !dbg !3508

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3509
  unreachable, !dbg !3509

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3510
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3511 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3515, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %1, metadata !3516, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %2, metadata !3517, metadata !DIExpression()), !dbg !3520
  %4 = udiv i64 9223372036854775807, %2, !dbg !3521
  %5 = icmp ult i64 %4, %1, !dbg !3521
  br i1 %5, label %6, label %7, !dbg !3523

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3524
  unreachable, !dbg !3524

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3525
  call void @llvm.dbg.value(metadata i8* %0, metadata !3526, metadata !DIExpression()) #12, !dbg !3532
  call void @llvm.dbg.value(metadata i64 %8, metadata !3531, metadata !DIExpression()) #12, !dbg !3534
  %9 = icmp eq i64 %8, 0, !dbg !3535
  %10 = icmp ne i8* %0, null, !dbg !3537
  %11 = and i1 %10, %9, !dbg !3538
  br i1 %11, label %12, label %13, !dbg !3538

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3539
  br label %19, !dbg !3541

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3542
  call void @llvm.dbg.value(metadata i8* %14, metadata !3526, metadata !DIExpression()) #12, !dbg !3532
  %15 = icmp eq i8* %14, null, !dbg !3543
  %16 = icmp ne i64 %8, 0, !dbg !3545
  %17 = and i1 %16, %15, !dbg !3546
  br i1 %17, label %18, label %19, !dbg !3546

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3547
  unreachable, !dbg !3547

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3548
  ret i8* %20, !dbg !3549
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3527 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3526, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i64 %1, metadata !3531, metadata !DIExpression()), !dbg !3551
  %3 = icmp eq i64 %1, 0, !dbg !3552
  %4 = icmp ne i8* %0, null, !dbg !3553
  %5 = and i1 %4, %3, !dbg !3554
  br i1 %5, label %6, label %7, !dbg !3554

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3555
  br label %13, !dbg !3556

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3557
  call void @llvm.dbg.value(metadata i8* %8, metadata !3526, metadata !DIExpression()), !dbg !3550
  %9 = icmp eq i8* %8, null, !dbg !3558
  %10 = icmp ne i64 %1, 0, !dbg !3559
  %11 = and i1 %10, %9, !dbg !3560
  br i1 %11, label %12, label %13, !dbg !3560

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3561
  unreachable, !dbg !3561

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3562
  ret i8* %14, !dbg !3563
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !261 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !266, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i64* %1, metadata !267, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %2, metadata !268, metadata !DIExpression()), !dbg !3566
  %4 = load i64, i64* %1, align 8, !dbg !3567, !tbaa !2622
  call void @llvm.dbg.value(metadata i64 %4, metadata !269, metadata !DIExpression()), !dbg !3568
  %5 = icmp eq i8* %0, null, !dbg !3569
  br i1 %5, label %6, label %20, !dbg !3571

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3572
  br i1 %7, label %8, label %13, !dbg !3575

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3576
  call void @llvm.dbg.value(metadata i64 %9, metadata !269, metadata !DIExpression()), !dbg !3568
  %10 = icmp ugt i64 %2, 128, !dbg !3578
  %11 = zext i1 %10 to i64, !dbg !3578
  %12 = add nuw nsw i64 %9, %11, !dbg !3579
  call void @llvm.dbg.value(metadata i64 %12, metadata !269, metadata !DIExpression()), !dbg !3568
  br label %13, !dbg !3580

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3581
  call void @llvm.dbg.value(metadata i64 %14, metadata !269, metadata !DIExpression()), !dbg !3568
  %15 = udiv i64 9223372036854775807, %2, !dbg !3582
  %16 = icmp ult i64 %15, %14, !dbg !3582
  br i1 %16, label %19, label %17, !dbg !3584

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !269, metadata !DIExpression()), !dbg !3568
  store i64 %14, i64* %1, align 8, !dbg !3585, !tbaa !2622
  %18 = mul i64 %14, %2, !dbg !3586
  call void @llvm.dbg.value(metadata i8* %0, metadata !3526, metadata !DIExpression()) #12, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %28, metadata !3531, metadata !DIExpression()) #12, !dbg !3589
  br label %31, !dbg !3590

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3591
  unreachable, !dbg !3591

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3592
  %22 = icmp ugt i64 %21, %4, !dbg !3595
  br i1 %22, label %24, label %23, !dbg !3596

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3597
  unreachable, !dbg !3597

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3598
  %26 = add i64 %4, 1, !dbg !3599
  %27 = add i64 %26, %25, !dbg !3600
  call void @llvm.dbg.value(metadata i64 %27, metadata !269, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %27, metadata !269, metadata !DIExpression()), !dbg !3568
  store i64 %27, i64* %1, align 8, !dbg !3585, !tbaa !2622
  %28 = mul i64 %27, %2, !dbg !3586
  call void @llvm.dbg.value(metadata i8* %0, metadata !3526, metadata !DIExpression()) #12, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %28, metadata !3531, metadata !DIExpression()) #12, !dbg !3589
  %29 = icmp eq i64 %28, 0, !dbg !3601
  br i1 %29, label %30, label %31, !dbg !3590

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3602
  br label %38, !dbg !3603

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3604
  call void @llvm.dbg.value(metadata i8* %33, metadata !3526, metadata !DIExpression()) #12, !dbg !3587
  %34 = icmp eq i8* %33, null, !dbg !3605
  %35 = icmp ne i64 %32, 0, !dbg !3606
  %36 = and i1 %35, %34, !dbg !3607
  br i1 %36, label %37, label %38, !dbg !3607

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3608
  unreachable, !dbg !3608

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3609
  ret i8* %39, !dbg !3610
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3611 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3613, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %0, metadata !3486, metadata !DIExpression()) #12, !dbg !3615
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3617
  call void @llvm.dbg.value(metadata i8* %2, metadata !3492, metadata !DIExpression()) #12, !dbg !3618
  %3 = icmp eq i8* %2, null, !dbg !3619
  %4 = icmp ne i64 %0, 0, !dbg !3620
  %5 = and i1 %4, %3, !dbg !3621
  br i1 %5, label %6, label %7, !dbg !3621

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3622
  unreachable, !dbg !3622

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3623
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3624 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3628, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64* %1, metadata !3629, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i8* %0, metadata !266, metadata !DIExpression()) #12, !dbg !3632
  call void @llvm.dbg.value(metadata i64* %1, metadata !267, metadata !DIExpression()) #12, !dbg !3634
  call void @llvm.dbg.value(metadata i64 1, metadata !268, metadata !DIExpression()) #12, !dbg !3635
  %3 = load i64, i64* %1, align 8, !dbg !3636, !tbaa !2622
  call void @llvm.dbg.value(metadata i64 %3, metadata !269, metadata !DIExpression()) #12, !dbg !3637
  %4 = icmp eq i8* %0, null, !dbg !3638
  br i1 %4, label %5, label %12, !dbg !3639

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3640
  br i1 %6, label %9, label %7, !dbg !3641

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !269, metadata !DIExpression()) #12, !dbg !3637
  %8 = icmp slt i64 %3, 0, !dbg !3642
  br i1 %8, label %11, label %9, !dbg !3643

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !269, metadata !DIExpression()) #12, !dbg !3637
  store i64 %10, i64* %1, align 8, !dbg !3644, !tbaa !2622
  call void @llvm.dbg.value(metadata i8* %0, metadata !3526, metadata !DIExpression()) #12, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %18, metadata !3531, metadata !DIExpression()) #12, !dbg !3647
  br label %21, !dbg !3648

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3649
  unreachable, !dbg !3649

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3650
  br i1 %13, label %15, label %14, !dbg !3651

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3652
  unreachable, !dbg !3652

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3653
  %17 = add i64 %3, 1, !dbg !3654
  %18 = add i64 %17, %16, !dbg !3655
  call void @llvm.dbg.value(metadata i64 %18, metadata !269, metadata !DIExpression()) #12, !dbg !3637
  call void @llvm.dbg.value(metadata i64 %18, metadata !269, metadata !DIExpression()) #12, !dbg !3637
  store i64 %18, i64* %1, align 8, !dbg !3644, !tbaa !2622
  call void @llvm.dbg.value(metadata i8* %0, metadata !3526, metadata !DIExpression()) #12, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %18, metadata !3531, metadata !DIExpression()) #12, !dbg !3647
  %19 = icmp eq i64 %18, 0, !dbg !3656
  br i1 %19, label %20, label %21, !dbg !3648

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3657
  br label %28, !dbg !3658

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3659
  call void @llvm.dbg.value(metadata i8* %23, metadata !3526, metadata !DIExpression()) #12, !dbg !3645
  %24 = icmp eq i8* %23, null, !dbg !3660
  %25 = icmp ne i64 %22, 0, !dbg !3661
  %26 = and i1 %25, %24, !dbg !3662
  br i1 %26, label %27, label %28, !dbg !3662

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3663
  unreachable, !dbg !3663

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3664
  ret i8* %29, !dbg !3665
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3666 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3668, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i64 %0, metadata !3486, metadata !DIExpression()) #12, !dbg !3670
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %2, metadata !3492, metadata !DIExpression()) #12, !dbg !3673
  %3 = icmp eq i8* %2, null, !dbg !3674
  %4 = icmp ne i64 %0, 0, !dbg !3675
  %5 = and i1 %4, %3, !dbg !3676
  br i1 %5, label %6, label %7, !dbg !3676

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3677
  unreachable, !dbg !3677

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3678
  ret i8* %2, !dbg !3679
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3680 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3682, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i64 %1, metadata !3683, metadata !DIExpression()), !dbg !3686
  %3 = udiv i64 9223372036854775807, %1, !dbg !3687
  %4 = icmp ult i64 %3, %0, !dbg !3687
  br i1 %4, label %8, label %5, !dbg !3689

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3690
  call void @llvm.dbg.value(metadata i8* %6, metadata !3684, metadata !DIExpression()), !dbg !3691
  %7 = icmp eq i8* %6, null, !dbg !3692
  br i1 %7, label %8, label %9, !dbg !3693

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3694
  unreachable, !dbg !3694

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3695
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3696 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3702, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i64 %1, metadata !3703, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %1, metadata !3486, metadata !DIExpression()) #12, !dbg !3706
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3708
  call void @llvm.dbg.value(metadata i8* %3, metadata !3492, metadata !DIExpression()) #12, !dbg !3709
  %4 = icmp eq i8* %3, null, !dbg !3710
  %5 = icmp ne i64 %1, 0, !dbg !3711
  %6 = and i1 %5, %4, !dbg !3712
  br i1 %6, label %7, label %8, !dbg !3712

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3713
  unreachable, !dbg !3713

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3714
  ret i8* %3, !dbg !3715
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3716 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3718, metadata !DIExpression()), !dbg !3719
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3720
  %3 = add i64 %2, 1, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %0, metadata !3702, metadata !DIExpression()) #12, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %3, metadata !3703, metadata !DIExpression()) #12, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %3, metadata !3486, metadata !DIExpression()) #12, !dbg !3725
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3727
  call void @llvm.dbg.value(metadata i8* %4, metadata !3492, metadata !DIExpression()) #12, !dbg !3728
  %5 = icmp eq i8* %4, null, !dbg !3729
  %6 = icmp ne i64 %3, 0, !dbg !3730
  %7 = and i1 %6, %5, !dbg !3731
  br i1 %7, label %8, label %9, !dbg !3731

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3732
  unreachable, !dbg !3732

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !3733
  ret i8* %4, !dbg !3734
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3735 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3737, !tbaa !889
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.136, i64 0, i64 0), i32 5) #12, !dbg !3738
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i64 0, i64 0), i8* %2) #12, !dbg !3739
  tail call void @abort() #15, !dbg !3740
  unreachable, !dbg !3740
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3741 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3744, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %1, metadata !3745, metadata !DIExpression()), !dbg !3751
  %3 = icmp eq i64 %0, 0, !dbg !3752
  %4 = icmp eq i64 %1, 0, !dbg !3753
  %5 = or i1 %3, %4, !dbg !3754
  br i1 %5, label %12, label %6, !dbg !3754

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3755
  call void @llvm.dbg.value(metadata i64 %7, metadata !3747, metadata !DIExpression()), !dbg !3756
  %8 = udiv i64 %7, %1, !dbg !3757
  %9 = icmp eq i64 %8, %0, !dbg !3759
  br i1 %9, label %12, label %10, !dbg !3760

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3761
  store i32 12, i32* %11, align 4, !dbg !3763, !tbaa !889
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3744, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %13, metadata !3745, metadata !DIExpression()), !dbg !3751
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3764
  call void @llvm.dbg.value(metadata i8* %15, metadata !3746, metadata !DIExpression()), !dbg !3765
  br label %16, !dbg !3766

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3767
  ret i8* %17, !dbg !3768
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3769 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3808, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i32 0, metadata !3809, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 0, metadata !3811, metadata !DIExpression()), !dbg !3814
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3815
  call void @llvm.dbg.value(metadata i32 %2, metadata !3810, metadata !DIExpression()), !dbg !3816
  %3 = icmp slt i32 %2, 0, !dbg !3817
  br i1 %3, label %4, label %6, !dbg !3819

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3820
  br label %24, !dbg !3821

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3822
  %8 = icmp eq i32 %7, 0, !dbg !3822
  br i1 %8, label %13, label %9, !dbg !3824

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3825
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3826
  %12 = icmp eq i64 %11, -1, !dbg !3827
  br i1 %12, label %16, label %13, !dbg !3828

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3829
  %15 = icmp eq i32 %14, 0, !dbg !3829
  br i1 %15, label %16, label %18, !dbg !3830

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3809, metadata !DIExpression()), !dbg !3813
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3831
  call void @llvm.dbg.value(metadata i32 %21, metadata !3811, metadata !DIExpression()), !dbg !3814
  br label %24, !dbg !3832

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3833
  %20 = load i32, i32* %19, align 4, !dbg !3833, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %20, metadata !3809, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 %20, metadata !3809, metadata !DIExpression()), !dbg !3813
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3831
  call void @llvm.dbg.value(metadata i32 %21, metadata !3811, metadata !DIExpression()), !dbg !3814
  %22 = icmp eq i32 %20, 0, !dbg !3834
  br i1 %22, label %24, label %23, !dbg !3832

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3836, !tbaa !889
  call void @llvm.dbg.value(metadata i32 -1, metadata !3811, metadata !DIExpression()), !dbg !3814
  br label %24, !dbg !3838

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3839
  ret i32 %25, !dbg !3840
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #7 !dbg !206 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !214, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32 %1, metadata !215, metadata !DIExpression()), !dbg !3842
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3843
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #12, !dbg !3843
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !216, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i32 -1, metadata !229, metadata !DIExpression()), !dbg !3845
  call void @llvm.va_start(i8* nonnull %4), !dbg !3846
  %5 = icmp eq i32 %1, 1030, !dbg !3847
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3848
  %7 = load i32, i32* %6, align 16, !dbg !3848
  %8 = icmp ult i32 %7, 41, !dbg !3848
  br i1 %5, label %9, label %58, !dbg !3847

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !3849

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3849
  %12 = load i8*, i8** %11, align 16, !dbg !3849
  %13 = sext i32 %7 to i64, !dbg !3849
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !3849
  %15 = add i32 %7, 8, !dbg !3849
  store i32 %15, i32* %6, align 16, !dbg !3849
  br label %20, !dbg !3849

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3849
  %18 = load i8*, i8** %17, align 8, !dbg !3849
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !3849
  store i8* %19, i8** %17, align 8, !dbg !3849
  br label %20, !dbg !3849

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !3849
  %23 = load i32, i32* %22, align 4, !dbg !3849
  call void @llvm.dbg.value(metadata i32 %23, metadata !230, metadata !DIExpression()), !dbg !3850
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3851, !tbaa !889
  %25 = icmp sgt i32 %24, -1, !dbg !3853
  br i1 %25, label %26, label %38, !dbg !3854

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #12, !dbg !3855
  call void @llvm.dbg.value(metadata i32 %27, metadata !229, metadata !DIExpression()), !dbg !3845
  %28 = icmp sgt i32 %27, -1, !dbg !3857
  br i1 %28, label %33, label %29, !dbg !3859

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !3860
  %31 = load i32, i32* %30, align 4, !dbg !3860, !tbaa !889
  %32 = icmp eq i32 %31, 22, !dbg !3861
  br i1 %32, label %34, label %33, !dbg !3862

; <label>:33:                                     ; preds = %26, %29
  store i32 1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3863, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %44, metadata !229, metadata !DIExpression()), !dbg !3845
  br label %74, !dbg !3865

; <label>:34:                                     ; preds = %29
  %35 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3866
  call void @llvm.dbg.value(metadata i32 %35, metadata !229, metadata !DIExpression()), !dbg !3845
  %36 = icmp slt i32 %35, 0, !dbg !3868
  br i1 %36, label %74, label %37, !dbg !3870

; <label>:37:                                     ; preds = %34
  store i32 -1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3871, !tbaa !889
  br label %42

; <label>:38:                                     ; preds = %20
  %39 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %39, metadata !229, metadata !DIExpression()), !dbg !3845
  %40 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3873
  %41 = icmp eq i32 %40, -1
  br label %42

; <label>:42:                                     ; preds = %37, %38
  %43 = phi i1 [ true, %37 ], [ %41, %38 ]
  %44 = phi i32 [ %35, %37 ], [ %39, %38 ], !dbg !3874
  call void @llvm.dbg.value(metadata i32 %44, metadata !229, metadata !DIExpression()), !dbg !3845
  %45 = icmp sgt i32 %44, -1, !dbg !3875
  %46 = and i1 %45, %43, !dbg !3865
  br i1 %46, label %47, label %74, !dbg !3865

; <label>:47:                                     ; preds = %42
  %48 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #12, !dbg !3876
  call void @llvm.dbg.value(metadata i32 %48, metadata !233, metadata !DIExpression()), !dbg !3877
  %49 = icmp slt i32 %48, 0, !dbg !3878
  br i1 %49, label %54, label %50, !dbg !3879

; <label>:50:                                     ; preds = %47
  %51 = or i32 %48, 1, !dbg !3880
  %52 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %51) #12, !dbg !3881
  %53 = icmp eq i32 %52, -1, !dbg !3882
  br i1 %53, label %54, label %74, !dbg !3883

; <label>:54:                                     ; preds = %50, %47
  %55 = tail call i32* @__errno_location() #17, !dbg !3884
  %56 = load i32, i32* %55, align 4, !dbg !3884, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %56, metadata !236, metadata !DIExpression()), !dbg !3885
  %57 = call i32 @close(i32 %44) #12, !dbg !3886
  store i32 %56, i32* %55, align 4, !dbg !3887, !tbaa !889
  call void @llvm.dbg.value(metadata i32 -1, metadata !229, metadata !DIExpression()), !dbg !3845
  br label %74, !dbg !3888

; <label>:58:                                     ; preds = %2
  br i1 %8, label %59, label %65, !dbg !3889

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3889
  %61 = load i8*, i8** %60, align 16, !dbg !3889
  %62 = sext i32 %7 to i64, !dbg !3889
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !3889
  %64 = add i32 %7, 8, !dbg !3889
  store i32 %64, i32* %6, align 16, !dbg !3889
  br label %69, !dbg !3889

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3889
  %67 = load i8*, i8** %66, align 8, !dbg !3889
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3889
  store i8* %68, i8** %66, align 8, !dbg !3889
  br label %69, !dbg !3889

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8* [ %63, %59 ], [ %67, %65 ]
  %71 = bitcast i8* %70 to i8**, !dbg !3889
  %72 = load i8*, i8** %71, align 8, !dbg !3889
  call void @llvm.dbg.value(metadata i8* %72, metadata !239, metadata !DIExpression()), !dbg !3890
  %73 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %72) #12, !dbg !3891
  call void @llvm.dbg.value(metadata i32 %73, metadata !229, metadata !DIExpression()), !dbg !3845
  br label %74

; <label>:74:                                     ; preds = %33, %34, %50, %54, %42, %69
  %75 = phi i32 [ %73, %69 ], [ %35, %34 ], [ %44, %42 ], [ -1, %54 ], [ %44, %50 ], [ %27, %33 ], !dbg !3848
  call void @llvm.dbg.value(metadata i32 %75, metadata !229, metadata !DIExpression()), !dbg !3845
  call void @llvm.va_end(i8* nonnull %4), !dbg !3892
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #12, !dbg !3893
  ret i32 %75, !dbg !3894
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3895 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3934, metadata !DIExpression()), !dbg !3935
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3936
  br i1 %2, label %6, label %3, !dbg !3938

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3939
  %5 = icmp eq i32 %4, 0, !dbg !3939
  br i1 %5, label %6, label %8, !dbg !3940

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3941
  br label %17, !dbg !3942

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3943, metadata !DIExpression()) #12, !dbg !3948
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3950
  %10 = load i32, i32* %9, align 8, !dbg !3950, !tbaa !3952
  %11 = and i32 %10, 256, !dbg !3953
  %12 = icmp eq i32 %11, 0, !dbg !3953
  br i1 %12, label %15, label %13, !dbg !3954

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3955
  br label %15, !dbg !3955

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3956
  br label %17, !dbg !3957

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3958
  ret i32 %18, !dbg !3959
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3960 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3999, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 %1, metadata !4000, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 %2, metadata !4001, metadata !DIExpression()), !dbg !4007
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4008
  %5 = load i8*, i8** %4, align 8, !dbg !4008, !tbaa !4009
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4010
  %7 = load i8*, i8** %6, align 8, !dbg !4010, !tbaa !4011
  %8 = icmp eq i8* %5, %7, !dbg !4012
  br i1 %8, label %9, label %28, !dbg !4013

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4014
  %11 = load i8*, i8** %10, align 8, !dbg !4014, !tbaa !1209
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4015
  %13 = load i8*, i8** %12, align 8, !dbg !4015, !tbaa !4016
  %14 = icmp eq i8* %11, %13, !dbg !4017
  br i1 %14, label %15, label %28, !dbg !4018

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4019
  %17 = load i8*, i8** %16, align 8, !dbg !4019, !tbaa !4020
  %18 = icmp eq i8* %17, null, !dbg !4021
  br i1 %18, label %19, label %28, !dbg !4022

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4023
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4024
  call void @llvm.dbg.value(metadata i64 %21, metadata !4002, metadata !DIExpression()), !dbg !4025
  %22 = icmp eq i64 %21, -1, !dbg !4026
  br i1 %22, label %30, label %23, !dbg !4028

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4029
  %25 = load i32, i32* %24, align 8, !dbg !4030, !tbaa !3952
  %26 = and i32 %25, -17, !dbg !4030
  store i32 %26, i32* %24, align 8, !dbg !4030, !tbaa !3952
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4031
  store i64 %21, i64* %27, align 8, !dbg !4032, !tbaa !4033
  br label %30, !dbg !4034

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4035
  br label %30, !dbg !4036

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4037
  ret i32 %31, !dbg !4038
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4039 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4056, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i8* %1, metadata !4057, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %2, metadata !4058, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4059, metadata !DIExpression()), !dbg !4068
  %6 = bitcast i32* %5 to i8*, !dbg !4069
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4069
  %7 = icmp eq i32* %0, null, !dbg !4070
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4072
  call void @llvm.dbg.value(metadata i32* %8, metadata !4056, metadata !DIExpression()), !dbg !4065
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4073
  call void @llvm.dbg.value(metadata i64 %9, metadata !4060, metadata !DIExpression()), !dbg !4074
  %10 = icmp ugt i64 %9, -3, !dbg !4075
  %11 = icmp ne i64 %2, 0, !dbg !4076
  %12 = and i1 %11, %10, !dbg !4077
  br i1 %12, label %13, label %18, !dbg !4077

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4078
  br i1 %14, label %18, label %15, !dbg !4079

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4080, !tbaa !871
  call void @llvm.dbg.value(metadata i8 %16, metadata !4062, metadata !DIExpression()), !dbg !4081
  %17 = zext i8 %16 to i32, !dbg !4082
  store i32 %17, i32* %8, align 4, !dbg !4083, !tbaa !889
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4084
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4085
  ret i64 %19, !dbg !4085
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4086 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4125, metadata !DIExpression()), !dbg !4130
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4131
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4132, metadata !DIExpression()), !dbg !4135
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4137
  %4 = load i32, i32* %3, align 8, !dbg !4137, !tbaa !3952
  %5 = and i32 %4, 32, !dbg !4137
  %6 = icmp eq i32 %5, 0, !dbg !4138
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4139
  %8 = icmp ne i32 %7, 0, !dbg !4140
  br i1 %6, label %9, label %19, !dbg !4141

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4143
  %11 = xor i1 %8, true, !dbg !4144
  %12 = or i1 %10, %11, !dbg !4144
  %13 = sext i1 %8 to i32, !dbg !4144
  br i1 %12, label %22, label %14, !dbg !4144

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4145
  %16 = load i32, i32* %15, align 4, !dbg !4145, !tbaa !889
  %17 = icmp ne i32 %16, 9, !dbg !4146
  %18 = sext i1 %17 to i32, !dbg !4147
  br label %22, !dbg !4147

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4148

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4150
  store i32 0, i32* %21, align 4, !dbg !4152, !tbaa !889
  br label %22, !dbg !4150

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4153
  ret i32 %23, !dbg !4154
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4155 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4160, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i8 1, metadata !4161, metadata !DIExpression()), !dbg !4164
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4165
  call void @llvm.dbg.value(metadata i8* %2, metadata !4162, metadata !DIExpression()), !dbg !4166
  %3 = icmp eq i8* %2, null, !dbg !4167
  br i1 %3, label %11, label %4, !dbg !4169

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.154, i64 0, i64 0)) #14, !dbg !4170
  %6 = icmp eq i32 %5, 0, !dbg !4175
  br i1 %6, label %10, label %7, !dbg !4176

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0)) #14, !dbg !4177
  %9 = icmp eq i32 %8, 0, !dbg !4178
  br i1 %9, label %10, label %11, !dbg !4179

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4161, metadata !DIExpression()), !dbg !4164
  br label %11, !dbg !4180

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4181
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4182 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4188
  call void @llvm.dbg.value(metadata i8* %1, metadata !4187, metadata !DIExpression()), !dbg !4189
  %2 = icmp eq i8* %1, null, !dbg !4190
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.158, i64 0, i64 0), i8* %1, !dbg !4192
  call void @llvm.dbg.value(metadata i8* %3, metadata !4187, metadata !DIExpression()), !dbg !4189
  %4 = load i8, i8* %3, align 1, !dbg !4193, !tbaa !871
  %5 = icmp eq i8 %4, 0, !dbg !4197
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), i8* %3, !dbg !4198
  call void @llvm.dbg.value(metadata i8* %6, metadata !4187, metadata !DIExpression()), !dbg !4189
  ret i8* %6, !dbg !4199
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
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !87, !93, !107, !115, !241, !244, !122, !129, !246, !248, !197, !256, !273, !275, !277, !210, !279, !281, !283, !286, !288, !290}
!llvm.ident = !{!679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679}
!llvm.module.flags = !{!680, !681, !682, !683, !684}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "append", scope: !2, file: !3, line: 43, type: !55, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !36, globals: !51)
!3 = !DIFile(filename: "src/tee.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !13, !22}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "output_error", file: !3, line: 48, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "output_error_sigpipe", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "output_error_warn", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "output_error_warn_nopipe", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "output_error_exit", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "output_error_exit_nopipe", value: 4, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 45, baseType: !6, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!15 = !{!16, !17, !18, !19, !20, !21}
!16 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!19 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!21 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !23, line: 32, baseType: !6, size: 32, elements: !24)
!23 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!25 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!29 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!30 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!31 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!32 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!33 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!34 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!35 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!36 = !{!37, !40, !41, !42, !48}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !43, line: 72, baseType: !44)
!43 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47}
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 62, baseType: !50)
!49 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!50 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!51 = !{!52, !53, !56, !58, !72, !78}
!52 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "ignore_interrupts", scope: !2, file: !3, line: 46, type: !55, isLocal: true, isDefinition: true)
!55 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "output_error", scope: !2, file: !3, line: 57, type: !5, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1536, elements: !70)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !63, line: 50, size: 256, elements: !64)
!63 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!64 = !{!65, !66, !67, !69}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !62, file: !63, line: 52, baseType: !37, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !62, file: !63, line: 55, baseType: !47, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !62, file: !63, line: 56, baseType: !68, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !62, file: !63, line: 57, baseType: !47, size: 32, offset: 192)
!70 = !{!71}
!71 = !DISubrange(count: 6)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "output_error_types", scope: !2, file: !3, line: 73, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !76)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!76 = !{!77}
!77 = !DISubrange(count: 4)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "output_error_args", scope: !2, file: !3, line: 69, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 320, elements: !82)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!82 = !{!83}
!83 = !DISubrange(count: 5)
!84 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "Version", scope: !87, file: !88, line: 2, type: !37, isLocal: false, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, globals: !90)
!88 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!89 = !{}
!90 = !{!85}
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !93, file: !99, line: 69, type: !100, isLocal: false, isDefinition: true)
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !96, globals: !98)
!94 = !DIFile(filename: "./lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!95 = !{!22}
!96 = !{!41, !97}
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !{!91}
!99 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !101, line: 55, baseType: !102)
!101 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null}
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "file_name", scope: !107, file: !112, line: 46, type: !37, isLocal: true, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, globals: !109)
!108 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!109 = !{!105, !110}
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !107, file: !112, line: 56, type: !55, isLocal: true, isDefinition: true)
!112 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "exit_failure", scope: !115, file: !118, line: 24, type: !119, isLocal: false, isDefinition: true)
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !116, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, globals: !117)
!116 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!117 = !{!113}
!118 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!119 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "program_name", scope: !122, file: !126, line: 33, type: !37, isLocal: false, isDefinition: true)
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, retainedTypes: !124, globals: !125)
!123 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!124 = !{!41, !40}
!125 = !{!120}
!126 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !129, file: !157, line: 85, type: !192, isLocal: false, isDefinition: true)
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, retainedTypes: !152, globals: !154)
!130 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!131 = !{!22, !132, !137}
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !23, line: 242, baseType: !6, size: 32, elements: !133)
!133 = !{!134, !135, !136}
!134 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!135 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!136 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 46, baseType: !6, size: 32, elements: !139)
!138 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!140 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!141 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!142 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!143 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!144 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!145 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!146 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!147 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!148 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!149 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!150 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!151 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!152 = !{!47, !153, !48, !40}
!153 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!154 = !{!127, !155, !162, !174, !176, !181, !188, !190}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !129, file: !157, line: 101, type: !158, isLocal: false, isDefinition: true)
!157 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 320, elements: !160)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!160 = !{!161}
!161 = !DISubrange(count: 10)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !129, file: !157, line: 1052, type: !164, isLocal: false, isDefinition: true)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !157, line: 65, size: 448, elements: !165)
!165 = !{!166, !167, !168, !172, !173}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !164, file: !157, line: 68, baseType: !22, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !157, line: 71, baseType: !47, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !164, file: !157, line: 75, baseType: !169, size: 256, offset: 64)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 8)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !164, file: !157, line: 78, baseType: !37, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !164, file: !157, line: 81, baseType: !37, size: 64, offset: 384)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !129, file: !157, line: 116, type: !164, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "slot0", scope: !129, file: !157, line: 842, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 256)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "slotvec", scope: !129, file: !157, line: 845, type: !183, isLocal: true, isDefinition: true)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !157, line: 834, size: 128, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !184, file: !157, line: 836, baseType: !48, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !184, file: !157, line: 837, baseType: !40, size: 64, offset: 64)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "nslots", scope: !129, file: !157, line: 843, type: !47, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "slotvec0", scope: !129, file: !157, line: 844, type: !184, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 704, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 11)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !197, file: !200, line: 26, type: !201, isLocal: false, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, globals: !199)
!198 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!199 = !{!195}
!200 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 376, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 47)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !206, file: !207, line: 339, type: !47, isLocal: true, isDefinition: true)
!206 = distinct !DISubprogram(name: "rpl_fcntl", scope: !207, file: !207, line: 276, type: !208, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !210, retainedNodes: !213)
!207 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!208 = !DISubroutineType(types: !209)
!209 = !{!47, !47, !47, null}
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, globals: !212)
!211 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!212 = !{!204}
!213 = !{!214, !215, !216, !229, !230, !233, !236, !239}
!214 = !DILocalVariable(name: "fd", arg: 1, scope: !206, file: !207, line: 276, type: !47)
!215 = !DILocalVariable(name: "action", arg: 2, scope: !206, file: !207, line: 276, type: !47)
!216 = !DILocalVariable(name: "arg", scope: !206, file: !207, line: 278, type: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !218, line: 30, baseType: !219)
!218 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !211, line: 278, baseType: !220)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 192, elements: !227)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !211, line: 278, size: 192, elements: !222)
!222 = !{!223, !224, !225, !226}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !221, file: !211, line: 278, baseType: !6, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !221, file: !211, line: 278, baseType: !6, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !221, file: !211, line: 278, baseType: !41, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !221, file: !211, line: 278, baseType: !41, size: 64, offset: 128)
!227 = !{!228}
!228 = !DISubrange(count: 1)
!229 = !DILocalVariable(name: "result", scope: !206, file: !207, line: 279, type: !47)
!230 = !DILocalVariable(name: "target", scope: !231, file: !207, line: 326, type: !47)
!231 = distinct !DILexicalBlock(scope: !232, file: !207, line: 325, column: 7)
!232 = distinct !DILexicalBlock(scope: !206, file: !207, line: 282, column: 5)
!233 = !DILocalVariable(name: "flags", scope: !234, file: !207, line: 363, type: !47)
!234 = distinct !DILexicalBlock(scope: !235, file: !207, line: 362, column: 11)
!235 = distinct !DILexicalBlock(scope: !231, file: !207, line: 361, column: 13)
!236 = !DILocalVariable(name: "saved_errno", scope: !237, file: !207, line: 366, type: !47)
!237 = distinct !DILexicalBlock(scope: !238, file: !207, line: 365, column: 15)
!238 = distinct !DILexicalBlock(scope: !234, file: !207, line: 364, column: 17)
!239 = !DILocalVariable(name: "p", scope: !240, file: !207, line: 408, type: !41)
!240 = distinct !DILexicalBlock(scope: !232, file: !207, line: 406, column: 7)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !243)
!242 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!243 = !{!13}
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89)
!245 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89)
!247 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !250, retainedTypes: !255)
!249 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!250 = !{!251}
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !252, line: 41, baseType: !6, size: 32, elements: !253)
!252 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!253 = !{!254}
!254 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!255 = !{!41}
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !258, retainedTypes: !272)
!257 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!258 = !{!259}
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !261, file: !260, line: 186, baseType: !6, size: 32, elements: !270)
!260 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!261 = distinct !DISubprogram(name: "x2nrealloc", scope: !260, file: !260, line: 174, type: !262, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !265)
!262 = !DISubroutineType(types: !263)
!263 = !{!41, !41, !264, !48}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!265 = !{!266, !267, !268, !269}
!266 = !DILocalVariable(name: "p", arg: 1, scope: !261, file: !260, line: 174, type: !41)
!267 = !DILocalVariable(name: "pn", arg: 2, scope: !261, file: !260, line: 174, type: !264)
!268 = !DILocalVariable(name: "s", arg: 3, scope: !261, file: !260, line: 174, type: !48)
!269 = !DILocalVariable(name: "n", scope: !261, file: !260, line: 176, type: !48)
!270 = !{!271}
!271 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!272 = !{!48, !40, !41}
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89)
!274 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, retainedTypes: !255)
!276 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89)
!278 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, retainedTypes: !255)
!280 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, retainedTypes: !255)
!282 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, retainedTypes: !285)
!284 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!285 = !{!48}
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89)
!287 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89)
!289 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !292, retainedTypes: !255)
!291 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!292 = !{!293}
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !294, line: 41, baseType: !6, size: 32, elements: !295)
!294 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!296 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!297 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!298 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!299 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!300 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!301 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!302 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!303 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!304 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!305 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!306 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!307 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!308 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!309 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!310 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!311 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!312 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!313 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!314 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!315 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!316 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!317 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!318 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!319 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!320 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!321 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!322 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!323 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!324 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!325 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!326 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!327 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!328 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!329 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!330 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!331 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!332 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!333 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!334 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!335 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!336 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!337 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!338 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!339 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!340 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!341 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!342 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!343 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!344 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!345 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!404 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!407 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!408 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!409 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!410 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!411 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!412 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!413 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!414 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!415 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!416 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!417 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!418 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!491 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!564 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!565 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!566 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!567 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!568 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!569 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!570 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!571 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!572 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!573 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!574 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!575 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!576 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!577 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!578 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!580 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!581 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!582 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!583 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!584 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!585 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!611 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!612 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!613 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!614 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!615 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!620 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!621 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!622 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!623 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!679 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!680 = !{i32 2, !"Dwarf Version", i32 4}
!681 = !{i32 2, !"Debug Info Version", i32 3}
!682 = !{i32 1, !"wchar_size", i32 4}
!683 = !{i32 7, !"PIC Level", i32 2}
!684 = !{i32 7, !"PIE Level", i32 2}
!685 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 81, type: !45, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !686)
!686 = !{!687}
!687 = !DILocalVariable(name: "status", arg: 1, scope: !685, file: !3, line: 81, type: !47)
!688 = !DILocalVariable(name: "infomap", scope: !689, file: !690, line: 632, type: !704)
!689 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !690, file: !690, line: 630, type: !691, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !693)
!690 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!691 = !DISubroutineType(types: !692)
!692 = !{null, !37}
!693 = !{!694, !688, !695, !696, !703}
!694 = !DILocalVariable(name: "program", arg: 1, scope: !689, file: !690, line: 630, type: !37)
!695 = !DILocalVariable(name: "node", scope: !689, file: !690, line: 642, type: !37)
!696 = !DILocalVariable(name: "map_prog", scope: !689, file: !690, line: 643, type: !697)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !689, file: !690, line: 632, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !699, file: !690, line: 632, baseType: !37, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !699, file: !690, line: 632, baseType: !37, size: 64, offset: 64)
!703 = !DILocalVariable(name: "lc_messages", scope: !689, file: !690, line: 655, type: !37)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 896, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 7)
!707 = !DILocation(line: 632, column: 67, scope: !689, inlinedAt: !708)
!708 = distinct !DILocation(line: 112, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 86, column: 5)
!710 = distinct !DILexicalBlock(scope: !685, file: !3, line: 83, column: 7)
!711 = !DILocation(line: 81, column: 12, scope: !685)
!712 = !DILocation(line: 83, column: 14, scope: !710)
!713 = !DILocation(line: 83, column: 7, scope: !685)
!714 = !DILocation(line: 84, column: 5, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !3, line: 84, column: 5)
!716 = !{!717, !717, i64 0}
!717 = !{!"any pointer", !718, i64 0}
!718 = !{!"omnipotent char", !719, i64 0}
!719 = !{!"Simple C/C++ TBAA"}
!720 = !DILocation(line: 87, column: 7, scope: !709)
!721 = !DILocation(line: 88, column: 7, scope: !709)
!722 = !DILocation(line: 94, column: 7, scope: !709)
!723 = !DILocation(line: 98, column: 7, scope: !709)
!724 = !DILocation(line: 99, column: 7, scope: !709)
!725 = !DILocation(line: 100, column: 7, scope: !709)
!726 = !DILocation(line: 632, column: 3, scope: !689, inlinedAt: !708)
!727 = !DILocation(line: 643, column: 36, scope: !689, inlinedAt: !708)
!728 = !DILocation(line: 643, column: 25, scope: !689, inlinedAt: !708)
!729 = !DILocation(line: 645, column: 33, scope: !689, inlinedAt: !708)
!730 = !DILocation(line: 645, column: 3, scope: !689, inlinedAt: !708)
!731 = !DILocation(line: 646, column: 13, scope: !689, inlinedAt: !708)
!732 = !DILocation(line: 645, column: 20, scope: !689, inlinedAt: !708)
!733 = !{!734, !717, i64 0}
!734 = !{!"infomap", !717, i64 0, !717, i64 8}
!735 = !DILocation(line: 645, column: 10, scope: !689, inlinedAt: !708)
!736 = !DILocation(line: 645, column: 28, scope: !689, inlinedAt: !708)
!737 = distinct !{!737, !738, !739}
!738 = !DILocation(line: 645, column: 3, scope: !689)
!739 = !DILocation(line: 646, column: 13, scope: !689)
!740 = !DILocation(line: 648, column: 17, scope: !741, inlinedAt: !708)
!741 = distinct !DILexicalBlock(scope: !689, file: !690, line: 648, column: 7)
!742 = !{!734, !717, i64 8}
!743 = !DILocation(line: 648, column: 7, scope: !741, inlinedAt: !708)
!744 = !DILocation(line: 648, column: 7, scope: !689, inlinedAt: !708)
!745 = !DILocation(line: 642, column: 15, scope: !689, inlinedAt: !708)
!746 = !DILocation(line: 651, column: 3, scope: !689, inlinedAt: !708)
!747 = !DILocation(line: 655, column: 29, scope: !689, inlinedAt: !708)
!748 = !DILocation(line: 655, column: 15, scope: !689, inlinedAt: !708)
!749 = !DILocation(line: 656, column: 7, scope: !750, inlinedAt: !708)
!750 = distinct !DILexicalBlock(scope: !689, file: !690, line: 656, column: 7)
!751 = !DILocation(line: 656, column: 19, scope: !750, inlinedAt: !708)
!752 = !DILocation(line: 656, column: 22, scope: !750, inlinedAt: !708)
!753 = !DILocation(line: 656, column: 7, scope: !689, inlinedAt: !708)
!754 = !DILocation(line: 662, column: 7, scope: !755, inlinedAt: !708)
!755 = distinct !DILexicalBlock(scope: !750, file: !690, line: 657, column: 5)
!756 = !DILocation(line: 664, column: 5, scope: !755, inlinedAt: !708)
!757 = !DILocation(line: 665, column: 3, scope: !689, inlinedAt: !708)
!758 = !DILocation(line: 667, column: 3, scope: !689, inlinedAt: !708)
!759 = !DILocation(line: 669, column: 1, scope: !689, inlinedAt: !708)
!760 = !DILocation(line: 114, column: 3, scope: !685)
!761 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 118, type: !762, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !765)
!762 = !DISubroutineType(types: !763)
!763 = !{!47, !47, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!765 = !{!766, !767, !768, !769}
!766 = !DILocalVariable(name: "argc", arg: 1, scope: !761, file: !3, line: 118, type: !47)
!767 = !DILocalVariable(name: "argv", arg: 2, scope: !761, file: !3, line: 118, type: !764)
!768 = !DILocalVariable(name: "ok", scope: !761, file: !3, line: 120, type: !55)
!769 = !DILocalVariable(name: "optc", scope: !761, file: !3, line: 121, type: !47)
!770 = !DILocalVariable(name: "buffer", scope: !771, file: !3, line: 188, type: !847)
!771 = distinct !DISubprogram(name: "tee_files", scope: !3, file: !3, line: 184, type: !772, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{!55, !47, !764}
!774 = !{!775, !776, !777, !778, !770, !833, !837, !838, !839, !840, !846}
!775 = !DILocalVariable(name: "nfiles", arg: 1, scope: !771, file: !3, line: 184, type: !47)
!776 = !DILocalVariable(name: "files", arg: 2, scope: !771, file: !3, line: 184, type: !764)
!777 = !DILocalVariable(name: "n_outputs", scope: !771, file: !3, line: 186, type: !48)
!778 = !DILocalVariable(name: "descriptors", scope: !771, file: !3, line: 187, type: !779)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !782, line: 7, baseType: !783)
!782 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !784, line: 49, size: 1728, elements: !785)
!784 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !801, !803, !804, !805, !809, !810, !812, !814, !817, !819, !822, !825, !826, !827, !828, !829}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !783, file: !784, line: 51, baseType: !47, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !783, file: !784, line: 54, baseType: !40, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !783, file: !784, line: 55, baseType: !40, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !783, file: !784, line: 56, baseType: !40, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !783, file: !784, line: 57, baseType: !40, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !783, file: !784, line: 58, baseType: !40, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !783, file: !784, line: 59, baseType: !40, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !783, file: !784, line: 60, baseType: !40, size: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !783, file: !784, line: 61, baseType: !40, size: 64, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !783, file: !784, line: 64, baseType: !40, size: 64, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !783, file: !784, line: 65, baseType: !40, size: 64, offset: 640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !783, file: !784, line: 66, baseType: !40, size: 64, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !783, file: !784, line: 68, baseType: !799, size: 64, offset: 768)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !784, line: 36, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !783, file: !784, line: 70, baseType: !802, size: 64, offset: 832)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !783, file: !784, line: 72, baseType: !47, size: 32, offset: 896)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !783, file: !784, line: 73, baseType: !47, size: 32, offset: 928)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !783, file: !784, line: 74, baseType: !806, size: 64, offset: 960)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !807, line: 150, baseType: !808)
!807 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!808 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !783, file: !784, line: 77, baseType: !153, size: 16, offset: 1024)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !783, file: !784, line: 78, baseType: !811, size: 8, offset: 1040)
!811 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !783, file: !784, line: 79, baseType: !813, size: 8, offset: 1048)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, elements: !227)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !783, file: !784, line: 81, baseType: !815, size: 64, offset: 1088)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !784, line: 43, baseType: null)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !783, file: !784, line: 89, baseType: !818, size: 64, offset: 1152)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !807, line: 151, baseType: !808)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !783, file: !784, line: 91, baseType: !820, size: 64, offset: 1216)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !784, line: 37, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !783, file: !784, line: 92, baseType: !823, size: 64, offset: 1280)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !784, line: 38, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !783, file: !784, line: 93, baseType: !802, size: 64, offset: 1344)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !783, file: !784, line: 94, baseType: !41, size: 64, offset: 1408)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !783, file: !784, line: 95, baseType: !48, size: 64, offset: 1472)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !783, file: !784, line: 96, baseType: !47, size: 32, offset: 1536)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !783, file: !784, line: 98, baseType: !830, size: 160, offset: 1568)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 160, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 20)
!833 = !DILocalVariable(name: "bytes_read", scope: !771, file: !3, line: 189, type: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !835, line: 108, baseType: !836)
!835 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !807, line: 191, baseType: !808)
!837 = !DILocalVariable(name: "i", scope: !771, file: !3, line: 190, type: !47)
!838 = !DILocalVariable(name: "ok", scope: !771, file: !3, line: 191, type: !55)
!839 = !DILocalVariable(name: "mode_string", scope: !771, file: !3, line: 192, type: !37)
!840 = !DILocalVariable(name: "w_errno", scope: !841, file: !3, line: 243, type: !47)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 242, column: 11)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 240, column: 13)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 239, column: 7)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 239, column: 7)
!845 = distinct !DILexicalBlock(scope: !771, file: !3, line: 230, column: 5)
!846 = !DILocalVariable(name: "fail", scope: !841, file: !3, line: 244, type: !55)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 65536, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 8192)
!850 = !DILocation(line: 188, column: 8, scope: !771, inlinedAt: !851)
!851 = distinct !DILocation(line: 172, column: 8, scope: !761)
!852 = !DILocation(line: 118, column: 11, scope: !761)
!853 = !DILocation(line: 118, column: 24, scope: !761)
!854 = !DILocation(line: 124, column: 21, scope: !761)
!855 = !DILocation(line: 124, column: 3, scope: !761)
!856 = !DILocation(line: 125, column: 3, scope: !761)
!857 = !DILocation(line: 126, column: 3, scope: !761)
!858 = !DILocation(line: 127, column: 3, scope: !761)
!859 = !DILocation(line: 129, column: 3, scope: !761)
!860 = !DILocation(line: 134, column: 3, scope: !761)
!861 = !DILocation(line: 134, column: 18, scope: !761)
!862 = !DILocation(line: 121, column: 7, scope: !761)
!863 = !DILocation(line: 140, column: 11, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 137, column: 9)
!865 = distinct !DILexicalBlock(scope: !761, file: !3, line: 135, column: 5)
!866 = !DILocation(line: 144, column: 11, scope: !864)
!867 = !DILocation(line: 147, column: 15, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !3, line: 147, column: 15)
!869 = !DILocation(line: 147, column: 15, scope: !864)
!870 = !DILocation(line: 148, column: 28, scope: !868)
!871 = !{!718, !718, i64 0}
!872 = !DILocation(line: 148, column: 26, scope: !868)
!873 = !DILocation(line: 148, column: 13, scope: !868)
!874 = distinct !{!874, !860, !875}
!875 = !DILocation(line: 161, column: 5, scope: !761)
!876 = !DILocation(line: 151, column: 26, scope: !868)
!877 = !DILocation(line: 154, column: 9, scope: !864)
!878 = !DILocation(line: 156, column: 9, scope: !864)
!879 = !DILocation(line: 159, column: 11, scope: !864)
!880 = !DILocation(line: 163, column: 7, scope: !761)
!881 = !DILocation(line: 164, column: 5, scope: !882)
!882 = distinct !DILexicalBlock(scope: !761, file: !3, line: 163, column: 7)
!883 = !DILocation(line: 166, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !761, file: !3, line: 166, column: 7)
!885 = !DILocation(line: 166, column: 20, scope: !884)
!886 = !DILocation(line: 166, column: 7, scope: !761)
!887 = !DILocation(line: 167, column: 5, scope: !884)
!888 = !DILocation(line: 172, column: 26, scope: !761)
!889 = !{!890, !890, i64 0}
!890 = !{!"int", !718, i64 0}
!891 = !DILocation(line: 172, column: 24, scope: !761)
!892 = !DILocation(line: 184, column: 16, scope: !771, inlinedAt: !851)
!893 = !DILocation(line: 186, column: 10, scope: !771, inlinedAt: !851)
!894 = !DILocation(line: 188, column: 3, scope: !771, inlinedAt: !851)
!895 = !DILocation(line: 189, column: 11, scope: !771, inlinedAt: !851)
!896 = !DILocation(line: 191, column: 8, scope: !771, inlinedAt: !851)
!897 = !DILocation(line: 195, column: 9, scope: !771, inlinedAt: !851)
!898 = !DILocation(line: 192, column: 15, scope: !771, inlinedAt: !851)
!899 = !DILocation(line: 199, column: 12, scope: !771, inlinedAt: !851)
!900 = !DILocation(line: 199, column: 3, scope: !771, inlinedAt: !851)
!901 = !DILocalVariable(name: "s", arg: 2, scope: !902, file: !260, line: 99, type: !48)
!902 = distinct !DISubprogram(name: "xnmalloc", scope: !260, file: !260, line: 99, type: !903, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!41, !48, !48}
!905 = !{!906, !901}
!906 = !DILocalVariable(name: "n", arg: 1, scope: !902, file: !260, line: 99, type: !48)
!907 = !DILocation(line: 99, column: 28, scope: !902, inlinedAt: !908)
!908 = distinct !DILocation(line: 204, column: 17, scope: !771, inlinedAt: !851)
!909 = !DILocation(line: 101, column: 7, scope: !910, inlinedAt: !908)
!910 = distinct !DILexicalBlock(scope: !902, file: !260, line: 101, column: 7)
!911 = !DILocation(line: 101, column: 7, scope: !902, inlinedAt: !908)
!912 = !DILocation(line: 102, column: 5, scope: !910, inlinedAt: !908)
!913 = !DILocation(line: 172, column: 35, scope: !761)
!914 = !DILocation(line: 184, column: 31, scope: !771, inlinedAt: !851)
!915 = !DILocation(line: 204, column: 34, scope: !771, inlinedAt: !851)
!916 = !DILocation(line: 204, column: 27, scope: !771, inlinedAt: !851)
!917 = !DILocation(line: 99, column: 18, scope: !902, inlinedAt: !908)
!918 = !DILocation(line: 103, column: 21, scope: !902, inlinedAt: !908)
!919 = !DILocation(line: 103, column: 10, scope: !902, inlinedAt: !908)
!920 = !DILocation(line: 204, column: 17, scope: !771, inlinedAt: !851)
!921 = !DILocation(line: 187, column: 10, scope: !771, inlinedAt: !851)
!922 = !DILocation(line: 205, column: 8, scope: !771, inlinedAt: !851)
!923 = !DILocation(line: 206, column: 20, scope: !771, inlinedAt: !851)
!924 = !DILocation(line: 206, column: 18, scope: !771, inlinedAt: !851)
!925 = !DILocation(line: 207, column: 24, scope: !771, inlinedAt: !851)
!926 = !DILocation(line: 207, column: 12, scope: !771, inlinedAt: !851)
!927 = !DILocation(line: 208, column: 12, scope: !771, inlinedAt: !851)
!928 = !DILocation(line: 208, column: 3, scope: !771, inlinedAt: !851)
!929 = !DILocation(line: 190, column: 7, scope: !771, inlinedAt: !851)
!930 = !DILocation(line: 211, column: 17, scope: !931, inlinedAt: !851)
!931 = distinct !DILexicalBlock(scope: !932, file: !3, line: 211, column: 3)
!932 = distinct !DILexicalBlock(scope: !771, file: !3, line: 211, column: 3)
!933 = !DILocation(line: 211, column: 3, scope: !932, inlinedAt: !851)
!934 = !DILocation(line: 229, column: 3, scope: !771, inlinedAt: !851)
!935 = !DILocation(line: 214, column: 31, scope: !936, inlinedAt: !851)
!936 = distinct !DILexicalBlock(scope: !931, file: !3, line: 212, column: 5)
!937 = !DILocation(line: 214, column: 24, scope: !936, inlinedAt: !851)
!938 = !DILocation(line: 214, column: 7, scope: !936, inlinedAt: !851)
!939 = !DILocation(line: 214, column: 22, scope: !936, inlinedAt: !851)
!940 = !DILocation(line: 215, column: 26, scope: !941, inlinedAt: !851)
!941 = distinct !DILexicalBlock(scope: !936, file: !3, line: 215, column: 11)
!942 = !DILocation(line: 215, column: 11, scope: !936, inlinedAt: !851)
!943 = !DILocation(line: 217, column: 18, scope: !944, inlinedAt: !851)
!944 = distinct !DILexicalBlock(scope: !941, file: !3, line: 216, column: 9)
!945 = !DILocation(line: 218, column: 18, scope: !944, inlinedAt: !851)
!946 = !DILocation(line: 219, column: 18, scope: !944, inlinedAt: !851)
!947 = !DILocation(line: 219, column: 31, scope: !944, inlinedAt: !851)
!948 = !DILocation(line: 217, column: 11, scope: !944, inlinedAt: !851)
!949 = !DILocation(line: 221, column: 9, scope: !944, inlinedAt: !851)
!950 = !DILocation(line: 224, column: 11, scope: !951, inlinedAt: !851)
!951 = distinct !DILexicalBlock(scope: !941, file: !3, line: 223, column: 9)
!952 = !DILocation(line: 225, column: 20, scope: !951, inlinedAt: !851)
!953 = !DILocation(line: 0, scope: !771, inlinedAt: !851)
!954 = !DILocation(line: 0, scope: !951, inlinedAt: !851)
!955 = !DILocation(line: 211, column: 29, scope: !931, inlinedAt: !851)
!956 = distinct !{!956, !957, !958}
!957 = !DILocation(line: 211, column: 3, scope: !932)
!958 = !DILocation(line: 227, column: 5, scope: !932)
!959 = !DILocation(line: 0, scope: !960, inlinedAt: !851)
!960 = distinct !DILexicalBlock(scope: !841, file: !3, line: 255, column: 17)
!961 = !DILocation(line: 0, scope: !841, inlinedAt: !851)
!962 = !DILocation(line: 231, column: 20, scope: !845, inlinedAt: !851)
!963 = !DILocation(line: 232, column: 22, scope: !964, inlinedAt: !851)
!964 = distinct !DILexicalBlock(scope: !845, file: !3, line: 232, column: 11)
!965 = !DILocation(line: 232, column: 26, scope: !964, inlinedAt: !851)
!966 = !DILocation(line: 232, column: 29, scope: !964, inlinedAt: !851)
!967 = !DILocation(line: 232, column: 35, scope: !964, inlinedAt: !851)
!968 = !DILocation(line: 232, column: 11, scope: !845, inlinedAt: !851)
!969 = distinct !{!969, !970, !971}
!970 = !DILocation(line: 229, column: 3, scope: !771)
!971 = !DILocation(line: 259, column: 5, scope: !771)
!972 = !DILocation(line: 234, column: 22, scope: !973, inlinedAt: !851)
!973 = distinct !DILexicalBlock(scope: !845, file: !3, line: 234, column: 11)
!974 = !DILocation(line: 234, column: 11, scope: !845, inlinedAt: !851)
!975 = !DILocation(line: 239, column: 7, scope: !844, inlinedAt: !851)
!976 = !DILocation(line: 240, column: 13, scope: !842, inlinedAt: !851)
!977 = !DILocation(line: 241, column: 13, scope: !842, inlinedAt: !851)
!978 = !DILocation(line: 241, column: 16, scope: !842, inlinedAt: !851)
!979 = !DILocation(line: 241, column: 63, scope: !842, inlinedAt: !851)
!980 = !DILocation(line: 240, column: 13, scope: !843, inlinedAt: !851)
!981 = !DILocation(line: 243, column: 27, scope: !841, inlinedAt: !851)
!982 = !DILocation(line: 243, column: 17, scope: !841, inlinedAt: !851)
!983 = !DILocation(line: 244, column: 31, scope: !841, inlinedAt: !851)
!984 = !DILocation(line: 244, column: 40, scope: !841, inlinedAt: !851)
!985 = !DILocation(line: 244, column: 44, scope: !841, inlinedAt: !851)
!986 = !DILocation(line: 245, column: 43, scope: !841, inlinedAt: !851)
!987 = !DILocation(line: 246, column: 35, scope: !988, inlinedAt: !851)
!988 = distinct !DILexicalBlock(scope: !841, file: !3, line: 246, column: 17)
!989 = !DILocation(line: 246, column: 32, scope: !988, inlinedAt: !851)
!990 = !DILocation(line: 246, column: 17, scope: !841, inlinedAt: !851)
!991 = !DILocation(line: 247, column: 15, scope: !988, inlinedAt: !851)
!992 = !DILocation(line: 248, column: 17, scope: !841, inlinedAt: !851)
!993 = !DILocation(line: 250, column: 24, scope: !994, inlinedAt: !851)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 249, column: 15)
!995 = distinct !DILexicalBlock(scope: !841, file: !3, line: 248, column: 17)
!996 = !DILocation(line: 251, column: 24, scope: !994, inlinedAt: !851)
!997 = !DILocation(line: 252, column: 39, scope: !994, inlinedAt: !851)
!998 = !DILocation(line: 250, column: 17, scope: !994, inlinedAt: !851)
!999 = !DILocation(line: 253, column: 15, scope: !994, inlinedAt: !851)
!1000 = !DILocation(line: 254, column: 28, scope: !841, inlinedAt: !851)
!1001 = !DILocation(line: 255, column: 17, scope: !841, inlinedAt: !851)
!1002 = !DILocation(line: 257, column: 22, scope: !841, inlinedAt: !851)
!1003 = !DILocation(line: 258, column: 11, scope: !841, inlinedAt: !851)
!1004 = !DILocation(line: 239, column: 33, scope: !843, inlinedAt: !851)
!1005 = !DILocation(line: 239, column: 21, scope: !843, inlinedAt: !851)
!1006 = distinct !{!1006, !1007, !1008}
!1007 = !DILocation(line: 239, column: 7, scope: !844)
!1008 = !DILocation(line: 258, column: 11, scope: !844)
!1009 = !DILocation(line: 261, column: 18, scope: !1010, inlinedAt: !851)
!1010 = distinct !DILexicalBlock(scope: !771, file: !3, line: 261, column: 7)
!1011 = !DILocation(line: 261, column: 7, scope: !771, inlinedAt: !851)
!1012 = !DILocation(line: 263, column: 17, scope: !1013, inlinedAt: !851)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 262, column: 5)
!1014 = !DILocation(line: 263, column: 24, scope: !1013, inlinedAt: !851)
!1015 = !DILocation(line: 263, column: 7, scope: !1013, inlinedAt: !851)
!1016 = !DILocation(line: 265, column: 5, scope: !1013, inlinedAt: !851)
!1017 = !DILocation(line: 268, column: 3, scope: !1018, inlinedAt: !851)
!1018 = distinct !DILexicalBlock(scope: !771, file: !3, line: 268, column: 3)
!1019 = !DILocation(line: 269, column: 9, scope: !1020, inlinedAt: !851)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 269, column: 9)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 268, column: 3)
!1022 = !DILocation(line: 269, column: 24, scope: !1020, inlinedAt: !851)
!1023 = !DILocation(line: 269, column: 27, scope: !1020, inlinedAt: !851)
!1024 = !DILocation(line: 269, column: 51, scope: !1020, inlinedAt: !851)
!1025 = !DILocation(line: 269, column: 9, scope: !1021, inlinedAt: !851)
!1026 = !DILocation(line: 271, column: 19, scope: !1027, inlinedAt: !851)
!1027 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 270, column: 7)
!1028 = !DILocation(line: 271, column: 32, scope: !1027, inlinedAt: !851)
!1029 = !DILocation(line: 271, column: 9, scope: !1027, inlinedAt: !851)
!1030 = !DILocation(line: 273, column: 7, scope: !1027, inlinedAt: !851)
!1031 = !DILocation(line: 0, scope: !1013, inlinedAt: !851)
!1032 = !DILocation(line: 268, column: 29, scope: !1021, inlinedAt: !851)
!1033 = !DILocation(line: 268, column: 17, scope: !1021, inlinedAt: !851)
!1034 = distinct !{!1034, !1035, !1036}
!1035 = !DILocation(line: 268, column: 3, scope: !1018)
!1036 = !DILocation(line: 273, column: 7, scope: !1018)
!1037 = !DILocation(line: 0, scope: !1027, inlinedAt: !851)
!1038 = !DILocation(line: 275, column: 3, scope: !771, inlinedAt: !851)
!1039 = !DILocation(line: 278, column: 1, scope: !771, inlinedAt: !851)
!1040 = !DILocation(line: 173, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !761, file: !3, line: 173, column: 7)
!1042 = !DILocation(line: 173, column: 28, scope: !1041)
!1043 = !DILocation(line: 173, column: 7, scope: !761)
!1044 = !DILocation(line: 174, column: 5, scope: !1041)
!1045 = !DILocation(line: 277, column: 10, scope: !771, inlinedAt: !851)
!1046 = !DILocation(line: 176, column: 10, scope: !761)
!1047 = !DILocation(line: 177, column: 1, scope: !761)
!1048 = distinct !DISubprogram(name: "__argmatch_die", scope: !99, file: !99, line: 62, type: !103, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !93, retainedNodes: !89)
!1049 = !DILocation(line: 64, column: 3, scope: !1048)
!1050 = !DILocation(line: 65, column: 1, scope: !1048)
!1051 = distinct !DISubprogram(name: "argmatch", scope: !99, file: !99, line: 84, type: !1052, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !93, retainedNodes: !1056)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!1054, !37, !1055, !37, !48}
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !49, line: 51, baseType: !808)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064}
!1057 = !DILocalVariable(name: "arg", arg: 1, scope: !1051, file: !99, line: 84, type: !37)
!1058 = !DILocalVariable(name: "arglist", arg: 2, scope: !1051, file: !99, line: 84, type: !1055)
!1059 = !DILocalVariable(name: "vallist", arg: 3, scope: !1051, file: !99, line: 85, type: !37)
!1060 = !DILocalVariable(name: "valsize", arg: 4, scope: !1051, file: !99, line: 85, type: !48)
!1061 = !DILocalVariable(name: "i", scope: !1051, file: !99, line: 87, type: !48)
!1062 = !DILocalVariable(name: "arglen", scope: !1051, file: !99, line: 88, type: !48)
!1063 = !DILocalVariable(name: "matchind", scope: !1051, file: !99, line: 89, type: !1054)
!1064 = !DILocalVariable(name: "ambiguous", scope: !1051, file: !99, line: 90, type: !55)
!1065 = !DILocation(line: 84, column: 23, scope: !1051)
!1066 = !DILocation(line: 84, column: 47, scope: !1051)
!1067 = !DILocation(line: 85, column: 23, scope: !1051)
!1068 = !DILocation(line: 85, column: 39, scope: !1051)
!1069 = !DILocation(line: 89, column: 13, scope: !1051)
!1070 = !DILocation(line: 90, column: 8, scope: !1051)
!1071 = !DILocation(line: 92, column: 12, scope: !1051)
!1072 = !DILocation(line: 88, column: 10, scope: !1051)
!1073 = !DILocation(line: 87, column: 10, scope: !1051)
!1074 = !DILocation(line: 95, column: 15, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !99, line: 95, column: 3)
!1076 = distinct !DILexicalBlock(scope: !1051, file: !99, line: 95, column: 3)
!1077 = !DILocation(line: 95, column: 3, scope: !1076)
!1078 = !DILocation(line: 97, column: 12, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !99, line: 97, column: 11)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !99, line: 96, column: 5)
!1081 = !DILocation(line: 97, column: 11, scope: !1080)
!1082 = !DILocation(line: 99, column: 15, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !99, line: 99, column: 15)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !99, line: 98, column: 9)
!1085 = !DILocation(line: 99, column: 35, scope: !1083)
!1086 = !DILocation(line: 99, column: 15, scope: !1084)
!1087 = !DILocation(line: 102, column: 29, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !99, line: 102, column: 20)
!1089 = !DILocation(line: 102, column: 20, scope: !1083)
!1090 = !DILocation(line: 109, column: 19, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !99, line: 108, column: 19)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !99, line: 106, column: 13)
!1093 = !DILocation(line: 109, column: 48, scope: !1091)
!1094 = !DILocation(line: 109, column: 38, scope: !1091)
!1095 = !DILocation(line: 110, column: 48, scope: !1091)
!1096 = !DILocation(line: 110, column: 38, scope: !1091)
!1097 = !DILocation(line: 109, column: 22, scope: !1091)
!1098 = !DILocation(line: 108, column: 19, scope: !1092)
!1099 = !DILocation(line: 115, column: 17, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1091, file: !99, line: 111, column: 17)
!1101 = !DILocation(line: 0, scope: !1051)
!1102 = !DILocation(line: 95, column: 28, scope: !1075)
!1103 = distinct !{!1103, !1077, !1104}
!1104 = !DILocation(line: 118, column: 5, scope: !1076)
!1105 = !DILocation(line: 119, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1051, file: !99, line: 119, column: 7)
!1107 = !DILocation(line: 122, column: 5, scope: !1106)
!1108 = !DILocation(line: 0, scope: !1106)
!1109 = !DILocation(line: 123, column: 1, scope: !1051)
!1110 = distinct !DISubprogram(name: "argmatch_invalid", scope: !99, file: !99, line: 131, type: !1111, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !93, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !37, !37, !1054}
!1113 = !{!1114, !1115, !1116, !1117}
!1114 = !DILocalVariable(name: "context", arg: 1, scope: !1110, file: !99, line: 131, type: !37)
!1115 = !DILocalVariable(name: "value", arg: 2, scope: !1110, file: !99, line: 131, type: !37)
!1116 = !DILocalVariable(name: "problem", arg: 3, scope: !1110, file: !99, line: 131, type: !1054)
!1117 = !DILocalVariable(name: "format", scope: !1110, file: !99, line: 133, type: !37)
!1118 = !DILocation(line: 131, column: 31, scope: !1110)
!1119 = !DILocation(line: 131, column: 52, scope: !1110)
!1120 = !DILocation(line: 131, column: 69, scope: !1110)
!1121 = !DILocation(line: 133, column: 33, scope: !1110)
!1122 = !DILocation(line: 133, column: 25, scope: !1110)
!1123 = !DILocation(line: 0, scope: !1110)
!1124 = !DILocation(line: 133, column: 15, scope: !1110)
!1125 = !DILocation(line: 137, column: 24, scope: !1110)
!1126 = !DILocation(line: 138, column: 10, scope: !1110)
!1127 = !DILocation(line: 137, column: 3, scope: !1110)
!1128 = !DILocation(line: 139, column: 1, scope: !1110)
!1129 = distinct !DISubprogram(name: "argmatch_valid", scope: !99, file: !99, line: 146, type: !1130, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !93, retainedNodes: !1132)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !1055, !37, !48}
!1132 = !{!1133, !1134, !1135, !1136, !1137}
!1133 = !DILocalVariable(name: "arglist", arg: 1, scope: !1129, file: !99, line: 146, type: !1055)
!1134 = !DILocalVariable(name: "vallist", arg: 2, scope: !1129, file: !99, line: 147, type: !37)
!1135 = !DILocalVariable(name: "valsize", arg: 3, scope: !1129, file: !99, line: 147, type: !48)
!1136 = !DILocalVariable(name: "i", scope: !1129, file: !99, line: 149, type: !48)
!1137 = !DILocalVariable(name: "last_val", scope: !1129, file: !99, line: 150, type: !37)
!1138 = !DILocation(line: 146, column: 36, scope: !1129)
!1139 = !DILocation(line: 147, column: 29, scope: !1129)
!1140 = !DILocation(line: 147, column: 45, scope: !1129)
!1141 = !DILocation(line: 150, column: 15, scope: !1129)
!1142 = !DILocation(line: 154, column: 3, scope: !1129)
!1143 = !DILocation(line: 149, column: 10, scope: !1129)
!1144 = !DILocation(line: 155, column: 15, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !99, line: 155, column: 3)
!1146 = distinct !DILexicalBlock(scope: !1129, file: !99, line: 155, column: 3)
!1147 = !DILocation(line: 155, column: 3, scope: !1146)
!1148 = !DILocation(line: 156, column: 12, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !99, line: 156, column: 9)
!1150 = !DILocation(line: 0, scope: !1149)
!1151 = !DILocation(line: 157, column: 9, scope: !1149)
!1152 = !DILocation(line: 157, column: 12, scope: !1149)
!1153 = !DILocation(line: 156, column: 9, scope: !1145)
!1154 = !DILocation(line: 159, column: 9, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1149, file: !99, line: 158, column: 7)
!1156 = !DILocation(line: 161, column: 7, scope: !1155)
!1157 = !DILocation(line: 164, column: 9, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1149, file: !99, line: 163, column: 7)
!1159 = !DILocation(line: 0, scope: !1129)
!1160 = !DILocation(line: 155, column: 28, scope: !1145)
!1161 = distinct !{!1161, !1147, !1162}
!1162 = !DILocation(line: 165, column: 7, scope: !1146)
!1163 = !DILocation(line: 166, column: 3, scope: !1129)
!1164 = !DILocalVariable(name: "__c", arg: 1, scope: !1165, file: !1166, line: 101, type: !47)
!1165 = distinct !DISubprogram(name: "putc_unlocked", scope: !1166, file: !1166, line: 101, type: !1167, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !93, retainedNodes: !1203)
!1166 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!47, !47, !1169}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !782, line: 7, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !784, line: 49, size: 1728, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1171, file: !784, line: 51, baseType: !47, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1171, file: !784, line: 54, baseType: !40, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1171, file: !784, line: 55, baseType: !40, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1171, file: !784, line: 56, baseType: !40, size: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1171, file: !784, line: 57, baseType: !40, size: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1171, file: !784, line: 58, baseType: !40, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1171, file: !784, line: 59, baseType: !40, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1171, file: !784, line: 60, baseType: !40, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1171, file: !784, line: 61, baseType: !40, size: 64, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1171, file: !784, line: 64, baseType: !40, size: 64, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1171, file: !784, line: 65, baseType: !40, size: 64, offset: 640)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1171, file: !784, line: 66, baseType: !40, size: 64, offset: 704)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1171, file: !784, line: 68, baseType: !799, size: 64, offset: 768)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1171, file: !784, line: 70, baseType: !1187, size: 64, offset: 832)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1171, file: !784, line: 72, baseType: !47, size: 32, offset: 896)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1171, file: !784, line: 73, baseType: !47, size: 32, offset: 928)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1171, file: !784, line: 74, baseType: !806, size: 64, offset: 960)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1171, file: !784, line: 77, baseType: !153, size: 16, offset: 1024)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1171, file: !784, line: 78, baseType: !811, size: 8, offset: 1040)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1171, file: !784, line: 79, baseType: !813, size: 8, offset: 1048)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1171, file: !784, line: 81, baseType: !815, size: 64, offset: 1088)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1171, file: !784, line: 89, baseType: !818, size: 64, offset: 1152)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1171, file: !784, line: 91, baseType: !820, size: 64, offset: 1216)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1171, file: !784, line: 92, baseType: !823, size: 64, offset: 1280)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1171, file: !784, line: 93, baseType: !1187, size: 64, offset: 1344)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1171, file: !784, line: 94, baseType: !41, size: 64, offset: 1408)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1171, file: !784, line: 95, baseType: !48, size: 64, offset: 1472)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1171, file: !784, line: 96, baseType: !47, size: 32, offset: 1536)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1171, file: !784, line: 98, baseType: !830, size: 160, offset: 1568)
!1203 = !{!1164, !1204}
!1204 = !DILocalVariable(name: "__stream", arg: 2, scope: !1165, file: !1166, line: 101, type: !1169)
!1205 = !DILocation(line: 101, column: 20, scope: !1165, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 166, column: 3, scope: !1129)
!1207 = !DILocation(line: 101, column: 31, scope: !1165, inlinedAt: !1206)
!1208 = !DILocation(line: 103, column: 10, scope: !1165, inlinedAt: !1206)
!1209 = !{!1210, !717, i64 40}
!1210 = !{!"_IO_FILE", !890, i64 0, !717, i64 8, !717, i64 16, !717, i64 24, !717, i64 32, !717, i64 40, !717, i64 48, !717, i64 56, !717, i64 64, !717, i64 72, !717, i64 80, !717, i64 88, !717, i64 96, !717, i64 104, !890, i64 112, !890, i64 116, !1211, i64 120, !1212, i64 128, !718, i64 130, !718, i64 131, !717, i64 136, !1211, i64 144, !717, i64 152, !717, i64 160, !717, i64 168, !717, i64 176, !1211, i64 184, !890, i64 192, !718, i64 196}
!1211 = !{!"long", !718, i64 0}
!1212 = !{!"short", !718, i64 0}
!1213 = !{!1210, !717, i64 48}
!1214 = !{!"branch_weights", i32 2000, i32 1}
!1215 = !DILocation(line: 167, column: 1, scope: !1129)
!1216 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !99, file: !99, line: 176, type: !1217, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !93, retainedNodes: !1219)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1054, !37, !37, !1055, !37, !48, !100}
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1220 = !DILocalVariable(name: "context", arg: 1, scope: !1216, file: !99, line: 176, type: !37)
!1221 = !DILocalVariable(name: "arg", arg: 2, scope: !1216, file: !99, line: 177, type: !37)
!1222 = !DILocalVariable(name: "arglist", arg: 3, scope: !1216, file: !99, line: 177, type: !1055)
!1223 = !DILocalVariable(name: "vallist", arg: 4, scope: !1216, file: !99, line: 178, type: !37)
!1224 = !DILocalVariable(name: "valsize", arg: 5, scope: !1216, file: !99, line: 178, type: !48)
!1225 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1216, file: !99, line: 179, type: !100)
!1226 = !DILocalVariable(name: "res", scope: !1216, file: !99, line: 181, type: !1054)
!1227 = !DILocation(line: 176, column: 35, scope: !1216)
!1228 = !DILocation(line: 177, column: 35, scope: !1216)
!1229 = !DILocation(line: 177, column: 59, scope: !1216)
!1230 = !DILocation(line: 178, column: 35, scope: !1216)
!1231 = !DILocation(line: 178, column: 51, scope: !1216)
!1232 = !DILocation(line: 179, column: 40, scope: !1216)
!1233 = !DILocation(line: 84, column: 23, scope: !1051, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 181, column: 19, scope: !1216)
!1235 = !DILocation(line: 84, column: 47, scope: !1051, inlinedAt: !1234)
!1236 = !DILocation(line: 85, column: 23, scope: !1051, inlinedAt: !1234)
!1237 = !DILocation(line: 85, column: 39, scope: !1051, inlinedAt: !1234)
!1238 = !DILocation(line: 89, column: 13, scope: !1051, inlinedAt: !1234)
!1239 = !DILocation(line: 90, column: 8, scope: !1051, inlinedAt: !1234)
!1240 = !DILocation(line: 92, column: 12, scope: !1051, inlinedAt: !1234)
!1241 = !DILocation(line: 88, column: 10, scope: !1051, inlinedAt: !1234)
!1242 = !DILocation(line: 87, column: 10, scope: !1051, inlinedAt: !1234)
!1243 = !DILocation(line: 95, column: 15, scope: !1075, inlinedAt: !1234)
!1244 = !DILocation(line: 95, column: 3, scope: !1076, inlinedAt: !1234)
!1245 = !DILocation(line: 97, column: 12, scope: !1079, inlinedAt: !1234)
!1246 = !DILocation(line: 97, column: 11, scope: !1080, inlinedAt: !1234)
!1247 = !DILocation(line: 99, column: 15, scope: !1083, inlinedAt: !1234)
!1248 = !DILocation(line: 99, column: 35, scope: !1083, inlinedAt: !1234)
!1249 = !DILocation(line: 99, column: 15, scope: !1084, inlinedAt: !1234)
!1250 = !DILocation(line: 102, column: 29, scope: !1088, inlinedAt: !1234)
!1251 = !DILocation(line: 102, column: 20, scope: !1083, inlinedAt: !1234)
!1252 = !DILocation(line: 109, column: 19, scope: !1091, inlinedAt: !1234)
!1253 = !DILocation(line: 109, column: 48, scope: !1091, inlinedAt: !1234)
!1254 = !DILocation(line: 109, column: 38, scope: !1091, inlinedAt: !1234)
!1255 = !DILocation(line: 110, column: 48, scope: !1091, inlinedAt: !1234)
!1256 = !DILocation(line: 110, column: 38, scope: !1091, inlinedAt: !1234)
!1257 = !DILocation(line: 109, column: 22, scope: !1091, inlinedAt: !1234)
!1258 = !DILocation(line: 108, column: 19, scope: !1092, inlinedAt: !1234)
!1259 = !DILocation(line: 115, column: 17, scope: !1100, inlinedAt: !1234)
!1260 = !DILocation(line: 0, scope: !1051, inlinedAt: !1234)
!1261 = !DILocation(line: 95, column: 28, scope: !1075, inlinedAt: !1234)
!1262 = !DILocation(line: 119, column: 7, scope: !1106, inlinedAt: !1234)
!1263 = !DILocation(line: 0, scope: !1106, inlinedAt: !1234)
!1264 = !DILocation(line: 181, column: 13, scope: !1216)
!1265 = !DILocation(line: 182, column: 11, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1216, file: !99, line: 182, column: 7)
!1267 = !DILocation(line: 182, column: 7, scope: !1216)
!1268 = !DILocation(line: 131, column: 31, scope: !1110, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 187, column: 3, scope: !1216)
!1270 = !DILocation(line: 131, column: 52, scope: !1110, inlinedAt: !1269)
!1271 = !DILocation(line: 131, column: 69, scope: !1110, inlinedAt: !1269)
!1272 = !DILocation(line: 133, column: 33, scope: !1110, inlinedAt: !1269)
!1273 = !DILocation(line: 133, column: 25, scope: !1110, inlinedAt: !1269)
!1274 = !DILocation(line: 0, scope: !1216)
!1275 = !DILocation(line: 133, column: 15, scope: !1110, inlinedAt: !1269)
!1276 = !DILocation(line: 137, column: 24, scope: !1110, inlinedAt: !1269)
!1277 = !DILocation(line: 138, column: 10, scope: !1110, inlinedAt: !1269)
!1278 = !DILocation(line: 137, column: 3, scope: !1110, inlinedAt: !1269)
!1279 = !DILocation(line: 188, column: 3, scope: !1216)
!1280 = !DILocation(line: 189, column: 3, scope: !1216)
!1281 = !DILocation(line: 191, column: 3, scope: !1216)
!1282 = !DILocation(line: 192, column: 1, scope: !1216)
!1283 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !99, file: !99, line: 197, type: !1284, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !93, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!37, !37, !1055, !37, !48}
!1286 = !{!1287, !1288, !1289, !1290, !1291}
!1287 = !DILocalVariable(name: "value", arg: 1, scope: !1283, file: !99, line: 197, type: !37)
!1288 = !DILocalVariable(name: "arglist", arg: 2, scope: !1283, file: !99, line: 198, type: !1055)
!1289 = !DILocalVariable(name: "vallist", arg: 3, scope: !1283, file: !99, line: 199, type: !37)
!1290 = !DILocalVariable(name: "valsize", arg: 4, scope: !1283, file: !99, line: 199, type: !48)
!1291 = !DILocalVariable(name: "i", scope: !1283, file: !99, line: 201, type: !48)
!1292 = !DILocation(line: 197, column: 35, scope: !1283)
!1293 = !DILocation(line: 198, column: 42, scope: !1283)
!1294 = !DILocation(line: 199, column: 35, scope: !1283)
!1295 = !DILocation(line: 199, column: 51, scope: !1283)
!1296 = !DILocation(line: 201, column: 10, scope: !1283)
!1297 = !DILocation(line: 203, column: 15, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !99, line: 203, column: 3)
!1299 = distinct !DILexicalBlock(scope: !1283, file: !99, line: 203, column: 3)
!1300 = !DILocation(line: 203, column: 3, scope: !1299)
!1301 = !DILocation(line: 204, column: 10, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !99, line: 204, column: 9)
!1303 = !DILocation(line: 204, column: 9, scope: !1298)
!1304 = distinct !{!1304, !1300, !1305}
!1305 = !DILocation(line: 205, column: 23, scope: !1299)
!1306 = !DILocation(line: 204, column: 43, scope: !1302)
!1307 = !DILocation(line: 204, column: 33, scope: !1302)
!1308 = !DILocation(line: 203, column: 28, scope: !1298)
!1309 = !DILocation(line: 207, column: 1, scope: !1283)
!1310 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !112, file: !112, line: 51, type: !691, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !107, retainedNodes: !1311)
!1311 = !{!1312}
!1312 = !DILocalVariable(name: "file", arg: 1, scope: !1310, file: !112, line: 51, type: !37)
!1313 = !DILocation(line: 51, column: 41, scope: !1310)
!1314 = !DILocation(line: 53, column: 13, scope: !1310)
!1315 = !DILocation(line: 54, column: 1, scope: !1310)
!1316 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !112, file: !112, line: 88, type: !1317, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !107, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !55}
!1319 = !{!1320}
!1320 = !DILocalVariable(name: "ignore", arg: 1, scope: !1316, file: !112, line: 88, type: !55)
!1321 = !DILocation(line: 88, column: 37, scope: !1316)
!1322 = !DILocation(line: 90, column: 16, scope: !1316)
!1323 = !{!1324, !1324, i64 0}
!1324 = !{!"_Bool", !718, i64 0}
!1325 = !DILocation(line: 91, column: 1, scope: !1316)
!1326 = distinct !DISubprogram(name: "close_stdout", scope: !112, file: !112, line: 117, type: !103, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !107, retainedNodes: !1327)
!1327 = !{!1328}
!1328 = !DILocalVariable(name: "write_error", scope: !1329, file: !112, line: 122, type: !37)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !112, line: 121, column: 5)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !112, line: 119, column: 7)
!1331 = !DILocation(line: 119, column: 21, scope: !1330)
!1332 = !DILocation(line: 119, column: 7, scope: !1330)
!1333 = !DILocation(line: 119, column: 29, scope: !1330)
!1334 = !DILocation(line: 120, column: 7, scope: !1330)
!1335 = !DILocation(line: 120, column: 12, scope: !1330)
!1336 = !{i8 0, i8 2}
!1337 = !DILocation(line: 120, column: 25, scope: !1330)
!1338 = !DILocation(line: 120, column: 28, scope: !1330)
!1339 = !DILocation(line: 120, column: 34, scope: !1330)
!1340 = !DILocation(line: 119, column: 7, scope: !1326)
!1341 = !DILocation(line: 122, column: 33, scope: !1329)
!1342 = !DILocation(line: 122, column: 19, scope: !1329)
!1343 = !DILocation(line: 123, column: 11, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1329, file: !112, line: 123, column: 11)
!1345 = !DILocation(line: 0, scope: !1344)
!1346 = !DILocation(line: 123, column: 11, scope: !1329)
!1347 = !DILocation(line: 124, column: 36, scope: !1344)
!1348 = !DILocation(line: 124, column: 9, scope: !1344)
!1349 = !DILocation(line: 127, column: 9, scope: !1344)
!1350 = !DILocation(line: 129, column: 14, scope: !1329)
!1351 = !DILocation(line: 129, column: 7, scope: !1329)
!1352 = !DILocation(line: 134, column: 42, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1326, file: !112, line: 134, column: 7)
!1354 = !DILocation(line: 134, column: 28, scope: !1353)
!1355 = !DILocation(line: 134, column: 50, scope: !1353)
!1356 = !DILocation(line: 134, column: 7, scope: !1326)
!1357 = !DILocation(line: 135, column: 12, scope: !1353)
!1358 = !DILocation(line: 135, column: 5, scope: !1353)
!1359 = !DILocation(line: 136, column: 1, scope: !1326)
!1360 = distinct !DISubprogram(name: "fdadvise", scope: !1361, file: !1361, line: 31, type: !1362, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !1367)
!1361 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1362 = !DISubroutineType(types: !1363)
!1363 = !{null, !47, !1364, !1364, !1366}
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1365, line: 63, baseType: !806)
!1365 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !14, line: 52, baseType: !13)
!1367 = !{!1368, !1369, !1370, !1371, !1372}
!1368 = !DILocalVariable(name: "fd", arg: 1, scope: !1360, file: !1361, line: 31, type: !47)
!1369 = !DILocalVariable(name: "offset", arg: 2, scope: !1360, file: !1361, line: 31, type: !1364)
!1370 = !DILocalVariable(name: "len", arg: 3, scope: !1360, file: !1361, line: 31, type: !1364)
!1371 = !DILocalVariable(name: "advice", arg: 4, scope: !1360, file: !1361, line: 31, type: !1366)
!1372 = !DILocalVariable(name: "__x", scope: !1373, file: !1361, line: 34, type: !47)
!1373 = distinct !DILexicalBlock(scope: !1360, file: !1361, line: 34, column: 3)
!1374 = !DILocation(line: 31, column: 15, scope: !1360)
!1375 = !DILocation(line: 31, column: 25, scope: !1360)
!1376 = !DILocation(line: 31, column: 39, scope: !1360)
!1377 = !DILocation(line: 31, column: 54, scope: !1360)
!1378 = !DILocation(line: 34, column: 3, scope: !1373)
!1379 = !DILocation(line: 36, column: 1, scope: !1360)
!1380 = distinct !DISubprogram(name: "fadvise", scope: !1361, file: !1361, line: 39, type: !1381, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !1417)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1383, !1366}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !782, line: 7, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !784, line: 49, size: 1728, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1385, file: !784, line: 51, baseType: !47, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1385, file: !784, line: 54, baseType: !40, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1385, file: !784, line: 55, baseType: !40, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1385, file: !784, line: 56, baseType: !40, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1385, file: !784, line: 57, baseType: !40, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1385, file: !784, line: 58, baseType: !40, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1385, file: !784, line: 59, baseType: !40, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1385, file: !784, line: 60, baseType: !40, size: 64, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1385, file: !784, line: 61, baseType: !40, size: 64, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1385, file: !784, line: 64, baseType: !40, size: 64, offset: 576)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1385, file: !784, line: 65, baseType: !40, size: 64, offset: 640)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1385, file: !784, line: 66, baseType: !40, size: 64, offset: 704)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1385, file: !784, line: 68, baseType: !799, size: 64, offset: 768)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1385, file: !784, line: 70, baseType: !1401, size: 64, offset: 832)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1385, file: !784, line: 72, baseType: !47, size: 32, offset: 896)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1385, file: !784, line: 73, baseType: !47, size: 32, offset: 928)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1385, file: !784, line: 74, baseType: !806, size: 64, offset: 960)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1385, file: !784, line: 77, baseType: !153, size: 16, offset: 1024)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1385, file: !784, line: 78, baseType: !811, size: 8, offset: 1040)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1385, file: !784, line: 79, baseType: !813, size: 8, offset: 1048)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1385, file: !784, line: 81, baseType: !815, size: 64, offset: 1088)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1385, file: !784, line: 89, baseType: !818, size: 64, offset: 1152)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1385, file: !784, line: 91, baseType: !820, size: 64, offset: 1216)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1385, file: !784, line: 92, baseType: !823, size: 64, offset: 1280)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1385, file: !784, line: 93, baseType: !1401, size: 64, offset: 1344)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1385, file: !784, line: 94, baseType: !41, size: 64, offset: 1408)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1385, file: !784, line: 95, baseType: !48, size: 64, offset: 1472)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1385, file: !784, line: 96, baseType: !47, size: 32, offset: 1536)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1385, file: !784, line: 98, baseType: !830, size: 160, offset: 1568)
!1417 = !{!1418, !1419}
!1418 = !DILocalVariable(name: "fp", arg: 1, scope: !1380, file: !1361, line: 39, type: !1383)
!1419 = !DILocalVariable(name: "advice", arg: 2, scope: !1380, file: !1361, line: 39, type: !1366)
!1420 = !DILocation(line: 39, column: 16, scope: !1380)
!1421 = !DILocation(line: 39, column: 30, scope: !1380)
!1422 = !DILocation(line: 41, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1380, file: !1361, line: 41, column: 7)
!1424 = !DILocation(line: 41, column: 7, scope: !1380)
!1425 = !DILocation(line: 42, column: 15, scope: !1423)
!1426 = !DILocation(line: 31, column: 15, scope: !1360, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 42, column: 5, scope: !1423)
!1428 = !DILocation(line: 31, column: 25, scope: !1360, inlinedAt: !1427)
!1429 = !DILocation(line: 31, column: 39, scope: !1360, inlinedAt: !1427)
!1430 = !DILocation(line: 31, column: 54, scope: !1360, inlinedAt: !1427)
!1431 = !DILocation(line: 34, column: 3, scope: !1373, inlinedAt: !1427)
!1432 = !DILocation(line: 42, column: 5, scope: !1423)
!1433 = !DILocation(line: 43, column: 1, scope: !1380)
!1434 = distinct !DISubprogram(name: "fopen_safer", scope: !1435, file: !1435, line: 31, type: !1436, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !244, retainedNodes: !1472)
!1435 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1438, !37, !37}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !782, line: 7, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !784, line: 49, size: 1728, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1440, file: !784, line: 51, baseType: !47, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1440, file: !784, line: 54, baseType: !40, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1440, file: !784, line: 55, baseType: !40, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1440, file: !784, line: 56, baseType: !40, size: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1440, file: !784, line: 57, baseType: !40, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1440, file: !784, line: 58, baseType: !40, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1440, file: !784, line: 59, baseType: !40, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1440, file: !784, line: 60, baseType: !40, size: 64, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1440, file: !784, line: 61, baseType: !40, size: 64, offset: 512)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1440, file: !784, line: 64, baseType: !40, size: 64, offset: 576)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1440, file: !784, line: 65, baseType: !40, size: 64, offset: 640)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1440, file: !784, line: 66, baseType: !40, size: 64, offset: 704)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1440, file: !784, line: 68, baseType: !799, size: 64, offset: 768)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1440, file: !784, line: 70, baseType: !1456, size: 64, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1440, file: !784, line: 72, baseType: !47, size: 32, offset: 896)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1440, file: !784, line: 73, baseType: !47, size: 32, offset: 928)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1440, file: !784, line: 74, baseType: !806, size: 64, offset: 960)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1440, file: !784, line: 77, baseType: !153, size: 16, offset: 1024)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1440, file: !784, line: 78, baseType: !811, size: 8, offset: 1040)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1440, file: !784, line: 79, baseType: !813, size: 8, offset: 1048)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1440, file: !784, line: 81, baseType: !815, size: 64, offset: 1088)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1440, file: !784, line: 89, baseType: !818, size: 64, offset: 1152)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1440, file: !784, line: 91, baseType: !820, size: 64, offset: 1216)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1440, file: !784, line: 92, baseType: !823, size: 64, offset: 1280)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1440, file: !784, line: 93, baseType: !1456, size: 64, offset: 1344)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1440, file: !784, line: 94, baseType: !41, size: 64, offset: 1408)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1440, file: !784, line: 95, baseType: !48, size: 64, offset: 1472)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1440, file: !784, line: 96, baseType: !47, size: 32, offset: 1536)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1440, file: !784, line: 98, baseType: !830, size: 160, offset: 1568)
!1472 = !{!1473, !1474, !1475, !1476, !1479, !1482, !1485}
!1473 = !DILocalVariable(name: "file", arg: 1, scope: !1434, file: !1435, line: 31, type: !37)
!1474 = !DILocalVariable(name: "mode", arg: 2, scope: !1434, file: !1435, line: 31, type: !37)
!1475 = !DILocalVariable(name: "fp", scope: !1434, file: !1435, line: 33, type: !1438)
!1476 = !DILocalVariable(name: "fd", scope: !1477, file: !1435, line: 37, type: !47)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !1435, line: 36, column: 5)
!1478 = distinct !DILexicalBlock(scope: !1434, file: !1435, line: 35, column: 7)
!1479 = !DILocalVariable(name: "f", scope: !1480, file: !1435, line: 41, type: !47)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !1435, line: 40, column: 9)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !1435, line: 39, column: 11)
!1482 = !DILocalVariable(name: "e", scope: !1483, file: !1435, line: 45, type: !47)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !1435, line: 44, column: 13)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !1435, line: 43, column: 15)
!1485 = !DILocalVariable(name: "e", scope: !1486, file: !1435, line: 54, type: !47)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !1435, line: 53, column: 13)
!1487 = distinct !DILexicalBlock(scope: !1480, file: !1435, line: 51, column: 15)
!1488 = !DILocation(line: 31, column: 26, scope: !1434)
!1489 = !DILocation(line: 31, column: 44, scope: !1434)
!1490 = !DILocation(line: 33, column: 14, scope: !1434)
!1491 = !DILocation(line: 33, column: 9, scope: !1434)
!1492 = !DILocation(line: 35, column: 7, scope: !1478)
!1493 = !DILocation(line: 35, column: 7, scope: !1434)
!1494 = !DILocation(line: 37, column: 16, scope: !1477)
!1495 = !DILocation(line: 37, column: 11, scope: !1477)
!1496 = !DILocation(line: 39, column: 19, scope: !1481)
!1497 = !DILocation(line: 41, column: 19, scope: !1480)
!1498 = !DILocation(line: 41, column: 15, scope: !1480)
!1499 = !DILocation(line: 43, column: 17, scope: !1484)
!1500 = !DILocation(line: 43, column: 15, scope: !1480)
!1501 = !DILocation(line: 45, column: 23, scope: !1483)
!1502 = !DILocation(line: 45, column: 19, scope: !1483)
!1503 = !DILocation(line: 46, column: 15, scope: !1483)
!1504 = !DILocation(line: 47, column: 21, scope: !1483)
!1505 = !DILocation(line: 51, column: 15, scope: !1487)
!1506 = !DILocation(line: 51, column: 27, scope: !1487)
!1507 = !DILocation(line: 52, column: 15, scope: !1487)
!1508 = !DILocation(line: 52, column: 26, scope: !1487)
!1509 = !DILocation(line: 52, column: 24, scope: !1487)
!1510 = !DILocation(line: 51, column: 15, scope: !1480)
!1511 = !DILocation(line: 54, column: 23, scope: !1486)
!1512 = !DILocation(line: 54, column: 19, scope: !1486)
!1513 = !DILocation(line: 55, column: 15, scope: !1486)
!1514 = !DILocation(line: 56, column: 21, scope: !1486)
!1515 = !DILocation(line: 0, scope: !1483)
!1516 = !DILocation(line: 63, column: 1, scope: !1434)
!1517 = distinct !DISubprogram(name: "set_program_name", scope: !126, file: !126, line: 39, type: !691, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !1518)
!1518 = !{!1519, !1520, !1521}
!1519 = !DILocalVariable(name: "argv0", arg: 1, scope: !1517, file: !126, line: 39, type: !37)
!1520 = !DILocalVariable(name: "slash", scope: !1517, file: !126, line: 46, type: !37)
!1521 = !DILocalVariable(name: "base", scope: !1517, file: !126, line: 47, type: !37)
!1522 = !DILocation(line: 39, column: 31, scope: !1517)
!1523 = !DILocation(line: 51, column: 13, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1517, file: !126, line: 51, column: 7)
!1525 = !DILocation(line: 51, column: 7, scope: !1517)
!1526 = !DILocation(line: 55, column: 14, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !126, line: 52, column: 5)
!1528 = !DILocation(line: 54, column: 7, scope: !1527)
!1529 = !DILocation(line: 56, column: 7, scope: !1527)
!1530 = !DILocation(line: 59, column: 11, scope: !1517)
!1531 = !DILocation(line: 46, column: 15, scope: !1517)
!1532 = !DILocation(line: 60, column: 17, scope: !1517)
!1533 = !DILocation(line: 60, column: 33, scope: !1517)
!1534 = !DILocation(line: 60, column: 11, scope: !1517)
!1535 = !DILocation(line: 47, column: 15, scope: !1517)
!1536 = !DILocation(line: 61, column: 12, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1517, file: !126, line: 61, column: 7)
!1538 = !DILocation(line: 61, column: 20, scope: !1537)
!1539 = !DILocation(line: 61, column: 25, scope: !1537)
!1540 = !DILocation(line: 61, column: 42, scope: !1537)
!1541 = !DILocation(line: 61, column: 28, scope: !1537)
!1542 = !DILocation(line: 61, column: 61, scope: !1537)
!1543 = !DILocation(line: 61, column: 7, scope: !1517)
!1544 = !DILocation(line: 64, column: 11, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !126, line: 64, column: 11)
!1546 = distinct !DILexicalBlock(scope: !1537, file: !126, line: 62, column: 5)
!1547 = !DILocation(line: 64, column: 36, scope: !1545)
!1548 = !DILocation(line: 64, column: 11, scope: !1546)
!1549 = !DILocation(line: 66, column: 24, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1545, file: !126, line: 65, column: 9)
!1551 = !DILocation(line: 70, column: 41, scope: !1550)
!1552 = !DILocation(line: 72, column: 9, scope: !1550)
!1553 = !DILocation(line: 84, column: 16, scope: !1517)
!1554 = !DILocation(line: 90, column: 27, scope: !1517)
!1555 = !DILocation(line: 92, column: 1, scope: !1517)
!1556 = distinct !DISubprogram(name: "clone_quoting_options", scope: !157, file: !157, line: 122, type: !1557, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !1560)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!1559, !1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1560 = !{!1561, !1562, !1563}
!1561 = !DILocalVariable(name: "o", arg: 1, scope: !1556, file: !157, line: 122, type: !1559)
!1562 = !DILocalVariable(name: "e", scope: !1556, file: !157, line: 124, type: !47)
!1563 = !DILocalVariable(name: "p", scope: !1556, file: !157, line: 125, type: !1559)
!1564 = !DILocation(line: 122, column: 48, scope: !1556)
!1565 = !DILocation(line: 124, column: 11, scope: !1556)
!1566 = !DILocation(line: 124, column: 7, scope: !1556)
!1567 = !DILocation(line: 125, column: 40, scope: !1556)
!1568 = !DILocation(line: 125, column: 31, scope: !1556)
!1569 = !DILocation(line: 125, column: 27, scope: !1556)
!1570 = !DILocation(line: 127, column: 9, scope: !1556)
!1571 = !DILocation(line: 128, column: 3, scope: !1556)
!1572 = distinct !DISubprogram(name: "get_quoting_style", scope: !157, file: !157, line: 133, type: !1573, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !1577)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!22, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1577 = !{!1578}
!1578 = !DILocalVariable(name: "o", arg: 1, scope: !1572, file: !157, line: 133, type: !1575)
!1579 = !DILocation(line: 133, column: 50, scope: !1572)
!1580 = !DILocation(line: 135, column: 11, scope: !1572)
!1581 = !DILocation(line: 135, column: 46, scope: !1572)
!1582 = !{!1583, !718, i64 0}
!1583 = !{!"quoting_options", !718, i64 0, !890, i64 4, !718, i64 8, !717, i64 40, !717, i64 48}
!1584 = !DILocation(line: 135, column: 3, scope: !1572)
!1585 = distinct !DISubprogram(name: "set_quoting_style", scope: !157, file: !157, line: 141, type: !1586, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !1559, !22}
!1588 = !{!1589, !1590}
!1589 = !DILocalVariable(name: "o", arg: 1, scope: !1585, file: !157, line: 141, type: !1559)
!1590 = !DILocalVariable(name: "s", arg: 2, scope: !1585, file: !157, line: 141, type: !22)
!1591 = !DILocation(line: 141, column: 44, scope: !1585)
!1592 = !DILocation(line: 141, column: 66, scope: !1585)
!1593 = !DILocation(line: 143, column: 4, scope: !1585)
!1594 = !DILocation(line: 143, column: 39, scope: !1585)
!1595 = !DILocation(line: 143, column: 45, scope: !1585)
!1596 = !DILocation(line: 144, column: 1, scope: !1585)
!1597 = distinct !DISubprogram(name: "set_char_quoting", scope: !157, file: !157, line: 152, type: !1598, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !1600)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!47, !1559, !39, !47}
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1607, !1608}
!1601 = !DILocalVariable(name: "o", arg: 1, scope: !1597, file: !157, line: 152, type: !1559)
!1602 = !DILocalVariable(name: "c", arg: 2, scope: !1597, file: !157, line: 152, type: !39)
!1603 = !DILocalVariable(name: "i", arg: 3, scope: !1597, file: !157, line: 152, type: !47)
!1604 = !DILocalVariable(name: "uc", scope: !1597, file: !157, line: 154, type: !97)
!1605 = !DILocalVariable(name: "p", scope: !1597, file: !157, line: 155, type: !1606)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1607 = !DILocalVariable(name: "shift", scope: !1597, file: !157, line: 157, type: !47)
!1608 = !DILocalVariable(name: "r", scope: !1597, file: !157, line: 158, type: !47)
!1609 = !DILocation(line: 152, column: 43, scope: !1597)
!1610 = !DILocation(line: 152, column: 51, scope: !1597)
!1611 = !DILocation(line: 152, column: 58, scope: !1597)
!1612 = !DILocation(line: 154, column: 17, scope: !1597)
!1613 = !DILocation(line: 156, column: 6, scope: !1597)
!1614 = !DILocation(line: 156, column: 62, scope: !1597)
!1615 = !DILocation(line: 156, column: 57, scope: !1597)
!1616 = !DILocation(line: 155, column: 17, scope: !1597)
!1617 = !DILocation(line: 157, column: 15, scope: !1597)
!1618 = !DILocation(line: 157, column: 7, scope: !1597)
!1619 = !DILocation(line: 158, column: 12, scope: !1597)
!1620 = !DILocation(line: 158, column: 15, scope: !1597)
!1621 = !DILocation(line: 158, column: 25, scope: !1597)
!1622 = !DILocation(line: 158, column: 7, scope: !1597)
!1623 = !DILocation(line: 159, column: 13, scope: !1597)
!1624 = !DILocation(line: 159, column: 18, scope: !1597)
!1625 = !DILocation(line: 159, column: 23, scope: !1597)
!1626 = !DILocation(line: 159, column: 6, scope: !1597)
!1627 = !DILocation(line: 160, column: 3, scope: !1597)
!1628 = distinct !DISubprogram(name: "set_quoting_flags", scope: !157, file: !157, line: 168, type: !1629, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !1631)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!47, !1559, !47}
!1631 = !{!1632, !1633, !1634}
!1632 = !DILocalVariable(name: "o", arg: 1, scope: !1628, file: !157, line: 168, type: !1559)
!1633 = !DILocalVariable(name: "i", arg: 2, scope: !1628, file: !157, line: 168, type: !47)
!1634 = !DILocalVariable(name: "r", scope: !1628, file: !157, line: 170, type: !47)
!1635 = !DILocation(line: 168, column: 44, scope: !1628)
!1636 = !DILocation(line: 168, column: 51, scope: !1628)
!1637 = !DILocation(line: 171, column: 8, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1628, file: !157, line: 171, column: 7)
!1639 = !DILocation(line: 171, column: 7, scope: !1628)
!1640 = !DILocation(line: 173, column: 10, scope: !1628)
!1641 = !{!1583, !890, i64 4}
!1642 = !DILocation(line: 170, column: 7, scope: !1628)
!1643 = !DILocation(line: 174, column: 12, scope: !1628)
!1644 = !DILocation(line: 175, column: 3, scope: !1628)
!1645 = distinct !DISubprogram(name: "set_custom_quoting", scope: !157, file: !157, line: 179, type: !1646, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !1648)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1559, !37, !37}
!1648 = !{!1649, !1650, !1651}
!1649 = !DILocalVariable(name: "o", arg: 1, scope: !1645, file: !157, line: 179, type: !1559)
!1650 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1645, file: !157, line: 180, type: !37)
!1651 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1645, file: !157, line: 180, type: !37)
!1652 = !DILocation(line: 179, column: 45, scope: !1645)
!1653 = !DILocation(line: 180, column: 33, scope: !1645)
!1654 = !DILocation(line: 180, column: 57, scope: !1645)
!1655 = !DILocation(line: 182, column: 8, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1645, file: !157, line: 182, column: 7)
!1657 = !DILocation(line: 182, column: 7, scope: !1645)
!1658 = !DILocation(line: 184, column: 6, scope: !1645)
!1659 = !DILocation(line: 184, column: 12, scope: !1645)
!1660 = !DILocation(line: 185, column: 8, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1645, file: !157, line: 185, column: 7)
!1662 = !DILocation(line: 185, column: 23, scope: !1661)
!1663 = !DILocation(line: 185, column: 19, scope: !1661)
!1664 = !DILocation(line: 186, column: 5, scope: !1661)
!1665 = !DILocation(line: 187, column: 6, scope: !1645)
!1666 = !DILocation(line: 187, column: 17, scope: !1645)
!1667 = !{!1583, !717, i64 40}
!1668 = !DILocation(line: 188, column: 6, scope: !1645)
!1669 = !DILocation(line: 188, column: 18, scope: !1645)
!1670 = !{!1583, !717, i64 48}
!1671 = !DILocation(line: 189, column: 1, scope: !1645)
!1672 = distinct !DISubprogram(name: "quotearg_buffer", scope: !157, file: !157, line: 784, type: !1673, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !1675)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!48, !40, !48, !37, !48, !1575}
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683}
!1676 = !DILocalVariable(name: "buffer", arg: 1, scope: !1672, file: !157, line: 784, type: !40)
!1677 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1672, file: !157, line: 784, type: !48)
!1678 = !DILocalVariable(name: "arg", arg: 3, scope: !1672, file: !157, line: 785, type: !37)
!1679 = !DILocalVariable(name: "argsize", arg: 4, scope: !1672, file: !157, line: 785, type: !48)
!1680 = !DILocalVariable(name: "o", arg: 5, scope: !1672, file: !157, line: 786, type: !1575)
!1681 = !DILocalVariable(name: "p", scope: !1672, file: !157, line: 788, type: !1575)
!1682 = !DILocalVariable(name: "e", scope: !1672, file: !157, line: 789, type: !47)
!1683 = !DILocalVariable(name: "r", scope: !1672, file: !157, line: 790, type: !48)
!1684 = !DILocation(line: 784, column: 24, scope: !1672)
!1685 = !DILocation(line: 784, column: 39, scope: !1672)
!1686 = !DILocation(line: 785, column: 30, scope: !1672)
!1687 = !DILocation(line: 785, column: 42, scope: !1672)
!1688 = !DILocation(line: 786, column: 48, scope: !1672)
!1689 = !DILocation(line: 788, column: 37, scope: !1672)
!1690 = !DILocation(line: 788, column: 33, scope: !1672)
!1691 = !DILocation(line: 789, column: 11, scope: !1672)
!1692 = !DILocation(line: 789, column: 7, scope: !1672)
!1693 = !DILocation(line: 791, column: 43, scope: !1672)
!1694 = !DILocation(line: 791, column: 53, scope: !1672)
!1695 = !DILocation(line: 791, column: 60, scope: !1672)
!1696 = !DILocation(line: 792, column: 43, scope: !1672)
!1697 = !DILocation(line: 792, column: 58, scope: !1672)
!1698 = !DILocation(line: 790, column: 14, scope: !1672)
!1699 = !DILocation(line: 790, column: 10, scope: !1672)
!1700 = !DILocation(line: 793, column: 9, scope: !1672)
!1701 = !DILocation(line: 794, column: 3, scope: !1672)
!1702 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !157, file: !157, line: 256, type: !1703, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !1707)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!48, !40, !48, !37, !48, !22, !47, !1705, !37, !37}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1732, !1733, !1734, !1735, !1736, !1739, !1740, !1756, !1759, !1760, !1767}
!1708 = !DILocalVariable(name: "buffer", arg: 1, scope: !1702, file: !157, line: 256, type: !40)
!1709 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1702, file: !157, line: 256, type: !48)
!1710 = !DILocalVariable(name: "arg", arg: 3, scope: !1702, file: !157, line: 257, type: !37)
!1711 = !DILocalVariable(name: "argsize", arg: 4, scope: !1702, file: !157, line: 257, type: !48)
!1712 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1702, file: !157, line: 258, type: !22)
!1713 = !DILocalVariable(name: "flags", arg: 6, scope: !1702, file: !157, line: 258, type: !47)
!1714 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1702, file: !157, line: 259, type: !1705)
!1715 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1702, file: !157, line: 260, type: !37)
!1716 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1702, file: !157, line: 261, type: !37)
!1717 = !DILocalVariable(name: "i", scope: !1702, file: !157, line: 263, type: !48)
!1718 = !DILocalVariable(name: "len", scope: !1702, file: !157, line: 264, type: !48)
!1719 = !DILocalVariable(name: "orig_buffersize", scope: !1702, file: !157, line: 265, type: !48)
!1720 = !DILocalVariable(name: "quote_string", scope: !1702, file: !157, line: 266, type: !37)
!1721 = !DILocalVariable(name: "quote_string_len", scope: !1702, file: !157, line: 267, type: !48)
!1722 = !DILocalVariable(name: "backslash_escapes", scope: !1702, file: !157, line: 268, type: !55)
!1723 = !DILocalVariable(name: "unibyte_locale", scope: !1702, file: !157, line: 269, type: !55)
!1724 = !DILocalVariable(name: "elide_outer_quotes", scope: !1702, file: !157, line: 270, type: !55)
!1725 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1702, file: !157, line: 271, type: !55)
!1726 = !DILocalVariable(name: "encountered_single_quote", scope: !1702, file: !157, line: 272, type: !55)
!1727 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1702, file: !157, line: 273, type: !55)
!1728 = !DILocalVariable(name: "c", scope: !1729, file: !157, line: 402, type: !97)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !157, line: 401, column: 5)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !157, line: 400, column: 3)
!1731 = distinct !DILexicalBlock(scope: !1702, file: !157, line: 400, column: 3)
!1732 = !DILocalVariable(name: "esc", scope: !1729, file: !157, line: 403, type: !97)
!1733 = !DILocalVariable(name: "is_right_quote", scope: !1729, file: !157, line: 404, type: !55)
!1734 = !DILocalVariable(name: "escaping", scope: !1729, file: !157, line: 405, type: !55)
!1735 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1729, file: !157, line: 406, type: !55)
!1736 = !DILocalVariable(name: "m", scope: !1737, file: !157, line: 610, type: !48)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 608, column: 11)
!1738 = distinct !DILexicalBlock(scope: !1729, file: !157, line: 426, column: 9)
!1739 = !DILocalVariable(name: "printable", scope: !1737, file: !157, line: 612, type: !55)
!1740 = !DILocalVariable(name: "mbstate", scope: !1741, file: !157, line: 621, type: !1743)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !157, line: 620, column: 15)
!1742 = distinct !DILexicalBlock(scope: !1737, file: !157, line: 614, column: 17)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1744, line: 6, baseType: !1745)
!1744 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1746, line: 21, baseType: !1747)
!1746 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1746, line: 13, size: 64, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1747, file: !1746, line: 15, baseType: !47, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1747, file: !1746, line: 20, baseType: !1751, size: 32, offset: 32)
!1751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1747, file: !1746, line: 16, size: 32, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1751, file: !1746, line: 18, baseType: !6, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1751, file: !1746, line: 19, baseType: !1755, size: 32)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32, elements: !76)
!1756 = !DILocalVariable(name: "w", scope: !1757, file: !157, line: 631, type: !1758)
!1757 = distinct !DILexicalBlock(scope: !1741, file: !157, line: 630, column: 19)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !49, line: 90, baseType: !47)
!1759 = !DILocalVariable(name: "bytes", scope: !1757, file: !157, line: 632, type: !48)
!1760 = !DILocalVariable(name: "j", scope: !1761, file: !157, line: 657, type: !48)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !157, line: 656, column: 27)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !157, line: 654, column: 29)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !157, line: 649, column: 23)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !157, line: 641, column: 30)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !157, line: 636, column: 30)
!1766 = distinct !DILexicalBlock(scope: !1757, file: !157, line: 634, column: 25)
!1767 = !DILocalVariable(name: "ilim", scope: !1768, file: !157, line: 684, type: !48)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !157, line: 681, column: 15)
!1769 = distinct !DILexicalBlock(scope: !1737, file: !157, line: 680, column: 17)
!1770 = !DILocation(line: 256, column: 33, scope: !1702)
!1771 = !DILocation(line: 256, column: 48, scope: !1702)
!1772 = !DILocation(line: 257, column: 39, scope: !1702)
!1773 = !DILocation(line: 257, column: 51, scope: !1702)
!1774 = !DILocation(line: 258, column: 46, scope: !1702)
!1775 = !DILocation(line: 258, column: 65, scope: !1702)
!1776 = !DILocation(line: 259, column: 47, scope: !1702)
!1777 = !DILocation(line: 260, column: 39, scope: !1702)
!1778 = !DILocation(line: 261, column: 39, scope: !1702)
!1779 = !DILocation(line: 264, column: 10, scope: !1702)
!1780 = !DILocation(line: 265, column: 10, scope: !1702)
!1781 = !DILocation(line: 266, column: 15, scope: !1702)
!1782 = !DILocation(line: 267, column: 10, scope: !1702)
!1783 = !DILocation(line: 268, column: 8, scope: !1702)
!1784 = !DILocation(line: 269, column: 25, scope: !1702)
!1785 = !DILocation(line: 269, column: 36, scope: !1702)
!1786 = !DILocation(line: 270, column: 8, scope: !1702)
!1787 = !DILocation(line: 271, column: 8, scope: !1702)
!1788 = !DILocation(line: 272, column: 8, scope: !1702)
!1789 = !DILocation(line: 273, column: 8, scope: !1702)
!1790 = !DILocation(line: 273, column: 3, scope: !1702)
!1791 = !DILocation(line: 0, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1702, file: !157, line: 317, column: 5)
!1793 = !DILocation(line: 316, column: 3, scope: !1702)
!1794 = !DILocation(line: 323, column: 11, scope: !1792)
!1795 = !DILocation(line: 323, column: 12, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !157, line: 323, column: 11)
!1797 = !DILocation(line: 324, column: 9, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !157, line: 324, column: 9)
!1799 = distinct !DILexicalBlock(scope: !1796, file: !157, line: 324, column: 9)
!1800 = !DILocation(line: 324, column: 9, scope: !1799)
!1801 = !DILocation(line: 362, column: 26, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !157, line: 340, column: 11)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !157, line: 339, column: 13)
!1804 = distinct !DILexicalBlock(scope: !1792, file: !157, line: 338, column: 7)
!1805 = !DILocation(line: 363, column: 27, scope: !1802)
!1806 = !DILocation(line: 364, column: 11, scope: !1802)
!1807 = !DILocation(line: 365, column: 14, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !157, line: 365, column: 13)
!1809 = !DILocation(line: 365, column: 13, scope: !1804)
!1810 = !DILocation(line: 366, column: 43, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !157, line: 366, column: 11)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !157, line: 366, column: 11)
!1813 = !DILocation(line: 366, column: 11, scope: !1812)
!1814 = !DILocation(line: 367, column: 13, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !157, line: 367, column: 13)
!1816 = distinct !DILexicalBlock(scope: !1811, file: !157, line: 367, column: 13)
!1817 = !DILocation(line: 367, column: 13, scope: !1816)
!1818 = !DILocation(line: 366, column: 70, scope: !1811)
!1819 = distinct !{!1819, !1813, !1820}
!1820 = !DILocation(line: 367, column: 13, scope: !1812)
!1821 = !DILocation(line: 370, column: 28, scope: !1804)
!1822 = !DILocation(line: 372, column: 7, scope: !1792)
!1823 = !DILocation(line: 376, column: 7, scope: !1792)
!1824 = !DILocation(line: 379, column: 7, scope: !1792)
!1825 = !DILocation(line: 381, column: 12, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1792, file: !157, line: 381, column: 11)
!1827 = !DILocation(line: 381, column: 11, scope: !1792)
!1828 = !DILocation(line: 0, scope: !1826)
!1829 = !DILocation(line: 386, column: 12, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1792, file: !157, line: 386, column: 11)
!1831 = !DILocation(line: 386, column: 11, scope: !1792)
!1832 = !DILocation(line: 387, column: 9, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !157, line: 387, column: 9)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !157, line: 387, column: 9)
!1835 = !DILocation(line: 387, column: 9, scope: !1834)
!1836 = !DILocation(line: 394, column: 7, scope: !1792)
!1837 = !DILocation(line: 397, column: 7, scope: !1792)
!1838 = !DILocation(line: 0, scope: !1702)
!1839 = !DILocation(line: 263, column: 10, scope: !1702)
!1840 = !DILocation(line: 400, column: 8, scope: !1731)
!1841 = !DILocation(line: 0, scope: !1730)
!1842 = !DILocation(line: 400, column: 27, scope: !1730)
!1843 = !DILocation(line: 400, column: 19, scope: !1730)
!1844 = !DILocation(line: 400, column: 41, scope: !1730)
!1845 = !DILocation(line: 400, column: 48, scope: !1730)
!1846 = !DILocation(line: 400, column: 3, scope: !1731)
!1847 = !DILocation(line: 400, column: 60, scope: !1730)
!1848 = !DILocation(line: 404, column: 12, scope: !1729)
!1849 = !DILocation(line: 405, column: 12, scope: !1729)
!1850 = !DILocation(line: 406, column: 12, scope: !1729)
!1851 = !DILocation(line: 409, column: 11, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1729, file: !157, line: 408, column: 11)
!1853 = !DILocation(line: 411, column: 17, scope: !1852)
!1854 = !DILocation(line: 412, column: 39, scope: !1852)
!1855 = !DILocation(line: 416, column: 32, scope: !1852)
!1856 = !DILocation(line: 412, column: 19, scope: !1852)
!1857 = !DILocation(line: 412, column: 15, scope: !1852)
!1858 = !DILocation(line: 417, column: 11, scope: !1852)
!1859 = !DILocation(line: 417, column: 26, scope: !1852)
!1860 = !DILocation(line: 417, column: 14, scope: !1852)
!1861 = !DILocation(line: 417, column: 63, scope: !1852)
!1862 = !DILocation(line: 408, column: 11, scope: !1729)
!1863 = !DILocation(line: 0, scope: !1729)
!1864 = !DILocation(line: 424, column: 11, scope: !1729)
!1865 = !DILocation(line: 402, column: 21, scope: !1729)
!1866 = !DILocation(line: 425, column: 7, scope: !1729)
!1867 = !DILocation(line: 428, column: 15, scope: !1738)
!1868 = !DILocation(line: 430, column: 15, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !157, line: 430, column: 15)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !157, line: 429, column: 13)
!1871 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 428, column: 15)
!1872 = !DILocation(line: 430, column: 15, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !157, line: 430, column: 15)
!1874 = !DILocation(line: 430, column: 15, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !157, line: 430, column: 15)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !157, line: 430, column: 15)
!1877 = distinct !DILexicalBlock(scope: !1873, file: !157, line: 430, column: 15)
!1878 = !DILocation(line: 430, column: 15, scope: !1876)
!1879 = !DILocation(line: 430, column: 15, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !157, line: 430, column: 15)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !157, line: 430, column: 15)
!1882 = !DILocation(line: 430, column: 15, scope: !1881)
!1883 = !DILocation(line: 430, column: 15, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !157, line: 430, column: 15)
!1885 = distinct !DILexicalBlock(scope: !1877, file: !157, line: 430, column: 15)
!1886 = !DILocation(line: 430, column: 15, scope: !1885)
!1887 = !DILocation(line: 430, column: 15, scope: !1877)
!1888 = !DILocation(line: 430, column: 15, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !157, line: 430, column: 15)
!1890 = distinct !DILexicalBlock(scope: !1869, file: !157, line: 430, column: 15)
!1891 = !DILocation(line: 430, column: 15, scope: !1890)
!1892 = !DILocation(line: 438, column: 19, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1870, file: !157, line: 437, column: 19)
!1894 = !DILocation(line: 438, column: 24, scope: !1893)
!1895 = !DILocation(line: 438, column: 28, scope: !1893)
!1896 = !DILocation(line: 438, column: 38, scope: !1893)
!1897 = !DILocation(line: 438, column: 48, scope: !1893)
!1898 = !DILocation(line: 438, column: 59, scope: !1893)
!1899 = !DILocation(line: 440, column: 19, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !157, line: 440, column: 19)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !157, line: 440, column: 19)
!1902 = distinct !DILexicalBlock(scope: !1893, file: !157, line: 439, column: 17)
!1903 = !DILocation(line: 440, column: 19, scope: !1901)
!1904 = !DILocation(line: 441, column: 19, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !157, line: 441, column: 19)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !157, line: 441, column: 19)
!1907 = !DILocation(line: 441, column: 19, scope: !1906)
!1908 = !DILocation(line: 442, column: 17, scope: !1902)
!1909 = !DILocation(line: 449, column: 20, scope: !1871)
!1910 = !DILocation(line: 454, column: 11, scope: !1738)
!1911 = !DILocation(line: 457, column: 19, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 455, column: 13)
!1913 = !DILocation(line: 463, column: 19, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1912, file: !157, line: 462, column: 19)
!1915 = !DILocation(line: 463, column: 24, scope: !1914)
!1916 = !DILocation(line: 463, column: 28, scope: !1914)
!1917 = !DILocation(line: 463, column: 38, scope: !1914)
!1918 = !DILocation(line: 463, column: 47, scope: !1914)
!1919 = !DILocation(line: 463, column: 41, scope: !1914)
!1920 = !DILocation(line: 463, column: 52, scope: !1914)
!1921 = !DILocation(line: 462, column: 19, scope: !1912)
!1922 = !DILocation(line: 464, column: 25, scope: !1914)
!1923 = !DILocation(line: 464, column: 17, scope: !1914)
!1924 = !DILocation(line: 471, column: 25, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1914, file: !157, line: 465, column: 19)
!1926 = !DILocation(line: 475, column: 21, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !157, line: 475, column: 21)
!1928 = distinct !DILexicalBlock(scope: !1925, file: !157, line: 475, column: 21)
!1929 = !DILocation(line: 475, column: 21, scope: !1928)
!1930 = !DILocation(line: 476, column: 21, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !157, line: 476, column: 21)
!1932 = distinct !DILexicalBlock(scope: !1925, file: !157, line: 476, column: 21)
!1933 = !DILocation(line: 476, column: 21, scope: !1932)
!1934 = !DILocation(line: 477, column: 21, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !157, line: 477, column: 21)
!1936 = distinct !DILexicalBlock(scope: !1925, file: !157, line: 477, column: 21)
!1937 = !DILocation(line: 477, column: 21, scope: !1936)
!1938 = !DILocation(line: 478, column: 21, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !157, line: 478, column: 21)
!1940 = distinct !DILexicalBlock(scope: !1925, file: !157, line: 478, column: 21)
!1941 = !DILocation(line: 478, column: 21, scope: !1940)
!1942 = !DILocation(line: 479, column: 21, scope: !1925)
!1943 = !DILocation(line: 403, column: 21, scope: !1729)
!1944 = !DILocation(line: 492, column: 31, scope: !1738)
!1945 = !DILocation(line: 493, column: 31, scope: !1738)
!1946 = !DILocation(line: 495, column: 31, scope: !1738)
!1947 = !DILocation(line: 496, column: 31, scope: !1738)
!1948 = !DILocation(line: 497, column: 31, scope: !1738)
!1949 = !DILocation(line: 500, column: 15, scope: !1738)
!1950 = !DILocation(line: 502, column: 19, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !157, line: 501, column: 13)
!1952 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 500, column: 15)
!1953 = !DILocation(line: 509, column: 33, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 509, column: 15)
!1955 = !DILocation(line: 0, scope: !1738)
!1956 = !DILocation(line: 514, column: 15, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 513, column: 15)
!1958 = !DILocation(line: 518, column: 15, scope: !1738)
!1959 = !DILocation(line: 526, column: 26, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 526, column: 15)
!1961 = !DILocation(line: 526, column: 15, scope: !1738)
!1962 = !DILocation(line: 526, column: 40, scope: !1960)
!1963 = !DILocation(line: 526, column: 47, scope: !1960)
!1964 = !DILocation(line: 530, column: 17, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 530, column: 15)
!1966 = !DILocation(line: 526, column: 18, scope: !1960)
!1967 = !DILocation(line: 526, column: 65, scope: !1960)
!1968 = !DILocation(line: 530, column: 15, scope: !1738)
!1969 = !DILocation(line: 535, column: 11, scope: !1738)
!1970 = !DILocation(line: 549, column: 15, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 548, column: 15)
!1972 = !DILocation(line: 556, column: 15, scope: !1738)
!1973 = !DILocation(line: 558, column: 19, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !157, line: 557, column: 13)
!1975 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 556, column: 15)
!1976 = !DILocation(line: 561, column: 19, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !157, line: 561, column: 19)
!1978 = !DILocation(line: 561, column: 35, scope: !1977)
!1979 = !DILocation(line: 561, column: 30, scope: !1977)
!1980 = !DILocation(line: 570, column: 15, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !157, line: 570, column: 15)
!1982 = distinct !DILexicalBlock(scope: !1974, file: !157, line: 570, column: 15)
!1983 = !DILocation(line: 570, column: 15, scope: !1982)
!1984 = !DILocation(line: 571, column: 15, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !157, line: 571, column: 15)
!1986 = distinct !DILexicalBlock(scope: !1974, file: !157, line: 571, column: 15)
!1987 = !DILocation(line: 571, column: 15, scope: !1986)
!1988 = !DILocation(line: 572, column: 15, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !157, line: 572, column: 15)
!1990 = distinct !DILexicalBlock(scope: !1974, file: !157, line: 572, column: 15)
!1991 = !DILocation(line: 572, column: 15, scope: !1990)
!1992 = !DILocation(line: 574, column: 13, scope: !1974)
!1993 = !DILocation(line: 614, column: 17, scope: !1737)
!1994 = !DILocation(line: 610, column: 20, scope: !1737)
!1995 = !DILocation(line: 617, column: 29, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1742, file: !157, line: 615, column: 15)
!1997 = !{!1212, !1212, i64 0}
!1998 = !DILocation(line: 617, column: 27, scope: !1996)
!1999 = !DILocation(line: 612, column: 18, scope: !1737)
!2000 = !DILocation(line: 618, column: 15, scope: !1996)
!2001 = !DILocation(line: 621, column: 17, scope: !1741)
!2002 = !DILocation(line: 622, column: 17, scope: !1741)
!2003 = !DILocation(line: 626, column: 29, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1741, file: !157, line: 626, column: 21)
!2005 = !DILocation(line: 626, column: 21, scope: !1741)
!2006 = !DILocation(line: 627, column: 29, scope: !2004)
!2007 = !DILocation(line: 627, column: 19, scope: !2004)
!2008 = !DILocation(line: 0, scope: !1852)
!2009 = !DILocation(line: 629, column: 17, scope: !1741)
!2010 = !DILocation(line: 624, column: 19, scope: !1741)
!2011 = !DILocation(line: 625, column: 27, scope: !1741)
!2012 = !DILocation(line: 631, column: 21, scope: !1757)
!2013 = !DILocation(line: 632, column: 56, scope: !1757)
!2014 = !DILocation(line: 632, column: 50, scope: !1757)
!2015 = !DILocation(line: 633, column: 53, scope: !1757)
!2016 = !DILocation(line: 621, column: 27, scope: !1741)
!2017 = !DILocation(line: 631, column: 29, scope: !1757)
!2018 = !DILocation(line: 632, column: 36, scope: !1757)
!2019 = !DILocation(line: 632, column: 28, scope: !1757)
!2020 = !DILocation(line: 634, column: 25, scope: !1757)
!2021 = !DILocation(line: 644, column: 38, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1764, file: !157, line: 642, column: 23)
!2023 = !DILocation(line: 644, column: 48, scope: !2022)
!2024 = !DILocation(line: 644, column: 51, scope: !2022)
!2025 = !DILocation(line: 644, column: 25, scope: !2022)
!2026 = !DILocation(line: 645, column: 28, scope: !2022)
!2027 = !DILocation(line: 644, column: 34, scope: !2022)
!2028 = distinct !{!2028, !2025, !2026}
!2029 = !DILocation(line: 658, column: 43, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !157, line: 658, column: 29)
!2031 = distinct !DILexicalBlock(scope: !1761, file: !157, line: 658, column: 29)
!2032 = !DILocation(line: 655, column: 29, scope: !1762)
!2033 = !DILocation(line: 657, column: 36, scope: !1761)
!2034 = !DILocation(line: 659, column: 49, scope: !2030)
!2035 = !DILocation(line: 659, column: 39, scope: !2030)
!2036 = !DILocation(line: 659, column: 31, scope: !2030)
!2037 = !DILocation(line: 658, column: 53, scope: !2030)
!2038 = !DILocation(line: 658, column: 29, scope: !2031)
!2039 = distinct !{!2039, !2038, !2040}
!2040 = !DILocation(line: 667, column: 33, scope: !2031)
!2041 = !DILocation(line: 674, column: 19, scope: !1741)
!2042 = !DILocation(line: 670, column: 41, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1763, file: !157, line: 670, column: 29)
!2044 = !DILocation(line: 670, column: 31, scope: !2043)
!2045 = !DILocation(line: 670, column: 29, scope: !1763)
!2046 = !DILocation(line: 672, column: 27, scope: !1763)
!2047 = !DILocation(line: 675, column: 26, scope: !1741)
!2048 = !DILocation(line: 675, column: 24, scope: !1741)
!2049 = !DILocation(line: 674, column: 19, scope: !1757)
!2050 = distinct !{!2050, !2009, !2051}
!2051 = !DILocation(line: 675, column: 44, scope: !1741)
!2052 = !DILocation(line: 676, column: 15, scope: !1742)
!2053 = !DILocation(line: 0, scope: !2004)
!2054 = !DILocation(line: 0, scope: !1741)
!2055 = !DILocation(line: 678, column: 40, scope: !1737)
!2056 = !DILocation(line: 680, column: 19, scope: !1769)
!2057 = !DILocation(line: 680, column: 45, scope: !1769)
!2058 = !DILocation(line: 680, column: 23, scope: !1769)
!2059 = !DILocation(line: 684, column: 33, scope: !1768)
!2060 = !DILocation(line: 684, column: 24, scope: !1768)
!2061 = !DILocation(line: 686, column: 17, scope: !1768)
!2062 = !DILocation(line: 0, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !157, line: 687, column: 19)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !157, line: 686, column: 17)
!2065 = distinct !DILexicalBlock(scope: !1768, file: !157, line: 686, column: 17)
!2066 = !DILocation(line: 0, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !157, line: 703, column: 21)
!2068 = !DILocation(line: 0, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !157, line: 696, column: 23)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !157, line: 695, column: 30)
!2071 = distinct !DILexicalBlock(scope: !2063, file: !157, line: 688, column: 25)
!2072 = !DILocation(line: 688, column: 43, scope: !2071)
!2073 = !DILocation(line: 690, column: 25, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !157, line: 690, column: 25)
!2075 = distinct !DILexicalBlock(scope: !2071, file: !157, line: 689, column: 23)
!2076 = !DILocation(line: 690, column: 25, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2074, file: !157, line: 690, column: 25)
!2078 = !DILocation(line: 690, column: 25, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !157, line: 690, column: 25)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !157, line: 690, column: 25)
!2081 = distinct !DILexicalBlock(scope: !2077, file: !157, line: 690, column: 25)
!2082 = !DILocation(line: 690, column: 25, scope: !2080)
!2083 = !DILocation(line: 690, column: 25, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !157, line: 690, column: 25)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !157, line: 690, column: 25)
!2086 = !DILocation(line: 690, column: 25, scope: !2085)
!2087 = !DILocation(line: 690, column: 25, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !157, line: 690, column: 25)
!2089 = distinct !DILexicalBlock(scope: !2081, file: !157, line: 690, column: 25)
!2090 = !DILocation(line: 690, column: 25, scope: !2089)
!2091 = !DILocation(line: 690, column: 25, scope: !2081)
!2092 = !DILocation(line: 690, column: 25, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !157, line: 690, column: 25)
!2094 = distinct !DILexicalBlock(scope: !2074, file: !157, line: 690, column: 25)
!2095 = !DILocation(line: 690, column: 25, scope: !2094)
!2096 = !DILocation(line: 691, column: 25, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !157, line: 691, column: 25)
!2098 = distinct !DILexicalBlock(scope: !2075, file: !157, line: 691, column: 25)
!2099 = !DILocation(line: 691, column: 25, scope: !2098)
!2100 = !DILocation(line: 692, column: 25, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !157, line: 692, column: 25)
!2102 = distinct !DILexicalBlock(scope: !2075, file: !157, line: 692, column: 25)
!2103 = !DILocation(line: 692, column: 25, scope: !2102)
!2104 = !DILocation(line: 693, column: 38, scope: !2075)
!2105 = !DILocation(line: 693, column: 33, scope: !2075)
!2106 = !DILocation(line: 694, column: 23, scope: !2075)
!2107 = !DILocation(line: 695, column: 30, scope: !2070)
!2108 = !DILocation(line: 695, column: 30, scope: !2071)
!2109 = !DILocation(line: 697, column: 25, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !157, line: 697, column: 25)
!2111 = distinct !DILexicalBlock(scope: !2069, file: !157, line: 697, column: 25)
!2112 = !DILocation(line: 697, column: 25, scope: !2111)
!2113 = !DILocation(line: 699, column: 23, scope: !2069)
!2114 = !DILocation(line: 0, scope: !2102)
!2115 = !DILocation(line: 0, scope: !2075)
!2116 = !DILocation(line: 0, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1852, file: !157, line: 418, column: 9)
!2118 = !DILocation(line: 0, scope: !2074)
!2119 = !DILocation(line: 700, column: 35, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2063, file: !157, line: 700, column: 25)
!2121 = !DILocation(line: 700, column: 30, scope: !2120)
!2122 = !DILocation(line: 700, column: 25, scope: !2063)
!2123 = !DILocation(line: 702, column: 21, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !157, line: 702, column: 21)
!2125 = distinct !DILexicalBlock(scope: !2063, file: !157, line: 702, column: 21)
!2126 = !DILocation(line: 702, column: 21, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !157, line: 702, column: 21)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !157, line: 702, column: 21)
!2129 = distinct !DILexicalBlock(scope: !2124, file: !157, line: 702, column: 21)
!2130 = !DILocation(line: 702, column: 21, scope: !2128)
!2131 = !DILocation(line: 702, column: 21, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !157, line: 702, column: 21)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !157, line: 702, column: 21)
!2134 = !DILocation(line: 702, column: 21, scope: !2133)
!2135 = !DILocation(line: 702, column: 21, scope: !2129)
!2136 = !DILocation(line: 0, scope: !2111)
!2137 = !DILocation(line: 703, column: 21, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2067, file: !157, line: 703, column: 21)
!2139 = !DILocation(line: 703, column: 21, scope: !2067)
!2140 = !DILocation(line: 704, column: 25, scope: !2063)
!2141 = !DILocation(line: 686, column: 17, scope: !2064)
!2142 = distinct !{!2142, !2143, !2144}
!2143 = !DILocation(line: 686, column: 17, scope: !2065)
!2144 = !DILocation(line: 705, column: 19, scope: !2065)
!2145 = !DILocation(line: 0, scope: !1731)
!2146 = !DILocation(line: 416, column: 30, scope: !1852)
!2147 = !DILocation(line: 712, column: 34, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1729, file: !157, line: 712, column: 11)
!2149 = !DILocation(line: 714, column: 14, scope: !2148)
!2150 = !DILocation(line: 715, column: 14, scope: !2148)
!2151 = !DILocation(line: 715, column: 35, scope: !2148)
!2152 = !DILocation(line: 715, column: 17, scope: !2148)
!2153 = !DILocation(line: 715, column: 47, scope: !2148)
!2154 = !DILocation(line: 715, column: 65, scope: !2148)
!2155 = !DILocation(line: 716, column: 15, scope: !2148)
!2156 = !DILocation(line: 716, column: 11, scope: !2148)
!2157 = !DILocation(line: 712, column: 11, scope: !1729)
!2158 = !DILocation(line: 400, column: 10, scope: !1731)
!2159 = !DILocation(line: 0, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !157, line: 519, column: 13)
!2161 = distinct !DILexicalBlock(scope: !1738, file: !157, line: 518, column: 15)
!2162 = !DILocation(line: 720, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !1729, file: !157, line: 720, column: 7)
!2164 = !DILocation(line: 720, column: 7, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2163, file: !157, line: 720, column: 7)
!2166 = !DILocation(line: 720, column: 7, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !157, line: 720, column: 7)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !157, line: 720, column: 7)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !157, line: 720, column: 7)
!2170 = !DILocation(line: 720, column: 7, scope: !2168)
!2171 = !DILocation(line: 720, column: 7, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !157, line: 720, column: 7)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !157, line: 720, column: 7)
!2174 = !DILocation(line: 720, column: 7, scope: !2173)
!2175 = !DILocation(line: 720, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !157, line: 720, column: 7)
!2177 = distinct !DILexicalBlock(scope: !2169, file: !157, line: 720, column: 7)
!2178 = !DILocation(line: 720, column: 7, scope: !2177)
!2179 = !DILocation(line: 720, column: 7, scope: !2169)
!2180 = !DILocation(line: 720, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !157, line: 720, column: 7)
!2182 = distinct !DILexicalBlock(scope: !2163, file: !157, line: 720, column: 7)
!2183 = !DILocation(line: 720, column: 7, scope: !2182)
!2184 = !DILocation(line: 723, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !157, line: 723, column: 7)
!2186 = distinct !DILexicalBlock(scope: !1729, file: !157, line: 723, column: 7)
!2187 = !DILocation(line: 424, column: 9, scope: !1729)
!2188 = !DILocation(line: 723, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !157, line: 723, column: 7)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !157, line: 723, column: 7)
!2191 = distinct !DILexicalBlock(scope: !2185, file: !157, line: 723, column: 7)
!2192 = !DILocation(line: 723, column: 7, scope: !2190)
!2193 = !DILocation(line: 723, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !157, line: 723, column: 7)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !157, line: 723, column: 7)
!2196 = !DILocation(line: 723, column: 7, scope: !2195)
!2197 = !DILocation(line: 723, column: 7, scope: !2191)
!2198 = !DILocation(line: 724, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !157, line: 724, column: 7)
!2200 = distinct !DILexicalBlock(scope: !1729, file: !157, line: 724, column: 7)
!2201 = !DILocation(line: 724, column: 7, scope: !2200)
!2202 = !DILocation(line: 726, column: 13, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1729, file: !157, line: 726, column: 11)
!2204 = !DILocation(line: 726, column: 11, scope: !1729)
!2205 = !DILocation(line: 728, column: 5, scope: !1730)
!2206 = !DILocation(line: 400, column: 75, scope: !1730)
!2207 = !DILocation(line: 400, column: 3, scope: !1730)
!2208 = distinct !{!2208, !1846, !2209}
!2209 = !DILocation(line: 728, column: 5, scope: !1731)
!2210 = !DILocation(line: 730, column: 11, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !1702, file: !157, line: 730, column: 7)
!2212 = !DILocation(line: 730, column: 16, scope: !2211)
!2213 = !DILocation(line: 738, column: 51, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !1702, file: !157, line: 738, column: 7)
!2215 = !DILocation(line: 739, column: 10, scope: !2214)
!2216 = !DILocation(line: 741, column: 11, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !157, line: 741, column: 11)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !157, line: 740, column: 5)
!2219 = !DILocation(line: 741, column: 11, scope: !2218)
!2220 = !DILocation(line: 742, column: 16, scope: !2217)
!2221 = !DILocation(line: 742, column: 9, scope: !2217)
!2222 = !DILocation(line: 746, column: 18, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2217, file: !157, line: 746, column: 16)
!2224 = !DILocation(line: 746, column: 32, scope: !2223)
!2225 = !DILocation(line: 746, column: 29, scope: !2223)
!2226 = !DILocation(line: 755, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !1702, file: !157, line: 755, column: 7)
!2228 = !DILocation(line: 755, column: 20, scope: !2227)
!2229 = !DILocation(line: 756, column: 12, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !157, line: 756, column: 5)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !157, line: 756, column: 5)
!2232 = !DILocation(line: 756, column: 5, scope: !2231)
!2233 = !DILocation(line: 757, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !157, line: 757, column: 7)
!2235 = distinct !DILexicalBlock(scope: !2230, file: !157, line: 757, column: 7)
!2236 = !DILocation(line: 757, column: 7, scope: !2235)
!2237 = !DILocation(line: 756, column: 39, scope: !2230)
!2238 = distinct !{!2238, !2232, !2239}
!2239 = !DILocation(line: 757, column: 7, scope: !2231)
!2240 = !DILocation(line: 759, column: 11, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !1702, file: !157, line: 759, column: 7)
!2242 = !DILocation(line: 759, column: 7, scope: !1702)
!2243 = !DILocation(line: 760, column: 5, scope: !2241)
!2244 = !DILocation(line: 760, column: 17, scope: !2241)
!2245 = !DILocation(line: 766, column: 21, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !1702, file: !157, line: 766, column: 7)
!2247 = !DILocation(line: 766, column: 54, scope: !2246)
!2248 = !DILocation(line: 766, column: 51, scope: !2246)
!2249 = !DILocation(line: 770, column: 42, scope: !1702)
!2250 = !DILocation(line: 768, column: 10, scope: !1702)
!2251 = !DILocation(line: 768, column: 3, scope: !1702)
!2252 = !DILocation(line: 772, column: 1, scope: !1702)
!2253 = distinct !DISubprogram(name: "gettext_quote", scope: !157, file: !157, line: 207, type: !2254, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2256)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!37, !37, !22}
!2256 = !{!2257, !2258, !2259, !2260}
!2257 = !DILocalVariable(name: "msgid", arg: 1, scope: !2253, file: !157, line: 207, type: !37)
!2258 = !DILocalVariable(name: "s", arg: 2, scope: !2253, file: !157, line: 207, type: !22)
!2259 = !DILocalVariable(name: "translation", scope: !2253, file: !157, line: 209, type: !37)
!2260 = !DILocalVariable(name: "locale_code", scope: !2253, file: !157, line: 210, type: !37)
!2261 = !DILocation(line: 207, column: 28, scope: !2253)
!2262 = !DILocation(line: 207, column: 54, scope: !2253)
!2263 = !DILocation(line: 209, column: 29, scope: !2253)
!2264 = !DILocation(line: 209, column: 15, scope: !2253)
!2265 = !DILocation(line: 212, column: 19, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2253, file: !157, line: 212, column: 7)
!2267 = !DILocation(line: 212, column: 7, scope: !2253)
!2268 = !DILocation(line: 233, column: 17, scope: !2253)
!2269 = !DILocation(line: 210, column: 15, scope: !2253)
!2270 = !DILocalVariable(name: "s1", arg: 1, scope: !2271, file: !2272, line: 160, type: !37)
!2271 = distinct !DISubprogram(name: "strcaseeq0", scope: !2272, file: !2272, line: 160, type: !2273, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2275)
!2272 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!47, !37, !37, !39, !39, !39, !39, !39, !39, !39, !39, !39}
!2275 = !{!2270, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285}
!2276 = !DILocalVariable(name: "s2", arg: 2, scope: !2271, file: !2272, line: 160, type: !37)
!2277 = !DILocalVariable(name: "s20", arg: 3, scope: !2271, file: !2272, line: 160, type: !39)
!2278 = !DILocalVariable(name: "s21", arg: 4, scope: !2271, file: !2272, line: 160, type: !39)
!2279 = !DILocalVariable(name: "s22", arg: 5, scope: !2271, file: !2272, line: 160, type: !39)
!2280 = !DILocalVariable(name: "s23", arg: 6, scope: !2271, file: !2272, line: 160, type: !39)
!2281 = !DILocalVariable(name: "s24", arg: 7, scope: !2271, file: !2272, line: 160, type: !39)
!2282 = !DILocalVariable(name: "s25", arg: 8, scope: !2271, file: !2272, line: 160, type: !39)
!2283 = !DILocalVariable(name: "s26", arg: 9, scope: !2271, file: !2272, line: 160, type: !39)
!2284 = !DILocalVariable(name: "s27", arg: 10, scope: !2271, file: !2272, line: 160, type: !39)
!2285 = !DILocalVariable(name: "s28", arg: 11, scope: !2271, file: !2272, line: 160, type: !39)
!2286 = !DILocation(line: 160, column: 25, scope: !2271, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 234, column: 7, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2253, file: !157, line: 234, column: 7)
!2289 = !DILocation(line: 160, column: 41, scope: !2271, inlinedAt: !2287)
!2290 = !DILocation(line: 160, column: 50, scope: !2271, inlinedAt: !2287)
!2291 = !DILocation(line: 160, column: 60, scope: !2271, inlinedAt: !2287)
!2292 = !DILocation(line: 160, column: 70, scope: !2271, inlinedAt: !2287)
!2293 = !DILocation(line: 160, column: 80, scope: !2271, inlinedAt: !2287)
!2294 = !DILocation(line: 160, column: 90, scope: !2271, inlinedAt: !2287)
!2295 = !DILocation(line: 160, column: 100, scope: !2271, inlinedAt: !2287)
!2296 = !DILocation(line: 160, column: 110, scope: !2271, inlinedAt: !2287)
!2297 = !DILocation(line: 160, column: 120, scope: !2271, inlinedAt: !2287)
!2298 = !DILocation(line: 160, column: 130, scope: !2271, inlinedAt: !2287)
!2299 = !DILocation(line: 162, column: 7, scope: !2300, inlinedAt: !2287)
!2300 = distinct !DILexicalBlock(scope: !2271, file: !2272, line: 162, column: 7)
!2301 = !DILocalVariable(name: "s1", arg: 1, scope: !2302, file: !2272, line: 146, type: !37)
!2302 = distinct !DISubprogram(name: "strcaseeq1", scope: !2272, file: !2272, line: 146, type: !2303, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!47, !37, !37, !39, !39, !39, !39, !39, !39, !39, !39}
!2305 = !{!2301, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2306 = !DILocalVariable(name: "s2", arg: 2, scope: !2302, file: !2272, line: 146, type: !37)
!2307 = !DILocalVariable(name: "s21", arg: 3, scope: !2302, file: !2272, line: 146, type: !39)
!2308 = !DILocalVariable(name: "s22", arg: 4, scope: !2302, file: !2272, line: 146, type: !39)
!2309 = !DILocalVariable(name: "s23", arg: 5, scope: !2302, file: !2272, line: 146, type: !39)
!2310 = !DILocalVariable(name: "s24", arg: 6, scope: !2302, file: !2272, line: 146, type: !39)
!2311 = !DILocalVariable(name: "s25", arg: 7, scope: !2302, file: !2272, line: 146, type: !39)
!2312 = !DILocalVariable(name: "s26", arg: 8, scope: !2302, file: !2272, line: 146, type: !39)
!2313 = !DILocalVariable(name: "s27", arg: 9, scope: !2302, file: !2272, line: 146, type: !39)
!2314 = !DILocalVariable(name: "s28", arg: 10, scope: !2302, file: !2272, line: 146, type: !39)
!2315 = !DILocation(line: 146, column: 25, scope: !2302, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 167, column: 16, scope: !2317, inlinedAt: !2287)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !2272, line: 164, column: 11)
!2318 = distinct !DILexicalBlock(scope: !2300, file: !2272, line: 163, column: 5)
!2319 = !DILocation(line: 146, column: 41, scope: !2302, inlinedAt: !2316)
!2320 = !DILocation(line: 146, column: 50, scope: !2302, inlinedAt: !2316)
!2321 = !DILocation(line: 146, column: 60, scope: !2302, inlinedAt: !2316)
!2322 = !DILocation(line: 146, column: 70, scope: !2302, inlinedAt: !2316)
!2323 = !DILocation(line: 146, column: 80, scope: !2302, inlinedAt: !2316)
!2324 = !DILocation(line: 146, column: 90, scope: !2302, inlinedAt: !2316)
!2325 = !DILocation(line: 146, column: 100, scope: !2302, inlinedAt: !2316)
!2326 = !DILocation(line: 146, column: 110, scope: !2302, inlinedAt: !2316)
!2327 = !DILocation(line: 146, column: 120, scope: !2302, inlinedAt: !2316)
!2328 = !DILocation(line: 148, column: 7, scope: !2329, inlinedAt: !2316)
!2329 = distinct !DILexicalBlock(scope: !2302, file: !2272, line: 148, column: 7)
!2330 = !DILocalVariable(name: "s1", arg: 1, scope: !2331, file: !2272, line: 132, type: !37)
!2331 = distinct !DISubprogram(name: "strcaseeq2", scope: !2272, file: !2272, line: 132, type: !2332, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2334)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!47, !37, !37, !39, !39, !39, !39, !39, !39, !39}
!2334 = !{!2330, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342}
!2335 = !DILocalVariable(name: "s2", arg: 2, scope: !2331, file: !2272, line: 132, type: !37)
!2336 = !DILocalVariable(name: "s22", arg: 3, scope: !2331, file: !2272, line: 132, type: !39)
!2337 = !DILocalVariable(name: "s23", arg: 4, scope: !2331, file: !2272, line: 132, type: !39)
!2338 = !DILocalVariable(name: "s24", arg: 5, scope: !2331, file: !2272, line: 132, type: !39)
!2339 = !DILocalVariable(name: "s25", arg: 6, scope: !2331, file: !2272, line: 132, type: !39)
!2340 = !DILocalVariable(name: "s26", arg: 7, scope: !2331, file: !2272, line: 132, type: !39)
!2341 = !DILocalVariable(name: "s27", arg: 8, scope: !2331, file: !2272, line: 132, type: !39)
!2342 = !DILocalVariable(name: "s28", arg: 9, scope: !2331, file: !2272, line: 132, type: !39)
!2343 = !DILocation(line: 132, column: 25, scope: !2331, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 153, column: 16, scope: !2345, inlinedAt: !2316)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !2272, line: 150, column: 11)
!2346 = distinct !DILexicalBlock(scope: !2329, file: !2272, line: 149, column: 5)
!2347 = !DILocation(line: 132, column: 41, scope: !2331, inlinedAt: !2344)
!2348 = !DILocation(line: 132, column: 50, scope: !2331, inlinedAt: !2344)
!2349 = !DILocation(line: 132, column: 60, scope: !2331, inlinedAt: !2344)
!2350 = !DILocation(line: 132, column: 70, scope: !2331, inlinedAt: !2344)
!2351 = !DILocation(line: 132, column: 80, scope: !2331, inlinedAt: !2344)
!2352 = !DILocation(line: 132, column: 90, scope: !2331, inlinedAt: !2344)
!2353 = !DILocation(line: 132, column: 100, scope: !2331, inlinedAt: !2344)
!2354 = !DILocation(line: 132, column: 110, scope: !2331, inlinedAt: !2344)
!2355 = !DILocation(line: 134, column: 7, scope: !2356, inlinedAt: !2344)
!2356 = distinct !DILexicalBlock(scope: !2331, file: !2272, line: 134, column: 7)
!2357 = !DILocalVariable(name: "s1", arg: 1, scope: !2358, file: !2272, line: 118, type: !37)
!2358 = distinct !DISubprogram(name: "strcaseeq3", scope: !2272, file: !2272, line: 118, type: !2359, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!47, !37, !37, !39, !39, !39, !39, !39, !39}
!2361 = !{!2357, !2362, !2363, !2364, !2365, !2366, !2367, !2368}
!2362 = !DILocalVariable(name: "s2", arg: 2, scope: !2358, file: !2272, line: 118, type: !37)
!2363 = !DILocalVariable(name: "s23", arg: 3, scope: !2358, file: !2272, line: 118, type: !39)
!2364 = !DILocalVariable(name: "s24", arg: 4, scope: !2358, file: !2272, line: 118, type: !39)
!2365 = !DILocalVariable(name: "s25", arg: 5, scope: !2358, file: !2272, line: 118, type: !39)
!2366 = !DILocalVariable(name: "s26", arg: 6, scope: !2358, file: !2272, line: 118, type: !39)
!2367 = !DILocalVariable(name: "s27", arg: 7, scope: !2358, file: !2272, line: 118, type: !39)
!2368 = !DILocalVariable(name: "s28", arg: 8, scope: !2358, file: !2272, line: 118, type: !39)
!2369 = !DILocation(line: 118, column: 25, scope: !2358, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 139, column: 16, scope: !2371, inlinedAt: !2344)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !2272, line: 136, column: 11)
!2372 = distinct !DILexicalBlock(scope: !2356, file: !2272, line: 135, column: 5)
!2373 = !DILocation(line: 118, column: 41, scope: !2358, inlinedAt: !2370)
!2374 = !DILocation(line: 118, column: 50, scope: !2358, inlinedAt: !2370)
!2375 = !DILocation(line: 118, column: 60, scope: !2358, inlinedAt: !2370)
!2376 = !DILocation(line: 118, column: 70, scope: !2358, inlinedAt: !2370)
!2377 = !DILocation(line: 118, column: 80, scope: !2358, inlinedAt: !2370)
!2378 = !DILocation(line: 118, column: 90, scope: !2358, inlinedAt: !2370)
!2379 = !DILocation(line: 118, column: 100, scope: !2358, inlinedAt: !2370)
!2380 = !DILocation(line: 120, column: 7, scope: !2381, inlinedAt: !2370)
!2381 = distinct !DILexicalBlock(scope: !2358, file: !2272, line: 120, column: 7)
!2382 = !DILocation(line: 120, column: 7, scope: !2358, inlinedAt: !2370)
!2383 = !DILocalVariable(name: "s1", arg: 1, scope: !2384, file: !2272, line: 104, type: !37)
!2384 = distinct !DISubprogram(name: "strcaseeq4", scope: !2272, file: !2272, line: 104, type: !2385, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!47, !37, !37, !39, !39, !39, !39, !39}
!2387 = !{!2383, !2388, !2389, !2390, !2391, !2392, !2393}
!2388 = !DILocalVariable(name: "s2", arg: 2, scope: !2384, file: !2272, line: 104, type: !37)
!2389 = !DILocalVariable(name: "s24", arg: 3, scope: !2384, file: !2272, line: 104, type: !39)
!2390 = !DILocalVariable(name: "s25", arg: 4, scope: !2384, file: !2272, line: 104, type: !39)
!2391 = !DILocalVariable(name: "s26", arg: 5, scope: !2384, file: !2272, line: 104, type: !39)
!2392 = !DILocalVariable(name: "s27", arg: 6, scope: !2384, file: !2272, line: 104, type: !39)
!2393 = !DILocalVariable(name: "s28", arg: 7, scope: !2384, file: !2272, line: 104, type: !39)
!2394 = !DILocation(line: 104, column: 25, scope: !2384, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 125, column: 16, scope: !2396, inlinedAt: !2370)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !2272, line: 122, column: 11)
!2397 = distinct !DILexicalBlock(scope: !2381, file: !2272, line: 121, column: 5)
!2398 = !DILocation(line: 104, column: 41, scope: !2384, inlinedAt: !2395)
!2399 = !DILocation(line: 104, column: 50, scope: !2384, inlinedAt: !2395)
!2400 = !DILocation(line: 104, column: 60, scope: !2384, inlinedAt: !2395)
!2401 = !DILocation(line: 104, column: 70, scope: !2384, inlinedAt: !2395)
!2402 = !DILocation(line: 104, column: 80, scope: !2384, inlinedAt: !2395)
!2403 = !DILocation(line: 104, column: 90, scope: !2384, inlinedAt: !2395)
!2404 = !DILocation(line: 106, column: 7, scope: !2405, inlinedAt: !2395)
!2405 = distinct !DILexicalBlock(scope: !2384, file: !2272, line: 106, column: 7)
!2406 = !DILocation(line: 106, column: 7, scope: !2384, inlinedAt: !2395)
!2407 = !DILocalVariable(name: "s1", arg: 1, scope: !2408, file: !2272, line: 90, type: !37)
!2408 = distinct !DISubprogram(name: "strcaseeq5", scope: !2272, file: !2272, line: 90, type: !2409, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!47, !37, !37, !39, !39, !39, !39}
!2411 = !{!2407, !2412, !2413, !2414, !2415, !2416}
!2412 = !DILocalVariable(name: "s2", arg: 2, scope: !2408, file: !2272, line: 90, type: !37)
!2413 = !DILocalVariable(name: "s25", arg: 3, scope: !2408, file: !2272, line: 90, type: !39)
!2414 = !DILocalVariable(name: "s26", arg: 4, scope: !2408, file: !2272, line: 90, type: !39)
!2415 = !DILocalVariable(name: "s27", arg: 5, scope: !2408, file: !2272, line: 90, type: !39)
!2416 = !DILocalVariable(name: "s28", arg: 6, scope: !2408, file: !2272, line: 90, type: !39)
!2417 = !DILocation(line: 90, column: 25, scope: !2408, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 111, column: 16, scope: !2419, inlinedAt: !2395)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !2272, line: 108, column: 11)
!2420 = distinct !DILexicalBlock(scope: !2405, file: !2272, line: 107, column: 5)
!2421 = !DILocation(line: 90, column: 41, scope: !2408, inlinedAt: !2418)
!2422 = !DILocation(line: 90, column: 50, scope: !2408, inlinedAt: !2418)
!2423 = !DILocation(line: 90, column: 60, scope: !2408, inlinedAt: !2418)
!2424 = !DILocation(line: 90, column: 70, scope: !2408, inlinedAt: !2418)
!2425 = !DILocation(line: 90, column: 80, scope: !2408, inlinedAt: !2418)
!2426 = !DILocation(line: 92, column: 7, scope: !2427, inlinedAt: !2418)
!2427 = distinct !DILexicalBlock(scope: !2408, file: !2272, line: 92, column: 7)
!2428 = !DILocation(line: 92, column: 7, scope: !2408, inlinedAt: !2418)
!2429 = !DILocation(line: 235, column: 12, scope: !2288)
!2430 = !DILocation(line: 235, column: 21, scope: !2288)
!2431 = !DILocation(line: 235, column: 5, scope: !2288)
!2432 = !DILocation(line: 146, column: 25, scope: !2302, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 167, column: 16, scope: !2317, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 236, column: 7, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2253, file: !157, line: 236, column: 7)
!2436 = !DILocation(line: 146, column: 41, scope: !2302, inlinedAt: !2433)
!2437 = !DILocation(line: 146, column: 50, scope: !2302, inlinedAt: !2433)
!2438 = !DILocation(line: 146, column: 60, scope: !2302, inlinedAt: !2433)
!2439 = !DILocation(line: 146, column: 70, scope: !2302, inlinedAt: !2433)
!2440 = !DILocation(line: 146, column: 80, scope: !2302, inlinedAt: !2433)
!2441 = !DILocation(line: 146, column: 90, scope: !2302, inlinedAt: !2433)
!2442 = !DILocation(line: 146, column: 100, scope: !2302, inlinedAt: !2433)
!2443 = !DILocation(line: 146, column: 110, scope: !2302, inlinedAt: !2433)
!2444 = !DILocation(line: 146, column: 120, scope: !2302, inlinedAt: !2433)
!2445 = !DILocation(line: 148, column: 7, scope: !2329, inlinedAt: !2433)
!2446 = !DILocation(line: 132, column: 25, scope: !2331, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 153, column: 16, scope: !2345, inlinedAt: !2433)
!2448 = !DILocation(line: 132, column: 41, scope: !2331, inlinedAt: !2447)
!2449 = !DILocation(line: 132, column: 50, scope: !2331, inlinedAt: !2447)
!2450 = !DILocation(line: 132, column: 60, scope: !2331, inlinedAt: !2447)
!2451 = !DILocation(line: 132, column: 70, scope: !2331, inlinedAt: !2447)
!2452 = !DILocation(line: 132, column: 80, scope: !2331, inlinedAt: !2447)
!2453 = !DILocation(line: 132, column: 90, scope: !2331, inlinedAt: !2447)
!2454 = !DILocation(line: 132, column: 100, scope: !2331, inlinedAt: !2447)
!2455 = !DILocation(line: 132, column: 110, scope: !2331, inlinedAt: !2447)
!2456 = !DILocation(line: 134, column: 7, scope: !2356, inlinedAt: !2447)
!2457 = !DILocation(line: 134, column: 7, scope: !2331, inlinedAt: !2447)
!2458 = !DILocation(line: 118, column: 25, scope: !2358, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 139, column: 16, scope: !2371, inlinedAt: !2447)
!2460 = !DILocation(line: 118, column: 41, scope: !2358, inlinedAt: !2459)
!2461 = !DILocation(line: 118, column: 50, scope: !2358, inlinedAt: !2459)
!2462 = !DILocation(line: 118, column: 60, scope: !2358, inlinedAt: !2459)
!2463 = !DILocation(line: 118, column: 70, scope: !2358, inlinedAt: !2459)
!2464 = !DILocation(line: 118, column: 80, scope: !2358, inlinedAt: !2459)
!2465 = !DILocation(line: 118, column: 90, scope: !2358, inlinedAt: !2459)
!2466 = !DILocation(line: 118, column: 100, scope: !2358, inlinedAt: !2459)
!2467 = !DILocation(line: 120, column: 7, scope: !2381, inlinedAt: !2459)
!2468 = !DILocation(line: 120, column: 7, scope: !2358, inlinedAt: !2459)
!2469 = !DILocation(line: 104, column: 25, scope: !2384, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 125, column: 16, scope: !2396, inlinedAt: !2459)
!2471 = !DILocation(line: 104, column: 41, scope: !2384, inlinedAt: !2470)
!2472 = !DILocation(line: 104, column: 50, scope: !2384, inlinedAt: !2470)
!2473 = !DILocation(line: 104, column: 60, scope: !2384, inlinedAt: !2470)
!2474 = !DILocation(line: 104, column: 70, scope: !2384, inlinedAt: !2470)
!2475 = !DILocation(line: 104, column: 80, scope: !2384, inlinedAt: !2470)
!2476 = !DILocation(line: 104, column: 90, scope: !2384, inlinedAt: !2470)
!2477 = !DILocation(line: 106, column: 7, scope: !2405, inlinedAt: !2470)
!2478 = !DILocation(line: 106, column: 7, scope: !2384, inlinedAt: !2470)
!2479 = !DILocation(line: 90, column: 25, scope: !2408, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 111, column: 16, scope: !2419, inlinedAt: !2470)
!2481 = !DILocation(line: 90, column: 41, scope: !2408, inlinedAt: !2480)
!2482 = !DILocation(line: 90, column: 50, scope: !2408, inlinedAt: !2480)
!2483 = !DILocation(line: 90, column: 60, scope: !2408, inlinedAt: !2480)
!2484 = !DILocation(line: 90, column: 70, scope: !2408, inlinedAt: !2480)
!2485 = !DILocation(line: 90, column: 80, scope: !2408, inlinedAt: !2480)
!2486 = !DILocation(line: 92, column: 7, scope: !2427, inlinedAt: !2480)
!2487 = !DILocation(line: 92, column: 7, scope: !2408, inlinedAt: !2480)
!2488 = !DILocalVariable(name: "s1", arg: 1, scope: !2489, file: !2272, line: 76, type: !37)
!2489 = distinct !DISubprogram(name: "strcaseeq6", scope: !2272, file: !2272, line: 76, type: !2490, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!47, !37, !37, !39, !39, !39}
!2492 = !{!2488, !2493, !2494, !2495, !2496}
!2493 = !DILocalVariable(name: "s2", arg: 2, scope: !2489, file: !2272, line: 76, type: !37)
!2494 = !DILocalVariable(name: "s26", arg: 3, scope: !2489, file: !2272, line: 76, type: !39)
!2495 = !DILocalVariable(name: "s27", arg: 4, scope: !2489, file: !2272, line: 76, type: !39)
!2496 = !DILocalVariable(name: "s28", arg: 5, scope: !2489, file: !2272, line: 76, type: !39)
!2497 = !DILocation(line: 76, column: 25, scope: !2489, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 97, column: 16, scope: !2499, inlinedAt: !2480)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !2272, line: 94, column: 11)
!2500 = distinct !DILexicalBlock(scope: !2427, file: !2272, line: 93, column: 5)
!2501 = !DILocation(line: 76, column: 41, scope: !2489, inlinedAt: !2498)
!2502 = !DILocation(line: 76, column: 50, scope: !2489, inlinedAt: !2498)
!2503 = !DILocation(line: 76, column: 60, scope: !2489, inlinedAt: !2498)
!2504 = !DILocation(line: 76, column: 70, scope: !2489, inlinedAt: !2498)
!2505 = !DILocation(line: 78, column: 7, scope: !2506, inlinedAt: !2498)
!2506 = distinct !DILexicalBlock(scope: !2489, file: !2272, line: 78, column: 7)
!2507 = !DILocation(line: 78, column: 7, scope: !2489, inlinedAt: !2498)
!2508 = !DILocalVariable(name: "s1", arg: 1, scope: !2509, file: !2272, line: 62, type: !37)
!2509 = distinct !DISubprogram(name: "strcaseeq7", scope: !2272, file: !2272, line: 62, type: !2510, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!47, !37, !37, !39, !39}
!2512 = !{!2508, !2513, !2514, !2515}
!2513 = !DILocalVariable(name: "s2", arg: 2, scope: !2509, file: !2272, line: 62, type: !37)
!2514 = !DILocalVariable(name: "s27", arg: 3, scope: !2509, file: !2272, line: 62, type: !39)
!2515 = !DILocalVariable(name: "s28", arg: 4, scope: !2509, file: !2272, line: 62, type: !39)
!2516 = !DILocation(line: 62, column: 25, scope: !2509, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 83, column: 16, scope: !2518, inlinedAt: !2498)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !2272, line: 80, column: 11)
!2519 = distinct !DILexicalBlock(scope: !2506, file: !2272, line: 79, column: 5)
!2520 = !DILocation(line: 62, column: 41, scope: !2509, inlinedAt: !2517)
!2521 = !DILocation(line: 62, column: 50, scope: !2509, inlinedAt: !2517)
!2522 = !DILocation(line: 62, column: 60, scope: !2509, inlinedAt: !2517)
!2523 = !DILocation(line: 64, column: 7, scope: !2524, inlinedAt: !2517)
!2524 = distinct !DILexicalBlock(scope: !2509, file: !2272, line: 64, column: 7)
!2525 = !DILocation(line: 236, column: 7, scope: !2253)
!2526 = !DILocation(line: 237, column: 12, scope: !2435)
!2527 = !DILocation(line: 237, column: 21, scope: !2435)
!2528 = !DILocation(line: 237, column: 5, scope: !2435)
!2529 = !DILocation(line: 239, column: 13, scope: !2253)
!2530 = !DILocation(line: 239, column: 11, scope: !2253)
!2531 = !DILocation(line: 239, column: 3, scope: !2253)
!2532 = !DILocation(line: 0, scope: !2253)
!2533 = !DILocation(line: 240, column: 1, scope: !2253)
!2534 = distinct !DISubprogram(name: "quotearg_alloc", scope: !157, file: !157, line: 799, type: !2535, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!40, !37, !48, !1575}
!2537 = !{!2538, !2539, !2540}
!2538 = !DILocalVariable(name: "arg", arg: 1, scope: !2534, file: !157, line: 799, type: !37)
!2539 = !DILocalVariable(name: "argsize", arg: 2, scope: !2534, file: !157, line: 799, type: !48)
!2540 = !DILocalVariable(name: "o", arg: 3, scope: !2534, file: !157, line: 800, type: !1575)
!2541 = !DILocation(line: 799, column: 29, scope: !2534)
!2542 = !DILocation(line: 799, column: 41, scope: !2534)
!2543 = !DILocation(line: 800, column: 47, scope: !2534)
!2544 = !DILocalVariable(name: "arg", arg: 1, scope: !2545, file: !157, line: 812, type: !37)
!2545 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !157, file: !157, line: 812, type: !2546, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!40, !37, !48, !264, !1575}
!2548 = !{!2544, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556}
!2549 = !DILocalVariable(name: "argsize", arg: 2, scope: !2545, file: !157, line: 812, type: !48)
!2550 = !DILocalVariable(name: "size", arg: 3, scope: !2545, file: !157, line: 812, type: !264)
!2551 = !DILocalVariable(name: "o", arg: 4, scope: !2545, file: !157, line: 813, type: !1575)
!2552 = !DILocalVariable(name: "p", scope: !2545, file: !157, line: 815, type: !1575)
!2553 = !DILocalVariable(name: "e", scope: !2545, file: !157, line: 816, type: !47)
!2554 = !DILocalVariable(name: "flags", scope: !2545, file: !157, line: 818, type: !47)
!2555 = !DILocalVariable(name: "bufsize", scope: !2545, file: !157, line: 819, type: !48)
!2556 = !DILocalVariable(name: "buf", scope: !2545, file: !157, line: 823, type: !40)
!2557 = !DILocation(line: 812, column: 33, scope: !2545, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 802, column: 10, scope: !2534)
!2559 = !DILocation(line: 812, column: 45, scope: !2545, inlinedAt: !2558)
!2560 = !DILocation(line: 812, column: 62, scope: !2545, inlinedAt: !2558)
!2561 = !DILocation(line: 813, column: 51, scope: !2545, inlinedAt: !2558)
!2562 = !DILocation(line: 815, column: 37, scope: !2545, inlinedAt: !2558)
!2563 = !DILocation(line: 815, column: 33, scope: !2545, inlinedAt: !2558)
!2564 = !DILocation(line: 816, column: 11, scope: !2545, inlinedAt: !2558)
!2565 = !DILocation(line: 816, column: 7, scope: !2545, inlinedAt: !2558)
!2566 = !DILocation(line: 818, column: 18, scope: !2545, inlinedAt: !2558)
!2567 = !DILocation(line: 818, column: 24, scope: !2545, inlinedAt: !2558)
!2568 = !DILocation(line: 818, column: 7, scope: !2545, inlinedAt: !2558)
!2569 = !DILocation(line: 819, column: 69, scope: !2545, inlinedAt: !2558)
!2570 = !DILocation(line: 820, column: 53, scope: !2545, inlinedAt: !2558)
!2571 = !DILocation(line: 821, column: 49, scope: !2545, inlinedAt: !2558)
!2572 = !DILocation(line: 822, column: 49, scope: !2545, inlinedAt: !2558)
!2573 = !DILocation(line: 819, column: 20, scope: !2545, inlinedAt: !2558)
!2574 = !DILocation(line: 822, column: 62, scope: !2545, inlinedAt: !2558)
!2575 = !DILocation(line: 819, column: 10, scope: !2545, inlinedAt: !2558)
!2576 = !DILocalVariable(name: "n", arg: 1, scope: !2577, file: !260, line: 216, type: !48)
!2577 = distinct !DISubprogram(name: "xcharalloc", scope: !260, file: !260, line: 216, type: !2578, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!40, !48}
!2580 = !{!2576}
!2581 = !DILocation(line: 216, column: 20, scope: !2577, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 823, column: 15, scope: !2545, inlinedAt: !2558)
!2583 = !DILocation(line: 218, column: 10, scope: !2577, inlinedAt: !2582)
!2584 = !DILocation(line: 823, column: 9, scope: !2545, inlinedAt: !2558)
!2585 = !DILocation(line: 824, column: 60, scope: !2545, inlinedAt: !2558)
!2586 = !DILocation(line: 826, column: 32, scope: !2545, inlinedAt: !2558)
!2587 = !DILocation(line: 826, column: 47, scope: !2545, inlinedAt: !2558)
!2588 = !DILocation(line: 824, column: 3, scope: !2545, inlinedAt: !2558)
!2589 = !DILocation(line: 827, column: 9, scope: !2545, inlinedAt: !2558)
!2590 = !DILocation(line: 802, column: 3, scope: !2534)
!2591 = !DILocation(line: 812, column: 33, scope: !2545)
!2592 = !DILocation(line: 812, column: 45, scope: !2545)
!2593 = !DILocation(line: 812, column: 62, scope: !2545)
!2594 = !DILocation(line: 813, column: 51, scope: !2545)
!2595 = !DILocation(line: 815, column: 37, scope: !2545)
!2596 = !DILocation(line: 815, column: 33, scope: !2545)
!2597 = !DILocation(line: 816, column: 11, scope: !2545)
!2598 = !DILocation(line: 816, column: 7, scope: !2545)
!2599 = !DILocation(line: 818, column: 18, scope: !2545)
!2600 = !DILocation(line: 818, column: 27, scope: !2545)
!2601 = !DILocation(line: 818, column: 24, scope: !2545)
!2602 = !DILocation(line: 818, column: 7, scope: !2545)
!2603 = !DILocation(line: 819, column: 69, scope: !2545)
!2604 = !DILocation(line: 820, column: 53, scope: !2545)
!2605 = !DILocation(line: 821, column: 49, scope: !2545)
!2606 = !DILocation(line: 822, column: 49, scope: !2545)
!2607 = !DILocation(line: 819, column: 20, scope: !2545)
!2608 = !DILocation(line: 822, column: 62, scope: !2545)
!2609 = !DILocation(line: 819, column: 10, scope: !2545)
!2610 = !DILocation(line: 216, column: 20, scope: !2577, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 823, column: 15, scope: !2545)
!2612 = !DILocation(line: 218, column: 10, scope: !2577, inlinedAt: !2611)
!2613 = !DILocation(line: 823, column: 9, scope: !2545)
!2614 = !DILocation(line: 824, column: 60, scope: !2545)
!2615 = !DILocation(line: 826, column: 32, scope: !2545)
!2616 = !DILocation(line: 826, column: 47, scope: !2545)
!2617 = !DILocation(line: 824, column: 3, scope: !2545)
!2618 = !DILocation(line: 827, column: 9, scope: !2545)
!2619 = !DILocation(line: 828, column: 7, scope: !2545)
!2620 = !DILocation(line: 829, column: 11, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2545, file: !157, line: 828, column: 7)
!2622 = !{!1211, !1211, i64 0}
!2623 = !DILocation(line: 829, column: 5, scope: !2621)
!2624 = !DILocation(line: 830, column: 3, scope: !2545)
!2625 = distinct !DISubprogram(name: "quotearg_free", scope: !157, file: !157, line: 848, type: !103, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2626)
!2626 = !{!2627, !2628}
!2627 = !DILocalVariable(name: "sv", scope: !2625, file: !157, line: 850, type: !183)
!2628 = !DILocalVariable(name: "i", scope: !2625, file: !157, line: 851, type: !47)
!2629 = !DILocation(line: 850, column: 24, scope: !2625)
!2630 = !DILocation(line: 850, column: 19, scope: !2625)
!2631 = !DILocation(line: 851, column: 7, scope: !2625)
!2632 = !DILocation(line: 852, column: 19, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !157, line: 852, column: 3)
!2634 = distinct !DILexicalBlock(scope: !2625, file: !157, line: 852, column: 3)
!2635 = !DILocation(line: 852, column: 17, scope: !2633)
!2636 = !DILocation(line: 852, column: 3, scope: !2634)
!2637 = !DILocation(line: 853, column: 17, scope: !2633)
!2638 = !{!2639, !717, i64 8}
!2639 = !{!"slotvec", !1211, i64 0, !717, i64 8}
!2640 = !DILocation(line: 853, column: 5, scope: !2633)
!2641 = !DILocation(line: 852, column: 28, scope: !2633)
!2642 = distinct !{!2642, !2636, !2643}
!2643 = !DILocation(line: 853, column: 20, scope: !2634)
!2644 = !DILocation(line: 854, column: 13, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2625, file: !157, line: 854, column: 7)
!2646 = !DILocation(line: 854, column: 17, scope: !2645)
!2647 = !DILocation(line: 854, column: 7, scope: !2625)
!2648 = !DILocation(line: 856, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2645, file: !157, line: 855, column: 5)
!2650 = !DILocation(line: 857, column: 21, scope: !2649)
!2651 = !{!2639, !1211, i64 0}
!2652 = !DILocation(line: 858, column: 20, scope: !2649)
!2653 = !DILocation(line: 859, column: 5, scope: !2649)
!2654 = !DILocation(line: 860, column: 10, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2625, file: !157, line: 860, column: 7)
!2656 = !DILocation(line: 860, column: 7, scope: !2625)
!2657 = !DILocation(line: 862, column: 13, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2655, file: !157, line: 861, column: 5)
!2659 = !DILocation(line: 862, column: 7, scope: !2658)
!2660 = !DILocation(line: 863, column: 15, scope: !2658)
!2661 = !DILocation(line: 864, column: 5, scope: !2658)
!2662 = !DILocation(line: 865, column: 10, scope: !2625)
!2663 = !DILocation(line: 866, column: 1, scope: !2625)
!2664 = distinct !DISubprogram(name: "quotearg_n", scope: !157, file: !157, line: 931, type: !2665, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!40, !47, !37}
!2667 = !{!2668, !2669}
!2668 = !DILocalVariable(name: "n", arg: 1, scope: !2664, file: !157, line: 931, type: !47)
!2669 = !DILocalVariable(name: "arg", arg: 2, scope: !2664, file: !157, line: 931, type: !37)
!2670 = !DILocation(line: 931, column: 17, scope: !2664)
!2671 = !DILocation(line: 931, column: 32, scope: !2664)
!2672 = !DILocation(line: 933, column: 10, scope: !2664)
!2673 = !DILocation(line: 933, column: 3, scope: !2664)
!2674 = distinct !DISubprogram(name: "quotearg_n_options", scope: !157, file: !157, line: 877, type: !2675, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!40, !47, !37, !48, !1575}
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683, !2684, !2687, !2688, !2690, !2691, !2692}
!2678 = !DILocalVariable(name: "n", arg: 1, scope: !2674, file: !157, line: 877, type: !47)
!2679 = !DILocalVariable(name: "arg", arg: 2, scope: !2674, file: !157, line: 877, type: !37)
!2680 = !DILocalVariable(name: "argsize", arg: 3, scope: !2674, file: !157, line: 877, type: !48)
!2681 = !DILocalVariable(name: "options", arg: 4, scope: !2674, file: !157, line: 878, type: !1575)
!2682 = !DILocalVariable(name: "e", scope: !2674, file: !157, line: 880, type: !47)
!2683 = !DILocalVariable(name: "sv", scope: !2674, file: !157, line: 882, type: !183)
!2684 = !DILocalVariable(name: "preallocated", scope: !2685, file: !157, line: 889, type: !55)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !157, line: 888, column: 5)
!2686 = distinct !DILexicalBlock(scope: !2674, file: !157, line: 887, column: 7)
!2687 = !DILocalVariable(name: "nmax", scope: !2685, file: !157, line: 890, type: !47)
!2688 = !DILocalVariable(name: "size", scope: !2689, file: !157, line: 903, type: !48)
!2689 = distinct !DILexicalBlock(scope: !2674, file: !157, line: 902, column: 3)
!2690 = !DILocalVariable(name: "val", scope: !2689, file: !157, line: 904, type: !40)
!2691 = !DILocalVariable(name: "flags", scope: !2689, file: !157, line: 906, type: !47)
!2692 = !DILocalVariable(name: "qsize", scope: !2689, file: !157, line: 907, type: !48)
!2693 = !DILocation(line: 877, column: 25, scope: !2674)
!2694 = !DILocation(line: 877, column: 40, scope: !2674)
!2695 = !DILocation(line: 877, column: 52, scope: !2674)
!2696 = !DILocation(line: 878, column: 51, scope: !2674)
!2697 = !DILocation(line: 880, column: 11, scope: !2674)
!2698 = !DILocation(line: 880, column: 7, scope: !2674)
!2699 = !DILocation(line: 882, column: 24, scope: !2674)
!2700 = !DILocation(line: 882, column: 19, scope: !2674)
!2701 = !DILocation(line: 884, column: 9, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2674, file: !157, line: 884, column: 7)
!2703 = !DILocation(line: 884, column: 7, scope: !2674)
!2704 = !DILocation(line: 885, column: 5, scope: !2702)
!2705 = !DILocation(line: 887, column: 7, scope: !2686)
!2706 = !DILocation(line: 887, column: 14, scope: !2686)
!2707 = !DILocation(line: 887, column: 7, scope: !2674)
!2708 = !DILocation(line: 889, column: 31, scope: !2685)
!2709 = !DILocation(line: 890, column: 11, scope: !2685)
!2710 = !DILocation(line: 892, column: 16, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2685, file: !157, line: 892, column: 11)
!2712 = !DILocation(line: 892, column: 11, scope: !2685)
!2713 = !DILocation(line: 893, column: 9, scope: !2711)
!2714 = !DILocation(line: 895, column: 32, scope: !2685)
!2715 = !DILocation(line: 895, column: 61, scope: !2685)
!2716 = !DILocation(line: 895, column: 58, scope: !2685)
!2717 = !DILocation(line: 895, column: 66, scope: !2685)
!2718 = !DILocation(line: 895, column: 22, scope: !2685)
!2719 = !DILocation(line: 895, column: 15, scope: !2685)
!2720 = !DILocation(line: 896, column: 11, scope: !2685)
!2721 = !DILocation(line: 897, column: 15, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2685, file: !157, line: 896, column: 11)
!2723 = !{i64 0, i64 8, !2622, i64 8, i64 8, !716}
!2724 = !DILocation(line: 897, column: 9, scope: !2722)
!2725 = !DILocation(line: 898, column: 20, scope: !2685)
!2726 = !DILocation(line: 898, column: 18, scope: !2685)
!2727 = !DILocation(line: 898, column: 7, scope: !2685)
!2728 = !DILocation(line: 898, column: 38, scope: !2685)
!2729 = !DILocation(line: 898, column: 31, scope: !2685)
!2730 = !DILocation(line: 898, column: 48, scope: !2685)
!2731 = !DILocation(line: 899, column: 14, scope: !2685)
!2732 = !DILocation(line: 900, column: 5, scope: !2685)
!2733 = !DILocation(line: 0, scope: !2674)
!2734 = !DILocation(line: 903, column: 19, scope: !2689)
!2735 = !DILocation(line: 903, column: 25, scope: !2689)
!2736 = !DILocation(line: 903, column: 12, scope: !2689)
!2737 = !DILocation(line: 904, column: 23, scope: !2689)
!2738 = !DILocation(line: 904, column: 11, scope: !2689)
!2739 = !DILocation(line: 906, column: 26, scope: !2689)
!2740 = !DILocation(line: 906, column: 32, scope: !2689)
!2741 = !DILocation(line: 906, column: 9, scope: !2689)
!2742 = !DILocation(line: 908, column: 55, scope: !2689)
!2743 = !DILocation(line: 909, column: 46, scope: !2689)
!2744 = !DILocation(line: 910, column: 55, scope: !2689)
!2745 = !DILocation(line: 911, column: 55, scope: !2689)
!2746 = !DILocation(line: 907, column: 20, scope: !2689)
!2747 = !DILocation(line: 907, column: 12, scope: !2689)
!2748 = !DILocation(line: 913, column: 14, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2689, file: !157, line: 913, column: 9)
!2750 = !DILocation(line: 913, column: 9, scope: !2689)
!2751 = !DILocation(line: 915, column: 35, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2749, file: !157, line: 914, column: 7)
!2753 = !DILocation(line: 915, column: 20, scope: !2752)
!2754 = !DILocation(line: 916, column: 17, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2752, file: !157, line: 916, column: 13)
!2756 = !DILocation(line: 916, column: 13, scope: !2752)
!2757 = !DILocation(line: 917, column: 11, scope: !2755)
!2758 = !DILocation(line: 216, column: 20, scope: !2577, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 918, column: 27, scope: !2752)
!2760 = !DILocation(line: 218, column: 10, scope: !2577, inlinedAt: !2759)
!2761 = !DILocation(line: 918, column: 19, scope: !2752)
!2762 = !DILocation(line: 919, column: 69, scope: !2752)
!2763 = !DILocation(line: 921, column: 44, scope: !2752)
!2764 = !DILocation(line: 922, column: 44, scope: !2752)
!2765 = !DILocation(line: 919, column: 9, scope: !2752)
!2766 = !DILocation(line: 923, column: 7, scope: !2752)
!2767 = !DILocation(line: 0, scope: !2689)
!2768 = !DILocation(line: 925, column: 11, scope: !2689)
!2769 = !DILocation(line: 926, column: 5, scope: !2689)
!2770 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !157, file: !157, line: 937, type: !2771, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!40, !47, !37, !48}
!2773 = !{!2774, !2775, !2776}
!2774 = !DILocalVariable(name: "n", arg: 1, scope: !2770, file: !157, line: 937, type: !47)
!2775 = !DILocalVariable(name: "arg", arg: 2, scope: !2770, file: !157, line: 937, type: !37)
!2776 = !DILocalVariable(name: "argsize", arg: 3, scope: !2770, file: !157, line: 937, type: !48)
!2777 = !DILocation(line: 937, column: 21, scope: !2770)
!2778 = !DILocation(line: 937, column: 36, scope: !2770)
!2779 = !DILocation(line: 937, column: 48, scope: !2770)
!2780 = !DILocation(line: 939, column: 10, scope: !2770)
!2781 = !DILocation(line: 939, column: 3, scope: !2770)
!2782 = distinct !DISubprogram(name: "quotearg", scope: !157, file: !157, line: 943, type: !2783, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!40, !37}
!2785 = !{!2786}
!2786 = !DILocalVariable(name: "arg", arg: 1, scope: !2782, file: !157, line: 943, type: !37)
!2787 = !DILocation(line: 943, column: 23, scope: !2782)
!2788 = !DILocation(line: 931, column: 17, scope: !2664, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 945, column: 10, scope: !2782)
!2790 = !DILocation(line: 931, column: 32, scope: !2664, inlinedAt: !2789)
!2791 = !DILocation(line: 933, column: 10, scope: !2664, inlinedAt: !2789)
!2792 = !DILocation(line: 945, column: 3, scope: !2782)
!2793 = distinct !DISubprogram(name: "quotearg_mem", scope: !157, file: !157, line: 949, type: !2794, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!40, !37, !48}
!2796 = !{!2797, !2798}
!2797 = !DILocalVariable(name: "arg", arg: 1, scope: !2793, file: !157, line: 949, type: !37)
!2798 = !DILocalVariable(name: "argsize", arg: 2, scope: !2793, file: !157, line: 949, type: !48)
!2799 = !DILocation(line: 949, column: 27, scope: !2793)
!2800 = !DILocation(line: 949, column: 39, scope: !2793)
!2801 = !DILocation(line: 937, column: 21, scope: !2770, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 951, column: 10, scope: !2793)
!2803 = !DILocation(line: 937, column: 36, scope: !2770, inlinedAt: !2802)
!2804 = !DILocation(line: 937, column: 48, scope: !2770, inlinedAt: !2802)
!2805 = !DILocation(line: 939, column: 10, scope: !2770, inlinedAt: !2802)
!2806 = !DILocation(line: 951, column: 3, scope: !2793)
!2807 = distinct !DISubprogram(name: "quotearg_n_style", scope: !157, file: !157, line: 955, type: !2808, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!40, !47, !22, !37}
!2810 = !{!2811, !2812, !2813, !2814}
!2811 = !DILocalVariable(name: "n", arg: 1, scope: !2807, file: !157, line: 955, type: !47)
!2812 = !DILocalVariable(name: "s", arg: 2, scope: !2807, file: !157, line: 955, type: !22)
!2813 = !DILocalVariable(name: "arg", arg: 3, scope: !2807, file: !157, line: 955, type: !37)
!2814 = !DILocalVariable(name: "o", scope: !2807, file: !157, line: 957, type: !1576)
!2815 = !DILocation(line: 955, column: 23, scope: !2807)
!2816 = !DILocation(line: 955, column: 45, scope: !2807)
!2817 = !DILocation(line: 955, column: 60, scope: !2807)
!2818 = !DILocation(line: 957, column: 3, scope: !2807)
!2819 = !DILocation(line: 957, column: 32, scope: !2807)
!2820 = !DILocalVariable(name: "style", arg: 1, scope: !2821, file: !157, line: 193, type: !22)
!2821 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !157, file: !157, line: 193, type: !2822, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!164, !22}
!2824 = !{!2820, !2825}
!2825 = !DILocalVariable(name: "o", scope: !2821, file: !157, line: 195, type: !164)
!2826 = !DILocation(line: 193, column: 48, scope: !2821, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 957, column: 36, scope: !2807)
!2828 = !DILocation(line: 195, column: 26, scope: !2821, inlinedAt: !2827)
!2829 = !{!2830}
!2830 = distinct !{!2830, !2831, !"quoting_options_from_style: argument 0"}
!2831 = distinct !{!2831, !"quoting_options_from_style"}
!2832 = !DILocation(line: 196, column: 13, scope: !2833, inlinedAt: !2827)
!2833 = distinct !DILexicalBlock(scope: !2821, file: !157, line: 196, column: 7)
!2834 = !DILocation(line: 196, column: 7, scope: !2821, inlinedAt: !2827)
!2835 = !DILocation(line: 197, column: 5, scope: !2833, inlinedAt: !2827)
!2836 = !DILocation(line: 198, column: 5, scope: !2821, inlinedAt: !2827)
!2837 = !DILocation(line: 198, column: 11, scope: !2821, inlinedAt: !2827)
!2838 = !DILocation(line: 958, column: 10, scope: !2807)
!2839 = !DILocation(line: 959, column: 1, scope: !2807)
!2840 = !DILocation(line: 958, column: 3, scope: !2807)
!2841 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !157, file: !157, line: 962, type: !2842, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!40, !47, !22, !37, !48}
!2844 = !{!2845, !2846, !2847, !2848, !2849}
!2845 = !DILocalVariable(name: "n", arg: 1, scope: !2841, file: !157, line: 962, type: !47)
!2846 = !DILocalVariable(name: "s", arg: 2, scope: !2841, file: !157, line: 962, type: !22)
!2847 = !DILocalVariable(name: "arg", arg: 3, scope: !2841, file: !157, line: 963, type: !37)
!2848 = !DILocalVariable(name: "argsize", arg: 4, scope: !2841, file: !157, line: 963, type: !48)
!2849 = !DILocalVariable(name: "o", scope: !2841, file: !157, line: 965, type: !1576)
!2850 = !DILocation(line: 962, column: 27, scope: !2841)
!2851 = !DILocation(line: 962, column: 49, scope: !2841)
!2852 = !DILocation(line: 963, column: 35, scope: !2841)
!2853 = !DILocation(line: 963, column: 47, scope: !2841)
!2854 = !DILocation(line: 965, column: 3, scope: !2841)
!2855 = !DILocation(line: 965, column: 32, scope: !2841)
!2856 = !DILocation(line: 193, column: 48, scope: !2821, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 965, column: 36, scope: !2841)
!2858 = !DILocation(line: 195, column: 26, scope: !2821, inlinedAt: !2857)
!2859 = !{!2860}
!2860 = distinct !{!2860, !2861, !"quoting_options_from_style: argument 0"}
!2861 = distinct !{!2861, !"quoting_options_from_style"}
!2862 = !DILocation(line: 196, column: 13, scope: !2833, inlinedAt: !2857)
!2863 = !DILocation(line: 196, column: 7, scope: !2821, inlinedAt: !2857)
!2864 = !DILocation(line: 197, column: 5, scope: !2833, inlinedAt: !2857)
!2865 = !DILocation(line: 198, column: 5, scope: !2821, inlinedAt: !2857)
!2866 = !DILocation(line: 198, column: 11, scope: !2821, inlinedAt: !2857)
!2867 = !DILocation(line: 966, column: 10, scope: !2841)
!2868 = !DILocation(line: 967, column: 1, scope: !2841)
!2869 = !DILocation(line: 966, column: 3, scope: !2841)
!2870 = distinct !DISubprogram(name: "quotearg_style", scope: !157, file: !157, line: 970, type: !2871, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!40, !22, !37}
!2873 = !{!2874, !2875}
!2874 = !DILocalVariable(name: "s", arg: 1, scope: !2870, file: !157, line: 970, type: !22)
!2875 = !DILocalVariable(name: "arg", arg: 2, scope: !2870, file: !157, line: 970, type: !37)
!2876 = !DILocation(line: 970, column: 36, scope: !2870)
!2877 = !DILocation(line: 970, column: 51, scope: !2870)
!2878 = !DILocation(line: 955, column: 23, scope: !2807, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 972, column: 10, scope: !2870)
!2880 = !DILocation(line: 955, column: 45, scope: !2807, inlinedAt: !2879)
!2881 = !DILocation(line: 955, column: 60, scope: !2807, inlinedAt: !2879)
!2882 = !DILocation(line: 957, column: 3, scope: !2807, inlinedAt: !2879)
!2883 = !DILocation(line: 957, column: 32, scope: !2807, inlinedAt: !2879)
!2884 = !DILocation(line: 193, column: 48, scope: !2821, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 957, column: 36, scope: !2807, inlinedAt: !2879)
!2886 = !DILocation(line: 195, column: 26, scope: !2821, inlinedAt: !2885)
!2887 = !{!2888}
!2888 = distinct !{!2888, !2889, !"quoting_options_from_style: argument 0"}
!2889 = distinct !{!2889, !"quoting_options_from_style"}
!2890 = !DILocation(line: 196, column: 13, scope: !2833, inlinedAt: !2885)
!2891 = !DILocation(line: 196, column: 7, scope: !2821, inlinedAt: !2885)
!2892 = !DILocation(line: 197, column: 5, scope: !2833, inlinedAt: !2885)
!2893 = !DILocation(line: 198, column: 5, scope: !2821, inlinedAt: !2885)
!2894 = !DILocation(line: 198, column: 11, scope: !2821, inlinedAt: !2885)
!2895 = !DILocation(line: 958, column: 10, scope: !2807, inlinedAt: !2879)
!2896 = !DILocation(line: 959, column: 1, scope: !2807, inlinedAt: !2879)
!2897 = !DILocation(line: 972, column: 3, scope: !2870)
!2898 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !157, file: !157, line: 976, type: !2899, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!40, !22, !37, !48}
!2901 = !{!2902, !2903, !2904}
!2902 = !DILocalVariable(name: "s", arg: 1, scope: !2898, file: !157, line: 976, type: !22)
!2903 = !DILocalVariable(name: "arg", arg: 2, scope: !2898, file: !157, line: 976, type: !37)
!2904 = !DILocalVariable(name: "argsize", arg: 3, scope: !2898, file: !157, line: 976, type: !48)
!2905 = !DILocation(line: 976, column: 40, scope: !2898)
!2906 = !DILocation(line: 976, column: 55, scope: !2898)
!2907 = !DILocation(line: 976, column: 67, scope: !2898)
!2908 = !DILocation(line: 962, column: 27, scope: !2841, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 978, column: 10, scope: !2898)
!2910 = !DILocation(line: 962, column: 49, scope: !2841, inlinedAt: !2909)
!2911 = !DILocation(line: 963, column: 35, scope: !2841, inlinedAt: !2909)
!2912 = !DILocation(line: 963, column: 47, scope: !2841, inlinedAt: !2909)
!2913 = !DILocation(line: 965, column: 3, scope: !2841, inlinedAt: !2909)
!2914 = !DILocation(line: 965, column: 32, scope: !2841, inlinedAt: !2909)
!2915 = !DILocation(line: 193, column: 48, scope: !2821, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 965, column: 36, scope: !2841, inlinedAt: !2909)
!2917 = !DILocation(line: 195, column: 26, scope: !2821, inlinedAt: !2916)
!2918 = !{!2919}
!2919 = distinct !{!2919, !2920, !"quoting_options_from_style: argument 0"}
!2920 = distinct !{!2920, !"quoting_options_from_style"}
!2921 = !DILocation(line: 196, column: 13, scope: !2833, inlinedAt: !2916)
!2922 = !DILocation(line: 196, column: 7, scope: !2821, inlinedAt: !2916)
!2923 = !DILocation(line: 197, column: 5, scope: !2833, inlinedAt: !2916)
!2924 = !DILocation(line: 198, column: 5, scope: !2821, inlinedAt: !2916)
!2925 = !DILocation(line: 198, column: 11, scope: !2821, inlinedAt: !2916)
!2926 = !DILocation(line: 966, column: 10, scope: !2841, inlinedAt: !2909)
!2927 = !DILocation(line: 967, column: 1, scope: !2841, inlinedAt: !2909)
!2928 = !DILocation(line: 978, column: 3, scope: !2898)
!2929 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !157, file: !157, line: 982, type: !2930, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!40, !37, !48, !39}
!2932 = !{!2933, !2934, !2935, !2936}
!2933 = !DILocalVariable(name: "arg", arg: 1, scope: !2929, file: !157, line: 982, type: !37)
!2934 = !DILocalVariable(name: "argsize", arg: 2, scope: !2929, file: !157, line: 982, type: !48)
!2935 = !DILocalVariable(name: "ch", arg: 3, scope: !2929, file: !157, line: 982, type: !39)
!2936 = !DILocalVariable(name: "options", scope: !2929, file: !157, line: 984, type: !164)
!2937 = !DILocation(line: 982, column: 32, scope: !2929)
!2938 = !DILocation(line: 982, column: 44, scope: !2929)
!2939 = !DILocation(line: 982, column: 58, scope: !2929)
!2940 = !DILocation(line: 984, column: 3, scope: !2929)
!2941 = !DILocation(line: 985, column: 13, scope: !2929)
!2942 = !{i64 0, i64 4, !871, i64 4, i64 4, !889, i64 8, i64 32, !871, i64 40, i64 8, !716, i64 48, i64 8, !716}
!2943 = !DILocation(line: 984, column: 26, scope: !2929)
!2944 = !DILocation(line: 152, column: 43, scope: !1597, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 986, column: 3, scope: !2929)
!2946 = !DILocation(line: 152, column: 51, scope: !1597, inlinedAt: !2945)
!2947 = !DILocation(line: 152, column: 58, scope: !1597, inlinedAt: !2945)
!2948 = !DILocation(line: 154, column: 17, scope: !1597, inlinedAt: !2945)
!2949 = !DILocation(line: 156, column: 62, scope: !1597, inlinedAt: !2945)
!2950 = !DILocation(line: 156, column: 57, scope: !1597, inlinedAt: !2945)
!2951 = !DILocation(line: 155, column: 17, scope: !1597, inlinedAt: !2945)
!2952 = !DILocation(line: 157, column: 15, scope: !1597, inlinedAt: !2945)
!2953 = !DILocation(line: 157, column: 7, scope: !1597, inlinedAt: !2945)
!2954 = !DILocation(line: 158, column: 12, scope: !1597, inlinedAt: !2945)
!2955 = !DILocation(line: 158, column: 15, scope: !1597, inlinedAt: !2945)
!2956 = !DILocation(line: 158, column: 25, scope: !1597, inlinedAt: !2945)
!2957 = !DILocation(line: 158, column: 7, scope: !1597, inlinedAt: !2945)
!2958 = !DILocation(line: 159, column: 18, scope: !1597, inlinedAt: !2945)
!2959 = !DILocation(line: 159, column: 23, scope: !1597, inlinedAt: !2945)
!2960 = !DILocation(line: 159, column: 6, scope: !1597, inlinedAt: !2945)
!2961 = !DILocation(line: 987, column: 10, scope: !2929)
!2962 = !DILocation(line: 988, column: 1, scope: !2929)
!2963 = !DILocation(line: 987, column: 3, scope: !2929)
!2964 = distinct !DISubprogram(name: "quotearg_char", scope: !157, file: !157, line: 991, type: !2965, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!40, !37, !39}
!2967 = !{!2968, !2969}
!2968 = !DILocalVariable(name: "arg", arg: 1, scope: !2964, file: !157, line: 991, type: !37)
!2969 = !DILocalVariable(name: "ch", arg: 2, scope: !2964, file: !157, line: 991, type: !39)
!2970 = !DILocation(line: 991, column: 28, scope: !2964)
!2971 = !DILocation(line: 991, column: 38, scope: !2964)
!2972 = !DILocation(line: 982, column: 32, scope: !2929, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 993, column: 10, scope: !2964)
!2974 = !DILocation(line: 982, column: 44, scope: !2929, inlinedAt: !2973)
!2975 = !DILocation(line: 982, column: 58, scope: !2929, inlinedAt: !2973)
!2976 = !DILocation(line: 984, column: 3, scope: !2929, inlinedAt: !2973)
!2977 = !DILocation(line: 985, column: 13, scope: !2929, inlinedAt: !2973)
!2978 = !DILocation(line: 984, column: 26, scope: !2929, inlinedAt: !2973)
!2979 = !DILocation(line: 152, column: 43, scope: !1597, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 986, column: 3, scope: !2929, inlinedAt: !2973)
!2981 = !DILocation(line: 152, column: 51, scope: !1597, inlinedAt: !2980)
!2982 = !DILocation(line: 152, column: 58, scope: !1597, inlinedAt: !2980)
!2983 = !DILocation(line: 154, column: 17, scope: !1597, inlinedAt: !2980)
!2984 = !DILocation(line: 156, column: 62, scope: !1597, inlinedAt: !2980)
!2985 = !DILocation(line: 156, column: 57, scope: !1597, inlinedAt: !2980)
!2986 = !DILocation(line: 155, column: 17, scope: !1597, inlinedAt: !2980)
!2987 = !DILocation(line: 157, column: 15, scope: !1597, inlinedAt: !2980)
!2988 = !DILocation(line: 157, column: 7, scope: !1597, inlinedAt: !2980)
!2989 = !DILocation(line: 158, column: 12, scope: !1597, inlinedAt: !2980)
!2990 = !DILocation(line: 158, column: 15, scope: !1597, inlinedAt: !2980)
!2991 = !DILocation(line: 158, column: 25, scope: !1597, inlinedAt: !2980)
!2992 = !DILocation(line: 158, column: 7, scope: !1597, inlinedAt: !2980)
!2993 = !DILocation(line: 159, column: 18, scope: !1597, inlinedAt: !2980)
!2994 = !DILocation(line: 159, column: 23, scope: !1597, inlinedAt: !2980)
!2995 = !DILocation(line: 159, column: 6, scope: !1597, inlinedAt: !2980)
!2996 = !DILocation(line: 987, column: 10, scope: !2929, inlinedAt: !2973)
!2997 = !DILocation(line: 988, column: 1, scope: !2929, inlinedAt: !2973)
!2998 = !DILocation(line: 993, column: 3, scope: !2964)
!2999 = distinct !DISubprogram(name: "quotearg_colon", scope: !157, file: !157, line: 997, type: !2783, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !3000)
!3000 = !{!3001}
!3001 = !DILocalVariable(name: "arg", arg: 1, scope: !2999, file: !157, line: 997, type: !37)
!3002 = !DILocation(line: 997, column: 29, scope: !2999)
!3003 = !DILocation(line: 991, column: 28, scope: !2964, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 999, column: 10, scope: !2999)
!3005 = !DILocation(line: 991, column: 38, scope: !2964, inlinedAt: !3004)
!3006 = !DILocation(line: 982, column: 32, scope: !2929, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 993, column: 10, scope: !2964, inlinedAt: !3004)
!3008 = !DILocation(line: 982, column: 44, scope: !2929, inlinedAt: !3007)
!3009 = !DILocation(line: 982, column: 58, scope: !2929, inlinedAt: !3007)
!3010 = !DILocation(line: 984, column: 3, scope: !2929, inlinedAt: !3007)
!3011 = !DILocation(line: 985, column: 13, scope: !2929, inlinedAt: !3007)
!3012 = !DILocation(line: 984, column: 26, scope: !2929, inlinedAt: !3007)
!3013 = !DILocation(line: 152, column: 43, scope: !1597, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 986, column: 3, scope: !2929, inlinedAt: !3007)
!3015 = !DILocation(line: 152, column: 51, scope: !1597, inlinedAt: !3014)
!3016 = !DILocation(line: 152, column: 58, scope: !1597, inlinedAt: !3014)
!3017 = !DILocation(line: 154, column: 17, scope: !1597, inlinedAt: !3014)
!3018 = !DILocation(line: 156, column: 57, scope: !1597, inlinedAt: !3014)
!3019 = !DILocation(line: 155, column: 17, scope: !1597, inlinedAt: !3014)
!3020 = !DILocation(line: 157, column: 7, scope: !1597, inlinedAt: !3014)
!3021 = !DILocation(line: 158, column: 12, scope: !1597, inlinedAt: !3014)
!3022 = !DILocation(line: 159, column: 6, scope: !1597, inlinedAt: !3014)
!3023 = !DILocation(line: 987, column: 10, scope: !2929, inlinedAt: !3007)
!3024 = !DILocation(line: 988, column: 1, scope: !2929, inlinedAt: !3007)
!3025 = !DILocation(line: 999, column: 3, scope: !2999)
!3026 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !157, file: !157, line: 1003, type: !2794, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !3027)
!3027 = !{!3028, !3029}
!3028 = !DILocalVariable(name: "arg", arg: 1, scope: !3026, file: !157, line: 1003, type: !37)
!3029 = !DILocalVariable(name: "argsize", arg: 2, scope: !3026, file: !157, line: 1003, type: !48)
!3030 = !DILocation(line: 1003, column: 33, scope: !3026)
!3031 = !DILocation(line: 1003, column: 45, scope: !3026)
!3032 = !DILocation(line: 982, column: 32, scope: !2929, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 1005, column: 10, scope: !3026)
!3034 = !DILocation(line: 982, column: 44, scope: !2929, inlinedAt: !3033)
!3035 = !DILocation(line: 982, column: 58, scope: !2929, inlinedAt: !3033)
!3036 = !DILocation(line: 984, column: 3, scope: !2929, inlinedAt: !3033)
!3037 = !DILocation(line: 985, column: 13, scope: !2929, inlinedAt: !3033)
!3038 = !DILocation(line: 984, column: 26, scope: !2929, inlinedAt: !3033)
!3039 = !DILocation(line: 152, column: 43, scope: !1597, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 986, column: 3, scope: !2929, inlinedAt: !3033)
!3041 = !DILocation(line: 152, column: 51, scope: !1597, inlinedAt: !3040)
!3042 = !DILocation(line: 152, column: 58, scope: !1597, inlinedAt: !3040)
!3043 = !DILocation(line: 154, column: 17, scope: !1597, inlinedAt: !3040)
!3044 = !DILocation(line: 156, column: 57, scope: !1597, inlinedAt: !3040)
!3045 = !DILocation(line: 155, column: 17, scope: !1597, inlinedAt: !3040)
!3046 = !DILocation(line: 157, column: 7, scope: !1597, inlinedAt: !3040)
!3047 = !DILocation(line: 158, column: 12, scope: !1597, inlinedAt: !3040)
!3048 = !DILocation(line: 159, column: 6, scope: !1597, inlinedAt: !3040)
!3049 = !DILocation(line: 987, column: 10, scope: !2929, inlinedAt: !3033)
!3050 = !DILocation(line: 988, column: 1, scope: !2929, inlinedAt: !3033)
!3051 = !DILocation(line: 1005, column: 3, scope: !3026)
!3052 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !157, file: !157, line: 1009, type: !2808, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !3053)
!3053 = !{!3054, !3055, !3056, !3057}
!3054 = !DILocalVariable(name: "n", arg: 1, scope: !3052, file: !157, line: 1009, type: !47)
!3055 = !DILocalVariable(name: "s", arg: 2, scope: !3052, file: !157, line: 1009, type: !22)
!3056 = !DILocalVariable(name: "arg", arg: 3, scope: !3052, file: !157, line: 1009, type: !37)
!3057 = !DILocalVariable(name: "options", scope: !3052, file: !157, line: 1011, type: !164)
!3058 = !DILocation(line: 195, column: 26, scope: !2821, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 1012, column: 13, scope: !3052)
!3060 = !DILocation(line: 1009, column: 29, scope: !3052)
!3061 = !DILocation(line: 1009, column: 51, scope: !3052)
!3062 = !DILocation(line: 1009, column: 66, scope: !3052)
!3063 = !DILocation(line: 1011, column: 3, scope: !3052)
!3064 = !DILocation(line: 1012, column: 13, scope: !3052)
!3065 = !DILocation(line: 193, column: 48, scope: !2821, inlinedAt: !3059)
!3066 = !{!3067}
!3067 = distinct !{!3067, !3068, !"quoting_options_from_style: argument 0"}
!3068 = distinct !{!3068, !"quoting_options_from_style"}
!3069 = !DILocation(line: 196, column: 13, scope: !2833, inlinedAt: !3059)
!3070 = !DILocation(line: 196, column: 7, scope: !2821, inlinedAt: !3059)
!3071 = !DILocation(line: 197, column: 5, scope: !2833, inlinedAt: !3059)
!3072 = !DILocation(line: 1011, column: 26, scope: !3052)
!3073 = !DILocation(line: 152, column: 43, scope: !1597, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 1013, column: 3, scope: !3052)
!3075 = !DILocation(line: 152, column: 51, scope: !1597, inlinedAt: !3074)
!3076 = !DILocation(line: 152, column: 58, scope: !1597, inlinedAt: !3074)
!3077 = !DILocation(line: 154, column: 17, scope: !1597, inlinedAt: !3074)
!3078 = !DILocation(line: 156, column: 57, scope: !1597, inlinedAt: !3074)
!3079 = !DILocation(line: 155, column: 17, scope: !1597, inlinedAt: !3074)
!3080 = !DILocation(line: 157, column: 7, scope: !1597, inlinedAt: !3074)
!3081 = !DILocation(line: 158, column: 12, scope: !1597, inlinedAt: !3074)
!3082 = !DILocation(line: 159, column: 6, scope: !1597, inlinedAt: !3074)
!3083 = !DILocation(line: 1014, column: 10, scope: !3052)
!3084 = !DILocation(line: 1015, column: 1, scope: !3052)
!3085 = !DILocation(line: 1014, column: 3, scope: !3052)
!3086 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !157, file: !157, line: 1018, type: !3087, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!40, !47, !37, !37, !37}
!3089 = !{!3090, !3091, !3092, !3093}
!3090 = !DILocalVariable(name: "n", arg: 1, scope: !3086, file: !157, line: 1018, type: !47)
!3091 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3086, file: !157, line: 1018, type: !37)
!3092 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3086, file: !157, line: 1019, type: !37)
!3093 = !DILocalVariable(name: "arg", arg: 4, scope: !3086, file: !157, line: 1019, type: !37)
!3094 = !DILocation(line: 1018, column: 24, scope: !3086)
!3095 = !DILocation(line: 1018, column: 39, scope: !3086)
!3096 = !DILocation(line: 1019, column: 32, scope: !3086)
!3097 = !DILocation(line: 1019, column: 57, scope: !3086)
!3098 = !DILocalVariable(name: "n", arg: 1, scope: !3099, file: !157, line: 1026, type: !47)
!3099 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !157, file: !157, line: 1026, type: !3100, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!40, !47, !37, !37, !37, !48}
!3102 = !{!3098, !3103, !3104, !3105, !3106, !3107}
!3103 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3099, file: !157, line: 1026, type: !37)
!3104 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3099, file: !157, line: 1027, type: !37)
!3105 = !DILocalVariable(name: "arg", arg: 4, scope: !3099, file: !157, line: 1028, type: !37)
!3106 = !DILocalVariable(name: "argsize", arg: 5, scope: !3099, file: !157, line: 1028, type: !48)
!3107 = !DILocalVariable(name: "o", scope: !3099, file: !157, line: 1030, type: !164)
!3108 = !DILocation(line: 1026, column: 28, scope: !3099, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 1021, column: 10, scope: !3086)
!3110 = !DILocation(line: 1026, column: 43, scope: !3099, inlinedAt: !3109)
!3111 = !DILocation(line: 1027, column: 36, scope: !3099, inlinedAt: !3109)
!3112 = !DILocation(line: 1028, column: 36, scope: !3099, inlinedAt: !3109)
!3113 = !DILocation(line: 1028, column: 48, scope: !3099, inlinedAt: !3109)
!3114 = !DILocation(line: 1030, column: 3, scope: !3099, inlinedAt: !3109)
!3115 = !DILocation(line: 1030, column: 30, scope: !3099, inlinedAt: !3109)
!3116 = !DILocation(line: 1030, column: 26, scope: !3099, inlinedAt: !3109)
!3117 = !DILocation(line: 179, column: 45, scope: !1645, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 1031, column: 3, scope: !3099, inlinedAt: !3109)
!3119 = !DILocation(line: 180, column: 33, scope: !1645, inlinedAt: !3118)
!3120 = !DILocation(line: 180, column: 57, scope: !1645, inlinedAt: !3118)
!3121 = !DILocation(line: 184, column: 6, scope: !1645, inlinedAt: !3118)
!3122 = !DILocation(line: 184, column: 12, scope: !1645, inlinedAt: !3118)
!3123 = !DILocation(line: 185, column: 8, scope: !1661, inlinedAt: !3118)
!3124 = !DILocation(line: 185, column: 23, scope: !1661, inlinedAt: !3118)
!3125 = !DILocation(line: 185, column: 19, scope: !1661, inlinedAt: !3118)
!3126 = !DILocation(line: 186, column: 5, scope: !1661, inlinedAt: !3118)
!3127 = !DILocation(line: 187, column: 6, scope: !1645, inlinedAt: !3118)
!3128 = !DILocation(line: 187, column: 17, scope: !1645, inlinedAt: !3118)
!3129 = !DILocation(line: 188, column: 6, scope: !1645, inlinedAt: !3118)
!3130 = !DILocation(line: 188, column: 18, scope: !1645, inlinedAt: !3118)
!3131 = !DILocation(line: 1032, column: 10, scope: !3099, inlinedAt: !3109)
!3132 = !DILocation(line: 1033, column: 1, scope: !3099, inlinedAt: !3109)
!3133 = !DILocation(line: 1021, column: 3, scope: !3086)
!3134 = !DILocation(line: 1026, column: 28, scope: !3099)
!3135 = !DILocation(line: 1026, column: 43, scope: !3099)
!3136 = !DILocation(line: 1027, column: 36, scope: !3099)
!3137 = !DILocation(line: 1028, column: 36, scope: !3099)
!3138 = !DILocation(line: 1028, column: 48, scope: !3099)
!3139 = !DILocation(line: 1030, column: 3, scope: !3099)
!3140 = !DILocation(line: 1030, column: 30, scope: !3099)
!3141 = !DILocation(line: 1030, column: 26, scope: !3099)
!3142 = !DILocation(line: 179, column: 45, scope: !1645, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 1031, column: 3, scope: !3099)
!3144 = !DILocation(line: 180, column: 33, scope: !1645, inlinedAt: !3143)
!3145 = !DILocation(line: 180, column: 57, scope: !1645, inlinedAt: !3143)
!3146 = !DILocation(line: 184, column: 6, scope: !1645, inlinedAt: !3143)
!3147 = !DILocation(line: 184, column: 12, scope: !1645, inlinedAt: !3143)
!3148 = !DILocation(line: 185, column: 8, scope: !1661, inlinedAt: !3143)
!3149 = !DILocation(line: 185, column: 23, scope: !1661, inlinedAt: !3143)
!3150 = !DILocation(line: 185, column: 19, scope: !1661, inlinedAt: !3143)
!3151 = !DILocation(line: 186, column: 5, scope: !1661, inlinedAt: !3143)
!3152 = !DILocation(line: 187, column: 6, scope: !1645, inlinedAt: !3143)
!3153 = !DILocation(line: 187, column: 17, scope: !1645, inlinedAt: !3143)
!3154 = !DILocation(line: 188, column: 6, scope: !1645, inlinedAt: !3143)
!3155 = !DILocation(line: 188, column: 18, scope: !1645, inlinedAt: !3143)
!3156 = !DILocation(line: 1032, column: 10, scope: !3099)
!3157 = !DILocation(line: 1033, column: 1, scope: !3099)
!3158 = !DILocation(line: 1032, column: 3, scope: !3099)
!3159 = distinct !DISubprogram(name: "quotearg_custom", scope: !157, file: !157, line: 1036, type: !3160, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!40, !37, !37, !37}
!3162 = !{!3163, !3164, !3165}
!3163 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3159, file: !157, line: 1036, type: !37)
!3164 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3159, file: !157, line: 1036, type: !37)
!3165 = !DILocalVariable(name: "arg", arg: 3, scope: !3159, file: !157, line: 1037, type: !37)
!3166 = !DILocation(line: 1036, column: 30, scope: !3159)
!3167 = !DILocation(line: 1036, column: 54, scope: !3159)
!3168 = !DILocation(line: 1037, column: 30, scope: !3159)
!3169 = !DILocation(line: 1018, column: 24, scope: !3086, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 1039, column: 10, scope: !3159)
!3171 = !DILocation(line: 1018, column: 39, scope: !3086, inlinedAt: !3170)
!3172 = !DILocation(line: 1019, column: 32, scope: !3086, inlinedAt: !3170)
!3173 = !DILocation(line: 1019, column: 57, scope: !3086, inlinedAt: !3170)
!3174 = !DILocation(line: 1026, column: 28, scope: !3099, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 1021, column: 10, scope: !3086, inlinedAt: !3170)
!3176 = !DILocation(line: 1026, column: 43, scope: !3099, inlinedAt: !3175)
!3177 = !DILocation(line: 1027, column: 36, scope: !3099, inlinedAt: !3175)
!3178 = !DILocation(line: 1028, column: 36, scope: !3099, inlinedAt: !3175)
!3179 = !DILocation(line: 1028, column: 48, scope: !3099, inlinedAt: !3175)
!3180 = !DILocation(line: 1030, column: 3, scope: !3099, inlinedAt: !3175)
!3181 = !DILocation(line: 1030, column: 30, scope: !3099, inlinedAt: !3175)
!3182 = !DILocation(line: 1030, column: 26, scope: !3099, inlinedAt: !3175)
!3183 = !DILocation(line: 179, column: 45, scope: !1645, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 1031, column: 3, scope: !3099, inlinedAt: !3175)
!3185 = !DILocation(line: 180, column: 33, scope: !1645, inlinedAt: !3184)
!3186 = !DILocation(line: 180, column: 57, scope: !1645, inlinedAt: !3184)
!3187 = !DILocation(line: 184, column: 6, scope: !1645, inlinedAt: !3184)
!3188 = !DILocation(line: 184, column: 12, scope: !1645, inlinedAt: !3184)
!3189 = !DILocation(line: 185, column: 8, scope: !1661, inlinedAt: !3184)
!3190 = !DILocation(line: 185, column: 23, scope: !1661, inlinedAt: !3184)
!3191 = !DILocation(line: 185, column: 19, scope: !1661, inlinedAt: !3184)
!3192 = !DILocation(line: 186, column: 5, scope: !1661, inlinedAt: !3184)
!3193 = !DILocation(line: 187, column: 6, scope: !1645, inlinedAt: !3184)
!3194 = !DILocation(line: 187, column: 17, scope: !1645, inlinedAt: !3184)
!3195 = !DILocation(line: 188, column: 6, scope: !1645, inlinedAt: !3184)
!3196 = !DILocation(line: 188, column: 18, scope: !1645, inlinedAt: !3184)
!3197 = !DILocation(line: 1032, column: 10, scope: !3099, inlinedAt: !3175)
!3198 = !DILocation(line: 1033, column: 1, scope: !3099, inlinedAt: !3175)
!3199 = !DILocation(line: 1039, column: 3, scope: !3159)
!3200 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !157, file: !157, line: 1043, type: !3201, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!40, !37, !37, !37, !48}
!3203 = !{!3204, !3205, !3206, !3207}
!3204 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3200, file: !157, line: 1043, type: !37)
!3205 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3200, file: !157, line: 1043, type: !37)
!3206 = !DILocalVariable(name: "arg", arg: 3, scope: !3200, file: !157, line: 1044, type: !37)
!3207 = !DILocalVariable(name: "argsize", arg: 4, scope: !3200, file: !157, line: 1044, type: !48)
!3208 = !DILocation(line: 1043, column: 34, scope: !3200)
!3209 = !DILocation(line: 1043, column: 58, scope: !3200)
!3210 = !DILocation(line: 1044, column: 34, scope: !3200)
!3211 = !DILocation(line: 1044, column: 46, scope: !3200)
!3212 = !DILocation(line: 1026, column: 28, scope: !3099, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 1046, column: 10, scope: !3200)
!3214 = !DILocation(line: 1026, column: 43, scope: !3099, inlinedAt: !3213)
!3215 = !DILocation(line: 1027, column: 36, scope: !3099, inlinedAt: !3213)
!3216 = !DILocation(line: 1028, column: 36, scope: !3099, inlinedAt: !3213)
!3217 = !DILocation(line: 1028, column: 48, scope: !3099, inlinedAt: !3213)
!3218 = !DILocation(line: 1030, column: 3, scope: !3099, inlinedAt: !3213)
!3219 = !DILocation(line: 1030, column: 30, scope: !3099, inlinedAt: !3213)
!3220 = !DILocation(line: 1030, column: 26, scope: !3099, inlinedAt: !3213)
!3221 = !DILocation(line: 179, column: 45, scope: !1645, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 1031, column: 3, scope: !3099, inlinedAt: !3213)
!3223 = !DILocation(line: 180, column: 33, scope: !1645, inlinedAt: !3222)
!3224 = !DILocation(line: 180, column: 57, scope: !1645, inlinedAt: !3222)
!3225 = !DILocation(line: 184, column: 6, scope: !1645, inlinedAt: !3222)
!3226 = !DILocation(line: 184, column: 12, scope: !1645, inlinedAt: !3222)
!3227 = !DILocation(line: 185, column: 8, scope: !1661, inlinedAt: !3222)
!3228 = !DILocation(line: 185, column: 23, scope: !1661, inlinedAt: !3222)
!3229 = !DILocation(line: 185, column: 19, scope: !1661, inlinedAt: !3222)
!3230 = !DILocation(line: 186, column: 5, scope: !1661, inlinedAt: !3222)
!3231 = !DILocation(line: 187, column: 6, scope: !1645, inlinedAt: !3222)
!3232 = !DILocation(line: 187, column: 17, scope: !1645, inlinedAt: !3222)
!3233 = !DILocation(line: 188, column: 6, scope: !1645, inlinedAt: !3222)
!3234 = !DILocation(line: 188, column: 18, scope: !1645, inlinedAt: !3222)
!3235 = !DILocation(line: 1032, column: 10, scope: !3099, inlinedAt: !3213)
!3236 = !DILocation(line: 1033, column: 1, scope: !3099, inlinedAt: !3213)
!3237 = !DILocation(line: 1046, column: 3, scope: !3200)
!3238 = distinct !DISubprogram(name: "quote_n_mem", scope: !157, file: !157, line: 1061, type: !3239, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!37, !47, !37, !48}
!3241 = !{!3242, !3243, !3244}
!3242 = !DILocalVariable(name: "n", arg: 1, scope: !3238, file: !157, line: 1061, type: !47)
!3243 = !DILocalVariable(name: "arg", arg: 2, scope: !3238, file: !157, line: 1061, type: !37)
!3244 = !DILocalVariable(name: "argsize", arg: 3, scope: !3238, file: !157, line: 1061, type: !48)
!3245 = !DILocation(line: 1061, column: 18, scope: !3238)
!3246 = !DILocation(line: 1061, column: 33, scope: !3238)
!3247 = !DILocation(line: 1061, column: 45, scope: !3238)
!3248 = !DILocation(line: 1063, column: 10, scope: !3238)
!3249 = !DILocation(line: 1063, column: 3, scope: !3238)
!3250 = distinct !DISubprogram(name: "quote_mem", scope: !157, file: !157, line: 1067, type: !3251, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !3253)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!37, !37, !48}
!3253 = !{!3254, !3255}
!3254 = !DILocalVariable(name: "arg", arg: 1, scope: !3250, file: !157, line: 1067, type: !37)
!3255 = !DILocalVariable(name: "argsize", arg: 2, scope: !3250, file: !157, line: 1067, type: !48)
!3256 = !DILocation(line: 1067, column: 24, scope: !3250)
!3257 = !DILocation(line: 1067, column: 36, scope: !3250)
!3258 = !DILocation(line: 1061, column: 18, scope: !3238, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 1069, column: 10, scope: !3250)
!3260 = !DILocation(line: 1061, column: 33, scope: !3238, inlinedAt: !3259)
!3261 = !DILocation(line: 1061, column: 45, scope: !3238, inlinedAt: !3259)
!3262 = !DILocation(line: 1063, column: 10, scope: !3238, inlinedAt: !3259)
!3263 = !DILocation(line: 1069, column: 3, scope: !3250)
!3264 = distinct !DISubprogram(name: "quote_n", scope: !157, file: !157, line: 1073, type: !3265, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !3267)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!37, !47, !37}
!3267 = !{!3268, !3269}
!3268 = !DILocalVariable(name: "n", arg: 1, scope: !3264, file: !157, line: 1073, type: !47)
!3269 = !DILocalVariable(name: "arg", arg: 2, scope: !3264, file: !157, line: 1073, type: !37)
!3270 = !DILocation(line: 1073, column: 14, scope: !3264)
!3271 = !DILocation(line: 1073, column: 29, scope: !3264)
!3272 = !DILocation(line: 1061, column: 18, scope: !3238, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 1075, column: 10, scope: !3264)
!3274 = !DILocation(line: 1061, column: 33, scope: !3238, inlinedAt: !3273)
!3275 = !DILocation(line: 1061, column: 45, scope: !3238, inlinedAt: !3273)
!3276 = !DILocation(line: 1063, column: 10, scope: !3238, inlinedAt: !3273)
!3277 = !DILocation(line: 1075, column: 3, scope: !3264)
!3278 = distinct !DISubprogram(name: "quote", scope: !157, file: !157, line: 1079, type: !3279, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !129, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!37, !37}
!3281 = !{!3282}
!3282 = !DILocalVariable(name: "arg", arg: 1, scope: !3278, file: !157, line: 1079, type: !37)
!3283 = !DILocation(line: 1079, column: 20, scope: !3278)
!3284 = !DILocation(line: 1073, column: 14, scope: !3264, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 1081, column: 10, scope: !3278)
!3286 = !DILocation(line: 1073, column: 29, scope: !3264, inlinedAt: !3285)
!3287 = !DILocation(line: 1061, column: 18, scope: !3238, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 1075, column: 10, scope: !3264, inlinedAt: !3285)
!3289 = !DILocation(line: 1061, column: 33, scope: !3238, inlinedAt: !3288)
!3290 = !DILocation(line: 1061, column: 45, scope: !3238, inlinedAt: !3288)
!3291 = !DILocation(line: 1063, column: 10, scope: !3238, inlinedAt: !3288)
!3292 = !DILocation(line: 1081, column: 3, scope: !3278)
!3293 = distinct !DISubprogram(name: "dup_safer", scope: !3294, file: !3294, line: 31, type: !3295, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !246, retainedNodes: !3297)
!3294 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!47, !47}
!3297 = !{!3298}
!3298 = !DILocalVariable(name: "fd", arg: 1, scope: !3293, file: !3294, line: 31, type: !47)
!3299 = !DILocation(line: 31, column: 16, scope: !3293)
!3300 = !DILocation(line: 33, column: 10, scope: !3293)
!3301 = !DILocation(line: 33, column: 3, scope: !3293)
!3302 = distinct !DISubprogram(name: "version_etc_arn", scope: !252, file: !252, line: 62, type: !3303, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !3339)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{null, !3305, !37, !37, !37, !1055, !48}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !782, line: 7, baseType: !3307)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !784, line: 49, size: 1728, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3307, file: !784, line: 51, baseType: !47, size: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3307, file: !784, line: 54, baseType: !40, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3307, file: !784, line: 55, baseType: !40, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3307, file: !784, line: 56, baseType: !40, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3307, file: !784, line: 57, baseType: !40, size: 64, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3307, file: !784, line: 58, baseType: !40, size: 64, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3307, file: !784, line: 59, baseType: !40, size: 64, offset: 384)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3307, file: !784, line: 60, baseType: !40, size: 64, offset: 448)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3307, file: !784, line: 61, baseType: !40, size: 64, offset: 512)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3307, file: !784, line: 64, baseType: !40, size: 64, offset: 576)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3307, file: !784, line: 65, baseType: !40, size: 64, offset: 640)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3307, file: !784, line: 66, baseType: !40, size: 64, offset: 704)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3307, file: !784, line: 68, baseType: !799, size: 64, offset: 768)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3307, file: !784, line: 70, baseType: !3323, size: 64, offset: 832)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3307, file: !784, line: 72, baseType: !47, size: 32, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3307, file: !784, line: 73, baseType: !47, size: 32, offset: 928)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3307, file: !784, line: 74, baseType: !806, size: 64, offset: 960)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3307, file: !784, line: 77, baseType: !153, size: 16, offset: 1024)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3307, file: !784, line: 78, baseType: !811, size: 8, offset: 1040)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3307, file: !784, line: 79, baseType: !813, size: 8, offset: 1048)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3307, file: !784, line: 81, baseType: !815, size: 64, offset: 1088)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3307, file: !784, line: 89, baseType: !818, size: 64, offset: 1152)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3307, file: !784, line: 91, baseType: !820, size: 64, offset: 1216)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3307, file: !784, line: 92, baseType: !823, size: 64, offset: 1280)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3307, file: !784, line: 93, baseType: !3323, size: 64, offset: 1344)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3307, file: !784, line: 94, baseType: !41, size: 64, offset: 1408)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3307, file: !784, line: 95, baseType: !48, size: 64, offset: 1472)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3307, file: !784, line: 96, baseType: !47, size: 32, offset: 1536)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3307, file: !784, line: 98, baseType: !830, size: 160, offset: 1568)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345}
!3340 = !DILocalVariable(name: "stream", arg: 1, scope: !3302, file: !252, line: 62, type: !3305)
!3341 = !DILocalVariable(name: "command_name", arg: 2, scope: !3302, file: !252, line: 63, type: !37)
!3342 = !DILocalVariable(name: "package", arg: 3, scope: !3302, file: !252, line: 63, type: !37)
!3343 = !DILocalVariable(name: "version", arg: 4, scope: !3302, file: !252, line: 64, type: !37)
!3344 = !DILocalVariable(name: "authors", arg: 5, scope: !3302, file: !252, line: 65, type: !1055)
!3345 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3302, file: !252, line: 65, type: !48)
!3346 = !DILocation(line: 62, column: 24, scope: !3302)
!3347 = !DILocation(line: 63, column: 30, scope: !3302)
!3348 = !DILocation(line: 63, column: 56, scope: !3302)
!3349 = !DILocation(line: 64, column: 30, scope: !3302)
!3350 = !DILocation(line: 65, column: 39, scope: !3302)
!3351 = !DILocation(line: 65, column: 55, scope: !3302)
!3352 = !DILocation(line: 67, column: 7, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3302, file: !252, line: 67, column: 7)
!3354 = !DILocation(line: 67, column: 7, scope: !3302)
!3355 = !DILocation(line: 68, column: 5, scope: !3353)
!3356 = !DILocation(line: 70, column: 5, scope: !3353)
!3357 = !DILocation(line: 84, column: 3, scope: !3302)
!3358 = !DILocation(line: 86, column: 3, scope: !3302)
!3359 = !DILocation(line: 95, column: 3, scope: !3302)
!3360 = !DILocation(line: 99, column: 7, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3302, file: !252, line: 96, column: 5)
!3362 = !DILocation(line: 102, column: 7, scope: !3361)
!3363 = !DILocation(line: 103, column: 7, scope: !3361)
!3364 = !DILocation(line: 106, column: 7, scope: !3361)
!3365 = !DILocation(line: 107, column: 7, scope: !3361)
!3366 = !DILocation(line: 110, column: 7, scope: !3361)
!3367 = !DILocation(line: 112, column: 7, scope: !3361)
!3368 = !DILocation(line: 117, column: 7, scope: !3361)
!3369 = !DILocation(line: 119, column: 7, scope: !3361)
!3370 = !DILocation(line: 124, column: 7, scope: !3361)
!3371 = !DILocation(line: 126, column: 7, scope: !3361)
!3372 = !DILocation(line: 131, column: 7, scope: !3361)
!3373 = !DILocation(line: 134, column: 7, scope: !3361)
!3374 = !DILocation(line: 139, column: 7, scope: !3361)
!3375 = !DILocation(line: 142, column: 7, scope: !3361)
!3376 = !DILocation(line: 147, column: 7, scope: !3361)
!3377 = !DILocation(line: 151, column: 7, scope: !3361)
!3378 = !DILocation(line: 156, column: 7, scope: !3361)
!3379 = !DILocation(line: 160, column: 7, scope: !3361)
!3380 = !DILocation(line: 167, column: 7, scope: !3361)
!3381 = !DILocation(line: 171, column: 7, scope: !3361)
!3382 = !DILocation(line: 173, column: 1, scope: !3302)
!3383 = distinct !DISubprogram(name: "version_etc_ar", scope: !252, file: !252, line: 180, type: !3384, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{null, !3305, !37, !37, !37, !1055}
!3386 = !{!3387, !3388, !3389, !3390, !3391, !3392}
!3387 = !DILocalVariable(name: "stream", arg: 1, scope: !3383, file: !252, line: 180, type: !3305)
!3388 = !DILocalVariable(name: "command_name", arg: 2, scope: !3383, file: !252, line: 181, type: !37)
!3389 = !DILocalVariable(name: "package", arg: 3, scope: !3383, file: !252, line: 181, type: !37)
!3390 = !DILocalVariable(name: "version", arg: 4, scope: !3383, file: !252, line: 182, type: !37)
!3391 = !DILocalVariable(name: "authors", arg: 5, scope: !3383, file: !252, line: 182, type: !1055)
!3392 = !DILocalVariable(name: "n_authors", scope: !3383, file: !252, line: 184, type: !48)
!3393 = !DILocation(line: 180, column: 23, scope: !3383)
!3394 = !DILocation(line: 181, column: 29, scope: !3383)
!3395 = !DILocation(line: 181, column: 55, scope: !3383)
!3396 = !DILocation(line: 182, column: 29, scope: !3383)
!3397 = !DILocation(line: 182, column: 59, scope: !3383)
!3398 = !DILocation(line: 184, column: 10, scope: !3383)
!3399 = !DILocation(line: 186, column: 8, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3383, file: !252, line: 186, column: 3)
!3401 = !DILocation(line: 0, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3400, file: !252, line: 186, column: 3)
!3403 = !DILocation(line: 186, column: 23, scope: !3402)
!3404 = !DILocation(line: 186, column: 3, scope: !3400)
!3405 = !DILocation(line: 186, column: 52, scope: !3402)
!3406 = distinct !{!3406, !3404, !3407}
!3407 = !DILocation(line: 187, column: 5, scope: !3400)
!3408 = !DILocation(line: 188, column: 3, scope: !3383)
!3409 = !DILocation(line: 189, column: 1, scope: !3383)
!3410 = distinct !DISubprogram(name: "version_etc_va", scope: !252, file: !252, line: 196, type: !3411, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !3420)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3305, !37, !37, !37, !3413}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !249, line: 189, size: 192, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3414, file: !249, line: 189, baseType: !6, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3414, file: !249, line: 189, baseType: !6, size: 32, offset: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3414, file: !249, line: 189, baseType: !41, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3414, file: !249, line: 189, baseType: !41, size: 64, offset: 128)
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426, !3427}
!3421 = !DILocalVariable(name: "stream", arg: 1, scope: !3410, file: !252, line: 196, type: !3305)
!3422 = !DILocalVariable(name: "command_name", arg: 2, scope: !3410, file: !252, line: 197, type: !37)
!3423 = !DILocalVariable(name: "package", arg: 3, scope: !3410, file: !252, line: 197, type: !37)
!3424 = !DILocalVariable(name: "version", arg: 4, scope: !3410, file: !252, line: 198, type: !37)
!3425 = !DILocalVariable(name: "authors", arg: 5, scope: !3410, file: !252, line: 198, type: !3413)
!3426 = !DILocalVariable(name: "n_authors", scope: !3410, file: !252, line: 200, type: !48)
!3427 = !DILocalVariable(name: "authtab", scope: !3410, file: !252, line: 201, type: !3428)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 640, elements: !160)
!3429 = !DILocation(line: 196, column: 23, scope: !3410)
!3430 = !DILocation(line: 197, column: 29, scope: !3410)
!3431 = !DILocation(line: 197, column: 55, scope: !3410)
!3432 = !DILocation(line: 198, column: 29, scope: !3410)
!3433 = !DILocation(line: 198, column: 46, scope: !3410)
!3434 = !DILocation(line: 201, column: 3, scope: !3410)
!3435 = !DILocation(line: 201, column: 15, scope: !3410)
!3436 = !DILocation(line: 200, column: 10, scope: !3410)
!3437 = !DILocation(line: 205, column: 35, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !252, line: 203, column: 3)
!3439 = distinct !DILexicalBlock(scope: !3410, file: !252, line: 203, column: 3)
!3440 = !DILocation(line: 205, column: 14, scope: !3438)
!3441 = !DILocation(line: 205, column: 33, scope: !3438)
!3442 = !DILocation(line: 205, column: 67, scope: !3438)
!3443 = !DILocation(line: 203, column: 3, scope: !3439)
!3444 = !DILocation(line: 0, scope: !3438)
!3445 = !DILocation(line: 208, column: 3, scope: !3410)
!3446 = !DILocation(line: 210, column: 1, scope: !3410)
!3447 = distinct !DISubprogram(name: "version_etc", scope: !252, file: !252, line: 227, type: !3448, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{null, !3305, !37, !37, !37, null}
!3450 = !{!3451, !3452, !3453, !3454, !3455}
!3451 = !DILocalVariable(name: "stream", arg: 1, scope: !3447, file: !252, line: 227, type: !3305)
!3452 = !DILocalVariable(name: "command_name", arg: 2, scope: !3447, file: !252, line: 228, type: !37)
!3453 = !DILocalVariable(name: "package", arg: 3, scope: !3447, file: !252, line: 228, type: !37)
!3454 = !DILocalVariable(name: "version", arg: 4, scope: !3447, file: !252, line: 229, type: !37)
!3455 = !DILocalVariable(name: "authors", scope: !3447, file: !252, line: 231, type: !3456)
!3456 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1365, line: 52, baseType: !3457)
!3457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !218, line: 48, baseType: !3458)
!3458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !249, line: 231, baseType: !3459)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3414, size: 192, elements: !227)
!3460 = !DILocation(line: 227, column: 20, scope: !3447)
!3461 = !DILocation(line: 228, column: 26, scope: !3447)
!3462 = !DILocation(line: 228, column: 52, scope: !3447)
!3463 = !DILocation(line: 229, column: 26, scope: !3447)
!3464 = !DILocation(line: 231, column: 3, scope: !3447)
!3465 = !DILocation(line: 231, column: 11, scope: !3447)
!3466 = !DILocation(line: 233, column: 3, scope: !3447)
!3467 = !DILocation(line: 234, column: 3, scope: !3447)
!3468 = !DILocation(line: 235, column: 3, scope: !3447)
!3469 = !DILocation(line: 236, column: 1, scope: !3447)
!3470 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !252, file: !252, line: 239, type: !103, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !89)
!3471 = !DILocation(line: 245, column: 3, scope: !3470)
!3472 = !DILocation(line: 251, column: 3, scope: !3470)
!3473 = !DILocation(line: 256, column: 3, scope: !3470)
!3474 = !DILocation(line: 258, column: 1, scope: !3470)
!3475 = distinct !DISubprogram(name: "xnmalloc", scope: !260, file: !260, line: 99, type: !903, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3476)
!3476 = !{!3477, !3478}
!3477 = !DILocalVariable(name: "n", arg: 1, scope: !3475, file: !260, line: 99, type: !48)
!3478 = !DILocalVariable(name: "s", arg: 2, scope: !3475, file: !260, line: 99, type: !48)
!3479 = !DILocation(line: 99, column: 18, scope: !3475)
!3480 = !DILocation(line: 99, column: 28, scope: !3475)
!3481 = !DILocation(line: 101, column: 7, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3475, file: !260, line: 101, column: 7)
!3483 = !DILocation(line: 101, column: 7, scope: !3475)
!3484 = !DILocation(line: 102, column: 5, scope: !3482)
!3485 = !DILocation(line: 103, column: 21, scope: !3475)
!3486 = !DILocalVariable(name: "n", arg: 1, scope: !3487, file: !3488, line: 39, type: !48)
!3487 = distinct !DISubprogram(name: "xmalloc", scope: !3488, file: !3488, line: 39, type: !3489, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3491)
!3488 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!41, !48}
!3491 = !{!3486, !3492}
!3492 = !DILocalVariable(name: "p", scope: !3487, file: !3488, line: 41, type: !41)
!3493 = !DILocation(line: 39, column: 17, scope: !3487, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 103, column: 10, scope: !3475)
!3495 = !DILocation(line: 41, column: 13, scope: !3487, inlinedAt: !3494)
!3496 = !DILocation(line: 41, column: 9, scope: !3487, inlinedAt: !3494)
!3497 = !DILocation(line: 42, column: 8, scope: !3498, inlinedAt: !3494)
!3498 = distinct !DILexicalBlock(scope: !3487, file: !3488, line: 42, column: 7)
!3499 = !DILocation(line: 42, column: 15, scope: !3498, inlinedAt: !3494)
!3500 = !DILocation(line: 42, column: 10, scope: !3498, inlinedAt: !3494)
!3501 = !DILocation(line: 43, column: 5, scope: !3498, inlinedAt: !3494)
!3502 = !DILocation(line: 103, column: 3, scope: !3475)
!3503 = !DILocation(line: 39, column: 17, scope: !3487)
!3504 = !DILocation(line: 41, column: 13, scope: !3487)
!3505 = !DILocation(line: 41, column: 9, scope: !3487)
!3506 = !DILocation(line: 42, column: 8, scope: !3498)
!3507 = !DILocation(line: 42, column: 15, scope: !3498)
!3508 = !DILocation(line: 42, column: 10, scope: !3498)
!3509 = !DILocation(line: 43, column: 5, scope: !3498)
!3510 = !DILocation(line: 44, column: 3, scope: !3487)
!3511 = distinct !DISubprogram(name: "xnrealloc", scope: !260, file: !260, line: 112, type: !3512, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3514)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!41, !41, !48, !48}
!3514 = !{!3515, !3516, !3517}
!3515 = !DILocalVariable(name: "p", arg: 1, scope: !3511, file: !260, line: 112, type: !41)
!3516 = !DILocalVariable(name: "n", arg: 2, scope: !3511, file: !260, line: 112, type: !48)
!3517 = !DILocalVariable(name: "s", arg: 3, scope: !3511, file: !260, line: 112, type: !48)
!3518 = !DILocation(line: 112, column: 18, scope: !3511)
!3519 = !DILocation(line: 112, column: 28, scope: !3511)
!3520 = !DILocation(line: 112, column: 38, scope: !3511)
!3521 = !DILocation(line: 114, column: 7, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3511, file: !260, line: 114, column: 7)
!3523 = !DILocation(line: 114, column: 7, scope: !3511)
!3524 = !DILocation(line: 115, column: 5, scope: !3522)
!3525 = !DILocation(line: 116, column: 25, scope: !3511)
!3526 = !DILocalVariable(name: "p", arg: 1, scope: !3527, file: !3488, line: 51, type: !41)
!3527 = distinct !DISubprogram(name: "xrealloc", scope: !3488, file: !3488, line: 51, type: !3528, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!41, !41, !48}
!3530 = !{!3526, !3531}
!3531 = !DILocalVariable(name: "n", arg: 2, scope: !3527, file: !3488, line: 51, type: !48)
!3532 = !DILocation(line: 51, column: 17, scope: !3527, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 116, column: 10, scope: !3511)
!3534 = !DILocation(line: 51, column: 27, scope: !3527, inlinedAt: !3533)
!3535 = !DILocation(line: 53, column: 8, scope: !3536, inlinedAt: !3533)
!3536 = distinct !DILexicalBlock(scope: !3527, file: !3488, line: 53, column: 7)
!3537 = !DILocation(line: 53, column: 13, scope: !3536, inlinedAt: !3533)
!3538 = !DILocation(line: 53, column: 10, scope: !3536, inlinedAt: !3533)
!3539 = !DILocation(line: 57, column: 7, scope: !3540, inlinedAt: !3533)
!3540 = distinct !DILexicalBlock(scope: !3536, file: !3488, line: 54, column: 5)
!3541 = !DILocation(line: 58, column: 7, scope: !3540, inlinedAt: !3533)
!3542 = !DILocation(line: 61, column: 7, scope: !3527, inlinedAt: !3533)
!3543 = !DILocation(line: 62, column: 8, scope: !3544, inlinedAt: !3533)
!3544 = distinct !DILexicalBlock(scope: !3527, file: !3488, line: 62, column: 7)
!3545 = !DILocation(line: 62, column: 13, scope: !3544, inlinedAt: !3533)
!3546 = !DILocation(line: 62, column: 10, scope: !3544, inlinedAt: !3533)
!3547 = !DILocation(line: 63, column: 5, scope: !3544, inlinedAt: !3533)
!3548 = !DILocation(line: 0, scope: !3527, inlinedAt: !3533)
!3549 = !DILocation(line: 116, column: 3, scope: !3511)
!3550 = !DILocation(line: 51, column: 17, scope: !3527)
!3551 = !DILocation(line: 51, column: 27, scope: !3527)
!3552 = !DILocation(line: 53, column: 8, scope: !3536)
!3553 = !DILocation(line: 53, column: 13, scope: !3536)
!3554 = !DILocation(line: 53, column: 10, scope: !3536)
!3555 = !DILocation(line: 57, column: 7, scope: !3540)
!3556 = !DILocation(line: 58, column: 7, scope: !3540)
!3557 = !DILocation(line: 61, column: 7, scope: !3527)
!3558 = !DILocation(line: 62, column: 8, scope: !3544)
!3559 = !DILocation(line: 62, column: 13, scope: !3544)
!3560 = !DILocation(line: 62, column: 10, scope: !3544)
!3561 = !DILocation(line: 63, column: 5, scope: !3544)
!3562 = !DILocation(line: 0, scope: !3527)
!3563 = !DILocation(line: 65, column: 1, scope: !3527)
!3564 = !DILocation(line: 174, column: 19, scope: !261)
!3565 = !DILocation(line: 174, column: 30, scope: !261)
!3566 = !DILocation(line: 174, column: 41, scope: !261)
!3567 = !DILocation(line: 176, column: 14, scope: !261)
!3568 = !DILocation(line: 176, column: 10, scope: !261)
!3569 = !DILocation(line: 178, column: 9, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !261, file: !260, line: 178, column: 7)
!3571 = !DILocation(line: 178, column: 7, scope: !261)
!3572 = !DILocation(line: 180, column: 13, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !260, line: 180, column: 11)
!3574 = distinct !DILexicalBlock(scope: !3570, file: !260, line: 179, column: 5)
!3575 = !DILocation(line: 180, column: 11, scope: !3574)
!3576 = !DILocation(line: 188, column: 30, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3573, file: !260, line: 181, column: 9)
!3578 = !DILocation(line: 189, column: 16, scope: !3577)
!3579 = !DILocation(line: 189, column: 13, scope: !3577)
!3580 = !DILocation(line: 190, column: 9, scope: !3577)
!3581 = !DILocation(line: 0, scope: !3577)
!3582 = !DILocation(line: 191, column: 11, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3574, file: !260, line: 191, column: 11)
!3584 = !DILocation(line: 191, column: 11, scope: !3574)
!3585 = !DILocation(line: 206, column: 7, scope: !261)
!3586 = !DILocation(line: 207, column: 25, scope: !261)
!3587 = !DILocation(line: 51, column: 17, scope: !3527, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 207, column: 10, scope: !261)
!3589 = !DILocation(line: 51, column: 27, scope: !3527, inlinedAt: !3588)
!3590 = !DILocation(line: 53, column: 10, scope: !3536, inlinedAt: !3588)
!3591 = !DILocation(line: 192, column: 9, scope: !3583)
!3592 = !DILocation(line: 200, column: 69, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !260, line: 200, column: 11)
!3594 = distinct !DILexicalBlock(scope: !3570, file: !260, line: 195, column: 5)
!3595 = !DILocation(line: 201, column: 11, scope: !3593)
!3596 = !DILocation(line: 200, column: 11, scope: !3594)
!3597 = !DILocation(line: 202, column: 9, scope: !3593)
!3598 = !DILocation(line: 203, column: 14, scope: !3594)
!3599 = !DILocation(line: 203, column: 18, scope: !3594)
!3600 = !DILocation(line: 203, column: 9, scope: !3594)
!3601 = !DILocation(line: 53, column: 8, scope: !3536, inlinedAt: !3588)
!3602 = !DILocation(line: 57, column: 7, scope: !3540, inlinedAt: !3588)
!3603 = !DILocation(line: 58, column: 7, scope: !3540, inlinedAt: !3588)
!3604 = !DILocation(line: 61, column: 7, scope: !3527, inlinedAt: !3588)
!3605 = !DILocation(line: 62, column: 8, scope: !3544, inlinedAt: !3588)
!3606 = !DILocation(line: 62, column: 13, scope: !3544, inlinedAt: !3588)
!3607 = !DILocation(line: 62, column: 10, scope: !3544, inlinedAt: !3588)
!3608 = !DILocation(line: 63, column: 5, scope: !3544, inlinedAt: !3588)
!3609 = !DILocation(line: 0, scope: !3527, inlinedAt: !3588)
!3610 = !DILocation(line: 207, column: 3, scope: !261)
!3611 = distinct !DISubprogram(name: "xcharalloc", scope: !260, file: !260, line: 216, type: !2578, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3612)
!3612 = !{!3613}
!3613 = !DILocalVariable(name: "n", arg: 1, scope: !3611, file: !260, line: 216, type: !48)
!3614 = !DILocation(line: 216, column: 20, scope: !3611)
!3615 = !DILocation(line: 39, column: 17, scope: !3487, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 218, column: 10, scope: !3611)
!3617 = !DILocation(line: 41, column: 13, scope: !3487, inlinedAt: !3616)
!3618 = !DILocation(line: 41, column: 9, scope: !3487, inlinedAt: !3616)
!3619 = !DILocation(line: 42, column: 8, scope: !3498, inlinedAt: !3616)
!3620 = !DILocation(line: 42, column: 15, scope: !3498, inlinedAt: !3616)
!3621 = !DILocation(line: 42, column: 10, scope: !3498, inlinedAt: !3616)
!3622 = !DILocation(line: 43, column: 5, scope: !3498, inlinedAt: !3616)
!3623 = !DILocation(line: 218, column: 3, scope: !3611)
!3624 = distinct !DISubprogram(name: "x2realloc", scope: !3488, file: !3488, line: 74, type: !3625, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!41, !41, !264}
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "p", arg: 1, scope: !3624, file: !3488, line: 74, type: !41)
!3629 = !DILocalVariable(name: "pn", arg: 2, scope: !3624, file: !3488, line: 74, type: !264)
!3630 = !DILocation(line: 74, column: 18, scope: !3624)
!3631 = !DILocation(line: 74, column: 29, scope: !3624)
!3632 = !DILocation(line: 174, column: 19, scope: !261, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 76, column: 10, scope: !3624)
!3634 = !DILocation(line: 174, column: 30, scope: !261, inlinedAt: !3633)
!3635 = !DILocation(line: 174, column: 41, scope: !261, inlinedAt: !3633)
!3636 = !DILocation(line: 176, column: 14, scope: !261, inlinedAt: !3633)
!3637 = !DILocation(line: 176, column: 10, scope: !261, inlinedAt: !3633)
!3638 = !DILocation(line: 178, column: 9, scope: !3570, inlinedAt: !3633)
!3639 = !DILocation(line: 178, column: 7, scope: !261, inlinedAt: !3633)
!3640 = !DILocation(line: 180, column: 13, scope: !3573, inlinedAt: !3633)
!3641 = !DILocation(line: 180, column: 11, scope: !3574, inlinedAt: !3633)
!3642 = !DILocation(line: 191, column: 11, scope: !3583, inlinedAt: !3633)
!3643 = !DILocation(line: 191, column: 11, scope: !3574, inlinedAt: !3633)
!3644 = !DILocation(line: 206, column: 7, scope: !261, inlinedAt: !3633)
!3645 = !DILocation(line: 51, column: 17, scope: !3527, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 207, column: 10, scope: !261, inlinedAt: !3633)
!3647 = !DILocation(line: 51, column: 27, scope: !3527, inlinedAt: !3646)
!3648 = !DILocation(line: 53, column: 10, scope: !3536, inlinedAt: !3646)
!3649 = !DILocation(line: 192, column: 9, scope: !3583, inlinedAt: !3633)
!3650 = !DILocation(line: 201, column: 11, scope: !3593, inlinedAt: !3633)
!3651 = !DILocation(line: 200, column: 11, scope: !3594, inlinedAt: !3633)
!3652 = !DILocation(line: 202, column: 9, scope: !3593, inlinedAt: !3633)
!3653 = !DILocation(line: 203, column: 14, scope: !3594, inlinedAt: !3633)
!3654 = !DILocation(line: 203, column: 18, scope: !3594, inlinedAt: !3633)
!3655 = !DILocation(line: 203, column: 9, scope: !3594, inlinedAt: !3633)
!3656 = !DILocation(line: 53, column: 8, scope: !3536, inlinedAt: !3646)
!3657 = !DILocation(line: 57, column: 7, scope: !3540, inlinedAt: !3646)
!3658 = !DILocation(line: 58, column: 7, scope: !3540, inlinedAt: !3646)
!3659 = !DILocation(line: 61, column: 7, scope: !3527, inlinedAt: !3646)
!3660 = !DILocation(line: 62, column: 8, scope: !3544, inlinedAt: !3646)
!3661 = !DILocation(line: 62, column: 13, scope: !3544, inlinedAt: !3646)
!3662 = !DILocation(line: 62, column: 10, scope: !3544, inlinedAt: !3646)
!3663 = !DILocation(line: 63, column: 5, scope: !3544, inlinedAt: !3646)
!3664 = !DILocation(line: 0, scope: !3527, inlinedAt: !3646)
!3665 = !DILocation(line: 76, column: 3, scope: !3624)
!3666 = distinct !DISubprogram(name: "xzalloc", scope: !3488, file: !3488, line: 84, type: !3489, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3667)
!3667 = !{!3668}
!3668 = !DILocalVariable(name: "s", arg: 1, scope: !3666, file: !3488, line: 84, type: !48)
!3669 = !DILocation(line: 84, column: 17, scope: !3666)
!3670 = !DILocation(line: 39, column: 17, scope: !3487, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 86, column: 18, scope: !3666)
!3672 = !DILocation(line: 41, column: 13, scope: !3487, inlinedAt: !3671)
!3673 = !DILocation(line: 41, column: 9, scope: !3487, inlinedAt: !3671)
!3674 = !DILocation(line: 42, column: 8, scope: !3498, inlinedAt: !3671)
!3675 = !DILocation(line: 42, column: 15, scope: !3498, inlinedAt: !3671)
!3676 = !DILocation(line: 42, column: 10, scope: !3498, inlinedAt: !3671)
!3677 = !DILocation(line: 43, column: 5, scope: !3498, inlinedAt: !3671)
!3678 = !DILocation(line: 86, column: 10, scope: !3666)
!3679 = !DILocation(line: 86, column: 3, scope: !3666)
!3680 = distinct !DISubprogram(name: "xcalloc", scope: !3488, file: !3488, line: 93, type: !903, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3681)
!3681 = !{!3682, !3683, !3684}
!3682 = !DILocalVariable(name: "n", arg: 1, scope: !3680, file: !3488, line: 93, type: !48)
!3683 = !DILocalVariable(name: "s", arg: 2, scope: !3680, file: !3488, line: 93, type: !48)
!3684 = !DILocalVariable(name: "p", scope: !3680, file: !3488, line: 95, type: !41)
!3685 = !DILocation(line: 93, column: 17, scope: !3680)
!3686 = !DILocation(line: 93, column: 27, scope: !3680)
!3687 = !DILocation(line: 100, column: 7, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3680, file: !3488, line: 100, column: 7)
!3689 = !DILocation(line: 101, column: 7, scope: !3688)
!3690 = !DILocation(line: 101, column: 18, scope: !3688)
!3691 = !DILocation(line: 95, column: 9, scope: !3680)
!3692 = !DILocation(line: 101, column: 16, scope: !3688)
!3693 = !DILocation(line: 100, column: 7, scope: !3680)
!3694 = !DILocation(line: 102, column: 5, scope: !3688)
!3695 = !DILocation(line: 103, column: 3, scope: !3680)
!3696 = distinct !DISubprogram(name: "xmemdup", scope: !3488, file: !3488, line: 111, type: !3697, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3701)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!41, !3699, !48}
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3701 = !{!3702, !3703}
!3702 = !DILocalVariable(name: "p", arg: 1, scope: !3696, file: !3488, line: 111, type: !3699)
!3703 = !DILocalVariable(name: "s", arg: 2, scope: !3696, file: !3488, line: 111, type: !48)
!3704 = !DILocation(line: 111, column: 22, scope: !3696)
!3705 = !DILocation(line: 111, column: 32, scope: !3696)
!3706 = !DILocation(line: 39, column: 17, scope: !3487, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 113, column: 18, scope: !3696)
!3708 = !DILocation(line: 41, column: 13, scope: !3487, inlinedAt: !3707)
!3709 = !DILocation(line: 41, column: 9, scope: !3487, inlinedAt: !3707)
!3710 = !DILocation(line: 42, column: 8, scope: !3498, inlinedAt: !3707)
!3711 = !DILocation(line: 42, column: 15, scope: !3498, inlinedAt: !3707)
!3712 = !DILocation(line: 42, column: 10, scope: !3498, inlinedAt: !3707)
!3713 = !DILocation(line: 43, column: 5, scope: !3498, inlinedAt: !3707)
!3714 = !DILocation(line: 113, column: 10, scope: !3696)
!3715 = !DILocation(line: 113, column: 3, scope: !3696)
!3716 = distinct !DISubprogram(name: "xstrdup", scope: !3488, file: !3488, line: 119, type: !2783, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3717)
!3717 = !{!3718}
!3718 = !DILocalVariable(name: "string", arg: 1, scope: !3716, file: !3488, line: 119, type: !37)
!3719 = !DILocation(line: 119, column: 22, scope: !3716)
!3720 = !DILocation(line: 121, column: 27, scope: !3716)
!3721 = !DILocation(line: 121, column: 43, scope: !3716)
!3722 = !DILocation(line: 111, column: 22, scope: !3696, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 121, column: 10, scope: !3716)
!3724 = !DILocation(line: 111, column: 32, scope: !3696, inlinedAt: !3723)
!3725 = !DILocation(line: 39, column: 17, scope: !3487, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 113, column: 18, scope: !3696, inlinedAt: !3723)
!3727 = !DILocation(line: 41, column: 13, scope: !3487, inlinedAt: !3726)
!3728 = !DILocation(line: 41, column: 9, scope: !3487, inlinedAt: !3726)
!3729 = !DILocation(line: 42, column: 8, scope: !3498, inlinedAt: !3726)
!3730 = !DILocation(line: 42, column: 15, scope: !3498, inlinedAt: !3726)
!3731 = !DILocation(line: 42, column: 10, scope: !3498, inlinedAt: !3726)
!3732 = !DILocation(line: 43, column: 5, scope: !3498, inlinedAt: !3726)
!3733 = !DILocation(line: 113, column: 10, scope: !3696, inlinedAt: !3723)
!3734 = !DILocation(line: 121, column: 3, scope: !3716)
!3735 = distinct !DISubprogram(name: "xalloc_die", scope: !3736, file: !3736, line: 32, type: !103, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !273, retainedNodes: !89)
!3736 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3737 = !DILocation(line: 34, column: 10, scope: !3735)
!3738 = !DILocation(line: 34, column: 33, scope: !3735)
!3739 = !DILocation(line: 34, column: 3, scope: !3735)
!3740 = !DILocation(line: 40, column: 3, scope: !3735)
!3741 = distinct !DISubprogram(name: "rpl_calloc", scope: !3742, file: !3742, line: 42, type: !903, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !275, retainedNodes: !3743)
!3742 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3743 = !{!3744, !3745, !3746, !3747}
!3744 = !DILocalVariable(name: "n", arg: 1, scope: !3741, file: !3742, line: 42, type: !48)
!3745 = !DILocalVariable(name: "s", arg: 2, scope: !3741, file: !3742, line: 42, type: !48)
!3746 = !DILocalVariable(name: "result", scope: !3741, file: !3742, line: 44, type: !41)
!3747 = !DILocalVariable(name: "bytes", scope: !3748, file: !3742, line: 56, type: !48)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !3742, line: 53, column: 5)
!3749 = distinct !DILexicalBlock(scope: !3741, file: !3742, line: 47, column: 7)
!3750 = !DILocation(line: 42, column: 20, scope: !3741)
!3751 = !DILocation(line: 42, column: 30, scope: !3741)
!3752 = !DILocation(line: 47, column: 9, scope: !3749)
!3753 = !DILocation(line: 47, column: 19, scope: !3749)
!3754 = !DILocation(line: 47, column: 14, scope: !3749)
!3755 = !DILocation(line: 56, column: 24, scope: !3748)
!3756 = !DILocation(line: 56, column: 14, scope: !3748)
!3757 = !DILocation(line: 57, column: 17, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3748, file: !3742, line: 57, column: 11)
!3759 = !DILocation(line: 57, column: 21, scope: !3758)
!3760 = !DILocation(line: 57, column: 11, scope: !3748)
!3761 = !DILocation(line: 59, column: 11, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3758, file: !3742, line: 58, column: 9)
!3763 = !DILocation(line: 59, column: 17, scope: !3762)
!3764 = !DILocation(line: 65, column: 12, scope: !3741)
!3765 = !DILocation(line: 44, column: 9, scope: !3741)
!3766 = !DILocation(line: 72, column: 3, scope: !3741)
!3767 = !DILocation(line: 0, scope: !3762)
!3768 = !DILocation(line: 73, column: 1, scope: !3741)
!3769 = distinct !DISubprogram(name: "rpl_fclose", scope: !3770, file: !3770, line: 58, type: !3771, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !277, retainedNodes: !3807)
!3770 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!47, !3773}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !782, line: 7, baseType: !3775)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !784, line: 49, size: 1728, elements: !3776)
!3776 = !{!3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3775, file: !784, line: 51, baseType: !47, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3775, file: !784, line: 54, baseType: !40, size: 64, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3775, file: !784, line: 55, baseType: !40, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3775, file: !784, line: 56, baseType: !40, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3775, file: !784, line: 57, baseType: !40, size: 64, offset: 256)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3775, file: !784, line: 58, baseType: !40, size: 64, offset: 320)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3775, file: !784, line: 59, baseType: !40, size: 64, offset: 384)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3775, file: !784, line: 60, baseType: !40, size: 64, offset: 448)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3775, file: !784, line: 61, baseType: !40, size: 64, offset: 512)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3775, file: !784, line: 64, baseType: !40, size: 64, offset: 576)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3775, file: !784, line: 65, baseType: !40, size: 64, offset: 640)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3775, file: !784, line: 66, baseType: !40, size: 64, offset: 704)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3775, file: !784, line: 68, baseType: !799, size: 64, offset: 768)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3775, file: !784, line: 70, baseType: !3791, size: 64, offset: 832)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3775, file: !784, line: 72, baseType: !47, size: 32, offset: 896)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3775, file: !784, line: 73, baseType: !47, size: 32, offset: 928)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3775, file: !784, line: 74, baseType: !806, size: 64, offset: 960)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3775, file: !784, line: 77, baseType: !153, size: 16, offset: 1024)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3775, file: !784, line: 78, baseType: !811, size: 8, offset: 1040)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3775, file: !784, line: 79, baseType: !813, size: 8, offset: 1048)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3775, file: !784, line: 81, baseType: !815, size: 64, offset: 1088)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3775, file: !784, line: 89, baseType: !818, size: 64, offset: 1152)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3775, file: !784, line: 91, baseType: !820, size: 64, offset: 1216)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3775, file: !784, line: 92, baseType: !823, size: 64, offset: 1280)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3775, file: !784, line: 93, baseType: !3791, size: 64, offset: 1344)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3775, file: !784, line: 94, baseType: !41, size: 64, offset: 1408)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3775, file: !784, line: 95, baseType: !48, size: 64, offset: 1472)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3775, file: !784, line: 96, baseType: !47, size: 32, offset: 1536)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3775, file: !784, line: 98, baseType: !830, size: 160, offset: 1568)
!3807 = !{!3808, !3809, !3810, !3811}
!3808 = !DILocalVariable(name: "fp", arg: 1, scope: !3769, file: !3770, line: 58, type: !3773)
!3809 = !DILocalVariable(name: "saved_errno", scope: !3769, file: !3770, line: 60, type: !47)
!3810 = !DILocalVariable(name: "fd", scope: !3769, file: !3770, line: 61, type: !47)
!3811 = !DILocalVariable(name: "result", scope: !3769, file: !3770, line: 62, type: !47)
!3812 = !DILocation(line: 58, column: 19, scope: !3769)
!3813 = !DILocation(line: 60, column: 7, scope: !3769)
!3814 = !DILocation(line: 62, column: 7, scope: !3769)
!3815 = !DILocation(line: 65, column: 8, scope: !3769)
!3816 = !DILocation(line: 61, column: 7, scope: !3769)
!3817 = !DILocation(line: 66, column: 10, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3769, file: !3770, line: 66, column: 7)
!3819 = !DILocation(line: 66, column: 7, scope: !3769)
!3820 = !DILocation(line: 67, column: 12, scope: !3818)
!3821 = !DILocation(line: 67, column: 5, scope: !3818)
!3822 = !DILocation(line: 72, column: 9, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3769, file: !3770, line: 72, column: 7)
!3824 = !DILocation(line: 72, column: 23, scope: !3823)
!3825 = !DILocation(line: 72, column: 33, scope: !3823)
!3826 = !DILocation(line: 72, column: 26, scope: !3823)
!3827 = !DILocation(line: 72, column: 59, scope: !3823)
!3828 = !DILocation(line: 73, column: 7, scope: !3823)
!3829 = !DILocation(line: 73, column: 10, scope: !3823)
!3830 = !DILocation(line: 72, column: 7, scope: !3769)
!3831 = !DILocation(line: 100, column: 12, scope: !3769)
!3832 = !DILocation(line: 105, column: 7, scope: !3769)
!3833 = !DILocation(line: 74, column: 19, scope: !3823)
!3834 = !DILocation(line: 105, column: 19, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3769, file: !3770, line: 105, column: 7)
!3836 = !DILocation(line: 107, column: 13, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3835, file: !3770, line: 106, column: 5)
!3838 = !DILocation(line: 109, column: 5, scope: !3837)
!3839 = !DILocation(line: 0, scope: !3769)
!3840 = !DILocation(line: 112, column: 1, scope: !3769)
!3841 = !DILocation(line: 276, column: 16, scope: !206)
!3842 = !DILocation(line: 276, column: 24, scope: !206)
!3843 = !DILocation(line: 278, column: 3, scope: !206)
!3844 = !DILocation(line: 278, column: 11, scope: !206)
!3845 = !DILocation(line: 279, column: 7, scope: !206)
!3846 = !DILocation(line: 280, column: 3, scope: !206)
!3847 = !DILocation(line: 281, column: 3, scope: !206)
!3848 = !DILocation(line: 0, scope: !240)
!3849 = !DILocation(line: 326, column: 22, scope: !231)
!3850 = !DILocation(line: 326, column: 13, scope: !231)
!3851 = !DILocation(line: 340, column: 18, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !231, file: !207, line: 340, column: 13)
!3853 = !DILocation(line: 340, column: 15, scope: !3852)
!3854 = !DILocation(line: 340, column: 13, scope: !231)
!3855 = !DILocation(line: 342, column: 22, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3852, file: !207, line: 341, column: 11)
!3857 = !DILocation(line: 343, column: 19, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3856, file: !207, line: 343, column: 17)
!3859 = !DILocation(line: 343, column: 29, scope: !3858)
!3860 = !DILocation(line: 343, column: 32, scope: !3858)
!3861 = !DILocation(line: 343, column: 38, scope: !3858)
!3862 = !DILocation(line: 343, column: 17, scope: !3856)
!3863 = !DILocation(line: 345, column: 36, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3858, file: !207, line: 344, column: 15)
!3865 = !DILocation(line: 361, column: 25, scope: !235)
!3866 = !DILocation(line: 353, column: 26, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3858, file: !207, line: 352, column: 15)
!3868 = !DILocation(line: 354, column: 28, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3867, file: !207, line: 354, column: 21)
!3870 = !DILocation(line: 354, column: 21, scope: !3867)
!3871 = !DILocation(line: 356, column: 36, scope: !3867)
!3872 = !DILocation(line: 360, column: 20, scope: !3852)
!3873 = !DILocation(line: 361, column: 28, scope: !235)
!3874 = !DILocation(line: 0, scope: !3852)
!3875 = !DILocation(line: 361, column: 15, scope: !235)
!3876 = !DILocation(line: 363, column: 25, scope: !234)
!3877 = !DILocation(line: 363, column: 17, scope: !234)
!3878 = !DILocation(line: 364, column: 23, scope: !238)
!3879 = !DILocation(line: 364, column: 27, scope: !238)
!3880 = !DILocation(line: 364, column: 60, scope: !238)
!3881 = !DILocation(line: 364, column: 30, scope: !238)
!3882 = !DILocation(line: 364, column: 74, scope: !238)
!3883 = !DILocation(line: 364, column: 17, scope: !234)
!3884 = !DILocation(line: 366, column: 35, scope: !237)
!3885 = !DILocation(line: 366, column: 21, scope: !237)
!3886 = !DILocation(line: 367, column: 17, scope: !237)
!3887 = !DILocation(line: 368, column: 23, scope: !237)
!3888 = !DILocation(line: 370, column: 15, scope: !237)
!3889 = !DILocation(line: 408, column: 19, scope: !240)
!3890 = !DILocation(line: 408, column: 15, scope: !240)
!3891 = !DILocation(line: 409, column: 18, scope: !240)
!3892 = !DILocation(line: 416, column: 3, scope: !206)
!3893 = !DILocation(line: 418, column: 1, scope: !206)
!3894 = !DILocation(line: 417, column: 3, scope: !206)
!3895 = distinct !DISubprogram(name: "rpl_fflush", scope: !3896, file: !3896, line: 129, type: !3897, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !279, retainedNodes: !3933)
!3896 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!47, !3899}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !782, line: 7, baseType: !3901)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !784, line: 49, size: 1728, elements: !3902)
!3902 = !{!3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3901, file: !784, line: 51, baseType: !47, size: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3901, file: !784, line: 54, baseType: !40, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3901, file: !784, line: 55, baseType: !40, size: 64, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3901, file: !784, line: 56, baseType: !40, size: 64, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3901, file: !784, line: 57, baseType: !40, size: 64, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3901, file: !784, line: 58, baseType: !40, size: 64, offset: 320)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3901, file: !784, line: 59, baseType: !40, size: 64, offset: 384)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3901, file: !784, line: 60, baseType: !40, size: 64, offset: 448)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3901, file: !784, line: 61, baseType: !40, size: 64, offset: 512)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3901, file: !784, line: 64, baseType: !40, size: 64, offset: 576)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3901, file: !784, line: 65, baseType: !40, size: 64, offset: 640)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3901, file: !784, line: 66, baseType: !40, size: 64, offset: 704)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3901, file: !784, line: 68, baseType: !799, size: 64, offset: 768)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3901, file: !784, line: 70, baseType: !3917, size: 64, offset: 832)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3901, file: !784, line: 72, baseType: !47, size: 32, offset: 896)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3901, file: !784, line: 73, baseType: !47, size: 32, offset: 928)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3901, file: !784, line: 74, baseType: !806, size: 64, offset: 960)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3901, file: !784, line: 77, baseType: !153, size: 16, offset: 1024)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3901, file: !784, line: 78, baseType: !811, size: 8, offset: 1040)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3901, file: !784, line: 79, baseType: !813, size: 8, offset: 1048)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3901, file: !784, line: 81, baseType: !815, size: 64, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3901, file: !784, line: 89, baseType: !818, size: 64, offset: 1152)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3901, file: !784, line: 91, baseType: !820, size: 64, offset: 1216)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3901, file: !784, line: 92, baseType: !823, size: 64, offset: 1280)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3901, file: !784, line: 93, baseType: !3917, size: 64, offset: 1344)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3901, file: !784, line: 94, baseType: !41, size: 64, offset: 1408)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3901, file: !784, line: 95, baseType: !48, size: 64, offset: 1472)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3901, file: !784, line: 96, baseType: !47, size: 32, offset: 1536)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3901, file: !784, line: 98, baseType: !830, size: 160, offset: 1568)
!3933 = !{!3934}
!3934 = !DILocalVariable(name: "stream", arg: 1, scope: !3895, file: !3896, line: 129, type: !3899)
!3935 = !DILocation(line: 129, column: 19, scope: !3895)
!3936 = !DILocation(line: 150, column: 14, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3895, file: !3896, line: 150, column: 7)
!3938 = !DILocation(line: 150, column: 22, scope: !3937)
!3939 = !DILocation(line: 150, column: 27, scope: !3937)
!3940 = !DILocation(line: 150, column: 7, scope: !3895)
!3941 = !DILocation(line: 151, column: 12, scope: !3937)
!3942 = !DILocation(line: 151, column: 5, scope: !3937)
!3943 = !DILocalVariable(name: "fp", arg: 1, scope: !3944, file: !3896, line: 41, type: !3899)
!3944 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3896, file: !3896, line: 41, type: !3945, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !279, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3899}
!3947 = !{!3943}
!3948 = !DILocation(line: 41, column: 48, scope: !3944, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 156, column: 3, scope: !3895)
!3950 = !DILocation(line: 43, column: 11, scope: !3951, inlinedAt: !3949)
!3951 = distinct !DILexicalBlock(scope: !3944, file: !3896, line: 43, column: 7)
!3952 = !{!1210, !890, i64 0}
!3953 = !DILocation(line: 43, column: 18, scope: !3951, inlinedAt: !3949)
!3954 = !DILocation(line: 43, column: 7, scope: !3944, inlinedAt: !3949)
!3955 = !DILocation(line: 45, column: 5, scope: !3951, inlinedAt: !3949)
!3956 = !DILocation(line: 158, column: 10, scope: !3895)
!3957 = !DILocation(line: 158, column: 3, scope: !3895)
!3958 = !DILocation(line: 0, scope: !3895)
!3959 = !DILocation(line: 232, column: 1, scope: !3895)
!3960 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3961, file: !3961, line: 28, type: !3962, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !281, retainedNodes: !3998)
!3961 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!47, !3964, !1364, !47}
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !782, line: 7, baseType: !3966)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !784, line: 49, size: 1728, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3966, file: !784, line: 51, baseType: !47, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3966, file: !784, line: 54, baseType: !40, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3966, file: !784, line: 55, baseType: !40, size: 64, offset: 128)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3966, file: !784, line: 56, baseType: !40, size: 64, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3966, file: !784, line: 57, baseType: !40, size: 64, offset: 256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3966, file: !784, line: 58, baseType: !40, size: 64, offset: 320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3966, file: !784, line: 59, baseType: !40, size: 64, offset: 384)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3966, file: !784, line: 60, baseType: !40, size: 64, offset: 448)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3966, file: !784, line: 61, baseType: !40, size: 64, offset: 512)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3966, file: !784, line: 64, baseType: !40, size: 64, offset: 576)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3966, file: !784, line: 65, baseType: !40, size: 64, offset: 640)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3966, file: !784, line: 66, baseType: !40, size: 64, offset: 704)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3966, file: !784, line: 68, baseType: !799, size: 64, offset: 768)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3966, file: !784, line: 70, baseType: !3982, size: 64, offset: 832)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3966, file: !784, line: 72, baseType: !47, size: 32, offset: 896)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3966, file: !784, line: 73, baseType: !47, size: 32, offset: 928)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3966, file: !784, line: 74, baseType: !806, size: 64, offset: 960)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3966, file: !784, line: 77, baseType: !153, size: 16, offset: 1024)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3966, file: !784, line: 78, baseType: !811, size: 8, offset: 1040)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3966, file: !784, line: 79, baseType: !813, size: 8, offset: 1048)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3966, file: !784, line: 81, baseType: !815, size: 64, offset: 1088)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3966, file: !784, line: 89, baseType: !818, size: 64, offset: 1152)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3966, file: !784, line: 91, baseType: !820, size: 64, offset: 1216)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3966, file: !784, line: 92, baseType: !823, size: 64, offset: 1280)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3966, file: !784, line: 93, baseType: !3982, size: 64, offset: 1344)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3966, file: !784, line: 94, baseType: !41, size: 64, offset: 1408)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3966, file: !784, line: 95, baseType: !48, size: 64, offset: 1472)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3966, file: !784, line: 96, baseType: !47, size: 32, offset: 1536)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3966, file: !784, line: 98, baseType: !830, size: 160, offset: 1568)
!3998 = !{!3999, !4000, !4001, !4002}
!3999 = !DILocalVariable(name: "fp", arg: 1, scope: !3960, file: !3961, line: 28, type: !3964)
!4000 = !DILocalVariable(name: "offset", arg: 2, scope: !3960, file: !3961, line: 28, type: !1364)
!4001 = !DILocalVariable(name: "whence", arg: 3, scope: !3960, file: !3961, line: 28, type: !47)
!4002 = !DILocalVariable(name: "pos", scope: !4003, file: !3961, line: 117, type: !1364)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !3961, line: 113, column: 5)
!4004 = distinct !DILexicalBlock(scope: !3960, file: !3961, line: 52, column: 7)
!4005 = !DILocation(line: 28, column: 15, scope: !3960)
!4006 = !DILocation(line: 28, column: 25, scope: !3960)
!4007 = !DILocation(line: 28, column: 37, scope: !3960)
!4008 = !DILocation(line: 52, column: 11, scope: !4004)
!4009 = !{!1210, !717, i64 16}
!4010 = !DILocation(line: 52, column: 31, scope: !4004)
!4011 = !{!1210, !717, i64 8}
!4012 = !DILocation(line: 52, column: 24, scope: !4004)
!4013 = !DILocation(line: 53, column: 7, scope: !4004)
!4014 = !DILocation(line: 53, column: 14, scope: !4004)
!4015 = !DILocation(line: 53, column: 35, scope: !4004)
!4016 = !{!1210, !717, i64 32}
!4017 = !DILocation(line: 53, column: 28, scope: !4004)
!4018 = !DILocation(line: 54, column: 7, scope: !4004)
!4019 = !DILocation(line: 54, column: 14, scope: !4004)
!4020 = !{!1210, !717, i64 72}
!4021 = !DILocation(line: 54, column: 28, scope: !4004)
!4022 = !DILocation(line: 52, column: 7, scope: !3960)
!4023 = !DILocation(line: 117, column: 26, scope: !4003)
!4024 = !DILocation(line: 117, column: 19, scope: !4003)
!4025 = !DILocation(line: 117, column: 13, scope: !4003)
!4026 = !DILocation(line: 118, column: 15, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4003, file: !3961, line: 118, column: 11)
!4028 = !DILocation(line: 118, column: 11, scope: !4003)
!4029 = !DILocation(line: 129, column: 11, scope: !4003)
!4030 = !DILocation(line: 129, column: 18, scope: !4003)
!4031 = !DILocation(line: 130, column: 11, scope: !4003)
!4032 = !DILocation(line: 130, column: 19, scope: !4003)
!4033 = !{!1210, !1211, i64 144}
!4034 = !DILocation(line: 161, column: 7, scope: !4003)
!4035 = !DILocation(line: 163, column: 10, scope: !3960)
!4036 = !DILocation(line: 163, column: 3, scope: !3960)
!4037 = !DILocation(line: 0, scope: !3960)
!4038 = !DILocation(line: 164, column: 1, scope: !3960)
!4039 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4040, file: !4040, line: 385, type: !4041, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !4055)
!4040 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!48, !4043, !37, !48, !4044}
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1744, line: 6, baseType: !4046)
!4046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1746, line: 21, baseType: !4047)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1746, line: 13, size: 64, elements: !4048)
!4048 = !{!4049, !4050}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4047, file: !1746, line: 15, baseType: !47, size: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4047, file: !1746, line: 20, baseType: !4051, size: 32, offset: 32)
!4051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4047, file: !1746, line: 16, size: 32, elements: !4052)
!4052 = !{!4053, !4054}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4051, file: !1746, line: 18, baseType: !6, size: 32)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4051, file: !1746, line: 19, baseType: !1755, size: 32)
!4055 = !{!4056, !4057, !4058, !4059, !4060, !4061, !4062}
!4056 = !DILocalVariable(name: "pwc", arg: 1, scope: !4039, file: !4040, line: 385, type: !4043)
!4057 = !DILocalVariable(name: "s", arg: 2, scope: !4039, file: !4040, line: 385, type: !37)
!4058 = !DILocalVariable(name: "n", arg: 3, scope: !4039, file: !4040, line: 385, type: !48)
!4059 = !DILocalVariable(name: "ps", arg: 4, scope: !4039, file: !4040, line: 385, type: !4044)
!4060 = !DILocalVariable(name: "ret", scope: !4039, file: !4040, line: 387, type: !48)
!4061 = !DILocalVariable(name: "wc", scope: !4039, file: !4040, line: 388, type: !1758)
!4062 = !DILocalVariable(name: "uc", scope: !4063, file: !4040, line: 449, type: !97)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !4040, line: 448, column: 5)
!4064 = distinct !DILexicalBlock(scope: !4039, file: !4040, line: 447, column: 7)
!4065 = !DILocation(line: 385, column: 23, scope: !4039)
!4066 = !DILocation(line: 385, column: 40, scope: !4039)
!4067 = !DILocation(line: 385, column: 50, scope: !4039)
!4068 = !DILocation(line: 385, column: 64, scope: !4039)
!4069 = !DILocation(line: 388, column: 3, scope: !4039)
!4070 = !DILocation(line: 404, column: 9, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4039, file: !4040, line: 404, column: 7)
!4072 = !DILocation(line: 404, column: 7, scope: !4039)
!4073 = !DILocation(line: 439, column: 9, scope: !4039)
!4074 = !DILocation(line: 387, column: 10, scope: !4039)
!4075 = !DILocation(line: 447, column: 19, scope: !4064)
!4076 = !DILocation(line: 447, column: 31, scope: !4064)
!4077 = !DILocation(line: 447, column: 26, scope: !4064)
!4078 = !DILocation(line: 447, column: 41, scope: !4064)
!4079 = !DILocation(line: 447, column: 7, scope: !4039)
!4080 = !DILocation(line: 449, column: 26, scope: !4063)
!4081 = !DILocation(line: 449, column: 21, scope: !4063)
!4082 = !DILocation(line: 450, column: 14, scope: !4063)
!4083 = !DILocation(line: 450, column: 12, scope: !4063)
!4084 = !DILocation(line: 0, scope: !4063)
!4085 = !DILocation(line: 456, column: 1, scope: !4039)
!4086 = distinct !DISubprogram(name: "close_stream", scope: !4087, file: !4087, line: 56, type: !4088, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !4124)
!4087 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!47, !4090}
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !782, line: 7, baseType: !4092)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !784, line: 49, size: 1728, elements: !4093)
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4092, file: !784, line: 51, baseType: !47, size: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4092, file: !784, line: 54, baseType: !40, size: 64, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4092, file: !784, line: 55, baseType: !40, size: 64, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4092, file: !784, line: 56, baseType: !40, size: 64, offset: 192)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4092, file: !784, line: 57, baseType: !40, size: 64, offset: 256)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4092, file: !784, line: 58, baseType: !40, size: 64, offset: 320)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4092, file: !784, line: 59, baseType: !40, size: 64, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4092, file: !784, line: 60, baseType: !40, size: 64, offset: 448)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4092, file: !784, line: 61, baseType: !40, size: 64, offset: 512)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4092, file: !784, line: 64, baseType: !40, size: 64, offset: 576)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4092, file: !784, line: 65, baseType: !40, size: 64, offset: 640)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4092, file: !784, line: 66, baseType: !40, size: 64, offset: 704)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4092, file: !784, line: 68, baseType: !799, size: 64, offset: 768)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4092, file: !784, line: 70, baseType: !4108, size: 64, offset: 832)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4092, file: !784, line: 72, baseType: !47, size: 32, offset: 896)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4092, file: !784, line: 73, baseType: !47, size: 32, offset: 928)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4092, file: !784, line: 74, baseType: !806, size: 64, offset: 960)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4092, file: !784, line: 77, baseType: !153, size: 16, offset: 1024)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4092, file: !784, line: 78, baseType: !811, size: 8, offset: 1040)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4092, file: !784, line: 79, baseType: !813, size: 8, offset: 1048)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4092, file: !784, line: 81, baseType: !815, size: 64, offset: 1088)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4092, file: !784, line: 89, baseType: !818, size: 64, offset: 1152)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4092, file: !784, line: 91, baseType: !820, size: 64, offset: 1216)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4092, file: !784, line: 92, baseType: !823, size: 64, offset: 1280)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4092, file: !784, line: 93, baseType: !4108, size: 64, offset: 1344)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4092, file: !784, line: 94, baseType: !41, size: 64, offset: 1408)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4092, file: !784, line: 95, baseType: !48, size: 64, offset: 1472)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4092, file: !784, line: 96, baseType: !47, size: 32, offset: 1536)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4092, file: !784, line: 98, baseType: !830, size: 160, offset: 1568)
!4124 = !{!4125, !4126, !4128, !4129}
!4125 = !DILocalVariable(name: "stream", arg: 1, scope: !4086, file: !4087, line: 56, type: !4090)
!4126 = !DILocalVariable(name: "some_pending", scope: !4086, file: !4087, line: 58, type: !4127)
!4127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!4128 = !DILocalVariable(name: "prev_fail", scope: !4086, file: !4087, line: 59, type: !4127)
!4129 = !DILocalVariable(name: "fclose_fail", scope: !4086, file: !4087, line: 60, type: !4127)
!4130 = !DILocation(line: 56, column: 21, scope: !4086)
!4131 = !DILocation(line: 58, column: 30, scope: !4086)
!4132 = !DILocalVariable(name: "__stream", arg: 1, scope: !4133, file: !1166, line: 135, type: !4090)
!4133 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1166, file: !1166, line: 135, type: !4088, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !4134)
!4134 = !{!4132}
!4135 = !DILocation(line: 135, column: 1, scope: !4133, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 59, column: 27, scope: !4086)
!4137 = !DILocation(line: 137, column: 10, scope: !4133, inlinedAt: !4136)
!4138 = !DILocation(line: 59, column: 43, scope: !4086)
!4139 = !DILocation(line: 60, column: 29, scope: !4086)
!4140 = !DILocation(line: 60, column: 45, scope: !4086)
!4141 = !DILocation(line: 70, column: 17, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4086, file: !4087, line: 70, column: 7)
!4143 = !DILocation(line: 58, column: 50, scope: !4086)
!4144 = !DILocation(line: 70, column: 33, scope: !4142)
!4145 = !DILocation(line: 70, column: 53, scope: !4142)
!4146 = !DILocation(line: 70, column: 59, scope: !4142)
!4147 = !DILocation(line: 70, column: 7, scope: !4086)
!4148 = !DILocation(line: 72, column: 11, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4142, file: !4087, line: 71, column: 5)
!4150 = !DILocation(line: 73, column: 9, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4149, file: !4087, line: 72, column: 11)
!4152 = !DILocation(line: 73, column: 15, scope: !4151)
!4153 = !DILocation(line: 0, scope: !4086)
!4154 = !DILocation(line: 78, column: 1, scope: !4086)
!4155 = distinct !DISubprogram(name: "hard_locale", scope: !4156, file: !4156, line: 38, type: !4157, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !4159)
!4156 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!55, !47}
!4159 = !{!4160, !4161, !4162}
!4160 = !DILocalVariable(name: "category", arg: 1, scope: !4155, file: !4156, line: 38, type: !47)
!4161 = !DILocalVariable(name: "hard", scope: !4155, file: !4156, line: 40, type: !55)
!4162 = !DILocalVariable(name: "p", scope: !4155, file: !4156, line: 41, type: !37)
!4163 = !DILocation(line: 38, column: 18, scope: !4155)
!4164 = !DILocation(line: 40, column: 8, scope: !4155)
!4165 = !DILocation(line: 41, column: 19, scope: !4155)
!4166 = !DILocation(line: 41, column: 15, scope: !4155)
!4167 = !DILocation(line: 43, column: 7, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4155, file: !4156, line: 43, column: 7)
!4169 = !DILocation(line: 43, column: 7, scope: !4155)
!4170 = !DILocation(line: 47, column: 15, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4172, file: !4156, line: 47, column: 15)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !4156, line: 46, column: 9)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !4156, line: 45, column: 11)
!4174 = distinct !DILexicalBlock(scope: !4168, file: !4156, line: 44, column: 5)
!4175 = !DILocation(line: 47, column: 31, scope: !4171)
!4176 = !DILocation(line: 47, column: 36, scope: !4171)
!4177 = !DILocation(line: 47, column: 39, scope: !4171)
!4178 = !DILocation(line: 47, column: 59, scope: !4171)
!4179 = !DILocation(line: 47, column: 15, scope: !4172)
!4180 = !DILocation(line: 48, column: 13, scope: !4171)
!4181 = !DILocation(line: 71, column: 3, scope: !4155)
!4182 = distinct !DISubprogram(name: "locale_charset", scope: !4183, file: !4183, line: 687, type: !4184, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !290, retainedNodes: !4186)
!4183 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!37}
!4186 = !{!4187}
!4187 = !DILocalVariable(name: "codeset", scope: !4182, file: !4183, line: 689, type: !37)
!4188 = !DILocation(line: 696, column: 13, scope: !4182)
!4189 = !DILocation(line: 689, column: 15, scope: !4182)
!4190 = !DILocation(line: 754, column: 15, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4182, file: !4183, line: 754, column: 7)
!4192 = !DILocation(line: 754, column: 7, scope: !4182)
!4193 = !DILocation(line: 907, column: 13, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4195, file: !4183, line: 907, column: 13)
!4195 = distinct !DILexicalBlock(scope: !4196, file: !4183, line: 897, column: 7)
!4196 = distinct !DILexicalBlock(scope: !4182, file: !4183, line: 856, column: 3)
!4197 = !DILocation(line: 907, column: 24, scope: !4194)
!4198 = !DILocation(line: 907, column: 13, scope: !4195)
!4199 = !DILocation(line: 995, column: 3, scope: !4182)
