; ModuleID = 'coreutils-8.30/src/uptime.bc'
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
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.tm_zone = type { %struct.tm_zone*, i8, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [185 x i8] c"Print the current time, the length of time the system has been up,\0Athe number of users on the system, and the average number of jobs\0Ain the run queue over the last 1, 5 and 15 minutes.\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"  Processes in\0Aan uninterruptible sleep state also contribute to the load average.\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"If FILE is not specified, use %s.  %s as FILE is common.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.29 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Kaveh Ghazi\00", align 1
@long_options = internal constant [1 x %struct.option] zeroinitializer, align 16, !dbg !0
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"couldn't get boot time\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c" %H:%M:%S  \00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c" ??:????  \00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"up ???? days ??:??,  \00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"up %ld day %2d:%02d,  \00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"up %ld days %2d:%02d,  \00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"up  %2d:%02d,  \00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"%lu user\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"%lu users\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c",  load average: %.2f\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c", %.2f\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), align 8, !dbg !63
@.str.47 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !69
@.str.50 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !101
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !106
@.str.53 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.54 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !110
@.str.60 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.61 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.1.62 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.2.63 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.3.64 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.67 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options.68 = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.69, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.70, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !117
@.str.1.69 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.70 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !133
@.str.75 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.76 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.77 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.87, i32 0, i32 0), i8* null], align 16, !dbg !140
@.str.78 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.79 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.80 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.81 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.82 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.83 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.84 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.85 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.86 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.87 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !169
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !176
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !188
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.89 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.91 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.92 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.93 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.94 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !195
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !202
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !190
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !204
@.str.101 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.104 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.105 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.106 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.107 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.108 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.109 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.110 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.111 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.112 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.113 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.114 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.117 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.118 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.119 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.120 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.121 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.122 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !210
@.str.1.133 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1.148 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.155 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.159 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.160 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) #0 !dbg !694 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !699, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i32 %0, metadata !698, metadata !DIExpression()), !dbg !721
  %3 = icmp eq i32 %0, 0, !dbg !722
  br i1 %3, label %9, label %4, !dbg !723

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !724, !tbaa !726
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !724
  %7 = load i8*, i8** @program_name, align 8, !dbg !724, !tbaa !726
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !724
  br label %60, !dbg !724

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !730
  %11 = load i8*, i8** @program_name, align 8, !dbg !730, !tbaa !726
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #11, !dbg !730
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !731
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13) #11, !dbg !731
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !732
  %16 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %15) #11, !dbg !732
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !733
  %18 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !733
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !734
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734, !tbaa !726
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !734
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !735
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !735, !tbaa !726
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !735
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !736
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #11, !dbg !736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %25, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !717
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !737
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !706, metadata !DIExpression()) #11, !dbg !738
  br label %27, !dbg !739

; <label>:27:                                     ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !706, metadata !DIExpression()) #11, !dbg !738
  %30 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %28) #14, !dbg !739
  %31 = icmp eq i32 %30, 0, !dbg !739
  br i1 %31, label %37, label %32, !dbg !740

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !741
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !706, metadata !DIExpression()) #11, !dbg !738
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !742
  %35 = load i8*, i8** %34, align 8, !dbg !742, !tbaa !743
  %36 = icmp eq i8* %35, null, !dbg !745
  br i1 %36, label %37, label %27, !dbg !746, !llvm.loop !747

; <label>:37:                                     ; preds = %32, %27
  %38 = phi %struct.infomap* [ %33, %32 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !706, metadata !DIExpression()) #11, !dbg !738
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !706, metadata !DIExpression()) #11, !dbg !738
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !750
  %40 = load i8*, i8** %39, align 8, !dbg !750, !tbaa !752
  %41 = icmp eq i8* %40, null, !dbg !753
  %42 = select i1 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %40, !dbg !754
  call void @llvm.dbg.value(metadata i8* %42, metadata !705, metadata !DIExpression()) #11, !dbg !755
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !756
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0)) #11, !dbg !756
  %45 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !757
  call void @llvm.dbg.value(metadata i8* %45, metadata !713, metadata !DIExpression()) #11, !dbg !758
  %46 = icmp eq i8* %45, null, !dbg !759
  br i1 %46, label %53, label %47, !dbg !761

; <label>:47:                                     ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3) #14, !dbg !762
  %49 = icmp eq i32 %48, 0, !dbg !762
  br i1 %49, label %53, label %50, !dbg !763

; <label>:50:                                     ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !764
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !764
  br label %53, !dbg !766

; <label>:53:                                     ; preds = %37, %47, %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !767
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !767
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #11, !dbg !768
  %57 = icmp eq i8* %42, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), !dbg !768
  %58 = select i1 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !768
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* %42, i8* %58) #11, !dbg !768
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #11, !dbg !769
  br label %60

; <label>:60:                                     ; preds = %53, %4
  tail call void @exit(i32 %0) #15, !dbg !770
  unreachable, !dbg !770
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !771 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !776, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8** %1, metadata !777, metadata !DIExpression()), !dbg !779
  %3 = load i8*, i8** %1, align 8, !dbg !780, !tbaa !726
  tail call void @set_program_name(i8* %3) #11, !dbg !781
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !782
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !783
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !784
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !785
  %8 = load i8*, i8** @Version, align 8, !dbg !786, !tbaa !726
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #11, !dbg !787
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([1 x %struct.option], [1 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !788
  %10 = icmp eq i32 %9, -1, !dbg !790
  br i1 %10, label %12, label %11, !dbg !791

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !792
  unreachable, !dbg !792

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !793, !tbaa !794
  %14 = sub nsw i32 %0, %13, !dbg !796
  switch i32 %14, label %20 [
    i32 0, label %15
    i32 1, label %16
  ], !dbg !797

; <label>:15:                                     ; preds = %12
  tail call fastcc void @uptime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 1), !dbg !798
  br label %28, !dbg !800

; <label>:16:                                     ; preds = %12
  %17 = sext i32 %13 to i64, !dbg !801
  %18 = getelementptr inbounds i8*, i8** %1, i64 %17, !dbg !801
  %19 = load i8*, i8** %18, align 8, !dbg !801, !tbaa !726
  tail call fastcc void @uptime(i8* %19, i32 0), !dbg !802
  br label %28, !dbg !803

; <label>:20:                                     ; preds = %12
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !804
  %22 = load i32, i32* @optind, align 4, !dbg !805, !tbaa !794
  %23 = add nsw i32 %22, 1, !dbg !806
  %24 = sext i32 %23 to i64, !dbg !807
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24, !dbg !807
  %26 = load i8*, i8** %25, align 8, !dbg !807, !tbaa !726
  %27 = tail call i8* @quote(i8* %26) #11, !dbg !808
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %21, i8* %27) #11, !dbg !809
  tail call void @usage(i32 1) #16, !dbg !810
  unreachable, !dbg !810

; <label>:28:                                     ; preds = %16, %15
  ret i32 0, !dbg !811
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @uptime(i8*, i32) unnamed_addr #7 !dbg !812 {
  %3 = alloca i64, align 8
  %4 = alloca [3 x double], align 16
  call void @llvm.dbg.declare(metadata [3 x double]* %4, metadata !857, metadata !DIExpression()), !dbg !952
  %5 = alloca [8192 x i8], align 16
  call void @llvm.dbg.declare(metadata [8192 x i8]* %5, metadata !939, metadata !DIExpression()), !dbg !954
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.utmpx*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !816, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 %1, metadata !817, metadata !DIExpression()), !dbg !956
  %9 = bitcast i64* %7 to i8*, !dbg !957
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !957
  %10 = bitcast %struct.utmpx** %8 to i8*, !dbg !958
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !958
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !819, metadata !DIExpression()), !dbg !959
  store %struct.utmpx* null, %struct.utmpx** %8, align 8, !dbg !959, !tbaa !726
  call void @llvm.dbg.value(metadata i64* %7, metadata !818, metadata !DIExpression(DW_OP_deref)), !dbg !960
  call void @llvm.dbg.value(metadata %struct.utmpx** %8, metadata !819, metadata !DIExpression(DW_OP_deref)), !dbg !959
  %11 = call i32 @read_utmp(i8* %0, i64* nonnull %7, %struct.utmpx** nonnull %8, i32 %1) #11, !dbg !961
  %12 = icmp eq i32 %11, 0, !dbg !963
  br i1 %12, label %17, label %13, !dbg !964

; <label>:13:                                     ; preds = %2
  %14 = tail call i32* @__errno_location() #17, !dbg !965
  %15 = load i32, i32* %14, align 4, !dbg !965, !tbaa !794
  %16 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !965
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %16) #11, !dbg !965
  unreachable, !dbg !965

; <label>:17:                                     ; preds = %2
  %18 = load i64, i64* %7, align 8, !dbg !966, !tbaa !967
  call void @llvm.dbg.value(metadata i64 %18, metadata !818, metadata !DIExpression()), !dbg !960
  %19 = load %struct.utmpx*, %struct.utmpx** %8, align 8, !dbg !969, !tbaa !726
  call void @llvm.dbg.value(metadata %struct.utmpx* %19, metadata !819, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i64 %18, metadata !864, metadata !DIExpression()) #11, !dbg !970
  call void @llvm.dbg.value(metadata %struct.utmpx* %19, metadata !865, metadata !DIExpression()) #11, !dbg !971
  call void @llvm.dbg.value(metadata i64 0, metadata !866, metadata !DIExpression()) #11, !dbg !972
  call void @llvm.dbg.value(metadata i64 0, metadata !867, metadata !DIExpression()) #11, !dbg !973
  %20 = bitcast i64* %3 to i8*, !dbg !974
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #11, !dbg !974
  call void @llvm.dbg.value(metadata i64 0, metadata !869, metadata !DIExpression()) #11, !dbg !975
  %21 = bitcast [3 x double]* %4 to i8*, !dbg !976
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %21) #11, !dbg !976
  %22 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #11, !dbg !977
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !890, metadata !DIExpression()) #11, !dbg !978
  %23 = icmp eq %struct._IO_FILE* %22, null, !dbg !979
  br i1 %23, label %44, label %24, !dbg !980

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0, !dbg !981
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %25) #11, !dbg !981
  %26 = call i8* @fgets_unlocked(i8* nonnull %25, i32 8192, %struct._IO_FILE* nonnull %22) #11, !dbg !982
  call void @llvm.dbg.value(metadata i8* %26, metadata !945, metadata !DIExpression()) #11, !dbg !983
  %27 = icmp eq i8* %26, %25, !dbg !984
  br i1 %27, label %28, label %41, !dbg !985

; <label>:28:                                     ; preds = %24
  %29 = bitcast i8** %6 to i8*, !dbg !986
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #11, !dbg !986
  call void @llvm.dbg.value(metadata i8** %6, metadata !946, metadata !DIExpression(DW_OP_deref)) #11, !dbg !987
  %30 = call double @c_strtod(i8* nonnull %25, i8** nonnull %6) #11, !dbg !988
  call void @llvm.dbg.value(metadata double %30, metadata !949, metadata !DIExpression()) #11, !dbg !989
  %31 = load i8*, i8** %6, align 8, !dbg !990, !tbaa !726
  call void @llvm.dbg.value(metadata i8* %31, metadata !946, metadata !DIExpression()) #11, !dbg !987
  %32 = icmp eq i8* %25, %31, !dbg !992
  br i1 %32, label %39, label %33, !dbg !993

; <label>:33:                                     ; preds = %28
  %34 = fcmp oge double %30, 0.000000e+00, !dbg !994
  %35 = fcmp olt double %30, 0x43E0000000000000, !dbg !995
  %36 = and i1 %34, %35, !dbg !996
  %37 = fptosi double %30 to i64, !dbg !997
  %38 = select i1 %36, i64 %37, i64 -1, !dbg !997
  call void @llvm.dbg.value(metadata i64 %38, metadata !869, metadata !DIExpression()) #11, !dbg !975
  br label %39, !dbg !998

; <label>:39:                                     ; preds = %33, %28
  %40 = phi i64 [ %38, %33 ], [ 0, %28 ], !dbg !999
  call void @llvm.dbg.value(metadata i64 %40, metadata !869, metadata !DIExpression()) #11, !dbg !975
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #11, !dbg !1000
  br label %41, !dbg !1001

; <label>:41:                                     ; preds = %39, %24
  %42 = phi i64 [ %40, %39 ], [ 0, %24 ], !dbg !999
  call void @llvm.dbg.value(metadata i64 %42, metadata !869, metadata !DIExpression()) #11, !dbg !975
  %43 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %22) #11, !dbg !1002
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %25) #11, !dbg !1003
  br label %44, !dbg !1004

; <label>:44:                                     ; preds = %41, %17
  %45 = phi i64 [ %42, %41 ], [ 0, %17 ], !dbg !999
  call void @llvm.dbg.value(metadata i64 %45, metadata !869, metadata !DIExpression()) #11, !dbg !975
  call void @llvm.dbg.value(metadata i64 %18, metadata !864, metadata !DIExpression()) #11, !dbg !970
  call void @llvm.dbg.value(metadata %struct.utmpx* %19, metadata !865, metadata !DIExpression()) #11, !dbg !971
  call void @llvm.dbg.value(metadata i64 0, metadata !866, metadata !DIExpression()) #11, !dbg !972
  call void @llvm.dbg.value(metadata i64 0, metadata !867, metadata !DIExpression()) #11, !dbg !973
  call void @llvm.dbg.value(metadata i64 %18, metadata !864, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !970
  %46 = icmp eq i64 %18, 0, !dbg !1005
  br i1 %46, label %105, label %47, !dbg !1005

; <label>:47:                                     ; preds = %44
  %48 = and i64 %18, 1, !dbg !1006
  %49 = icmp eq i64 %18, 1, !dbg !1006
  br i1 %49, label %83, label %50, !dbg !1006

; <label>:50:                                     ; preds = %47
  %51 = sub i64 %18, %48, !dbg !1006
  br label %52, !dbg !1006

; <label>:52:                                     ; preds = %201, %50
  %53 = phi %struct.utmpx* [ %19, %50 ], [ %203, %201 ]
  %54 = phi i64 [ 0, %50 ], [ %81, %201 ]
  %55 = phi i64 [ 0, %50 ], [ %202, %201 ]
  %56 = phi i64 [ %51, %50 ], [ %204, %201 ]
  call void @llvm.dbg.value(metadata %struct.utmpx* %53, metadata !865, metadata !DIExpression()) #11, !dbg !971
  call void @llvm.dbg.value(metadata i64 %54, metadata !866, metadata !DIExpression()) #11, !dbg !972
  call void @llvm.dbg.value(metadata i64 %55, metadata !867, metadata !DIExpression()) #11, !dbg !973
  %57 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 0, i32 4, i64 0, !dbg !1007
  %58 = load i8, i8* %57, align 4, !dbg !1007, !tbaa !1009
  %59 = icmp ne i8 %58, 0, !dbg !1007
  %60 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 0, i32 0
  %61 = load i16, i16* %60, align 4, !dbg !1010, !tbaa !1011
  %62 = icmp eq i16 %61, 7, !dbg !1007
  %63 = and i1 %59, %62, !dbg !1007
  %64 = zext i1 %63 to i64, !dbg !1007
  %65 = add i64 %54, %64, !dbg !1016
  %66 = icmp eq i16 %61, 2, !dbg !1017
  br i1 %66, label %67, label %71, !dbg !1019

; <label>:67:                                     ; preds = %52
  %68 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 0, i32 8, i32 0, !dbg !1020
  %69 = load i32, i32* %68, align 4, !dbg !1020, !tbaa !1021
  %70 = sext i32 %69 to i64, !dbg !1020
  call void @llvm.dbg.value(metadata i64 %70, metadata !867, metadata !DIExpression()) #11, !dbg !973
  br label %71, !dbg !1022

; <label>:71:                                     ; preds = %67, %52
  %72 = phi i64 [ %70, %67 ], [ %55, %52 ], !dbg !999
  call void @llvm.dbg.value(metadata i64 undef, metadata !864, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !970
  call void @llvm.dbg.value(metadata %struct.utmpx* %53, metadata !865, metadata !DIExpression(DW_OP_plus_uconst, 384, DW_OP_stack_value)) #11, !dbg !971
  call void @llvm.dbg.value(metadata i64 %65, metadata !866, metadata !DIExpression()) #11, !dbg !972
  call void @llvm.dbg.value(metadata i64 %72, metadata !867, metadata !DIExpression()) #11, !dbg !973
  call void @llvm.dbg.value(metadata i64 undef, metadata !864, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !970
  call void @llvm.dbg.value(metadata %struct.utmpx* %53, metadata !865, metadata !DIExpression(DW_OP_plus_uconst, 384, DW_OP_stack_value)) #11, !dbg !971
  call void @llvm.dbg.value(metadata i64 %65, metadata !866, metadata !DIExpression()) #11, !dbg !972
  call void @llvm.dbg.value(metadata i64 %72, metadata !867, metadata !DIExpression()) #11, !dbg !973
  %73 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 1, i32 4, i64 0, !dbg !1007
  %74 = load i8, i8* %73, align 4, !dbg !1007, !tbaa !1009
  %75 = icmp ne i8 %74, 0, !dbg !1007
  %76 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 1, i32 0
  %77 = load i16, i16* %76, align 4, !dbg !1010, !tbaa !1011
  %78 = icmp eq i16 %77, 7, !dbg !1007
  %79 = and i1 %75, %78, !dbg !1007
  %80 = zext i1 %79 to i64, !dbg !1007
  %81 = add i64 %65, %80, !dbg !1016
  %82 = icmp eq i16 %77, 2, !dbg !1017
  br i1 %82, label %197, label %201, !dbg !1019

; <label>:83:                                     ; preds = %201, %47
  %84 = phi i64 [ undef, %47 ], [ %202, %201 ]
  %85 = phi i64 [ undef, %47 ], [ %81, %201 ]
  %86 = phi %struct.utmpx* [ %19, %47 ], [ %203, %201 ]
  %87 = phi i64 [ 0, %47 ], [ %81, %201 ]
  %88 = phi i64 [ 0, %47 ], [ %202, %201 ]
  %89 = icmp eq i64 %48, 0, !dbg !1019
  br i1 %89, label %105, label %90, !dbg !1019

; <label>:90:                                     ; preds = %83
  call void @llvm.dbg.value(metadata %struct.utmpx* %86, metadata !865, metadata !DIExpression()) #11, !dbg !971
  call void @llvm.dbg.value(metadata i64 %87, metadata !866, metadata !DIExpression()) #11, !dbg !972
  call void @llvm.dbg.value(metadata i64 %88, metadata !867, metadata !DIExpression()) #11, !dbg !973
  %91 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %86, i64 0, i32 4, i64 0, !dbg !1007
  %92 = load i8, i8* %91, align 4, !dbg !1007, !tbaa !1009
  %93 = icmp ne i8 %92, 0, !dbg !1007
  %94 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %86, i64 0, i32 0
  %95 = load i16, i16* %94, align 4, !dbg !1010, !tbaa !1011
  %96 = icmp eq i16 %95, 7, !dbg !1007
  %97 = and i1 %93, %96, !dbg !1007
  %98 = zext i1 %97 to i64, !dbg !1007
  %99 = add i64 %87, %98, !dbg !1016
  %100 = icmp eq i16 %95, 2, !dbg !1017
  br i1 %100, label %101, label %105, !dbg !1019

; <label>:101:                                    ; preds = %90
  %102 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %86, i64 0, i32 8, i32 0, !dbg !1020
  %103 = load i32, i32* %102, align 4, !dbg !1020, !tbaa !1021
  %104 = sext i32 %103 to i64, !dbg !1020
  call void @llvm.dbg.value(metadata i64 %104, metadata !867, metadata !DIExpression()) #11, !dbg !973
  br label %105, !dbg !1022

; <label>:105:                                    ; preds = %83, %90, %101, %44
  %106 = phi i64 [ 0, %44 ], [ %84, %83 ], [ %104, %101 ], [ %88, %90 ], !dbg !1023
  %107 = phi i64 [ 0, %44 ], [ %85, %83 ], [ %99, %90 ], [ %99, %101 ], !dbg !1010
  call void @llvm.dbg.value(metadata i64 %106, metadata !867, metadata !DIExpression()) #11, !dbg !973
  call void @llvm.dbg.value(metadata i64 %107, metadata !866, metadata !DIExpression()) #11, !dbg !972
  %108 = call i64 @time(i64* null) #11, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %108, metadata !868, metadata !DIExpression()) #11, !dbg !1025
  store i64 %108, i64* %3, align 8, !dbg !1026, !tbaa !967
  %109 = icmp eq i64 %45, 0, !dbg !1027
  br i1 %109, label %110, label %118, !dbg !1029

; <label>:110:                                    ; preds = %105
  %111 = icmp eq i64 %106, 0, !dbg !1030
  br i1 %111, label %112, label %116, !dbg !1033

; <label>:112:                                    ; preds = %110
  %113 = tail call i32* @__errno_location() #17, !dbg !1034
  %114 = load i32, i32* %113, align 4, !dbg !1034, !tbaa !794
  %115 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #11, !dbg !1034
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %114, i8* %115) #11, !dbg !1034
  unreachable, !dbg !1034

; <label>:116:                                    ; preds = %110
  %117 = sub nsw i64 %108, %106, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %117, metadata !869, metadata !DIExpression()) #11, !dbg !975
  br label %118, !dbg !1036

; <label>:118:                                    ; preds = %116, %105
  %119 = phi i64 [ %117, %116 ], [ %45, %105 ], !dbg !1037
  call void @llvm.dbg.value(metadata i64 %119, metadata !869, metadata !DIExpression()) #11, !dbg !975
  %120 = sdiv i64 %119, 86400, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %120, metadata !870, metadata !DIExpression()) #11, !dbg !1039
  %121 = mul i64 %120, -86400, !dbg !1040
  %122 = add i64 %121, %119, !dbg !1040
  %123 = sdiv i64 %122, 3600, !dbg !1041
  %124 = trunc i64 %123 to i32, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %124, metadata !871, metadata !DIExpression()) #11, !dbg !1043
  %125 = mul i64 %123, 15461882265600, !dbg !1044
  %126 = ashr exact i64 %125, 32, !dbg !1044
  %127 = sub nsw i64 %122, %126, !dbg !1045
  %128 = sdiv i64 %127, 60, !dbg !1046
  %129 = trunc i64 %128 to i32, !dbg !1047
  call void @llvm.dbg.value(metadata i32 %129, metadata !872, metadata !DIExpression()) #11, !dbg !1048
  call void @llvm.dbg.value(metadata i64* %3, metadata !868, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1025
  %130 = call %struct.tm* @localtime(i64* nonnull %3) #11, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.tm* %130, metadata !873, metadata !DIExpression()) #11, !dbg !1050
  %131 = icmp eq %struct.tm* %130, null, !dbg !1051
  br i1 %131, label %136, label %132, !dbg !1053

; <label>:132:                                    ; preds = %118
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1054, !tbaa !726
  %134 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !1055
  %135 = call i64 @fprintftime(%struct._IO_FILE* %133, i8* %134, %struct.tm* nonnull %130, %struct.tm_zone* null, i32 0) #11, !dbg !1056
  br label %139, !dbg !1056

; <label>:136:                                    ; preds = %118
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !1057
  %138 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %137) #11, !dbg !1057
  br label %139

; <label>:139:                                    ; preds = %136, %132
  %140 = icmp eq i64 %119, -1, !dbg !1058
  br i1 %140, label %141, label %144, !dbg !1060

; <label>:141:                                    ; preds = %139
  %142 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !1061
  %143 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %142) #11, !dbg !1061
  br label %152, !dbg !1061

; <label>:144:                                    ; preds = %139
  %145 = icmp sgt i64 %119, 86399, !dbg !1062
  br i1 %145, label %146, label %149, !dbg !1065

; <label>:146:                                    ; preds = %144
  %147 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i64 %120, i32 5) #11, !dbg !1066
  %148 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %147, i64 %120, i32 %124, i32 %129) #11, !dbg !1066
  br label %152, !dbg !1066

; <label>:149:                                    ; preds = %144
  %150 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1067
  %151 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %150, i32 %124, i32 %129) #11, !dbg !1067
  br label %152

; <label>:152:                                    ; preds = %149, %146, %141
  %153 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i64 %107, i32 5) #11, !dbg !1068
  %154 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %153, i64 %107) #11, !dbg !1068
  %155 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0, !dbg !1069
  %156 = call i32 @getloadavg(double* nonnull %155, i32 3) #11, !dbg !1070
  call void @llvm.dbg.value(metadata i32 %156, metadata !889, metadata !DIExpression()) #11, !dbg !1071
  %157 = icmp eq i32 %156, -1, !dbg !1072
  br i1 %157, label %158, label %169, !dbg !1074

; <label>:158:                                    ; preds = %152
  call void @llvm.dbg.value(metadata i32 10, metadata !1075, metadata !DIExpression()) #11, !dbg !1081
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1083, !tbaa !726
  %160 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %159, i64 0, i32 5, !dbg !1083
  %161 = load i8*, i8** %160, align 8, !dbg !1083, !tbaa !1084
  %162 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %159, i64 0, i32 6, !dbg !1083
  %163 = load i8*, i8** %162, align 8, !dbg !1083, !tbaa !1086
  %164 = icmp ult i8* %161, %163, !dbg !1083
  br i1 %164, label %167, label %165, !dbg !1083, !prof !1087

; <label>:165:                                    ; preds = %158
  %166 = call i32 @__overflow(%struct._IO_FILE* %159, i32 10) #11, !dbg !1083
  br label %196, !dbg !1083

; <label>:167:                                    ; preds = %158
  %168 = getelementptr inbounds i8, i8* %161, i64 1, !dbg !1083
  store i8* %168, i8** %160, align 8, !dbg !1083, !tbaa !1084
  store i8 10, i8* %161, align 1, !dbg !1083, !tbaa !1009
  br label %196, !dbg !1083

; <label>:169:                                    ; preds = %152
  %170 = icmp sgt i32 %156, 0, !dbg !1088
  br i1 %170, label %171, label %196, !dbg !1091

; <label>:171:                                    ; preds = %169
  %172 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0), i32 5) #11, !dbg !1092
  %173 = load double, double* %155, align 16, !dbg !1092, !tbaa !1093
  %174 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %172, double %173) #11, !dbg !1092
  %175 = icmp eq i32 %156, 1, !dbg !1095
  br i1 %175, label %185, label %176, !dbg !1097

; <label>:176:                                    ; preds = %171
  %177 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1, !dbg !1098
  %178 = load double, double* %177, align 8, !dbg !1098, !tbaa !1093
  %179 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), double %178) #11, !dbg !1098
  %180 = icmp sgt i32 %156, 2, !dbg !1099
  br i1 %180, label %181, label %185, !dbg !1101

; <label>:181:                                    ; preds = %176
  %182 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2, !dbg !1102
  %183 = load double, double* %182, align 16, !dbg !1102, !tbaa !1093
  %184 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), double %183) #11, !dbg !1102
  br label %185, !dbg !1102

; <label>:185:                                    ; preds = %181, %176, %171
  call void @llvm.dbg.value(metadata i32 10, metadata !1075, metadata !DIExpression()) #11, !dbg !1103
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1106, !tbaa !726
  %187 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %186, i64 0, i32 5, !dbg !1106
  %188 = load i8*, i8** %187, align 8, !dbg !1106, !tbaa !1084
  %189 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %186, i64 0, i32 6, !dbg !1106
  %190 = load i8*, i8** %189, align 8, !dbg !1106, !tbaa !1086
  %191 = icmp ult i8* %188, %190, !dbg !1106
  br i1 %191, label %194, label %192, !dbg !1106, !prof !1087

; <label>:192:                                    ; preds = %185
  %193 = call i32 @__overflow(%struct._IO_FILE* %186, i32 10) #11, !dbg !1106
  br label %196, !dbg !1106

; <label>:194:                                    ; preds = %185
  %195 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !1106
  store i8* %195, i8** %187, align 8, !dbg !1106, !tbaa !1084
  store i8 10, i8* %188, align 1, !dbg !1106, !tbaa !1009
  br label %196, !dbg !1106

; <label>:196:                                    ; preds = %165, %167, %169, %192, %194
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %21) #11, !dbg !1107
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #11, !dbg !1107
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1108
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1108
  ret void, !dbg !1108

; <label>:197:                                    ; preds = %71
  %198 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 1, i32 8, i32 0, !dbg !1020
  %199 = load i32, i32* %198, align 4, !dbg !1020, !tbaa !1021
  %200 = sext i32 %199 to i64, !dbg !1020
  call void @llvm.dbg.value(metadata i64 %200, metadata !867, metadata !DIExpression()) #11, !dbg !973
  br label %201, !dbg !1022

; <label>:201:                                    ; preds = %197, %71
  %202 = phi i64 [ %200, %197 ], [ %72, %71 ], !dbg !999
  %203 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 2, !dbg !1109
  call void @llvm.dbg.value(metadata i64 undef, metadata !864, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !970
  call void @llvm.dbg.value(metadata %struct.utmpx* %203, metadata !865, metadata !DIExpression()) #11, !dbg !971
  call void @llvm.dbg.value(metadata i64 %81, metadata !866, metadata !DIExpression()) #11, !dbg !972
  call void @llvm.dbg.value(metadata i64 %202, metadata !867, metadata !DIExpression()) #11, !dbg !973
  call void @llvm.dbg.value(metadata i64 undef, metadata !864, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !970
  %204 = add i64 %56, -2, !dbg !1005
  %205 = icmp eq i64 %204, 0, !dbg !1005
  br i1 %205, label %83, label %52, !dbg !1005, !llvm.loop !1110
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @fgets_unlocked(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getloadavg(double*, i32) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @c_strtod(i8*, i8**) local_unnamed_addr #7 !dbg !1113 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1117, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8** %1, metadata !1118, metadata !DIExpression()), !dbg !1122
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1123, !tbaa !726
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !1123
  br i1 %4, label %5, label %7, !dbg !1129

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), %struct.__locale_struct* null) #11, !dbg !1130
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1131, !tbaa !726
  br label %7, !dbg !1132

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1133, !tbaa !726
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !1120, metadata !DIExpression()), !dbg !1134
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !1135
  br i1 %9, label %10, label %13, !dbg !1137

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !1138
  br i1 %11, label %15, label %12, !dbg !1141

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !1142, !tbaa !726
  br label %15, !dbg !1143

; <label>:13:                                     ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #11, !dbg !1144
  call void @llvm.dbg.value(metadata double %14, metadata !1119, metadata !DIExpression()), !dbg !1145
  br label %15, !dbg !1146

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %12 ], !dbg !1147
  ret double %16, !dbg !1148
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1149 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1151, metadata !DIExpression()), !dbg !1152
  store i8* %0, i8** @file_name, align 8, !dbg !1153, !tbaa !726
  ret void, !dbg !1154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1155 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1159, metadata !DIExpression()), !dbg !1160
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1161, !tbaa !1162
  ret void, !dbg !1164
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1165 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1172, !tbaa !726
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1173
  %3 = icmp eq i32 %2, 0, !dbg !1174
  br i1 %3, label %22, label %4, !dbg !1175

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1176, !tbaa !1162, !range !1177
  %6 = icmp eq i8 %5, 0, !dbg !1176
  br i1 %6, label %11, label %7, !dbg !1178

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1179
  %9 = load i32, i32* %8, align 4, !dbg !1179, !tbaa !794
  %10 = icmp eq i32 %9, 32, !dbg !1180
  br i1 %10, label %22, label %11, !dbg !1181

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1182
  call void @llvm.dbg.value(metadata i8* %12, metadata !1169, metadata !DIExpression()), !dbg !1183
  %13 = load i8*, i8** @file_name, align 8, !dbg !1184, !tbaa !726
  %14 = icmp eq i8* %13, null, !dbg !1184
  %15 = tail call i32* @__errno_location() #17, !dbg !1186
  %16 = load i32, i32* %15, align 4, !dbg !1186, !tbaa !794
  br i1 %14, label %19, label %17, !dbg !1187

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1188
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.54, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1189
  br label %20, !dbg !1189

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.55, i64 0, i64 0), i8* %12) #11, !dbg !1190
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1191, !tbaa !794
  tail call void @_exit(i32 %21) #15, !dbg !1192
  unreachable, !dbg !1192

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1193, !tbaa !726
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1195
  %25 = icmp eq i32 %24, 0, !dbg !1196
  br i1 %25, label %28, label %26, !dbg !1197

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1198, !tbaa !794
  tail call void @_exit(i32 %27) #15, !dbg !1199
  unreachable, !dbg !1199

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1200
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @fprintftime(%struct._IO_FILE*, i8*, %struct.tm*, %struct.tm_zone*, i32) local_unnamed_addr #7 !dbg !1201 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1262, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i8* %1, metadata !1263, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata %struct.tm* %2, metadata !1264, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata %struct.tm_zone* %3, metadata !1265, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32 %4, metadata !1266, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 0, metadata !1267, metadata !DIExpression()), !dbg !1272
  %6 = tail call fastcc i64 @__strftime_internal(%struct._IO_FILE* %0, i8* %1, %struct.tm* %2, i1 zeroext false, %struct.tm_zone* %3, i32 %4), !dbg !1273
  ret i64 %6, !dbg !1274
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @__strftime_internal(%struct._IO_FILE*, i8*, %struct.tm*, i1 zeroext, %struct.tm_zone*, i32) unnamed_addr #7 !dbg !1275 {
  %7 = alloca [23 x i8], align 16
  %8 = alloca [5 x i8], align 1
  %9 = alloca [1024 x i8], align 16
  %10 = alloca %struct.tm, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1280, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8* %1, metadata !1281, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata %struct.tm* %2, metadata !1282, metadata !DIExpression()), !dbg !1567
  %11 = zext i1 %3 to i8
  call void @llvm.dbg.value(metadata i1 %3, metadata !1283, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8* null, metadata !1284, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata %struct.tm_zone* %4, metadata !1285, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i32 %5, metadata !1286, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64 -1, metadata !1287, metadata !DIExpression()), !dbg !1571
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 2, !dbg !1572
  %13 = load i32, i32* %12, align 8, !dbg !1572, !tbaa !1573
  call void @llvm.dbg.value(metadata i32 %13, metadata !1288, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1291, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* null, metadata !1289, metadata !DIExpression()), !dbg !1578
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 10, !dbg !1579
  %15 = load i8*, i8** %14, align 8, !dbg !1579, !tbaa !1580
  call void @llvm.dbg.value(metadata i8* %15, metadata !1289, metadata !DIExpression()), !dbg !1578
  %16 = icmp eq i8* %15, null, !dbg !1581
  %17 = select i1 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.60, i64 0, i64 0), i8* %15, !dbg !1583
  call void @llvm.dbg.value(metadata i8* %17, metadata !1289, metadata !DIExpression()), !dbg !1578
  %18 = icmp sgt i32 %13, 12, !dbg !1584
  %19 = add nsw i32 %13, -12, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %19, metadata !1288, metadata !DIExpression()), !dbg !1575
  %20 = icmp eq i32 %13, 0, !dbg !1587
  %21 = select i1 %20, i32 12, i32 %13, !dbg !1589
  %22 = select i1 %18, i32 %19, i32 %21, !dbg !1590
  call void @llvm.dbg.value(metadata i32 %22, metadata !1288, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8* %1, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 undef, metadata !1300, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 undef, metadata !1301, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 undef, metadata !1303, metadata !DIExpression()), !dbg !1595
  %23 = load i8, i8* %1, align 1, !dbg !1596, !tbaa !1009
  %24 = icmp eq i8 %23, 0, !dbg !1597
  br i1 %24, label %1082, label %25, !dbg !1598

; <label>:25:                                     ; preds = %6
  %26 = getelementptr inbounds [23 x i8], [23 x i8]* %7, i64 0, i64 0
  %27 = icmp eq %struct._IO_FILE* %0, null
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2
  %32 = getelementptr inbounds [23 x i8], [23 x i8]* %7, i64 0, i64 23
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 4
  %34 = bitcast %struct.tm* %10 to i8*
  %35 = bitcast %struct.tm* %2 to i8*
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 6
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 8
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 5
  %40 = ptrtoint i8* %32 to i64
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 3
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 7
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 1
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 0
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 9
  %46 = icmp ne %struct._IO_FILE* %0, null
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 1
  br label %48, !dbg !1598

; <label>:48:                                     ; preds = %25, %1076
  %49 = phi i8 [ %23, %25 ], [ %1080, %1076 ], !dbg !1599
  %50 = phi i64 [ 0, %25 ], [ %1078, %1076 ]
  %51 = phi i8* [ %1, %25 ], [ %1079, %1076 ]
  call void @llvm.dbg.value(metadata i64 %50, metadata !1290, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %51, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 0, metadata !1293, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 0, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.lifetime.start.p0i8(i64 23, i8* nonnull %26) #11, !dbg !1602
  call void @llvm.dbg.declare(metadata [23 x i8]* %7, metadata !1307, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 -1, metadata !1311, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 0, metadata !1312, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %11, metadata !1313, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8 0, metadata !1315, metadata !DIExpression()), !dbg !1607
  %52 = icmp eq i8 %49, 37, !dbg !1608
  br i1 %52, label %72, label %53, !dbg !1609

; <label>:53:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i64 1, metadata !1317, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i64 0, metadata !1321, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i64 1, metadata !1322, metadata !DIExpression()), !dbg !1610
  %54 = icmp ugt i64 %50, -3, !dbg !1611
  br i1 %54, label %1075, label %55, !dbg !1610

; <label>:55:                                     ; preds = %53
  br i1 %27, label %59, label %56, !dbg !1610

; <label>:56:                                     ; preds = %55
  %57 = sext i8 %49 to i32, !dbg !1613
  %58 = call i32 @fputc(i32 %57, %struct._IO_FILE* nonnull %0), !dbg !1613
  br label %59, !dbg !1613

; <label>:59:                                     ; preds = %56, %55
  %60 = add i64 %50, 1, !dbg !1610
  call void @llvm.dbg.value(metadata i64 %60, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %1076

; <label>:61:                                     ; preds = %67, %68
  %62 = phi i32 [ %70, %68 ], [ %66, %67 ], !dbg !1614
  %63 = phi i8* [ %71, %68 ], [ %64, %67 ], !dbg !1617
  call void @llvm.dbg.value(metadata i8* %63, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %62, metadata !1293, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i8 %69, metadata !1313, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8 %73, metadata !1315, metadata !DIExpression()), !dbg !1607
  %64 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !1618
  call void @llvm.dbg.value(metadata i8* %64, metadata !1292, metadata !DIExpression()), !dbg !1591
  %65 = load i8, i8* %64, align 1, !dbg !1619, !tbaa !1009
  %66 = sext i8 %65 to i32, !dbg !1619
  switch i32 %66, label %77 [
    i32 95, label %67
    i32 45, label %67
    i32 48, label %67
    i32 94, label %68
    i32 35, label %72
  ], !dbg !1620

; <label>:67:                                     ; preds = %61, %61, %61
  br label %61, !dbg !1591, !llvm.loop !1621

; <label>:68:                                     ; preds = %61, %72
  %69 = phi i8 [ %74, %72 ], [ 1, %61 ]
  %70 = phi i32 [ %75, %72 ], [ %62, %61 ]
  %71 = phi i8* [ %76, %72 ], [ %64, %61 ]
  br label %61, !dbg !1618

; <label>:72:                                     ; preds = %61, %48
  %73 = phi i8 [ 0, %48 ], [ 1, %61 ]
  %74 = phi i8 [ %11, %48 ], [ %69, %61 ]
  %75 = phi i32 [ 0, %48 ], [ %62, %61 ]
  %76 = phi i8* [ %51, %48 ], [ %64, %61 ]
  br label %68, !dbg !1618

; <label>:77:                                     ; preds = %61
  call void @llvm.dbg.value(metadata i32 %62, metadata !1293, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %62, metadata !1293, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %62, metadata !1293, metadata !DIExpression()), !dbg !1600
  %78 = sext i8 %65 to i32, !dbg !1619
  call void @llvm.dbg.value(metadata i32 %62, metadata !1293, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %62, metadata !1293, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %62, metadata !1293, metadata !DIExpression()), !dbg !1600
  %79 = add nsw i32 %78, -48, !dbg !1624
  %80 = icmp ult i32 %79, 10, !dbg !1624
  br i1 %80, label %81, label %104, !dbg !1626

; <label>:81:                                     ; preds = %77, %95
  %82 = phi i8 [ %98, %95 ], [ %65, %77 ]
  %83 = phi i32 [ %96, %95 ], [ 0, %77 ], !dbg !1627
  %84 = phi i8* [ %97, %95 ], [ %64, %77 ], !dbg !1631
  call void @llvm.dbg.value(metadata i8* %84, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %83, metadata !1311, metadata !DIExpression()), !dbg !1604
  %85 = icmp sgt i32 %83, 214748364, !dbg !1632
  br i1 %85, label %95, label %86, !dbg !1633

; <label>:86:                                     ; preds = %81
  %87 = icmp eq i32 %83, 214748364, !dbg !1634
  %88 = icmp sgt i8 %82, 55, !dbg !1635
  %89 = and i1 %87, %88, !dbg !1636
  br i1 %89, label %95, label %90, !dbg !1636

; <label>:90:                                     ; preds = %86
  %91 = mul nsw i32 %83, 10, !dbg !1637
  call void @llvm.dbg.value(metadata i32 %91, metadata !1311, metadata !DIExpression()), !dbg !1604
  %92 = sext i8 %82 to i32, !dbg !1639
  %93 = add i32 %91, -48, !dbg !1640
  %94 = add i32 %93, %92, !dbg !1641
  call void @llvm.dbg.value(metadata i32 %94, metadata !1311, metadata !DIExpression()), !dbg !1604
  br label %95

; <label>:95:                                     ; preds = %86, %81, %90
  %96 = phi i32 [ %94, %90 ], [ 2147483647, %81 ], [ 2147483647, %86 ], !dbg !1642
  call void @llvm.dbg.value(metadata i32 %96, metadata !1311, metadata !DIExpression()), !dbg !1604
  %97 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !1643
  call void @llvm.dbg.value(metadata i8* %97, metadata !1292, metadata !DIExpression()), !dbg !1591
  %98 = load i8, i8* %97, align 1, !dbg !1644, !tbaa !1009
  %99 = sext i8 %98 to i32, !dbg !1644
  %100 = add nsw i32 %99, -48, !dbg !1644
  %101 = icmp ult i32 %100, 10, !dbg !1644
  br i1 %101, label %81, label %102, !dbg !1645, !llvm.loop !1646

; <label>:102:                                    ; preds = %95
  call void @llvm.dbg.value(metadata i32 %96, metadata !1311, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %96, metadata !1311, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %96, metadata !1311, metadata !DIExpression()), !dbg !1604
  %103 = sext i8 %98 to i32, !dbg !1644
  call void @llvm.dbg.value(metadata i32 %96, metadata !1311, metadata !DIExpression()), !dbg !1604
  br label %104, !dbg !1649

; <label>:104:                                    ; preds = %102, %77
  %105 = phi i32 [ %78, %77 ], [ %103, %102 ], !dbg !1650
  %106 = phi i8 [ %65, %77 ], [ %98, %102 ], !dbg !1650
  %107 = phi i32 [ -1, %77 ], [ %96, %102 ], !dbg !1651
  %108 = phi i8* [ %64, %77 ], [ %97, %102 ], !dbg !1617
  call void @llvm.dbg.value(metadata i8* %108, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %107, metadata !1311, metadata !DIExpression()), !dbg !1604
  switch i32 %105, label %112 [
    i32 69, label %109
    i32 79, label %109
  ], !dbg !1649

; <label>:109:                                    ; preds = %104, %104
  %110 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !1652
  call void @llvm.dbg.value(metadata i8* %110, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %105, metadata !1297, metadata !DIExpression()), !dbg !1654
  %111 = load i8, i8* %110, align 1, !dbg !1655, !tbaa !1009
  br label %112, !dbg !1656

; <label>:112:                                    ; preds = %104, %109
  %113 = phi i8 [ %111, %109 ], [ %106, %104 ], !dbg !1655
  %114 = phi i32 [ %105, %109 ], [ 0, %104 ], !dbg !1657
  %115 = phi i8* [ %110, %109 ], [ %108, %104 ], !dbg !1657
  call void @llvm.dbg.value(metadata i8* %115, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %114, metadata !1297, metadata !DIExpression()), !dbg !1654
  %116 = sext i8 %113 to i32, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %116, metadata !1316, metadata !DIExpression()), !dbg !1658
  switch i32 %116, label %1013 [
    i32 37, label %117
    i32 97, label %152
    i32 65, label %157
    i32 98, label %162
    i32 104, label %162
    i32 66, label %166
    i32 99, label %171
    i32 67, label %297
    i32 120, label %311
    i32 68, label %313
    i32 100, label %315
    i32 101, label %319
    i32 70, label %629
    i32 72, label %631
    i32 73, label %635
    i32 107, label %637
    i32 108, label %641
    i32 106, label %643
    i32 77, label %650
    i32 109, label %654
    i32 78, label %661
    i32 110, label %673
    i32 80, label %704
    i32 112, label %705
    i32 113, label %711
    i32 82, label %173
    i32 114, label %207
    i32 83, label %716
    i32 115, label %720
    i32 88, label %741
    i32 84, label %743
    i32 116, label %744
    i32 117, label %775
    i32 85, label %780
    i32 86, label %788
    i32 103, label %788
    i32 71, label %788
    i32 87, label %867
    i32 119, label %877
    i32 89, label %881
    i32 121, label %888
    i32 90, label %899
    i32 58, label %967
    i32 122, label %975
    i32 0, label %1011
  ], !dbg !1659

; <label>:117:                                    ; preds = %112
  %118 = icmp eq i32 %114, 0, !dbg !1660
  br i1 %118, label %119, label %1013, !dbg !1662

; <label>:119:                                    ; preds = %117
  call void @llvm.dbg.value(metadata i64 1, metadata !1333, metadata !DIExpression()), !dbg !1663
  %120 = icmp sgt i32 %107, 0, !dbg !1663
  %121 = select i1 %120, i32 %107, i32 0, !dbg !1663
  %122 = icmp ugt i32 %121, 1, !dbg !1663
  %123 = select i1 %122, i32 %121, i32 1, !dbg !1663
  %124 = zext i32 %123 to i64, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1663
  %125 = xor i64 %50, -1, !dbg !1664
  %126 = icmp ult i64 %124, %125, !dbg !1664
  br i1 %126, label %127, label %1075, !dbg !1663

; <label>:127:                                    ; preds = %119
  br i1 %27, label %150, label %128, !dbg !1663

; <label>:128:                                    ; preds = %127
  br i1 %122, label %129, label %146, !dbg !1666

; <label>:129:                                    ; preds = %128
  %130 = sext i32 %107 to i64, !dbg !1667
  %131 = add nsw i64 %130, -1, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %131, metadata !1338, metadata !DIExpression()), !dbg !1667
  %132 = icmp eq i32 %62, 48, !dbg !1668
  %133 = icmp ne i64 %131, 0, !dbg !1669
  br i1 %132, label %135, label %134, !dbg !1667

; <label>:134:                                    ; preds = %129
  call void @llvm.dbg.value(metadata i64 0, metadata !1346, metadata !DIExpression()), !dbg !1672
  br i1 %133, label %141, label %146, !dbg !1673

; <label>:135:                                    ; preds = %129
  call void @llvm.dbg.value(metadata i64 0, metadata !1343, metadata !DIExpression()), !dbg !1675
  br i1 %133, label %136, label %146, !dbg !1676

; <label>:136:                                    ; preds = %135, %136
  %137 = phi i64 [ %139, %136 ], [ 0, %135 ]
  call void @llvm.dbg.value(metadata i64 %137, metadata !1343, metadata !DIExpression()), !dbg !1675
  %138 = call i32 @fputc(i32 48, %struct._IO_FILE* %0), !dbg !1669
  %139 = add nuw i64 %137, 1, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %139, metadata !1343, metadata !DIExpression()), !dbg !1675
  %140 = icmp eq i64 %139, %131, !dbg !1669
  br i1 %140, label %146, label %136, !dbg !1676, !llvm.loop !1677

; <label>:141:                                    ; preds = %134, %141
  %142 = phi i64 [ %144, %141 ], [ 0, %134 ]
  call void @llvm.dbg.value(metadata i64 %142, metadata !1346, metadata !DIExpression()), !dbg !1672
  %143 = call i32 @fputc(i32 32, %struct._IO_FILE* %0), !dbg !1678
  %144 = add nuw i64 %142, 1, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %144, metadata !1346, metadata !DIExpression()), !dbg !1672
  %145 = icmp eq i64 %144, %131, !dbg !1678
  br i1 %145, label %146, label %141, !dbg !1673, !llvm.loop !1680

; <label>:146:                                    ; preds = %141, %136, %134, %135, %128
  %147 = load i8, i8* %115, align 1, !dbg !1666, !tbaa !1009
  %148 = sext i8 %147 to i32, !dbg !1666
  %149 = call i32 @fputc(i32 %148, %struct._IO_FILE* %0), !dbg !1666
  br label %150, !dbg !1666

; <label>:150:                                    ; preds = %146, %127
  %151 = add i64 %50, %124, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %151, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %1076

; <label>:152:                                    ; preds = %112
  %153 = icmp eq i32 %114, 0, !dbg !1681
  br i1 %153, label %154, label %1013, !dbg !1683

; <label>:154:                                    ; preds = %152
  %155 = icmp eq i8 %73, 0, !dbg !1684
  %156 = select i1 %155, i8 %69, i8 1, !dbg !1686
  br label %207, !dbg !1686

; <label>:157:                                    ; preds = %112
  %158 = icmp eq i32 %114, 0, !dbg !1687
  br i1 %158, label %159, label %1013, !dbg !1689

; <label>:159:                                    ; preds = %157
  %160 = icmp eq i8 %73, 0, !dbg !1690
  %161 = select i1 %160, i8 %69, i8 1, !dbg !1692
  br label %207, !dbg !1692

; <label>:162:                                    ; preds = %112, %112
  %163 = icmp eq i8 %73, 0, !dbg !1693
  %164 = select i1 %163, i8 %69, i8 1, !dbg !1695
  call void @llvm.dbg.value(metadata i8 0, metadata !1312, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %164, metadata !1313, metadata !DIExpression()), !dbg !1606
  %165 = icmp eq i32 %114, 69, !dbg !1696
  br i1 %165, label %1013, label %207, !dbg !1698

; <label>:166:                                    ; preds = %112
  %167 = icmp eq i32 %114, 69, !dbg !1699
  br i1 %167, label %1013, label %168, !dbg !1701

; <label>:168:                                    ; preds = %166
  %169 = icmp eq i8 %73, 0, !dbg !1702
  %170 = select i1 %169, i8 %69, i8 1, !dbg !1704
  br label %207, !dbg !1704

; <label>:171:                                    ; preds = %112
  %172 = icmp eq i32 %114, 79, !dbg !1705
  br i1 %172, label %1013, label %207, !dbg !1707

; <label>:173:                                    ; preds = %112, %629, %313, %743
  %174 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.61, i64 0, i64 0), %743 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.62, i64 0, i64 0), %313 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.63, i64 0, i64 0), %629 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.64, i64 0, i64 0), %112 ], !dbg !1708
  call void @llvm.dbg.value(metadata i8* %174, metadata !1304, metadata !DIExpression()), !dbg !1709
  %175 = icmp ne i8 %69, 0, !dbg !1710
  %176 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* null, i8* nonnull %174, %struct.tm* %2, i1 zeroext %175, %struct.tm_zone* %4, i32 %5), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %176, metadata !1348, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i64 %176, metadata !1350, metadata !DIExpression()), !dbg !1713
  %177 = icmp sgt i32 %107, 0, !dbg !1713
  %178 = select i1 %177, i32 %107, i32 0, !dbg !1713
  %179 = zext i32 %178 to i64, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %179, metadata !1352, metadata !DIExpression()), !dbg !1713
  %180 = icmp ult i64 %176, %179, !dbg !1713
  %181 = select i1 %180, i64 %179, i64 %176, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %181, metadata !1353, metadata !DIExpression()), !dbg !1713
  %182 = xor i64 %50, -1, !dbg !1714
  %183 = icmp ult i64 %181, %182, !dbg !1714
  br i1 %183, label %184, label %1075, !dbg !1713

; <label>:184:                                    ; preds = %173
  br i1 %27, label %205, label %185, !dbg !1713

; <label>:185:                                    ; preds = %184
  br i1 %180, label %186, label %203, !dbg !1716

; <label>:186:                                    ; preds = %185
  %187 = sext i32 %107 to i64, !dbg !1717
  %188 = sub i64 %187, %176, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %188, metadata !1354, metadata !DIExpression()), !dbg !1717
  %189 = icmp eq i32 %62, 48, !dbg !1718
  %190 = icmp ne i64 %188, 0, !dbg !1719
  br i1 %189, label %192, label %191, !dbg !1717

; <label>:191:                                    ; preds = %186
  call void @llvm.dbg.value(metadata i64 0, metadata !1362, metadata !DIExpression()), !dbg !1722
  br i1 %190, label %198, label %203, !dbg !1723

; <label>:192:                                    ; preds = %186
  call void @llvm.dbg.value(metadata i64 0, metadata !1359, metadata !DIExpression()), !dbg !1725
  br i1 %190, label %193, label %203, !dbg !1726

; <label>:193:                                    ; preds = %192, %193
  %194 = phi i64 [ %196, %193 ], [ 0, %192 ]
  call void @llvm.dbg.value(metadata i64 %194, metadata !1359, metadata !DIExpression()), !dbg !1725
  %195 = call i32 @fputc(i32 48, %struct._IO_FILE* %0), !dbg !1719
  %196 = add nuw i64 %194, 1, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %196, metadata !1359, metadata !DIExpression()), !dbg !1725
  %197 = icmp eq i64 %196, %188, !dbg !1719
  br i1 %197, label %203, label %193, !dbg !1726, !llvm.loop !1727

; <label>:198:                                    ; preds = %191, %198
  %199 = phi i64 [ %201, %198 ], [ 0, %191 ]
  call void @llvm.dbg.value(metadata i64 %199, metadata !1362, metadata !DIExpression()), !dbg !1722
  %200 = call i32 @fputc(i32 32, %struct._IO_FILE* %0), !dbg !1728
  %201 = add nuw i64 %199, 1, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %201, metadata !1362, metadata !DIExpression()), !dbg !1722
  %202 = icmp eq i64 %201, %188, !dbg !1728
  br i1 %202, label %203, label %198, !dbg !1723, !llvm.loop !1730

; <label>:203:                                    ; preds = %198, %193, %191, %192, %185
  %204 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* %0, i8* %174, %struct.tm* %2, i1 zeroext %175, %struct.tm_zone* %4, i32 %5), !dbg !1716
  br label %205, !dbg !1716

; <label>:205:                                    ; preds = %203, %184
  %206 = add i64 %181, %50, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %206, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %1076

; <label>:207:                                    ; preds = %705, %168, %159, %154, %881, %333, %888, %741, %112, %311, %297, %171, %162
  %208 = phi i8 [ 121, %888 ], [ 89, %881 ], [ 88, %741 ], [ 114, %112 ], [ 120, %311 ], [ 67, %297 ], [ 99, %171 ], [ %113, %162 ], [ 97, %154 ], [ 65, %159 ], [ 66, %168 ], [ %113, %333 ], [ 112, %705 ], !dbg !1731
  %209 = phi i8 [ %69, %888 ], [ %69, %881 ], [ %69, %741 ], [ %69, %112 ], [ %69, %311 ], [ %69, %297 ], [ %69, %171 ], [ %164, %162 ], [ %156, %154 ], [ %161, %159 ], [ %170, %168 ], [ %69, %333 ], [ %708, %705 ], !dbg !1651
  %210 = phi i1 [ false, %888 ], [ false, %881 ], [ false, %741 ], [ false, %112 ], [ false, %311 ], [ false, %297 ], [ false, %171 ], [ false, %162 ], [ false, %154 ], [ false, %159 ], [ false, %168 ], [ false, %333 ], [ %710, %705 ], !dbg !1651
  %211 = phi i32 [ %107, %888 ], [ %107, %881 ], [ %107, %741 ], [ %107, %112 ], [ %107, %311 ], [ %107, %297 ], [ %107, %171 ], [ %107, %162 ], [ %107, %154 ], [ %107, %159 ], [ %107, %168 ], [ %334, %333 ], [ %107, %705 ], !dbg !1732
  %212 = phi i32 [ 0, %888 ], [ 0, %881 ], [ 0, %741 ], [ 0, %112 ], [ 0, %311 ], [ 0, %297 ], [ 0, %171 ], [ 0, %162 ], [ 0, %154 ], [ 0, %159 ], [ 0, %168 ], [ %339, %333 ], [ 0, %705 ], !dbg !1601
  %213 = phi i32 [ %62, %888 ], [ %62, %881 ], [ %62, %741 ], [ %62, %112 ], [ %62, %311 ], [ %62, %297 ], [ %62, %171 ], [ %62, %162 ], [ %62, %154 ], [ %62, %159 ], [ %62, %168 ], [ %340, %333 ], [ %62, %705 ], !dbg !1600
  %214 = phi i8* [ %115, %888 ], [ %115, %881 ], [ %115, %741 ], [ %115, %112 ], [ %115, %311 ], [ %115, %297 ], [ %115, %171 ], [ %115, %162 ], [ %115, %154 ], [ %115, %159 ], [ %115, %168 ], [ %341, %333 ], [ %115, %705 ], !dbg !1643
  call void @llvm.dbg.value(metadata i8* %214, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %213, metadata !1293, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %212, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %211, metadata !1311, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 %209, metadata !1313, metadata !DIExpression()), !dbg !1606
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %28) #11, !dbg !1733
  call void @llvm.dbg.declare(metadata [5 x i8]* %8, metadata !1364, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8* %28, metadata !1369, metadata !DIExpression()), !dbg !1735
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %29) #11, !dbg !1736
  call void @llvm.dbg.declare(metadata [1024 x i8]* %9, metadata !1370, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8* %30, metadata !1369, metadata !DIExpression()), !dbg !1735
  store i8 32, i8* %28, align 1, !dbg !1738, !tbaa !1009
  call void @llvm.dbg.value(metadata i8* %31, metadata !1369, metadata !DIExpression()), !dbg !1735
  store i8 37, i8* %30, align 1, !dbg !1739, !tbaa !1009
  %215 = icmp eq i32 %114, 0, !dbg !1740
  br i1 %215, label %218, label %216, !dbg !1742

; <label>:216:                                    ; preds = %207
  %217 = trunc i32 %114 to i8, !dbg !1743
  call void @llvm.dbg.value(metadata i8* %38, metadata !1369, metadata !DIExpression()), !dbg !1735
  store i8 %217, i8* %31, align 1, !dbg !1744, !tbaa !1009
  br label %218, !dbg !1745

; <label>:218:                                    ; preds = %207, %216
  %219 = phi i8* [ %38, %216 ], [ %31, %207 ], !dbg !1746
  call void @llvm.dbg.value(metadata i8* %219, metadata !1369, metadata !DIExpression()), !dbg !1735
  %220 = getelementptr inbounds i8, i8* %219, i64 1, !dbg !1747
  call void @llvm.dbg.value(metadata i8* %220, metadata !1369, metadata !DIExpression()), !dbg !1735
  store i8 %208, i8* %219, align 1, !dbg !1748, !tbaa !1009
  store i8 0, i8* %220, align 1, !dbg !1749, !tbaa !1009
  %221 = call i64 @strftime(i8* nonnull %29, i64 1024, i8* nonnull %28, %struct.tm* %2) #11, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %221, metadata !1374, metadata !DIExpression()), !dbg !1751
  %222 = icmp eq i64 %221, 0, !dbg !1752
  br i1 %222, label %294, label %223, !dbg !1753

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, -1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %224, metadata !1375, metadata !DIExpression()), !dbg !1754
  %225 = icmp sgt i32 %211, 0, !dbg !1754
  %226 = select i1 %225, i32 %211, i32 0, !dbg !1754
  %227 = zext i32 %226 to i64, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %227, metadata !1378, metadata !DIExpression()), !dbg !1754
  %228 = icmp ult i64 %224, %227, !dbg !1754
  %229 = select i1 %228, i64 %227, i64 %224, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %229, metadata !1379, metadata !DIExpression()), !dbg !1754
  %230 = xor i64 %50, -1, !dbg !1755
  %231 = icmp ult i64 %229, %230, !dbg !1755
  br i1 %231, label %232, label %296, !dbg !1754

; <label>:232:                                    ; preds = %223
  br i1 %27, label %292, label %233, !dbg !1754

; <label>:233:                                    ; preds = %232
  %234 = icmp ne i32 %212, 0, !dbg !1757
  %235 = xor i1 %228, true, !dbg !1757
  %236 = or i1 %234, %235, !dbg !1757
  br i1 %236, label %254, label %237, !dbg !1757

; <label>:237:                                    ; preds = %233
  %238 = sext i32 %211 to i64, !dbg !1758
  %239 = sub i64 %238, %224, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %239, metadata !1380, metadata !DIExpression()), !dbg !1758
  %240 = icmp eq i32 %213, 48, !dbg !1759
  %241 = icmp ne i64 %239, 0, !dbg !1760
  br i1 %240, label %243, label %242, !dbg !1758

; <label>:242:                                    ; preds = %237
  call void @llvm.dbg.value(metadata i64 0, metadata !1388, metadata !DIExpression()), !dbg !1763
  br i1 %241, label %249, label %254, !dbg !1764

; <label>:243:                                    ; preds = %237
  call void @llvm.dbg.value(metadata i64 0, metadata !1385, metadata !DIExpression()), !dbg !1766
  br i1 %241, label %244, label %254, !dbg !1767

; <label>:244:                                    ; preds = %243, %244
  %245 = phi i64 [ %247, %244 ], [ 0, %243 ]
  call void @llvm.dbg.value(metadata i64 %245, metadata !1385, metadata !DIExpression()), !dbg !1766
  %246 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !1760
  %247 = add nuw i64 %245, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %247, metadata !1385, metadata !DIExpression()), !dbg !1766
  %248 = icmp eq i64 %247, %239, !dbg !1760
  br i1 %248, label %254, label %244, !dbg !1767, !llvm.loop !1768

; <label>:249:                                    ; preds = %242, %249
  %250 = phi i64 [ %252, %249 ], [ 0, %242 ]
  call void @llvm.dbg.value(metadata i64 %250, metadata !1388, metadata !DIExpression()), !dbg !1763
  %251 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !1769
  %252 = add nuw i64 %250, 1, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %252, metadata !1388, metadata !DIExpression()), !dbg !1763
  %253 = icmp eq i64 %252, %239, !dbg !1769
  br i1 %253, label %254, label %249, !dbg !1764, !llvm.loop !1771

; <label>:254:                                    ; preds = %249, %244, %242, %243, %233
  br i1 %210, label %255, label %271, !dbg !1772

; <label>:255:                                    ; preds = %254
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1774, metadata !DIExpression()) #11, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %224, metadata !1780, metadata !DIExpression()) #11, !dbg !1787
  %256 = icmp eq i64 %224, 0, !dbg !1788
  br i1 %256, label %292, label %257, !dbg !1789

; <label>:257:                                    ; preds = %255
  call void @llvm.dbg.value(metadata i8* %47, metadata !1779, metadata !DIExpression()) #11, !dbg !1790
  %258 = tail call i32** @__ctype_tolower_loc() #17, !dbg !1791
  br label %259, !dbg !1789

; <label>:259:                                    ; preds = %259, %257
  %260 = phi i8* [ %47, %257 ], [ %269, %259 ]
  %261 = phi i64 [ %224, %257 ], [ %262, %259 ]
  call void @llvm.dbg.value(metadata i8* %260, metadata !1779, metadata !DIExpression()) #11, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %261, metadata !1780, metadata !DIExpression()) #11, !dbg !1787
  %262 = add i64 %261, -1, !dbg !1793
  %263 = load i32*, i32** %258, align 8, !dbg !1791, !tbaa !726
  %264 = load i8, i8* %260, align 1, !dbg !1791, !tbaa !1009
  %265 = zext i8 %264 to i64, !dbg !1791
  %266 = getelementptr inbounds i32, i32* %263, i64 %265, !dbg !1791
  %267 = load i32, i32* %266, align 4, !dbg !1791, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %267, metadata !1781, metadata !DIExpression()) #11, !dbg !1794
  %268 = call i32 @fputc(i32 %267, %struct._IO_FILE* %0) #11, !dbg !1795
  %269 = getelementptr inbounds i8, i8* %260, i64 1, !dbg !1796
  call void @llvm.dbg.value(metadata i8* %269, metadata !1779, metadata !DIExpression()) #11, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %262, metadata !1780, metadata !DIExpression()) #11, !dbg !1787
  %270 = icmp eq i64 %262, 0, !dbg !1788
  br i1 %270, label %292, label %259, !dbg !1789, !llvm.loop !1797

; <label>:271:                                    ; preds = %254
  %272 = and i8 %209, 1, !dbg !1800
  %273 = icmp eq i8 %272, 0, !dbg !1800
  br i1 %273, label %290, label %274, !dbg !1802

; <label>:274:                                    ; preds = %271
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1803, metadata !DIExpression()) #11, !dbg !1811
  call void @llvm.dbg.value(metadata i8* %47, metadata !1806, metadata !DIExpression()) #11, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %224, metadata !1807, metadata !DIExpression()) #11, !dbg !1814
  %275 = icmp eq i64 %224, 0, !dbg !1815
  br i1 %275, label %292, label %276, !dbg !1816

; <label>:276:                                    ; preds = %274
  %277 = tail call i32** @__ctype_toupper_loc() #17, !dbg !1817
  br label %278, !dbg !1816

; <label>:278:                                    ; preds = %278, %276
  %279 = phi i8* [ %47, %276 ], [ %288, %278 ]
  %280 = phi i64 [ %224, %276 ], [ %281, %278 ]
  call void @llvm.dbg.value(metadata i8* %279, metadata !1806, metadata !DIExpression()) #11, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %280, metadata !1807, metadata !DIExpression()) #11, !dbg !1814
  %281 = add i64 %280, -1, !dbg !1819
  %282 = load i32*, i32** %277, align 8, !dbg !1817, !tbaa !726
  %283 = load i8, i8* %279, align 1, !dbg !1817, !tbaa !1009
  %284 = zext i8 %283 to i64, !dbg !1817
  %285 = getelementptr inbounds i32, i32* %282, i64 %284, !dbg !1817
  %286 = load i32, i32* %285, align 4, !dbg !1817, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %286, metadata !1808, metadata !DIExpression()) #11, !dbg !1820
  %287 = call i32 @fputc(i32 %286, %struct._IO_FILE* %0) #11, !dbg !1821
  %288 = getelementptr inbounds i8, i8* %279, i64 1, !dbg !1822
  call void @llvm.dbg.value(metadata i8* %288, metadata !1806, metadata !DIExpression()) #11, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %281, metadata !1807, metadata !DIExpression()) #11, !dbg !1814
  %289 = icmp eq i64 %281, 0, !dbg !1815
  br i1 %289, label %292, label %278, !dbg !1816, !llvm.loop !1823

; <label>:290:                                    ; preds = %271
  %291 = call i64 @fwrite(i8* nonnull %47, i64 %224, i64 1, %struct._IO_FILE* nonnull %0), !dbg !1826
  br label %292

; <label>:292:                                    ; preds = %278, %259, %290, %232, %255, %274
  %293 = add i64 %229, %50, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %293, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %294

; <label>:294:                                    ; preds = %292, %218
  %295 = phi i64 [ %293, %292 ], [ %50, %218 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1290, metadata !DIExpression()), !dbg !1576
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %29) #11, !dbg !1828
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %28) #11, !dbg !1828
  br label %1076

; <label>:296:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i64 undef, metadata !1290, metadata !DIExpression()), !dbg !1576
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %29) #11, !dbg !1828
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %28) #11, !dbg !1828
  br label %1075

; <label>:297:                                    ; preds = %112
  %298 = icmp eq i32 %114, 69, !dbg !1829
  br i1 %298, label %207, label %299, !dbg !1831

; <label>:299:                                    ; preds = %297
  %300 = load i32, i32* %39, align 4, !dbg !1832, !tbaa !1833
  %301 = sdiv i32 %300, 100, !dbg !1834
  %302 = add nsw i32 %301, 19, !dbg !1835
  call void @llvm.dbg.value(metadata i32 %302, metadata !1390, metadata !DIExpression()), !dbg !1836
  %303 = srem i32 %300, 100, !dbg !1837
  %304 = icmp slt i32 %303, 0, !dbg !1838
  %305 = icmp sgt i32 %300, -1900, !dbg !1839
  %306 = and i1 %305, %304, !dbg !1840
  %307 = sext i1 %306 to i32
  %308 = add nsw i32 %302, %307, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %308, metadata !1390, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  %309 = icmp slt i32 %300, -1900, !dbg !1842
  %310 = zext i1 %309 to i8, !dbg !1842
  call void @llvm.dbg.value(metadata i8 %310, metadata !1301, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 %308, metadata !1300, metadata !DIExpression()), !dbg !1593
  br label %333

; <label>:311:                                    ; preds = %112
  call void @llvm.dbg.value(metadata i32 0, metadata !1298, metadata !DIExpression()), !dbg !1601
  %312 = icmp eq i32 %114, 79, !dbg !1844
  br i1 %312, label %1013, label %207, !dbg !1846

; <label>:313:                                    ; preds = %112
  %314 = icmp eq i32 %114, 0, !dbg !1847
  br i1 %314, label %173, label %1013, !dbg !1849

; <label>:315:                                    ; preds = %112
  %316 = icmp eq i32 %114, 69, !dbg !1850
  br i1 %316, label %1013, label %317, !dbg !1852

; <label>:317:                                    ; preds = %315
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  %318 = load i32, i32* %41, align 4, !dbg !1853, !tbaa !1855
  call void @llvm.dbg.value(metadata i32 %318, metadata !1299, metadata !DIExpression()), !dbg !1592
  br label %326, !dbg !1853

; <label>:319:                                    ; preds = %112
  %320 = icmp eq i32 %114, 69, !dbg !1856
  br i1 %320, label %1013, label %321, !dbg !1858

; <label>:321:                                    ; preds = %319
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  %322 = load i32, i32* %41, align 4, !dbg !1859, !tbaa !1855
  call void @llvm.dbg.value(metadata i32 %322, metadata !1299, metadata !DIExpression()), !dbg !1592
  br label %323, !dbg !1859

; <label>:323:                                    ; preds = %641, %639, %321
  %324 = phi i32 [ %640, %639 ], [ %322, %321 ], [ %22, %641 ], !dbg !1861
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %324, metadata !1299, metadata !DIExpression()), !dbg !1592
  switch i32 %62, label %325 [
    i32 48, label %326
    i32 45, label %326
  ], !dbg !1862

; <label>:325:                                    ; preds = %323
  call void @llvm.dbg.value(metadata i32 95, metadata !1293, metadata !DIExpression()), !dbg !1600
  br label %326, !dbg !1864

; <label>:326:                                    ; preds = %667, %665, %852, %847, %858, %894, %890, %663, %635, %323, %323, %325, %879, %869, %782, %775, %718, %652, %633, %317
  %327 = phi i32 [ %107, %879 ], [ %107, %869 ], [ %107, %782 ], [ %107, %775 ], [ %107, %718 ], [ %107, %652 ], [ %107, %325 ], [ %107, %323 ], [ %107, %633 ], [ %107, %317 ], [ %107, %323 ], [ %107, %635 ], [ 9, %663 ], [ %107, %890 ], [ %107, %894 ], [ %107, %858 ], [ %107, %847 ], [ %107, %852 ], [ %107, %665 ], [ %107, %667 ], !dbg !1627
  %328 = phi i32 [ %880, %879 ], [ %876, %869 ], [ %787, %782 ], [ %779, %775 ], [ %719, %718 ], [ %653, %652 ], [ %324, %325 ], [ %324, %323 ], [ %634, %633 ], [ %318, %317 ], [ %324, %323 ], [ %22, %635 ], [ %5, %663 ], [ %892, %890 ], [ %898, %894 ], [ %860, %858 ], [ %850, %847 ], [ %857, %852 ], [ %5, %665 ], [ %670, %667 ], !dbg !1865
  %329 = phi i32 [ 1, %879 ], [ 2, %869 ], [ 2, %782 ], [ 1, %775 ], [ 2, %718 ], [ 2, %652 ], [ 2, %325 ], [ 2, %323 ], [ 2, %633 ], [ 2, %317 ], [ 2, %323 ], [ 2, %635 ], [ 9, %663 ], [ 2, %890 ], [ 2, %894 ], [ 2, %858 ], [ 2, %847 ], [ 2, %852 ], [ %107, %665 ], [ %107, %667 ], !dbg !1865
  %330 = phi i32 [ %62, %879 ], [ %62, %869 ], [ %62, %782 ], [ %62, %775 ], [ %62, %718 ], [ %62, %652 ], [ 95, %325 ], [ %62, %323 ], [ %62, %633 ], [ %62, %317 ], [ %62, %323 ], [ %62, %635 ], [ %62, %663 ], [ %62, %890 ], [ %62, %894 ], [ %62, %858 ], [ %62, %847 ], [ %62, %852 ], [ %62, %665 ], [ %62, %667 ], !dbg !1651
  call void @llvm.dbg.value(metadata i32 %330, metadata !1293, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %329, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %328, metadata !1299, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %327, metadata !1311, metadata !DIExpression()), !dbg !1604
  %331 = lshr i32 %328, 31, !dbg !1866
  %332 = trunc i32 %331 to i8, !dbg !1866
  call void @llvm.dbg.value(metadata i8 %332, metadata !1301, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 %328, metadata !1300, metadata !DIExpression()), !dbg !1593
  br label %333, !dbg !1867

; <label>:333:                                    ; preds = %1009, %996, %999, %1002, %861, %326, %645, %656, %711, %299
  %334 = phi i32 [ %327, %326 ], [ %107, %861 ], [ %107, %711 ], [ %107, %656 ], [ %107, %645 ], [ %107, %299 ], [ %107, %1002 ], [ %107, %999 ], [ %107, %996 ], [ %107, %1009 ], !dbg !1732
  %335 = phi i32 [ 0, %326 ], [ 0, %861 ], [ 0, %711 ], [ 0, %656 ], [ 0, %645 ], [ 0, %299 ], [ 20, %1002 ], [ 4, %999 ], [ 0, %996 ], [ 0, %1009 ]
  %336 = phi i1 [ false, %326 ], [ false, %861 ], [ false, %711 ], [ false, %656 ], [ false, %645 ], [ false, %299 ], [ true, %1002 ], [ true, %999 ], [ true, %996 ], [ true, %1009 ], !dbg !1708
  %337 = phi i8 [ %332, %326 ], [ %864, %861 ], [ 0, %711 ], [ %659, %656 ], [ %648, %645 ], [ %310, %299 ], [ %991, %1002 ], [ %991, %999 ], [ %991, %996 ], [ %991, %1009 ], !dbg !1708
  %338 = phi i32 [ %328, %326 ], [ %866, %861 ], [ %715, %711 ], [ %660, %656 ], [ %649, %645 ], [ %308, %299 ], [ %1006, %1002 ], [ %1001, %999 ], [ %998, %996 ], [ %993, %1009 ]
  %339 = phi i32 [ %329, %326 ], [ 4, %861 ], [ 1, %711 ], [ 2, %656 ], [ 3, %645 ], [ 2, %299 ], [ 9, %1002 ], [ 6, %999 ], [ 5, %996 ], [ 3, %1009 ], !dbg !1868
  %340 = phi i32 [ %330, %326 ], [ %62, %861 ], [ %62, %711 ], [ %62, %656 ], [ %62, %645 ], [ %62, %299 ], [ %62, %1002 ], [ %62, %999 ], [ %62, %996 ], [ %62, %1009 ], !dbg !1600
  %341 = phi i8* [ %115, %326 ], [ %115, %861 ], [ %115, %711 ], [ %115, %656 ], [ %115, %645 ], [ %115, %299 ], [ %977, %1002 ], [ %977, %999 ], [ %977, %996 ], [ %977, %1009 ], !dbg !1643
  call void @llvm.dbg.value(metadata i8* %341, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %340, metadata !1293, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %339, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %338, metadata !1300, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 %337, metadata !1301, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 %335, metadata !1303, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i32 %334, metadata !1311, metadata !DIExpression()), !dbg !1604
  %342 = icmp eq i32 %114, 79, !dbg !1870
  %343 = and i8 %337, 1, !dbg !1872
  %344 = icmp eq i8 %343, 0, !dbg !1872
  %345 = and i1 %342, %344, !dbg !1873
  br i1 %345, label %207, label %346, !dbg !1873

; <label>:346:                                    ; preds = %882, %333
  %347 = phi i1 [ %887, %882 ], [ %344, %333 ]
  %348 = phi i8* [ %115, %882 ], [ %341, %333 ]
  %349 = phi i32 [ %62, %882 ], [ %340, %333 ]
  %350 = phi i32 [ 4, %882 ], [ %339, %333 ]
  %351 = phi i32 [ %886, %882 ], [ %338, %333 ]
  %352 = phi i8 [ %885, %882 ], [ %337, %333 ]
  %353 = phi i1 [ false, %882 ], [ %336, %333 ]
  %354 = phi i32 [ 0, %882 ], [ %335, %333 ]
  %355 = phi i32 [ %107, %882 ], [ %334, %333 ]
  call void @llvm.dbg.value(metadata i8* %32, metadata !1306, metadata !DIExpression()), !dbg !1874
  %356 = sub i32 0, %351, !dbg !1875
  %357 = select i1 %347, i32 %351, i32 %356, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %357, metadata !1300, metadata !DIExpression()), !dbg !1593
  br label %358, !dbg !1878

; <label>:358:                                    ; preds = %366, %346
  %359 = phi i8* [ %32, %346 ], [ %372, %366 ], !dbg !1879
  %360 = phi i32 [ %354, %346 ], [ %368, %366 ]
  %361 = phi i32 [ %357, %346 ], [ %373, %366 ], !dbg !1879
  call void @llvm.dbg.value(metadata i32 %361, metadata !1300, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 %360, metadata !1303, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i8* %359, metadata !1306, metadata !DIExpression()), !dbg !1874
  %362 = and i32 %360, 1, !dbg !1881
  %363 = icmp eq i32 %362, 0, !dbg !1881
  br i1 %363, label %366, label %364, !dbg !1883

; <label>:364:                                    ; preds = %358
  %365 = getelementptr inbounds i8, i8* %359, i64 -1, !dbg !1884
  call void @llvm.dbg.value(metadata i8* %365, metadata !1306, metadata !DIExpression()), !dbg !1874
  store i8 58, i8* %365, align 1, !dbg !1885, !tbaa !1009
  br label %366, !dbg !1886

; <label>:366:                                    ; preds = %358, %364
  %367 = phi i8* [ %365, %364 ], [ %359, %358 ], !dbg !1708
  call void @llvm.dbg.value(metadata i8* %367, metadata !1306, metadata !DIExpression()), !dbg !1874
  %368 = ashr i32 %360, 1, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %368, metadata !1303, metadata !DIExpression()), !dbg !1595
  %369 = urem i32 %361, 10, !dbg !1888
  %370 = trunc i32 %369 to i8, !dbg !1889
  %371 = or i8 %370, 48, !dbg !1889
  %372 = getelementptr inbounds i8, i8* %367, i64 -1, !dbg !1890
  call void @llvm.dbg.value(metadata i8* %372, metadata !1306, metadata !DIExpression()), !dbg !1874
  store i8 %371, i8* %372, align 1, !dbg !1891, !tbaa !1009
  %373 = udiv i32 %361, 10, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %373, metadata !1300, metadata !DIExpression()), !dbg !1593
  %374 = icmp ugt i32 %361, 9, !dbg !1893
  %375 = icmp ne i32 %368, 0, !dbg !1894
  %376 = or i1 %374, %375, !dbg !1895
  br i1 %376, label %358, label %377, !dbg !1896, !llvm.loop !1897

; <label>:377:                                    ; preds = %366
  call void @llvm.dbg.value(metadata i8* %348, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %349, metadata !1293, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %350, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %373, metadata !1300, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 %352, metadata !1301, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i8* %372, metadata !1306, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 %355, metadata !1311, metadata !DIExpression()), !dbg !1604
  %378 = icmp slt i32 %350, %355, !dbg !1899
  %379 = select i1 %378, i32 %355, i32 %350, !dbg !1901
  call void @llvm.dbg.value(metadata i32 %379, metadata !1298, metadata !DIExpression()), !dbg !1601
  %380 = and i8 %352, 1, !dbg !1902
  %381 = select i1 %353, i8 43, i8 0, !dbg !1903
  br label %382, !dbg !1903

; <label>:382:                                    ; preds = %377, %737
  %383 = phi i8 [ %738, %737 ], [ %380, %377 ]
  %384 = phi i32 [ %740, %737 ], [ %379, %377 ]
  %385 = phi i8* [ %115, %737 ], [ %348, %377 ]
  %386 = phi i32 [ %62, %737 ], [ %349, %377 ]
  %387 = phi i8* [ %734, %737 ], [ %372, %377 ]
  %388 = phi i32 [ %107, %737 ], [ %355, %377 ]
  %389 = phi i8 [ 0, %737 ], [ %381, %377 ]
  %390 = icmp eq i8 %383, 0, !dbg !1902
  %391 = select i1 %390, i8 %389, i8 45, !dbg !1902
  call void @llvm.dbg.value(metadata i8 %391, metadata !1305, metadata !DIExpression()), !dbg !1904
  %392 = icmp eq i32 %386, 45, !dbg !1905
  br i1 %392, label %393, label %422, !dbg !1906

; <label>:393:                                    ; preds = %382
  %394 = icmp eq i8 %391, 0, !dbg !1907
  br i1 %394, label %568, label %395, !dbg !1908

; <label>:395:                                    ; preds = %393
  call void @llvm.dbg.value(metadata i64 1, metadata !1392, metadata !DIExpression()), !dbg !1909
  %396 = icmp sgt i32 %388, 0, !dbg !1909
  %397 = select i1 %396, i32 %388, i32 0, !dbg !1909
  %398 = icmp ugt i32 %397, 1, !dbg !1909
  %399 = select i1 %398, i32 %397, i32 1, !dbg !1909
  %400 = zext i32 %399 to i64, !dbg !1909
  call void @llvm.dbg.value(metadata i64 %400, metadata !1398, metadata !DIExpression()), !dbg !1909
  %401 = xor i64 %50, -1, !dbg !1910
  %402 = icmp ult i64 %400, %401, !dbg !1910
  br i1 %402, label %403, label %1075, !dbg !1909

; <label>:403:                                    ; preds = %395
  br i1 %27, label %420, label %404, !dbg !1909

; <label>:404:                                    ; preds = %403
  %405 = icmp ne i32 %384, 0, !dbg !1912
  %406 = xor i1 %398, true, !dbg !1912
  %407 = or i1 %405, %406, !dbg !1912
  br i1 %407, label %417, label %408, !dbg !1912

; <label>:408:                                    ; preds = %404
  %409 = sext i32 %388 to i64, !dbg !1913
  %410 = add nsw i64 %409, -1, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %410, metadata !1399, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i64 0, metadata !1407, metadata !DIExpression()), !dbg !1914
  %411 = icmp eq i64 %410, 0, !dbg !1915
  br i1 %411, label %417, label %412, !dbg !1918

; <label>:412:                                    ; preds = %408, %412
  %413 = phi i64 [ %415, %412 ], [ 0, %408 ]
  call void @llvm.dbg.value(metadata i64 %413, metadata !1407, metadata !DIExpression()), !dbg !1914
  %414 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !1915
  %415 = add nuw i64 %413, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %415, metadata !1407, metadata !DIExpression()), !dbg !1914
  %416 = icmp eq i64 %415, %410, !dbg !1915
  br i1 %416, label %417, label %412, !dbg !1918, !llvm.loop !1919

; <label>:417:                                    ; preds = %412, %408, %404
  %418 = zext i8 %391 to i32, !dbg !1920
  %419 = call i32 @fputc(i32 %418, %struct._IO_FILE* nonnull %0), !dbg !1920
  br label %420, !dbg !1920

; <label>:420:                                    ; preds = %417, %403
  %421 = add i64 %50, %400, !dbg !1909
  call void @llvm.dbg.value(metadata i64 %421, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %568

; <label>:422:                                    ; preds = %382
  %423 = sext i32 %384 to i64, !dbg !1921
  %424 = ptrtoint i8* %387 to i64, !dbg !1922
  %425 = icmp ne i8 %391, 0, !dbg !1923
  %426 = sext i1 %425 to i64
  %427 = sub i64 %423, %40, !dbg !1924
  %428 = add i64 %427, %424, !dbg !1924
  %429 = add i64 %428, %426, !dbg !1925
  %430 = trunc i64 %429 to i32, !dbg !1921
  call void @llvm.dbg.value(metadata i32 %430, metadata !1409, metadata !DIExpression()), !dbg !1926
  %431 = icmp sgt i32 %430, 0, !dbg !1927
  br i1 %431, label %432, label %532, !dbg !1928

; <label>:432:                                    ; preds = %422
  %433 = icmp eq i32 %386, 95, !dbg !1929
  br i1 %433, label %434, label %480, !dbg !1930

; <label>:434:                                    ; preds = %432
  %435 = shl i64 %429, 32, !dbg !1931
  %436 = ashr exact i64 %435, 32, !dbg !1931
  %437 = xor i64 %50, -1, !dbg !1933
  %438 = icmp ult i64 %436, %437, !dbg !1934
  br i1 %438, label %439, label %1075, !dbg !1935

; <label>:439:                                    ; preds = %434
  %440 = icmp ne i64 %435, 0, !dbg !1936
  %441 = and i1 %46, %440, !dbg !1939
  call void @llvm.dbg.value(metadata i64 0, metadata !1411, metadata !DIExpression()), !dbg !1940
  br i1 %441, label %442, label %450, !dbg !1939

; <label>:442:                                    ; preds = %439
  %443 = shl i64 %429, 32, !dbg !1936
  %444 = ashr exact i64 %443, 32, !dbg !1936
  br label %445, !dbg !1936

; <label>:445:                                    ; preds = %445, %442
  %446 = phi i64 [ %448, %445 ], [ 0, %442 ]
  call void @llvm.dbg.value(metadata i64 %446, metadata !1411, metadata !DIExpression()), !dbg !1940
  %447 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !1936
  %448 = add nuw i64 %446, 1, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %448, metadata !1411, metadata !DIExpression()), !dbg !1940
  %449 = icmp eq i64 %448, %444, !dbg !1936
  br i1 %449, label %450, label %445, !dbg !1941, !llvm.loop !1942

; <label>:450:                                    ; preds = %445, %439
  %451 = add i64 %436, %50, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %451, metadata !1290, metadata !DIExpression()), !dbg !1576
  %452 = icmp sgt i32 %388, %430, !dbg !1944
  %453 = sub nsw i32 %388, %430, !dbg !1945
  %454 = select i1 %452, i32 %453, i32 0, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %454, metadata !1311, metadata !DIExpression()), !dbg !1604
  br i1 %425, label %455, label %568, !dbg !1947

; <label>:455:                                    ; preds = %450
  call void @llvm.dbg.value(metadata i64 1, metadata !1418, metadata !DIExpression()), !dbg !1948
  %456 = icmp ugt i32 %454, 1, !dbg !1948
  %457 = select i1 %456, i32 %454, i32 1, !dbg !1948
  %458 = zext i32 %457 to i64, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %458, metadata !1422, metadata !DIExpression()), !dbg !1948
  %459 = xor i64 %451, -1, !dbg !1949
  %460 = icmp ult i64 %458, %459, !dbg !1949
  br i1 %460, label %461, label %1075, !dbg !1948

; <label>:461:                                    ; preds = %455
  br i1 %46, label %462, label %478, !dbg !1948

; <label>:462:                                    ; preds = %461
  %463 = icmp ne i32 %384, 0, !dbg !1951
  %464 = xor i1 %456, true, !dbg !1951
  %465 = or i1 %463, %464, !dbg !1951
  br i1 %465, label %475, label %466, !dbg !1951

; <label>:466:                                    ; preds = %462
  %467 = zext i32 %454 to i64, !dbg !1952
  %468 = add nsw i64 %467, -1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %468, metadata !1423, metadata !DIExpression()), !dbg !1952
  %469 = icmp eq i64 %468, 0, !dbg !1953
  call void @llvm.dbg.value(metadata i64 0, metadata !1431, metadata !DIExpression()), !dbg !1956
  br i1 %469, label %475, label %470, !dbg !1957

; <label>:470:                                    ; preds = %466, %470
  %471 = phi i64 [ %473, %470 ], [ 0, %466 ]
  call void @llvm.dbg.value(metadata i64 %471, metadata !1431, metadata !DIExpression()), !dbg !1956
  %472 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !1959
  %473 = add nuw i64 %471, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %473, metadata !1431, metadata !DIExpression()), !dbg !1956
  %474 = icmp eq i64 %473, %468, !dbg !1959
  br i1 %474, label %475, label %470, !dbg !1957, !llvm.loop !1961

; <label>:475:                                    ; preds = %470, %466, %462
  %476 = zext i8 %391 to i32, !dbg !1962
  %477 = call i32 @fputc(i32 %476, %struct._IO_FILE* nonnull %0), !dbg !1962
  br label %478, !dbg !1962

; <label>:478:                                    ; preds = %461, %475
  %479 = add i64 %451, %458, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %479, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %568

; <label>:480:                                    ; preds = %432
  %481 = xor i64 %50, -1, !dbg !1963
  %482 = icmp ult i64 %423, %481, !dbg !1965
  br i1 %482, label %483, label %1075, !dbg !1966

; <label>:483:                                    ; preds = %480
  br i1 %425, label %484, label %518, !dbg !1967

; <label>:484:                                    ; preds = %483
  call void @llvm.dbg.value(metadata i64 1, metadata !1433, metadata !DIExpression()), !dbg !1968
  %485 = icmp sgt i32 %388, 0, !dbg !1968
  %486 = select i1 %485, i32 %388, i32 0, !dbg !1968
  %487 = icmp ugt i32 %486, 1, !dbg !1968
  %488 = select i1 %487, i32 %486, i32 1, !dbg !1968
  %489 = zext i32 %488 to i64, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %489, metadata !1438, metadata !DIExpression()), !dbg !1968
  %490 = icmp ult i64 %489, %481, !dbg !1969
  br i1 %490, label %491, label %1075, !dbg !1968

; <label>:491:                                    ; preds = %484
  br i1 %27, label %516, label %492, !dbg !1968

; <label>:492:                                    ; preds = %491
  %493 = icmp ne i32 %384, 0, !dbg !1971
  %494 = xor i1 %487, true, !dbg !1971
  %495 = or i1 %493, %494, !dbg !1971
  br i1 %495, label %513, label %496, !dbg !1971

; <label>:496:                                    ; preds = %492
  %497 = sext i32 %388 to i64, !dbg !1972
  %498 = add nsw i64 %497, -1, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %498, metadata !1439, metadata !DIExpression()), !dbg !1972
  %499 = icmp eq i32 %386, 48, !dbg !1973
  %500 = icmp ne i64 %498, 0, !dbg !1974
  br i1 %499, label %502, label %501, !dbg !1972

; <label>:501:                                    ; preds = %496
  call void @llvm.dbg.value(metadata i64 0, metadata !1447, metadata !DIExpression()), !dbg !1977
  br i1 %500, label %508, label %513, !dbg !1978

; <label>:502:                                    ; preds = %496
  call void @llvm.dbg.value(metadata i64 0, metadata !1444, metadata !DIExpression()), !dbg !1980
  br i1 %500, label %503, label %513, !dbg !1981

; <label>:503:                                    ; preds = %502, %503
  %504 = phi i64 [ %506, %503 ], [ 0, %502 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1444, metadata !DIExpression()), !dbg !1980
  %505 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !1974
  %506 = add nuw i64 %504, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %506, metadata !1444, metadata !DIExpression()), !dbg !1980
  %507 = icmp eq i64 %506, %498, !dbg !1974
  br i1 %507, label %513, label %503, !dbg !1981, !llvm.loop !1982

; <label>:508:                                    ; preds = %501, %508
  %509 = phi i64 [ %511, %508 ], [ 0, %501 ]
  call void @llvm.dbg.value(metadata i64 %509, metadata !1447, metadata !DIExpression()), !dbg !1977
  %510 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !1983
  %511 = add nuw i64 %509, 1, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %511, metadata !1447, metadata !DIExpression()), !dbg !1977
  %512 = icmp eq i64 %511, %498, !dbg !1983
  br i1 %512, label %513, label %508, !dbg !1978, !llvm.loop !1985

; <label>:513:                                    ; preds = %508, %503, %501, %502, %492
  %514 = zext i8 %391 to i32, !dbg !1986
  %515 = call i32 @fputc(i32 %514, %struct._IO_FILE* nonnull %0), !dbg !1986
  br label %516, !dbg !1986

; <label>:516:                                    ; preds = %513, %491
  %517 = add i64 %50, %489, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %517, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %518

; <label>:518:                                    ; preds = %516, %483
  %519 = phi i64 [ %50, %483 ], [ %517, %516 ], !dbg !1576
  call void @llvm.dbg.value(metadata i64 %519, metadata !1290, metadata !DIExpression()), !dbg !1576
  %520 = shl i64 %429, 32, !dbg !1987
  %521 = ashr exact i64 %520, 32, !dbg !1987
  br i1 %27, label %529, label %522, !dbg !1990

; <label>:522:                                    ; preds = %518
  call void @llvm.dbg.value(metadata i64 0, metadata !1449, metadata !DIExpression()), !dbg !1991
  %523 = icmp eq i64 %520, 0, !dbg !1992
  br i1 %523, label %529, label %524, !dbg !1993

; <label>:524:                                    ; preds = %522, %524
  %525 = phi i64 [ %527, %524 ], [ 0, %522 ]
  call void @llvm.dbg.value(metadata i64 %525, metadata !1449, metadata !DIExpression()), !dbg !1991
  %526 = call i32 @fputc(i32 48, %struct._IO_FILE* %0), !dbg !1992
  %527 = add nuw i64 %525, 1, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %527, metadata !1449, metadata !DIExpression()), !dbg !1991
  %528 = icmp ult i64 %527, %521, !dbg !1992
  br i1 %528, label %524, label %529, !dbg !1993, !llvm.loop !1994

; <label>:529:                                    ; preds = %524, %518, %522
  %530 = phi i64 [ 0, %522 ], [ %521, %518 ], [ %521, %524 ], !dbg !1995
  %531 = add i64 %519, %530, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %531, metadata !1290, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i32 0, metadata !1311, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %570, metadata !1290, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i32 %569, metadata !1311, metadata !DIExpression()), !dbg !1604
  br label %574, !dbg !1997

; <label>:532:                                    ; preds = %422
  br i1 %425, label %533, label %568, !dbg !1998

; <label>:533:                                    ; preds = %532
  call void @llvm.dbg.value(metadata i64 1, metadata !1452, metadata !DIExpression()), !dbg !1999
  %534 = icmp sgt i32 %388, 0, !dbg !1999
  %535 = select i1 %534, i32 %388, i32 0, !dbg !1999
  %536 = icmp ugt i32 %535, 1, !dbg !1999
  %537 = select i1 %536, i32 %535, i32 1, !dbg !1999
  %538 = zext i32 %537 to i64, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %538, metadata !1457, metadata !DIExpression()), !dbg !1999
  %539 = xor i64 %50, -1, !dbg !2000
  %540 = icmp ult i64 %538, %539, !dbg !2000
  br i1 %540, label %541, label %1075, !dbg !1999

; <label>:541:                                    ; preds = %533
  br i1 %27, label %566, label %542, !dbg !1999

; <label>:542:                                    ; preds = %541
  %543 = icmp ne i32 %384, 0, !dbg !2002
  %544 = xor i1 %536, true, !dbg !2002
  %545 = or i1 %543, %544, !dbg !2002
  br i1 %545, label %563, label %546, !dbg !2002

; <label>:546:                                    ; preds = %542
  %547 = sext i32 %388 to i64, !dbg !2003
  %548 = add nsw i64 %547, -1, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %548, metadata !1458, metadata !DIExpression()), !dbg !2003
  %549 = icmp eq i32 %386, 48, !dbg !2004
  %550 = icmp ne i64 %548, 0, !dbg !2005
  br i1 %549, label %552, label %551, !dbg !2003

; <label>:551:                                    ; preds = %546
  call void @llvm.dbg.value(metadata i64 0, metadata !1466, metadata !DIExpression()), !dbg !2008
  br i1 %550, label %558, label %563, !dbg !2009

; <label>:552:                                    ; preds = %546
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !2011
  br i1 %550, label %553, label %563, !dbg !2012

; <label>:553:                                    ; preds = %552, %553
  %554 = phi i64 [ %556, %553 ], [ 0, %552 ]
  call void @llvm.dbg.value(metadata i64 %554, metadata !1463, metadata !DIExpression()), !dbg !2011
  %555 = call i32 @fputc(i32 48, %struct._IO_FILE* %0), !dbg !2005
  %556 = add nuw i64 %554, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %556, metadata !1463, metadata !DIExpression()), !dbg !2011
  %557 = icmp eq i64 %556, %548, !dbg !2005
  br i1 %557, label %563, label %553, !dbg !2012, !llvm.loop !2013

; <label>:558:                                    ; preds = %551, %558
  %559 = phi i64 [ %561, %558 ], [ 0, %551 ]
  call void @llvm.dbg.value(metadata i64 %559, metadata !1466, metadata !DIExpression()), !dbg !2008
  %560 = call i32 @fputc(i32 32, %struct._IO_FILE* %0), !dbg !2014
  %561 = add nuw i64 %559, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %561, metadata !1466, metadata !DIExpression()), !dbg !2008
  %562 = icmp eq i64 %561, %548, !dbg !2014
  br i1 %562, label %563, label %558, !dbg !2009, !llvm.loop !2016

; <label>:563:                                    ; preds = %558, %553, %551, %552, %542
  %564 = zext i8 %391 to i32, !dbg !2017
  %565 = call i32 @fputc(i32 %564, %struct._IO_FILE* %0), !dbg !2017
  br label %566, !dbg !2017

; <label>:566:                                    ; preds = %563, %541
  %567 = add i64 %50, %538, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %567, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %568

; <label>:568:                                    ; preds = %450, %532, %478, %566, %420, %393
  %569 = phi i32 [ %388, %393 ], [ %388, %420 ], [ %388, %566 ], [ %454, %478 ], [ %388, %532 ], [ %454, %450 ], !dbg !1732
  %570 = phi i64 [ %50, %393 ], [ %421, %420 ], [ %567, %566 ], [ %479, %478 ], [ %50, %532 ], [ %451, %450 ], !dbg !1576
  call void @llvm.dbg.value(metadata i64 %570, metadata !1290, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i32 %569, metadata !1311, metadata !DIExpression()), !dbg !1604
  %571 = ptrtoint i8* %387 to i64, !dbg !1997
  %572 = icmp sgt i32 %569, 0, !dbg !1997
  %573 = select i1 %572, i32 %569, i32 0, !dbg !1997
  br label %574, !dbg !1997

; <label>:574:                                    ; preds = %568, %529
  %575 = phi i64 [ %424, %529 ], [ %571, %568 ]
  %576 = phi i64 [ %531, %529 ], [ %570, %568 ]
  %577 = phi i32 [ 0, %529 ], [ %569, %568 ]
  %578 = phi i32 [ 0, %529 ], [ %573, %568 ]
  %579 = sub i64 %40, %575, !dbg !1997
  %580 = zext i32 %578 to i64, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %580, metadata !1470, metadata !DIExpression()), !dbg !1997
  %581 = icmp ult i64 %579, %580, !dbg !1997
  %582 = select i1 %581, i64 %580, i64 %579, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %582, metadata !1471, metadata !DIExpression()), !dbg !1997
  %583 = xor i64 %576, -1, !dbg !2018
  %584 = icmp ult i64 %582, %583, !dbg !2018
  br i1 %584, label %585, label %1075, !dbg !1997

; <label>:585:                                    ; preds = %574
  br i1 %27, label %627, label %586, !dbg !1997

; <label>:586:                                    ; preds = %585
  %587 = icmp ne i32 %384, 0, !dbg !2020
  %588 = xor i1 %581, true, !dbg !2020
  %589 = or i1 %587, %588, !dbg !2020
  br i1 %589, label %607, label %590, !dbg !2020

; <label>:590:                                    ; preds = %586
  %591 = sext i32 %577 to i64, !dbg !2021
  %592 = sub i64 %591, %579, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %592, metadata !1472, metadata !DIExpression()), !dbg !2021
  %593 = icmp eq i32 %386, 48, !dbg !2022
  %594 = icmp ne i64 %592, 0, !dbg !2023
  br i1 %593, label %596, label %595, !dbg !2021

; <label>:595:                                    ; preds = %590
  call void @llvm.dbg.value(metadata i64 0, metadata !1480, metadata !DIExpression()), !dbg !2026
  br i1 %594, label %602, label %607, !dbg !2027

; <label>:596:                                    ; preds = %590
  call void @llvm.dbg.value(metadata i64 0, metadata !1477, metadata !DIExpression()), !dbg !2029
  br i1 %594, label %597, label %607, !dbg !2030

; <label>:597:                                    ; preds = %596, %597
  %598 = phi i64 [ %600, %597 ], [ 0, %596 ]
  call void @llvm.dbg.value(metadata i64 %598, metadata !1477, metadata !DIExpression()), !dbg !2029
  %599 = call i32 @fputc(i32 48, %struct._IO_FILE* %0), !dbg !2023
  %600 = add nuw i64 %598, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %600, metadata !1477, metadata !DIExpression()), !dbg !2029
  %601 = icmp eq i64 %600, %592, !dbg !2023
  br i1 %601, label %607, label %597, !dbg !2030, !llvm.loop !2031

; <label>:602:                                    ; preds = %595, %602
  %603 = phi i64 [ %605, %602 ], [ 0, %595 ]
  call void @llvm.dbg.value(metadata i64 %603, metadata !1480, metadata !DIExpression()), !dbg !2026
  %604 = call i32 @fputc(i32 32, %struct._IO_FILE* %0), !dbg !2032
  %605 = add nuw i64 %603, 1, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %605, metadata !1480, metadata !DIExpression()), !dbg !2026
  %606 = icmp eq i64 %605, %592, !dbg !2032
  br i1 %606, label %607, label %602, !dbg !2027, !llvm.loop !2034

; <label>:607:                                    ; preds = %602, %597, %595, %596, %586
  %608 = icmp eq i8 %69, 0, !dbg !2035
  br i1 %608, label %625, label %609, !dbg !2039

; <label>:609:                                    ; preds = %607
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1803, metadata !DIExpression()) #11, !dbg !2040
  call void @llvm.dbg.value(metadata i8* %372, metadata !1806, metadata !DIExpression()) #11, !dbg !2042
  %610 = icmp eq i64 %579, 0, !dbg !2043
  br i1 %610, label %627, label %611, !dbg !2044

; <label>:611:                                    ; preds = %609
  %612 = tail call i32** @__ctype_toupper_loc() #17, !dbg !2045
  br label %613, !dbg !2044

; <label>:613:                                    ; preds = %613, %611
  %614 = phi i8* [ %387, %611 ], [ %623, %613 ]
  %615 = phi i64 [ %579, %611 ], [ %616, %613 ]
  call void @llvm.dbg.value(metadata i8* %614, metadata !1806, metadata !DIExpression()) #11, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %615, metadata !1807, metadata !DIExpression()) #11, !dbg !2046
  %616 = add i64 %615, -1, !dbg !2047
  %617 = load i32*, i32** %612, align 8, !dbg !2045, !tbaa !726
  %618 = load i8, i8* %614, align 1, !dbg !2045, !tbaa !1009
  %619 = zext i8 %618 to i64, !dbg !2045
  %620 = getelementptr inbounds i32, i32* %617, i64 %619, !dbg !2045
  %621 = load i32, i32* %620, align 4, !dbg !2045, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %621, metadata !1808, metadata !DIExpression()) #11, !dbg !2048
  %622 = call i32 @fputc(i32 %621, %struct._IO_FILE* %0) #11, !dbg !2049
  %623 = getelementptr inbounds i8, i8* %614, i64 1, !dbg !2050
  call void @llvm.dbg.value(metadata i8* %623, metadata !1806, metadata !DIExpression()) #11, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %616, metadata !1807, metadata !DIExpression()) #11, !dbg !2046
  %624 = icmp eq i64 %616, 0, !dbg !2043
  br i1 %624, label %627, label %613, !dbg !2044, !llvm.loop !1823

; <label>:625:                                    ; preds = %607
  %626 = call i64 @fwrite(i8* %387, i64 %579, i64 1, %struct._IO_FILE* %0), !dbg !2051
  br label %627

; <label>:627:                                    ; preds = %613, %625, %585, %609
  %628 = add i64 %582, %576, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %628, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %1076

; <label>:629:                                    ; preds = %112
  %630 = icmp eq i32 %114, 0, !dbg !2053
  br i1 %630, label %173, label %1013, !dbg !2055

; <label>:631:                                    ; preds = %112
  %632 = icmp eq i32 %114, 69, !dbg !2056
  br i1 %632, label %1013, label %633, !dbg !2058

; <label>:633:                                    ; preds = %631
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  %634 = load i32, i32* %12, align 8, !dbg !2059, !tbaa !1573
  call void @llvm.dbg.value(metadata i32 %634, metadata !1299, metadata !DIExpression()), !dbg !1592
  br label %326, !dbg !2059

; <label>:635:                                    ; preds = %112
  %636 = icmp eq i32 %114, 69, !dbg !2061
  br i1 %636, label %1013, label %326, !dbg !2063

; <label>:637:                                    ; preds = %112
  %638 = icmp eq i32 %114, 69, !dbg !2064
  br i1 %638, label %1013, label %639, !dbg !2066

; <label>:639:                                    ; preds = %637
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  %640 = load i32, i32* %12, align 8, !dbg !2067, !tbaa !1573
  call void @llvm.dbg.value(metadata i32 %640, metadata !1299, metadata !DIExpression()), !dbg !1592
  br label %323, !dbg !2067

; <label>:641:                                    ; preds = %112
  %642 = icmp eq i32 %114, 69, !dbg !2069
  br i1 %642, label %1013, label %323, !dbg !2071

; <label>:643:                                    ; preds = %112
  %644 = icmp eq i32 %114, 69, !dbg !2072
  br i1 %644, label %1013, label %645, !dbg !2074

; <label>:645:                                    ; preds = %643
  call void @llvm.dbg.value(metadata i32 3, metadata !1298, metadata !DIExpression()), !dbg !1601
  %646 = load i32, i32* %42, align 4, !dbg !2075, !tbaa !2077
  %647 = icmp slt i32 %646, -1, !dbg !2075
  %648 = zext i1 %647 to i8, !dbg !2075
  call void @llvm.dbg.value(metadata i8 %648, metadata !1301, metadata !DIExpression()), !dbg !1594
  %649 = add i32 %646, 1, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %649, metadata !1300, metadata !DIExpression()), !dbg !1593
  br label %333, !dbg !2075

; <label>:650:                                    ; preds = %112
  %651 = icmp eq i32 %114, 69, !dbg !2078
  br i1 %651, label %1013, label %652, !dbg !2080

; <label>:652:                                    ; preds = %650
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  %653 = load i32, i32* %43, align 4, !dbg !2081, !tbaa !2083
  call void @llvm.dbg.value(metadata i32 %653, metadata !1299, metadata !DIExpression()), !dbg !1592
  br label %326, !dbg !2081

; <label>:654:                                    ; preds = %112
  %655 = icmp eq i32 %114, 69, !dbg !2084
  br i1 %655, label %1013, label %656, !dbg !2086

; <label>:656:                                    ; preds = %654
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  %657 = load i32, i32* %33, align 8, !dbg !2087, !tbaa !2089
  %658 = icmp slt i32 %657, -1, !dbg !2087
  %659 = zext i1 %658 to i8, !dbg !2087
  call void @llvm.dbg.value(metadata i8 %659, metadata !1301, metadata !DIExpression()), !dbg !1594
  %660 = add i32 %657, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %660, metadata !1300, metadata !DIExpression()), !dbg !1593
  br label %333, !dbg !2087

; <label>:661:                                    ; preds = %112
  %662 = icmp eq i32 %114, 69, !dbg !2090
  br i1 %662, label %1013, label %663, !dbg !2092

; <label>:663:                                    ; preds = %661
  call void @llvm.dbg.value(metadata i32 %5, metadata !1299, metadata !DIExpression()), !dbg !1592
  %664 = icmp eq i32 %107, -1, !dbg !2093
  br i1 %664, label %326, label %665, !dbg !2094

; <label>:665:                                    ; preds = %663
  call void @llvm.dbg.value(metadata i32 %5, metadata !1299, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %107, metadata !1482, metadata !DIExpression()), !dbg !2095
  %666 = icmp slt i32 %107, 9, !dbg !2096
  br i1 %666, label %667, label %326, !dbg !2099

; <label>:667:                                    ; preds = %665, %667
  %668 = phi i32 [ %670, %667 ], [ %5, %665 ]
  %669 = phi i32 [ %671, %667 ], [ %107, %665 ]
  call void @llvm.dbg.value(metadata i32 %668, metadata !1299, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %669, metadata !1482, metadata !DIExpression()), !dbg !2095
  %670 = sdiv i32 %668, 10, !dbg !2100
  %671 = add nsw i32 %669, 1, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %670, metadata !1299, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %671, metadata !1482, metadata !DIExpression()), !dbg !2095
  %672 = icmp slt i32 %669, 8, !dbg !2096
  br i1 %672, label %667, label %326, !dbg !2099, !llvm.loop !2102

; <label>:673:                                    ; preds = %112
  call void @llvm.dbg.value(metadata i64 1, metadata !1485, metadata !DIExpression()), !dbg !2104
  %674 = icmp sgt i32 %107, 0, !dbg !2104
  %675 = select i1 %674, i32 %107, i32 0, !dbg !2104
  %676 = icmp ugt i32 %675, 1, !dbg !2104
  %677 = select i1 %676, i32 %675, i32 1, !dbg !2104
  %678 = zext i32 %677 to i64, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %678, metadata !1488, metadata !DIExpression()), !dbg !2104
  %679 = xor i64 %50, -1, !dbg !2105
  %680 = icmp ult i64 %678, %679, !dbg !2105
  br i1 %680, label %681, label %1075, !dbg !2104

; <label>:681:                                    ; preds = %673
  br i1 %27, label %702, label %682, !dbg !2104

; <label>:682:                                    ; preds = %681
  br i1 %676, label %683, label %700, !dbg !2107

; <label>:683:                                    ; preds = %682
  %684 = sext i32 %107 to i64, !dbg !2108
  %685 = add nsw i64 %684, -1, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %685, metadata !1489, metadata !DIExpression()), !dbg !2108
  %686 = icmp eq i32 %62, 48, !dbg !2109
  %687 = icmp ne i64 %685, 0, !dbg !2110
  br i1 %686, label %689, label %688, !dbg !2108

; <label>:688:                                    ; preds = %683
  call void @llvm.dbg.value(metadata i64 0, metadata !1497, metadata !DIExpression()), !dbg !2113
  br i1 %687, label %695, label %700, !dbg !2114

; <label>:689:                                    ; preds = %683
  call void @llvm.dbg.value(metadata i64 0, metadata !1494, metadata !DIExpression()), !dbg !2116
  br i1 %687, label %690, label %700, !dbg !2117

; <label>:690:                                    ; preds = %689, %690
  %691 = phi i64 [ %693, %690 ], [ 0, %689 ]
  call void @llvm.dbg.value(metadata i64 %691, metadata !1494, metadata !DIExpression()), !dbg !2116
  %692 = call i32 @fputc(i32 48, %struct._IO_FILE* %0), !dbg !2110
  %693 = add nuw i64 %691, 1, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %693, metadata !1494, metadata !DIExpression()), !dbg !2116
  %694 = icmp eq i64 %693, %685, !dbg !2110
  br i1 %694, label %700, label %690, !dbg !2117, !llvm.loop !2118

; <label>:695:                                    ; preds = %688, %695
  %696 = phi i64 [ %698, %695 ], [ 0, %688 ]
  call void @llvm.dbg.value(metadata i64 %696, metadata !1497, metadata !DIExpression()), !dbg !2113
  %697 = call i32 @fputc(i32 32, %struct._IO_FILE* %0), !dbg !2119
  %698 = add nuw i64 %696, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %698, metadata !1497, metadata !DIExpression()), !dbg !2113
  %699 = icmp eq i64 %698, %685, !dbg !2119
  br i1 %699, label %700, label %695, !dbg !2114, !llvm.loop !2121

; <label>:700:                                    ; preds = %695, %690, %688, %689, %682
  %701 = call i32 @fputc(i32 10, %struct._IO_FILE* %0), !dbg !2107
  br label %702, !dbg !2107

; <label>:702:                                    ; preds = %700, %681
  %703 = add i64 %50, %678, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %703, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %1076

; <label>:704:                                    ; preds = %112
  call void @llvm.dbg.value(metadata i8 1, metadata !1312, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 112, metadata !1316, metadata !DIExpression()), !dbg !1658
  br label %705, !dbg !2122

; <label>:705:                                    ; preds = %112, %704
  %706 = phi i1 [ false, %112 ], [ true, %704 ], !dbg !1708
  call void @llvm.dbg.value(metadata i32 112, metadata !1316, metadata !DIExpression()), !dbg !1658
  %707 = icmp eq i8 %73, 0, !dbg !2123
  %708 = select i1 %707, i8 %69, i8 0, !dbg !2125
  %709 = xor i1 %707, true, !dbg !2125
  %710 = or i1 %706, %709, !dbg !2125
  br label %207, !dbg !2125

; <label>:711:                                    ; preds = %112
  call void @llvm.dbg.value(metadata i32 1, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8 0, metadata !1301, metadata !DIExpression()), !dbg !1594
  %712 = load i32, i32* %33, align 8, !dbg !2126, !tbaa !2089
  %713 = mul nsw i32 %712, 11, !dbg !2126
  %714 = ashr i32 %713, 5, !dbg !2126
  %715 = add nsw i32 %714, 1, !dbg !2126
  call void @llvm.dbg.value(metadata i32 %715, metadata !1300, metadata !DIExpression()), !dbg !1593
  br label %333, !dbg !2126

; <label>:716:                                    ; preds = %112
  %717 = icmp eq i32 %114, 69, !dbg !2128
  br i1 %717, label %1013, label %718, !dbg !2130

; <label>:718:                                    ; preds = %716
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  %719 = load i32, i32* %44, align 8, !dbg !2131, !tbaa !2133
  call void @llvm.dbg.value(metadata i32 %719, metadata !1299, metadata !DIExpression()), !dbg !1592
  br label %326, !dbg !2131

; <label>:720:                                    ; preds = %112
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %34) #11, !dbg !2134
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %34, i8* align 8 %35, i64 56, i1 false), !dbg !2135, !tbaa.struct !2136
  call void @llvm.dbg.value(metadata %struct.tm* %10, metadata !1499, metadata !DIExpression(DW_OP_deref)), !dbg !2137
  %721 = call i64 @mktime_z(%struct.tm_zone* %4, %struct.tm* nonnull %10) #11, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %721, metadata !1501, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8* %32, metadata !1306, metadata !DIExpression()), !dbg !1874
  %722 = icmp slt i64 %721, 0, !dbg !2140
  %723 = lshr i64 %721, 63, !dbg !2141
  call void @llvm.dbg.value(metadata i8 %738, metadata !1301, metadata !DIExpression()), !dbg !1594
  br label %724, !dbg !2142

; <label>:724:                                    ; preds = %724, %720
  %725 = phi i64 [ %721, %720 ], [ %729, %724 ], !dbg !2143
  %726 = phi i8* [ %32, %720 ], [ %734, %724 ], !dbg !2143
  call void @llvm.dbg.value(metadata i8* %726, metadata !1306, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %725, metadata !1501, metadata !DIExpression()), !dbg !2139
  %727 = srem i64 %725, 10, !dbg !2144
  %728 = trunc i64 %727 to i32, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %728, metadata !1502, metadata !DIExpression()), !dbg !2146
  %729 = sdiv i64 %725, 10, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %729, metadata !1501, metadata !DIExpression()), !dbg !2139
  %730 = sub nsw i32 0, %728, !dbg !2148
  %731 = select i1 %722, i32 %730, i32 %728, !dbg !2149
  %732 = trunc i32 %731 to i8, !dbg !2150
  %733 = add i8 %732, 48, !dbg !2150
  %734 = getelementptr inbounds i8, i8* %726, i64 -1, !dbg !2151
  call void @llvm.dbg.value(metadata i8* %734, metadata !1306, metadata !DIExpression()), !dbg !1874
  store i8 %733, i8* %734, align 1, !dbg !2152, !tbaa !1009
  %735 = add i64 %725, 9, !dbg !2153
  %736 = icmp ugt i64 %735, 18, !dbg !2153
  br i1 %736, label %724, label %737, !dbg !2154, !llvm.loop !2155

; <label>:737:                                    ; preds = %724
  %738 = trunc i64 %723 to i8, !dbg !2141
  call void @llvm.dbg.value(metadata i32 1, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8 0, metadata !1302, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %34) #11, !dbg !2158
  call void @llvm.dbg.value(metadata i8* %348, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %349, metadata !1293, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %350, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %373, metadata !1300, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 %352, metadata !1301, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i8* %372, metadata !1306, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 %355, metadata !1311, metadata !DIExpression()), !dbg !1604
  %739 = icmp sgt i32 %107, 1, !dbg !1899
  %740 = select i1 %739, i32 %107, i32 1, !dbg !1901
  call void @llvm.dbg.value(metadata i32 %379, metadata !1298, metadata !DIExpression()), !dbg !1601
  br label %382, !dbg !1903

; <label>:741:                                    ; preds = %112
  %742 = icmp eq i32 %114, 79, !dbg !2159
  br i1 %742, label %1013, label %207, !dbg !2161

; <label>:743:                                    ; preds = %112
  br label %173, !dbg !2162

; <label>:744:                                    ; preds = %112
  call void @llvm.dbg.value(metadata i64 1, metadata !1504, metadata !DIExpression()), !dbg !2163
  %745 = icmp sgt i32 %107, 0, !dbg !2163
  %746 = select i1 %745, i32 %107, i32 0, !dbg !2163
  %747 = icmp ugt i32 %746, 1, !dbg !2163
  %748 = select i1 %747, i32 %746, i32 1, !dbg !2163
  %749 = zext i32 %748 to i64, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %749, metadata !1507, metadata !DIExpression()), !dbg !2163
  %750 = xor i64 %50, -1, !dbg !2164
  %751 = icmp ult i64 %749, %750, !dbg !2164
  br i1 %751, label %752, label %1075, !dbg !2163

; <label>:752:                                    ; preds = %744
  br i1 %27, label %773, label %753, !dbg !2163

; <label>:753:                                    ; preds = %752
  br i1 %747, label %754, label %771, !dbg !2166

; <label>:754:                                    ; preds = %753
  %755 = sext i32 %107 to i64, !dbg !2167
  %756 = add nsw i64 %755, -1, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %756, metadata !1508, metadata !DIExpression()), !dbg !2167
  %757 = icmp eq i32 %62, 48, !dbg !2168
  %758 = icmp ne i64 %756, 0, !dbg !2169
  br i1 %757, label %760, label %759, !dbg !2167

; <label>:759:                                    ; preds = %754
  call void @llvm.dbg.value(metadata i64 0, metadata !1516, metadata !DIExpression()), !dbg !2172
  br i1 %758, label %766, label %771, !dbg !2173

; <label>:760:                                    ; preds = %754
  call void @llvm.dbg.value(metadata i64 0, metadata !1513, metadata !DIExpression()), !dbg !2175
  br i1 %758, label %761, label %771, !dbg !2176

; <label>:761:                                    ; preds = %760, %761
  %762 = phi i64 [ %764, %761 ], [ 0, %760 ]
  call void @llvm.dbg.value(metadata i64 %762, metadata !1513, metadata !DIExpression()), !dbg !2175
  %763 = call i32 @fputc(i32 48, %struct._IO_FILE* %0), !dbg !2169
  %764 = add nuw i64 %762, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %764, metadata !1513, metadata !DIExpression()), !dbg !2175
  %765 = icmp eq i64 %764, %756, !dbg !2169
  br i1 %765, label %771, label %761, !dbg !2176, !llvm.loop !2177

; <label>:766:                                    ; preds = %759, %766
  %767 = phi i64 [ %769, %766 ], [ 0, %759 ]
  call void @llvm.dbg.value(metadata i64 %767, metadata !1516, metadata !DIExpression()), !dbg !2172
  %768 = call i32 @fputc(i32 32, %struct._IO_FILE* %0), !dbg !2178
  %769 = add nuw i64 %767, 1, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %769, metadata !1516, metadata !DIExpression()), !dbg !2172
  %770 = icmp eq i64 %769, %756, !dbg !2178
  br i1 %770, label %771, label %766, !dbg !2173, !llvm.loop !2180

; <label>:771:                                    ; preds = %766, %761, %759, %760, %753
  %772 = call i32 @fputc(i32 9, %struct._IO_FILE* %0), !dbg !2166
  br label %773, !dbg !2166

; <label>:773:                                    ; preds = %771, %752
  %774 = add i64 %50, %749, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %774, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %1076

; <label>:775:                                    ; preds = %112
  call void @llvm.dbg.value(metadata i32 1, metadata !1298, metadata !DIExpression()), !dbg !1601
  %776 = load i32, i32* %36, align 8, !dbg !2181, !tbaa !2183
  %777 = add nsw i32 %776, 6, !dbg !2181
  %778 = srem i32 %777, 7, !dbg !2181
  %779 = add nsw i32 %778, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i32 %779, metadata !1299, metadata !DIExpression()), !dbg !1592
  br label %326, !dbg !2181

; <label>:780:                                    ; preds = %112
  %781 = icmp eq i32 %114, 69, !dbg !2184
  br i1 %781, label %1013, label %782, !dbg !2186

; <label>:782:                                    ; preds = %780
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  %783 = load i32, i32* %42, align 4, !dbg !2187, !tbaa !2077
  %784 = load i32, i32* %36, align 8, !dbg !2187, !tbaa !2183
  %785 = add i32 %783, 7, !dbg !2187
  %786 = sub i32 %785, %784, !dbg !2187
  %787 = sdiv i32 %786, 7, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %787, metadata !1299, metadata !DIExpression()), !dbg !1592
  br label %326, !dbg !2187

; <label>:788:                                    ; preds = %112, %112, %112
  %789 = icmp eq i32 %114, 69, !dbg !2189
  br i1 %789, label %1013, label %790, !dbg !2191

; <label>:790:                                    ; preds = %788
  %791 = load i32, i32* %39, align 4, !dbg !2192, !tbaa !1833
  %792 = icmp slt i32 %791, 0, !dbg !2193
  %793 = select i1 %792, i32 300, i32 -100, !dbg !2194
  %794 = add nsw i32 %793, %791, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %794, metadata !1518, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 0, metadata !1520, metadata !DIExpression()), !dbg !2197
  %795 = load i32, i32* %42, align 4, !dbg !2198, !tbaa !2077
  %796 = load i32, i32* %36, align 8, !dbg !2199, !tbaa !2183
  call void @llvm.dbg.value(metadata i32 %795, metadata !2200, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i32 %796, metadata !2205, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i32 378, metadata !2206, metadata !DIExpression()), !dbg !2210
  %797 = add i32 %795, 382, !dbg !2211
  %798 = sub i32 %797, %796, !dbg !2212
  %799 = srem i32 %798, 7, !dbg !2213
  %800 = add i32 %795, 3, !dbg !2214
  %801 = sub i32 %800, %799, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %801, metadata !1521, metadata !DIExpression()), !dbg !2216
  %802 = icmp slt i32 %801, 0, !dbg !2217
  br i1 %802, label %803, label %822, !dbg !2218

; <label>:803:                                    ; preds = %790
  call void @llvm.dbg.value(metadata i32 -1, metadata !1520, metadata !DIExpression()), !dbg !2197
  %804 = add nsw i32 %794, -1, !dbg !2219
  %805 = and i32 %804, 3, !dbg !2219
  %806 = icmp eq i32 %805, 0, !dbg !2219
  br i1 %806, label %807, label %814, !dbg !2219

; <label>:807:                                    ; preds = %803
  %808 = srem i32 %804, 100, !dbg !2219
  %809 = icmp ne i32 %808, 0, !dbg !2219
  %810 = srem i32 %804, 400, !dbg !2219
  %811 = icmp eq i32 %810, 0, !dbg !2219
  %812 = or i1 %809, %811, !dbg !2219
  %813 = select i1 %812, i32 366, i32 365, !dbg !2219
  br label %814, !dbg !2219

; <label>:814:                                    ; preds = %807, %803
  %815 = phi i32 [ 365, %803 ], [ %813, %807 ]
  %816 = add nsw i32 %815, %795, !dbg !2221
  call void @llvm.dbg.value(metadata i32 %816, metadata !2200, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %796, metadata !2205, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 378, metadata !2206, metadata !DIExpression()), !dbg !2225
  %817 = sub i32 382, %796, !dbg !2226
  %818 = add i32 %817, %816, !dbg !2227
  %819 = srem i32 %818, 7, !dbg !2228
  %820 = add i32 %816, 3, !dbg !2229
  %821 = sub i32 %820, %819, !dbg !2230
  call void @llvm.dbg.value(metadata i32 %821, metadata !1521, metadata !DIExpression()), !dbg !2216
  br label %844, !dbg !2231

; <label>:822:                                    ; preds = %790
  %823 = and i32 %794, 3, !dbg !2232
  %824 = icmp eq i32 %823, 0, !dbg !2232
  br i1 %824, label %825, label %832, !dbg !2232

; <label>:825:                                    ; preds = %822
  %826 = srem i32 %794, 100, !dbg !2232
  %827 = icmp ne i32 %826, 0, !dbg !2232
  %828 = srem i32 %794, 400, !dbg !2232
  %829 = icmp eq i32 %828, 0, !dbg !2232
  %830 = or i1 %827, %829, !dbg !2232
  %831 = select i1 %830, i32 366, i32 365, !dbg !2232
  br label %832, !dbg !2232

; <label>:832:                                    ; preds = %825, %822
  %833 = phi i32 [ 365, %822 ], [ %831, %825 ]
  %834 = sub nsw i32 %795, %833, !dbg !2233
  call void @llvm.dbg.value(metadata i32 %834, metadata !2200, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 %796, metadata !2205, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 378, metadata !2206, metadata !DIExpression()), !dbg !2237
  %835 = sub i32 382, %796, !dbg !2238
  %836 = add i32 %835, %834, !dbg !2239
  %837 = srem i32 %836, 7, !dbg !2240
  %838 = add i32 %834, 3, !dbg !2241
  %839 = sub i32 %838, %837, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %839, metadata !1522, metadata !DIExpression()), !dbg !2243
  %840 = icmp sgt i32 %839, -1, !dbg !2244
  %841 = lshr i32 %839, 31, !dbg !2246
  %842 = xor i32 %841, 1, !dbg !2246
  %843 = select i1 %840, i32 %839, i32 %801, !dbg !2246
  call void @llvm.dbg.value(metadata i32 %843, metadata !1521, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i32 %842, metadata !1520, metadata !DIExpression()), !dbg !2197
  br label %844

; <label>:844:                                    ; preds = %832, %814
  %845 = phi i32 [ -1, %814 ], [ %842, %832 ], !dbg !2247
  %846 = phi i32 [ %821, %814 ], [ %843, %832 ], !dbg !2247
  call void @llvm.dbg.value(metadata i32 %846, metadata !1521, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i32 %845, metadata !1520, metadata !DIExpression()), !dbg !2197
  switch i32 %116, label %858 [
    i32 103, label %847
    i32 71, label %861
  ], !dbg !2249

; <label>:847:                                    ; preds = %844
  %848 = srem i32 %791, 100, !dbg !2250
  %849 = add nsw i32 %845, %848, !dbg !2251
  %850 = srem i32 %849, 100, !dbg !2252
  call void @llvm.dbg.value(metadata i32 %850, metadata !1525, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  %851 = icmp sgt i32 %850, -1, !dbg !2254
  br i1 %851, label %326, label %852, !dbg !2254

; <label>:852:                                    ; preds = %847
  %853 = sub nsw i32 -1900, %845, !dbg !2254
  %854 = icmp slt i32 %791, %853, !dbg !2254
  %855 = sub nsw i32 0, %850, !dbg !2254
  %856 = add nsw i32 %850, 100, !dbg !2254
  %857 = select i1 %854, i32 %855, i32 %856, !dbg !2254
  br label %326, !dbg !2254

; <label>:858:                                    ; preds = %844
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  %859 = sdiv i32 %846, 7, !dbg !2256
  %860 = add nsw i32 %859, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i32 %860, metadata !1299, metadata !DIExpression()), !dbg !1592
  br label %326, !dbg !2256

; <label>:861:                                    ; preds = %844
  call void @llvm.dbg.value(metadata i32 4, metadata !1298, metadata !DIExpression()), !dbg !1601
  %862 = sub nsw i32 -1900, %845, !dbg !2258
  %863 = icmp slt i32 %791, %862, !dbg !2258
  %864 = zext i1 %863 to i8, !dbg !2258
  call void @llvm.dbg.value(metadata i8 %864, metadata !1301, metadata !DIExpression()), !dbg !1594
  %865 = add i32 %791, 1900, !dbg !2258
  %866 = add i32 %865, %845, !dbg !2258
  call void @llvm.dbg.value(metadata i32 %866, metadata !1300, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 4, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %866, metadata !1300, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 %864, metadata !1301, metadata !DIExpression()), !dbg !1594
  br label %333

; <label>:867:                                    ; preds = %112
  call void @llvm.dbg.value(metadata i32 0, metadata !1298, metadata !DIExpression()), !dbg !1601
  %868 = icmp eq i32 %114, 69, !dbg !2260
  br i1 %868, label %1013, label %869, !dbg !2262

; <label>:869:                                    ; preds = %867
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1601
  %870 = load i32, i32* %42, align 4, !dbg !2263, !tbaa !2077
  %871 = load i32, i32* %36, align 8, !dbg !2263, !tbaa !2183
  %872 = add nsw i32 %871, 6, !dbg !2263
  %873 = srem i32 %872, 7, !dbg !2263
  %874 = add i32 %870, 7, !dbg !2263
  %875 = sub i32 %874, %873, !dbg !2263
  %876 = sdiv i32 %875, 7, !dbg !2263
  call void @llvm.dbg.value(metadata i32 %876, metadata !1299, metadata !DIExpression()), !dbg !1592
  br label %326, !dbg !2263

; <label>:877:                                    ; preds = %112
  %878 = icmp eq i32 %114, 69, !dbg !2265
  br i1 %878, label %1013, label %879, !dbg !2267

; <label>:879:                                    ; preds = %877
  call void @llvm.dbg.value(metadata i32 1, metadata !1298, metadata !DIExpression()), !dbg !1601
  %880 = load i32, i32* %36, align 8, !dbg !2268, !tbaa !2183
  call void @llvm.dbg.value(metadata i32 %880, metadata !1299, metadata !DIExpression()), !dbg !1592
  br label %326, !dbg !2268

; <label>:881:                                    ; preds = %112
  switch i32 %114, label %882 [
    i32 69, label %207
    i32 79, label %1013
  ], !dbg !2270

; <label>:882:                                    ; preds = %881
  call void @llvm.dbg.value(metadata i32 4, metadata !1298, metadata !DIExpression()), !dbg !1601
  %883 = load i32, i32* %39, align 4, !dbg !2271, !tbaa !1833
  %884 = icmp slt i32 %883, -1900, !dbg !2271
  %885 = zext i1 %884 to i8, !dbg !2271
  call void @llvm.dbg.value(metadata i8 %885, metadata !1301, metadata !DIExpression()), !dbg !1594
  %886 = add i32 %883, 1900, !dbg !2271
  call void @llvm.dbg.value(metadata i32 %886, metadata !1300, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8* %341, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %340, metadata !1293, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %339, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %338, metadata !1300, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 %337, metadata !1301, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 %335, metadata !1303, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i32 %334, metadata !1311, metadata !DIExpression()), !dbg !1604
  %887 = xor i1 %884, true, !dbg !1872
  br label %346, !dbg !1873

; <label>:888:                                    ; preds = %112
  %889 = icmp eq i32 %114, 69, !dbg !2273
  br i1 %889, label %207, label %890, !dbg !2275

; <label>:890:                                    ; preds = %888
  %891 = load i32, i32* %39, align 4, !dbg !2276, !tbaa !1833
  %892 = srem i32 %891, 100, !dbg !2277
  call void @llvm.dbg.value(metadata i32 %892, metadata !1528, metadata !DIExpression()), !dbg !2278
  %893 = icmp slt i32 %892, 0, !dbg !2279
  br i1 %893, label %894, label %326, !dbg !2281

; <label>:894:                                    ; preds = %890
  %895 = icmp slt i32 %891, -1900, !dbg !2282
  %896 = sub nsw i32 0, %892, !dbg !2283
  %897 = add nsw i32 %892, 100, !dbg !2284
  %898 = select i1 %895, i32 %896, i32 %897, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %898, metadata !1528, metadata !DIExpression()), !dbg !2278
  br label %326, !dbg !2286

; <label>:899:                                    ; preds = %112
  call void @llvm.dbg.value(metadata i32 0, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1592
  %900 = icmp eq i8 %73, 0, !dbg !2287
  %901 = call i64 @strlen(i8* %17) #14, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %901, metadata !1530, metadata !DIExpression()), !dbg !2289
  %902 = icmp sgt i32 %107, 0, !dbg !2289
  %903 = select i1 %902, i32 %107, i32 0, !dbg !2289
  %904 = zext i32 %903 to i64, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %904, metadata !1532, metadata !DIExpression()), !dbg !2289
  %905 = icmp ult i64 %901, %904, !dbg !2289
  %906 = select i1 %905, i64 %904, i64 %901, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %906, metadata !1533, metadata !DIExpression()), !dbg !2289
  %907 = xor i64 %50, -1, !dbg !2290
  %908 = icmp ult i64 %906, %907, !dbg !2290
  br i1 %908, label %909, label %1075, !dbg !2289

; <label>:909:                                    ; preds = %899
  br i1 %27, label %965, label %910, !dbg !2289

; <label>:910:                                    ; preds = %909
  br i1 %905, label %911, label %928, !dbg !2292

; <label>:911:                                    ; preds = %910
  %912 = sext i32 %107 to i64, !dbg !2293
  %913 = sub i64 %912, %901, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %913, metadata !1534, metadata !DIExpression()), !dbg !2293
  %914 = icmp eq i32 %62, 48, !dbg !2294
  %915 = icmp ne i64 %913, 0, !dbg !2295
  br i1 %914, label %917, label %916, !dbg !2293

; <label>:916:                                    ; preds = %911
  call void @llvm.dbg.value(metadata i64 0, metadata !1542, metadata !DIExpression()), !dbg !2298
  br i1 %915, label %923, label %928, !dbg !2299

; <label>:917:                                    ; preds = %911
  call void @llvm.dbg.value(metadata i64 0, metadata !1539, metadata !DIExpression()), !dbg !2301
  br i1 %915, label %918, label %928, !dbg !2302

; <label>:918:                                    ; preds = %917, %918
  %919 = phi i64 [ %921, %918 ], [ 0, %917 ]
  call void @llvm.dbg.value(metadata i64 %919, metadata !1539, metadata !DIExpression()), !dbg !2301
  %920 = call i32 @fputc(i32 48, %struct._IO_FILE* %0), !dbg !2295
  %921 = add nuw i64 %919, 1, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %921, metadata !1539, metadata !DIExpression()), !dbg !2301
  %922 = icmp eq i64 %921, %913, !dbg !2295
  br i1 %922, label %928, label %918, !dbg !2302, !llvm.loop !2303

; <label>:923:                                    ; preds = %916, %923
  %924 = phi i64 [ %926, %923 ], [ 0, %916 ]
  call void @llvm.dbg.value(metadata i64 %924, metadata !1542, metadata !DIExpression()), !dbg !2298
  %925 = call i32 @fputc(i32 32, %struct._IO_FILE* %0), !dbg !2304
  %926 = add nuw i64 %924, 1, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %926, metadata !1542, metadata !DIExpression()), !dbg !2298
  %927 = icmp eq i64 %926, %913, !dbg !2304
  br i1 %927, label %928, label %923, !dbg !2299, !llvm.loop !2306

; <label>:928:                                    ; preds = %923, %918, %916, %917, %910
  br i1 %900, label %945, label %929, !dbg !2307

; <label>:929:                                    ; preds = %928
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1774, metadata !DIExpression()) #11, !dbg !2309
  call void @llvm.dbg.value(metadata i8* %17, metadata !1779, metadata !DIExpression()) #11, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %901, metadata !1780, metadata !DIExpression()) #11, !dbg !2313
  %930 = icmp eq i64 %901, 0, !dbg !2314
  br i1 %930, label %965, label %931, !dbg !2315

; <label>:931:                                    ; preds = %929
  %932 = tail call i32** @__ctype_tolower_loc() #17, !dbg !2316
  br label %933, !dbg !2315

; <label>:933:                                    ; preds = %933, %931
  %934 = phi i8* [ %17, %931 ], [ %943, %933 ]
  %935 = phi i64 [ %901, %931 ], [ %936, %933 ]
  call void @llvm.dbg.value(metadata i8* %934, metadata !1779, metadata !DIExpression()) #11, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %935, metadata !1780, metadata !DIExpression()) #11, !dbg !2313
  %936 = add i64 %935, -1, !dbg !2317
  %937 = load i32*, i32** %932, align 8, !dbg !2316, !tbaa !726
  %938 = load i8, i8* %934, align 1, !dbg !2316, !tbaa !1009
  %939 = zext i8 %938 to i64, !dbg !2316
  %940 = getelementptr inbounds i32, i32* %937, i64 %939, !dbg !2316
  %941 = load i32, i32* %940, align 4, !dbg !2316, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %941, metadata !1781, metadata !DIExpression()) #11, !dbg !2318
  %942 = call i32 @fputc(i32 %941, %struct._IO_FILE* %0) #11, !dbg !2319
  %943 = getelementptr inbounds i8, i8* %934, i64 1, !dbg !2320
  call void @llvm.dbg.value(metadata i8* %943, metadata !1779, metadata !DIExpression()) #11, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %936, metadata !1780, metadata !DIExpression()) #11, !dbg !2313
  %944 = icmp eq i64 %936, 0, !dbg !2314
  br i1 %944, label %965, label %933, !dbg !2315, !llvm.loop !1797

; <label>:945:                                    ; preds = %928
  %946 = icmp eq i8 %69, 0, !dbg !2321
  br i1 %946, label %963, label %947, !dbg !2323

; <label>:947:                                    ; preds = %945
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1803, metadata !DIExpression()) #11, !dbg !2324
  call void @llvm.dbg.value(metadata i8* %17, metadata !1806, metadata !DIExpression()) #11, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %901, metadata !1807, metadata !DIExpression()) #11, !dbg !2327
  %948 = icmp eq i64 %901, 0, !dbg !2328
  br i1 %948, label %965, label %949, !dbg !2329

; <label>:949:                                    ; preds = %947
  %950 = tail call i32** @__ctype_toupper_loc() #17, !dbg !2330
  br label %951, !dbg !2329

; <label>:951:                                    ; preds = %951, %949
  %952 = phi i8* [ %17, %949 ], [ %961, %951 ]
  %953 = phi i64 [ %901, %949 ], [ %954, %951 ]
  call void @llvm.dbg.value(metadata i8* %952, metadata !1806, metadata !DIExpression()) #11, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %953, metadata !1807, metadata !DIExpression()) #11, !dbg !2327
  %954 = add i64 %953, -1, !dbg !2331
  %955 = load i32*, i32** %950, align 8, !dbg !2330, !tbaa !726
  %956 = load i8, i8* %952, align 1, !dbg !2330, !tbaa !1009
  %957 = zext i8 %956 to i64, !dbg !2330
  %958 = getelementptr inbounds i32, i32* %955, i64 %957, !dbg !2330
  %959 = load i32, i32* %958, align 4, !dbg !2330, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %959, metadata !1808, metadata !DIExpression()) #11, !dbg !2332
  %960 = call i32 @fputc(i32 %959, %struct._IO_FILE* %0) #11, !dbg !2333
  %961 = getelementptr inbounds i8, i8* %952, i64 1, !dbg !2334
  call void @llvm.dbg.value(metadata i8* %961, metadata !1806, metadata !DIExpression()) #11, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %954, metadata !1807, metadata !DIExpression()) #11, !dbg !2327
  %962 = icmp eq i64 %954, 0, !dbg !2328
  br i1 %962, label %965, label %951, !dbg !2329, !llvm.loop !1823

; <label>:963:                                    ; preds = %945
  %964 = call i64 @fwrite(i8* %17, i64 %901, i64 1, %struct._IO_FILE* %0), !dbg !2335
  br label %965

; <label>:965:                                    ; preds = %933, %951, %963, %909, %929, %947
  %966 = add i64 %906, %50, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %966, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %1076

; <label>:967:                                    ; preds = %112, %971
  %968 = phi i64 [ %972, %971 ], [ 1, %112 ], !dbg !2337
  call void @llvm.dbg.value(metadata i64 %968, metadata !1314, metadata !DIExpression()), !dbg !2340
  %969 = getelementptr inbounds i8, i8* %115, i64 %968, !dbg !2341
  %970 = load i8, i8* %969, align 1, !dbg !2341, !tbaa !1009
  switch i8 %970, label %1013 [
    i8 58, label %971
    i8 122, label %973
  ], !dbg !2342

; <label>:971:                                    ; preds = %967
  %972 = add i64 %968, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %972, metadata !1314, metadata !DIExpression()), !dbg !2340
  br label %967, !dbg !2344, !llvm.loop !2345

; <label>:973:                                    ; preds = %967
  call void @llvm.dbg.value(metadata i64 %968, metadata !1314, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %968, metadata !1314, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %968, metadata !1314, metadata !DIExpression()), !dbg !2340
  %974 = getelementptr inbounds i8, i8* %115, i64 %968, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %968, metadata !1314, metadata !DIExpression()), !dbg !2340
  br label %975, !dbg !2347

; <label>:975:                                    ; preds = %973, %112
  %976 = phi i64 [ 0, %112 ], [ %968, %973 ], !dbg !2349
  %977 = phi i8* [ %115, %112 ], [ %974, %973 ], !dbg !1708
  call void @llvm.dbg.value(metadata i8* %977, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %976, metadata !1314, metadata !DIExpression()), !dbg !2340
  %978 = load i32, i32* %37, align 8, !dbg !2347, !tbaa !2350
  %979 = icmp slt i32 %978, 0, !dbg !2351
  br i1 %979, label %1076, label %980, !dbg !2352

; <label>:980:                                    ; preds = %975
  %981 = load i64, i64* %45, align 8, !dbg !2353, !tbaa !2354
  %982 = trunc i64 %981 to i32, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %982, metadata !1544, metadata !DIExpression()), !dbg !2356
  %983 = icmp slt i32 %982, 0, !dbg !2357
  br i1 %983, label %989, label %984, !dbg !2358

; <label>:984:                                    ; preds = %980
  %985 = icmp eq i32 %982, 0, !dbg !2359
  br i1 %985, label %986, label %989, !dbg !2360

; <label>:986:                                    ; preds = %984
  %987 = load i8, i8* %17, align 1, !dbg !2361, !tbaa !1009
  %988 = icmp eq i8 %987, 45, !dbg !2362
  br label %989

; <label>:989:                                    ; preds = %984, %986, %980
  %990 = phi i1 [ true, %980 ], [ false, %984 ], [ %988, %986 ]
  %991 = zext i1 %990 to i8, !dbg !2363
  call void @llvm.dbg.value(metadata i8 %991, metadata !1301, metadata !DIExpression()), !dbg !1594
  %992 = sdiv i32 %982, 60, !dbg !2364
  %993 = sdiv i32 %982, 3600, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %993, metadata !1546, metadata !DIExpression()), !dbg !2366
  %994 = srem i32 %992, 60, !dbg !2367
  call void @llvm.dbg.value(metadata i32 %994, metadata !1547, metadata !DIExpression()), !dbg !2368
  %995 = srem i32 %982, 60, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %995, metadata !1548, metadata !DIExpression()), !dbg !2370
  switch i64 %976, label %1013 [
    i64 0, label %996
    i64 1, label %999
    i64 2, label %1002
    i64 3, label %1007
  ], !dbg !2371

; <label>:996:                                    ; preds = %989
  call void @llvm.dbg.value(metadata i32 5, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1595
  %997 = mul nsw i32 %993, 100, !dbg !2372
  %998 = add nsw i32 %997, %994, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %998, metadata !1300, metadata !DIExpression()), !dbg !1593
  br label %333, !dbg !2372

; <label>:999:                                    ; preds = %1009, %989
  call void @llvm.dbg.value(metadata i32 6, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 4, metadata !1303, metadata !DIExpression()), !dbg !1595
  %1000 = mul nsw i32 %993, 100, !dbg !2375
  %1001 = add nsw i32 %1000, %994, !dbg !2375
  call void @llvm.dbg.value(metadata i32 %1001, metadata !1300, metadata !DIExpression()), !dbg !1593
  br label %333, !dbg !2375

; <label>:1002:                                   ; preds = %1007, %989
  call void @llvm.dbg.value(metadata i32 9, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 20, metadata !1303, metadata !DIExpression()), !dbg !1595
  %1003 = mul nsw i32 %993, 10000, !dbg !2377
  %1004 = mul nsw i32 %994, 100, !dbg !2377
  %1005 = add i32 %1003, %995, !dbg !2377
  %1006 = add i32 %1005, %1004, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %1006, metadata !1300, metadata !DIExpression()), !dbg !1593
  br label %333, !dbg !2377

; <label>:1007:                                   ; preds = %989
  %1008 = icmp eq i32 %995, 0, !dbg !2379
  br i1 %1008, label %1009, label %1002, !dbg !2381

; <label>:1009:                                   ; preds = %1007
  %1010 = icmp eq i32 %994, 0, !dbg !2382
  br i1 %1010, label %333, label %999, !dbg !2384

; <label>:1011:                                   ; preds = %112
  %1012 = getelementptr inbounds i8, i8* %115, i64 -1, !dbg !2385
  call void @llvm.dbg.value(metadata i8* %1012, metadata !1292, metadata !DIExpression()), !dbg !1591
  br label %1013, !dbg !2386

; <label>:1013:                                   ; preds = %967, %989, %881, %117, %152, %157, %313, %629, %1011, %112, %877, %867, %788, %780, %741, %716, %661, %654, %650, %643, %641, %637, %635, %631, %319, %315, %311, %171, %166, %162
  %1014 = phi i8 [ %69, %112 ], [ %69, %1011 ], [ %69, %877 ], [ %69, %867 ], [ %69, %788 ], [ %69, %780 ], [ %69, %741 ], [ %69, %716 ], [ %69, %661 ], [ %69, %654 ], [ %69, %650 ], [ %69, %643 ], [ %69, %641 ], [ %69, %637 ], [ %69, %635 ], [ %69, %631 ], [ %69, %629 ], [ %69, %319 ], [ %69, %315 ], [ %69, %313 ], [ %69, %311 ], [ %69, %171 ], [ %69, %166 ], [ %164, %162 ], [ %69, %157 ], [ %69, %152 ], [ %69, %117 ], [ %69, %881 ], [ %69, %989 ], [ %69, %967 ], !dbg !1651
  %1015 = phi i8* [ %115, %112 ], [ %1012, %1011 ], [ %115, %877 ], [ %115, %867 ], [ %115, %788 ], [ %115, %780 ], [ %115, %741 ], [ %115, %716 ], [ %115, %661 ], [ %115, %654 ], [ %115, %650 ], [ %115, %643 ], [ %115, %641 ], [ %115, %637 ], [ %115, %635 ], [ %115, %631 ], [ %115, %629 ], [ %115, %319 ], [ %115, %315 ], [ %115, %313 ], [ %115, %311 ], [ %115, %171 ], [ %115, %166 ], [ %115, %162 ], [ %115, %157 ], [ %115, %152 ], [ %115, %117 ], [ %115, %881 ], [ %977, %989 ], [ %115, %967 ], !dbg !1631
  call void @llvm.dbg.value(metadata i8* %1015, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 0, metadata !1298, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8 0, metadata !1312, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 %1014, metadata !1313, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i32 1, metadata !1549, metadata !DIExpression()), !dbg !2387
  br label %1016, !dbg !2388

; <label>:1016:                                   ; preds = %1016, %1013
  %1017 = phi i64 [ %1022, %1016 ], [ 1, %1013 ], !dbg !2390
  call void @llvm.dbg.value(metadata i64 %1017, metadata !1549, metadata !DIExpression()), !dbg !2387
  %1018 = sub nsw i64 1, %1017, !dbg !2392
  %1019 = getelementptr inbounds i8, i8* %1015, i64 %1018, !dbg !2393
  %1020 = load i8, i8* %1019, align 1, !dbg !2393, !tbaa !1009
  %1021 = icmp eq i8 %1020, 37, !dbg !2394
  %1022 = add nuw i64 %1017, 1, !dbg !2395
  call void @llvm.dbg.value(metadata i32 undef, metadata !1549, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2387
  br i1 %1021, label %1023, label %1016, !dbg !2396, !llvm.loop !2397

; <label>:1023:                                   ; preds = %1016
  call void @llvm.dbg.value(metadata i64 %1017, metadata !1549, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i64 %1017, metadata !1549, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i64 %1017, metadata !1549, metadata !DIExpression()), !dbg !2387
  %1024 = getelementptr inbounds i8, i8* %1015, i64 %1018, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %1017, metadata !1549, metadata !DIExpression()), !dbg !2387
  %1025 = trunc i64 %1017 to i32, !dbg !2387
  call void @llvm.dbg.value(metadata i32 %1025, metadata !1549, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i64 %1017, metadata !1549, metadata !DIExpression()), !dbg !2387
  %1026 = and i64 %1017, 4294967295, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %1026, metadata !1551, metadata !DIExpression()), !dbg !2399
  %1027 = icmp sgt i32 %107, 0, !dbg !2399
  %1028 = select i1 %1027, i32 %107, i32 0, !dbg !2399
  %1029 = icmp ugt i32 %1028, %1025, !dbg !2399
  %1030 = icmp ult i32 %1028, %1025, !dbg !2399
  %1031 = select i1 %1030, i32 %1025, i32 %1028, !dbg !2399
  %1032 = zext i32 %1031 to i64, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %1032, metadata !1554, metadata !DIExpression()), !dbg !2399
  %1033 = xor i64 %50, -1, !dbg !2400
  %1034 = icmp ult i64 %1032, %1033, !dbg !2400
  br i1 %1034, label %1035, label %1075, !dbg !2399

; <label>:1035:                                   ; preds = %1023
  br i1 %27, label %1073, label %1036, !dbg !2399

; <label>:1036:                                   ; preds = %1035
  br i1 %1029, label %1037, label %1054, !dbg !2402

; <label>:1037:                                   ; preds = %1036
  %1038 = sext i32 %107 to i64, !dbg !2403
  %1039 = sub nsw i64 %1038, %1026, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %1039, metadata !1555, metadata !DIExpression()), !dbg !2403
  %1040 = icmp eq i32 %62, 48, !dbg !2404
  %1041 = icmp ne i64 %1039, 0, !dbg !2405
  br i1 %1040, label %1043, label %1042, !dbg !2403

; <label>:1042:                                   ; preds = %1037
  call void @llvm.dbg.value(metadata i64 0, metadata !1563, metadata !DIExpression()), !dbg !2408
  br i1 %1041, label %1049, label %1054, !dbg !2409

; <label>:1043:                                   ; preds = %1037
  call void @llvm.dbg.value(metadata i64 0, metadata !1560, metadata !DIExpression()), !dbg !2411
  br i1 %1041, label %1044, label %1054, !dbg !2412

; <label>:1044:                                   ; preds = %1043, %1044
  %1045 = phi i64 [ %1047, %1044 ], [ 0, %1043 ]
  call void @llvm.dbg.value(metadata i64 %1045, metadata !1560, metadata !DIExpression()), !dbg !2411
  %1046 = call i32 @fputc(i32 48, %struct._IO_FILE* %0), !dbg !2405
  %1047 = add nuw i64 %1045, 1, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %1047, metadata !1560, metadata !DIExpression()), !dbg !2411
  %1048 = icmp eq i64 %1047, %1039, !dbg !2405
  br i1 %1048, label %1054, label %1044, !dbg !2412, !llvm.loop !2413

; <label>:1049:                                   ; preds = %1042, %1049
  %1050 = phi i64 [ %1052, %1049 ], [ 0, %1042 ]
  call void @llvm.dbg.value(metadata i64 %1050, metadata !1563, metadata !DIExpression()), !dbg !2408
  %1051 = call i32 @fputc(i32 32, %struct._IO_FILE* %0), !dbg !2414
  %1052 = add nuw i64 %1050, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %1052, metadata !1563, metadata !DIExpression()), !dbg !2408
  %1053 = icmp eq i64 %1052, %1039, !dbg !2414
  br i1 %1053, label %1054, label %1049, !dbg !2409, !llvm.loop !2416

; <label>:1054:                                   ; preds = %1049, %1044, %1042, %1043, %1036
  %1055 = and i8 %1014, 1, !dbg !2417
  %1056 = icmp eq i8 %1055, 0, !dbg !2417
  br i1 %1056, label %1071, label %1057, !dbg !2421

; <label>:1057:                                   ; preds = %1054
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1803, metadata !DIExpression()) #11, !dbg !2422
  call void @llvm.dbg.value(metadata i8* %1019, metadata !1806, metadata !DIExpression()) #11, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %1026, metadata !1807, metadata !DIExpression()) #11, !dbg !2425
  %1058 = tail call i32** @__ctype_toupper_loc() #17, !dbg !2426
  br label %1059, !dbg !2427

; <label>:1059:                                   ; preds = %1059, %1057
  %1060 = phi i8* [ %1024, %1057 ], [ %1069, %1059 ]
  %1061 = phi i64 [ %1026, %1057 ], [ %1062, %1059 ]
  call void @llvm.dbg.value(metadata i8* %1060, metadata !1806, metadata !DIExpression()) #11, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %1061, metadata !1807, metadata !DIExpression()) #11, !dbg !2425
  %1062 = add i64 %1061, -1, !dbg !2428
  %1063 = load i32*, i32** %1058, align 8, !dbg !2426, !tbaa !726
  %1064 = load i8, i8* %1060, align 1, !dbg !2426, !tbaa !1009
  %1065 = zext i8 %1064 to i64, !dbg !2426
  %1066 = getelementptr inbounds i32, i32* %1063, i64 %1065, !dbg !2426
  %1067 = load i32, i32* %1066, align 4, !dbg !2426, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %1067, metadata !1808, metadata !DIExpression()) #11, !dbg !2429
  %1068 = call i32 @fputc(i32 %1067, %struct._IO_FILE* %0) #11, !dbg !2430
  %1069 = getelementptr inbounds i8, i8* %1060, i64 1, !dbg !2431
  call void @llvm.dbg.value(metadata i8* %1069, metadata !1806, metadata !DIExpression()) #11, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %1062, metadata !1807, metadata !DIExpression()) #11, !dbg !2425
  %1070 = icmp eq i64 %1062, 0, !dbg !2432
  br i1 %1070, label %1073, label %1059, !dbg !2427, !llvm.loop !1823

; <label>:1071:                                   ; preds = %1054
  %1072 = call i64 @fwrite(i8* %1024, i64 %1026, i64 1, %struct._IO_FILE* %0), !dbg !2433
  br label %1073

; <label>:1073:                                   ; preds = %1059, %1071, %1035
  %1074 = add i64 %50, %1032, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %1074, metadata !1290, metadata !DIExpression()), !dbg !1576
  br label %1076

; <label>:1075:                                   ; preds = %53, %119, %173, %395, %434, %480, %455, %484, %533, %574, %673, %744, %899, %1023, %296
  call void @llvm.dbg.value(metadata i8* %1077, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.lifetime.end.p0i8(i64 23, i8* nonnull %26) #11, !dbg !2435
  br label %1082

; <label>:1076:                                   ; preds = %59, %1073, %965, %773, %702, %627, %294, %205, %150, %975
  %1077 = phi i8* [ %51, %59 ], [ %977, %975 ], [ %115, %150 ], [ %115, %205 ], [ %214, %294 ], [ %385, %627 ], [ %115, %702 ], [ %115, %773 ], [ %115, %965 ], [ %1015, %1073 ], !dbg !1631
  %1078 = phi i64 [ %60, %59 ], [ %50, %975 ], [ %151, %150 ], [ %206, %205 ], [ %295, %294 ], [ %628, %627 ], [ %703, %702 ], [ %774, %773 ], [ %966, %965 ], [ %1074, %1073 ], !dbg !1576
  call void @llvm.dbg.value(metadata i8* %1077, metadata !1292, metadata !DIExpression()), !dbg !1591
  call void @llvm.lifetime.end.p0i8(i64 23, i8* nonnull %26) #11, !dbg !2435
  %1079 = getelementptr inbounds i8, i8* %1077, i64 1, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %1078, metadata !1290, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %1079, metadata !1292, metadata !DIExpression()), !dbg !1591
  %1080 = load i8, i8* %1079, align 1, !dbg !1596, !tbaa !1009
  %1081 = icmp eq i8 %1080, 0, !dbg !1597
  br i1 %1081, label %1082, label %48, !dbg !1598, !llvm.loop !2437

; <label>:1082:                                   ; preds = %1076, %6, %1075
  %1083 = phi i64 [ 0, %1075 ], [ 0, %6 ], [ %1078, %1076 ], !dbg !2439
  ret i64 %1083, !dbg !2440
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !2441 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2446, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8** %1, metadata !2447, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8* %2, metadata !2448, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %3, metadata !2449, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %4, metadata !2450, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !2451, metadata !DIExpression()), !dbg !2476
  %8 = load i32, i32* @opterr, align 4, !dbg !2477, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %8, metadata !2453, metadata !DIExpression()), !dbg !2478
  store i32 0, i32* @opterr, align 4, !dbg !2479, !tbaa !794
  %9 = icmp eq i32 %0, 2, !dbg !2480
  br i1 %9, label %10, label %17, !dbg !2481

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options.68, i64 0, i64 0), i32* null) #11, !dbg !2482
  call void @llvm.dbg.value(metadata i32 %11, metadata !2452, metadata !DIExpression()), !dbg !2483
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !2484

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #11, !dbg !2485
  br label %17, !dbg !2486

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !2487
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #11, !dbg !2487
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !2454, metadata !DIExpression()), !dbg !2488
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !2489
  call void @llvm.va_start(i8* nonnull %14), !dbg !2489
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2490, !tbaa !726
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #11, !dbg !2491
  call void @exit(i32 0) #15, !dbg !2492
  unreachable, !dbg !2492

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !2493, !tbaa !794
  store i32 0, i32* @optind, align 4, !dbg !2494, !tbaa !794
  ret void, !dbg !2495
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !2496 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2498, metadata !DIExpression()), !dbg !2501
  %2 = icmp eq i8* %0, null, !dbg !2502
  br i1 %2, label %3, label %6, !dbg !2504

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2505, !tbaa !726
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2507
  tail call void @abort() #15, !dbg !2508
  unreachable, !dbg !2508

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2509
  call void @llvm.dbg.value(metadata i8* %7, metadata !2499, metadata !DIExpression()), !dbg !2510
  %8 = icmp eq i8* %7, null, !dbg !2511
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2512
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2513
  call void @llvm.dbg.value(metadata i8* %10, metadata !2500, metadata !DIExpression()), !dbg !2514
  %11 = ptrtoint i8* %10 to i64, !dbg !2515
  %12 = ptrtoint i8* %0 to i64, !dbg !2515
  %13 = sub i64 %11, %12, !dbg !2515
  %14 = icmp sgt i64 %13, 6, !dbg !2517
  br i1 %14, label %15, label %24, !dbg !2518

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2519
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.76, i64 0, i64 0), i64 7) #14, !dbg !2520
  %18 = icmp eq i32 %17, 0, !dbg !2521
  br i1 %18, label %19, label %24, !dbg !2522

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2498, metadata !DIExpression()), !dbg !2501
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.77, i64 0, i64 0), i64 3) #14, !dbg !2523
  %21 = icmp eq i32 %20, 0, !dbg !2526
  br i1 %21, label %22, label %24, !dbg !2527

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2528
  call void @llvm.dbg.value(metadata i8* %23, metadata !2498, metadata !DIExpression()), !dbg !2501
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2530, !tbaa !726
  br label %24, !dbg !2531

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2498, metadata !DIExpression()), !dbg !2501
  store i8* %25, i8** @program_name, align 8, !dbg !2532, !tbaa !726
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2533, !tbaa !726
  ret void, !dbg !2534
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !2535 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2540, metadata !DIExpression()), !dbg !2543
  %2 = tail call i32* @__errno_location() #17, !dbg !2544
  %3 = load i32, i32* %2, align 4, !dbg !2544, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %3, metadata !2541, metadata !DIExpression()), !dbg !2545
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2546
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2546
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2546
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !2547
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2542, metadata !DIExpression()), !dbg !2548
  store i32 %3, i32* %2, align 4, !dbg !2549, !tbaa !794
  ret %struct.quoting_options* %8, !dbg !2550
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !2551 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2557, metadata !DIExpression()), !dbg !2558
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2559
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2559
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2560
  %5 = load i32, i32* %4, align 8, !dbg !2560, !tbaa !2561
  ret i32 %5, !dbg !2563
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2564 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2568, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i32 %1, metadata !2569, metadata !DIExpression()), !dbg !2571
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2572
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2572
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2573
  store i32 %1, i32* %5, align 8, !dbg !2574, !tbaa !2561
  ret void, !dbg !2575
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !2576 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2580, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %1, metadata !2581, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 %2, metadata !2582, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i8 %1, metadata !2583, metadata !DIExpression()), !dbg !2591
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2592
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2592
  %6 = lshr i8 %1, 5, !dbg !2593
  %7 = zext i8 %6 to i64, !dbg !2593
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2594
  call void @llvm.dbg.value(metadata i32* %8, metadata !2584, metadata !DIExpression()), !dbg !2595
  %9 = and i8 %1, 31, !dbg !2596
  %10 = zext i8 %9 to i32, !dbg !2596
  call void @llvm.dbg.value(metadata i32 %10, metadata !2586, metadata !DIExpression()), !dbg !2597
  %11 = load i32, i32* %8, align 4, !dbg !2598, !tbaa !794
  %12 = lshr i32 %11, %10, !dbg !2599
  %13 = and i32 %12, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %13, metadata !2587, metadata !DIExpression()), !dbg !2601
  %14 = and i32 %2, 1, !dbg !2602
  %15 = xor i32 %13, %14, !dbg !2603
  %16 = shl i32 %15, %10, !dbg !2604
  %17 = xor i32 %16, %11, !dbg !2605
  store i32 %17, i32* %8, align 4, !dbg !2605, !tbaa !794
  ret i32 %13, !dbg !2606
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2607 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2611, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %1, metadata !2612, metadata !DIExpression()), !dbg !2615
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2616
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2618
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2611, metadata !DIExpression()), !dbg !2614
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2619
  %6 = load i32, i32* %5, align 4, !dbg !2619, !tbaa !2620
  call void @llvm.dbg.value(metadata i32 %6, metadata !2613, metadata !DIExpression()), !dbg !2621
  store i32 %1, i32* %5, align 4, !dbg !2622, !tbaa !2620
  ret i32 %6, !dbg !2623
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !2624 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %1, metadata !2629, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8* %2, metadata !2630, metadata !DIExpression()), !dbg !2633
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2634
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2636
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2628, metadata !DIExpression()), !dbg !2631
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2637
  store i32 10, i32* %6, align 8, !dbg !2638, !tbaa !2561
  %7 = icmp ne i8* %1, null, !dbg !2639
  %8 = icmp ne i8* %2, null, !dbg !2641
  %9 = and i1 %7, %8, !dbg !2642
  br i1 %9, label %11, label %10, !dbg !2642

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2643
  unreachable, !dbg !2643

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2644
  store i8* %1, i8** %12, align 8, !dbg !2645, !tbaa !2646
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2647
  store i8* %2, i8** %13, align 8, !dbg !2648, !tbaa !2649
  ret void, !dbg !2650
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2651 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2655, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %1, metadata !2656, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %2, metadata !2657, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %3, metadata !2658, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2659, metadata !DIExpression()), !dbg !2667
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2668
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2668
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2660, metadata !DIExpression()), !dbg !2669
  %8 = tail call i32* @__errno_location() #17, !dbg !2670
  %9 = load i32, i32* %8, align 4, !dbg !2670, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %9, metadata !2661, metadata !DIExpression()), !dbg !2671
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2672
  %11 = load i32, i32* %10, align 8, !dbg !2672, !tbaa !2561
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2673
  %13 = load i32, i32* %12, align 4, !dbg !2673, !tbaa !2620
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2674
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2675
  %16 = load i8*, i8** %15, align 8, !dbg !2675, !tbaa !2646
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2676
  %18 = load i8*, i8** %17, align 8, !dbg !2676, !tbaa !2649
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2677
  call void @llvm.dbg.value(metadata i64 %19, metadata !2662, metadata !DIExpression()), !dbg !2678
  store i32 %9, i32* %8, align 4, !dbg !2679, !tbaa !794
  ret i64 %19, !dbg !2680
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2681 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2687, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %1, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8* %2, metadata !2689, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 %3, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 %4, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %5, metadata !2692, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32* %6, metadata !2693, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %7, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %8, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 0, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 0, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* null, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 0, metadata !2700, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8 0, metadata !2701, metadata !DIExpression()), !dbg !2761
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2762
  %14 = icmp eq i64 %13, 1, !dbg !2763
  %15 = lshr i32 %5, 1, !dbg !2764
  %16 = trunc i32 %15 to i8, !dbg !2764
  %17 = and i8 %16, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i8 %17, metadata !2703, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 0, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 0, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 1, metadata !2706, metadata !DIExpression()), !dbg !2767
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2768

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2758
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2759
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2760
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2761
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2769
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2765
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2766
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2767
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %39, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %38, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %37, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %36, metadata !2703, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %35, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 %34, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %33, metadata !2700, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %32, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %31, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 0, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8* %30, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %29, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 %28, metadata !2691, metadata !DIExpression()), !dbg !2752
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
  ], !dbg !2771

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 1, metadata !2703, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %36, metadata !2703, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 5, metadata !2691, metadata !DIExpression()), !dbg !2752
  br label %93, !dbg !2772

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2703, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 5, metadata !2691, metadata !DIExpression()), !dbg !2752
  %43 = and i8 %36, 1, !dbg !2773
  %44 = icmp eq i8 %43, 0, !dbg !2773
  br i1 %44, label %45, label %93, !dbg !2772

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2775
  br i1 %46, label %93, label %47, !dbg !2778

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2775, !tbaa !1009
  br label %93, !dbg !2775

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), i32 %28), !dbg !2779
  call void @llvm.dbg.value(metadata i8* %49, metadata !2694, metadata !DIExpression()), !dbg !2755
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), i32 %28), !dbg !2783
  call void @llvm.dbg.value(metadata i8* %50, metadata !2695, metadata !DIExpression()), !dbg !2756
  br label %51, !dbg !2784

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %52, metadata !2694, metadata !DIExpression()), !dbg !2755
  %54 = and i8 %36, 1, !dbg !2785
  %55 = icmp eq i8 %54, 0, !dbg !2785
  br i1 %55, label %56, label %71, !dbg !2787

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 0, metadata !2697, metadata !DIExpression()), !dbg !2757
  %57 = load i8, i8* %52, align 1, !dbg !2788, !tbaa !1009
  %58 = icmp eq i8 %57, 0, !dbg !2791
  br i1 %58, label %71, label %59, !dbg !2791

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %62, metadata !2697, metadata !DIExpression()), !dbg !2757
  %63 = icmp ult i64 %62, %40, !dbg !2792
  br i1 %63, label %64, label %66, !dbg !2795

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2792
  store i8 %60, i8* %65, align 1, !dbg !2792, !tbaa !1009
  br label %66, !dbg !2792

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2795
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2796
  call void @llvm.dbg.value(metadata i8* %68, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %67, metadata !2697, metadata !DIExpression()), !dbg !2757
  %69 = load i8, i8* %68, align 1, !dbg !2788, !tbaa !1009
  %70 = icmp eq i8 %69, 0, !dbg !2791
  br i1 %70, label %71, label %59, !dbg !2791, !llvm.loop !2797

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2757
  call void @llvm.dbg.value(metadata i64 %72, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8 1, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %53, metadata !2699, metadata !DIExpression()), !dbg !2759
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2799
  call void @llvm.dbg.value(metadata i64 %73, metadata !2700, metadata !DIExpression()), !dbg !2760
  br label %93, !dbg !2800

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2701, metadata !DIExpression()), !dbg !2761
  br label %75, !dbg !2801

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2769
  call void @llvm.dbg.value(metadata i8 %76, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 1, metadata !2703, metadata !DIExpression()), !dbg !2764
  br label %77, !dbg !2802

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2761
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2769
  call void @llvm.dbg.value(metadata i8 %79, metadata !2703, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %78, metadata !2701, metadata !DIExpression()), !dbg !2761
  %80 = and i8 %79, 1, !dbg !2803
  %81 = icmp eq i8 %80, 0, !dbg !2803
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2805
  br label %83, !dbg !2805

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2806
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2764
  call void @llvm.dbg.value(metadata i8 %85, metadata !2703, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %84, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, metadata !2691, metadata !DIExpression()), !dbg !2752
  %86 = and i8 %85, 1, !dbg !2807
  %87 = icmp eq i8 %86, 0, !dbg !2807
  br i1 %87, label %88, label %93, !dbg !2809

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2810
  br i1 %89, label %93, label %90, !dbg !2813

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2810, !tbaa !1009
  br label %93, !dbg !2810

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2703, metadata !DIExpression()), !dbg !2764
  br label %93, !dbg !2814

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2815
  unreachable, !dbg !2815

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2757
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %41 ], !dbg !2769
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2769
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2769
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2816
  call void @llvm.dbg.value(metadata i8 %101, metadata !2703, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %100, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %99, metadata !2700, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %97, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 %94, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i64 0, metadata !2696, metadata !DIExpression()), !dbg !2817
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
  br label %121, !dbg !2818

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2819
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2757
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2758
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2765
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2766
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2767
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %125, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %122, metadata !2696, metadata !DIExpression()), !dbg !2817
  %130 = icmp eq i64 %125, -1, !dbg !2820
  br i1 %130, label %131, label %135, !dbg !2821

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2822
  %133 = load i8, i8* %132, align 1, !dbg !2822, !tbaa !1009
  %134 = icmp eq i8 %133, 0, !dbg !2823
  br i1 %134, label %617, label %137, !dbg !2824

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2825
  br i1 %136, label %617, label %137, !dbg !2824

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2712, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 0, metadata !2713, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 0, metadata !2714, metadata !DIExpression()), !dbg !2828
  br i1 %107, label %138, label %153, !dbg !2829

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2831
  %140 = and i1 %108, %130, !dbg !2832
  br i1 %140, label %141, label %143, !dbg !2832

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %142, metadata !2690, metadata !DIExpression()), !dbg !2751
  br label %143, !dbg !2834

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2690, metadata !DIExpression()), !dbg !2751
  %145 = icmp ugt i64 %139, %144, !dbg !2835
  br i1 %145, label %153, label %146, !dbg !2836

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2837
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2838
  %149 = icmp ne i32 %148, 0, !dbg !2839
  %150 = or i1 %149, %110, !dbg !2840
  %151 = xor i1 %149, true, !dbg !2840
  %152 = zext i1 %151 to i8, !dbg !2840
  br i1 %150, label %153, label %661, !dbg !2840

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2841
  call void @llvm.dbg.value(metadata i8 %155, metadata !2712, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %154, metadata !2690, metadata !DIExpression()), !dbg !2751
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2842
  %157 = load i8, i8* %156, align 1, !dbg !2842, !tbaa !1009
  call void @llvm.dbg.value(metadata i8 %157, metadata !2707, metadata !DIExpression()), !dbg !2843
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
  ], !dbg !2844

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2845

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2846

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2713, metadata !DIExpression()), !dbg !2827
  %161 = and i8 %126, 1, !dbg !2850
  %162 = icmp eq i8 %161, 0, !dbg !2850
  %163 = and i1 %114, %162, !dbg !2850
  br i1 %163, label %164, label %180, !dbg !2850

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2852
  br i1 %165, label %166, label %168, !dbg !2856

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2852
  store i8 39, i8* %167, align 1, !dbg !2852, !tbaa !1009
  br label %168, !dbg !2852

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2856
  call void @llvm.dbg.value(metadata i64 %169, metadata !2697, metadata !DIExpression()), !dbg !2757
  %170 = icmp ult i64 %169, %129, !dbg !2857
  br i1 %170, label %171, label %173, !dbg !2860

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2857
  store i8 36, i8* %172, align 1, !dbg !2857, !tbaa !1009
  br label %173, !dbg !2857

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %174, metadata !2697, metadata !DIExpression()), !dbg !2757
  %175 = icmp ult i64 %174, %129, !dbg !2861
  br i1 %175, label %176, label %178, !dbg !2864

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2861
  store i8 39, i8* %177, align 1, !dbg !2861, !tbaa !1009
  br label %178, !dbg !2861

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %179, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8 1, metadata !2704, metadata !DIExpression()), !dbg !2765
  br label %180, !dbg !2865

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2816
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2816
  call void @llvm.dbg.value(metadata i8 %182, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %181, metadata !2697, metadata !DIExpression()), !dbg !2757
  %183 = icmp ult i64 %181, %129, !dbg !2866
  br i1 %183, label %184, label %186, !dbg !2869

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2866
  store i8 92, i8* %185, align 1, !dbg !2866, !tbaa !1009
  br label %186, !dbg !2866

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2869
  call void @llvm.dbg.value(metadata i64 %187, metadata !2697, metadata !DIExpression()), !dbg !2757
  br i1 %104, label %188, label %478, !dbg !2870

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2872
  %190 = icmp ult i64 %189, %154, !dbg !2873
  br i1 %190, label %191, label %467, !dbg !2874

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2875
  %193 = load i8, i8* %192, align 1, !dbg !2875, !tbaa !1009
  %194 = add i8 %193, -48, !dbg !2876
  %195 = icmp ult i8 %194, 10, !dbg !2876
  br i1 %195, label %196, label %467, !dbg !2876

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2877
  br i1 %197, label %198, label %200, !dbg !2881

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2877
  store i8 48, i8* %199, align 1, !dbg !2877, !tbaa !1009
  br label %200, !dbg !2877

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %201, metadata !2697, metadata !DIExpression()), !dbg !2757
  %202 = icmp ult i64 %201, %129, !dbg !2882
  br i1 %202, label %203, label %205, !dbg !2885

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2882
  store i8 48, i8* %204, align 1, !dbg !2882, !tbaa !1009
  br label %205, !dbg !2882

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %206, metadata !2697, metadata !DIExpression()), !dbg !2757
  br label %467, !dbg !2886

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2887

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2888

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2889

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2891

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2893
  %213 = icmp ult i64 %212, %154, !dbg !2894
  br i1 %213, label %214, label %467, !dbg !2895

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2896
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2897
  %217 = load i8, i8* %216, align 1, !dbg !2897, !tbaa !1009
  %218 = icmp eq i8 %217, 63, !dbg !2898
  br i1 %218, label %219, label %467, !dbg !2899

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2900
  %221 = load i8, i8* %220, align 1, !dbg !2900, !tbaa !1009
  %222 = sext i8 %221 to i32, !dbg !2900
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
  ], !dbg !2901

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2902

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2707, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %212, metadata !2696, metadata !DIExpression()), !dbg !2817
  %225 = icmp ult i64 %123, %129, !dbg !2904
  br i1 %225, label %226, label %228, !dbg !2907

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2904
  store i8 63, i8* %227, align 1, !dbg !2904, !tbaa !1009
  br label %228, !dbg !2904

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %229, metadata !2697, metadata !DIExpression()), !dbg !2757
  %230 = icmp ult i64 %229, %129, !dbg !2908
  br i1 %230, label %231, label %233, !dbg !2911

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2908
  store i8 34, i8* %232, align 1, !dbg !2908, !tbaa !1009
  br label %233, !dbg !2908

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %234, metadata !2697, metadata !DIExpression()), !dbg !2757
  %235 = icmp ult i64 %234, %129, !dbg !2912
  br i1 %235, label %236, label %238, !dbg !2915

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2912
  store i8 34, i8* %237, align 1, !dbg !2912, !tbaa !1009
  br label %238, !dbg !2912

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2915
  call void @llvm.dbg.value(metadata i64 %239, metadata !2697, metadata !DIExpression()), !dbg !2757
  %240 = icmp ult i64 %239, %129, !dbg !2916
  br i1 %240, label %241, label %243, !dbg !2919

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2916
  store i8 63, i8* %242, align 1, !dbg !2916, !tbaa !1009
  br label %243, !dbg !2916

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %244, metadata !2697, metadata !DIExpression()), !dbg !2757
  br label %467, !dbg !2920

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2711, metadata !DIExpression()), !dbg !2921
  br label %255, !dbg !2922

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2711, metadata !DIExpression()), !dbg !2921
  br label %255, !dbg !2923

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2711, metadata !DIExpression()), !dbg !2921
  br label %253, !dbg !2924

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2711, metadata !DIExpression()), !dbg !2921
  br label %253, !dbg !2925

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2711, metadata !DIExpression()), !dbg !2921
  br label %255, !dbg !2926

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2711, metadata !DIExpression()), !dbg !2921
  br i1 %114, label %251, label %252, !dbg !2927

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2928

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2931

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2933
  call void @llvm.dbg.value(metadata i8 %254, metadata !2711, metadata !DIExpression()), !dbg !2921
  br i1 %113, label %255, label %661, !dbg !2934

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2933
  call void @llvm.dbg.value(metadata i8 %256, metadata !2711, metadata !DIExpression()), !dbg !2921
  br i1 %103, label %524, label %478, !dbg !2936

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2937
  br i1 %258, label %259, label %264, !dbg !2939

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2940, !tbaa !1009
  %261 = icmp ne i8 %260, 0, !dbg !2941
  %262 = icmp ne i64 %122, 0, !dbg !2942
  %263 = or i1 %262, %261, !dbg !2944
  br i1 %263, label %467, label %270, !dbg !2944

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2945
  %266 = icmp ne i64 %122, 0, !dbg !2942
  %267 = or i1 %266, %265, !dbg !2939
  br i1 %267, label %467, label %270, !dbg !2939

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2942
  br i1 %269, label %270, label %467, !dbg !2946

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2714, metadata !DIExpression()), !dbg !2828
  br label %271, !dbg !2947

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2933
  call void @llvm.dbg.value(metadata i8 %272, metadata !2714, metadata !DIExpression()), !dbg !2828
  br i1 %113, label %467, label %661, !dbg !2948

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 1, metadata !2714, metadata !DIExpression()), !dbg !2828
  br i1 %114, label %274, label %467, !dbg !2950

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2951

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2954
  %277 = icmp ne i64 %124, 0, !dbg !2956
  %278 = or i1 %277, %276, !dbg !2957
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2957
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %280, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %279, metadata !2698, metadata !DIExpression()), !dbg !2758
  %281 = icmp ult i64 %123, %280, !dbg !2958
  br i1 %281, label %282, label %284, !dbg !2961

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2958
  store i8 39, i8* %283, align 1, !dbg !2958, !tbaa !1009
  br label %284, !dbg !2958

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %285, metadata !2697, metadata !DIExpression()), !dbg !2757
  %286 = icmp ult i64 %285, %280, !dbg !2962
  br i1 %286, label %287, label %289, !dbg !2965

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2962
  store i8 92, i8* %288, align 1, !dbg !2962, !tbaa !1009
  br label %289, !dbg !2962

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2965
  call void @llvm.dbg.value(metadata i64 %290, metadata !2697, metadata !DIExpression()), !dbg !2757
  %291 = icmp ult i64 %290, %280, !dbg !2966
  br i1 %291, label %292, label %294, !dbg !2969

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2966
  store i8 39, i8* %293, align 1, !dbg !2966, !tbaa !1009
  br label %294, !dbg !2966

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %295, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8 0, metadata !2704, metadata !DIExpression()), !dbg !2765
  br label %467, !dbg !2970

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2971

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2715, metadata !DIExpression()), !dbg !2972
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2973
  %299 = load i16*, i16** %298, align 8, !dbg !2973, !tbaa !726
  %300 = zext i8 %157 to i64, !dbg !2973
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2973
  %302 = load i16, i16* %301, align 2, !dbg !2973, !tbaa !2975
  %303 = lshr i16 %302, 14, !dbg !2976
  %304 = trunc i16 %303 to i8, !dbg !2976
  %305 = and i8 %304, 1, !dbg !2976
  call void @llvm.dbg.value(metadata i8 %305, metadata !2718, metadata !DIExpression()), !dbg !2977
  br label %359, !dbg !2978

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2979
  store i64 0, i64* %10, align 8, !dbg !2980
  call void @llvm.dbg.value(metadata i64 0, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 1, metadata !2718, metadata !DIExpression()), !dbg !2977
  %307 = icmp eq i64 %154, -1, !dbg !2981
  br i1 %307, label %308, label %310, !dbg !2983

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %309, metadata !2690, metadata !DIExpression()), !dbg !2751
  br label %310, !dbg !2985

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2986
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  br label %312, !dbg !2987

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2988
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2989
  call void @llvm.dbg.value(metadata i8 %314, metadata !2718, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %313, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2990
  %315 = add i64 %313, %122, !dbg !2991
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2992
  %317 = sub i64 %311, %315, !dbg !2993
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2719, metadata !DIExpression(DW_OP_deref)), !dbg !2994
  call void @llvm.dbg.value(metadata i32* %12, metadata !2734, metadata !DIExpression(DW_OP_deref)), !dbg !2995
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !2996
  call void @llvm.dbg.value(metadata i64 %318, metadata !2737, metadata !DIExpression()), !dbg !2997
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2998

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %313, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %313, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %313, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %313, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %313, metadata !2715, metadata !DIExpression()), !dbg !2972
  %320 = icmp ugt i64 %311, %315, !dbg !2999
  br i1 %320, label %321, label %344, !dbg !3001

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2715, metadata !DIExpression()), !dbg !2972
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !3002
  %325 = load i8, i8* %324, align 1, !dbg !3002, !tbaa !1009
  %326 = icmp eq i8 %325, 0, !dbg !3001
  br i1 %326, label %344, label %327, !dbg !3003

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %328, metadata !2715, metadata !DIExpression()), !dbg !2972
  %329 = add i64 %328, %122, !dbg !3005
  %330 = icmp ult i64 %329, %311, !dbg !2999
  br i1 %330, label %321, label %344, !dbg !3001, !llvm.loop !3006

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !3007
  %333 = and i1 %116, %332, !dbg !3010
  call void @llvm.dbg.value(metadata i64 1, metadata !2738, metadata !DIExpression()), !dbg !3011
  br i1 %333, label %334, label %347, !dbg !3010

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2738, metadata !DIExpression()), !dbg !3011
  %336 = add i64 %335, %315, !dbg !3012
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !3013
  %338 = load i8, i8* %337, align 1, !dbg !3013, !tbaa !1009
  %339 = sext i8 %338 to i32, !dbg !3013
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !3014

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %341, metadata !2738, metadata !DIExpression()), !dbg !3011
  %342 = icmp ult i64 %341, %318, !dbg !3007
  br i1 %342, label %334, label %347, !dbg !3016, !llvm.loop !3017

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 %314, metadata !2718, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %313, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 %314, metadata !2718, metadata !DIExpression()), !dbg !2977
  br label %344, !dbg !3019

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2718, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %352, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !3019
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !3020, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %348, metadata !2734, metadata !DIExpression()), !dbg !2995
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !3022
  %350 = icmp eq i32 %349, 0, !dbg !3022
  %351 = select i1 %350, i8 0, i8 %314, !dbg !3023
  call void @llvm.dbg.value(metadata i8 %351, metadata !2718, metadata !DIExpression()), !dbg !2977
  %352 = add i64 %318, %313, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %352, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 %351, metadata !2718, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %352, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !3019
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2719, metadata !DIExpression(DW_OP_deref)), !dbg !2994
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !3025
  %354 = icmp eq i32 %353, 0, !dbg !3026
  br i1 %354, label %312, label %355, !dbg !3027, !llvm.loop !3028

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !3030
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 2, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 2, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 2, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 2, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 2, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8 %100, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %100, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %100, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %100, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %100, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 %94, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %94, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %94, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %94, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %94, metadata !2691, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8 %100, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %100, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %100, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %100, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %100, metadata !2701, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %311, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 %351, metadata !2718, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %352, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !3019
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !3030
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !3031
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !3032
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !3032
  call void @llvm.dbg.value(metadata i8 %362, metadata !2718, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %361, metadata !2715, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %360, metadata !2690, metadata !DIExpression()), !dbg !2751
  %363 = and i8 %362, 1, !dbg !3033
  %364 = icmp ne i8 %363, 0, !dbg !3033
  call void @llvm.dbg.value(metadata i8 %363, metadata !2714, metadata !DIExpression()), !dbg !2828
  %365 = icmp ult i64 %361, 2, !dbg !3034
  %366 = or i1 %364, %115, !dbg !3035
  %367 = and i1 %365, %366, !dbg !3036
  br i1 %367, label %467, label %368, !dbg !3036

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %369, metadata !2745, metadata !DIExpression()), !dbg !3038
  br label %370, !dbg !3039

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !3040
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !3044
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2765
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !3040
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !3046
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2827
  call void @llvm.dbg.value(metadata i8 %376, metadata !2713, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 %375, metadata !2712, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 %374, metadata !2707, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 %373, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %372, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %371, metadata !2696, metadata !DIExpression()), !dbg !2817
  br i1 %366, label %423, label %377, !dbg !3050

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !3051

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2713, metadata !DIExpression()), !dbg !2827
  %379 = and i8 %373, 1, !dbg !3054
  %380 = icmp eq i8 %379, 0, !dbg !3054
  %381 = and i1 %114, %380, !dbg !3054
  br i1 %381, label %382, label %398, !dbg !3054

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !3056
  br i1 %383, label %384, label %386, !dbg !3060

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !3056
  store i8 39, i8* %385, align 1, !dbg !3056, !tbaa !1009
  br label %386, !dbg !3056

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %387, metadata !2697, metadata !DIExpression()), !dbg !2757
  %388 = icmp ult i64 %387, %129, !dbg !3061
  br i1 %388, label %389, label %391, !dbg !3064

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !3061
  store i8 36, i8* %390, align 1, !dbg !3061, !tbaa !1009
  br label %391, !dbg !3061

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %392, metadata !2697, metadata !DIExpression()), !dbg !2757
  %393 = icmp ult i64 %392, %129, !dbg !3065
  br i1 %393, label %394, label %396, !dbg !3068

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !3065
  store i8 39, i8* %395, align 1, !dbg !3065, !tbaa !1009
  br label %396, !dbg !3065

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %397, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8 1, metadata !2704, metadata !DIExpression()), !dbg !2765
  br label %398, !dbg !3069

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2816
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2816
  call void @llvm.dbg.value(metadata i8 %400, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %399, metadata !2697, metadata !DIExpression()), !dbg !2757
  %401 = icmp ult i64 %399, %129, !dbg !3070
  br i1 %401, label %402, label %404, !dbg !3073

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !3070
  store i8 92, i8* %403, align 1, !dbg !3070, !tbaa !1009
  br label %404, !dbg !3070

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %405, metadata !2697, metadata !DIExpression()), !dbg !2757
  %406 = icmp ult i64 %405, %129, !dbg !3074
  br i1 %406, label %407, label %411, !dbg !3077

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !3074
  %409 = or i8 %408, 48, !dbg !3074
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !3074
  store i8 %409, i8* %410, align 1, !dbg !3074, !tbaa !1009
  br label %411, !dbg !3074

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %412, metadata !2697, metadata !DIExpression()), !dbg !2757
  %413 = icmp ult i64 %412, %129, !dbg !3078
  br i1 %413, label %414, label %419, !dbg !3081

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !3078
  %416 = and i8 %415, 7, !dbg !3078
  %417 = or i8 %416, 48, !dbg !3078
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !3078
  store i8 %417, i8* %418, align 1, !dbg !3078, !tbaa !1009
  br label %419, !dbg !3078

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %420, metadata !2697, metadata !DIExpression()), !dbg !2757
  %421 = and i8 %374, 7, !dbg !3082
  %422 = or i8 %421, 48, !dbg !3083
  call void @llvm.dbg.value(metadata i8 %422, metadata !2707, metadata !DIExpression()), !dbg !2843
  br label %432, !dbg !3084

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !3085
  %425 = icmp eq i8 %424, 0, !dbg !3085
  br i1 %425, label %432, label %426, !dbg !3086

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !3087
  br i1 %427, label %428, label %430, !dbg !3090

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !3087
  store i8 92, i8* %429, align 1, !dbg !3087, !tbaa !1009
  br label %430, !dbg !3087

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !3090
  call void @llvm.dbg.value(metadata i64 %431, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8 0, metadata !2712, metadata !DIExpression()), !dbg !2826
  br label %432, !dbg !3091

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !3092
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2765
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !3093
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !3094
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !3096
  call void @llvm.dbg.value(metadata i8 %437, metadata !2713, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 %436, metadata !2712, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 %435, metadata !2707, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 %434, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %433, metadata !2697, metadata !DIExpression()), !dbg !2757
  %438 = add i64 %371, 1, !dbg !3097
  %439 = icmp ugt i64 %369, %438, !dbg !3099
  br i1 %439, label %440, label %562, !dbg !3100

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !3101
  %442 = icmp ne i8 %441, 0, !dbg !3101
  %443 = and i8 %437, 1, !dbg !3101
  %444 = icmp eq i8 %443, 0, !dbg !3101
  %445 = and i1 %442, %444, !dbg !3101
  br i1 %445, label %446, label %457, !dbg !3101

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !3104
  br i1 %447, label %448, label %450, !dbg !3108

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !3104
  store i8 39, i8* %449, align 1, !dbg !3104, !tbaa !1009
  br label %450, !dbg !3104

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %451, metadata !2697, metadata !DIExpression()), !dbg !2757
  %452 = icmp ult i64 %451, %129, !dbg !3109
  br i1 %452, label %453, label %455, !dbg !3112

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !3109
  store i8 39, i8* %454, align 1, !dbg !3109, !tbaa !1009
  br label %455, !dbg !3109

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %456, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8 0, metadata !2704, metadata !DIExpression()), !dbg !2765
  br label %457, !dbg !3113

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !3114
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2816
  call void @llvm.dbg.value(metadata i8 %459, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %458, metadata !2697, metadata !DIExpression()), !dbg !2757
  %460 = icmp ult i64 %458, %129, !dbg !3115
  br i1 %460, label %461, label %463, !dbg !3117

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !3115
  store i8 %435, i8* %462, align 1, !dbg !3115, !tbaa !1009
  br label %463, !dbg !3115

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !3117
  call void @llvm.dbg.value(metadata i64 %464, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %438, metadata !2696, metadata !DIExpression()), !dbg !2817
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !3118
  %466 = load i8, i8* %465, align 1, !dbg !3118, !tbaa !1009
  call void @llvm.dbg.value(metadata i8 %466, metadata !2707, metadata !DIExpression()), !dbg !2843
  br label %370, !dbg !3119, !llvm.loop !3120

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !3123
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2816
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2758
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !3124
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2816
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2816
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2841
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2841
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2841
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %476, metadata !2714, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 %475, metadata !2713, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 %155, metadata !2712, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 %474, metadata !2707, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 %473, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %472, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %471, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %470, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %469, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %468, metadata !2696, metadata !DIExpression()), !dbg !2817
  br i1 %105, label %489, label %478, !dbg !3125

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
  br i1 %112, label %490, label %512, !dbg !3127

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !3128

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
  %501 = lshr i8 %494, 5, !dbg !3129
  %502 = zext i8 %501 to i64, !dbg !3129
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !3130
  %504 = load i32, i32* %503, align 4, !dbg !3130, !tbaa !794
  %505 = and i8 %494, 31, !dbg !3131
  %506 = zext i8 %505 to i32, !dbg !3131
  %507 = shl i32 1, %506, !dbg !3132
  %508 = and i32 %504, %507, !dbg !3132
  %509 = icmp eq i32 %508, 0, !dbg !3132
  %510 = icmp eq i8 %155, 0, !dbg !3133
  %511 = and i1 %510, %509, !dbg !3134
  br i1 %511, label %562, label %524, !dbg !3134

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
  %523 = icmp eq i8 %155, 0, !dbg !3133
  br i1 %523, label %562, label %524, !dbg !3135

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !3136
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2816
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2758
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !3124
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2765
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2766
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !3137
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2841
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %532, metadata !2714, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 %531, metadata !2707, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 %530, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %529, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %528, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %527, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %526, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %525, metadata !2696, metadata !DIExpression()), !dbg !2817
  br i1 %110, label %534, label %661, !dbg !3140

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2713, metadata !DIExpression()), !dbg !2827
  %535 = and i8 %529, 1, !dbg !3142
  %536 = icmp eq i8 %535, 0, !dbg !3142
  %537 = and i1 %114, %536, !dbg !3142
  br i1 %537, label %538, label %554, !dbg !3142

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !3144
  br i1 %539, label %540, label %542, !dbg !3148

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !3144
  store i8 39, i8* %541, align 1, !dbg !3144, !tbaa !1009
  br label %542, !dbg !3144

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %543, metadata !2697, metadata !DIExpression()), !dbg !2757
  %544 = icmp ult i64 %543, %533, !dbg !3149
  br i1 %544, label %545, label %547, !dbg !3152

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !3149
  store i8 36, i8* %546, align 1, !dbg !3149, !tbaa !1009
  br label %547, !dbg !3149

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !3152
  call void @llvm.dbg.value(metadata i64 %548, metadata !2697, metadata !DIExpression()), !dbg !2757
  %549 = icmp ult i64 %548, %533, !dbg !3153
  br i1 %549, label %550, label %552, !dbg !3156

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !3153
  store i8 39, i8* %551, align 1, !dbg !3153, !tbaa !1009
  br label %552, !dbg !3153

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %553, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8 1, metadata !2704, metadata !DIExpression()), !dbg !2765
  br label %554, !dbg !3157

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !3114
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2816
  call void @llvm.dbg.value(metadata i8 %556, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %555, metadata !2697, metadata !DIExpression()), !dbg !2757
  %557 = icmp ult i64 %555, %533, !dbg !3158
  br i1 %557, label %558, label %560, !dbg !3161

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !3158
  store i8 92, i8* %559, align 1, !dbg !3158, !tbaa !1009
  br label %560, !dbg !3158

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !3161
  call void @llvm.dbg.value(metadata i64 %561, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %572, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %571, metadata !2714, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 %570, metadata !2713, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 %569, metadata !2707, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 %568, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %567, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %566, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %565, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %564, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %563, metadata !2696, metadata !DIExpression()), !dbg !2817
  br label %589, !dbg !3162

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !3136
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2816
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2758
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !3124
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2765
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2766
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !3165
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2841
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2841
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %571, metadata !2714, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 %570, metadata !2713, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 %569, metadata !2707, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 %568, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %567, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %566, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %565, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %564, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %563, metadata !2696, metadata !DIExpression()), !dbg !2817
  %573 = and i8 %567, 1, !dbg !3162
  %574 = icmp ne i8 %573, 0, !dbg !3162
  %575 = and i8 %570, 1, !dbg !3162
  %576 = icmp eq i8 %575, 0, !dbg !3162
  %577 = and i1 %574, %576, !dbg !3162
  br i1 %577, label %578, label %589, !dbg !3162

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !3166
  br i1 %579, label %580, label %582, !dbg !3170

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3166
  store i8 39, i8* %581, align 1, !dbg !3166, !tbaa !1009
  br label %582, !dbg !3166

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %583, metadata !2697, metadata !DIExpression()), !dbg !2757
  %584 = icmp ult i64 %583, %572, !dbg !3171
  br i1 %584, label %585, label %587, !dbg !3174

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !3171
  store i8 39, i8* %586, align 1, !dbg !3171, !tbaa !1009
  br label %587, !dbg !3171

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %588, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8 0, metadata !2704, metadata !DIExpression()), !dbg !2765
  br label %589, !dbg !3175

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !3114
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2816
  call void @llvm.dbg.value(metadata i8 %598, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %597, metadata !2697, metadata !DIExpression()), !dbg !2757
  %599 = icmp ult i64 %597, %590, !dbg !3176
  br i1 %599, label %600, label %602, !dbg !3179

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !3176
  store i8 %592, i8* %601, align 1, !dbg !3176, !tbaa !1009
  br label %602, !dbg !3176

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %603, metadata !2697, metadata !DIExpression()), !dbg !2757
  %604 = and i8 %591, 1, !dbg !3180
  %605 = icmp eq i8 %604, 0, !dbg !3180
  %606 = select i1 %605, i8 0, i8 %128, !dbg !3182
  call void @llvm.dbg.value(metadata i8 %606, metadata !2706, metadata !DIExpression()), !dbg !2767
  br label %607, !dbg !3183

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !3136
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2816
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2758
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !3124
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2765
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2816
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2767
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %614, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %613, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %612, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %611, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %610, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %609, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %608, metadata !2696, metadata !DIExpression()), !dbg !2817
  %616 = add i64 %608, 1, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %616, metadata !2696, metadata !DIExpression()), !dbg !2817
  br label %121, !dbg !3185, !llvm.loop !3186

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %618, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %618, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %125, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %125, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %126, metadata !2704, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %127, metadata !2705, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %128, metadata !2706, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  %619 = icmp eq i64 %123, 0, !dbg !3188
  %620 = and i1 %114, %619, !dbg !3190
  %621 = xor i1 %620, true, !dbg !3190
  %622 = or i1 %110, %621, !dbg !3190
  br i1 %622, label %623, label %661, !dbg !3190

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !3191
  %625 = xor i1 %624, true, !dbg !3191
  %626 = and i8 %127, 1, !dbg !3193
  %627 = icmp eq i8 %626, 0, !dbg !3193
  %628 = or i1 %627, %625, !dbg !3191
  br i1 %628, label %638, label %629, !dbg !3191

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !3194
  %631 = icmp eq i8 %630, 0, !dbg !3194
  br i1 %631, label %634, label %632, !dbg !3197

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %618, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %618, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %618, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %618, metadata !2690, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %95, metadata !2694, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %96, metadata !2695, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %124, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %125, metadata !2690, metadata !DIExpression()), !dbg !2751
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !3198
  br label %671, !dbg !3199

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !3200
  %636 = icmp ne i64 %124, 0, !dbg !3202
  %637 = and i1 %636, %635, !dbg !3203
  br i1 %637, label %27, label %638, !dbg !3203

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %129, metadata !2688, metadata !DIExpression()), !dbg !2749
  %639 = icmp ne i8* %98, null, !dbg !3204
  %640 = and i1 %639, %110, !dbg !3206
  br i1 %640, label %641, label %656, !dbg !3206

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %123, metadata !2697, metadata !DIExpression()), !dbg !2757
  %642 = load i8, i8* %98, align 1, !dbg !3207, !tbaa !1009
  %643 = icmp eq i8 %642, 0, !dbg !3210
  br i1 %643, label %656, label %644, !dbg !3210

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %647, metadata !2697, metadata !DIExpression()), !dbg !2757
  %648 = icmp ult i64 %647, %129, !dbg !3211
  br i1 %648, label %649, label %651, !dbg !3214

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !3211
  store i8 %645, i8* %650, align 1, !dbg !3211, !tbaa !1009
  br label %651, !dbg !3211

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !3214
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !3215
  call void @llvm.dbg.value(metadata i8* %653, metadata !2699, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %652, metadata !2697, metadata !DIExpression()), !dbg !2757
  %654 = load i8, i8* %653, align 1, !dbg !3207, !tbaa !1009
  %655 = icmp eq i8 %654, 0, !dbg !3210
  br i1 %655, label %656, label %644, !dbg !3210, !llvm.loop !3216

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2757
  call void @llvm.dbg.value(metadata i64 %657, metadata !2697, metadata !DIExpression()), !dbg !2757
  %658 = icmp ult i64 %657, %129, !dbg !3218
  br i1 %658, label %659, label %671, !dbg !3220

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !3221
  store i8 0, i8* %660, align 1, !dbg !3222, !tbaa !1009
  br label %671, !dbg !3221

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2688, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %663, metadata !2690, metadata !DIExpression()), !dbg !2751
  %665 = icmp ne i32 %662, 2, !dbg !3223
  %666 = icmp eq i8 %102, 0, !dbg !3225
  %667 = or i1 %665, %666, !dbg !3226
  call void @llvm.dbg.value(metadata i32 4, metadata !2691, metadata !DIExpression()), !dbg !2752
  %668 = select i1 %667, i32 %662, i32 4, !dbg !3226
  call void @llvm.dbg.value(metadata i32 %668, metadata !2691, metadata !DIExpression()), !dbg !2752
  %669 = and i32 %5, -3, !dbg !3227
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !3228
  br label %671, !dbg !3229

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !3230
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !3231 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3235, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i32 %1, metadata !3236, metadata !DIExpression()), !dbg !3240
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !3241
  call void @llvm.dbg.value(metadata i8* %3, metadata !3237, metadata !DIExpression()), !dbg !3242
  %4 = icmp eq i8* %3, %0, !dbg !3243
  br i1 %4, label %5, label %71, !dbg !3245

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !3246
  call void @llvm.dbg.value(metadata i8* %6, metadata !3238, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8* %6, metadata !3248, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8* null, metadata !3254, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 85, metadata !3255, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i8 84, metadata !3256, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i8 70, metadata !3257, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i8 45, metadata !3258, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 56, metadata !3259, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 0, metadata !3260, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i8 0, metadata !3261, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 0, metadata !3262, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i8 0, metadata !3263, metadata !DIExpression()), !dbg !3276
  %7 = load i8, i8* %6, align 1, !dbg !3277, !tbaa !1009
  %8 = and i8 %7, -33, !dbg !3277
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3277

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3279, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* null, metadata !3284, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 84, metadata !3285, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 70, metadata !3286, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 45, metadata !3287, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i8 56, metadata !3288, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 0, metadata !3289, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 0, metadata !3290, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 0, metadata !3291, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 0, metadata !3292, metadata !DIExpression()), !dbg !3305
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3306
  %11 = load i8, i8* %10, align 1, !dbg !3306, !tbaa !1009
  %12 = and i8 %11, -33, !dbg !3306
  %13 = icmp eq i8 %12, 84, !dbg !3306
  br i1 %13, label %14, label %68, !dbg !3306

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3308, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8* null, metadata !3313, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8 70, metadata !3314, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i8 45, metadata !3315, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i8 56, metadata !3316, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8 0, metadata !3317, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 0, metadata !3318, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i8 0, metadata !3319, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i8 0, metadata !3320, metadata !DIExpression()), !dbg !3332
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3333
  %16 = load i8, i8* %15, align 1, !dbg !3333, !tbaa !1009
  %17 = and i8 %16, -33, !dbg !3333
  %18 = icmp eq i8 %17, 70, !dbg !3333
  br i1 %18, label %19, label %68, !dbg !3333

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3335, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i8* null, metadata !3340, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i8 45, metadata !3341, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8 56, metadata !3342, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8 0, metadata !3343, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8 0, metadata !3344, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8 0, metadata !3345, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 0, metadata !3346, metadata !DIExpression()), !dbg !3357
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3358
  %21 = load i8, i8* %20, align 1, !dbg !3358, !tbaa !1009
  %22 = icmp eq i8 %21, 45, !dbg !3358
  br i1 %22, label %23, label %68, !dbg !3360

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3361, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i8* null, metadata !3366, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8 56, metadata !3367, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 0, metadata !3368, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i8 0, metadata !3369, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i8 0, metadata !3370, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8 0, metadata !3371, metadata !DIExpression()), !dbg !3381
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3382
  %25 = load i8, i8* %24, align 1, !dbg !3382, !tbaa !1009
  %26 = icmp eq i8 %25, 56, !dbg !3382
  br i1 %26, label %27, label %68, !dbg !3384

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3385, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i8* null, metadata !3390, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i8 0, metadata !3391, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i8 0, metadata !3392, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8 0, metadata !3393, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8 0, metadata !3394, metadata !DIExpression()), !dbg !3403
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3404
  %29 = load i8, i8* %28, align 1, !dbg !3404, !tbaa !1009
  %30 = icmp eq i8 %29, 0, !dbg !3404
  br i1 %30, label %31, label %68, !dbg !3406

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3407, !tbaa !1009
  %33 = icmp eq i8 %32, 96, !dbg !3408
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.91, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.92, i64 0, i64 0), !dbg !3407
  br label %71, !dbg !3409

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3279, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i8* null, metadata !3284, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8 66, metadata !3285, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i8 49, metadata !3286, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8 56, metadata !3287, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8 48, metadata !3288, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i8 51, metadata !3289, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i8 48, metadata !3290, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8 0, metadata !3291, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i8 0, metadata !3292, metadata !DIExpression()), !dbg !3422
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3423
  %37 = load i8, i8* %36, align 1, !dbg !3423, !tbaa !1009
  %38 = and i8 %37, -33, !dbg !3423
  %39 = icmp eq i8 %38, 66, !dbg !3423
  br i1 %39, label %40, label %68, !dbg !3423

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3308, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8* null, metadata !3313, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8 49, metadata !3314, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8 56, metadata !3315, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i8 48, metadata !3316, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i8 51, metadata !3317, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i8 48, metadata !3318, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i8 0, metadata !3319, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8 0, metadata !3320, metadata !DIExpression()), !dbg !3433
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3434
  %42 = load i8, i8* %41, align 1, !dbg !3434, !tbaa !1009
  %43 = icmp eq i8 %42, 49, !dbg !3434
  br i1 %43, label %44, label %68, !dbg !3435

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3335, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i8* null, metadata !3340, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8 56, metadata !3341, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i8 48, metadata !3342, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8 51, metadata !3343, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i8 48, metadata !3344, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8 0, metadata !3345, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8 0, metadata !3346, metadata !DIExpression()), !dbg !3444
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3445
  %46 = load i8, i8* %45, align 1, !dbg !3445, !tbaa !1009
  %47 = icmp eq i8 %46, 56, !dbg !3445
  br i1 %47, label %48, label %68, !dbg !3446

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3361, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8* null, metadata !3366, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8 48, metadata !3367, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8 51, metadata !3368, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i8 48, metadata !3369, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i8 0, metadata !3370, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i8 0, metadata !3371, metadata !DIExpression()), !dbg !3454
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3455
  %50 = load i8, i8* %49, align 1, !dbg !3455, !tbaa !1009
  %51 = icmp eq i8 %50, 48, !dbg !3455
  br i1 %51, label %52, label %68, !dbg !3456

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3385, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i8* null, metadata !3390, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8 51, metadata !3391, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i8 48, metadata !3392, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8 0, metadata !3393, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8 0, metadata !3394, metadata !DIExpression()), !dbg !3463
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3464
  %54 = load i8, i8* %53, align 1, !dbg !3464, !tbaa !1009
  %55 = icmp eq i8 %54, 51, !dbg !3464
  br i1 %55, label %56, label %68, !dbg !3465

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3466, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i8* null, metadata !3471, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 48, metadata !3472, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8 0, metadata !3473, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8 0, metadata !3474, metadata !DIExpression()), !dbg !3482
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3483
  %58 = load i8, i8* %57, align 1, !dbg !3483, !tbaa !1009
  %59 = icmp eq i8 %58, 48, !dbg !3483
  br i1 %59, label %60, label %68, !dbg !3485

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3486, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i8* null, metadata !3491, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i8 0, metadata !3492, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8 0, metadata !3493, metadata !DIExpression()), !dbg !3500
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3501
  %62 = load i8, i8* %61, align 1, !dbg !3501, !tbaa !1009
  %63 = icmp eq i8 %62, 0, !dbg !3501
  br i1 %63, label %64, label %68, !dbg !3503

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3504, !tbaa !1009
  %66 = icmp eq i8 %65, 96, !dbg !3505
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.93, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.94, i64 0, i64 0), !dbg !3504
  br label %71, !dbg !3506

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3507
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), !dbg !3508
  br label %71, !dbg !3509

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3510
  ret i8* %72, !dbg !3511
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3512 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3516, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %1, metadata !3517, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3518, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i8* %0, metadata !3522, metadata !DIExpression()) #11, !dbg !3535
  call void @llvm.dbg.value(metadata i64 %1, metadata !3527, metadata !DIExpression()) #11, !dbg !3537
  call void @llvm.dbg.value(metadata i64* null, metadata !3528, metadata !DIExpression()) #11, !dbg !3538
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3529, metadata !DIExpression()) #11, !dbg !3539
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3540
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3540
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3530, metadata !DIExpression()) #11, !dbg !3541
  %6 = tail call i32* @__errno_location() #17, !dbg !3542
  %7 = load i32, i32* %6, align 4, !dbg !3542, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %7, metadata !3531, metadata !DIExpression()) #11, !dbg !3543
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3544
  %9 = load i32, i32* %8, align 4, !dbg !3544, !tbaa !2620
  %10 = or i32 %9, 1, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %10, metadata !3532, metadata !DIExpression()) #11, !dbg !3546
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3547
  %12 = load i32, i32* %11, align 8, !dbg !3547, !tbaa !2561
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3548
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3549
  %15 = load i8*, i8** %14, align 8, !dbg !3549, !tbaa !2646
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3550
  %17 = load i8*, i8** %16, align 8, !dbg !3550, !tbaa !2649
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !3551
  %19 = add i64 %18, 1, !dbg !3552
  call void @llvm.dbg.value(metadata i64 %19, metadata !3533, metadata !DIExpression()) #11, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %19, metadata !3554, metadata !DIExpression()) #11, !dbg !3558
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3560
  call void @llvm.dbg.value(metadata i8* %20, metadata !3534, metadata !DIExpression()) #11, !dbg !3561
  %21 = load i32, i32* %11, align 8, !dbg !3562, !tbaa !2561
  %22 = load i8*, i8** %14, align 8, !dbg !3563, !tbaa !2646
  %23 = load i8*, i8** %16, align 8, !dbg !3564, !tbaa !2649
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !3565
  store i32 %7, i32* %6, align 4, !dbg !3566, !tbaa !794
  ret i8* %20, !dbg !3567
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3523 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3522, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %1, metadata !3527, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i64* %2, metadata !3528, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3529, metadata !DIExpression()), !dbg !3571
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3572
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3572
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3530, metadata !DIExpression()), !dbg !3573
  %7 = tail call i32* @__errno_location() #17, !dbg !3574
  %8 = load i32, i32* %7, align 4, !dbg !3574, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %8, metadata !3531, metadata !DIExpression()), !dbg !3575
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3576
  %10 = load i32, i32* %9, align 4, !dbg !3576, !tbaa !2620
  %11 = icmp ne i64* %2, null, !dbg !3577
  %12 = xor i1 %11, true, !dbg !3577
  %13 = zext i1 %12 to i32, !dbg !3577
  %14 = or i32 %10, %13, !dbg !3578
  call void @llvm.dbg.value(metadata i32 %14, metadata !3532, metadata !DIExpression()), !dbg !3579
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3580
  %16 = load i32, i32* %15, align 8, !dbg !3580, !tbaa !2561
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3581
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3582
  %19 = load i8*, i8** %18, align 8, !dbg !3582, !tbaa !2646
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3583
  %21 = load i8*, i8** %20, align 8, !dbg !3583, !tbaa !2649
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3584
  %23 = add i64 %22, 1, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %23, metadata !3533, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %23, metadata !3554, metadata !DIExpression()) #11, !dbg !3587
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %24, metadata !3534, metadata !DIExpression()), !dbg !3590
  %25 = load i32, i32* %15, align 8, !dbg !3591, !tbaa !2561
  %26 = load i8*, i8** %18, align 8, !dbg !3592, !tbaa !2646
  %27 = load i8*, i8** %20, align 8, !dbg !3593, !tbaa !2649
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3594
  store i32 %8, i32* %7, align 4, !dbg !3595, !tbaa !794
  br i1 %11, label %29, label %30, !dbg !3596

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3597, !tbaa !967
  br label %30, !dbg !3599

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3600
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !3601 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3605, !tbaa !726
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3603, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 1, metadata !3604, metadata !DIExpression()), !dbg !3607
  %2 = load i32, i32* @nslots, align 4, !dbg !3608, !tbaa !794
  %3 = icmp sgt i32 %2, 1, !dbg !3611
  br i1 %3, label %4, label %12, !dbg !3612

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3604, metadata !DIExpression()), !dbg !3607
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3613
  %7 = load i8*, i8** %6, align 8, !dbg !3613, !tbaa !3614
  tail call void @free(i8* %7) #11, !dbg !3616
  %8 = add nuw nsw i64 %5, 1, !dbg !3617
  call void @llvm.dbg.value(metadata i32 undef, metadata !3604, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3607
  %9 = load i32, i32* @nslots, align 4, !dbg !3608, !tbaa !794
  %10 = sext i32 %9 to i64, !dbg !3611
  %11 = icmp slt i64 %8, %10, !dbg !3611
  br i1 %11, label %4, label %12, !dbg !3612, !llvm.loop !3618

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3620
  %14 = load i8*, i8** %13, align 8, !dbg !3620, !tbaa !3614
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3622
  br i1 %15, label %17, label %16, !dbg !3623

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !3624
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3626, !tbaa !3627
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3628, !tbaa !3614
  br label %17, !dbg !3629

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3630
  br i1 %18, label %21, label %19, !dbg !3632

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3633
  tail call void @free(i8* %20) #11, !dbg !3635
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3636, !tbaa !726
  br label %21, !dbg !3637

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3638, !tbaa !794
  ret void, !dbg !3639
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !3640 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i8* %1, metadata !3645, metadata !DIExpression()), !dbg !3647
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3648
  ret i8* %3, !dbg !3649
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3650 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3654, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8* %1, metadata !3655, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %2, metadata !3656, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3657, metadata !DIExpression()), !dbg !3672
  %5 = tail call i32* @__errno_location() #17, !dbg !3673
  %6 = load i32, i32* %5, align 4, !dbg !3673, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %6, metadata !3658, metadata !DIExpression()), !dbg !3674
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3675, !tbaa !726
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3659, metadata !DIExpression()), !dbg !3676
  %8 = icmp slt i32 %0, 0, !dbg !3677
  br i1 %8, label %9, label %10, !dbg !3679

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3680
  unreachable, !dbg !3680

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3681, !tbaa !794
  %12 = icmp sgt i32 %11, %0, !dbg !3682
  br i1 %12, label %34, label %13, !dbg !3683

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3684
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3663, metadata !DIExpression()), !dbg !3685
  %15 = icmp eq i32 %0, 2147483647, !dbg !3686
  br i1 %15, label %16, label %17, !dbg !3688

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3689
  unreachable, !dbg !3689

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3690
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3690
  %20 = add nsw i32 %0, 1, !dbg !3691
  %21 = sext i32 %20 to i64, !dbg !3692
  %22 = shl nsw i64 %21, 4, !dbg !3693
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3694
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3694
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3659, metadata !DIExpression()), !dbg !3676
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3695, !tbaa !726
  br i1 %14, label %25, label %26, !dbg !3696

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3697, !tbaa.struct !3699
  br label %26, !dbg !3700

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3701, !tbaa !794
  %28 = sext i32 %27 to i64, !dbg !3702
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3702
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3703
  %31 = sub nsw i32 %20, %27, !dbg !3704
  %32 = sext i32 %31 to i64, !dbg !3705
  %33 = shl nsw i64 %32, 4, !dbg !3706
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3703
  store i32 %20, i32* @nslots, align 4, !dbg !3707, !tbaa !794
  br label %34, !dbg !3708

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3709
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3659, metadata !DIExpression()), !dbg !3676
  %36 = sext i32 %0 to i64, !dbg !3710
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3711
  %38 = load i64, i64* %37, align 8, !dbg !3711, !tbaa !3627
  call void @llvm.dbg.value(metadata i64 %38, metadata !3664, metadata !DIExpression()), !dbg !3712
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3713
  %40 = load i8*, i8** %39, align 8, !dbg !3713, !tbaa !3614
  call void @llvm.dbg.value(metadata i8* %40, metadata !3666, metadata !DIExpression()), !dbg !3714
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3715
  %42 = load i32, i32* %41, align 4, !dbg !3715, !tbaa !2620
  %43 = or i32 %42, 1, !dbg !3716
  call void @llvm.dbg.value(metadata i32 %43, metadata !3667, metadata !DIExpression()), !dbg !3717
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3718
  %45 = load i32, i32* %44, align 8, !dbg !3718, !tbaa !2561
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3719
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3720
  %48 = load i8*, i8** %47, align 8, !dbg !3720, !tbaa !2646
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3721
  %50 = load i8*, i8** %49, align 8, !dbg !3721, !tbaa !2649
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3722
  call void @llvm.dbg.value(metadata i64 %51, metadata !3668, metadata !DIExpression()), !dbg !3723
  %52 = icmp ugt i64 %38, %51, !dbg !3724
  br i1 %52, label %63, label %53, !dbg !3726

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %54, metadata !3664, metadata !DIExpression()), !dbg !3712
  store i64 %54, i64* %37, align 8, !dbg !3729, !tbaa !3627
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3730
  br i1 %55, label %57, label %56, !dbg !3732

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3733
  br label %57, !dbg !3733

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3554, metadata !DIExpression()) #11, !dbg !3734
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3736
  call void @llvm.dbg.value(metadata i8* %58, metadata !3666, metadata !DIExpression()), !dbg !3714
  store i8* %58, i8** %39, align 8, !dbg !3737, !tbaa !3614
  %59 = load i32, i32* %44, align 8, !dbg !3738, !tbaa !2561
  %60 = load i8*, i8** %47, align 8, !dbg !3739, !tbaa !2646
  %61 = load i8*, i8** %49, align 8, !dbg !3740, !tbaa !2649
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3741
  br label %63, !dbg !3742

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3743
  call void @llvm.dbg.value(metadata i8* %64, metadata !3666, metadata !DIExpression()), !dbg !3714
  store i32 %6, i32* %5, align 4, !dbg !3744, !tbaa !794
  ret i8* %64, !dbg !3745
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3746 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3750, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i8* %1, metadata !3751, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 %2, metadata !3752, metadata !DIExpression()), !dbg !3755
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3756
  ret i8* %4, !dbg !3757
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3758 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3762, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i32 0, metadata !3644, metadata !DIExpression()) #11, !dbg !3764
  call void @llvm.dbg.value(metadata i8* %0, metadata !3645, metadata !DIExpression()) #11, !dbg !3766
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3767
  ret i8* %2, !dbg !3768
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3773, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64 %1, metadata !3774, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i32 0, metadata !3750, metadata !DIExpression()) #11, !dbg !3777
  call void @llvm.dbg.value(metadata i8* %0, metadata !3751, metadata !DIExpression()) #11, !dbg !3779
  call void @llvm.dbg.value(metadata i64 %1, metadata !3752, metadata !DIExpression()) #11, !dbg !3780
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3781
  ret i8* %3, !dbg !3782
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3783 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3787, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i32 %1, metadata !3788, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i8* %2, metadata !3789, metadata !DIExpression()), !dbg !3793
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3794
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3794
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3790, metadata !DIExpression(DW_OP_deref)), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %1, metadata !3796, metadata !DIExpression()) #11, !dbg !3802
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3804, !alias.scope !3805
  %6 = icmp eq i32 %1, 10, !dbg !3808
  br i1 %6, label %7, label %8, !dbg !3810

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3811, !noalias !3805
  unreachable, !dbg !3811

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3812
  store i32 %1, i32* %9, align 8, !dbg !3813, !tbaa !2561, !alias.scope !3805
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3790, metadata !DIExpression(DW_OP_deref)), !dbg !3795
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3801, metadata !DIExpression(DW_OP_deref)), !dbg !3804
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3814
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3815
  ret i8* %10, !dbg !3816
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3817 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3821, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i32 %1, metadata !3822, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8* %2, metadata !3823, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %3, metadata !3824, metadata !DIExpression()), !dbg !3829
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3830
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3830
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3825, metadata !DIExpression(DW_OP_deref)), !dbg !3831
  call void @llvm.dbg.value(metadata i32 %1, metadata !3796, metadata !DIExpression()) #11, !dbg !3832
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !3834, !alias.scope !3835
  %7 = icmp eq i32 %1, 10, !dbg !3838
  br i1 %7, label %8, label %9, !dbg !3839

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3840, !noalias !3835
  unreachable, !dbg !3840

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3841
  store i32 %1, i32* %10, align 8, !dbg !3842, !tbaa !2561, !alias.scope !3835
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3825, metadata !DIExpression(DW_OP_deref)), !dbg !3831
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3801, metadata !DIExpression(DW_OP_deref)), !dbg !3834
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3843
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3844
  ret i8* %11, !dbg !3845
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3846 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3850, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i8* %1, metadata !3851, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 0, metadata !3787, metadata !DIExpression()) #11, !dbg !3854
  call void @llvm.dbg.value(metadata i32 %0, metadata !3788, metadata !DIExpression()) #11, !dbg !3856
  call void @llvm.dbg.value(metadata i8* %1, metadata !3789, metadata !DIExpression()) #11, !dbg !3857
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3858
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3790, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3859
  call void @llvm.dbg.value(metadata i32 %0, metadata !3796, metadata !DIExpression()) #11, !dbg !3860
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !3862, !alias.scope !3863
  %5 = icmp eq i32 %0, 10, !dbg !3866
  br i1 %5, label %6, label %7, !dbg !3867

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3868, !noalias !3863
  unreachable, !dbg !3868

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3869
  store i32 %0, i32* %8, align 8, !dbg !3870, !tbaa !2561, !alias.scope !3863
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3790, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3801, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3862
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3871
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3872
  ret i8* %9, !dbg !3873
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3874 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3878, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %1, metadata !3879, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i64 %2, metadata !3880, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 0, metadata !3821, metadata !DIExpression()) #11, !dbg !3884
  call void @llvm.dbg.value(metadata i32 %0, metadata !3822, metadata !DIExpression()) #11, !dbg !3886
  call void @llvm.dbg.value(metadata i8* %1, metadata !3823, metadata !DIExpression()) #11, !dbg !3887
  call void @llvm.dbg.value(metadata i64 %2, metadata !3824, metadata !DIExpression()) #11, !dbg !3888
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3889
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3825, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3890
  call void @llvm.dbg.value(metadata i32 %0, metadata !3796, metadata !DIExpression()) #11, !dbg !3891
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3893, !alias.scope !3894
  %6 = icmp eq i32 %0, 10, !dbg !3897
  br i1 %6, label %7, label %8, !dbg !3898

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3899, !noalias !3894
  unreachable, !dbg !3899

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3900
  store i32 %0, i32* %9, align 8, !dbg !3901, !tbaa !2561, !alias.scope !3894
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3825, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3890
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3801, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3893
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !3902
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3903
  ret i8* %10, !dbg !3904
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3905 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3909, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 %1, metadata !3910, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8 %2, metadata !3911, metadata !DIExpression()), !dbg !3915
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3916
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3916
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3917, !tbaa.struct !3918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3912, metadata !DIExpression(DW_OP_deref)), !dbg !3919
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2580, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i8 %2, metadata !2581, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i32 1, metadata !2582, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i8 %2, metadata !2583, metadata !DIExpression()), !dbg !3924
  %6 = lshr i8 %2, 5, !dbg !3925
  %7 = zext i8 %6 to i64, !dbg !3925
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3926
  call void @llvm.dbg.value(metadata i32* %8, metadata !2584, metadata !DIExpression()), !dbg !3927
  %9 = and i8 %2, 31, !dbg !3928
  %10 = zext i8 %9 to i32, !dbg !3928
  call void @llvm.dbg.value(metadata i32 %10, metadata !2586, metadata !DIExpression()), !dbg !3929
  %11 = load i32, i32* %8, align 4, !dbg !3930, !tbaa !794
  %12 = lshr i32 %11, %10, !dbg !3931
  %13 = and i32 %12, 1, !dbg !3932
  call void @llvm.dbg.value(metadata i32 %13, metadata !2587, metadata !DIExpression()), !dbg !3933
  %14 = xor i32 %13, 1, !dbg !3934
  %15 = shl i32 %14, %10, !dbg !3935
  %16 = xor i32 %15, %11, !dbg !3936
  store i32 %16, i32* %8, align 4, !dbg !3936, !tbaa !794
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3912, metadata !DIExpression(DW_OP_deref)), !dbg !3919
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3937
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3938
  ret i8* %17, !dbg !3939
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3940 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3944, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i8 %1, metadata !3945, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i8* %0, metadata !3909, metadata !DIExpression()) #11, !dbg !3948
  call void @llvm.dbg.value(metadata i64 -1, metadata !3910, metadata !DIExpression()) #11, !dbg !3950
  call void @llvm.dbg.value(metadata i8 %1, metadata !3911, metadata !DIExpression()) #11, !dbg !3951
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3952
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3952
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3953, !tbaa.struct !3918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3912, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3954
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2580, metadata !DIExpression()) #11, !dbg !3955
  call void @llvm.dbg.value(metadata i8 %1, metadata !2581, metadata !DIExpression()) #11, !dbg !3957
  call void @llvm.dbg.value(metadata i32 1, metadata !2582, metadata !DIExpression()) #11, !dbg !3958
  call void @llvm.dbg.value(metadata i8 %1, metadata !2583, metadata !DIExpression()) #11, !dbg !3959
  %5 = lshr i8 %1, 5, !dbg !3960
  %6 = zext i8 %5 to i64, !dbg !3960
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3961
  call void @llvm.dbg.value(metadata i32* %7, metadata !2584, metadata !DIExpression()) #11, !dbg !3962
  %8 = and i8 %1, 31, !dbg !3963
  %9 = zext i8 %8 to i32, !dbg !3963
  call void @llvm.dbg.value(metadata i32 %9, metadata !2586, metadata !DIExpression()) #11, !dbg !3964
  %10 = load i32, i32* %7, align 4, !dbg !3965, !tbaa !794
  %11 = lshr i32 %10, %9, !dbg !3966
  %12 = and i32 %11, 1, !dbg !3967
  call void @llvm.dbg.value(metadata i32 %12, metadata !2587, metadata !DIExpression()) #11, !dbg !3968
  %13 = xor i32 %12, 1, !dbg !3969
  %14 = shl i32 %13, %9, !dbg !3970
  %15 = xor i32 %14, %10, !dbg !3971
  store i32 %15, i32* %7, align 4, !dbg !3971, !tbaa !794
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3912, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3954
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3972
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3973
  ret i8* %16, !dbg !3974
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3975 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3977, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %0, metadata !3944, metadata !DIExpression()) #11, !dbg !3979
  call void @llvm.dbg.value(metadata i8 58, metadata !3945, metadata !DIExpression()) #11, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %0, metadata !3909, metadata !DIExpression()) #11, !dbg !3982
  call void @llvm.dbg.value(metadata i64 -1, metadata !3910, metadata !DIExpression()) #11, !dbg !3984
  call void @llvm.dbg.value(metadata i8 58, metadata !3911, metadata !DIExpression()) #11, !dbg !3985
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3986
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3986
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3987, !tbaa.struct !3918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3912, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3988
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2580, metadata !DIExpression()) #11, !dbg !3989
  call void @llvm.dbg.value(metadata i8 58, metadata !2581, metadata !DIExpression()) #11, !dbg !3991
  call void @llvm.dbg.value(metadata i32 1, metadata !2582, metadata !DIExpression()) #11, !dbg !3992
  call void @llvm.dbg.value(metadata i8 58, metadata !2583, metadata !DIExpression()) #11, !dbg !3993
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3994
  call void @llvm.dbg.value(metadata i32* %4, metadata !2584, metadata !DIExpression()) #11, !dbg !3995
  call void @llvm.dbg.value(metadata i32 26, metadata !2586, metadata !DIExpression()) #11, !dbg !3996
  %5 = load i32, i32* %4, align 4, !dbg !3997, !tbaa !794
  %6 = or i32 %5, 67108864, !dbg !3998
  store i32 %6, i32* %4, align 4, !dbg !3998, !tbaa !794
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3912, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3988
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3999
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !4000
  ret i8* %7, !dbg !4001
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !4002 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4004, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %1, metadata !4005, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i8* %0, metadata !3909, metadata !DIExpression()) #11, !dbg !4008
  call void @llvm.dbg.value(metadata i64 %1, metadata !3910, metadata !DIExpression()) #11, !dbg !4010
  call void @llvm.dbg.value(metadata i8 58, metadata !3911, metadata !DIExpression()) #11, !dbg !4011
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4012
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !4012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !4013, !tbaa.struct !3918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3912, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4014
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2580, metadata !DIExpression()) #11, !dbg !4015
  call void @llvm.dbg.value(metadata i8 58, metadata !2581, metadata !DIExpression()) #11, !dbg !4017
  call void @llvm.dbg.value(metadata i32 1, metadata !2582, metadata !DIExpression()) #11, !dbg !4018
  call void @llvm.dbg.value(metadata i8 58, metadata !2583, metadata !DIExpression()) #11, !dbg !4019
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4020
  call void @llvm.dbg.value(metadata i32* %5, metadata !2584, metadata !DIExpression()) #11, !dbg !4021
  call void @llvm.dbg.value(metadata i32 26, metadata !2586, metadata !DIExpression()) #11, !dbg !4022
  %6 = load i32, i32* %5, align 4, !dbg !4023, !tbaa !794
  %7 = or i32 %6, 67108864, !dbg !4024
  store i32 %7, i32* %5, align 4, !dbg !4024, !tbaa !794
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3912, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4014
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !4025
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !4026
  ret i8* %8, !dbg !4027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !4028 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3801, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 %0, metadata !4030, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 %1, metadata !4031, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i8* %2, metadata !4032, metadata !DIExpression()), !dbg !4038
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4039
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4039
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4040
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !4040
  call void @llvm.dbg.value(metadata i32 %1, metadata !3796, metadata !DIExpression()) #11, !dbg !4041
  call void @llvm.dbg.value(metadata i32 0, metadata !3801, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4034
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !4034, !alias.scope !4042
  %8 = icmp eq i32 %1, 10, !dbg !4045
  br i1 %8, label %9, label %10, !dbg !4046

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !4047, !noalias !4042
  unreachable, !dbg !4047

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3801, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4034
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4040
  store i32 %1, i32* %11, align 8, !dbg !4040
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4040
  %13 = bitcast i32* %12 to i8*, !dbg !4040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !4040
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !4040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4033, metadata !DIExpression(DW_OP_deref)), !dbg !4048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2580, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8 58, metadata !2581, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i32 1, metadata !2582, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i8 58, metadata !2583, metadata !DIExpression()), !dbg !4053
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !4054
  call void @llvm.dbg.value(metadata i32* %14, metadata !2584, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata i32 26, metadata !2586, metadata !DIExpression()), !dbg !4056
  %15 = load i32, i32* %14, align 4, !dbg !4057, !tbaa !794
  %16 = or i32 %15, 67108864, !dbg !4058
  store i32 %16, i32* %14, align 4, !dbg !4058, !tbaa !794
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4033, metadata !DIExpression(DW_OP_deref)), !dbg !4048
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4059
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4060
  ret i8* %17, !dbg !4061
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !4062 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4066, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i8* %1, metadata !4067, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8* %2, metadata !4068, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i8* %3, metadata !4069, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 %0, metadata !4074, metadata !DIExpression()) #11, !dbg !4084
  call void @llvm.dbg.value(metadata i8* %1, metadata !4079, metadata !DIExpression()) #11, !dbg !4086
  call void @llvm.dbg.value(metadata i8* %2, metadata !4080, metadata !DIExpression()) #11, !dbg !4087
  call void @llvm.dbg.value(metadata i8* %3, metadata !4081, metadata !DIExpression()) #11, !dbg !4088
  call void @llvm.dbg.value(metadata i64 -1, metadata !4082, metadata !DIExpression()) #11, !dbg !4089
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4090
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4090
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !4091, !tbaa.struct !3918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4083, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4092
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2628, metadata !DIExpression()) #11, !dbg !4093
  call void @llvm.dbg.value(metadata i8* %1, metadata !2629, metadata !DIExpression()) #11, !dbg !4095
  call void @llvm.dbg.value(metadata i8* %2, metadata !2630, metadata !DIExpression()) #11, !dbg !4096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2628, metadata !DIExpression()) #11, !dbg !4093
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4097
  store i32 10, i32* %7, align 8, !dbg !4098, !tbaa !2561
  %8 = icmp ne i8* %1, null, !dbg !4099
  %9 = icmp ne i8* %2, null, !dbg !4100
  %10 = and i1 %8, %9, !dbg !4101
  br i1 %10, label %12, label %11, !dbg !4101

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4102
  unreachable, !dbg !4102

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4103
  store i8* %1, i8** %13, align 8, !dbg !4104, !tbaa !2646
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4105
  store i8* %2, i8** %14, align 8, !dbg !4106, !tbaa !2649
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4083, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4092
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !4107
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4108
  ret i8* %15, !dbg !4109
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !4075 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4074, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i8* %1, metadata !4079, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i8* %2, metadata !4080, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i8* %3, metadata !4081, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i64 %4, metadata !4082, metadata !DIExpression()), !dbg !4114
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4115
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !4115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4116, !tbaa.struct !3918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !4083, metadata !DIExpression(DW_OP_deref)), !dbg !4117
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2628, metadata !DIExpression()) #11, !dbg !4118
  call void @llvm.dbg.value(metadata i8* %1, metadata !2629, metadata !DIExpression()) #11, !dbg !4120
  call void @llvm.dbg.value(metadata i8* %2, metadata !2630, metadata !DIExpression()) #11, !dbg !4121
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2628, metadata !DIExpression()) #11, !dbg !4118
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4122
  store i32 10, i32* %8, align 8, !dbg !4123, !tbaa !2561
  %9 = icmp ne i8* %1, null, !dbg !4124
  %10 = icmp ne i8* %2, null, !dbg !4125
  %11 = and i1 %9, %10, !dbg !4126
  br i1 %11, label %13, label %12, !dbg !4126

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !4127
  unreachable, !dbg !4127

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4128
  store i8* %1, i8** %14, align 8, !dbg !4129, !tbaa !2646
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4130
  store i8* %2, i8** %15, align 8, !dbg !4131, !tbaa !2649
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !4083, metadata !DIExpression(DW_OP_deref)), !dbg !4117
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4132
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !4133
  ret i8* %16, !dbg !4134
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !4135 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4139, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i8* %1, metadata !4140, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i8* %2, metadata !4141, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i32 0, metadata !4066, metadata !DIExpression()) #11, !dbg !4145
  call void @llvm.dbg.value(metadata i8* %0, metadata !4067, metadata !DIExpression()) #11, !dbg !4147
  call void @llvm.dbg.value(metadata i8* %1, metadata !4068, metadata !DIExpression()) #11, !dbg !4148
  call void @llvm.dbg.value(metadata i8* %2, metadata !4069, metadata !DIExpression()) #11, !dbg !4149
  call void @llvm.dbg.value(metadata i32 0, metadata !4074, metadata !DIExpression()) #11, !dbg !4150
  call void @llvm.dbg.value(metadata i8* %0, metadata !4079, metadata !DIExpression()) #11, !dbg !4152
  call void @llvm.dbg.value(metadata i8* %1, metadata !4080, metadata !DIExpression()) #11, !dbg !4153
  call void @llvm.dbg.value(metadata i8* %2, metadata !4081, metadata !DIExpression()) #11, !dbg !4154
  call void @llvm.dbg.value(metadata i64 -1, metadata !4082, metadata !DIExpression()) #11, !dbg !4155
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4156
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !4156
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !4157, !tbaa.struct !3918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4083, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4158
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2628, metadata !DIExpression()) #11, !dbg !4159
  call void @llvm.dbg.value(metadata i8* %0, metadata !2629, metadata !DIExpression()) #11, !dbg !4161
  call void @llvm.dbg.value(metadata i8* %1, metadata !2630, metadata !DIExpression()) #11, !dbg !4162
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2628, metadata !DIExpression()) #11, !dbg !4159
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4163
  store i32 10, i32* %6, align 8, !dbg !4164, !tbaa !2561
  %7 = icmp ne i8* %0, null, !dbg !4165
  %8 = icmp ne i8* %1, null, !dbg !4166
  %9 = and i1 %7, %8, !dbg !4167
  br i1 %9, label %11, label %10, !dbg !4167

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !4168
  unreachable, !dbg !4168

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4169
  store i8* %0, i8** %12, align 8, !dbg !4170, !tbaa !2646
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4171
  store i8* %1, i8** %13, align 8, !dbg !4172, !tbaa !2649
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4083, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4158
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !4173
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !4174
  ret i8* %14, !dbg !4175
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !4176 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4180, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i8* %1, metadata !4181, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i8* %2, metadata !4182, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %3, metadata !4183, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i32 0, metadata !4074, metadata !DIExpression()) #11, !dbg !4188
  call void @llvm.dbg.value(metadata i8* %0, metadata !4079, metadata !DIExpression()) #11, !dbg !4190
  call void @llvm.dbg.value(metadata i8* %1, metadata !4080, metadata !DIExpression()) #11, !dbg !4191
  call void @llvm.dbg.value(metadata i8* %2, metadata !4081, metadata !DIExpression()) #11, !dbg !4192
  call void @llvm.dbg.value(metadata i64 %3, metadata !4082, metadata !DIExpression()) #11, !dbg !4193
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4194
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !4195, !tbaa.struct !3918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4083, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4196
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2628, metadata !DIExpression()) #11, !dbg !4197
  call void @llvm.dbg.value(metadata i8* %0, metadata !2629, metadata !DIExpression()) #11, !dbg !4199
  call void @llvm.dbg.value(metadata i8* %1, metadata !2630, metadata !DIExpression()) #11, !dbg !4200
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2628, metadata !DIExpression()) #11, !dbg !4197
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4201
  store i32 10, i32* %7, align 8, !dbg !4202, !tbaa !2561
  %8 = icmp ne i8* %0, null, !dbg !4203
  %9 = icmp ne i8* %1, null, !dbg !4204
  %10 = and i1 %8, %9, !dbg !4205
  br i1 %10, label %12, label %11, !dbg !4205

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4206
  unreachable, !dbg !4206

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4207
  store i8* %0, i8** %13, align 8, !dbg !4208, !tbaa !2646
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4209
  store i8* %1, i8** %14, align 8, !dbg !4210, !tbaa !2649
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4083, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4196
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !4211
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4212
  ret i8* %15, !dbg !4213
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !4214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4218, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i8* %1, metadata !4219, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %2, metadata !4220, metadata !DIExpression()), !dbg !4223
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4224
  ret i8* %4, !dbg !4225
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !4226 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4230, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 %1, metadata !4231, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i32 0, metadata !4218, metadata !DIExpression()) #11, !dbg !4234
  call void @llvm.dbg.value(metadata i8* %0, metadata !4219, metadata !DIExpression()) #11, !dbg !4236
  call void @llvm.dbg.value(metadata i64 %1, metadata !4220, metadata !DIExpression()) #11, !dbg !4237
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4238
  ret i8* %3, !dbg !4239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !4240 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4244, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i8* %1, metadata !4245, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i32 %0, metadata !4218, metadata !DIExpression()) #11, !dbg !4248
  call void @llvm.dbg.value(metadata i8* %1, metadata !4219, metadata !DIExpression()) #11, !dbg !4250
  call void @llvm.dbg.value(metadata i64 -1, metadata !4220, metadata !DIExpression()) #11, !dbg !4251
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4252
  ret i8* %3, !dbg !4253
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !4254 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4258, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()) #11, !dbg !4260
  call void @llvm.dbg.value(metadata i8* %0, metadata !4245, metadata !DIExpression()) #11, !dbg !4262
  call void @llvm.dbg.value(metadata i32 0, metadata !4218, metadata !DIExpression()) #11, !dbg !4263
  call void @llvm.dbg.value(metadata i8* %0, metadata !4219, metadata !DIExpression()) #11, !dbg !4265
  call void @llvm.dbg.value(metadata i64 -1, metadata !4220, metadata !DIExpression()) #11, !dbg !4266
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4267
  ret i8* %2, !dbg !4268
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !4269 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4308, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i8* %1, metadata !4309, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i8* %2, metadata !4310, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i8* %3, metadata !4311, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i8** %4, metadata !4312, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i64 %5, metadata !4313, metadata !DIExpression()), !dbg !4319
  %7 = icmp eq i8* %1, null, !dbg !4320
  br i1 %7, label %10, label %8, !dbg !4322

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !4323
  br label %12, !dbg !4323

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.102, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !4324
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i32 5) #11, !dbg !4325
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !4325
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.104, i64 0, i64 0), i32 5) #11, !dbg !4326
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !4326
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
  ], !dbg !4327

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4328
  unreachable, !dbg !4328

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.105, i64 0, i64 0), i32 5) #11, !dbg !4330
  %20 = load i8*, i8** %4, align 8, !dbg !4330, !tbaa !726
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !4330
  br label %146, !dbg !4331

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.106, i64 0, i64 0), i32 5) #11, !dbg !4332
  %24 = load i8*, i8** %4, align 8, !dbg !4332, !tbaa !726
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4332
  %26 = load i8*, i8** %25, align 8, !dbg !4332, !tbaa !726
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !4332
  br label %146, !dbg !4333

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.107, i64 0, i64 0), i32 5) #11, !dbg !4334
  %30 = load i8*, i8** %4, align 8, !dbg !4334, !tbaa !726
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4334
  %32 = load i8*, i8** %31, align 8, !dbg !4334, !tbaa !726
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4334
  %34 = load i8*, i8** %33, align 8, !dbg !4334, !tbaa !726
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !4334
  br label %146, !dbg !4335

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.108, i64 0, i64 0), i32 5) #11, !dbg !4336
  %38 = load i8*, i8** %4, align 8, !dbg !4336, !tbaa !726
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4336
  %40 = load i8*, i8** %39, align 8, !dbg !4336, !tbaa !726
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4336
  %42 = load i8*, i8** %41, align 8, !dbg !4336, !tbaa !726
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4336
  %44 = load i8*, i8** %43, align 8, !dbg !4336, !tbaa !726
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !4336
  br label %146, !dbg !4337

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.109, i64 0, i64 0), i32 5) #11, !dbg !4338
  %48 = load i8*, i8** %4, align 8, !dbg !4338, !tbaa !726
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4338
  %50 = load i8*, i8** %49, align 8, !dbg !4338, !tbaa !726
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4338
  %52 = load i8*, i8** %51, align 8, !dbg !4338, !tbaa !726
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4338
  %54 = load i8*, i8** %53, align 8, !dbg !4338, !tbaa !726
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4338
  %56 = load i8*, i8** %55, align 8, !dbg !4338, !tbaa !726
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !4338
  br label %146, !dbg !4339

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.110, i64 0, i64 0), i32 5) #11, !dbg !4340
  %60 = load i8*, i8** %4, align 8, !dbg !4340, !tbaa !726
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4340
  %62 = load i8*, i8** %61, align 8, !dbg !4340, !tbaa !726
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4340
  %64 = load i8*, i8** %63, align 8, !dbg !4340, !tbaa !726
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4340
  %66 = load i8*, i8** %65, align 8, !dbg !4340, !tbaa !726
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4340
  %68 = load i8*, i8** %67, align 8, !dbg !4340, !tbaa !726
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4340
  %70 = load i8*, i8** %69, align 8, !dbg !4340, !tbaa !726
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !4340
  br label %146, !dbg !4341

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.111, i64 0, i64 0), i32 5) #11, !dbg !4342
  %74 = load i8*, i8** %4, align 8, !dbg !4342, !tbaa !726
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4342
  %76 = load i8*, i8** %75, align 8, !dbg !4342, !tbaa !726
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4342
  %78 = load i8*, i8** %77, align 8, !dbg !4342, !tbaa !726
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4342
  %80 = load i8*, i8** %79, align 8, !dbg !4342, !tbaa !726
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4342
  %82 = load i8*, i8** %81, align 8, !dbg !4342, !tbaa !726
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4342
  %84 = load i8*, i8** %83, align 8, !dbg !4342, !tbaa !726
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4342
  %86 = load i8*, i8** %85, align 8, !dbg !4342, !tbaa !726
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !4342
  br label %146, !dbg !4343

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.112, i64 0, i64 0), i32 5) #11, !dbg !4344
  %90 = load i8*, i8** %4, align 8, !dbg !4344, !tbaa !726
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4344
  %92 = load i8*, i8** %91, align 8, !dbg !4344, !tbaa !726
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4344
  %94 = load i8*, i8** %93, align 8, !dbg !4344, !tbaa !726
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4344
  %96 = load i8*, i8** %95, align 8, !dbg !4344, !tbaa !726
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4344
  %98 = load i8*, i8** %97, align 8, !dbg !4344, !tbaa !726
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4344
  %100 = load i8*, i8** %99, align 8, !dbg !4344, !tbaa !726
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4344
  %102 = load i8*, i8** %101, align 8, !dbg !4344, !tbaa !726
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4344
  %104 = load i8*, i8** %103, align 8, !dbg !4344, !tbaa !726
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !4344
  br label %146, !dbg !4345

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.113, i64 0, i64 0), i32 5) #11, !dbg !4346
  %108 = load i8*, i8** %4, align 8, !dbg !4346, !tbaa !726
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4346
  %110 = load i8*, i8** %109, align 8, !dbg !4346, !tbaa !726
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4346
  %112 = load i8*, i8** %111, align 8, !dbg !4346, !tbaa !726
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4346
  %114 = load i8*, i8** %113, align 8, !dbg !4346, !tbaa !726
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4346
  %116 = load i8*, i8** %115, align 8, !dbg !4346, !tbaa !726
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4346
  %118 = load i8*, i8** %117, align 8, !dbg !4346, !tbaa !726
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4346
  %120 = load i8*, i8** %119, align 8, !dbg !4346, !tbaa !726
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4346
  %122 = load i8*, i8** %121, align 8, !dbg !4346, !tbaa !726
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4346
  %124 = load i8*, i8** %123, align 8, !dbg !4346, !tbaa !726
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !4346
  br label %146, !dbg !4347

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.114, i64 0, i64 0), i32 5) #11, !dbg !4348
  %128 = load i8*, i8** %4, align 8, !dbg !4348, !tbaa !726
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4348
  %130 = load i8*, i8** %129, align 8, !dbg !4348, !tbaa !726
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4348
  %132 = load i8*, i8** %131, align 8, !dbg !4348, !tbaa !726
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4348
  %134 = load i8*, i8** %133, align 8, !dbg !4348, !tbaa !726
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4348
  %136 = load i8*, i8** %135, align 8, !dbg !4348, !tbaa !726
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4348
  %138 = load i8*, i8** %137, align 8, !dbg !4348, !tbaa !726
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4348
  %140 = load i8*, i8** %139, align 8, !dbg !4348, !tbaa !726
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4348
  %142 = load i8*, i8** %141, align 8, !dbg !4348, !tbaa !726
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4348
  %144 = load i8*, i8** %143, align 8, !dbg !4348, !tbaa !726
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !4348
  br label %146, !dbg !4349

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4350
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !4351 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4355, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i8* %1, metadata !4356, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i8* %2, metadata !4357, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i8* %3, metadata !4358, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i8** %4, metadata !4359, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata i64 0, metadata !4360, metadata !DIExpression()), !dbg !4366
  br label %6, !dbg !4367

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4369
  call void @llvm.dbg.value(metadata i64 %7, metadata !4360, metadata !DIExpression()), !dbg !4366
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4371
  %9 = load i8*, i8** %8, align 8, !dbg !4371, !tbaa !726
  %10 = icmp eq i8* %9, null, !dbg !4372
  %11 = add i64 %7, 1, !dbg !4373
  call void @llvm.dbg.value(metadata i64 %11, metadata !4360, metadata !DIExpression()), !dbg !4366
  br i1 %10, label %12, label %6, !dbg !4372, !llvm.loop !4374

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4360, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 %7, metadata !4360, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 %7, metadata !4360, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 %7, metadata !4360, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 %7, metadata !4360, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 %7, metadata !4360, metadata !DIExpression()), !dbg !4366
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4376
  ret void, !dbg !4377
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !4378 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4389, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i8* %1, metadata !4390, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8* %2, metadata !4391, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i8* %3, metadata !4392, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4393, metadata !DIExpression()), !dbg !4401
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4402
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !4402
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4395, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.value(metadata i64 0, metadata !4394, metadata !DIExpression()), !dbg !4404
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !4394, metadata !DIExpression()), !dbg !4404
  %11 = load i32, i32* %8, align 8, !dbg !4405
  %12 = icmp ult i32 %11, 41, !dbg !4405
  br i1 %12, label %13, label %18, !dbg !4405

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4405
  %15 = sext i32 %11 to i64, !dbg !4405
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4405
  %17 = add i32 %11, 8, !dbg !4405
  store i32 %17, i32* %8, align 8, !dbg !4405
  br label %21, !dbg !4405

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4405
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4405
  store i8* %20, i8** %10, align 8, !dbg !4405
  br label %21, !dbg !4405

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4405
  %25 = load i8*, i8** %24, align 8, !dbg !4405
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4408
  store i8* %25, i8** %26, align 16, !dbg !4409, !tbaa !726
  %27 = icmp eq i8* %25, null, !dbg !4410
  br i1 %27, label %30, label %28, !dbg !4411

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4394, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 1, metadata !4394, metadata !DIExpression()), !dbg !4404
  %29 = icmp ult i32 %22, 41, !dbg !4405
  br i1 %29, label %35, label %32, !dbg !4405

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4412
  call void @llvm.dbg.value(metadata i64 %31, metadata !4394, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 %31, metadata !4394, metadata !DIExpression()), !dbg !4404
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4413
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !4414
  ret void, !dbg !4414

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4405
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4405
  store i8* %34, i8** %10, align 8, !dbg !4405
  br label %40, !dbg !4405

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4405
  %37 = sext i32 %22 to i64, !dbg !4405
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4405
  %39 = add i32 %22, 8, !dbg !4405
  store i32 %39, i32* %8, align 8, !dbg !4405
  br label %40, !dbg !4405

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4405
  %44 = load i8*, i8** %43, align 8, !dbg !4405
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4408
  store i8* %44, i8** %45, align 8, !dbg !4409, !tbaa !726
  %46 = icmp eq i8* %44, null, !dbg !4410
  br i1 %46, label %30, label %47, !dbg !4411

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4394, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 2, metadata !4394, metadata !DIExpression()), !dbg !4404
  %48 = icmp ult i32 %41, 41, !dbg !4405
  br i1 %48, label %52, label %49, !dbg !4405

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4405
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4405
  store i8* %51, i8** %10, align 8, !dbg !4405
  br label %57, !dbg !4405

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4405
  %54 = sext i32 %41 to i64, !dbg !4405
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4405
  %56 = add i32 %41, 8, !dbg !4405
  store i32 %56, i32* %8, align 8, !dbg !4405
  br label %57, !dbg !4405

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4405
  %61 = load i8*, i8** %60, align 8, !dbg !4405
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4408
  store i8* %61, i8** %62, align 16, !dbg !4409, !tbaa !726
  %63 = icmp eq i8* %61, null, !dbg !4410
  br i1 %63, label %30, label %64, !dbg !4411

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4394, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 3, metadata !4394, metadata !DIExpression()), !dbg !4404
  %65 = icmp ult i32 %58, 41, !dbg !4405
  br i1 %65, label %69, label %66, !dbg !4405

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4405
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4405
  store i8* %68, i8** %10, align 8, !dbg !4405
  br label %74, !dbg !4405

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4405
  %71 = sext i32 %58 to i64, !dbg !4405
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4405
  %73 = add i32 %58, 8, !dbg !4405
  store i32 %73, i32* %8, align 8, !dbg !4405
  br label %74, !dbg !4405

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4405
  %78 = load i8*, i8** %77, align 8, !dbg !4405
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4408
  store i8* %78, i8** %79, align 8, !dbg !4409, !tbaa !726
  %80 = icmp eq i8* %78, null, !dbg !4410
  br i1 %80, label %30, label %81, !dbg !4411

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4394, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 4, metadata !4394, metadata !DIExpression()), !dbg !4404
  %82 = icmp ult i32 %75, 41, !dbg !4405
  br i1 %82, label %86, label %83, !dbg !4405

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4405
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4405
  store i8* %85, i8** %10, align 8, !dbg !4405
  br label %91, !dbg !4405

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4405
  %88 = sext i32 %75 to i64, !dbg !4405
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4405
  %90 = add i32 %75, 8, !dbg !4405
  store i32 %90, i32* %8, align 8, !dbg !4405
  br label %91, !dbg !4405

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4405
  %95 = load i8*, i8** %94, align 8, !dbg !4405
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4408
  store i8* %95, i8** %96, align 16, !dbg !4409, !tbaa !726
  %97 = icmp eq i8* %95, null, !dbg !4410
  br i1 %97, label %30, label %98, !dbg !4411

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4394, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 5, metadata !4394, metadata !DIExpression()), !dbg !4404
  %99 = icmp ult i32 %92, 41, !dbg !4405
  br i1 %99, label %103, label %100, !dbg !4405

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4405
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4405
  store i8* %102, i8** %10, align 8, !dbg !4405
  br label %108, !dbg !4405

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4405
  %105 = sext i32 %92 to i64, !dbg !4405
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4405
  %107 = add i32 %92, 8, !dbg !4405
  store i32 %107, i32* %8, align 8, !dbg !4405
  br label %108, !dbg !4405

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4405
  %111 = load i8*, i8** %110, align 8, !dbg !4405
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4408
  store i8* %111, i8** %112, align 8, !dbg !4409, !tbaa !726
  %113 = icmp eq i8* %111, null, !dbg !4410
  br i1 %113, label %30, label %114, !dbg !4411

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4394, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 6, metadata !4394, metadata !DIExpression()), !dbg !4404
  %115 = load i8*, i8** %10, align 8, !dbg !4405
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4405
  store i8* %116, i8** %10, align 8, !dbg !4405
  %117 = bitcast i8* %115 to i8**, !dbg !4405
  %118 = load i8*, i8** %117, align 8, !dbg !4405
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4408
  store i8* %118, i8** %119, align 16, !dbg !4409, !tbaa !726
  %120 = icmp eq i8* %118, null, !dbg !4410
  br i1 %120, label %30, label %121, !dbg !4411

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4394, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 7, metadata !4394, metadata !DIExpression()), !dbg !4404
  %122 = load i8*, i8** %10, align 8, !dbg !4405
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4405
  store i8* %123, i8** %10, align 8, !dbg !4405
  %124 = bitcast i8* %122 to i8**, !dbg !4405
  %125 = load i8*, i8** %124, align 8, !dbg !4405
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4408
  store i8* %125, i8** %126, align 8, !dbg !4409, !tbaa !726
  %127 = icmp eq i8* %125, null, !dbg !4410
  br i1 %127, label %30, label %128, !dbg !4411

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4394, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 8, metadata !4394, metadata !DIExpression()), !dbg !4404
  %129 = load i8*, i8** %10, align 8, !dbg !4405
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4405
  store i8* %130, i8** %10, align 8, !dbg !4405
  %131 = bitcast i8* %129 to i8**, !dbg !4405
  %132 = load i8*, i8** %131, align 8, !dbg !4405
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4408
  store i8* %132, i8** %133, align 16, !dbg !4409, !tbaa !726
  %134 = icmp eq i8* %132, null, !dbg !4410
  br i1 %134, label %30, label %135, !dbg !4411

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4394, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 9, metadata !4394, metadata !DIExpression()), !dbg !4404
  %136 = load i8*, i8** %10, align 8, !dbg !4405
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4405
  store i8* %137, i8** %10, align 8, !dbg !4405
  %138 = bitcast i8* %136 to i8**, !dbg !4405
  %139 = load i8*, i8** %138, align 8, !dbg !4405
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4408
  store i8* %139, i8** %140, align 8, !dbg !4409, !tbaa !726
  %141 = icmp eq i8* %139, null, !dbg !4410
  %142 = select i1 %141, i64 9, i64 10, !dbg !4411
  br label %30, !dbg !4411
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !4415 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4419, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i8* %1, metadata !4420, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i8* %2, metadata !4421, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i8* %3, metadata !4422, metadata !DIExpression()), !dbg !4431
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4432
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !4432
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4423, metadata !DIExpression()), !dbg !4433
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4434
  call void @llvm.va_start(i8* nonnull %6), !dbg !4434
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4435
  call void @llvm.va_end(i8* nonnull %6), !dbg !4436
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !4437
  ret void, !dbg !4437
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !4438 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.117, i64 0, i64 0), i32 5) #11, !dbg !4439
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.118, i64 0, i64 0)) #11, !dbg !4439
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.119, i64 0, i64 0), i32 5) #11, !dbg !4440
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.120, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.121, i64 0, i64 0)) #11, !dbg !4440
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.122, i64 0, i64 0), i32 5) #11, !dbg !4441
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4441, !tbaa !726
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !4441
  ret void, !dbg !4442
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4443 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4447, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i64 %1, metadata !4448, metadata !DIExpression()), !dbg !4450
  %3 = udiv i64 9223372036854775807, %1, !dbg !4451
  %4 = icmp ult i64 %3, %0, !dbg !4451
  br i1 %4, label %5, label %6, !dbg !4453

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4454
  unreachable, !dbg !4454

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4455
  call void @llvm.dbg.value(metadata i64 %7, metadata !4456, metadata !DIExpression()) #11, !dbg !4463
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4465
  call void @llvm.dbg.value(metadata i8* %8, metadata !4462, metadata !DIExpression()) #11, !dbg !4466
  %9 = icmp eq i8* %8, null, !dbg !4467
  %10 = icmp ne i64 %7, 0, !dbg !4469
  %11 = and i1 %10, %9, !dbg !4470
  br i1 %11, label %12, label %13, !dbg !4470

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4471
  unreachable, !dbg !4471

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4472
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !4457 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4456, metadata !DIExpression()), !dbg !4473
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4474
  call void @llvm.dbg.value(metadata i8* %2, metadata !4462, metadata !DIExpression()), !dbg !4475
  %3 = icmp eq i8* %2, null, !dbg !4476
  %4 = icmp ne i64 %0, 0, !dbg !4477
  %5 = and i1 %4, %3, !dbg !4478
  br i1 %5, label %6, label %7, !dbg !4478

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4479
  unreachable, !dbg !4479

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4480
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4481 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4485, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i64 %1, metadata !4486, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.value(metadata i64 %2, metadata !4487, metadata !DIExpression()), !dbg !4490
  %4 = udiv i64 9223372036854775807, %2, !dbg !4491
  %5 = icmp ult i64 %4, %1, !dbg !4491
  br i1 %5, label %6, label %7, !dbg !4493

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4494
  unreachable, !dbg !4494

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4495
  call void @llvm.dbg.value(metadata i8* %0, metadata !4496, metadata !DIExpression()) #11, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %8, metadata !4501, metadata !DIExpression()) #11, !dbg !4504
  %9 = icmp eq i64 %8, 0, !dbg !4505
  %10 = icmp ne i8* %0, null, !dbg !4507
  %11 = and i1 %10, %9, !dbg !4508
  br i1 %11, label %12, label %13, !dbg !4508

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4509
  br label %19, !dbg !4511

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4512
  call void @llvm.dbg.value(metadata i8* %14, metadata !4496, metadata !DIExpression()) #11, !dbg !4502
  %15 = icmp eq i8* %14, null, !dbg !4513
  %16 = icmp ne i64 %8, 0, !dbg !4515
  %17 = and i1 %16, %15, !dbg !4516
  br i1 %17, label %18, label %19, !dbg !4516

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4517
  unreachable, !dbg !4517

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4518
  ret i8* %20, !dbg !4519
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !4497 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4496, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i64 %1, metadata !4501, metadata !DIExpression()), !dbg !4521
  %3 = icmp eq i64 %1, 0, !dbg !4522
  %4 = icmp ne i8* %0, null, !dbg !4523
  %5 = and i1 %4, %3, !dbg !4524
  br i1 %5, label %6, label %7, !dbg !4524

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4525
  br label %13, !dbg !4526

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4527
  call void @llvm.dbg.value(metadata i8* %8, metadata !4496, metadata !DIExpression()), !dbg !4520
  %9 = icmp eq i8* %8, null, !dbg !4528
  %10 = icmp ne i64 %1, 0, !dbg !4529
  %11 = and i1 %10, %9, !dbg !4530
  br i1 %11, label %12, label %13, !dbg !4530

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4531
  unreachable, !dbg !4531

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4532
  ret i8* %14, !dbg !4533
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !235 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !240, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64* %1, metadata !241, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %2, metadata !242, metadata !DIExpression()), !dbg !4536
  %4 = load i64, i64* %1, align 8, !dbg !4537, !tbaa !967
  call void @llvm.dbg.value(metadata i64 %4, metadata !243, metadata !DIExpression()), !dbg !4538
  %5 = icmp eq i8* %0, null, !dbg !4539
  br i1 %5, label %6, label %20, !dbg !4541

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4542
  br i1 %7, label %8, label %13, !dbg !4545

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4546
  call void @llvm.dbg.value(metadata i64 %9, metadata !243, metadata !DIExpression()), !dbg !4538
  %10 = icmp ugt i64 %2, 128, !dbg !4548
  %11 = zext i1 %10 to i64, !dbg !4548
  %12 = add nuw nsw i64 %9, %11, !dbg !4549
  call void @llvm.dbg.value(metadata i64 %12, metadata !243, metadata !DIExpression()), !dbg !4538
  br label %13, !dbg !4550

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4551
  call void @llvm.dbg.value(metadata i64 %14, metadata !243, metadata !DIExpression()), !dbg !4538
  %15 = udiv i64 9223372036854775807, %2, !dbg !4552
  %16 = icmp ult i64 %15, %14, !dbg !4552
  br i1 %16, label %19, label %17, !dbg !4554

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !243, metadata !DIExpression()), !dbg !4538
  store i64 %14, i64* %1, align 8, !dbg !4555, !tbaa !967
  %18 = mul i64 %14, %2, !dbg !4556
  call void @llvm.dbg.value(metadata i8* %0, metadata !4496, metadata !DIExpression()) #11, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %28, metadata !4501, metadata !DIExpression()) #11, !dbg !4559
  br label %31, !dbg !4560

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4561
  unreachable, !dbg !4561

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4562
  %22 = icmp ugt i64 %21, %4, !dbg !4565
  br i1 %22, label %24, label %23, !dbg !4566

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !4567
  unreachable, !dbg !4567

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4568
  %26 = add i64 %4, 1, !dbg !4569
  %27 = add i64 %26, %25, !dbg !4570
  call void @llvm.dbg.value(metadata i64 %27, metadata !243, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i64 %27, metadata !243, metadata !DIExpression()), !dbg !4538
  store i64 %27, i64* %1, align 8, !dbg !4555, !tbaa !967
  %28 = mul i64 %27, %2, !dbg !4556
  call void @llvm.dbg.value(metadata i8* %0, metadata !4496, metadata !DIExpression()) #11, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %28, metadata !4501, metadata !DIExpression()) #11, !dbg !4559
  %29 = icmp eq i64 %28, 0, !dbg !4571
  br i1 %29, label %30, label %31, !dbg !4560

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !4572
  br label %38, !dbg !4573

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !4574
  call void @llvm.dbg.value(metadata i8* %33, metadata !4496, metadata !DIExpression()) #11, !dbg !4557
  %34 = icmp eq i8* %33, null, !dbg !4575
  %35 = icmp ne i64 %32, 0, !dbg !4576
  %36 = and i1 %35, %34, !dbg !4577
  br i1 %36, label %37, label %38, !dbg !4577

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !4578
  unreachable, !dbg !4578

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4579
  ret i8* %39, !dbg !4580
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4581 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4583, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i64 %0, metadata !4456, metadata !DIExpression()) #11, !dbg !4585
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4587
  call void @llvm.dbg.value(metadata i8* %2, metadata !4462, metadata !DIExpression()) #11, !dbg !4588
  %3 = icmp eq i8* %2, null, !dbg !4589
  %4 = icmp ne i64 %0, 0, !dbg !4590
  %5 = and i1 %4, %3, !dbg !4591
  br i1 %5, label %6, label %7, !dbg !4591

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4592
  unreachable, !dbg !4592

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4593
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4594 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4598, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata i64* %1, metadata !4599, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i8* %0, metadata !240, metadata !DIExpression()) #11, !dbg !4602
  call void @llvm.dbg.value(metadata i64* %1, metadata !241, metadata !DIExpression()) #11, !dbg !4604
  call void @llvm.dbg.value(metadata i64 1, metadata !242, metadata !DIExpression()) #11, !dbg !4605
  %3 = load i64, i64* %1, align 8, !dbg !4606, !tbaa !967
  call void @llvm.dbg.value(metadata i64 %3, metadata !243, metadata !DIExpression()) #11, !dbg !4607
  %4 = icmp eq i8* %0, null, !dbg !4608
  br i1 %4, label %5, label %12, !dbg !4609

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4610
  br i1 %6, label %9, label %7, !dbg !4611

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !243, metadata !DIExpression()) #11, !dbg !4607
  %8 = icmp slt i64 %3, 0, !dbg !4612
  br i1 %8, label %11, label %9, !dbg !4613

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !243, metadata !DIExpression()) #11, !dbg !4607
  store i64 %10, i64* %1, align 8, !dbg !4614, !tbaa !967
  call void @llvm.dbg.value(metadata i8* %0, metadata !4496, metadata !DIExpression()) #11, !dbg !4615
  call void @llvm.dbg.value(metadata i64 %18, metadata !4501, metadata !DIExpression()) #11, !dbg !4617
  br label %21, !dbg !4618

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4619
  unreachable, !dbg !4619

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4620
  br i1 %13, label %15, label %14, !dbg !4621

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !4622
  unreachable, !dbg !4622

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4623
  %17 = add i64 %3, 1, !dbg !4624
  %18 = add i64 %17, %16, !dbg !4625
  call void @llvm.dbg.value(metadata i64 %18, metadata !243, metadata !DIExpression()) #11, !dbg !4607
  call void @llvm.dbg.value(metadata i64 %18, metadata !243, metadata !DIExpression()) #11, !dbg !4607
  store i64 %18, i64* %1, align 8, !dbg !4614, !tbaa !967
  call void @llvm.dbg.value(metadata i8* %0, metadata !4496, metadata !DIExpression()) #11, !dbg !4615
  call void @llvm.dbg.value(metadata i64 %18, metadata !4501, metadata !DIExpression()) #11, !dbg !4617
  %19 = icmp eq i64 %18, 0, !dbg !4626
  br i1 %19, label %20, label %21, !dbg !4618

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !4627
  br label %28, !dbg !4628

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !4629
  call void @llvm.dbg.value(metadata i8* %23, metadata !4496, metadata !DIExpression()) #11, !dbg !4615
  %24 = icmp eq i8* %23, null, !dbg !4630
  %25 = icmp ne i64 %22, 0, !dbg !4631
  %26 = and i1 %25, %24, !dbg !4632
  br i1 %26, label %27, label %28, !dbg !4632

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !4633
  unreachable, !dbg !4633

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4634
  ret i8* %29, !dbg !4635
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4636 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4638, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.value(metadata i64 %0, metadata !4456, metadata !DIExpression()) #11, !dbg !4640
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4642
  call void @llvm.dbg.value(metadata i8* %2, metadata !4462, metadata !DIExpression()) #11, !dbg !4643
  %3 = icmp eq i8* %2, null, !dbg !4644
  %4 = icmp ne i64 %0, 0, !dbg !4645
  %5 = and i1 %4, %3, !dbg !4646
  br i1 %5, label %6, label %7, !dbg !4646

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4647
  unreachable, !dbg !4647

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4648
  ret i8* %2, !dbg !4649
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4650 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4652, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i64 %1, metadata !4653, metadata !DIExpression()), !dbg !4656
  %3 = udiv i64 9223372036854775807, %1, !dbg !4657
  %4 = icmp ult i64 %3, %0, !dbg !4657
  br i1 %4, label %8, label %5, !dbg !4659

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4660
  call void @llvm.dbg.value(metadata i8* %6, metadata !4654, metadata !DIExpression()), !dbg !4661
  %7 = icmp eq i8* %6, null, !dbg !4662
  br i1 %7, label %8, label %9, !dbg !4663

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4664
  unreachable, !dbg !4664

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4665
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4666 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4672, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %1, metadata !4673, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata i64 %1, metadata !4456, metadata !DIExpression()) #11, !dbg !4676
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4678
  call void @llvm.dbg.value(metadata i8* %3, metadata !4462, metadata !DIExpression()) #11, !dbg !4679
  %4 = icmp eq i8* %3, null, !dbg !4680
  %5 = icmp ne i64 %1, 0, !dbg !4681
  %6 = and i1 %5, %4, !dbg !4682
  br i1 %6, label %7, label %8, !dbg !4682

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4683
  unreachable, !dbg !4683

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4684
  ret i8* %3, !dbg !4685
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4686 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4688, metadata !DIExpression()), !dbg !4689
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4690
  %3 = add i64 %2, 1, !dbg !4691
  call void @llvm.dbg.value(metadata i8* %0, metadata !4672, metadata !DIExpression()) #11, !dbg !4692
  call void @llvm.dbg.value(metadata i64 %3, metadata !4673, metadata !DIExpression()) #11, !dbg !4694
  call void @llvm.dbg.value(metadata i64 %3, metadata !4456, metadata !DIExpression()) #11, !dbg !4695
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4697
  call void @llvm.dbg.value(metadata i8* %4, metadata !4462, metadata !DIExpression()) #11, !dbg !4698
  %5 = icmp eq i8* %4, null, !dbg !4699
  %6 = icmp ne i64 %3, 0, !dbg !4700
  %7 = and i1 %6, %5, !dbg !4701
  br i1 %7, label %8, label %9, !dbg !4701

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4702
  unreachable, !dbg !4702

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !4703
  ret i8* %4, !dbg !4704
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4705 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4707, !tbaa !794
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.133, i64 0, i64 0), i32 5) #11, !dbg !4708
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.134, i64 0, i64 0), i8* %2) #11, !dbg !4709
  tail call void @abort() #15, !dbg !4710
  unreachable, !dbg !4710
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4711 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4714, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata i64 %1, metadata !4715, metadata !DIExpression()), !dbg !4721
  %3 = icmp eq i64 %0, 0, !dbg !4722
  %4 = icmp eq i64 %1, 0, !dbg !4723
  %5 = or i1 %3, %4, !dbg !4724
  br i1 %5, label %12, label %6, !dbg !4724

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4725
  call void @llvm.dbg.value(metadata i64 %7, metadata !4717, metadata !DIExpression()), !dbg !4726
  %8 = udiv i64 %7, %1, !dbg !4727
  %9 = icmp eq i64 %8, %0, !dbg !4729
  br i1 %9, label %12, label %10, !dbg !4730

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4731
  store i32 12, i32* %11, align 4, !dbg !4733, !tbaa !794
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4714, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata i64 %13, metadata !4715, metadata !DIExpression()), !dbg !4721
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4734
  call void @llvm.dbg.value(metadata i8* %15, metadata !4716, metadata !DIExpression()), !dbg !4735
  br label %16, !dbg !4736

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4737
  ret i8* %17, !dbg !4738
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4739 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4778, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata i32 0, metadata !4779, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i32 0, metadata !4781, metadata !DIExpression()), !dbg !4784
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4785
  call void @llvm.dbg.value(metadata i32 %2, metadata !4780, metadata !DIExpression()), !dbg !4786
  %3 = icmp slt i32 %2, 0, !dbg !4787
  br i1 %3, label %4, label %6, !dbg !4789

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4790
  br label %24, !dbg !4791

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4792
  %8 = icmp eq i32 %7, 0, !dbg !4792
  br i1 %8, label %13, label %9, !dbg !4794

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4795
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4796
  %12 = icmp eq i64 %11, -1, !dbg !4797
  br i1 %12, label %16, label %13, !dbg !4798

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4799
  %15 = icmp eq i32 %14, 0, !dbg !4799
  br i1 %15, label %16, label %18, !dbg !4800

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4779, metadata !DIExpression()), !dbg !4783
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4801
  call void @llvm.dbg.value(metadata i32 %21, metadata !4781, metadata !DIExpression()), !dbg !4784
  br label %24, !dbg !4802

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4803
  %20 = load i32, i32* %19, align 4, !dbg !4803, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %20, metadata !4779, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i32 %20, metadata !4779, metadata !DIExpression()), !dbg !4783
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4801
  call void @llvm.dbg.value(metadata i32 %21, metadata !4781, metadata !DIExpression()), !dbg !4784
  %22 = icmp eq i32 %20, 0, !dbg !4804
  br i1 %22, label %24, label %23, !dbg !4802

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4806, !tbaa !794
  call void @llvm.dbg.value(metadata i32 -1, metadata !4781, metadata !DIExpression()), !dbg !4784
  br label %24, !dbg !4808

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4809
  ret i32 %25, !dbg !4810
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4811 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4850, metadata !DIExpression()), !dbg !4851
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4852
  br i1 %2, label %6, label %3, !dbg !4854

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4855
  %5 = icmp eq i32 %4, 0, !dbg !4855
  br i1 %5, label %6, label %8, !dbg !4856

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4857
  br label %17, !dbg !4858

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4859, metadata !DIExpression()) #11, !dbg !4864
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4866
  %10 = load i32, i32* %9, align 8, !dbg !4866, !tbaa !4868
  %11 = and i32 %10, 256, !dbg !4869
  %12 = icmp eq i32 %11, 0, !dbg !4869
  br i1 %12, label %15, label %13, !dbg !4870

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4871
  br label %15, !dbg !4871

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4872
  br label %17, !dbg !4873

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4874
  ret i32 %18, !dbg !4875
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4876 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4916, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata i64 %1, metadata !4917, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i32 %2, metadata !4918, metadata !DIExpression()), !dbg !4924
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4925
  %5 = load i8*, i8** %4, align 8, !dbg !4925, !tbaa !4926
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4927
  %7 = load i8*, i8** %6, align 8, !dbg !4927, !tbaa !4928
  %8 = icmp eq i8* %5, %7, !dbg !4929
  br i1 %8, label %9, label %28, !dbg !4930

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4931
  %11 = load i8*, i8** %10, align 8, !dbg !4931, !tbaa !1084
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4932
  %13 = load i8*, i8** %12, align 8, !dbg !4932, !tbaa !4933
  %14 = icmp eq i8* %11, %13, !dbg !4934
  br i1 %14, label %15, label %28, !dbg !4935

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4936
  %17 = load i8*, i8** %16, align 8, !dbg !4936, !tbaa !4937
  %18 = icmp eq i8* %17, null, !dbg !4938
  br i1 %18, label %19, label %28, !dbg !4939

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4940
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4941
  call void @llvm.dbg.value(metadata i64 %21, metadata !4919, metadata !DIExpression()), !dbg !4942
  %22 = icmp eq i64 %21, -1, !dbg !4943
  br i1 %22, label %30, label %23, !dbg !4945

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4946
  %25 = load i32, i32* %24, align 8, !dbg !4947, !tbaa !4868
  %26 = and i32 %25, -17, !dbg !4947
  store i32 %26, i32* %24, align 8, !dbg !4947, !tbaa !4868
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4948
  store i64 %21, i64* %27, align 8, !dbg !4949, !tbaa !4950
  br label %30, !dbg !4951

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4952
  br label %30, !dbg !4953

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4954
  ret i32 %31, !dbg !4955
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4956 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4973, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.value(metadata i8* %1, metadata !4974, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.value(metadata i64 %2, metadata !4975, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4976, metadata !DIExpression()), !dbg !4985
  %6 = bitcast i32* %5 to i8*, !dbg !4986
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4986
  %7 = icmp eq i32* %0, null, !dbg !4987
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4989
  call void @llvm.dbg.value(metadata i32* %8, metadata !4973, metadata !DIExpression()), !dbg !4982
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4990
  call void @llvm.dbg.value(metadata i64 %9, metadata !4977, metadata !DIExpression()), !dbg !4991
  %10 = icmp ugt i64 %9, -3, !dbg !4992
  %11 = icmp ne i64 %2, 0, !dbg !4993
  %12 = and i1 %11, %10, !dbg !4994
  br i1 %12, label %13, label %18, !dbg !4994

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4995
  br i1 %14, label %18, label %15, !dbg !4996

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4997, !tbaa !1009
  call void @llvm.dbg.value(metadata i8 %16, metadata !4979, metadata !DIExpression()), !dbg !4998
  %17 = zext i8 %16 to i32, !dbg !4999
  store i32 %17, i32* %8, align 4, !dbg !5000, !tbaa !794
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !5001
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !5002
  ret i64 %19, !dbg !5002
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @extract_trimmed_name(%struct.utmpx*) local_unnamed_addr #7 !dbg !5003 {
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !5032, metadata !DIExpression()), !dbg !5035
  %2 = tail call noalias i8* @xmalloc(i64 33) #11, !dbg !5036
  call void @llvm.dbg.value(metadata i8* %2, metadata !5034, metadata !DIExpression()), !dbg !5037
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !5038
  call void @llvm.dbg.value(metadata i8* %2, metadata !5039, metadata !DIExpression()) #11, !dbg !5049
  call void @llvm.dbg.value(metadata i8* %3, metadata !5047, metadata !DIExpression()) #11, !dbg !5049
  call void @llvm.dbg.value(metadata i64 32, metadata !5048, metadata !DIExpression()) #11, !dbg !5049
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false, i1 true) #11, !dbg !5051
  %5 = tail call i8* @__strncpy_chk(i8* nonnull %2, i8* nonnull %3, i64 32, i64 %4) #11, !dbg !5052
  %6 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !5053
  store i8 0, i8* %6, align 1, !dbg !5054, !tbaa !1009
  %7 = tail call i64 @strlen(i8* nonnull %2) #14, !dbg !5055
  %8 = icmp sgt i64 %7, 0, !dbg !5057
  br i1 %8, label %9, label %18, !dbg !5059

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !5060
  call void @llvm.dbg.value(metadata i8* %10, metadata !5033, metadata !DIExpression()), !dbg !5061
  br label %11, !dbg !5062

; <label>:11:                                     ; preds = %9, %16
  %12 = phi i8* [ %13, %16 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i8* %12, metadata !5033, metadata !DIExpression()), !dbg !5061
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !5062
  %14 = load i8, i8* %13, align 1, !dbg !5062, !tbaa !1009
  %15 = icmp eq i8 %14, 32, !dbg !5063
  br i1 %15, label %16, label %18, !dbg !5064

; <label>:16:                                     ; preds = %11
  store i8 0, i8* %13, align 1, !dbg !5065, !tbaa !1009
  call void @llvm.dbg.value(metadata i8* %13, metadata !5033, metadata !DIExpression()), !dbg !5061
  %17 = icmp ult i8* %2, %13, !dbg !5057
  br i1 %17, label %11, label %18, !dbg !5059, !llvm.loop !5066

; <label>:18:                                     ; preds = %11, %16, %1
  ret i8* %2, !dbg !5068
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @read_utmp(i8*, i64* nocapture, %struct.utmpx** nocapture, i32) local_unnamed_addr #7 !dbg !5069 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5075, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata i64* %1, metadata !5076, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata %struct.utmpx** %2, metadata !5077, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata i32 %3, metadata !5078, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.value(metadata i64 0, metadata !5079, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.value(metadata i64 0, metadata !5080, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !5081, metadata !DIExpression()), !dbg !5089
  %5 = tail call i32 @utmpxname(i8* %0) #11, !dbg !5090
  tail call void @setutxent() #11, !dbg !5091
  call void @llvm.dbg.value(metadata i64 0, metadata !5079, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !5081, metadata !DIExpression()), !dbg !5089
  %6 = tail call %struct.utmpx* @getutxent() #11, !dbg !5092
  call void @llvm.dbg.value(metadata %struct.utmpx* %6, metadata !5082, metadata !DIExpression()), !dbg !5093
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !5094
  br i1 %7, label %79, label %8, !dbg !5095

; <label>:8:                                      ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br label %13, !dbg !5095

; <label>:13:                                     ; preds = %8, %72
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %77, %72 ]
  %15 = phi i64 [ 0, %8 ], [ %76, %72 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %75, %72 ]
  %17 = phi i8* [ null, %8 ], [ %74, %72 ]
  %18 = phi i64 [ 0, %8 ], [ %73, %72 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !5079, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.value(metadata %struct.utmpx* %16, metadata !5081, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata %struct.utmpx* %14, metadata !5096, metadata !DIExpression()) #11, !dbg !5103
  call void @llvm.dbg.value(metadata i32 %3, metadata !5101, metadata !DIExpression()) #11, !dbg !5106
  %19 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !5107
  %20 = load i8, i8* %19, align 4, !dbg !5107, !tbaa !1009
  %21 = icmp eq i8 %20, 0, !dbg !5107
  br i1 %21, label %26, label %22, !dbg !5107

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !5107
  %24 = load i16, i16* %23, align 4, !dbg !5107, !tbaa !1011
  %25 = icmp eq i16 %24, 7, !dbg !5107
  br label %26

; <label>:26:                                     ; preds = %22, %13
  %27 = phi i1 [ false, %13 ], [ %25, %22 ], !dbg !5108
  %28 = or i1 %10, %27, !dbg !5109
  br i1 %28, label %29, label %72, !dbg !5109

; <label>:29:                                     ; preds = %26
  %30 = xor i1 %27, true, !dbg !5111
  %31 = or i1 %12, %30, !dbg !5111
  br i1 %31, label %43, label %32, !dbg !5111

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !5113
  %34 = load i32, i32* %33, align 4, !dbg !5113, !tbaa !5114
  %35 = icmp sgt i32 %34, 0, !dbg !5115
  br i1 %35, label %36, label %43, !dbg !5116

; <label>:36:                                     ; preds = %32
  %37 = tail call i32 @kill(i32 %34, i32 0) #11, !dbg !5117
  %38 = icmp slt i32 %37, 0, !dbg !5118
  br i1 %38, label %39, label %43, !dbg !5119

; <label>:39:                                     ; preds = %36
  %40 = tail call i32* @__errno_location() #17, !dbg !5120
  %41 = load i32, i32* %40, align 4, !dbg !5120, !tbaa !794
  %42 = icmp eq i32 %41, 3, !dbg !5121
  br i1 %42, label %72, label %43, !dbg !5122

; <label>:43:                                     ; preds = %39, %36, %32, %29
  call void @llvm.dbg.value(metadata i64 %18, metadata !5080, metadata !DIExpression()), !dbg !5088
  %44 = icmp eq i64 %15, %18, !dbg !5123
  br i1 %44, label %45, label %64, !dbg !5126

; <label>:45:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8* %17, metadata !266, metadata !DIExpression()) #11, !dbg !5127
  call void @llvm.dbg.value(metadata i64 384, metadata !268, metadata !DIExpression()) #11, !dbg !5129
  call void @llvm.dbg.value(metadata i64 undef, metadata !269, metadata !DIExpression()) #11, !dbg !5130
  %46 = icmp eq i8* %17, null, !dbg !5131
  br i1 %46, label %47, label %52, !dbg !5133

; <label>:47:                                     ; preds = %45
  %48 = icmp eq i64 %15, 0, !dbg !5134
  br i1 %48, label %59, label %49, !dbg !5137

; <label>:49:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i64 %18, metadata !269, metadata !DIExpression()) #11, !dbg !5130
  %50 = icmp ugt i64 %15, 24019198012642645, !dbg !5138
  br i1 %50, label %51, label %59, !dbg !5140

; <label>:51:                                     ; preds = %49
  tail call void @xalloc_die() #15, !dbg !5141
  unreachable, !dbg !5141

; <label>:52:                                     ; preds = %45
  %53 = icmp ult i64 %15, 16012798675095096, !dbg !5142
  br i1 %53, label %55, label %54, !dbg !5145

; <label>:54:                                     ; preds = %52
  tail call void @xalloc_die() #15, !dbg !5146
  unreachable, !dbg !5146

; <label>:55:                                     ; preds = %52
  %56 = lshr i64 %15, 1, !dbg !5147
  %57 = add i64 %15, 1, !dbg !5148
  %58 = add i64 %57, %56, !dbg !5149
  call void @llvm.dbg.value(metadata i64 %58, metadata !269, metadata !DIExpression()) #11, !dbg !5130
  br label %59

; <label>:59:                                     ; preds = %47, %49, %55
  %60 = phi i64 [ %58, %55 ], [ %15, %49 ], [ 1, %47 ], !dbg !5150
  call void @llvm.dbg.value(metadata i64 %60, metadata !269, metadata !DIExpression()) #11, !dbg !5130
  %61 = mul i64 %60, 384, !dbg !5151
  %62 = tail call i8* @xrealloc(i8* %17, i64 %61) #11, !dbg !5152
  %63 = bitcast i8* %62 to %struct.utmpx*, !dbg !5153
  call void @llvm.dbg.value(metadata %struct.utmpx* %63, metadata !5081, metadata !DIExpression()), !dbg !5089
  br label %64, !dbg !5154

; <label>:64:                                     ; preds = %59, %43
  %65 = phi i64 [ %60, %59 ], [ %18, %43 ], !dbg !5155
  %66 = phi i8* [ %62, %59 ], [ %17, %43 ], !dbg !5155
  %67 = phi %struct.utmpx* [ %63, %59 ], [ %16, %43 ], !dbg !5155
  call void @llvm.dbg.value(metadata %struct.utmpx* %67, metadata !5081, metadata !DIExpression()), !dbg !5089
  %68 = add i64 %15, 1, !dbg !5156
  call void @llvm.dbg.value(metadata i64 %68, metadata !5079, metadata !DIExpression()), !dbg !5087
  %69 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %67, i64 %15, !dbg !5157
  %70 = bitcast %struct.utmpx* %69 to i8*, !dbg !5158
  %71 = bitcast %struct.utmpx* %14 to i8*, !dbg !5158
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 384, i1 false), !dbg !5158, !tbaa.struct !5159
  br label %72, !dbg !5160

; <label>:72:                                     ; preds = %39, %26, %64
  %73 = phi i64 [ %65, %64 ], [ %18, %26 ], [ %18, %39 ], !dbg !5155
  %74 = phi i8* [ %66, %64 ], [ %17, %26 ], [ %17, %39 ], !dbg !5155
  %75 = phi %struct.utmpx* [ %67, %64 ], [ %16, %26 ], [ %16, %39 ], !dbg !5155
  %76 = phi i64 [ %68, %64 ], [ %15, %26 ], [ %15, %39 ], !dbg !5155
  call void @llvm.dbg.value(metadata i64 %76, metadata !5079, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.value(metadata %struct.utmpx* %75, metadata !5081, metadata !DIExpression()), !dbg !5089
  %77 = tail call %struct.utmpx* @getutxent() #11, !dbg !5092
  call void @llvm.dbg.value(metadata %struct.utmpx* %77, metadata !5082, metadata !DIExpression()), !dbg !5093
  %78 = icmp eq %struct.utmpx* %77, null, !dbg !5094
  br i1 %78, label %79, label %13, !dbg !5095, !llvm.loop !5161

; <label>:79:                                     ; preds = %72, %4
  %80 = phi i8* [ null, %4 ], [ %74, %72 ], !dbg !5163
  %81 = phi i64 [ 0, %4 ], [ %76, %72 ], !dbg !5164
  call void @llvm.dbg.value(metadata i64 %81, metadata !5079, metadata !DIExpression()), !dbg !5087
  tail call void @endutxent() #11, !dbg !5165
  store i64 %81, i64* %1, align 8, !dbg !5166, !tbaa !967
  %82 = bitcast %struct.utmpx** %2 to i8**, !dbg !5167
  store i8* %80, i8** %82, align 8, !dbg !5167, !tbaa !726
  ret i32 0, !dbg !5168
}

declare i32 @utmpxname(i8*) local_unnamed_addr #3

declare void @setutxent() local_unnamed_addr #3

declare %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

declare void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.tm_zone* @tzalloc(i8* readonly) local_unnamed_addr #7 !dbg !5169 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5173, metadata !DIExpression()), !dbg !5177
  %2 = icmp ne i8* %0, null, !dbg !5178
  br i1 %2, label %3, label %9, !dbg !5178

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @strlen(i8* nonnull %0) #14, !dbg !5179
  %5 = add i64 %4, 1, !dbg !5180
  call void @llvm.dbg.value(metadata i64 %5, metadata !5174, metadata !DIExpression()), !dbg !5181
  %6 = icmp ult i64 %5, 119, !dbg !5182
  %7 = add i64 %4, 18, !dbg !5183
  %8 = and i64 %7, -8, !dbg !5183
  br i1 %6, label %9, label %11, !dbg !5183

; <label>:9:                                      ; preds = %1, %3
  %10 = phi i64 [ %5, %3 ], [ 0, %1 ]
  br label %11, !dbg !5183

; <label>:11:                                     ; preds = %3, %9
  %12 = phi i64 [ %10, %9 ], [ %5, %3 ]
  %13 = phi i64 [ 128, %9 ], [ %8, %3 ]
  %14 = tail call noalias i8* @malloc(i64 %13) #11, !dbg !5184
  %15 = bitcast i8* %14 to %struct.tm_zone*, !dbg !5184
  call void @llvm.dbg.value(metadata %struct.tm_zone* %15, metadata !5176, metadata !DIExpression()), !dbg !5185
  %16 = icmp eq i8* %14, null, !dbg !5186
  br i1 %16, label %24, label %17, !dbg !5188

; <label>:17:                                     ; preds = %11
  %18 = bitcast i8* %14 to %struct.tm_zone**, !dbg !5189
  store %struct.tm_zone* null, %struct.tm_zone** %18, align 8, !dbg !5191, !tbaa !726
  %19 = zext i1 %2 to i8, !dbg !5192
  %20 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !5193
  store i8 %19, i8* %20, align 8, !dbg !5194, !tbaa !1009
  %21 = getelementptr inbounds i8, i8* %14, i64 9, !dbg !5195
  store i8 0, i8* %21, align 1, !dbg !5196, !tbaa !1009
  br i1 %2, label %22, label %24, !dbg !5197

; <label>:22:                                     ; preds = %17
  call void @llvm.dbg.value(metadata i8* %21, metadata !5198, metadata !DIExpression()) #11, !dbg !5205
  call void @llvm.dbg.value(metadata i8* %0, metadata !5203, metadata !DIExpression()) #11, !dbg !5208
  call void @llvm.dbg.value(metadata i64 %5, metadata !5204, metadata !DIExpression()) #11, !dbg !5209
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %21, i8* nonnull align 1 %0, i64 %12, i1 false) #11, !dbg !5210
  %23 = getelementptr inbounds i8, i8* %21, i64 %12, !dbg !5211
  store i8 0, i8* %23, align 1, !dbg !5212, !tbaa !1009
  br label %24, !dbg !5213

; <label>:24:                                     ; preds = %11, %17, %22
  ret %struct.tm_zone* %15, !dbg !5214
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tzfree(%struct.tm_zone*) local_unnamed_addr #7 !dbg !5215 {
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5219, metadata !DIExpression()), !dbg !5223
  %2 = icmp ult %struct.tm_zone* %0, inttoptr (i64 2 to %struct.tm_zone*), !dbg !5224
  br i1 %2, label %9, label %3, !dbg !5224

; <label>:3:                                      ; preds = %1, %3
  %4 = phi %struct.tm_zone* [ %6, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %4, metadata !5219, metadata !DIExpression()), !dbg !5223
  %5 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %4, i64 0, i32 0, !dbg !5225
  %6 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8, !dbg !5225, !tbaa !726
  call void @llvm.dbg.value(metadata %struct.tm_zone* %6, metadata !5220, metadata !DIExpression()), !dbg !5226
  %7 = bitcast %struct.tm_zone* %4 to i8*, !dbg !5227
  tail call void @free(i8* %7) #11, !dbg !5228
  call void @llvm.dbg.value(metadata %struct.tm_zone* %6, metadata !5219, metadata !DIExpression()), !dbg !5223
  %8 = icmp eq %struct.tm_zone* %6, null, !dbg !5229
  br i1 %8, label %9, label %3, !dbg !5229

; <label>:9:                                      ; preds = %3, %1
  ret void, !dbg !5230
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.tm* @localtime_rz(%struct.tm_zone*, i64* nonnull, %struct.tm* nonnull) local_unnamed_addr #7 !dbg !5231 {
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5251, metadata !DIExpression()), !dbg !5260
  call void @llvm.dbg.value(metadata i64* %1, metadata !5252, metadata !DIExpression()), !dbg !5261
  call void @llvm.dbg.value(metadata %struct.tm* %2, metadata !5253, metadata !DIExpression()), !dbg !5262
  %4 = icmp eq %struct.tm_zone* %0, null, !dbg !5263
  br i1 %4, label %5, label %7, !dbg !5264

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct.tm* @gmtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #11, !dbg !5265
  br label %52, !dbg !5266

; <label>:7:                                      ; preds = %3
  %8 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0), !dbg !5267
  call void @llvm.dbg.value(metadata %struct.tm_zone* %8, metadata !5254, metadata !DIExpression()), !dbg !5268
  %9 = icmp eq %struct.tm_zone* %8, null, !dbg !5269
  br i1 %9, label %52, label %10, !dbg !5270

; <label>:10:                                     ; preds = %7
  %11 = tail call %struct.tm* @localtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #11, !dbg !5271
  %12 = icmp eq %struct.tm* %11, null, !dbg !5271
  br i1 %12, label %16, label %13, !dbg !5272

; <label>:13:                                     ; preds = %10
  %14 = tail call fastcc zeroext i1 @save_abbr(%struct.tm_zone* nonnull %0, %struct.tm* nonnull %2), !dbg !5273
  %15 = xor i1 %14, true
  br label %16

; <label>:16:                                     ; preds = %10, %13
  %17 = phi i1 [ true, %10 ], [ %15, %13 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %8, metadata !5274, metadata !DIExpression()) #11, !dbg !5283
  %18 = icmp eq %struct.tm_zone* %8, inttoptr (i64 1 to %struct.tm_zone*), !dbg !5286
  br i1 %18, label %47, label %19, !dbg !5287

; <label>:19:                                     ; preds = %16
  %20 = tail call i32* @__errno_location() #17, !dbg !5288
  %21 = load i32, i32* %20, align 4, !dbg !5288, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %21, metadata !5279, metadata !DIExpression()) #11, !dbg !5289
  call void @llvm.dbg.value(metadata %struct.tm_zone* %8, metadata !5290, metadata !DIExpression()) #11, !dbg !5293
  %22 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 1, !dbg !5295
  %23 = load i8, i8* %22, align 8, !dbg !5295, !tbaa !1009
  %24 = icmp eq i8 %23, 0, !dbg !5297
  br i1 %24, label %28, label %25, !dbg !5298

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 2, i64 0, !dbg !5305
  call void @llvm.dbg.value(metadata i8* %26, metadata !5303, metadata !DIExpression()) #11, !dbg !5306
  %27 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0), i8* nonnull %26, i32 1) #11, !dbg !5307
  br label %30, !dbg !5298

; <label>:28:                                     ; preds = %19
  %29 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0)) #11, !dbg !5308
  br label %30, !dbg !5298

; <label>:30:                                     ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ], !dbg !5298
  %32 = icmp eq i32 %31, 0, !dbg !5309
  br i1 %32, label %33, label %34, !dbg !5310

; <label>:33:                                     ; preds = %30
  tail call void @tzset() #11, !dbg !5311
  br label %36, !dbg !5312

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %20, align 4, !dbg !5313, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %35, metadata !5279, metadata !DIExpression()) #11, !dbg !5289
  br label %36, !dbg !5315

; <label>:36:                                     ; preds = %34, %33
  %37 = phi i1 [ false, %34 ], [ true, %33 ]
  %38 = phi i32 [ %35, %34 ], [ %21, %33 ], !dbg !5316
  call void @llvm.dbg.value(metadata i32 %38, metadata !5279, metadata !DIExpression()) #11, !dbg !5289
  call void @llvm.dbg.value(metadata %struct.tm_zone* %8, metadata !5219, metadata !DIExpression()) #11, !dbg !5317
  %39 = icmp ult %struct.tm_zone* %8, inttoptr (i64 2 to %struct.tm_zone*), !dbg !5319
  br i1 %39, label %46, label %40, !dbg !5319

; <label>:40:                                     ; preds = %36, %40
  %41 = phi %struct.tm_zone* [ %43, %40 ], [ %8, %36 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %41, metadata !5219, metadata !DIExpression()) #11, !dbg !5317
  %42 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %41, i64 0, i32 0, !dbg !5320
  %43 = load %struct.tm_zone*, %struct.tm_zone** %42, align 8, !dbg !5320, !tbaa !726
  call void @llvm.dbg.value(metadata %struct.tm_zone* %43, metadata !5220, metadata !DIExpression()) #11, !dbg !5321
  %44 = bitcast %struct.tm_zone* %41 to i8*, !dbg !5322
  tail call void @free(i8* %44) #11, !dbg !5323
  call void @llvm.dbg.value(metadata %struct.tm_zone* %43, metadata !5219, metadata !DIExpression()) #11, !dbg !5317
  %45 = icmp eq %struct.tm_zone* %43, null, !dbg !5324
  br i1 %45, label %46, label %40, !dbg !5324

; <label>:46:                                     ; preds = %40, %36
  store i32 %38, i32* %20, align 4, !dbg !5325, !tbaa !794
  br label %47

; <label>:47:                                     ; preds = %16, %46
  %48 = phi i1 [ %37, %46 ], [ true, %16 ], !dbg !5326
  %49 = xor i1 %48, true, !dbg !5327
  %50 = or i1 %17, %49, !dbg !5327
  %51 = select i1 %50, %struct.tm* null, %struct.tm* %2, !dbg !5327
  ret %struct.tm* %51, !dbg !5327

; <label>:52:                                     ; preds = %7, %5
  %53 = phi %struct.tm* [ %6, %5 ], [ null, %7 ], !dbg !5328
  ret %struct.tm* %53, !dbg !5329
}

; Function Attrs: nounwind
declare %struct.tm* @gmtime_r(i64*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.tm_zone* @set_tz(%struct.tm_zone*) unnamed_addr #7 !dbg !5330 {
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5334, metadata !DIExpression()), !dbg !5342
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0)) #11, !dbg !5343
  call void @llvm.dbg.value(metadata i8* %2, metadata !5335, metadata !DIExpression()), !dbg !5348
  %3 = icmp eq i8* %2, null, !dbg !5349
  %4 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 1, !dbg !5350
  %5 = load i8, i8* %4, align 8, !dbg !5350, !tbaa !1009
  %6 = icmp eq i8 %5, 0, !dbg !5350
  br i1 %3, label %12, label %7, !dbg !5351

; <label>:7:                                      ; preds = %1
  br i1 %6, label %13, label %8, !dbg !5352

; <label>:8:                                      ; preds = %7
  %9 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0, !dbg !5353
  %10 = tail call i32 @strcmp(i8* nonnull %9, i8* nonnull %2) #14, !dbg !5354
  %11 = icmp eq i32 %10, 0, !dbg !5355
  br i1 %11, label %57, label %13, !dbg !5349

; <label>:12:                                     ; preds = %1
  br i1 %6, label %57, label %19, !dbg !5351

; <label>:13:                                     ; preds = %7, %8
  call void @llvm.dbg.value(metadata i8* %2, metadata !5173, metadata !DIExpression()) #11, !dbg !5356
  %14 = tail call i64 @strlen(i8* nonnull %2) #14, !dbg !5358
  %15 = add i64 %14, 1, !dbg !5359
  call void @llvm.dbg.value(metadata i64 %15, metadata !5174, metadata !DIExpression()) #11, !dbg !5360
  %16 = icmp ult i64 %15, 119, !dbg !5361
  %17 = add i64 %14, 18, !dbg !5362
  %18 = and i64 %17, -8, !dbg !5362
  br i1 %16, label %19, label %22, !dbg !5362

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i1 [ true, %13 ], [ false, %12 ]
  %21 = phi i64 [ %15, %13 ], [ 0, %12 ]
  br label %22, !dbg !5362

; <label>:22:                                     ; preds = %19, %13
  %23 = phi i1 [ %20, %19 ], [ true, %13 ]
  %24 = phi i64 [ %21, %19 ], [ %15, %13 ]
  %25 = phi i64 [ 128, %19 ], [ %18, %13 ]
  %26 = tail call noalias i8* @malloc(i64 %25) #11, !dbg !5363
  %27 = bitcast i8* %26 to %struct.tm_zone*, !dbg !5363
  call void @llvm.dbg.value(metadata %struct.tm_zone* %27, metadata !5176, metadata !DIExpression()) #11, !dbg !5364
  %28 = icmp eq i8* %26, null, !dbg !5365
  br i1 %28, label %57, label %29, !dbg !5366

; <label>:29:                                     ; preds = %22
  %30 = bitcast i8* %26 to %struct.tm_zone**, !dbg !5367
  store %struct.tm_zone* null, %struct.tm_zone** %30, align 8, !dbg !5368, !tbaa !726
  %31 = zext i1 %23 to i8, !dbg !5369
  %32 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !5370
  store i8 %31, i8* %32, align 8, !dbg !5371, !tbaa !1009
  %33 = getelementptr inbounds i8, i8* %26, i64 9, !dbg !5372
  store i8 0, i8* %33, align 1, !dbg !5373, !tbaa !1009
  br i1 %23, label %34, label %36, !dbg !5374

; <label>:34:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i8* %33, metadata !5198, metadata !DIExpression()) #11, !dbg !5375
  call void @llvm.dbg.value(metadata i8* %2, metadata !5203, metadata !DIExpression()) #11, !dbg !5377
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %33, i8* nonnull align 1 %2, i64 %24, i1 false) #11, !dbg !5378
  %35 = getelementptr inbounds i8, i8* %33, i64 %24, !dbg !5379
  store i8 0, i8* %35, align 1, !dbg !5380, !tbaa !1009
  br label %36, !dbg !5381

; <label>:36:                                     ; preds = %34, %29
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5290, metadata !DIExpression()) #11, !dbg !5382
  br i1 %6, label %40, label %37, !dbg !5384

; <label>:37:                                     ; preds = %36
  %38 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0, !dbg !5386
  call void @llvm.dbg.value(metadata i8* %38, metadata !5303, metadata !DIExpression()) #11, !dbg !5387
  %39 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0), i8* nonnull %38, i32 1) #11, !dbg !5388
  br label %42, !dbg !5384

; <label>:40:                                     ; preds = %36
  %41 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0)) #11, !dbg !5389
  br label %42, !dbg !5384

; <label>:42:                                     ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %41, %40 ], !dbg !5384
  %44 = icmp eq i32 %43, 0, !dbg !5390
  br i1 %44, label %45, label %46, !dbg !5391

; <label>:45:                                     ; preds = %42
  tail call void @tzset() #11, !dbg !5392
  br label %57, !dbg !5393

; <label>:46:                                     ; preds = %42
  %47 = tail call i32* @__errno_location() #17, !dbg !5394
  %48 = load i32, i32* %47, align 4, !dbg !5394, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %48, metadata !5339, metadata !DIExpression()), !dbg !5395
  call void @llvm.dbg.value(metadata %struct.tm_zone* %27, metadata !5219, metadata !DIExpression()) #11, !dbg !5396
  %49 = icmp ult i8* %26, inttoptr (i64 2 to i8*), !dbg !5398
  br i1 %49, label %56, label %50, !dbg !5398

; <label>:50:                                     ; preds = %46, %50
  %51 = phi %struct.tm_zone* [ %53, %50 ], [ %27, %46 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %51, metadata !5219, metadata !DIExpression()) #11, !dbg !5396
  %52 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %51, i64 0, i32 0, !dbg !5399
  %53 = load %struct.tm_zone*, %struct.tm_zone** %52, align 8, !dbg !5399, !tbaa !726
  call void @llvm.dbg.value(metadata %struct.tm_zone* %53, metadata !5220, metadata !DIExpression()) #11, !dbg !5400
  %54 = bitcast %struct.tm_zone* %51 to i8*, !dbg !5401
  tail call void @free(i8* %54) #11, !dbg !5402
  call void @llvm.dbg.value(metadata %struct.tm_zone* %53, metadata !5219, metadata !DIExpression()) #11, !dbg !5396
  %55 = icmp eq %struct.tm_zone* %53, null, !dbg !5403
  br i1 %55, label %56, label %50, !dbg !5403

; <label>:56:                                     ; preds = %50, %46
  store i32 %48, i32* %47, align 4, !dbg !5404, !tbaa !794
  br label %57

; <label>:57:                                     ; preds = %22, %45, %56, %8, %12
  %58 = phi %struct.tm_zone* [ inttoptr (i64 1 to %struct.tm_zone*), %12 ], [ inttoptr (i64 1 to %struct.tm_zone*), %8 ], [ null, %56 ], [ %27, %45 ], [ null, %22 ], !dbg !5405
  ret %struct.tm_zone* %58, !dbg !5406
}

; Function Attrs: nounwind
declare %struct.tm* @localtime_r(i64*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @save_abbr(%struct.tm_zone*, %struct.tm*) unnamed_addr #7 !dbg !5407 {
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata %struct.tm* %1, metadata !5412, metadata !DIExpression()), !dbg !5423
  call void @llvm.dbg.value(metadata i8* null, metadata !5413, metadata !DIExpression()), !dbg !5424
  %3 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 10, !dbg !5425
  %4 = load i8*, i8** %3, align 8, !dbg !5425, !tbaa !1580
  call void @llvm.dbg.value(metadata i8* %4, metadata !5413, metadata !DIExpression()), !dbg !5424
  %5 = icmp eq i8* %4, null, !dbg !5426
  br i1 %5, label %83, label %6, !dbg !5428

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.tm* %1 to i8*, !dbg !5429
  %8 = icmp ult i8* %4, %7, !dbg !5430
  br i1 %8, label %13, label %9, !dbg !5431

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 1, !dbg !5432
  %11 = bitcast %struct.tm* %10 to i8*, !dbg !5433
  %12 = icmp ult i8* %4, %11, !dbg !5434
  br i1 %12, label %83, label %13, !dbg !5435

; <label>:13:                                     ; preds = %6, %9
  %14 = load i8, i8* %4, align 1, !dbg !5436, !tbaa !1009
  %15 = icmp eq i8 %14, 0, !dbg !5436
  br i1 %15, label %81, label %16, !dbg !5437

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0, !dbg !5438
  call void @llvm.dbg.value(metadata i8* %17, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5411, metadata !DIExpression()), !dbg !5422
  %18 = tail call i32 @strcmp(i8* nonnull %17, i8* nonnull %4) #14, !dbg !5440
  %19 = icmp eq i32 %18, 0, !dbg !5441
  br i1 %19, label %81, label %20, !dbg !5442

; <label>:20:                                     ; preds = %16, %76
  %21 = phi %struct.tm_zone* [ %78, %76 ], [ %0, %16 ]
  %22 = phi i8* [ %77, %76 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  %23 = load i8, i8* %22, align 1, !dbg !5443, !tbaa !1009
  %24 = icmp eq i8 %23, 0, !dbg !5443
  br i1 %24, label %25, label %63, !dbg !5444

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %21, i64 0, i32 2, i64 0, !dbg !5445
  %27 = icmp eq i8* %22, %26, !dbg !5446
  br i1 %27, label %28, label %32, !dbg !5447

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %21, i64 0, i32 1, !dbg !5448
  %30 = load i8, i8* %29, align 8, !dbg !5448, !tbaa !1009
  %31 = icmp eq i8 %30, 0, !dbg !5449
  br i1 %31, label %32, label %63, !dbg !5450

; <label>:32:                                     ; preds = %28, %25
  %33 = phi i8* [ %22, %28 ], [ %26, %25 ], !dbg !5445
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata i8* %22, metadata !5414, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5411, metadata !DIExpression()), !dbg !5422
  %34 = tail call i64 @strlen(i8* nonnull %4) #14, !dbg !5451
  %35 = add i64 %34, 1, !dbg !5452
  call void @llvm.dbg.value(metadata i64 %35, metadata !5415, metadata !DIExpression()), !dbg !5453
  %36 = ptrtoint i8* %22 to i64, !dbg !5454
  %37 = ptrtoint i8* %33 to i64, !dbg !5454
  %38 = sub i64 %36, %37, !dbg !5454
  call void @llvm.dbg.value(metadata i64 %38, metadata !5421, metadata !DIExpression()), !dbg !5455
  %39 = xor i64 %38, -1, !dbg !5456
  %40 = icmp ugt i64 %35, %39, !dbg !5458
  br i1 %40, label %41, label %43, !dbg !5459

; <label>:41:                                     ; preds = %32
  %42 = tail call i32* @__errno_location() #17, !dbg !5460
  store i32 12, i32* %42, align 4, !dbg !5462, !tbaa !794
  br label %83, !dbg !5463

; <label>:43:                                     ; preds = %32
  %44 = add i64 %35, %38, !dbg !5464
  %45 = icmp ult i64 %44, 119, !dbg !5466
  br i1 %45, label %46, label %48, !dbg !5467

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8* undef, metadata !5198, metadata !DIExpression()) #11, !dbg !5468
  call void @llvm.dbg.value(metadata i8* %4, metadata !5203, metadata !DIExpression()) #11, !dbg !5470
  call void @llvm.dbg.value(metadata i64 %35, metadata !5204, metadata !DIExpression()) #11, !dbg !5471
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %22, i8* nonnull align 1 %4, i64 %35, i1 false) #11, !dbg !5472
  %47 = getelementptr inbounds i8, i8* %22, i64 %35, !dbg !5473
  store i8 0, i8* %47, align 1, !dbg !5474, !tbaa !1009
  br label %81, !dbg !5475

; <label>:48:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8* %4, metadata !5173, metadata !DIExpression()) #11, !dbg !5476
  call void @llvm.dbg.value(metadata i64 %35, metadata !5174, metadata !DIExpression()) #11, !dbg !5479
  %49 = icmp ult i64 %35, 119, !dbg !5480
  %50 = add i64 %34, 18, !dbg !5481
  %51 = and i64 %50, -8, !dbg !5481
  %52 = select i1 %49, i64 128, i64 %51, !dbg !5481
  %53 = tail call noalias i8* @malloc(i64 %52) #11, !dbg !5482
  %54 = icmp eq i8* %53, null, !dbg !5483
  br i1 %54, label %61, label %55, !dbg !5484

; <label>:55:                                     ; preds = %48
  %56 = bitcast i8* %53 to %struct.tm_zone**, !dbg !5485
  store %struct.tm_zone* null, %struct.tm_zone** %56, align 8, !dbg !5486, !tbaa !726
  %57 = getelementptr inbounds i8, i8* %53, i64 8, !dbg !5487
  store i8 1, i8* %57, align 8, !dbg !5488, !tbaa !1009
  %58 = getelementptr inbounds i8, i8* %53, i64 9, !dbg !5489
  store i8 0, i8* %58, align 1, !dbg !5490, !tbaa !1009
  call void @llvm.dbg.value(metadata i8* %58, metadata !5198, metadata !DIExpression()) #11, !dbg !5491
  call void @llvm.dbg.value(metadata i8* %4, metadata !5203, metadata !DIExpression()) #11, !dbg !5493
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %58, i8* nonnull align 1 %4, i64 %35, i1 false) #11, !dbg !5494
  %59 = getelementptr inbounds i8, i8* %58, i64 %35, !dbg !5495
  store i8 0, i8* %59, align 1, !dbg !5496, !tbaa !1009
  %60 = bitcast %struct.tm_zone* %21 to i8**, !dbg !5497
  store i8* %53, i8** %60, align 8, !dbg !5497, !tbaa !726
  call void @llvm.dbg.value(metadata i8* %53, metadata !5411, metadata !DIExpression()), !dbg !5422
  store i8 0, i8* %57, align 8, !dbg !5498, !tbaa !1009
  call void @llvm.dbg.value(metadata i8* %58, metadata !5414, metadata !DIExpression()), !dbg !5439
  br label %81

; <label>:61:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %53, metadata !5176, metadata !DIExpression()) #11, !dbg !5499
  %62 = bitcast %struct.tm_zone* %21 to i8**, !dbg !5497
  store i8* null, i8** %62, align 8, !dbg !5497, !tbaa !726
  call void @llvm.dbg.value(metadata i8* %53, metadata !5411, metadata !DIExpression()), !dbg !5422
  br label %83, !dbg !5500

; <label>:63:                                     ; preds = %28, %20
  %64 = tail call i64 @strlen(i8* nonnull %22) #14, !dbg !5501
  %65 = add i64 %64, 1, !dbg !5502
  %66 = getelementptr inbounds i8, i8* %22, i64 %65, !dbg !5503
  call void @llvm.dbg.value(metadata i8* %66, metadata !5414, metadata !DIExpression()), !dbg !5439
  %67 = load i8, i8* %66, align 1, !dbg !5504, !tbaa !1009
  %68 = icmp eq i8 %67, 0, !dbg !5504
  br i1 %68, label %69, label %76, !dbg !5506

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %21, i64 0, i32 0, !dbg !5507
  %71 = load %struct.tm_zone*, %struct.tm_zone** %70, align 8, !dbg !5507, !tbaa !726
  %72 = icmp eq %struct.tm_zone* %71, null, !dbg !5508
  %73 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %71, i64 0, i32 2, i64 0, !dbg !5509
  %74 = select i1 %72, i8* %66, i8* %73, !dbg !5511
  %75 = select i1 %72, %struct.tm_zone* %21, %struct.tm_zone* %71, !dbg !5511
  br label %76, !dbg !5511

; <label>:76:                                     ; preds = %69, %63
  %77 = phi i8* [ %66, %63 ], [ %74, %69 ], !dbg !5512
  %78 = phi %struct.tm_zone* [ %21, %63 ], [ %75, %69 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %78, metadata !5411, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.value(metadata i8* %77, metadata !5414, metadata !DIExpression()), !dbg !5439
  %79 = tail call i32 @strcmp(i8* %77, i8* nonnull %4) #14, !dbg !5440
  %80 = icmp eq i32 %79, 0, !dbg !5441
  br i1 %80, label %81, label %20, !dbg !5442, !llvm.loop !5513

; <label>:81:                                     ; preds = %76, %16, %46, %55, %13
  %82 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.148, i64 0, i64 0), %13 ], [ %58, %55 ], [ %22, %46 ], [ %17, %16 ], [ %77, %76 ], !dbg !5515
  call void @llvm.dbg.value(metadata i8* %82, metadata !5414, metadata !DIExpression()), !dbg !5439
  store i8* %82, i8** %3, align 8, !dbg !5516, !tbaa !1580
  br label %83, !dbg !5517

; <label>:83:                                     ; preds = %61, %41, %9, %2, %81
  %84 = phi i1 [ true, %81 ], [ true, %2 ], [ true, %9 ], [ false, %61 ], [ false, %41 ], !dbg !5518
  ret i1 %84, !dbg !5519
}

; Function Attrs: nounwind
declare i32 @setenv(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @unsetenv(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @tzset() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @mktime_z(%struct.tm_zone*, %struct.tm* nonnull) local_unnamed_addr #7 !dbg !5520 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm, align 8
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5524, metadata !DIExpression()), !dbg !5534
  call void @llvm.dbg.value(metadata %struct.tm* %1, metadata !5525, metadata !DIExpression()), !dbg !5535
  %5 = icmp eq %struct.tm_zone* %0, null, !dbg !5536
  br i1 %5, label %6, label %8, !dbg !5537

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @timegm(%struct.tm* nonnull %1) #11, !dbg !5538
  br label %102, !dbg !5539

; <label>:8:                                      ; preds = %2
  %9 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0), !dbg !5540
  call void @llvm.dbg.value(metadata %struct.tm_zone* %9, metadata !5526, metadata !DIExpression()), !dbg !5541
  %10 = icmp eq %struct.tm_zone* %9, null, !dbg !5542
  br i1 %10, label %102, label %11, !dbg !5543

; <label>:11:                                     ; preds = %8
  %12 = bitcast i64* %3 to i8*, !dbg !5544
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #11, !dbg !5544
  %13 = tail call i64 @mktime(%struct.tm* nonnull %1) #11, !dbg !5545
  call void @llvm.dbg.value(metadata i64 %13, metadata !5529, metadata !DIExpression()), !dbg !5546
  store i64 %13, i64* %3, align 8, !dbg !5546, !tbaa !967
  call void @llvm.dbg.value(metadata i64 -1, metadata !5532, metadata !DIExpression()), !dbg !5547
  %14 = bitcast %struct.tm* %4 to i8*, !dbg !5548
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %14) #11, !dbg !5548
  call void @llvm.dbg.value(metadata i64 %13, metadata !5529, metadata !DIExpression()), !dbg !5546
  %15 = icmp eq i64 %13, -1, !dbg !5549
  br i1 %15, label %16, label %66, !dbg !5551

; <label>:16:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i64* %3, metadata !5529, metadata !DIExpression(DW_OP_deref)), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.tm* %4, metadata !5533, metadata !DIExpression(DW_OP_deref)), !dbg !5552
  %17 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %4) #11, !dbg !5553
  %18 = icmp eq %struct.tm* %17, null, !dbg !5553
  br i1 %18, label %69, label %19, !dbg !5554

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.value(metadata %struct.tm* %4, metadata !5533, metadata !DIExpression(DW_OP_deref)), !dbg !5552
  call void @llvm.dbg.value(metadata %struct.tm* %1, metadata !5555, metadata !DIExpression()), !dbg !5563
  call void @llvm.dbg.value(metadata %struct.tm* %4, metadata !5562, metadata !DIExpression()), !dbg !5565
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 0, !dbg !5566
  %21 = load i32, i32* %20, align 8, !dbg !5566, !tbaa !2133
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 0, !dbg !5567
  %23 = load i32, i32* %22, align 8, !dbg !5567, !tbaa !2133
  %24 = xor i32 %23, %21, !dbg !5568
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 1, !dbg !5569
  %26 = load i32, i32* %25, align 4, !dbg !5569, !tbaa !2083
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 1, !dbg !5570
  %28 = load i32, i32* %27, align 4, !dbg !5570, !tbaa !2083
  %29 = xor i32 %28, %26, !dbg !5571
  %30 = or i32 %29, %24, !dbg !5572
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 2, !dbg !5573
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 2, !dbg !5574
  %33 = bitcast i32* %31 to <2 x i32>*, !dbg !5573
  %34 = load <2 x i32>, <2 x i32>* %33, align 8, !dbg !5573, !tbaa !794
  %35 = bitcast i32* %32 to <2 x i32>*, !dbg !5574
  %36 = load <2 x i32>, <2 x i32>* %35, align 8, !dbg !5574, !tbaa !794
  %37 = xor <2 x i32> %36, %34, !dbg !5575
  %38 = extractelement <2 x i32> %37, i32 0, !dbg !5576
  %39 = or i32 %30, %38, !dbg !5576
  %40 = extractelement <2 x i32> %37, i32 1, !dbg !5577
  %41 = or i32 %39, %40, !dbg !5577
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4, !dbg !5578
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 4, !dbg !5579
  %44 = bitcast i32* %42 to <2 x i32>*, !dbg !5578
  %45 = load <2 x i32>, <2 x i32>* %44, align 8, !dbg !5578, !tbaa !794
  %46 = bitcast i32* %43 to <2 x i32>*, !dbg !5579
  %47 = load <2 x i32>, <2 x i32>* %46, align 8, !dbg !5579, !tbaa !794
  %48 = xor <2 x i32> %47, %45, !dbg !5580
  %49 = extractelement <2 x i32> %48, i32 0, !dbg !5581
  %50 = or i32 %41, %49, !dbg !5581
  %51 = extractelement <2 x i32> %48, i32 1, !dbg !5582
  %52 = or i32 %50, %51, !dbg !5582
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 8, !dbg !5583
  %54 = load i32, i32* %53, align 8, !dbg !5583, !tbaa !2350
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 8, !dbg !5584
  %56 = load i32, i32* %55, align 8, !dbg !5584, !tbaa !2350
  call void @llvm.dbg.value(metadata i32 %54, metadata !5585, metadata !DIExpression()), !dbg !5591
  call void @llvm.dbg.value(metadata i32 %56, metadata !5590, metadata !DIExpression()), !dbg !5593
  %57 = icmp eq i32 %54, 0, !dbg !5594
  %58 = icmp eq i32 %56, 0, !dbg !5595
  %59 = xor i1 %57, %58, !dbg !5596
  %60 = or i32 %56, %54, !dbg !5597
  %61 = icmp sgt i32 %60, -1, !dbg !5597
  %62 = and i1 %61, %59, !dbg !5597
  %63 = zext i1 %62 to i32, !dbg !5598
  %64 = or i32 %52, %63, !dbg !5599
  %65 = icmp eq i32 %64, 0, !dbg !5600
  br i1 %65, label %66, label %69, !dbg !5601

; <label>:66:                                     ; preds = %19, %11
  %67 = call fastcc zeroext i1 @save_abbr(%struct.tm_zone* nonnull %0, %struct.tm* nonnull %1), !dbg !5602
  br i1 %67, label %69, label %68, !dbg !5603

; <label>:68:                                     ; preds = %66
  call void @llvm.dbg.value(metadata i64 -1, metadata !5529, metadata !DIExpression()), !dbg !5546
  store i64 -1, i64* %3, align 8, !dbg !5604, !tbaa !967
  br label %69, !dbg !5605

; <label>:69:                                     ; preds = %19, %16, %68, %66
  call void @llvm.dbg.value(metadata %struct.tm_zone* %9, metadata !5274, metadata !DIExpression()) #11, !dbg !5606
  %70 = icmp eq %struct.tm_zone* %9, inttoptr (i64 1 to %struct.tm_zone*), !dbg !5609
  br i1 %70, label %100, label %71, !dbg !5610

; <label>:71:                                     ; preds = %69
  %72 = tail call i32* @__errno_location() #17, !dbg !5611
  %73 = load i32, i32* %72, align 4, !dbg !5611, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %73, metadata !5279, metadata !DIExpression()) #11, !dbg !5612
  call void @llvm.dbg.value(metadata %struct.tm_zone* %9, metadata !5290, metadata !DIExpression()) #11, !dbg !5613
  %74 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %9, i64 0, i32 1, !dbg !5615
  %75 = load i8, i8* %74, align 8, !dbg !5615, !tbaa !1009
  %76 = icmp eq i8 %75, 0, !dbg !5616
  br i1 %76, label %80, label %77, !dbg !5617

; <label>:77:                                     ; preds = %71
  %78 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %9, i64 0, i32 2, i64 0, !dbg !5619
  call void @llvm.dbg.value(metadata i8* %78, metadata !5303, metadata !DIExpression()) #11, !dbg !5620
  %79 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0), i8* nonnull %78, i32 1) #11, !dbg !5621
  br label %82, !dbg !5617

; <label>:80:                                     ; preds = %71
  %81 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0)) #11, !dbg !5622
  br label %82, !dbg !5617

; <label>:82:                                     ; preds = %80, %77
  %83 = phi i32 [ %79, %77 ], [ %81, %80 ], !dbg !5617
  %84 = icmp eq i32 %83, 0, !dbg !5623
  br i1 %84, label %85, label %86, !dbg !5624

; <label>:85:                                     ; preds = %82
  call void @tzset() #11, !dbg !5625
  br label %88, !dbg !5626

; <label>:86:                                     ; preds = %82
  %87 = load i32, i32* %72, align 4, !dbg !5627, !tbaa !794
  call void @llvm.dbg.value(metadata i32 %87, metadata !5279, metadata !DIExpression()) #11, !dbg !5612
  br label %88, !dbg !5628

; <label>:88:                                     ; preds = %86, %85
  %89 = phi i1 [ false, %86 ], [ true, %85 ]
  %90 = phi i32 [ %87, %86 ], [ %73, %85 ], !dbg !5629
  call void @llvm.dbg.value(metadata i32 %90, metadata !5279, metadata !DIExpression()) #11, !dbg !5612
  call void @llvm.dbg.value(metadata %struct.tm_zone* %9, metadata !5219, metadata !DIExpression()) #11, !dbg !5630
  %91 = icmp ult %struct.tm_zone* %9, inttoptr (i64 2 to %struct.tm_zone*), !dbg !5632
  br i1 %91, label %98, label %92, !dbg !5632

; <label>:92:                                     ; preds = %88, %92
  %93 = phi %struct.tm_zone* [ %95, %92 ], [ %9, %88 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %93, metadata !5219, metadata !DIExpression()) #11, !dbg !5630
  %94 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %93, i64 0, i32 0, !dbg !5633
  %95 = load %struct.tm_zone*, %struct.tm_zone** %94, align 8, !dbg !5633, !tbaa !726
  call void @llvm.dbg.value(metadata %struct.tm_zone* %95, metadata !5220, metadata !DIExpression()) #11, !dbg !5634
  %96 = bitcast %struct.tm_zone* %93 to i8*, !dbg !5635
  call void @free(i8* %96) #11, !dbg !5636
  call void @llvm.dbg.value(metadata %struct.tm_zone* %95, metadata !5219, metadata !DIExpression()) #11, !dbg !5630
  %97 = icmp eq %struct.tm_zone* %95, null, !dbg !5637
  br i1 %97, label %98, label %92, !dbg !5637

; <label>:98:                                     ; preds = %92, %88
  store i32 %90, i32* %72, align 4, !dbg !5638, !tbaa !794
  call void @llvm.dbg.value(metadata i64* %3, metadata !5529, metadata !DIExpression(DW_OP_deref)), !dbg !5546
  br i1 %89, label %100, label %99, !dbg !5639

; <label>:99:                                     ; preds = %98
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %14) #11, !dbg !5640
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #11, !dbg !5640
  br label %102

; <label>:100:                                    ; preds = %69, %98
  %101 = load i64, i64* %3, align 8, !dbg !5641
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %14) #11, !dbg !5640
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #11, !dbg !5640
  br label %102

; <label>:102:                                    ; preds = %8, %99, %100, %6
  %103 = phi i64 [ %7, %6 ], [ %101, %100 ], [ -1, %99 ], [ -1, %8 ], !dbg !5642
  ret i64 %103, !dbg !5643
}

; Function Attrs: nounwind
declare i64 @timegm(%struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !5644 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5683, metadata !DIExpression()), !dbg !5688
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !5689
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5690, metadata !DIExpression()), !dbg !5693
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5695
  %4 = load i32, i32* %3, align 8, !dbg !5695, !tbaa !4868
  %5 = and i32 %4, 32, !dbg !5695
  %6 = icmp eq i32 %5, 0, !dbg !5696
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !5697
  %8 = icmp ne i32 %7, 0, !dbg !5698
  br i1 %6, label %9, label %19, !dbg !5699

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5701
  %11 = xor i1 %8, true, !dbg !5702
  %12 = or i1 %10, %11, !dbg !5702
  %13 = sext i1 %8 to i32, !dbg !5702
  br i1 %12, label %22, label %14, !dbg !5702

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !5703
  %16 = load i32, i32* %15, align 4, !dbg !5703, !tbaa !794
  %17 = icmp ne i32 %16, 9, !dbg !5704
  %18 = sext i1 %17 to i32, !dbg !5705
  br label %22, !dbg !5705

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5706

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !5708
  store i32 0, i32* %21, align 4, !dbg !5710, !tbaa !794
  br label %22, !dbg !5708

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !5711
  ret i32 %23, !dbg !5712
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !5713 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5718, metadata !DIExpression()), !dbg !5721
  call void @llvm.dbg.value(metadata i8 1, metadata !5719, metadata !DIExpression()), !dbg !5722
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !5723
  call void @llvm.dbg.value(metadata i8* %2, metadata !5720, metadata !DIExpression()), !dbg !5724
  %3 = icmp eq i8* %2, null, !dbg !5725
  br i1 %3, label %11, label %4, !dbg !5727

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i64 0, i64 0)) #14, !dbg !5728
  %6 = icmp eq i32 %5, 0, !dbg !5733
  br i1 %6, label %10, label %7, !dbg !5734

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0)) #14, !dbg !5735
  %9 = icmp eq i32 %8, 0, !dbg !5736
  br i1 %9, label %10, label %11, !dbg !5737

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !5719, metadata !DIExpression()), !dbg !5722
  br label %11, !dbg !5738

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !5739
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !5740 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !5746
  call void @llvm.dbg.value(metadata i8* %1, metadata !5745, metadata !DIExpression()), !dbg !5747
  %2 = icmp eq i8* %1, null, !dbg !5748
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), i8* %1, !dbg !5750
  call void @llvm.dbg.value(metadata i8* %3, metadata !5745, metadata !DIExpression()), !dbg !5747
  %4 = load i8, i8* %3, align 1, !dbg !5751, !tbaa !1009
  %5 = icmp eq i8 %4, 0, !dbg !5755
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.160, i64 0, i64 0), i8* %3, !dbg !5756
  call void @llvm.dbg.value(metadata i8* %6, metadata !5745, metadata !DIExpression()), !dbg !5747
  ret i8* %6, !dbg !5757
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
attributes #10 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !65, !71, !103, !112, !219, !119, !135, !142, !222, !212, !230, !247, !249, !251, !253, !255, !257, !260, !271, !295, !297, !299}
!llvm.ident = !{!688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688, !688}
!llvm.module.flags = !{!689, !690, !691, !692, !693}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 50, type: !50, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !49)
!3 = !DIFile(filename: "src/uptime.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !11, !25}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 208, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!14 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!19 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!20 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!21 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!22 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!23 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!24 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !27, file: !26, line: 187, baseType: !7, size: 32, elements: !37)
!26 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!27 = distinct !DISubprogram(name: "select_plural", scope: !26, file: !26, line: 183, type: !28, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !35)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !31}
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !32, line: 102, baseType: !33)
!32 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !34, line: 72, baseType: !30)
!34 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!35 = !{!36}
!36 = !DILocalVariable(name: "n", arg: 1, scope: !27, file: !26, line: 183, type: !31)
!37 = !{!38}
!38 = !DIEnumerator(name: "PLURAL_REDUCER", value: 1000000, isUnsigned: true)
!39 = !{!40, !43, !44, !30, !48}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !45, line: 7, baseType: !46)
!45 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !34, line: 158, baseType: !47)
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !{!0}
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !61)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !53, line: 50, size: 256, elements: !54)
!53 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!54 = !{!55, !56, !58, !60}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !52, file: !53, line: 52, baseType: !40, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !52, file: !53, line: 55, baseType: !57, size: 32, offset: 64)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !52, file: !53, line: 56, baseType: !59, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !52, file: !53, line: 57, baseType: !57, size: 32, offset: 192)
!61 = !{!62}
!62 = !DISubrange(count: 1)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "Version", scope: !65, file: !66, line: 2, type: !40, isLocal: false, isDefinition: true)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, globals: !68)
!66 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!67 = !{}
!68 = !{!63}
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !71, file: !99, line: 51, type: !100, isLocal: true, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !73, globals: !98)
!72 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !76, line: 24, baseType: !77)
!76 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !78, line: 42, baseType: !79)
!78 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !78, line: 28, size: 1856, elements: !81)
!81 = !{!82, !88, !92, !95, !96}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !80, file: !78, line: 31, baseType: !83, size: 832)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 832, elements: !86)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !78, line: 31, flags: DIFlagFwdDecl)
!86 = !{!87}
!87 = !DISubrange(count: 13)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !80, file: !78, line: 34, baseType: !89, size: 64, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !80, file: !78, line: 35, baseType: !93, size: 64, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !80, file: !78, line: 36, baseType: !93, size: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !80, file: !78, line: 39, baseType: !97, size: 832, offset: 1024)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 832, elements: !86)
!98 = !{!69}
!99 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !75)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "file_name", scope: !103, file: !108, line: 46, type: !40, isLocal: true, isDefinition: true)
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, globals: !105)
!104 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!105 = !{!101, !106}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !103, file: !108, line: 56, type: !109, isLocal: true, isDefinition: true)
!108 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!109 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "exit_failure", scope: !112, file: !115, line: 24, type: !116, isLocal: false, isDefinition: true)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, globals: !114)
!113 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!114 = !{!110}
!115 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "long_options", scope: !119, file: !122, line: 33, type: !123, isLocal: true, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, globals: !121)
!120 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!121 = !{!117}
!122 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 768, elements: !131)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !53, line: 50, size: 256, elements: !126)
!126 = !{!127, !128, !129, !130}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !53, line: 52, baseType: !40, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !125, file: !53, line: 55, baseType: !57, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !125, file: !53, line: 56, baseType: !59, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !125, file: !53, line: 57, baseType: !57, size: 32, offset: 192)
!131 = !{!132}
!132 = !DISubrange(count: 3)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "program_name", scope: !135, file: !139, line: 33, type: !40, isLocal: false, isDefinition: true)
!135 = distinct !DICompileUnit(language: DW_LANG_C99, file: !136, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !137, globals: !138)
!136 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!137 = !{!43, !74}
!138 = !{!133}
!139 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !142, file: !171, line: 85, type: !206, isLocal: false, isDefinition: true)
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, retainedTypes: !165, globals: !168)
!143 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!144 = !{!11, !145, !150}
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, baseType: !7, size: 32, elements: !146)
!146 = !{!147, !148, !149}
!147 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!148 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!149 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !151, line: 46, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!153 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!154 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!155 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!156 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!157 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!158 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!159 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!160 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!161 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!163 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!164 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!165 = !{!57, !91, !166, !74}
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 62, baseType: !30)
!167 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!168 = !{!140, !169, !176, !188, !190, !195, !202, !204}
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !142, file: !171, line: 101, type: !172, isLocal: false, isDefinition: true)
!171 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 320, elements: !174)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!174 = !{!175}
!175 = !DISubrange(count: 10)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !142, file: !171, line: 1052, type: !178, isLocal: false, isDefinition: true)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !171, line: 65, size: 448, elements: !179)
!179 = !{!180, !181, !182, !186, !187}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !178, file: !171, line: 68, baseType: !11, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !178, file: !171, line: 71, baseType: !57, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !178, file: !171, line: 75, baseType: !183, size: 256, offset: 64)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !178, file: !171, line: 78, baseType: !40, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !178, file: !171, line: 81, baseType: !40, size: 64, offset: 384)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !142, file: !171, line: 116, type: !178, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "slot0", scope: !142, file: !171, line: 842, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 256)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "slotvec", scope: !142, file: !171, line: 845, type: !197, isLocal: true, isDefinition: true)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !171, line: 834, size: 128, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !198, file: !171, line: 836, baseType: !166, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !198, file: !171, line: 837, baseType: !74, size: 64, offset: 64)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "nslots", scope: !142, file: !171, line: 843, type: !57, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "slotvec0", scope: !142, file: !171, line: 844, type: !198, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 704, elements: !208)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!208 = !{!209}
!209 = !DISubrange(count: 11)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !212, file: !215, line: 26, type: !216, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, globals: !214)
!213 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!214 = !{!210}
!215 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 376, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 47)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !221)
!220 = !DIFile(filename: "./lib/fprintftime.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!221 = !{!166, !40, !7, !57, !48}
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !224, retainedTypes: !229)
!223 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!224 = !{!225}
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !226, line: 41, baseType: !7, size: 32, elements: !227)
!226 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!227 = !{!228}
!228 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!229 = !{!43}
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !246)
!231 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!232 = !{!233}
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !235, file: !234, line: 186, baseType: !7, size: 32, elements: !244)
!234 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!235 = distinct !DISubprogram(name: "x2nrealloc", scope: !234, file: !234, line: 174, type: !236, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !239)
!236 = !DISubroutineType(types: !237)
!237 = !{!43, !43, !238, !166}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!239 = !{!240, !241, !242, !243}
!240 = !DILocalVariable(name: "p", arg: 1, scope: !235, file: !234, line: 174, type: !43)
!241 = !DILocalVariable(name: "pn", arg: 2, scope: !235, file: !234, line: 174, type: !238)
!242 = !DILocalVariable(name: "s", arg: 3, scope: !235, file: !234, line: 174, type: !166)
!243 = !DILocalVariable(name: "n", scope: !235, file: !234, line: 176, type: !166)
!244 = !{!245}
!245 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!246 = !{!166, !74, !43}
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67)
!248 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !229)
!250 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67)
!252 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !229)
!254 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !229)
!256 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !259)
!258 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!259 = !{!166}
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !262, retainedTypes: !270)
!261 = !DIFile(filename: "./lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!262 = !{!5, !263}
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !264, file: !234, line: 186, baseType: !7, size: 32, elements: !244)
!264 = distinct !DISubprogram(name: "x2nrealloc", scope: !234, file: !234, line: 174, type: !236, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !265)
!265 = !{!266, !267, !268, !269}
!266 = !DILocalVariable(name: "p", arg: 1, scope: !264, file: !234, line: 174, type: !43)
!267 = !DILocalVariable(name: "pn", arg: 2, scope: !264, file: !234, line: 174, type: !238)
!268 = !DILocalVariable(name: "s", arg: 3, scope: !264, file: !234, line: 174, type: !166)
!269 = !DILocalVariable(name: "n", scope: !264, file: !234, line: 176, type: !166)
!270 = !{!74, !43, !166}
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !273, retainedTypes: !278, globals: !279)
!272 = !DIFile(filename: "./lib/time_rz.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!273 = !{!274}
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !275, line: 50, baseType: !7, size: 32, elements: !276)
!275 = !DIFile(filename: "lib/time_rz.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!276 = !{!277}
!277 = !DIEnumerator(name: "ABBR_SIZE_MIN", value: 119, isUnsigned: true)
!278 = !{!74, !166}
!279 = !{!280}
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "local_tz", scope: !271, file: !275, line: 55, type: !282, isLocal: true, isDefinition: true)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "timezone_t", file: !284, line: 742, baseType: !285)
!284 = !DIFile(filename: "./lib/time.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm_zone", file: !287, line: 21, size: 128, elements: !288)
!287 = !DIFile(filename: "./lib/time-internal.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!288 = !{!289, !290, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !287, line: 25, baseType: !285, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tz_is_set", scope: !286, file: !287, line: 36, baseType: !42, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "abbrs", scope: !286, file: !287, line: 48, baseType: !292, offset: 72)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: -1)
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67)
!296 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67)
!298 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !301, retainedTypes: !229)
!300 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!301 = !{!302}
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !303, line: 41, baseType: !7, size: 32, elements: !304)
!303 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!305 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!306 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!307 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!308 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!309 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!310 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!311 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!312 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!313 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!314 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!315 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!316 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!317 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!318 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!319 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!320 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!321 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!322 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!323 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!324 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!325 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!326 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!327 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!328 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!329 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!330 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!331 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!332 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!333 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!334 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!335 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!336 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!337 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!338 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!339 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!340 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!341 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!342 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!343 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!344 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!345 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!346 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!347 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!348 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!349 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!350 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!351 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!352 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!353 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!354 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!413 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!416 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!417 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!418 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!419 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!420 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!421 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!422 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!423 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!424 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!425 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!426 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!427 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!500 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!573 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!574 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!575 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!576 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!577 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!578 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!579 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!580 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!581 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!582 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!583 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!584 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!585 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!586 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!587 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!589 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!590 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!591 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!592 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!593 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!594 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!620 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!621 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!622 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!623 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!624 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!629 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!630 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!631 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!632 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!688 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!689 = !{i32 2, !"Dwarf Version", i32 4}
!690 = !{i32 2, !"Debug Info Version", i32 3}
!691 = !{i32 1, !"wchar_size", i32 4}
!692 = !{i32 7, !"PIC Level", i32 2}
!693 = !{i32 7, !"PIE Level", i32 2}
!694 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 198, type: !695, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !57}
!697 = !{!698}
!698 = !DILocalVariable(name: "status", arg: 1, scope: !694, file: !3, line: 198, type: !57)
!699 = !DILocalVariable(name: "infomap", scope: !700, file: !26, line: 632, type: !714)
!700 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !26, file: !26, line: 630, type: !701, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !40}
!703 = !{!704, !699, !705, !706, !713}
!704 = !DILocalVariable(name: "program", arg: 1, scope: !700, file: !26, line: 630, type: !40)
!705 = !DILocalVariable(name: "node", scope: !700, file: !26, line: 642, type: !40)
!706 = !DILocalVariable(name: "map_prog", scope: !700, file: !26, line: 643, type: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !700, file: !26, line: 632, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !709, file: !26, line: 632, baseType: !40, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !26, line: 632, baseType: !40, size: 64, offset: 64)
!713 = !DILocalVariable(name: "lc_messages", scope: !700, file: !26, line: 655, type: !40)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 896, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 7)
!717 = !DILocation(line: 632, column: 67, scope: !700, inlinedAt: !718)
!718 = distinct !DILocation(line: 226, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 203, column: 5)
!720 = distinct !DILexicalBlock(scope: !694, file: !3, line: 200, column: 7)
!721 = !DILocation(line: 198, column: 12, scope: !694)
!722 = !DILocation(line: 200, column: 14, scope: !720)
!723 = !DILocation(line: 200, column: 7, scope: !694)
!724 = !DILocation(line: 201, column: 5, scope: !725)
!725 = distinct !DILexicalBlock(scope: !720, file: !3, line: 201, column: 5)
!726 = !{!727, !727, i64 0}
!727 = !{!"any pointer", !728, i64 0}
!728 = !{!"omnipotent char", !729, i64 0}
!729 = !{!"Simple C/C++ TBAA"}
!730 = !DILocation(line: 204, column: 7, scope: !719)
!731 = !DILocation(line: 205, column: 7, scope: !719)
!732 = !DILocation(line: 214, column: 7, scope: !719)
!733 = !DILocation(line: 220, column: 7, scope: !719)
!734 = !DILocation(line: 224, column: 7, scope: !719)
!735 = !DILocation(line: 225, column: 7, scope: !719)
!736 = !DILocation(line: 632, column: 3, scope: !700, inlinedAt: !718)
!737 = !DILocation(line: 643, column: 36, scope: !700, inlinedAt: !718)
!738 = !DILocation(line: 643, column: 25, scope: !700, inlinedAt: !718)
!739 = !DILocation(line: 645, column: 33, scope: !700, inlinedAt: !718)
!740 = !DILocation(line: 645, column: 3, scope: !700, inlinedAt: !718)
!741 = !DILocation(line: 646, column: 13, scope: !700, inlinedAt: !718)
!742 = !DILocation(line: 645, column: 20, scope: !700, inlinedAt: !718)
!743 = !{!744, !727, i64 0}
!744 = !{!"infomap", !727, i64 0, !727, i64 8}
!745 = !DILocation(line: 645, column: 10, scope: !700, inlinedAt: !718)
!746 = !DILocation(line: 645, column: 28, scope: !700, inlinedAt: !718)
!747 = distinct !{!747, !748, !749}
!748 = !DILocation(line: 645, column: 3, scope: !700)
!749 = !DILocation(line: 646, column: 13, scope: !700)
!750 = !DILocation(line: 648, column: 17, scope: !751, inlinedAt: !718)
!751 = distinct !DILexicalBlock(scope: !700, file: !26, line: 648, column: 7)
!752 = !{!744, !727, i64 8}
!753 = !DILocation(line: 648, column: 7, scope: !751, inlinedAt: !718)
!754 = !DILocation(line: 648, column: 7, scope: !700, inlinedAt: !718)
!755 = !DILocation(line: 642, column: 15, scope: !700, inlinedAt: !718)
!756 = !DILocation(line: 651, column: 3, scope: !700, inlinedAt: !718)
!757 = !DILocation(line: 655, column: 29, scope: !700, inlinedAt: !718)
!758 = !DILocation(line: 655, column: 15, scope: !700, inlinedAt: !718)
!759 = !DILocation(line: 656, column: 7, scope: !760, inlinedAt: !718)
!760 = distinct !DILexicalBlock(scope: !700, file: !26, line: 656, column: 7)
!761 = !DILocation(line: 656, column: 19, scope: !760, inlinedAt: !718)
!762 = !DILocation(line: 656, column: 22, scope: !760, inlinedAt: !718)
!763 = !DILocation(line: 656, column: 7, scope: !700, inlinedAt: !718)
!764 = !DILocation(line: 662, column: 7, scope: !765, inlinedAt: !718)
!765 = distinct !DILexicalBlock(scope: !760, file: !26, line: 657, column: 5)
!766 = !DILocation(line: 664, column: 5, scope: !765, inlinedAt: !718)
!767 = !DILocation(line: 665, column: 3, scope: !700, inlinedAt: !718)
!768 = !DILocation(line: 667, column: 3, scope: !700, inlinedAt: !718)
!769 = !DILocation(line: 669, column: 1, scope: !700, inlinedAt: !718)
!770 = !DILocation(line: 228, column: 3, scope: !694)
!771 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 232, type: !772, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !775)
!772 = !DISubroutineType(types: !773)
!773 = !{!57, !57, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!775 = !{!776, !777}
!776 = !DILocalVariable(name: "argc", arg: 1, scope: !771, file: !3, line: 232, type: !57)
!777 = !DILocalVariable(name: "argv", arg: 2, scope: !771, file: !3, line: 232, type: !774)
!778 = !DILocation(line: 232, column: 11, scope: !771)
!779 = !DILocation(line: 232, column: 24, scope: !771)
!780 = !DILocation(line: 235, column: 21, scope: !771)
!781 = !DILocation(line: 235, column: 3, scope: !771)
!782 = !DILocation(line: 236, column: 3, scope: !771)
!783 = !DILocation(line: 237, column: 3, scope: !771)
!784 = !DILocation(line: 238, column: 3, scope: !771)
!785 = !DILocation(line: 240, column: 3, scope: !771)
!786 = !DILocation(line: 242, column: 63, scope: !771)
!787 = !DILocation(line: 242, column: 3, scope: !771)
!788 = !DILocation(line: 244, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !771, file: !3, line: 244, column: 7)
!790 = !DILocation(line: 244, column: 56, scope: !789)
!791 = !DILocation(line: 244, column: 7, scope: !771)
!792 = !DILocation(line: 245, column: 5, scope: !789)
!793 = !DILocation(line: 247, column: 18, scope: !771)
!794 = !{!795, !795, i64 0}
!795 = !{!"int", !728, i64 0}
!796 = !DILocation(line: 247, column: 16, scope: !771)
!797 = !DILocation(line: 247, column: 3, scope: !771)
!798 = !DILocation(line: 250, column: 7, scope: !799)
!799 = distinct !DILexicalBlock(scope: !771, file: !3, line: 248, column: 5)
!800 = !DILocation(line: 251, column: 7, scope: !799)
!801 = !DILocation(line: 254, column: 15, scope: !799)
!802 = !DILocation(line: 254, column: 7, scope: !799)
!803 = !DILocation(line: 255, column: 7, scope: !799)
!804 = !DILocation(line: 258, column: 20, scope: !799)
!805 = !DILocation(line: 258, column: 55, scope: !799)
!806 = !DILocation(line: 258, column: 62, scope: !799)
!807 = !DILocation(line: 258, column: 50, scope: !799)
!808 = !DILocation(line: 258, column: 43, scope: !799)
!809 = !DILocation(line: 258, column: 7, scope: !799)
!810 = !DILocation(line: 259, column: 7, scope: !799)
!811 = !DILocation(line: 262, column: 3, scope: !771)
!812 = distinct !DISubprogram(name: "uptime", scope: !3, file: !3, line: 182, type: !813, isLocal: true, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !40, !57}
!815 = !{!816, !817, !818, !819}
!816 = !DILocalVariable(name: "filename", arg: 1, scope: !812, file: !3, line: 182, type: !40)
!817 = !DILocalVariable(name: "options", arg: 2, scope: !812, file: !3, line: 182, type: !57)
!818 = !DILocalVariable(name: "n_users", scope: !812, file: !3, line: 184, type: !166)
!819 = !DILocalVariable(name: "utmp_buf", scope: !812, file: !3, line: 185, type: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !823, line: 55, size: 3072, elements: !824)
!823 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!824 = !{!825, !827, !829, !833, !837, !838, !839, !844, !846, !851, !853}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !822, file: !823, line: 57, baseType: !826, size: 16)
!826 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !822, file: !823, line: 58, baseType: !828, size: 32, offset: 32)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !34, line: 152, baseType: !57)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !822, file: !823, line: 59, baseType: !830, size: 256, offset: 64)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !822, file: !823, line: 60, baseType: !834, size: 32, offset: 320)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32, elements: !835)
!835 = !{!836}
!836 = !DISubrange(count: 4)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !822, file: !823, line: 61, baseType: !830, size: 256, offset: 352)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !822, file: !823, line: 62, baseType: !192, size: 2048, offset: 608)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !822, file: !823, line: 63, baseType: !840, size: 32, offset: 2656)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !823, line: 42, size: 32, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !840, file: !823, line: 45, baseType: !826, size: 16)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !840, file: !823, line: 46, baseType: !826, size: 16, offset: 16)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !822, file: !823, line: 70, baseType: !845, size: 32, offset: 2688)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !34, line: 40, baseType: !57)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !822, file: !823, line: 75, baseType: !847, size: 64, offset: 2720)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !822, file: !823, line: 71, size: 64, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !847, file: !823, line: 73, baseType: !845, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !847, file: !823, line: 74, baseType: !845, size: 32, offset: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !822, file: !823, line: 80, baseType: !852, size: 128, offset: 2784)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 128, elements: !835)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !822, file: !823, line: 81, baseType: !854, size: 160, offset: 2912)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, elements: !855)
!855 = !{!856}
!856 = !DISubrange(count: 20)
!857 = !DILocalVariable(name: "avg", scope: !858, file: !3, line: 66, type: !951)
!858 = distinct !DISubprogram(name: "print_uptime", scope: !3, file: !3, line: 56, type: !859, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !863)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !166, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !857, !889, !890, !939, !945, !946, !949}
!864 = !DILocalVariable(name: "n", arg: 1, scope: !858, file: !3, line: 56, type: !166)
!865 = !DILocalVariable(name: "this", arg: 2, scope: !858, file: !3, line: 56, type: !861)
!866 = !DILocalVariable(name: "entries", scope: !858, file: !3, line: 58, type: !166)
!867 = !DILocalVariable(name: "boot_time", scope: !858, file: !3, line: 59, type: !44)
!868 = !DILocalVariable(name: "time_now", scope: !858, file: !3, line: 60, type: !44)
!869 = !DILocalVariable(name: "uptime", scope: !858, file: !3, line: 61, type: !44)
!870 = !DILocalVariable(name: "updays", scope: !858, file: !3, line: 62, type: !47)
!871 = !DILocalVariable(name: "uphours", scope: !858, file: !3, line: 63, type: !57)
!872 = !DILocalVariable(name: "upmins", scope: !858, file: !3, line: 64, type: !57)
!873 = !DILocalVariable(name: "tmn", scope: !858, file: !3, line: 65, type: !874)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !876, line: 7, size: 448, elements: !877)
!876 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!877 = !{!878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !875, file: !876, line: 9, baseType: !57, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !875, file: !876, line: 10, baseType: !57, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !875, file: !876, line: 11, baseType: !57, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !875, file: !876, line: 12, baseType: !57, size: 32, offset: 96)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !875, file: !876, line: 13, baseType: !57, size: 32, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !875, file: !876, line: 14, baseType: !57, size: 32, offset: 160)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !875, file: !876, line: 15, baseType: !57, size: 32, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !875, file: !876, line: 16, baseType: !57, size: 32, offset: 224)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !875, file: !876, line: 17, baseType: !57, size: 32, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !875, file: !876, line: 20, baseType: !47, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !875, file: !876, line: 21, baseType: !40, size: 64, offset: 384)
!889 = !DILocalVariable(name: "loads", scope: !858, file: !3, line: 67, type: !57)
!890 = !DILocalVariable(name: "fp", scope: !858, file: !3, line: 69, type: !891)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !893, line: 7, baseType: !894)
!893 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !895, line: 49, size: 1728, elements: !896)
!895 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!896 = !{!897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !912, !914, !915, !916, !918, !919, !921, !923, !926, !928, !931, !934, !935, !936, !937, !938}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !894, file: !895, line: 51, baseType: !57, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !894, file: !895, line: 54, baseType: !74, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !894, file: !895, line: 55, baseType: !74, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !894, file: !895, line: 56, baseType: !74, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !894, file: !895, line: 57, baseType: !74, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !894, file: !895, line: 58, baseType: !74, size: 64, offset: 320)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !894, file: !895, line: 59, baseType: !74, size: 64, offset: 384)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !894, file: !895, line: 60, baseType: !74, size: 64, offset: 448)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !894, file: !895, line: 61, baseType: !74, size: 64, offset: 512)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !894, file: !895, line: 64, baseType: !74, size: 64, offset: 576)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !894, file: !895, line: 65, baseType: !74, size: 64, offset: 640)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !894, file: !895, line: 66, baseType: !74, size: 64, offset: 704)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !894, file: !895, line: 68, baseType: !910, size: 64, offset: 768)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !895, line: 36, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !894, file: !895, line: 70, baseType: !913, size: 64, offset: 832)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !894, file: !895, line: 72, baseType: !57, size: 32, offset: 896)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !894, file: !895, line: 73, baseType: !57, size: 32, offset: 928)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !894, file: !895, line: 74, baseType: !917, size: 64, offset: 960)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !34, line: 150, baseType: !47)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !894, file: !895, line: 77, baseType: !91, size: 16, offset: 1024)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !894, file: !895, line: 78, baseType: !920, size: 8, offset: 1040)
!920 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !894, file: !895, line: 79, baseType: !922, size: 8, offset: 1048)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, elements: !61)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !894, file: !895, line: 81, baseType: !924, size: 64, offset: 1088)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !895, line: 43, baseType: null)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !894, file: !895, line: 89, baseType: !927, size: 64, offset: 1152)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !34, line: 151, baseType: !47)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !894, file: !895, line: 91, baseType: !929, size: 64, offset: 1216)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !895, line: 37, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !894, file: !895, line: 92, baseType: !932, size: 64, offset: 1280)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !895, line: 38, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !894, file: !895, line: 93, baseType: !913, size: 64, offset: 1344)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !894, file: !895, line: 94, baseType: !43, size: 64, offset: 1408)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !894, file: !895, line: 95, baseType: !166, size: 64, offset: 1472)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !894, file: !895, line: 96, baseType: !57, size: 32, offset: 1536)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !894, file: !895, line: 98, baseType: !854, size: 160, offset: 1568)
!939 = !DILocalVariable(name: "buf", scope: !940, file: !3, line: 74, type: !942)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 73, column: 5)
!941 = distinct !DILexicalBlock(scope: !858, file: !3, line: 72, column: 7)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 65536, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 8192)
!945 = !DILocalVariable(name: "b", scope: !940, file: !3, line: 75, type: !74)
!946 = !DILocalVariable(name: "end_ptr", scope: !947, file: !3, line: 78, type: !74)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 77, column: 9)
!948 = distinct !DILexicalBlock(scope: !940, file: !3, line: 76, column: 11)
!949 = !DILocalVariable(name: "upsecs", scope: !947, file: !3, line: 79, type: !950)
!950 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 192, elements: !131)
!952 = !DILocation(line: 66, column: 10, scope: !858, inlinedAt: !953)
!953 = distinct !DILocation(line: 192, column: 3, scope: !812)
!954 = !DILocation(line: 74, column: 12, scope: !940, inlinedAt: !953)
!955 = !DILocation(line: 182, column: 21, scope: !812)
!956 = !DILocation(line: 182, column: 35, scope: !812)
!957 = !DILocation(line: 184, column: 3, scope: !812)
!958 = !DILocation(line: 185, column: 3, scope: !812)
!959 = !DILocation(line: 185, column: 16, scope: !812)
!960 = !DILocation(line: 184, column: 10, scope: !812)
!961 = !DILocation(line: 188, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !812, file: !3, line: 188, column: 7)
!963 = !DILocation(line: 188, column: 58, scope: !962)
!964 = !DILocation(line: 188, column: 7, scope: !812)
!965 = !DILocation(line: 189, column: 5, scope: !962)
!966 = !DILocation(line: 192, column: 17, scope: !812)
!967 = !{!968, !968, i64 0}
!968 = !{!"long", !728, i64 0}
!969 = !DILocation(line: 192, column: 26, scope: !812)
!970 = !DILocation(line: 56, column: 22, scope: !858, inlinedAt: !953)
!971 = !DILocation(line: 56, column: 44, scope: !858, inlinedAt: !953)
!972 = !DILocation(line: 58, column: 10, scope: !858, inlinedAt: !953)
!973 = !DILocation(line: 59, column: 10, scope: !858, inlinedAt: !953)
!974 = !DILocation(line: 60, column: 3, scope: !858, inlinedAt: !953)
!975 = !DILocation(line: 61, column: 10, scope: !858, inlinedAt: !953)
!976 = !DILocation(line: 66, column: 3, scope: !858, inlinedAt: !953)
!977 = !DILocation(line: 71, column: 8, scope: !858, inlinedAt: !953)
!978 = !DILocation(line: 69, column: 9, scope: !858, inlinedAt: !953)
!979 = !DILocation(line: 72, column: 10, scope: !941, inlinedAt: !953)
!980 = !DILocation(line: 72, column: 7, scope: !858, inlinedAt: !953)
!981 = !DILocation(line: 74, column: 7, scope: !940, inlinedAt: !953)
!982 = !DILocation(line: 75, column: 17, scope: !940, inlinedAt: !953)
!983 = !DILocation(line: 75, column: 13, scope: !940, inlinedAt: !953)
!984 = !DILocation(line: 76, column: 13, scope: !948, inlinedAt: !953)
!985 = !DILocation(line: 76, column: 11, scope: !940, inlinedAt: !953)
!986 = !DILocation(line: 78, column: 11, scope: !947, inlinedAt: !953)
!987 = !DILocation(line: 78, column: 17, scope: !947, inlinedAt: !953)
!988 = !DILocation(line: 79, column: 27, scope: !947, inlinedAt: !953)
!989 = !DILocation(line: 79, column: 18, scope: !947, inlinedAt: !953)
!990 = !DILocation(line: 80, column: 22, scope: !991, inlinedAt: !953)
!991 = distinct !DILexicalBlock(scope: !947, file: !3, line: 80, column: 15)
!992 = !DILocation(line: 80, column: 19, scope: !991, inlinedAt: !953)
!993 = !DILocation(line: 80, column: 15, scope: !947, inlinedAt: !953)
!994 = !DILocation(line: 81, column: 25, scope: !991, inlinedAt: !953)
!995 = !DILocation(line: 81, column: 45, scope: !991, inlinedAt: !953)
!996 = !DILocation(line: 81, column: 35, scope: !991, inlinedAt: !953)
!997 = !DILocation(line: 81, column: 22, scope: !991, inlinedAt: !953)
!998 = !DILocation(line: 81, column: 13, scope: !991, inlinedAt: !953)
!999 = !DILocation(line: 0, scope: !858, inlinedAt: !953)
!1000 = !DILocation(line: 83, column: 9, scope: !948, inlinedAt: !953)
!1001 = !DILocation(line: 83, column: 9, scope: !947, inlinedAt: !953)
!1002 = !DILocation(line: 85, column: 7, scope: !940, inlinedAt: !953)
!1003 = !DILocation(line: 86, column: 5, scope: !941, inlinedAt: !953)
!1004 = !DILocation(line: 86, column: 5, scope: !940, inlinedAt: !953)
!1005 = !DILocation(line: 113, column: 3, scope: !858, inlinedAt: !953)
!1006 = !DILocation(line: 113, column: 11, scope: !858, inlinedAt: !953)
!1007 = !DILocation(line: 115, column: 18, scope: !1008, inlinedAt: !953)
!1008 = distinct !DILexicalBlock(scope: !858, file: !3, line: 114, column: 5)
!1009 = !{!728, !728, i64 0}
!1010 = !DILocation(line: 0, scope: !1008, inlinedAt: !953)
!1011 = !{!1012, !1013, i64 0}
!1012 = !{!"utmpx", !1013, i64 0, !795, i64 4, !728, i64 8, !728, i64 40, !728, i64 44, !728, i64 76, !1014, i64 332, !795, i64 336, !1015, i64 340, !728, i64 348, !728, i64 364}
!1013 = !{!"short", !728, i64 0}
!1014 = !{!"__exit_status", !1013, i64 0, !1013, i64 2}
!1015 = !{!"", !795, i64 0, !795, i64 4}
!1016 = !DILocation(line: 115, column: 15, scope: !1008, inlinedAt: !953)
!1017 = !DILocation(line: 116, column: 11, scope: !1018, inlinedAt: !953)
!1018 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 116, column: 11)
!1019 = !DILocation(line: 116, column: 11, scope: !1008, inlinedAt: !953)
!1020 = !DILocation(line: 117, column: 21, scope: !1018, inlinedAt: !953)
!1021 = !{!1012, !795, i64 340}
!1022 = !DILocation(line: 117, column: 9, scope: !1018, inlinedAt: !953)
!1023 = !DILocation(line: 0, scope: !1018, inlinedAt: !953)
!1024 = !DILocation(line: 125, column: 14, scope: !858, inlinedAt: !953)
!1025 = !DILocation(line: 60, column: 10, scope: !858, inlinedAt: !953)
!1026 = !DILocation(line: 125, column: 12, scope: !858, inlinedAt: !953)
!1027 = !DILocation(line: 127, column: 14, scope: !1028, inlinedAt: !953)
!1028 = distinct !DILexicalBlock(scope: !858, file: !3, line: 127, column: 7)
!1029 = !DILocation(line: 127, column: 7, scope: !858, inlinedAt: !953)
!1030 = !DILocation(line: 130, column: 21, scope: !1031, inlinedAt: !953)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 130, column: 11)
!1032 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 129, column: 5)
!1033 = !DILocation(line: 130, column: 11, scope: !1032, inlinedAt: !953)
!1034 = !DILocation(line: 131, column: 9, scope: !1031, inlinedAt: !953)
!1035 = !DILocation(line: 132, column: 25, scope: !1032, inlinedAt: !953)
!1036 = !DILocation(line: 133, column: 5, scope: !1032, inlinedAt: !953)
!1037 = !DILocation(line: 0, scope: !991, inlinedAt: !953)
!1038 = !DILocation(line: 134, column: 19, scope: !858, inlinedAt: !953)
!1039 = !DILocation(line: 62, column: 12, scope: !858, inlinedAt: !953)
!1040 = !DILocation(line: 135, column: 21, scope: !858, inlinedAt: !953)
!1041 = !DILocation(line: 135, column: 41, scope: !858, inlinedAt: !953)
!1042 = !DILocation(line: 135, column: 13, scope: !858, inlinedAt: !953)
!1043 = !DILocation(line: 63, column: 7, scope: !858, inlinedAt: !953)
!1044 = !DILocation(line: 136, column: 41, scope: !858, inlinedAt: !953)
!1045 = !DILocation(line: 136, column: 39, scope: !858, inlinedAt: !953)
!1046 = !DILocation(line: 136, column: 59, scope: !858, inlinedAt: !953)
!1047 = !DILocation(line: 136, column: 12, scope: !858, inlinedAt: !953)
!1048 = !DILocation(line: 64, column: 7, scope: !858, inlinedAt: !953)
!1049 = !DILocation(line: 137, column: 9, scope: !858, inlinedAt: !953)
!1050 = !DILocation(line: 65, column: 14, scope: !858, inlinedAt: !953)
!1051 = !DILocation(line: 140, column: 7, scope: !1052, inlinedAt: !953)
!1052 = distinct !DILexicalBlock(scope: !858, file: !3, line: 140, column: 7)
!1053 = !DILocation(line: 140, column: 7, scope: !858, inlinedAt: !953)
!1054 = !DILocation(line: 142, column: 18, scope: !1052, inlinedAt: !953)
!1055 = !DILocation(line: 142, column: 26, scope: !1052, inlinedAt: !953)
!1056 = !DILocation(line: 142, column: 5, scope: !1052, inlinedAt: !953)
!1057 = !DILocation(line: 144, column: 5, scope: !1052, inlinedAt: !953)
!1058 = !DILocation(line: 145, column: 14, scope: !1059, inlinedAt: !953)
!1059 = distinct !DILexicalBlock(scope: !858, file: !3, line: 145, column: 7)
!1060 = !DILocation(line: 145, column: 7, scope: !858, inlinedAt: !953)
!1061 = !DILocation(line: 146, column: 5, scope: !1059, inlinedAt: !953)
!1062 = !DILocation(line: 149, column: 13, scope: !1063, inlinedAt: !953)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 149, column: 11)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 148, column: 5)
!1065 = !DILocation(line: 149, column: 11, scope: !1064, inlinedAt: !953)
!1066 = !DILocation(line: 150, column: 9, scope: !1063, inlinedAt: !953)
!1067 = !DILocation(line: 155, column: 9, scope: !1063, inlinedAt: !953)
!1068 = !DILocation(line: 157, column: 3, scope: !858, inlinedAt: !953)
!1069 = !DILocation(line: 160, column: 23, scope: !858, inlinedAt: !953)
!1070 = !DILocation(line: 160, column: 11, scope: !858, inlinedAt: !953)
!1071 = !DILocation(line: 67, column: 7, scope: !858, inlinedAt: !953)
!1072 = !DILocation(line: 162, column: 13, scope: !1073, inlinedAt: !953)
!1073 = distinct !DILexicalBlock(scope: !858, file: !3, line: 162, column: 7)
!1074 = !DILocation(line: 162, column: 7, scope: !858, inlinedAt: !953)
!1075 = !DILocalVariable(name: "__c", arg: 1, scope: !1076, file: !1077, line: 108, type: !57)
!1076 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1077, file: !1077, line: 108, type: !1078, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1080)
!1077 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!57, !57}
!1080 = !{!1075}
!1081 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 163, column: 5, scope: !1073, inlinedAt: !953)
!1083 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1082)
!1084 = !{!1085, !727, i64 40}
!1085 = !{!"_IO_FILE", !795, i64 0, !727, i64 8, !727, i64 16, !727, i64 24, !727, i64 32, !727, i64 40, !727, i64 48, !727, i64 56, !727, i64 64, !727, i64 72, !727, i64 80, !727, i64 88, !727, i64 96, !727, i64 104, !795, i64 112, !795, i64 116, !968, i64 120, !1013, i64 128, !728, i64 130, !728, i64 131, !727, i64 136, !968, i64 144, !727, i64 152, !727, i64 160, !727, i64 168, !727, i64 176, !968, i64 184, !795, i64 192, !728, i64 196}
!1086 = !{!1085, !727, i64 48}
!1087 = !{!"branch_weights", i32 2000, i32 1}
!1088 = !DILocation(line: 166, column: 17, scope: !1089, inlinedAt: !953)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 166, column: 11)
!1090 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 165, column: 5)
!1091 = !DILocation(line: 166, column: 11, scope: !1090, inlinedAt: !953)
!1092 = !DILocation(line: 167, column: 9, scope: !1089, inlinedAt: !953)
!1093 = !{!1094, !1094, i64 0}
!1094 = !{!"double", !728, i64 0}
!1095 = !DILocation(line: 168, column: 17, scope: !1096, inlinedAt: !953)
!1096 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 168, column: 11)
!1097 = !DILocation(line: 168, column: 11, scope: !1090, inlinedAt: !953)
!1098 = !DILocation(line: 169, column: 9, scope: !1096, inlinedAt: !953)
!1099 = !DILocation(line: 170, column: 17, scope: !1100, inlinedAt: !953)
!1100 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 170, column: 11)
!1101 = !DILocation(line: 170, column: 11, scope: !1090, inlinedAt: !953)
!1102 = !DILocation(line: 171, column: 9, scope: !1100, inlinedAt: !953)
!1103 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 173, column: 9, scope: !1105, inlinedAt: !953)
!1105 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 172, column: 11)
!1106 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1104)
!1107 = !DILocation(line: 175, column: 1, scope: !858, inlinedAt: !953)
!1108 = !DILocation(line: 195, column: 1, scope: !812)
!1109 = !DILocation(line: 118, column: 7, scope: !1008, inlinedAt: !953)
!1110 = distinct !{!1110, !1111, !1112}
!1111 = !DILocation(line: 113, column: 3, scope: !858)
!1112 = !DILocation(line: 119, column: 5, scope: !858)
!1113 = distinct !DISubprogram(name: "c_strtod", scope: !99, file: !99, line: 66, type: !1114, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!950, !40, !774}
!1116 = !{!1117, !1118, !1119, !1120}
!1117 = !DILocalVariable(name: "nptr", arg: 1, scope: !1113, file: !99, line: 66, type: !40)
!1118 = !DILocalVariable(name: "endptr", arg: 2, scope: !1113, file: !99, line: 66, type: !774)
!1119 = !DILocalVariable(name: "r", scope: !1113, file: !99, line: 68, type: !950)
!1120 = !DILocalVariable(name: "locale", scope: !1113, file: !99, line: 72, type: !75)
!1121 = !DILocation(line: 66, column: 23, scope: !1113)
!1122 = !DILocation(line: 66, column: 36, scope: !1113)
!1123 = !DILocation(line: 58, column: 8, scope: !1124, inlinedAt: !1128)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !99, line: 58, column: 7)
!1125 = distinct !DISubprogram(name: "c_locale", scope: !99, file: !99, line: 56, type: !1126, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !67)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!75}
!1128 = distinct !DILocation(line: 72, column: 21, scope: !1113)
!1129 = !DILocation(line: 58, column: 7, scope: !1125, inlinedAt: !1128)
!1130 = !DILocation(line: 59, column: 22, scope: !1124, inlinedAt: !1128)
!1131 = !DILocation(line: 59, column: 20, scope: !1124, inlinedAt: !1128)
!1132 = !DILocation(line: 59, column: 5, scope: !1124, inlinedAt: !1128)
!1133 = !DILocation(line: 60, column: 10, scope: !1125, inlinedAt: !1128)
!1134 = !DILocation(line: 72, column: 12, scope: !1113)
!1135 = !DILocation(line: 73, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1113, file: !99, line: 73, column: 7)
!1137 = !DILocation(line: 73, column: 7, scope: !1113)
!1138 = !DILocation(line: 75, column: 11, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !99, line: 75, column: 11)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !99, line: 74, column: 5)
!1141 = !DILocation(line: 75, column: 11, scope: !1140)
!1142 = !DILocation(line: 76, column: 17, scope: !1139)
!1143 = !DILocation(line: 76, column: 9, scope: !1139)
!1144 = !DILocation(line: 80, column: 7, scope: !1113)
!1145 = !DILocation(line: 68, column: 10, scope: !1113)
!1146 = !DILocation(line: 111, column: 3, scope: !1113)
!1147 = !DILocation(line: 0, scope: !1140)
!1148 = !DILocation(line: 112, column: 1, scope: !1113)
!1149 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !108, file: !108, line: 51, type: !701, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !103, retainedNodes: !1150)
!1150 = !{!1151}
!1151 = !DILocalVariable(name: "file", arg: 1, scope: !1149, file: !108, line: 51, type: !40)
!1152 = !DILocation(line: 51, column: 41, scope: !1149)
!1153 = !DILocation(line: 53, column: 13, scope: !1149)
!1154 = !DILocation(line: 54, column: 1, scope: !1149)
!1155 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !108, file: !108, line: 88, type: !1156, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !103, retainedNodes: !1158)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !109}
!1158 = !{!1159}
!1159 = !DILocalVariable(name: "ignore", arg: 1, scope: !1155, file: !108, line: 88, type: !109)
!1160 = !DILocation(line: 88, column: 37, scope: !1155)
!1161 = !DILocation(line: 90, column: 16, scope: !1155)
!1162 = !{!1163, !1163, i64 0}
!1163 = !{!"_Bool", !728, i64 0}
!1164 = !DILocation(line: 91, column: 1, scope: !1155)
!1165 = distinct !DISubprogram(name: "close_stdout", scope: !108, file: !108, line: 117, type: !1166, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !103, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null}
!1168 = !{!1169}
!1169 = !DILocalVariable(name: "write_error", scope: !1170, file: !108, line: 122, type: !40)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !108, line: 121, column: 5)
!1171 = distinct !DILexicalBlock(scope: !1165, file: !108, line: 119, column: 7)
!1172 = !DILocation(line: 119, column: 21, scope: !1171)
!1173 = !DILocation(line: 119, column: 7, scope: !1171)
!1174 = !DILocation(line: 119, column: 29, scope: !1171)
!1175 = !DILocation(line: 120, column: 7, scope: !1171)
!1176 = !DILocation(line: 120, column: 12, scope: !1171)
!1177 = !{i8 0, i8 2}
!1178 = !DILocation(line: 120, column: 25, scope: !1171)
!1179 = !DILocation(line: 120, column: 28, scope: !1171)
!1180 = !DILocation(line: 120, column: 34, scope: !1171)
!1181 = !DILocation(line: 119, column: 7, scope: !1165)
!1182 = !DILocation(line: 122, column: 33, scope: !1170)
!1183 = !DILocation(line: 122, column: 19, scope: !1170)
!1184 = !DILocation(line: 123, column: 11, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1170, file: !108, line: 123, column: 11)
!1186 = !DILocation(line: 0, scope: !1185)
!1187 = !DILocation(line: 123, column: 11, scope: !1170)
!1188 = !DILocation(line: 124, column: 36, scope: !1185)
!1189 = !DILocation(line: 124, column: 9, scope: !1185)
!1190 = !DILocation(line: 127, column: 9, scope: !1185)
!1191 = !DILocation(line: 129, column: 14, scope: !1170)
!1192 = !DILocation(line: 129, column: 7, scope: !1170)
!1193 = !DILocation(line: 134, column: 42, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1165, file: !108, line: 134, column: 7)
!1195 = !DILocation(line: 134, column: 28, scope: !1194)
!1196 = !DILocation(line: 134, column: 50, scope: !1194)
!1197 = !DILocation(line: 134, column: 7, scope: !1165)
!1198 = !DILocation(line: 135, column: 12, scope: !1194)
!1199 = !DILocation(line: 135, column: 5, scope: !1194)
!1200 = !DILocation(line: 136, column: 1, scope: !1165)
!1201 = distinct !DISubprogram(name: "fprintftime", scope: !1202, file: !1202, line: 431, type: !1203, isLocal: false, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !1261)
!1202 = !DIFile(filename: "./lib/nstrftime.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!166, !1205, !40, !1239, !1254, !57}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !893, line: 7, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !895, line: 49, size: 1728, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1207, file: !895, line: 51, baseType: !57, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1207, file: !895, line: 54, baseType: !74, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1207, file: !895, line: 55, baseType: !74, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1207, file: !895, line: 56, baseType: !74, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1207, file: !895, line: 57, baseType: !74, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1207, file: !895, line: 58, baseType: !74, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1207, file: !895, line: 59, baseType: !74, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1207, file: !895, line: 60, baseType: !74, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1207, file: !895, line: 61, baseType: !74, size: 64, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1207, file: !895, line: 64, baseType: !74, size: 64, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1207, file: !895, line: 65, baseType: !74, size: 64, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1207, file: !895, line: 66, baseType: !74, size: 64, offset: 704)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1207, file: !895, line: 68, baseType: !910, size: 64, offset: 768)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1207, file: !895, line: 70, baseType: !1223, size: 64, offset: 832)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1207, file: !895, line: 72, baseType: !57, size: 32, offset: 896)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1207, file: !895, line: 73, baseType: !57, size: 32, offset: 928)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1207, file: !895, line: 74, baseType: !917, size: 64, offset: 960)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1207, file: !895, line: 77, baseType: !91, size: 16, offset: 1024)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1207, file: !895, line: 78, baseType: !920, size: 8, offset: 1040)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1207, file: !895, line: 79, baseType: !922, size: 8, offset: 1048)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1207, file: !895, line: 81, baseType: !924, size: 64, offset: 1088)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1207, file: !895, line: 89, baseType: !927, size: 64, offset: 1152)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1207, file: !895, line: 91, baseType: !929, size: 64, offset: 1216)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1207, file: !895, line: 92, baseType: !932, size: 64, offset: 1280)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1207, file: !895, line: 93, baseType: !1223, size: 64, offset: 1344)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1207, file: !895, line: 94, baseType: !43, size: 64, offset: 1408)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1207, file: !895, line: 95, baseType: !166, size: 64, offset: 1472)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1207, file: !895, line: 96, baseType: !57, size: 32, offset: 1536)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1207, file: !895, line: 98, baseType: !854, size: 160, offset: 1568)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1241)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !876, line: 7, size: 448, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1241, file: !876, line: 9, baseType: !57, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1241, file: !876, line: 10, baseType: !57, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1241, file: !876, line: 11, baseType: !57, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1241, file: !876, line: 12, baseType: !57, size: 32, offset: 96)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1241, file: !876, line: 13, baseType: !57, size: 32, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1241, file: !876, line: 14, baseType: !57, size: 32, offset: 160)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1241, file: !876, line: 15, baseType: !57, size: 32, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1241, file: !876, line: 16, baseType: !57, size: 32, offset: 224)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1241, file: !876, line: 17, baseType: !57, size: 32, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1241, file: !876, line: 20, baseType: !47, size: 64, offset: 320)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1241, file: !876, line: 21, baseType: !40, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "timezone_t", file: !284, line: 742, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm_zone", file: !287, line: 21, size: 128, elements: !1257)
!1257 = !{!1258, !1259, !1260}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1256, file: !287, line: 25, baseType: !1255, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "tz_is_set", scope: !1256, file: !287, line: 36, baseType: !42, size: 8, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "abbrs", scope: !1256, file: !287, line: 48, baseType: !292, offset: 72)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267}
!1262 = !DILocalVariable(name: "s", arg: 1, scope: !1201, file: !1202, line: 431, type: !1205)
!1263 = !DILocalVariable(name: "format", arg: 2, scope: !1201, file: !1202, line: 432, type: !40)
!1264 = !DILocalVariable(name: "tp", arg: 3, scope: !1201, file: !1202, line: 433, type: !1239)
!1265 = !DILocalVariable(name: "tz", arg: 4, scope: !1201, file: !1202, line: 433, type: !1254)
!1266 = !DILocalVariable(name: "ns", arg: 5, scope: !1201, file: !1202, line: 433, type: !57)
!1267 = !DILocalVariable(name: "tzset_called", scope: !1201, file: !1202, line: 435, type: !109)
!1268 = !DILocation(line: 431, column: 32, scope: !1201)
!1269 = !DILocation(line: 432, column: 28, scope: !1201)
!1270 = !DILocation(line: 433, column: 31, scope: !1201)
!1271 = !DILocation(line: 433, column: 34, scope: !1201)
!1272 = !DILocation(line: 435, column: 8, scope: !1201)
!1273 = !DILocation(line: 436, column: 10, scope: !1201)
!1274 = !DILocation(line: 436, column: 3, scope: !1201)
!1275 = distinct !DISubprogram(name: "__strftime_internal", scope: !1202, file: !1202, line: 447, type: !1276, isLocal: true, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !1279)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!166, !1205, !40, !1239, !109, !1278, !1254, !57}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1321, !1322, !1323, !1328, !1331, !1333, !1336, !1337, !1338, !1343, !1346, !1348, !1350, !1352, !1353, !1354, !1359, !1362, !1364, !1369, !1370, !1374, !1375, !1378, !1379, !1380, !1385, !1388, !1390, !1392, !1397, !1398, !1399, !1404, !1407, !1409, !1411, !1418, !1421, !1422, !1423, !1428, !1431, !1433, !1437, !1438, !1439, !1444, !1447, !1449, !1452, !1456, !1457, !1458, !1463, !1466, !1468, !1470, !1471, !1472, !1477, !1480, !1482, !1485, !1487, !1488, !1489, !1494, !1497, !1499, !1501, !1502, !1504, !1506, !1507, !1508, !1513, !1516, !1518, !1520, !1521, !1522, !1525, !1528, !1530, !1532, !1533, !1534, !1539, !1542, !1544, !1546, !1547, !1548, !1549, !1551, !1553, !1554, !1555, !1560, !1563}
!1280 = !DILocalVariable(name: "s", arg: 1, scope: !1275, file: !1202, line: 447, type: !1205)
!1281 = !DILocalVariable(name: "format", arg: 2, scope: !1275, file: !1202, line: 448, type: !40)
!1282 = !DILocalVariable(name: "tp", arg: 3, scope: !1275, file: !1202, line: 449, type: !1239)
!1283 = !DILocalVariable(name: "upcase", arg: 4, scope: !1275, file: !1202, line: 449, type: !109)
!1284 = !DILocalVariable(name: "tzset_called", arg: 5, scope: !1275, file: !1202, line: 449, type: !1278)
!1285 = !DILocalVariable(name: "tz", arg: 6, scope: !1275, file: !1202, line: 450, type: !1254)
!1286 = !DILocalVariable(name: "ns", arg: 7, scope: !1275, file: !1202, line: 450, type: !57)
!1287 = !DILocalVariable(name: "maxsize", scope: !1275, file: !1202, line: 456, type: !166)
!1288 = !DILocalVariable(name: "hour12", scope: !1275, file: !1202, line: 459, type: !57)
!1289 = !DILocalVariable(name: "zone", scope: !1275, file: !1202, line: 497, type: !40)
!1290 = !DILocalVariable(name: "i", scope: !1275, file: !1202, line: 498, type: !166)
!1291 = !DILocalVariable(name: "p", scope: !1275, file: !1202, line: 499, type: !1205)
!1292 = !DILocalVariable(name: "f", scope: !1275, file: !1202, line: 500, type: !40)
!1293 = !DILocalVariable(name: "pad", scope: !1294, file: !1202, line: 563, type: !57)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !1202, line: 562, column: 5)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !1202, line: 561, column: 3)
!1296 = distinct !DILexicalBlock(scope: !1275, file: !1202, line: 561, column: 3)
!1297 = !DILocalVariable(name: "modifier", scope: !1294, file: !1202, line: 564, type: !57)
!1298 = !DILocalVariable(name: "digits", scope: !1294, file: !1202, line: 565, type: !57)
!1299 = !DILocalVariable(name: "number_value", scope: !1294, file: !1202, line: 566, type: !57)
!1300 = !DILocalVariable(name: "u_number_value", scope: !1294, file: !1202, line: 567, type: !7)
!1301 = !DILocalVariable(name: "negative_number", scope: !1294, file: !1202, line: 568, type: !109)
!1302 = !DILocalVariable(name: "always_output_a_sign", scope: !1294, file: !1202, line: 569, type: !109)
!1303 = !DILocalVariable(name: "tz_colon_mask", scope: !1294, file: !1202, line: 570, type: !57)
!1304 = !DILocalVariable(name: "subfmt", scope: !1294, file: !1202, line: 571, type: !40)
!1305 = !DILocalVariable(name: "sign_char", scope: !1294, file: !1202, line: 572, type: !42)
!1306 = !DILocalVariable(name: "bufp", scope: !1294, file: !1202, line: 573, type: !74)
!1307 = !DILocalVariable(name: "buf", scope: !1294, file: !1202, line: 574, type: !1308)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 184, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: 23)
!1311 = !DILocalVariable(name: "width", scope: !1294, file: !1202, line: 579, type: !57)
!1312 = !DILocalVariable(name: "to_lowcase", scope: !1294, file: !1202, line: 580, type: !109)
!1313 = !DILocalVariable(name: "to_uppcase", scope: !1294, file: !1202, line: 581, type: !109)
!1314 = !DILocalVariable(name: "colons", scope: !1294, file: !1202, line: 582, type: !166)
!1315 = !DILocalVariable(name: "change_case", scope: !1294, file: !1202, line: 583, type: !109)
!1316 = !DILocalVariable(name: "format_char", scope: !1294, file: !1202, line: 584, type: !57)
!1317 = !DILocalVariable(name: "_n", scope: !1318, file: !1202, line: 668, type: !166)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !1202, line: 668, column: 11)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !1202, line: 667, column: 9)
!1320 = distinct !DILexicalBlock(scope: !1294, file: !1202, line: 666, column: 11)
!1321 = !DILocalVariable(name: "_w", scope: !1318, file: !1202, line: 668, type: !166)
!1322 = !DILocalVariable(name: "_incr", scope: !1318, file: !1202, line: 668, type: !166)
!1323 = !DILocalVariable(name: "_delta", scope: !1324, file: !1202, line: 668, type: !166)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !1202, line: 668, column: 11)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !1202, line: 668, column: 11)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !1202, line: 668, column: 11)
!1327 = distinct !DILexicalBlock(scope: !1318, file: !1202, line: 668, column: 11)
!1328 = !DILocalVariable(name: "_i", scope: !1329, file: !1202, line: 668, type: !166)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !1202, line: 668, column: 11)
!1330 = distinct !DILexicalBlock(scope: !1324, file: !1202, line: 668, column: 11)
!1331 = !DILocalVariable(name: "_i", scope: !1332, file: !1202, line: 668, type: !166)
!1332 = distinct !DILexicalBlock(scope: !1330, file: !1202, line: 668, column: 11)
!1333 = !DILocalVariable(name: "_n", scope: !1334, file: !1202, line: 779, type: !166)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 779, column: 11)
!1335 = distinct !DILexicalBlock(scope: !1294, file: !1202, line: 736, column: 9)
!1336 = !DILocalVariable(name: "_w", scope: !1334, file: !1202, line: 779, type: !166)
!1337 = !DILocalVariable(name: "_incr", scope: !1334, file: !1202, line: 779, type: !166)
!1338 = !DILocalVariable(name: "_delta", scope: !1339, file: !1202, line: 779, type: !166)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !1202, line: 779, column: 11)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !1202, line: 779, column: 11)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !1202, line: 779, column: 11)
!1342 = distinct !DILexicalBlock(scope: !1334, file: !1202, line: 779, column: 11)
!1343 = !DILocalVariable(name: "_i", scope: !1344, file: !1202, line: 779, type: !166)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !1202, line: 779, column: 11)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !1202, line: 779, column: 11)
!1346 = !DILocalVariable(name: "_i", scope: !1347, file: !1202, line: 779, type: !166)
!1347 = distinct !DILexicalBlock(scope: !1345, file: !1202, line: 779, column: 11)
!1348 = !DILocalVariable(name: "len", scope: !1349, file: !1202, line: 865, type: !166)
!1349 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 864, column: 11)
!1350 = !DILocalVariable(name: "_n", scope: !1351, file: !1202, line: 869, type: !166)
!1351 = distinct !DILexicalBlock(scope: !1349, file: !1202, line: 869, column: 13)
!1352 = !DILocalVariable(name: "_w", scope: !1351, file: !1202, line: 869, type: !166)
!1353 = !DILocalVariable(name: "_incr", scope: !1351, file: !1202, line: 869, type: !166)
!1354 = !DILocalVariable(name: "_delta", scope: !1355, file: !1202, line: 869, type: !166)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !1202, line: 869, column: 13)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !1202, line: 869, column: 13)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !1202, line: 869, column: 13)
!1358 = distinct !DILexicalBlock(scope: !1351, file: !1202, line: 869, column: 13)
!1359 = !DILocalVariable(name: "_i", scope: !1360, file: !1202, line: 869, type: !166)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !1202, line: 869, column: 13)
!1361 = distinct !DILexicalBlock(scope: !1355, file: !1202, line: 869, column: 13)
!1362 = !DILocalVariable(name: "_i", scope: !1363, file: !1202, line: 869, type: !166)
!1363 = distinct !DILexicalBlock(scope: !1361, file: !1202, line: 869, column: 13)
!1364 = !DILocalVariable(name: "ufmt", scope: !1365, file: !1202, line: 882, type: !1366)
!1365 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 879, column: 11)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 40, elements: !1367)
!1367 = !{!1368}
!1368 = !DISubrange(count: 5)
!1369 = !DILocalVariable(name: "u", scope: !1365, file: !1202, line: 883, type: !74)
!1370 = !DILocalVariable(name: "ubuf", scope: !1365, file: !1202, line: 884, type: !1371)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8192, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 1024)
!1374 = !DILocalVariable(name: "len", scope: !1365, file: !1202, line: 885, type: !166)
!1375 = !DILocalVariable(name: "_n", scope: !1376, file: !1202, line: 904, type: !166)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !1202, line: 904, column: 15)
!1377 = distinct !DILexicalBlock(scope: !1365, file: !1202, line: 903, column: 17)
!1378 = !DILocalVariable(name: "_w", scope: !1376, file: !1202, line: 904, type: !166)
!1379 = !DILocalVariable(name: "_incr", scope: !1376, file: !1202, line: 904, type: !166)
!1380 = !DILocalVariable(name: "_delta", scope: !1381, file: !1202, line: 904, type: !166)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !1202, line: 904, column: 15)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !1202, line: 904, column: 15)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !1202, line: 904, column: 15)
!1384 = distinct !DILexicalBlock(scope: !1376, file: !1202, line: 904, column: 15)
!1385 = !DILocalVariable(name: "_i", scope: !1386, file: !1202, line: 904, type: !166)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !1202, line: 904, column: 15)
!1387 = distinct !DILexicalBlock(scope: !1381, file: !1202, line: 904, column: 15)
!1388 = !DILocalVariable(name: "_i", scope: !1389, file: !1202, line: 904, type: !166)
!1389 = distinct !DILexicalBlock(scope: !1387, file: !1202, line: 904, column: 15)
!1390 = !DILocalVariable(name: "century", scope: !1391, file: !1202, line: 931, type: !57)
!1391 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 930, column: 11)
!1392 = !DILocalVariable(name: "_n", scope: !1393, file: !1202, line: 1042, type: !166)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !1202, line: 1042, column: 17)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !1202, line: 1041, column: 19)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !1202, line: 1040, column: 13)
!1396 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1039, column: 15)
!1397 = !DILocalVariable(name: "_w", scope: !1393, file: !1202, line: 1042, type: !166)
!1398 = !DILocalVariable(name: "_incr", scope: !1393, file: !1202, line: 1042, type: !166)
!1399 = !DILocalVariable(name: "_delta", scope: !1400, file: !1202, line: 1042, type: !166)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !1202, line: 1042, column: 17)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !1202, line: 1042, column: 17)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !1202, line: 1042, column: 17)
!1403 = distinct !DILexicalBlock(scope: !1393, file: !1202, line: 1042, column: 17)
!1404 = !DILocalVariable(name: "_i", scope: !1405, file: !1202, line: 1042, type: !166)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !1202, line: 1042, column: 17)
!1406 = distinct !DILexicalBlock(scope: !1400, file: !1202, line: 1042, column: 17)
!1407 = !DILocalVariable(name: "_i", scope: !1408, file: !1202, line: 1042, type: !166)
!1408 = distinct !DILexicalBlock(scope: !1406, file: !1202, line: 1042, column: 17)
!1409 = !DILocalVariable(name: "padding", scope: !1410, file: !1202, line: 1046, type: !57)
!1410 = distinct !DILexicalBlock(scope: !1396, file: !1202, line: 1045, column: 13)
!1411 = !DILocalVariable(name: "_i", scope: !1412, file: !1202, line: 1057, type: !166)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !1202, line: 1057, column: 25)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !1202, line: 1056, column: 27)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !1202, line: 1052, column: 21)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !1202, line: 1051, column: 23)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !1202, line: 1050, column: 17)
!1417 = distinct !DILexicalBlock(scope: !1410, file: !1202, line: 1049, column: 19)
!1418 = !DILocalVariable(name: "_n", scope: !1419, file: !1202, line: 1061, type: !166)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !1202, line: 1061, column: 25)
!1420 = distinct !DILexicalBlock(scope: !1414, file: !1202, line: 1060, column: 27)
!1421 = !DILocalVariable(name: "_w", scope: !1419, file: !1202, line: 1061, type: !166)
!1422 = !DILocalVariable(name: "_incr", scope: !1419, file: !1202, line: 1061, type: !166)
!1423 = !DILocalVariable(name: "_delta", scope: !1424, file: !1202, line: 1061, type: !166)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !1202, line: 1061, column: 25)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !1202, line: 1061, column: 25)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !1202, line: 1061, column: 25)
!1427 = distinct !DILexicalBlock(scope: !1419, file: !1202, line: 1061, column: 25)
!1428 = !DILocalVariable(name: "_i", scope: !1429, file: !1202, line: 1061, type: !166)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !1202, line: 1061, column: 25)
!1430 = distinct !DILexicalBlock(scope: !1424, file: !1202, line: 1061, column: 25)
!1431 = !DILocalVariable(name: "_i", scope: !1432, file: !1202, line: 1061, type: !166)
!1432 = distinct !DILexicalBlock(scope: !1430, file: !1202, line: 1061, column: 25)
!1433 = !DILocalVariable(name: "_n", scope: !1434, file: !1202, line: 1069, type: !166)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !1202, line: 1069, column: 25)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !1202, line: 1068, column: 27)
!1436 = distinct !DILexicalBlock(scope: !1415, file: !1202, line: 1064, column: 21)
!1437 = !DILocalVariable(name: "_w", scope: !1434, file: !1202, line: 1069, type: !166)
!1438 = !DILocalVariable(name: "_incr", scope: !1434, file: !1202, line: 1069, type: !166)
!1439 = !DILocalVariable(name: "_delta", scope: !1440, file: !1202, line: 1069, type: !166)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !1202, line: 1069, column: 25)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !1202, line: 1069, column: 25)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !1202, line: 1069, column: 25)
!1443 = distinct !DILexicalBlock(scope: !1434, file: !1202, line: 1069, column: 25)
!1444 = !DILocalVariable(name: "_i", scope: !1445, file: !1202, line: 1069, type: !166)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !1202, line: 1069, column: 25)
!1446 = distinct !DILexicalBlock(scope: !1440, file: !1202, line: 1069, column: 25)
!1447 = !DILocalVariable(name: "_i", scope: !1448, file: !1202, line: 1069, type: !166)
!1448 = distinct !DILexicalBlock(scope: !1446, file: !1202, line: 1069, column: 25)
!1449 = !DILocalVariable(name: "_i", scope: !1450, file: !1202, line: 1072, type: !166)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !1202, line: 1072, column: 25)
!1451 = distinct !DILexicalBlock(scope: !1436, file: !1202, line: 1071, column: 27)
!1452 = !DILocalVariable(name: "_n", scope: !1453, file: !1202, line: 1080, type: !166)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !1202, line: 1080, column: 21)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !1202, line: 1079, column: 23)
!1455 = distinct !DILexicalBlock(scope: !1417, file: !1202, line: 1078, column: 17)
!1456 = !DILocalVariable(name: "_w", scope: !1453, file: !1202, line: 1080, type: !166)
!1457 = !DILocalVariable(name: "_incr", scope: !1453, file: !1202, line: 1080, type: !166)
!1458 = !DILocalVariable(name: "_delta", scope: !1459, file: !1202, line: 1080, type: !166)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !1202, line: 1080, column: 21)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !1202, line: 1080, column: 21)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !1202, line: 1080, column: 21)
!1462 = distinct !DILexicalBlock(scope: !1453, file: !1202, line: 1080, column: 21)
!1463 = !DILocalVariable(name: "_i", scope: !1464, file: !1202, line: 1080, type: !166)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !1202, line: 1080, column: 21)
!1465 = distinct !DILexicalBlock(scope: !1459, file: !1202, line: 1080, column: 21)
!1466 = !DILocalVariable(name: "_i", scope: !1467, file: !1202, line: 1080, type: !166)
!1467 = distinct !DILexicalBlock(scope: !1465, file: !1202, line: 1080, column: 21)
!1468 = !DILocalVariable(name: "_n", scope: !1469, file: !1202, line: 1084, type: !166)
!1469 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1084, column: 11)
!1470 = !DILocalVariable(name: "_w", scope: !1469, file: !1202, line: 1084, type: !166)
!1471 = !DILocalVariable(name: "_incr", scope: !1469, file: !1202, line: 1084, type: !166)
!1472 = !DILocalVariable(name: "_delta", scope: !1473, file: !1202, line: 1084, type: !166)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !1202, line: 1084, column: 11)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !1202, line: 1084, column: 11)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !1202, line: 1084, column: 11)
!1476 = distinct !DILexicalBlock(scope: !1469, file: !1202, line: 1084, column: 11)
!1477 = !DILocalVariable(name: "_i", scope: !1478, file: !1202, line: 1084, type: !166)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !1202, line: 1084, column: 11)
!1479 = distinct !DILexicalBlock(scope: !1473, file: !1202, line: 1084, column: 11)
!1480 = !DILocalVariable(name: "_i", scope: !1481, file: !1202, line: 1084, type: !166)
!1481 = distinct !DILexicalBlock(scope: !1479, file: !1202, line: 1084, column: 11)
!1482 = !DILocalVariable(name: "j", scope: !1483, file: !1202, line: 1146, type: !57)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !1202, line: 1144, column: 13)
!1484 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1141, column: 15)
!1485 = !DILocalVariable(name: "_n", scope: !1486, file: !1202, line: 1155, type: !166)
!1486 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1155, column: 11)
!1487 = !DILocalVariable(name: "_w", scope: !1486, file: !1202, line: 1155, type: !166)
!1488 = !DILocalVariable(name: "_incr", scope: !1486, file: !1202, line: 1155, type: !166)
!1489 = !DILocalVariable(name: "_delta", scope: !1490, file: !1202, line: 1155, type: !166)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !1202, line: 1155, column: 11)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !1202, line: 1155, column: 11)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !1202, line: 1155, column: 11)
!1493 = distinct !DILexicalBlock(scope: !1486, file: !1202, line: 1155, column: 11)
!1494 = !DILocalVariable(name: "_i", scope: !1495, file: !1202, line: 1155, type: !166)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !1202, line: 1155, column: 11)
!1496 = distinct !DILexicalBlock(scope: !1490, file: !1202, line: 1155, column: 11)
!1497 = !DILocalVariable(name: "_i", scope: !1498, file: !1202, line: 1155, type: !166)
!1498 = distinct !DILexicalBlock(scope: !1496, file: !1202, line: 1155, column: 11)
!1499 = !DILocalVariable(name: "ltm", scope: !1500, file: !1202, line: 1204, type: !1241)
!1500 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1203, column: 11)
!1501 = !DILocalVariable(name: "t", scope: !1500, file: !1202, line: 1205, type: !44)
!1502 = !DILocalVariable(name: "d", scope: !1503, file: !1202, line: 1218, type: !57)
!1503 = distinct !DILexicalBlock(scope: !1500, file: !1202, line: 1217, column: 15)
!1504 = !DILocalVariable(name: "_n", scope: !1505, file: !1202, line: 1247, type: !166)
!1505 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1247, column: 11)
!1506 = !DILocalVariable(name: "_w", scope: !1505, file: !1202, line: 1247, type: !166)
!1507 = !DILocalVariable(name: "_incr", scope: !1505, file: !1202, line: 1247, type: !166)
!1508 = !DILocalVariable(name: "_delta", scope: !1509, file: !1202, line: 1247, type: !166)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !1202, line: 1247, column: 11)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !1202, line: 1247, column: 11)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !1202, line: 1247, column: 11)
!1512 = distinct !DILexicalBlock(scope: !1505, file: !1202, line: 1247, column: 11)
!1513 = !DILocalVariable(name: "_i", scope: !1514, file: !1202, line: 1247, type: !166)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !1202, line: 1247, column: 11)
!1515 = distinct !DILexicalBlock(scope: !1509, file: !1202, line: 1247, column: 11)
!1516 = !DILocalVariable(name: "_i", scope: !1517, file: !1202, line: 1247, type: !166)
!1517 = distinct !DILexicalBlock(scope: !1515, file: !1202, line: 1247, column: 11)
!1518 = !DILocalVariable(name: "year", scope: !1519, file: !1202, line: 1269, type: !57)
!1519 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1264, column: 11)
!1520 = !DILocalVariable(name: "year_adjust", scope: !1519, file: !1202, line: 1273, type: !57)
!1521 = !DILocalVariable(name: "days", scope: !1519, file: !1202, line: 1274, type: !57)
!1522 = !DILocalVariable(name: "d", scope: !1523, file: !1202, line: 1285, type: !57)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !1202, line: 1284, column: 15)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !1202, line: 1276, column: 17)
!1525 = !DILocalVariable(name: "yy", scope: !1526, file: !1202, line: 1299, type: !57)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !1202, line: 1298, column: 17)
!1527 = distinct !DILexicalBlock(scope: !1519, file: !1202, line: 1296, column: 15)
!1528 = !DILocalVariable(name: "yy", scope: !1529, file: !1202, line: 1370, type: !57)
!1529 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1369, column: 11)
!1530 = !DILocalVariable(name: "_n", scope: !1531, file: !1202, line: 1393, type: !166)
!1531 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1393, column: 11)
!1532 = !DILocalVariable(name: "_w", scope: !1531, file: !1202, line: 1393, type: !166)
!1533 = !DILocalVariable(name: "_incr", scope: !1531, file: !1202, line: 1393, type: !166)
!1534 = !DILocalVariable(name: "_delta", scope: !1535, file: !1202, line: 1393, type: !166)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !1202, line: 1393, column: 11)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !1202, line: 1393, column: 11)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !1202, line: 1393, column: 11)
!1538 = distinct !DILexicalBlock(scope: !1531, file: !1202, line: 1393, column: 11)
!1539 = !DILocalVariable(name: "_i", scope: !1540, file: !1202, line: 1393, type: !166)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !1202, line: 1393, column: 11)
!1541 = distinct !DILexicalBlock(scope: !1535, file: !1202, line: 1393, column: 11)
!1542 = !DILocalVariable(name: "_i", scope: !1543, file: !1202, line: 1393, type: !166)
!1543 = distinct !DILexicalBlock(scope: !1541, file: !1202, line: 1393, column: 11)
!1544 = !DILocalVariable(name: "diff", scope: !1545, file: !1202, line: 1415, type: !57)
!1545 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1414, column: 11)
!1546 = !DILocalVariable(name: "hour_diff", scope: !1545, file: !1202, line: 1416, type: !57)
!1547 = !DILocalVariable(name: "min_diff", scope: !1545, file: !1202, line: 1417, type: !57)
!1548 = !DILocalVariable(name: "sec_diff", scope: !1545, file: !1202, line: 1418, type: !57)
!1549 = !DILocalVariable(name: "flen", scope: !1550, file: !1202, line: 1505, type: !57)
!1550 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1504, column: 11)
!1551 = !DILocalVariable(name: "_n", scope: !1552, file: !1202, line: 1508, type: !166)
!1552 = distinct !DILexicalBlock(scope: !1550, file: !1202, line: 1508, column: 13)
!1553 = !DILocalVariable(name: "_w", scope: !1552, file: !1202, line: 1508, type: !166)
!1554 = !DILocalVariable(name: "_incr", scope: !1552, file: !1202, line: 1508, type: !166)
!1555 = !DILocalVariable(name: "_delta", scope: !1556, file: !1202, line: 1508, type: !166)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !1202, line: 1508, column: 13)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !1202, line: 1508, column: 13)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !1202, line: 1508, column: 13)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !1202, line: 1508, column: 13)
!1560 = !DILocalVariable(name: "_i", scope: !1561, file: !1202, line: 1508, type: !166)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !1202, line: 1508, column: 13)
!1562 = distinct !DILexicalBlock(scope: !1556, file: !1202, line: 1508, column: 13)
!1563 = !DILocalVariable(name: "_i", scope: !1564, file: !1202, line: 1508, type: !166)
!1564 = distinct !DILexicalBlock(scope: !1562, file: !1202, line: 1508, column: 13)
!1565 = !DILocation(line: 447, column: 40, scope: !1275)
!1566 = !DILocation(line: 448, column: 36, scope: !1275)
!1567 = !DILocation(line: 449, column: 39, scope: !1275)
!1568 = !DILocation(line: 449, column: 48, scope: !1275)
!1569 = !DILocation(line: 449, column: 62, scope: !1275)
!1570 = !DILocation(line: 450, column: 22, scope: !1275)
!1571 = !DILocation(line: 456, column: 10, scope: !1275)
!1572 = !DILocation(line: 459, column: 20, scope: !1275)
!1573 = !{!1574, !795, i64 8}
!1574 = !{!"tm", !795, i64 0, !795, i64 4, !795, i64 8, !795, i64 12, !795, i64 16, !795, i64 20, !795, i64 24, !795, i64 28, !795, i64 32, !968, i64 40, !727, i64 48}
!1575 = !DILocation(line: 459, column: 7, scope: !1275)
!1576 = !DILocation(line: 498, column: 10, scope: !1275)
!1577 = !DILocation(line: 499, column: 21, scope: !1275)
!1578 = !DILocation(line: 497, column: 15, scope: !1275)
!1579 = !DILocation(line: 522, column: 29, scope: !1275)
!1580 = !{!1574, !727, i64 48}
!1581 = !DILocation(line: 552, column: 9, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1275, file: !1202, line: 552, column: 7)
!1583 = !DILocation(line: 552, column: 7, scope: !1275)
!1584 = !DILocation(line: 555, column: 14, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1275, file: !1202, line: 555, column: 7)
!1586 = !DILocation(line: 556, column: 12, scope: !1585)
!1587 = !DILocation(line: 558, column: 16, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !1202, line: 558, column: 9)
!1589 = !DILocation(line: 558, column: 9, scope: !1585)
!1590 = !DILocation(line: 555, column: 7, scope: !1275)
!1591 = !DILocation(line: 500, column: 17, scope: !1275)
!1592 = !DILocation(line: 566, column: 11, scope: !1294)
!1593 = !DILocation(line: 567, column: 20, scope: !1294)
!1594 = !DILocation(line: 568, column: 12, scope: !1294)
!1595 = !DILocation(line: 570, column: 11, scope: !1294)
!1596 = !DILocation(line: 561, column: 20, scope: !1295)
!1597 = !DILocation(line: 561, column: 23, scope: !1295)
!1598 = !DILocation(line: 561, column: 3, scope: !1296)
!1599 = !DILocation(line: 666, column: 11, scope: !1320)
!1600 = !DILocation(line: 563, column: 11, scope: !1294)
!1601 = !DILocation(line: 565, column: 11, scope: !1294)
!1602 = !DILocation(line: 574, column: 7, scope: !1294)
!1603 = !DILocation(line: 574, column: 14, scope: !1294)
!1604 = !DILocation(line: 579, column: 11, scope: !1294)
!1605 = !DILocation(line: 580, column: 12, scope: !1294)
!1606 = !DILocation(line: 581, column: 12, scope: !1294)
!1607 = !DILocation(line: 583, column: 12, scope: !1294)
!1608 = !DILocation(line: 666, column: 14, scope: !1320)
!1609 = !DILocation(line: 666, column: 11, scope: !1294)
!1610 = !DILocation(line: 668, column: 11, scope: !1318)
!1611 = !DILocation(line: 668, column: 11, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1318, file: !1202, line: 668, column: 11)
!1613 = !DILocation(line: 668, column: 11, scope: !1326)
!1614 = !DILocation(line: 0, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !1202, line: 678, column: 13)
!1616 = distinct !DILexicalBlock(scope: !1294, file: !1202, line: 676, column: 9)
!1617 = !DILocation(line: 0, scope: !1616)
!1618 = !DILocation(line: 677, column: 20, scope: !1616)
!1619 = !DILocation(line: 677, column: 19, scope: !1616)
!1620 = !DILocation(line: 677, column: 11, scope: !1616)
!1621 = distinct !{!1621, !1622, !1623}
!1622 = !DILocation(line: 675, column: 7, scope: !1294)
!1623 = !DILocation(line: 698, column: 9, scope: !1294)
!1624 = !DILocation(line: 701, column: 11, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1294, file: !1202, line: 701, column: 11)
!1626 = !DILocation(line: 701, column: 11, scope: !1294)
!1627 = !DILocation(line: 0, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !1202, line: 706, column: 19)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !1202, line: 705, column: 13)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !1202, line: 702, column: 9)
!1631 = !DILocation(line: 0, scope: !1629)
!1632 = !DILocation(line: 706, column: 25, scope: !1628)
!1633 = !DILocation(line: 707, column: 19, scope: !1628)
!1634 = !DILocation(line: 707, column: 29, scope: !1628)
!1635 = !DILocation(line: 707, column: 61, scope: !1628)
!1636 = !DILocation(line: 707, column: 45, scope: !1628)
!1637 = !DILocation(line: 712, column: 25, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1628, file: !1202, line: 711, column: 17)
!1639 = !DILocation(line: 713, column: 28, scope: !1638)
!1640 = !DILocation(line: 713, column: 31, scope: !1638)
!1641 = !DILocation(line: 713, column: 25, scope: !1638)
!1642 = !DILocation(line: 0, scope: !1638)
!1643 = !DILocation(line: 715, column: 15, scope: !1629)
!1644 = !DILocation(line: 717, column: 18, scope: !1630)
!1645 = !DILocation(line: 716, column: 13, scope: !1629)
!1646 = distinct !{!1646, !1647, !1648}
!1647 = !DILocation(line: 704, column: 11, scope: !1630)
!1648 = !DILocation(line: 717, column: 30, scope: !1630)
!1649 = !DILocation(line: 721, column: 7, scope: !1294)
!1650 = !DILocation(line: 721, column: 15, scope: !1294)
!1651 = !DILocation(line: 0, scope: !1294)
!1652 = !DILocation(line: 725, column: 24, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1294, file: !1202, line: 722, column: 9)
!1654 = !DILocation(line: 564, column: 11, scope: !1294)
!1655 = !DILocation(line: 734, column: 21, scope: !1294)
!1656 = !DILocation(line: 726, column: 11, scope: !1653)
!1657 = !DILocation(line: 0, scope: !1653)
!1658 = !DILocation(line: 584, column: 11, scope: !1294)
!1659 = !DILocation(line: 735, column: 7, scope: !1294)
!1660 = !DILocation(line: 777, column: 24, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 777, column: 15)
!1662 = !DILocation(line: 777, column: 15, scope: !1335)
!1663 = !DILocation(line: 779, column: 11, scope: !1334)
!1664 = !DILocation(line: 779, column: 11, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1334, file: !1202, line: 779, column: 11)
!1666 = !DILocation(line: 779, column: 11, scope: !1341)
!1667 = !DILocation(line: 779, column: 11, scope: !1339)
!1668 = !DILocation(line: 779, column: 11, scope: !1345)
!1669 = !DILocation(line: 779, column: 11, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !1202, line: 779, column: 11)
!1671 = distinct !DILexicalBlock(scope: !1344, file: !1202, line: 779, column: 11)
!1672 = !DILocation(line: 779, column: 11, scope: !1347)
!1673 = !DILocation(line: 779, column: 11, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1347, file: !1202, line: 779, column: 11)
!1675 = !DILocation(line: 779, column: 11, scope: !1344)
!1676 = !DILocation(line: 779, column: 11, scope: !1671)
!1677 = distinct !{!1677, !1676, !1676}
!1678 = !DILocation(line: 779, column: 11, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1674, file: !1202, line: 779, column: 11)
!1680 = distinct !{!1680, !1673, !1673}
!1681 = !DILocation(line: 783, column: 24, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 783, column: 15)
!1683 = !DILocation(line: 783, column: 15, scope: !1335)
!1684 = !DILocation(line: 785, column: 15, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 785, column: 15)
!1686 = !DILocation(line: 785, column: 15, scope: !1335)
!1687 = !DILocation(line: 798, column: 24, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 798, column: 15)
!1689 = !DILocation(line: 798, column: 15, scope: !1335)
!1690 = !DILocation(line: 800, column: 15, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 800, column: 15)
!1692 = !DILocation(line: 800, column: 15, scope: !1335)
!1693 = !DILocation(line: 814, column: 15, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 814, column: 15)
!1695 = !DILocation(line: 814, column: 15, scope: !1335)
!1696 = !DILocation(line: 819, column: 24, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 819, column: 15)
!1698 = !DILocation(line: 819, column: 15, scope: !1335)
!1699 = !DILocation(line: 832, column: 24, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 832, column: 15)
!1701 = !DILocation(line: 832, column: 15, scope: !1335)
!1702 = !DILocation(line: 834, column: 15, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 834, column: 15)
!1704 = !DILocation(line: 834, column: 15, scope: !1335)
!1705 = !DILocation(line: 850, column: 24, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 850, column: 15)
!1707 = !DILocation(line: 850, column: 15, scope: !1335)
!1708 = !DILocation(line: 0, scope: !1335)
!1709 = !DILocation(line: 571, column: 21, scope: !1294)
!1710 = !DILocation(line: 867, column: 51, scope: !1349)
!1711 = !DILocation(line: 865, column: 26, scope: !1349)
!1712 = !DILocation(line: 865, column: 20, scope: !1349)
!1713 = !DILocation(line: 869, column: 13, scope: !1351)
!1714 = !DILocation(line: 869, column: 13, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1351, file: !1202, line: 869, column: 13)
!1716 = !DILocation(line: 869, column: 13, scope: !1357)
!1717 = !DILocation(line: 869, column: 13, scope: !1355)
!1718 = !DILocation(line: 869, column: 13, scope: !1361)
!1719 = !DILocation(line: 869, column: 13, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !1202, line: 869, column: 13)
!1721 = distinct !DILexicalBlock(scope: !1360, file: !1202, line: 869, column: 13)
!1722 = !DILocation(line: 869, column: 13, scope: !1363)
!1723 = !DILocation(line: 869, column: 13, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1363, file: !1202, line: 869, column: 13)
!1725 = !DILocation(line: 869, column: 13, scope: !1360)
!1726 = !DILocation(line: 869, column: 13, scope: !1721)
!1727 = distinct !{!1727, !1726, !1726}
!1728 = !DILocation(line: 869, column: 13, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1724, file: !1202, line: 869, column: 13)
!1730 = distinct !{!1730, !1723, !1723}
!1731 = !DILocation(line: 734, column: 19, scope: !1294)
!1732 = !DILocation(line: 709, column: 23, scope: !1628)
!1733 = !DILocation(line: 882, column: 13, scope: !1365)
!1734 = !DILocation(line: 882, column: 18, scope: !1365)
!1735 = !DILocation(line: 883, column: 19, scope: !1365)
!1736 = !DILocation(line: 884, column: 13, scope: !1365)
!1737 = !DILocation(line: 884, column: 18, scope: !1365)
!1738 = !DILocation(line: 896, column: 18, scope: !1365)
!1739 = !DILocation(line: 897, column: 18, scope: !1365)
!1740 = !DILocation(line: 898, column: 26, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1365, file: !1202, line: 898, column: 17)
!1742 = !DILocation(line: 898, column: 17, scope: !1365)
!1743 = !DILocation(line: 899, column: 22, scope: !1741)
!1744 = !DILocation(line: 899, column: 20, scope: !1741)
!1745 = !DILocation(line: 899, column: 15, scope: !1741)
!1746 = !DILocation(line: 0, scope: !1365)
!1747 = !DILocation(line: 900, column: 15, scope: !1365)
!1748 = !DILocation(line: 900, column: 18, scope: !1365)
!1749 = !DILocation(line: 901, column: 16, scope: !1365)
!1750 = !DILocation(line: 902, column: 19, scope: !1365)
!1751 = !DILocation(line: 885, column: 20, scope: !1365)
!1752 = !DILocation(line: 903, column: 21, scope: !1377)
!1753 = !DILocation(line: 903, column: 17, scope: !1365)
!1754 = !DILocation(line: 904, column: 15, scope: !1376)
!1755 = !DILocation(line: 904, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1376, file: !1202, line: 904, column: 15)
!1757 = !DILocation(line: 904, column: 15, scope: !1382)
!1758 = !DILocation(line: 904, column: 15, scope: !1381)
!1759 = !DILocation(line: 904, column: 15, scope: !1387)
!1760 = !DILocation(line: 904, column: 15, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !1202, line: 904, column: 15)
!1762 = distinct !DILexicalBlock(scope: !1386, file: !1202, line: 904, column: 15)
!1763 = !DILocation(line: 904, column: 15, scope: !1389)
!1764 = !DILocation(line: 904, column: 15, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1389, file: !1202, line: 904, column: 15)
!1766 = !DILocation(line: 904, column: 15, scope: !1386)
!1767 = !DILocation(line: 904, column: 15, scope: !1762)
!1768 = distinct !{!1768, !1767, !1767}
!1769 = !DILocation(line: 904, column: 15, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1765, file: !1202, line: 904, column: 15)
!1771 = distinct !{!1771, !1764, !1764}
!1772 = !DILocation(line: 904, column: 15, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1383, file: !1202, line: 904, column: 15)
!1774 = !DILocalVariable(name: "fp", arg: 1, scope: !1775, file: !1202, line: 297, type: !1205)
!1775 = distinct !DISubprogram(name: "fwrite_lowcase", scope: !1202, file: !1202, line: 297, type: !1776, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !1778)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !1205, !40, !166}
!1778 = !{!1774, !1779, !1780, !1781}
!1779 = !DILocalVariable(name: "src", arg: 2, scope: !1775, file: !1202, line: 297, type: !40)
!1780 = !DILocalVariable(name: "len", arg: 3, scope: !1775, file: !1202, line: 297, type: !166)
!1781 = !DILocalVariable(name: "__res", scope: !1782, file: !1202, line: 301, type: !57)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !1202, line: 301, column: 14)
!1783 = distinct !DILexicalBlock(scope: !1775, file: !1202, line: 300, column: 5)
!1784 = !DILocation(line: 297, column: 23, scope: !1775, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 904, column: 15, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1773, file: !1202, line: 904, column: 15)
!1787 = !DILocation(line: 297, column: 53, scope: !1775, inlinedAt: !1785)
!1788 = !DILocation(line: 299, column: 16, scope: !1775, inlinedAt: !1785)
!1789 = !DILocation(line: 299, column: 3, scope: !1775, inlinedAt: !1785)
!1790 = !DILocation(line: 297, column: 41, scope: !1775, inlinedAt: !1785)
!1791 = !DILocation(line: 301, column: 14, scope: !1792, inlinedAt: !1785)
!1792 = distinct !DILexicalBlock(scope: !1782, file: !1202, line: 301, column: 14)
!1793 = !DILocation(line: 299, column: 13, scope: !1775, inlinedAt: !1785)
!1794 = !DILocation(line: 301, column: 14, scope: !1782, inlinedAt: !1785)
!1795 = !DILocation(line: 301, column: 7, scope: !1783, inlinedAt: !1785)
!1796 = !DILocation(line: 302, column: 7, scope: !1783, inlinedAt: !1785)
!1797 = distinct !{!1797, !1798, !1799}
!1798 = !DILocation(line: 299, column: 3, scope: !1775)
!1799 = !DILocation(line: 303, column: 5, scope: !1775)
!1800 = !DILocation(line: 904, column: 15, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1786, file: !1202, line: 904, column: 15)
!1802 = !DILocation(line: 904, column: 15, scope: !1786)
!1803 = !DILocalVariable(name: "fp", arg: 1, scope: !1804, file: !1202, line: 307, type: !1205)
!1804 = distinct !DISubprogram(name: "fwrite_uppcase", scope: !1202, file: !1202, line: 307, type: !1776, isLocal: true, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !1805)
!1805 = !{!1803, !1806, !1807, !1808}
!1806 = !DILocalVariable(name: "src", arg: 2, scope: !1804, file: !1202, line: 307, type: !40)
!1807 = !DILocalVariable(name: "len", arg: 3, scope: !1804, file: !1202, line: 307, type: !166)
!1808 = !DILocalVariable(name: "__res", scope: !1809, file: !1202, line: 311, type: !57)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !1202, line: 311, column: 14)
!1810 = distinct !DILexicalBlock(scope: !1804, file: !1202, line: 310, column: 5)
!1811 = !DILocation(line: 307, column: 23, scope: !1804, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 904, column: 15, scope: !1801)
!1813 = !DILocation(line: 307, column: 41, scope: !1804, inlinedAt: !1812)
!1814 = !DILocation(line: 307, column: 53, scope: !1804, inlinedAt: !1812)
!1815 = !DILocation(line: 309, column: 16, scope: !1804, inlinedAt: !1812)
!1816 = !DILocation(line: 309, column: 3, scope: !1804, inlinedAt: !1812)
!1817 = !DILocation(line: 311, column: 14, scope: !1818, inlinedAt: !1812)
!1818 = distinct !DILexicalBlock(scope: !1809, file: !1202, line: 311, column: 14)
!1819 = !DILocation(line: 309, column: 13, scope: !1804, inlinedAt: !1812)
!1820 = !DILocation(line: 311, column: 14, scope: !1809, inlinedAt: !1812)
!1821 = !DILocation(line: 311, column: 7, scope: !1810, inlinedAt: !1812)
!1822 = !DILocation(line: 312, column: 7, scope: !1810, inlinedAt: !1812)
!1823 = distinct !{!1823, !1824, !1825}
!1824 = !DILocation(line: 309, column: 3, scope: !1804)
!1825 = !DILocation(line: 313, column: 5, scope: !1804)
!1826 = !DILocation(line: 904, column: 15, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1801, file: !1202, line: 904, column: 15)
!1828 = !DILocation(line: 905, column: 11, scope: !1335)
!1829 = !DILocation(line: 910, column: 24, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 910, column: 15)
!1831 = !DILocation(line: 910, column: 15, scope: !1335)
!1832 = !DILocation(line: 931, column: 31, scope: !1391)
!1833 = !{!1574, !795, i64 20}
!1834 = !DILocation(line: 931, column: 39, scope: !1391)
!1835 = !DILocation(line: 931, column: 45, scope: !1391)
!1836 = !DILocation(line: 931, column: 17, scope: !1391)
!1837 = !DILocation(line: 932, column: 36, scope: !1391)
!1838 = !DILocation(line: 932, column: 42, scope: !1391)
!1839 = !DILocation(line: 932, column: 51, scope: !1391)
!1840 = !DILocation(line: 932, column: 46, scope: !1391)
!1841 = !DILocation(line: 932, column: 21, scope: !1391)
!1842 = !DILocation(line: 933, column: 13, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1391, file: !1202, line: 933, column: 13)
!1844 = !DILocation(line: 937, column: 24, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 937, column: 15)
!1846 = !DILocation(line: 937, column: 15, scope: !1335)
!1847 = !DILocation(line: 950, column: 24, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 950, column: 15)
!1849 = !DILocation(line: 950, column: 15, scope: !1335)
!1850 = !DILocation(line: 956, column: 24, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 956, column: 15)
!1852 = !DILocation(line: 956, column: 15, scope: !1335)
!1853 = !DILocation(line: 959, column: 11, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 959, column: 11)
!1855 = !{!1574, !795, i64 12}
!1856 = !DILocation(line: 962, column: 24, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 962, column: 15)
!1858 = !DILocation(line: 962, column: 15, scope: !1335)
!1859 = !DILocation(line: 965, column: 11, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 965, column: 11)
!1861 = !DILocation(line: 0, scope: !1860)
!1862 = !DILocation(line: 976, column: 30, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 976, column: 15)
!1864 = !DILocation(line: 977, column: 13, scope: !1863)
!1865 = !DILocation(line: 0, scope: !1854)
!1866 = !DILocation(line: 981, column: 27, scope: !1335)
!1867 = !DILocation(line: 982, column: 11, scope: !1335)
!1868 = !DILocation(line: 0, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1529, file: !1202, line: 1373, column: 13)
!1870 = !DILocation(line: 994, column: 24, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 994, column: 15)
!1872 = !DILocation(line: 994, column: 39, scope: !1871)
!1873 = !DILocation(line: 994, column: 35, scope: !1871)
!1874 = !DILocation(line: 573, column: 15, scope: !1294)
!1875 = !DILocation(line: 1019, column: 30, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1018, column: 15)
!1877 = !DILocation(line: 1018, column: 15, scope: !1335)
!1878 = !DILocation(line: 1021, column: 11, scope: !1335)
!1879 = !DILocation(line: 0, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1022, column: 13)
!1881 = !DILocation(line: 1023, column: 33, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1880, file: !1202, line: 1023, column: 19)
!1883 = !DILocation(line: 1023, column: 19, scope: !1880)
!1884 = !DILocation(line: 1024, column: 18, scope: !1882)
!1885 = !DILocation(line: 1024, column: 25, scope: !1882)
!1886 = !DILocation(line: 1024, column: 17, scope: !1882)
!1887 = !DILocation(line: 1025, column: 29, scope: !1880)
!1888 = !DILocation(line: 1026, column: 40, scope: !1880)
!1889 = !DILocation(line: 1026, column: 25, scope: !1880)
!1890 = !DILocation(line: 1026, column: 16, scope: !1880)
!1891 = !DILocation(line: 1026, column: 23, scope: !1880)
!1892 = !DILocation(line: 1027, column: 30, scope: !1880)
!1893 = !DILocation(line: 1029, column: 33, scope: !1335)
!1894 = !DILocation(line: 1029, column: 55, scope: !1335)
!1895 = !DILocation(line: 1029, column: 38, scope: !1335)
!1896 = !DILocation(line: 1028, column: 13, scope: !1880)
!1897 = distinct !{!1897, !1878, !1898}
!1898 = !DILocation(line: 1029, column: 59, scope: !1335)
!1899 = !DILocation(line: 1032, column: 22, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1032, column: 15)
!1901 = !DILocation(line: 1032, column: 15, scope: !1335)
!1902 = !DILocation(line: 1035, column: 24, scope: !1335)
!1903 = !DILocation(line: 1036, column: 26, scope: !1335)
!1904 = !DILocation(line: 572, column: 14, scope: !1294)
!1905 = !DILocation(line: 1039, column: 19, scope: !1396)
!1906 = !DILocation(line: 1039, column: 15, scope: !1335)
!1907 = !DILocation(line: 1041, column: 19, scope: !1394)
!1908 = !DILocation(line: 1041, column: 19, scope: !1395)
!1909 = !DILocation(line: 1042, column: 17, scope: !1393)
!1910 = !DILocation(line: 1042, column: 17, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1393, file: !1202, line: 1042, column: 17)
!1912 = !DILocation(line: 1042, column: 17, scope: !1401)
!1913 = !DILocation(line: 1042, column: 17, scope: !1400)
!1914 = !DILocation(line: 1042, column: 17, scope: !1408)
!1915 = !DILocation(line: 1042, column: 17, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !1202, line: 1042, column: 17)
!1917 = distinct !DILexicalBlock(scope: !1408, file: !1202, line: 1042, column: 17)
!1918 = !DILocation(line: 1042, column: 17, scope: !1917)
!1919 = distinct !{!1919, !1918, !1918}
!1920 = !DILocation(line: 1042, column: 17, scope: !1402)
!1921 = !DILocation(line: 1046, column: 29, scope: !1410)
!1922 = !DILocation(line: 1047, column: 39, scope: !1410)
!1923 = !DILocation(line: 1047, column: 50, scope: !1410)
!1924 = !DILocation(line: 1046, column: 36, scope: !1410)
!1925 = !DILocation(line: 1047, column: 47, scope: !1410)
!1926 = !DILocation(line: 1046, column: 19, scope: !1410)
!1927 = !DILocation(line: 1049, column: 27, scope: !1417)
!1928 = !DILocation(line: 1049, column: 19, scope: !1410)
!1929 = !DILocation(line: 1051, column: 27, scope: !1415)
!1930 = !DILocation(line: 1051, column: 23, scope: !1416)
!1931 = !DILocation(line: 1053, column: 27, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1414, file: !1202, line: 1053, column: 27)
!1933 = !DILocation(line: 1053, column: 55, scope: !1932)
!1934 = !DILocation(line: 1053, column: 44, scope: !1932)
!1935 = !DILocation(line: 1053, column: 27, scope: !1414)
!1936 = !DILocation(line: 1057, column: 25, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !1202, line: 1057, column: 25)
!1938 = distinct !DILexicalBlock(scope: !1412, file: !1202, line: 1057, column: 25)
!1939 = !DILocation(line: 1056, column: 27, scope: !1414)
!1940 = !DILocation(line: 1057, column: 25, scope: !1412)
!1941 = !DILocation(line: 1057, column: 25, scope: !1938)
!1942 = distinct !{!1942, !1941, !1941}
!1943 = !DILocation(line: 1058, column: 25, scope: !1414)
!1944 = !DILocation(line: 1059, column: 37, scope: !1414)
!1945 = !DILocation(line: 1059, column: 55, scope: !1414)
!1946 = !DILocation(line: 1059, column: 31, scope: !1414)
!1947 = !DILocation(line: 1060, column: 27, scope: !1414)
!1948 = !DILocation(line: 1061, column: 25, scope: !1419)
!1949 = !DILocation(line: 1061, column: 25, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1419, file: !1202, line: 1061, column: 25)
!1951 = !DILocation(line: 1061, column: 25, scope: !1425)
!1952 = !DILocation(line: 1061, column: 25, scope: !1424)
!1953 = !DILocation(line: 1061, column: 25, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !1202, line: 1061, column: 25)
!1955 = distinct !DILexicalBlock(scope: !1429, file: !1202, line: 1061, column: 25)
!1956 = !DILocation(line: 1061, column: 25, scope: !1432)
!1957 = !DILocation(line: 1061, column: 25, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1432, file: !1202, line: 1061, column: 25)
!1959 = !DILocation(line: 1061, column: 25, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1958, file: !1202, line: 1061, column: 25)
!1961 = distinct !{!1961, !1957, !1957}
!1962 = !DILocation(line: 1061, column: 25, scope: !1426)
!1963 = !DILocation(line: 1065, column: 54, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1436, file: !1202, line: 1065, column: 27)
!1965 = !DILocation(line: 1065, column: 43, scope: !1964)
!1966 = !DILocation(line: 1065, column: 27, scope: !1436)
!1967 = !DILocation(line: 1068, column: 27, scope: !1436)
!1968 = !DILocation(line: 1069, column: 25, scope: !1434)
!1969 = !DILocation(line: 1069, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1434, file: !1202, line: 1069, column: 25)
!1971 = !DILocation(line: 1069, column: 25, scope: !1441)
!1972 = !DILocation(line: 1069, column: 25, scope: !1440)
!1973 = !DILocation(line: 1069, column: 25, scope: !1446)
!1974 = !DILocation(line: 1069, column: 25, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !1202, line: 1069, column: 25)
!1976 = distinct !DILexicalBlock(scope: !1445, file: !1202, line: 1069, column: 25)
!1977 = !DILocation(line: 1069, column: 25, scope: !1448)
!1978 = !DILocation(line: 1069, column: 25, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1448, file: !1202, line: 1069, column: 25)
!1980 = !DILocation(line: 1069, column: 25, scope: !1445)
!1981 = !DILocation(line: 1069, column: 25, scope: !1976)
!1982 = distinct !{!1982, !1981, !1981}
!1983 = !DILocation(line: 1069, column: 25, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1979, file: !1202, line: 1069, column: 25)
!1985 = distinct !{!1985, !1978, !1978}
!1986 = !DILocation(line: 1069, column: 25, scope: !1442)
!1987 = !DILocation(line: 0, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !1202, line: 1072, column: 25)
!1989 = distinct !DILexicalBlock(scope: !1450, file: !1202, line: 1072, column: 25)
!1990 = !DILocation(line: 1071, column: 27, scope: !1436)
!1991 = !DILocation(line: 1072, column: 25, scope: !1450)
!1992 = !DILocation(line: 1072, column: 25, scope: !1988)
!1993 = !DILocation(line: 1072, column: 25, scope: !1989)
!1994 = distinct !{!1994, !1993, !1993}
!1995 = !DILocation(line: 1073, column: 28, scope: !1436)
!1996 = !DILocation(line: 1073, column: 25, scope: !1436)
!1997 = !DILocation(line: 1084, column: 11, scope: !1469)
!1998 = !DILocation(line: 1079, column: 23, scope: !1455)
!1999 = !DILocation(line: 1080, column: 21, scope: !1453)
!2000 = !DILocation(line: 1080, column: 21, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1453, file: !1202, line: 1080, column: 21)
!2002 = !DILocation(line: 1080, column: 21, scope: !1460)
!2003 = !DILocation(line: 1080, column: 21, scope: !1459)
!2004 = !DILocation(line: 1080, column: 21, scope: !1465)
!2005 = !DILocation(line: 1080, column: 21, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !1202, line: 1080, column: 21)
!2007 = distinct !DILexicalBlock(scope: !1464, file: !1202, line: 1080, column: 21)
!2008 = !DILocation(line: 1080, column: 21, scope: !1467)
!2009 = !DILocation(line: 1080, column: 21, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1467, file: !1202, line: 1080, column: 21)
!2011 = !DILocation(line: 1080, column: 21, scope: !1464)
!2012 = !DILocation(line: 1080, column: 21, scope: !2007)
!2013 = distinct !{!2013, !2012, !2012}
!2014 = !DILocation(line: 1080, column: 21, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2010, file: !1202, line: 1080, column: 21)
!2016 = distinct !{!2016, !2009, !2009}
!2017 = !DILocation(line: 1080, column: 21, scope: !1461)
!2018 = !DILocation(line: 1084, column: 11, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1469, file: !1202, line: 1084, column: 11)
!2020 = !DILocation(line: 1084, column: 11, scope: !1474)
!2021 = !DILocation(line: 1084, column: 11, scope: !1473)
!2022 = !DILocation(line: 1084, column: 11, scope: !1479)
!2023 = !DILocation(line: 1084, column: 11, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !1202, line: 1084, column: 11)
!2025 = distinct !DILexicalBlock(scope: !1478, file: !1202, line: 1084, column: 11)
!2026 = !DILocation(line: 1084, column: 11, scope: !1481)
!2027 = !DILocation(line: 1084, column: 11, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1481, file: !1202, line: 1084, column: 11)
!2029 = !DILocation(line: 1084, column: 11, scope: !1478)
!2030 = !DILocation(line: 1084, column: 11, scope: !2025)
!2031 = distinct !{!2031, !2030, !2030}
!2032 = !DILocation(line: 1084, column: 11, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !1202, line: 1084, column: 11)
!2034 = distinct !{!2034, !2027, !2027}
!2035 = !DILocation(line: 1084, column: 11, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !1202, line: 1084, column: 11)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !1202, line: 1084, column: 11)
!2038 = distinct !DILexicalBlock(scope: !1475, file: !1202, line: 1084, column: 11)
!2039 = !DILocation(line: 1084, column: 11, scope: !2037)
!2040 = !DILocation(line: 307, column: 23, scope: !1804, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 1084, column: 11, scope: !2036)
!2042 = !DILocation(line: 307, column: 41, scope: !1804, inlinedAt: !2041)
!2043 = !DILocation(line: 309, column: 16, scope: !1804, inlinedAt: !2041)
!2044 = !DILocation(line: 309, column: 3, scope: !1804, inlinedAt: !2041)
!2045 = !DILocation(line: 311, column: 14, scope: !1818, inlinedAt: !2041)
!2046 = !DILocation(line: 307, column: 53, scope: !1804, inlinedAt: !2041)
!2047 = !DILocation(line: 309, column: 13, scope: !1804, inlinedAt: !2041)
!2048 = !DILocation(line: 311, column: 14, scope: !1809, inlinedAt: !2041)
!2049 = !DILocation(line: 311, column: 7, scope: !1810, inlinedAt: !2041)
!2050 = !DILocation(line: 312, column: 7, scope: !1810, inlinedAt: !2041)
!2051 = !DILocation(line: 1084, column: 11, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2036, file: !1202, line: 1084, column: 11)
!2053 = !DILocation(line: 1088, column: 24, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1088, column: 15)
!2055 = !DILocation(line: 1088, column: 15, scope: !1335)
!2056 = !DILocation(line: 1094, column: 24, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1094, column: 15)
!2058 = !DILocation(line: 1094, column: 15, scope: !1335)
!2059 = !DILocation(line: 1097, column: 11, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1097, column: 11)
!2061 = !DILocation(line: 1100, column: 24, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1100, column: 15)
!2063 = !DILocation(line: 1100, column: 15, scope: !1335)
!2064 = !DILocation(line: 1106, column: 24, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1106, column: 15)
!2066 = !DILocation(line: 1106, column: 15, scope: !1335)
!2067 = !DILocation(line: 1109, column: 11, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1109, column: 11)
!2069 = !DILocation(line: 1112, column: 24, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1112, column: 15)
!2071 = !DILocation(line: 1112, column: 15, scope: !1335)
!2072 = !DILocation(line: 1118, column: 24, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1118, column: 15)
!2074 = !DILocation(line: 1118, column: 15, scope: !1335)
!2075 = !DILocation(line: 1121, column: 11, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1121, column: 11)
!2077 = !{!1574, !795, i64 28}
!2078 = !DILocation(line: 1124, column: 24, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1124, column: 15)
!2080 = !DILocation(line: 1124, column: 15, scope: !1335)
!2081 = !DILocation(line: 1127, column: 11, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1127, column: 11)
!2083 = !{!1574, !795, i64 4}
!2084 = !DILocation(line: 1130, column: 24, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1130, column: 15)
!2086 = !DILocation(line: 1130, column: 15, scope: !1335)
!2087 = !DILocation(line: 1133, column: 11, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1133, column: 11)
!2089 = !{!1574, !795, i64 16}
!2090 = !DILocation(line: 1137, column: 24, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1137, column: 15)
!2092 = !DILocation(line: 1137, column: 15, scope: !1335)
!2093 = !DILocation(line: 1141, column: 21, scope: !1484)
!2094 = !DILocation(line: 1141, column: 15, scope: !1335)
!2095 = !DILocation(line: 1146, column: 19, scope: !1483)
!2096 = !DILocation(line: 1147, column: 33, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !1202, line: 1147, column: 15)
!2098 = distinct !DILexicalBlock(scope: !1483, file: !1202, line: 1147, column: 15)
!2099 = !DILocation(line: 1147, column: 15, scope: !2098)
!2100 = !DILocation(line: 1148, column: 30, scope: !2097)
!2101 = !DILocation(line: 1147, column: 39, scope: !2097)
!2102 = distinct !{!2102, !2099, !2103}
!2103 = !DILocation(line: 1148, column: 33, scope: !2098)
!2104 = !DILocation(line: 1155, column: 11, scope: !1486)
!2105 = !DILocation(line: 1155, column: 11, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1486, file: !1202, line: 1155, column: 11)
!2107 = !DILocation(line: 1155, column: 11, scope: !1492)
!2108 = !DILocation(line: 1155, column: 11, scope: !1490)
!2109 = !DILocation(line: 1155, column: 11, scope: !1496)
!2110 = !DILocation(line: 1155, column: 11, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !1202, line: 1155, column: 11)
!2112 = distinct !DILexicalBlock(scope: !1495, file: !1202, line: 1155, column: 11)
!2113 = !DILocation(line: 1155, column: 11, scope: !1498)
!2114 = !DILocation(line: 1155, column: 11, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1498, file: !1202, line: 1155, column: 11)
!2116 = !DILocation(line: 1155, column: 11, scope: !1495)
!2117 = !DILocation(line: 1155, column: 11, scope: !2112)
!2118 = distinct !{!2118, !2117, !2117}
!2119 = !DILocation(line: 1155, column: 11, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2115, file: !1202, line: 1155, column: 11)
!2121 = distinct !{!2121, !2114, !2114}
!2122 = !DILocation(line: 1163, column: 11, scope: !1335)
!2123 = !DILocation(line: 1165, column: 15, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1165, column: 15)
!2125 = !DILocation(line: 1165, column: 15, scope: !1335)
!2126 = !DILocation(line: 1178, column: 11, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1178, column: 11)
!2128 = !DILocation(line: 1197, column: 24, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1197, column: 15)
!2130 = !DILocation(line: 1197, column: 15, scope: !1335)
!2131 = !DILocation(line: 1200, column: 11, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1200, column: 11)
!2133 = !{!1574, !795, i64 0}
!2134 = !DILocation(line: 1204, column: 13, scope: !1500)
!2135 = !DILocation(line: 1207, column: 19, scope: !1500)
!2136 = !{i64 0, i64 4, !794, i64 4, i64 4, !794, i64 8, i64 4, !794, i64 12, i64 4, !794, i64 16, i64 4, !794, i64 20, i64 4, !794, i64 24, i64 4, !794, i64 28, i64 4, !794, i64 32, i64 4, !794, i64 40, i64 8, !967, i64 48, i64 8, !726}
!2137 = !DILocation(line: 1204, column: 23, scope: !1500)
!2138 = !DILocation(line: 1208, column: 17, scope: !1500)
!2139 = !DILocation(line: 1205, column: 20, scope: !1500)
!2140 = !DILocation(line: 1214, column: 33, scope: !1500)
!2141 = !DILocation(line: 1214, column: 29, scope: !1500)
!2142 = !DILocation(line: 1216, column: 13, scope: !1500)
!2143 = !DILocation(line: 0, scope: !1503)
!2144 = !DILocation(line: 1218, column: 27, scope: !1503)
!2145 = !DILocation(line: 1218, column: 25, scope: !1503)
!2146 = !DILocation(line: 1218, column: 21, scope: !1503)
!2147 = !DILocation(line: 1219, column: 19, scope: !1503)
!2148 = !DILocation(line: 1220, column: 46, scope: !1503)
!2149 = !DILocation(line: 1220, column: 28, scope: !1503)
!2150 = !DILocation(line: 1220, column: 27, scope: !1503)
!2151 = !DILocation(line: 1220, column: 18, scope: !1503)
!2152 = !DILocation(line: 1220, column: 25, scope: !1503)
!2153 = !DILocation(line: 1222, column: 22, scope: !1500)
!2154 = !DILocation(line: 1221, column: 15, scope: !1503)
!2155 = distinct !{!2155, !2142, !2156}
!2156 = !DILocation(line: 1222, column: 26, scope: !1500)
!2157 = !DILocation(line: 569, column: 12, scope: !1294)
!2158 = !DILocation(line: 1227, column: 11, scope: !1335)
!2159 = !DILocation(line: 1230, column: 24, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1230, column: 15)
!2161 = !DILocation(line: 1230, column: 15, scope: !1335)
!2162 = !DILocation(line: 1244, column: 11, scope: !1335)
!2163 = !DILocation(line: 1247, column: 11, scope: !1505)
!2164 = !DILocation(line: 1247, column: 11, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !1505, file: !1202, line: 1247, column: 11)
!2166 = !DILocation(line: 1247, column: 11, scope: !1511)
!2167 = !DILocation(line: 1247, column: 11, scope: !1509)
!2168 = !DILocation(line: 1247, column: 11, scope: !1515)
!2169 = !DILocation(line: 1247, column: 11, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !1202, line: 1247, column: 11)
!2171 = distinct !DILexicalBlock(scope: !1514, file: !1202, line: 1247, column: 11)
!2172 = !DILocation(line: 1247, column: 11, scope: !1517)
!2173 = !DILocation(line: 1247, column: 11, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !1517, file: !1202, line: 1247, column: 11)
!2175 = !DILocation(line: 1247, column: 11, scope: !1514)
!2176 = !DILocation(line: 1247, column: 11, scope: !2171)
!2177 = distinct !{!2177, !2176, !2176}
!2178 = !DILocation(line: 1247, column: 11, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2174, file: !1202, line: 1247, column: 11)
!2180 = distinct !{!2180, !2173, !2173}
!2181 = !DILocation(line: 1251, column: 11, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1251, column: 11)
!2183 = !{!1574, !795, i64 24}
!2184 = !DILocation(line: 1254, column: 24, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1254, column: 15)
!2186 = !DILocation(line: 1254, column: 15, scope: !1335)
!2187 = !DILocation(line: 1257, column: 11, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1257, column: 11)
!2189 = !DILocation(line: 1262, column: 24, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1262, column: 15)
!2191 = !DILocation(line: 1262, column: 15, scope: !1335)
!2192 = !DILocation(line: 1269, column: 29, scope: !1519)
!2193 = !DILocation(line: 1270, column: 40, scope: !1519)
!2194 = !DILocation(line: 1270, column: 28, scope: !1519)
!2195 = !DILocation(line: 1270, column: 25, scope: !1519)
!2196 = !DILocation(line: 1269, column: 17, scope: !1519)
!2197 = !DILocation(line: 1273, column: 17, scope: !1519)
!2198 = !DILocation(line: 1274, column: 43, scope: !1519)
!2199 = !DILocation(line: 1274, column: 56, scope: !1519)
!2200 = !DILocalVariable(name: "yday", arg: 1, scope: !2201, file: !1202, line: 381, type: !57)
!2201 = distinct !DISubprogram(name: "iso_week_days", scope: !1202, file: !1202, line: 381, type: !2202, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !2204)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!57, !57, !57}
!2204 = !{!2200, !2205, !2206}
!2205 = !DILocalVariable(name: "wday", arg: 2, scope: !2201, file: !1202, line: 381, type: !57)
!2206 = !DILocalVariable(name: "big_enough_multiple_of_7", scope: !2201, file: !1202, line: 384, type: !57)
!2207 = !DILocation(line: 381, column: 20, scope: !2201, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 1274, column: 24, scope: !1519)
!2209 = !DILocation(line: 381, column: 30, scope: !2201, inlinedAt: !2208)
!2210 = !DILocation(line: 384, column: 7, scope: !2201, inlinedAt: !2208)
!2211 = !DILocation(line: 386, column: 19, scope: !2201, inlinedAt: !2208)
!2212 = !DILocation(line: 386, column: 43, scope: !2201, inlinedAt: !2208)
!2213 = !DILocation(line: 386, column: 71, scope: !2201, inlinedAt: !2208)
!2214 = !DILocation(line: 386, column: 11, scope: !2201, inlinedAt: !2208)
!2215 = !DILocation(line: 387, column: 28, scope: !2201, inlinedAt: !2208)
!2216 = !DILocation(line: 1274, column: 17, scope: !1519)
!2217 = !DILocation(line: 1276, column: 22, scope: !1524)
!2218 = !DILocation(line: 1276, column: 17, scope: !1519)
!2219 = !DILocation(line: 1280, column: 60, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !1524, file: !1202, line: 1277, column: 15)
!2221 = !DILocation(line: 1280, column: 51, scope: !2220)
!2222 = !DILocation(line: 381, column: 20, scope: !2201, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 1280, column: 24, scope: !2220)
!2224 = !DILocation(line: 381, column: 30, scope: !2201, inlinedAt: !2223)
!2225 = !DILocation(line: 384, column: 7, scope: !2201, inlinedAt: !2223)
!2226 = !DILocation(line: 386, column: 19, scope: !2201, inlinedAt: !2223)
!2227 = !DILocation(line: 386, column: 43, scope: !2201, inlinedAt: !2223)
!2228 = !DILocation(line: 386, column: 71, scope: !2201, inlinedAt: !2223)
!2229 = !DILocation(line: 386, column: 11, scope: !2201, inlinedAt: !2223)
!2230 = !DILocation(line: 387, column: 28, scope: !2201, inlinedAt: !2223)
!2231 = !DILocation(line: 1282, column: 15, scope: !2220)
!2232 = !DILocation(line: 1285, column: 61, scope: !1523)
!2233 = !DILocation(line: 1285, column: 52, scope: !1523)
!2234 = !DILocation(line: 381, column: 20, scope: !2201, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 1285, column: 25, scope: !1523)
!2236 = !DILocation(line: 381, column: 30, scope: !2201, inlinedAt: !2235)
!2237 = !DILocation(line: 384, column: 7, scope: !2201, inlinedAt: !2235)
!2238 = !DILocation(line: 386, column: 19, scope: !2201, inlinedAt: !2235)
!2239 = !DILocation(line: 386, column: 43, scope: !2201, inlinedAt: !2235)
!2240 = !DILocation(line: 386, column: 71, scope: !2201, inlinedAt: !2235)
!2241 = !DILocation(line: 386, column: 11, scope: !2201, inlinedAt: !2235)
!2242 = !DILocation(line: 387, column: 28, scope: !2201, inlinedAt: !2235)
!2243 = !DILocation(line: 1285, column: 21, scope: !1523)
!2244 = !DILocation(line: 1287, column: 23, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !1523, file: !1202, line: 1287, column: 21)
!2246 = !DILocation(line: 1287, column: 21, scope: !1523)
!2247 = !DILocation(line: 0, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2245, file: !1202, line: 1288, column: 19)
!2249 = !DILocation(line: 1295, column: 13, scope: !1519)
!2250 = !DILocation(line: 1299, column: 41, scope: !1526)
!2251 = !DILocation(line: 1299, column: 47, scope: !1526)
!2252 = !DILocation(line: 1299, column: 62, scope: !1526)
!2253 = !DILocation(line: 1299, column: 23, scope: !1526)
!2254 = !DILocation(line: 1300, column: 19, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !1526, file: !1202, line: 1300, column: 19)
!2256 = !DILocation(line: 1313, column: 17, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !1527, file: !1202, line: 1313, column: 17)
!2258 = !DILocation(line: 1308, column: 17, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !1527, file: !1202, line: 1308, column: 17)
!2260 = !DILocation(line: 1318, column: 24, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1318, column: 15)
!2262 = !DILocation(line: 1318, column: 15, scope: !1335)
!2263 = !DILocation(line: 1321, column: 11, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1321, column: 11)
!2265 = !DILocation(line: 1324, column: 24, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1324, column: 15)
!2267 = !DILocation(line: 1324, column: 15, scope: !1335)
!2268 = !DILocation(line: 1327, column: 11, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1327, column: 11)
!2270 = !DILocation(line: 1330, column: 15, scope: !1335)
!2271 = !DILocation(line: 1350, column: 11, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1350, column: 11)
!2273 = !DILocation(line: 1354, column: 24, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1354, column: 15)
!2275 = !DILocation(line: 1354, column: 15, scope: !1335)
!2276 = !DILocation(line: 1370, column: 26, scope: !1529)
!2277 = !DILocation(line: 1370, column: 34, scope: !1529)
!2278 = !DILocation(line: 1370, column: 17, scope: !1529)
!2279 = !DILocation(line: 1371, column: 20, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !1529, file: !1202, line: 1371, column: 17)
!2281 = !DILocation(line: 1371, column: 17, scope: !1529)
!2282 = !DILocation(line: 1372, column: 32, scope: !2280)
!2283 = !DILocation(line: 1372, column: 51, scope: !2280)
!2284 = !DILocation(line: 1372, column: 60, scope: !2280)
!2285 = !DILocation(line: 1372, column: 20, scope: !2280)
!2286 = !DILocation(line: 1372, column: 15, scope: !2280)
!2287 = !DILocation(line: 1377, column: 15, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1377, column: 15)
!2289 = !DILocation(line: 1393, column: 11, scope: !1531)
!2290 = !DILocation(line: 1393, column: 11, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !1531, file: !1202, line: 1393, column: 11)
!2292 = !DILocation(line: 1393, column: 11, scope: !1537)
!2293 = !DILocation(line: 1393, column: 11, scope: !1535)
!2294 = !DILocation(line: 1393, column: 11, scope: !1541)
!2295 = !DILocation(line: 1393, column: 11, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !1202, line: 1393, column: 11)
!2297 = distinct !DILexicalBlock(scope: !1540, file: !1202, line: 1393, column: 11)
!2298 = !DILocation(line: 1393, column: 11, scope: !1543)
!2299 = !DILocation(line: 1393, column: 11, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !1543, file: !1202, line: 1393, column: 11)
!2301 = !DILocation(line: 1393, column: 11, scope: !1540)
!2302 = !DILocation(line: 1393, column: 11, scope: !2297)
!2303 = distinct !{!2303, !2302, !2302}
!2304 = !DILocation(line: 1393, column: 11, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !1202, line: 1393, column: 11)
!2306 = distinct !{!2306, !2299, !2299}
!2307 = !DILocation(line: 1393, column: 11, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !1537, file: !1202, line: 1393, column: 11)
!2309 = !DILocation(line: 297, column: 23, scope: !1775, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 1393, column: 11, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2308, file: !1202, line: 1393, column: 11)
!2312 = !DILocation(line: 297, column: 41, scope: !1775, inlinedAt: !2310)
!2313 = !DILocation(line: 297, column: 53, scope: !1775, inlinedAt: !2310)
!2314 = !DILocation(line: 299, column: 16, scope: !1775, inlinedAt: !2310)
!2315 = !DILocation(line: 299, column: 3, scope: !1775, inlinedAt: !2310)
!2316 = !DILocation(line: 301, column: 14, scope: !1792, inlinedAt: !2310)
!2317 = !DILocation(line: 299, column: 13, scope: !1775, inlinedAt: !2310)
!2318 = !DILocation(line: 301, column: 14, scope: !1782, inlinedAt: !2310)
!2319 = !DILocation(line: 301, column: 7, scope: !1783, inlinedAt: !2310)
!2320 = !DILocation(line: 302, column: 7, scope: !1783, inlinedAt: !2310)
!2321 = !DILocation(line: 1393, column: 11, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2311, file: !1202, line: 1393, column: 11)
!2323 = !DILocation(line: 1393, column: 11, scope: !2311)
!2324 = !DILocation(line: 307, column: 23, scope: !1804, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 1393, column: 11, scope: !2322)
!2326 = !DILocation(line: 307, column: 41, scope: !1804, inlinedAt: !2325)
!2327 = !DILocation(line: 307, column: 53, scope: !1804, inlinedAt: !2325)
!2328 = !DILocation(line: 309, column: 16, scope: !1804, inlinedAt: !2325)
!2329 = !DILocation(line: 309, column: 3, scope: !1804, inlinedAt: !2325)
!2330 = !DILocation(line: 311, column: 14, scope: !1818, inlinedAt: !2325)
!2331 = !DILocation(line: 309, column: 13, scope: !1804, inlinedAt: !2325)
!2332 = !DILocation(line: 311, column: 14, scope: !1809, inlinedAt: !2325)
!2333 = !DILocation(line: 311, column: 7, scope: !1810, inlinedAt: !2325)
!2334 = !DILocation(line: 312, column: 7, scope: !1810, inlinedAt: !2325)
!2335 = !DILocation(line: 1393, column: 11, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2322, file: !1202, line: 1393, column: 11)
!2337 = !DILocation(line: 0, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !1202, line: 1400, column: 11)
!2339 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1400, column: 11)
!2340 = !DILocation(line: 582, column: 14, scope: !1294)
!2341 = !DILocation(line: 1400, column: 28, scope: !2338)
!2342 = !DILocation(line: 1400, column: 11, scope: !2339)
!2343 = !DILocation(line: 1400, column: 56, scope: !2338)
!2344 = !DILocation(line: 1400, column: 11, scope: !2338)
!2345 = distinct !{!2345, !2342, !2346}
!2346 = !DILocation(line: 1401, column: 13, scope: !2339)
!2347 = !DILocation(line: 1411, column: 19, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !1335, file: !1202, line: 1411, column: 15)
!2349 = !DILocation(line: 0, scope: !2339)
!2350 = !{!1574, !795, i64 32}
!2351 = !DILocation(line: 1411, column: 28, scope: !2348)
!2352 = !DILocation(line: 1411, column: 15, scope: !1335)
!2353 = !DILocation(line: 1420, column: 24, scope: !1545)
!2354 = !{!1574, !968, i64 40}
!2355 = !DILocation(line: 1420, column: 20, scope: !1545)
!2356 = !DILocation(line: 1415, column: 17, scope: !1545)
!2357 = !DILocation(line: 1467, column: 36, scope: !1545)
!2358 = !DILocation(line: 1467, column: 40, scope: !1545)
!2359 = !DILocation(line: 1467, column: 49, scope: !1545)
!2360 = !DILocation(line: 1467, column: 54, scope: !1545)
!2361 = !DILocation(line: 1467, column: 57, scope: !1545)
!2362 = !DILocation(line: 1467, column: 63, scope: !1545)
!2363 = !DILocation(line: 1467, column: 29, scope: !1545)
!2364 = !DILocation(line: 1468, column: 30, scope: !1545)
!2365 = !DILocation(line: 1468, column: 35, scope: !1545)
!2366 = !DILocation(line: 1416, column: 17, scope: !1545)
!2367 = !DILocation(line: 1469, column: 34, scope: !1545)
!2368 = !DILocation(line: 1417, column: 17, scope: !1545)
!2369 = !DILocation(line: 1470, column: 29, scope: !1545)
!2370 = !DILocation(line: 1418, column: 17, scope: !1545)
!2371 = !DILocation(line: 1472, column: 13, scope: !1545)
!2372 = !DILocation(line: 1475, column: 17, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !1202, line: 1475, column: 17)
!2374 = distinct !DILexicalBlock(scope: !1545, file: !1202, line: 1473, column: 15)
!2375 = !DILocation(line: 1478, column: 17, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2374, file: !1202, line: 1478, column: 17)
!2377 = !DILocation(line: 1481, column: 17, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2374, file: !1202, line: 1481, column: 17)
!2379 = !DILocation(line: 1485, column: 30, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2374, file: !1202, line: 1485, column: 21)
!2381 = !DILocation(line: 1485, column: 21, scope: !2374)
!2382 = !DILocation(line: 1487, column: 30, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2374, file: !1202, line: 1487, column: 21)
!2384 = !DILocation(line: 1487, column: 21, scope: !2374)
!2385 = !DILocation(line: 1497, column: 13, scope: !1335)
!2386 = !DILocation(line: 1498, column: 13, scope: !1335)
!2387 = !DILocation(line: 1505, column: 17, scope: !1550)
!2388 = !DILocation(line: 1506, column: 18, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !1550, file: !1202, line: 1506, column: 13)
!2390 = !DILocation(line: 0, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2389, file: !1202, line: 1506, column: 13)
!2392 = !DILocation(line: 1506, column: 32, scope: !2391)
!2393 = !DILocation(line: 1506, column: 28, scope: !2391)
!2394 = !DILocation(line: 1506, column: 40, scope: !2391)
!2395 = !DILocation(line: 1506, column: 56, scope: !2391)
!2396 = !DILocation(line: 1506, column: 13, scope: !2389)
!2397 = distinct !{!2397, !2396, !2398}
!2398 = !DILocation(line: 1507, column: 15, scope: !2389)
!2399 = !DILocation(line: 1508, column: 13, scope: !1552)
!2400 = !DILocation(line: 1508, column: 13, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !1552, file: !1202, line: 1508, column: 13)
!2402 = !DILocation(line: 1508, column: 13, scope: !1557)
!2403 = !DILocation(line: 1508, column: 13, scope: !1556)
!2404 = !DILocation(line: 1508, column: 13, scope: !1562)
!2405 = !DILocation(line: 1508, column: 13, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !1202, line: 1508, column: 13)
!2407 = distinct !DILexicalBlock(scope: !1561, file: !1202, line: 1508, column: 13)
!2408 = !DILocation(line: 1508, column: 13, scope: !1564)
!2409 = !DILocation(line: 1508, column: 13, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !1564, file: !1202, line: 1508, column: 13)
!2411 = !DILocation(line: 1508, column: 13, scope: !1561)
!2412 = !DILocation(line: 1508, column: 13, scope: !2407)
!2413 = distinct !{!2413, !2412, !2412}
!2414 = !DILocation(line: 1508, column: 13, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2410, file: !1202, line: 1508, column: 13)
!2416 = distinct !{!2416, !2409, !2409}
!2417 = !DILocation(line: 1508, column: 13, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !1202, line: 1508, column: 13)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !1202, line: 1508, column: 13)
!2420 = distinct !DILexicalBlock(scope: !1558, file: !1202, line: 1508, column: 13)
!2421 = !DILocation(line: 1508, column: 13, scope: !2419)
!2422 = !DILocation(line: 307, column: 23, scope: !1804, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 1508, column: 13, scope: !2418)
!2424 = !DILocation(line: 307, column: 41, scope: !1804, inlinedAt: !2423)
!2425 = !DILocation(line: 307, column: 53, scope: !1804, inlinedAt: !2423)
!2426 = !DILocation(line: 311, column: 14, scope: !1818, inlinedAt: !2423)
!2427 = !DILocation(line: 309, column: 3, scope: !1804, inlinedAt: !2423)
!2428 = !DILocation(line: 309, column: 13, scope: !1804, inlinedAt: !2423)
!2429 = !DILocation(line: 311, column: 14, scope: !1809, inlinedAt: !2423)
!2430 = !DILocation(line: 311, column: 7, scope: !1810, inlinedAt: !2423)
!2431 = !DILocation(line: 312, column: 7, scope: !1810, inlinedAt: !2423)
!2432 = !DILocation(line: 309, column: 16, scope: !1804, inlinedAt: !2423)
!2433 = !DILocation(line: 1508, column: 13, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2418, file: !1202, line: 1508, column: 13)
!2435 = !DILocation(line: 1512, column: 5, scope: !1295)
!2436 = !DILocation(line: 561, column: 32, scope: !1295)
!2437 = distinct !{!2437, !1598, !2438}
!2438 = !DILocation(line: 1512, column: 5, scope: !1296)
!2439 = !DILocation(line: 0, scope: !1275)
!2440 = !DILocation(line: 1520, column: 1, scope: !1275)
!2441 = distinct !DISubprogram(name: "parse_long_options", scope: !122, file: !122, line: 44, type: !2442, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !119, retainedNodes: !2445)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !57, !774, !40, !40, !40, !2444, null}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!2445 = !{!2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!2446 = !DILocalVariable(name: "argc", arg: 1, scope: !2441, file: !122, line: 44, type: !57)
!2447 = !DILocalVariable(name: "argv", arg: 2, scope: !2441, file: !122, line: 45, type: !774)
!2448 = !DILocalVariable(name: "command_name", arg: 3, scope: !2441, file: !122, line: 46, type: !40)
!2449 = !DILocalVariable(name: "package", arg: 4, scope: !2441, file: !122, line: 47, type: !40)
!2450 = !DILocalVariable(name: "version", arg: 5, scope: !2441, file: !122, line: 48, type: !40)
!2451 = !DILocalVariable(name: "usage_func", arg: 6, scope: !2441, file: !122, line: 49, type: !2444)
!2452 = !DILocalVariable(name: "c", scope: !2441, file: !122, line: 52, type: !57)
!2453 = !DILocalVariable(name: "saved_opterr", scope: !2441, file: !122, line: 53, type: !57)
!2454 = !DILocalVariable(name: "authors", scope: !2455, file: !122, line: 71, type: !2459)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !122, line: 70, column: 11)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !122, line: 64, column: 9)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !122, line: 62, column: 5)
!2458 = distinct !DILexicalBlock(scope: !2441, file: !122, line: 60, column: 7)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2460, line: 52, baseType: !2461)
!2460 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2462, line: 48, baseType: !2463)
!2462 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !120, line: 71, baseType: !2464)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2465, size: 192, elements: !61)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !120, line: 71, size: 192, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2465, file: !120, line: 71, baseType: !7, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2465, file: !120, line: 71, baseType: !7, size: 32, offset: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2465, file: !120, line: 71, baseType: !43, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2465, file: !120, line: 71, baseType: !43, size: 64, offset: 128)
!2471 = !DILocation(line: 44, column: 25, scope: !2441)
!2472 = !DILocation(line: 45, column: 28, scope: !2441)
!2473 = !DILocation(line: 46, column: 33, scope: !2441)
!2474 = !DILocation(line: 47, column: 33, scope: !2441)
!2475 = !DILocation(line: 48, column: 33, scope: !2441)
!2476 = !DILocation(line: 49, column: 28, scope: !2441)
!2477 = !DILocation(line: 55, column: 18, scope: !2441)
!2478 = !DILocation(line: 53, column: 7, scope: !2441)
!2479 = !DILocation(line: 58, column: 10, scope: !2441)
!2480 = !DILocation(line: 60, column: 12, scope: !2458)
!2481 = !DILocation(line: 61, column: 7, scope: !2458)
!2482 = !DILocation(line: 61, column: 15, scope: !2458)
!2483 = !DILocation(line: 52, column: 7, scope: !2441)
!2484 = !DILocation(line: 60, column: 7, scope: !2441)
!2485 = !DILocation(line: 66, column: 11, scope: !2456)
!2486 = !DILocation(line: 67, column: 11, scope: !2456)
!2487 = !DILocation(line: 71, column: 13, scope: !2455)
!2488 = !DILocation(line: 71, column: 21, scope: !2455)
!2489 = !DILocation(line: 72, column: 13, scope: !2455)
!2490 = !DILocation(line: 73, column: 29, scope: !2455)
!2491 = !DILocation(line: 73, column: 13, scope: !2455)
!2492 = !DILocation(line: 74, column: 13, scope: !2455)
!2493 = !DILocation(line: 84, column: 10, scope: !2441)
!2494 = !DILocation(line: 88, column: 10, scope: !2441)
!2495 = !DILocation(line: 89, column: 1, scope: !2441)
!2496 = distinct !DISubprogram(name: "set_program_name", scope: !139, file: !139, line: 39, type: !701, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !135, retainedNodes: !2497)
!2497 = !{!2498, !2499, !2500}
!2498 = !DILocalVariable(name: "argv0", arg: 1, scope: !2496, file: !139, line: 39, type: !40)
!2499 = !DILocalVariable(name: "slash", scope: !2496, file: !139, line: 46, type: !40)
!2500 = !DILocalVariable(name: "base", scope: !2496, file: !139, line: 47, type: !40)
!2501 = !DILocation(line: 39, column: 31, scope: !2496)
!2502 = !DILocation(line: 51, column: 13, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2496, file: !139, line: 51, column: 7)
!2504 = !DILocation(line: 51, column: 7, scope: !2496)
!2505 = !DILocation(line: 55, column: 14, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2503, file: !139, line: 52, column: 5)
!2507 = !DILocation(line: 54, column: 7, scope: !2506)
!2508 = !DILocation(line: 56, column: 7, scope: !2506)
!2509 = !DILocation(line: 59, column: 11, scope: !2496)
!2510 = !DILocation(line: 46, column: 15, scope: !2496)
!2511 = !DILocation(line: 60, column: 17, scope: !2496)
!2512 = !DILocation(line: 60, column: 33, scope: !2496)
!2513 = !DILocation(line: 60, column: 11, scope: !2496)
!2514 = !DILocation(line: 47, column: 15, scope: !2496)
!2515 = !DILocation(line: 61, column: 12, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2496, file: !139, line: 61, column: 7)
!2517 = !DILocation(line: 61, column: 20, scope: !2516)
!2518 = !DILocation(line: 61, column: 25, scope: !2516)
!2519 = !DILocation(line: 61, column: 42, scope: !2516)
!2520 = !DILocation(line: 61, column: 28, scope: !2516)
!2521 = !DILocation(line: 61, column: 61, scope: !2516)
!2522 = !DILocation(line: 61, column: 7, scope: !2496)
!2523 = !DILocation(line: 64, column: 11, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !139, line: 64, column: 11)
!2525 = distinct !DILexicalBlock(scope: !2516, file: !139, line: 62, column: 5)
!2526 = !DILocation(line: 64, column: 36, scope: !2524)
!2527 = !DILocation(line: 64, column: 11, scope: !2525)
!2528 = !DILocation(line: 66, column: 24, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2524, file: !139, line: 65, column: 9)
!2530 = !DILocation(line: 70, column: 41, scope: !2529)
!2531 = !DILocation(line: 72, column: 9, scope: !2529)
!2532 = !DILocation(line: 84, column: 16, scope: !2496)
!2533 = !DILocation(line: 90, column: 27, scope: !2496)
!2534 = !DILocation(line: 92, column: 1, scope: !2496)
!2535 = distinct !DISubprogram(name: "clone_quoting_options", scope: !171, file: !171, line: 122, type: !2536, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2539)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!2538, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!2539 = !{!2540, !2541, !2542}
!2540 = !DILocalVariable(name: "o", arg: 1, scope: !2535, file: !171, line: 122, type: !2538)
!2541 = !DILocalVariable(name: "e", scope: !2535, file: !171, line: 124, type: !57)
!2542 = !DILocalVariable(name: "p", scope: !2535, file: !171, line: 125, type: !2538)
!2543 = !DILocation(line: 122, column: 48, scope: !2535)
!2544 = !DILocation(line: 124, column: 11, scope: !2535)
!2545 = !DILocation(line: 124, column: 7, scope: !2535)
!2546 = !DILocation(line: 125, column: 40, scope: !2535)
!2547 = !DILocation(line: 125, column: 31, scope: !2535)
!2548 = !DILocation(line: 125, column: 27, scope: !2535)
!2549 = !DILocation(line: 127, column: 9, scope: !2535)
!2550 = !DILocation(line: 128, column: 3, scope: !2535)
!2551 = distinct !DISubprogram(name: "get_quoting_style", scope: !171, file: !171, line: 133, type: !2552, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2556)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!11, !2554}
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!2556 = !{!2557}
!2557 = !DILocalVariable(name: "o", arg: 1, scope: !2551, file: !171, line: 133, type: !2554)
!2558 = !DILocation(line: 133, column: 50, scope: !2551)
!2559 = !DILocation(line: 135, column: 11, scope: !2551)
!2560 = !DILocation(line: 135, column: 46, scope: !2551)
!2561 = !{!2562, !728, i64 0}
!2562 = !{!"quoting_options", !728, i64 0, !795, i64 4, !728, i64 8, !727, i64 40, !727, i64 48}
!2563 = !DILocation(line: 135, column: 3, scope: !2551)
!2564 = distinct !DISubprogram(name: "set_quoting_style", scope: !171, file: !171, line: 141, type: !2565, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !2538, !11}
!2567 = !{!2568, !2569}
!2568 = !DILocalVariable(name: "o", arg: 1, scope: !2564, file: !171, line: 141, type: !2538)
!2569 = !DILocalVariable(name: "s", arg: 2, scope: !2564, file: !171, line: 141, type: !11)
!2570 = !DILocation(line: 141, column: 44, scope: !2564)
!2571 = !DILocation(line: 141, column: 66, scope: !2564)
!2572 = !DILocation(line: 143, column: 4, scope: !2564)
!2573 = !DILocation(line: 143, column: 39, scope: !2564)
!2574 = !DILocation(line: 143, column: 45, scope: !2564)
!2575 = !DILocation(line: 144, column: 1, scope: !2564)
!2576 = distinct !DISubprogram(name: "set_char_quoting", scope: !171, file: !171, line: 152, type: !2577, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!57, !2538, !42, !57}
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2586, !2587}
!2580 = !DILocalVariable(name: "o", arg: 1, scope: !2576, file: !171, line: 152, type: !2538)
!2581 = !DILocalVariable(name: "c", arg: 2, scope: !2576, file: !171, line: 152, type: !42)
!2582 = !DILocalVariable(name: "i", arg: 3, scope: !2576, file: !171, line: 152, type: !57)
!2583 = !DILocalVariable(name: "uc", scope: !2576, file: !171, line: 154, type: !48)
!2584 = !DILocalVariable(name: "p", scope: !2576, file: !171, line: 155, type: !2585)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2586 = !DILocalVariable(name: "shift", scope: !2576, file: !171, line: 157, type: !57)
!2587 = !DILocalVariable(name: "r", scope: !2576, file: !171, line: 158, type: !57)
!2588 = !DILocation(line: 152, column: 43, scope: !2576)
!2589 = !DILocation(line: 152, column: 51, scope: !2576)
!2590 = !DILocation(line: 152, column: 58, scope: !2576)
!2591 = !DILocation(line: 154, column: 17, scope: !2576)
!2592 = !DILocation(line: 156, column: 6, scope: !2576)
!2593 = !DILocation(line: 156, column: 62, scope: !2576)
!2594 = !DILocation(line: 156, column: 57, scope: !2576)
!2595 = !DILocation(line: 155, column: 17, scope: !2576)
!2596 = !DILocation(line: 157, column: 15, scope: !2576)
!2597 = !DILocation(line: 157, column: 7, scope: !2576)
!2598 = !DILocation(line: 158, column: 12, scope: !2576)
!2599 = !DILocation(line: 158, column: 15, scope: !2576)
!2600 = !DILocation(line: 158, column: 25, scope: !2576)
!2601 = !DILocation(line: 158, column: 7, scope: !2576)
!2602 = !DILocation(line: 159, column: 13, scope: !2576)
!2603 = !DILocation(line: 159, column: 18, scope: !2576)
!2604 = !DILocation(line: 159, column: 23, scope: !2576)
!2605 = !DILocation(line: 159, column: 6, scope: !2576)
!2606 = !DILocation(line: 160, column: 3, scope: !2576)
!2607 = distinct !DISubprogram(name: "set_quoting_flags", scope: !171, file: !171, line: 168, type: !2608, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2610)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!57, !2538, !57}
!2610 = !{!2611, !2612, !2613}
!2611 = !DILocalVariable(name: "o", arg: 1, scope: !2607, file: !171, line: 168, type: !2538)
!2612 = !DILocalVariable(name: "i", arg: 2, scope: !2607, file: !171, line: 168, type: !57)
!2613 = !DILocalVariable(name: "r", scope: !2607, file: !171, line: 170, type: !57)
!2614 = !DILocation(line: 168, column: 44, scope: !2607)
!2615 = !DILocation(line: 168, column: 51, scope: !2607)
!2616 = !DILocation(line: 171, column: 8, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2607, file: !171, line: 171, column: 7)
!2618 = !DILocation(line: 171, column: 7, scope: !2607)
!2619 = !DILocation(line: 173, column: 10, scope: !2607)
!2620 = !{!2562, !795, i64 4}
!2621 = !DILocation(line: 170, column: 7, scope: !2607)
!2622 = !DILocation(line: 174, column: 12, scope: !2607)
!2623 = !DILocation(line: 175, column: 3, scope: !2607)
!2624 = distinct !DISubprogram(name: "set_custom_quoting", scope: !171, file: !171, line: 179, type: !2625, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{null, !2538, !40, !40}
!2627 = !{!2628, !2629, !2630}
!2628 = !DILocalVariable(name: "o", arg: 1, scope: !2624, file: !171, line: 179, type: !2538)
!2629 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2624, file: !171, line: 180, type: !40)
!2630 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2624, file: !171, line: 180, type: !40)
!2631 = !DILocation(line: 179, column: 45, scope: !2624)
!2632 = !DILocation(line: 180, column: 33, scope: !2624)
!2633 = !DILocation(line: 180, column: 57, scope: !2624)
!2634 = !DILocation(line: 182, column: 8, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2624, file: !171, line: 182, column: 7)
!2636 = !DILocation(line: 182, column: 7, scope: !2624)
!2637 = !DILocation(line: 184, column: 6, scope: !2624)
!2638 = !DILocation(line: 184, column: 12, scope: !2624)
!2639 = !DILocation(line: 185, column: 8, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2624, file: !171, line: 185, column: 7)
!2641 = !DILocation(line: 185, column: 23, scope: !2640)
!2642 = !DILocation(line: 185, column: 19, scope: !2640)
!2643 = !DILocation(line: 186, column: 5, scope: !2640)
!2644 = !DILocation(line: 187, column: 6, scope: !2624)
!2645 = !DILocation(line: 187, column: 17, scope: !2624)
!2646 = !{!2562, !727, i64 40}
!2647 = !DILocation(line: 188, column: 6, scope: !2624)
!2648 = !DILocation(line: 188, column: 18, scope: !2624)
!2649 = !{!2562, !727, i64 48}
!2650 = !DILocation(line: 189, column: 1, scope: !2624)
!2651 = distinct !DISubprogram(name: "quotearg_buffer", scope: !171, file: !171, line: 784, type: !2652, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!166, !74, !166, !40, !166, !2554}
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662}
!2655 = !DILocalVariable(name: "buffer", arg: 1, scope: !2651, file: !171, line: 784, type: !74)
!2656 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2651, file: !171, line: 784, type: !166)
!2657 = !DILocalVariable(name: "arg", arg: 3, scope: !2651, file: !171, line: 785, type: !40)
!2658 = !DILocalVariable(name: "argsize", arg: 4, scope: !2651, file: !171, line: 785, type: !166)
!2659 = !DILocalVariable(name: "o", arg: 5, scope: !2651, file: !171, line: 786, type: !2554)
!2660 = !DILocalVariable(name: "p", scope: !2651, file: !171, line: 788, type: !2554)
!2661 = !DILocalVariable(name: "e", scope: !2651, file: !171, line: 789, type: !57)
!2662 = !DILocalVariable(name: "r", scope: !2651, file: !171, line: 790, type: !166)
!2663 = !DILocation(line: 784, column: 24, scope: !2651)
!2664 = !DILocation(line: 784, column: 39, scope: !2651)
!2665 = !DILocation(line: 785, column: 30, scope: !2651)
!2666 = !DILocation(line: 785, column: 42, scope: !2651)
!2667 = !DILocation(line: 786, column: 48, scope: !2651)
!2668 = !DILocation(line: 788, column: 37, scope: !2651)
!2669 = !DILocation(line: 788, column: 33, scope: !2651)
!2670 = !DILocation(line: 789, column: 11, scope: !2651)
!2671 = !DILocation(line: 789, column: 7, scope: !2651)
!2672 = !DILocation(line: 791, column: 43, scope: !2651)
!2673 = !DILocation(line: 791, column: 53, scope: !2651)
!2674 = !DILocation(line: 791, column: 60, scope: !2651)
!2675 = !DILocation(line: 792, column: 43, scope: !2651)
!2676 = !DILocation(line: 792, column: 58, scope: !2651)
!2677 = !DILocation(line: 790, column: 14, scope: !2651)
!2678 = !DILocation(line: 790, column: 10, scope: !2651)
!2679 = !DILocation(line: 793, column: 9, scope: !2651)
!2680 = !DILocation(line: 794, column: 3, scope: !2651)
!2681 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !171, file: !171, line: 256, type: !2682, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !2686)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!166, !74, !166, !40, !166, !11, !57, !2684, !40, !40}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2686 = !{!2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2711, !2712, !2713, !2714, !2715, !2718, !2719, !2734, !2737, !2738, !2745}
!2687 = !DILocalVariable(name: "buffer", arg: 1, scope: !2681, file: !171, line: 256, type: !74)
!2688 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2681, file: !171, line: 256, type: !166)
!2689 = !DILocalVariable(name: "arg", arg: 3, scope: !2681, file: !171, line: 257, type: !40)
!2690 = !DILocalVariable(name: "argsize", arg: 4, scope: !2681, file: !171, line: 257, type: !166)
!2691 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2681, file: !171, line: 258, type: !11)
!2692 = !DILocalVariable(name: "flags", arg: 6, scope: !2681, file: !171, line: 258, type: !57)
!2693 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2681, file: !171, line: 259, type: !2684)
!2694 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2681, file: !171, line: 260, type: !40)
!2695 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2681, file: !171, line: 261, type: !40)
!2696 = !DILocalVariable(name: "i", scope: !2681, file: !171, line: 263, type: !166)
!2697 = !DILocalVariable(name: "len", scope: !2681, file: !171, line: 264, type: !166)
!2698 = !DILocalVariable(name: "orig_buffersize", scope: !2681, file: !171, line: 265, type: !166)
!2699 = !DILocalVariable(name: "quote_string", scope: !2681, file: !171, line: 266, type: !40)
!2700 = !DILocalVariable(name: "quote_string_len", scope: !2681, file: !171, line: 267, type: !166)
!2701 = !DILocalVariable(name: "backslash_escapes", scope: !2681, file: !171, line: 268, type: !109)
!2702 = !DILocalVariable(name: "unibyte_locale", scope: !2681, file: !171, line: 269, type: !109)
!2703 = !DILocalVariable(name: "elide_outer_quotes", scope: !2681, file: !171, line: 270, type: !109)
!2704 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2681, file: !171, line: 271, type: !109)
!2705 = !DILocalVariable(name: "encountered_single_quote", scope: !2681, file: !171, line: 272, type: !109)
!2706 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2681, file: !171, line: 273, type: !109)
!2707 = !DILocalVariable(name: "c", scope: !2708, file: !171, line: 402, type: !48)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !171, line: 401, column: 5)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !171, line: 400, column: 3)
!2710 = distinct !DILexicalBlock(scope: !2681, file: !171, line: 400, column: 3)
!2711 = !DILocalVariable(name: "esc", scope: !2708, file: !171, line: 403, type: !48)
!2712 = !DILocalVariable(name: "is_right_quote", scope: !2708, file: !171, line: 404, type: !109)
!2713 = !DILocalVariable(name: "escaping", scope: !2708, file: !171, line: 405, type: !109)
!2714 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2708, file: !171, line: 406, type: !109)
!2715 = !DILocalVariable(name: "m", scope: !2716, file: !171, line: 610, type: !166)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !171, line: 608, column: 11)
!2717 = distinct !DILexicalBlock(scope: !2708, file: !171, line: 426, column: 9)
!2718 = !DILocalVariable(name: "printable", scope: !2716, file: !171, line: 612, type: !109)
!2719 = !DILocalVariable(name: "mbstate", scope: !2720, file: !171, line: 621, type: !2722)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !171, line: 620, column: 15)
!2721 = distinct !DILexicalBlock(scope: !2716, file: !171, line: 614, column: 17)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2723, line: 6, baseType: !2724)
!2723 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2725, line: 21, baseType: !2726)
!2725 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2725, line: 13, size: 64, elements: !2727)
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2726, file: !2725, line: 15, baseType: !57, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2726, file: !2725, line: 20, baseType: !2730, size: 32, offset: 32)
!2730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2726, file: !2725, line: 16, size: 32, elements: !2731)
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2730, file: !2725, line: 18, baseType: !7, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2730, file: !2725, line: 19, baseType: !834, size: 32)
!2734 = !DILocalVariable(name: "w", scope: !2735, file: !171, line: 631, type: !2736)
!2735 = distinct !DILexicalBlock(scope: !2720, file: !171, line: 630, column: 19)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !167, line: 90, baseType: !57)
!2737 = !DILocalVariable(name: "bytes", scope: !2735, file: !171, line: 632, type: !166)
!2738 = !DILocalVariable(name: "j", scope: !2739, file: !171, line: 657, type: !166)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !171, line: 656, column: 27)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !171, line: 654, column: 29)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !171, line: 649, column: 23)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !171, line: 641, column: 30)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !171, line: 636, column: 30)
!2744 = distinct !DILexicalBlock(scope: !2735, file: !171, line: 634, column: 25)
!2745 = !DILocalVariable(name: "ilim", scope: !2746, file: !171, line: 684, type: !166)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !171, line: 681, column: 15)
!2747 = distinct !DILexicalBlock(scope: !2716, file: !171, line: 680, column: 17)
!2748 = !DILocation(line: 256, column: 33, scope: !2681)
!2749 = !DILocation(line: 256, column: 48, scope: !2681)
!2750 = !DILocation(line: 257, column: 39, scope: !2681)
!2751 = !DILocation(line: 257, column: 51, scope: !2681)
!2752 = !DILocation(line: 258, column: 46, scope: !2681)
!2753 = !DILocation(line: 258, column: 65, scope: !2681)
!2754 = !DILocation(line: 259, column: 47, scope: !2681)
!2755 = !DILocation(line: 260, column: 39, scope: !2681)
!2756 = !DILocation(line: 261, column: 39, scope: !2681)
!2757 = !DILocation(line: 264, column: 10, scope: !2681)
!2758 = !DILocation(line: 265, column: 10, scope: !2681)
!2759 = !DILocation(line: 266, column: 15, scope: !2681)
!2760 = !DILocation(line: 267, column: 10, scope: !2681)
!2761 = !DILocation(line: 268, column: 8, scope: !2681)
!2762 = !DILocation(line: 269, column: 25, scope: !2681)
!2763 = !DILocation(line: 269, column: 36, scope: !2681)
!2764 = !DILocation(line: 270, column: 8, scope: !2681)
!2765 = !DILocation(line: 271, column: 8, scope: !2681)
!2766 = !DILocation(line: 272, column: 8, scope: !2681)
!2767 = !DILocation(line: 273, column: 8, scope: !2681)
!2768 = !DILocation(line: 273, column: 3, scope: !2681)
!2769 = !DILocation(line: 0, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2681, file: !171, line: 317, column: 5)
!2771 = !DILocation(line: 316, column: 3, scope: !2681)
!2772 = !DILocation(line: 323, column: 11, scope: !2770)
!2773 = !DILocation(line: 323, column: 12, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2770, file: !171, line: 323, column: 11)
!2775 = !DILocation(line: 324, column: 9, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !171, line: 324, column: 9)
!2777 = distinct !DILexicalBlock(scope: !2774, file: !171, line: 324, column: 9)
!2778 = !DILocation(line: 324, column: 9, scope: !2777)
!2779 = !DILocation(line: 362, column: 26, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !171, line: 340, column: 11)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !171, line: 339, column: 13)
!2782 = distinct !DILexicalBlock(scope: !2770, file: !171, line: 338, column: 7)
!2783 = !DILocation(line: 363, column: 27, scope: !2780)
!2784 = !DILocation(line: 364, column: 11, scope: !2780)
!2785 = !DILocation(line: 365, column: 14, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2782, file: !171, line: 365, column: 13)
!2787 = !DILocation(line: 365, column: 13, scope: !2782)
!2788 = !DILocation(line: 366, column: 43, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !171, line: 366, column: 11)
!2790 = distinct !DILexicalBlock(scope: !2786, file: !171, line: 366, column: 11)
!2791 = !DILocation(line: 366, column: 11, scope: !2790)
!2792 = !DILocation(line: 367, column: 13, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !171, line: 367, column: 13)
!2794 = distinct !DILexicalBlock(scope: !2789, file: !171, line: 367, column: 13)
!2795 = !DILocation(line: 367, column: 13, scope: !2794)
!2796 = !DILocation(line: 366, column: 70, scope: !2789)
!2797 = distinct !{!2797, !2791, !2798}
!2798 = !DILocation(line: 367, column: 13, scope: !2790)
!2799 = !DILocation(line: 370, column: 28, scope: !2782)
!2800 = !DILocation(line: 372, column: 7, scope: !2770)
!2801 = !DILocation(line: 376, column: 7, scope: !2770)
!2802 = !DILocation(line: 379, column: 7, scope: !2770)
!2803 = !DILocation(line: 381, column: 12, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2770, file: !171, line: 381, column: 11)
!2805 = !DILocation(line: 381, column: 11, scope: !2770)
!2806 = !DILocation(line: 0, scope: !2804)
!2807 = !DILocation(line: 386, column: 12, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2770, file: !171, line: 386, column: 11)
!2809 = !DILocation(line: 386, column: 11, scope: !2770)
!2810 = !DILocation(line: 387, column: 9, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !171, line: 387, column: 9)
!2812 = distinct !DILexicalBlock(scope: !2808, file: !171, line: 387, column: 9)
!2813 = !DILocation(line: 387, column: 9, scope: !2812)
!2814 = !DILocation(line: 394, column: 7, scope: !2770)
!2815 = !DILocation(line: 397, column: 7, scope: !2770)
!2816 = !DILocation(line: 0, scope: !2681)
!2817 = !DILocation(line: 263, column: 10, scope: !2681)
!2818 = !DILocation(line: 400, column: 8, scope: !2710)
!2819 = !DILocation(line: 0, scope: !2709)
!2820 = !DILocation(line: 400, column: 27, scope: !2709)
!2821 = !DILocation(line: 400, column: 19, scope: !2709)
!2822 = !DILocation(line: 400, column: 41, scope: !2709)
!2823 = !DILocation(line: 400, column: 48, scope: !2709)
!2824 = !DILocation(line: 400, column: 3, scope: !2710)
!2825 = !DILocation(line: 400, column: 60, scope: !2709)
!2826 = !DILocation(line: 404, column: 12, scope: !2708)
!2827 = !DILocation(line: 405, column: 12, scope: !2708)
!2828 = !DILocation(line: 406, column: 12, scope: !2708)
!2829 = !DILocation(line: 409, column: 11, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2708, file: !171, line: 408, column: 11)
!2831 = !DILocation(line: 411, column: 17, scope: !2830)
!2832 = !DILocation(line: 412, column: 39, scope: !2830)
!2833 = !DILocation(line: 416, column: 32, scope: !2830)
!2834 = !DILocation(line: 412, column: 19, scope: !2830)
!2835 = !DILocation(line: 412, column: 15, scope: !2830)
!2836 = !DILocation(line: 417, column: 11, scope: !2830)
!2837 = !DILocation(line: 417, column: 26, scope: !2830)
!2838 = !DILocation(line: 417, column: 14, scope: !2830)
!2839 = !DILocation(line: 417, column: 63, scope: !2830)
!2840 = !DILocation(line: 408, column: 11, scope: !2708)
!2841 = !DILocation(line: 0, scope: !2708)
!2842 = !DILocation(line: 424, column: 11, scope: !2708)
!2843 = !DILocation(line: 402, column: 21, scope: !2708)
!2844 = !DILocation(line: 425, column: 7, scope: !2708)
!2845 = !DILocation(line: 428, column: 15, scope: !2717)
!2846 = !DILocation(line: 430, column: 15, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !171, line: 430, column: 15)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !171, line: 429, column: 13)
!2849 = distinct !DILexicalBlock(scope: !2717, file: !171, line: 428, column: 15)
!2850 = !DILocation(line: 430, column: 15, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2847, file: !171, line: 430, column: 15)
!2852 = !DILocation(line: 430, column: 15, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !171, line: 430, column: 15)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !171, line: 430, column: 15)
!2855 = distinct !DILexicalBlock(scope: !2851, file: !171, line: 430, column: 15)
!2856 = !DILocation(line: 430, column: 15, scope: !2854)
!2857 = !DILocation(line: 430, column: 15, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !171, line: 430, column: 15)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !171, line: 430, column: 15)
!2860 = !DILocation(line: 430, column: 15, scope: !2859)
!2861 = !DILocation(line: 430, column: 15, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !171, line: 430, column: 15)
!2863 = distinct !DILexicalBlock(scope: !2855, file: !171, line: 430, column: 15)
!2864 = !DILocation(line: 430, column: 15, scope: !2863)
!2865 = !DILocation(line: 430, column: 15, scope: !2855)
!2866 = !DILocation(line: 430, column: 15, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !171, line: 430, column: 15)
!2868 = distinct !DILexicalBlock(scope: !2847, file: !171, line: 430, column: 15)
!2869 = !DILocation(line: 430, column: 15, scope: !2868)
!2870 = !DILocation(line: 438, column: 19, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2848, file: !171, line: 437, column: 19)
!2872 = !DILocation(line: 438, column: 24, scope: !2871)
!2873 = !DILocation(line: 438, column: 28, scope: !2871)
!2874 = !DILocation(line: 438, column: 38, scope: !2871)
!2875 = !DILocation(line: 438, column: 48, scope: !2871)
!2876 = !DILocation(line: 438, column: 59, scope: !2871)
!2877 = !DILocation(line: 440, column: 19, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !171, line: 440, column: 19)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !171, line: 440, column: 19)
!2880 = distinct !DILexicalBlock(scope: !2871, file: !171, line: 439, column: 17)
!2881 = !DILocation(line: 440, column: 19, scope: !2879)
!2882 = !DILocation(line: 441, column: 19, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !171, line: 441, column: 19)
!2884 = distinct !DILexicalBlock(scope: !2880, file: !171, line: 441, column: 19)
!2885 = !DILocation(line: 441, column: 19, scope: !2884)
!2886 = !DILocation(line: 442, column: 17, scope: !2880)
!2887 = !DILocation(line: 449, column: 20, scope: !2849)
!2888 = !DILocation(line: 454, column: 11, scope: !2717)
!2889 = !DILocation(line: 457, column: 19, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2717, file: !171, line: 455, column: 13)
!2891 = !DILocation(line: 463, column: 19, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2890, file: !171, line: 462, column: 19)
!2893 = !DILocation(line: 463, column: 24, scope: !2892)
!2894 = !DILocation(line: 463, column: 28, scope: !2892)
!2895 = !DILocation(line: 463, column: 38, scope: !2892)
!2896 = !DILocation(line: 463, column: 47, scope: !2892)
!2897 = !DILocation(line: 463, column: 41, scope: !2892)
!2898 = !DILocation(line: 463, column: 52, scope: !2892)
!2899 = !DILocation(line: 462, column: 19, scope: !2890)
!2900 = !DILocation(line: 464, column: 25, scope: !2892)
!2901 = !DILocation(line: 464, column: 17, scope: !2892)
!2902 = !DILocation(line: 471, column: 25, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2892, file: !171, line: 465, column: 19)
!2904 = !DILocation(line: 475, column: 21, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !171, line: 475, column: 21)
!2906 = distinct !DILexicalBlock(scope: !2903, file: !171, line: 475, column: 21)
!2907 = !DILocation(line: 475, column: 21, scope: !2906)
!2908 = !DILocation(line: 476, column: 21, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !171, line: 476, column: 21)
!2910 = distinct !DILexicalBlock(scope: !2903, file: !171, line: 476, column: 21)
!2911 = !DILocation(line: 476, column: 21, scope: !2910)
!2912 = !DILocation(line: 477, column: 21, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !171, line: 477, column: 21)
!2914 = distinct !DILexicalBlock(scope: !2903, file: !171, line: 477, column: 21)
!2915 = !DILocation(line: 477, column: 21, scope: !2914)
!2916 = !DILocation(line: 478, column: 21, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !171, line: 478, column: 21)
!2918 = distinct !DILexicalBlock(scope: !2903, file: !171, line: 478, column: 21)
!2919 = !DILocation(line: 478, column: 21, scope: !2918)
!2920 = !DILocation(line: 479, column: 21, scope: !2903)
!2921 = !DILocation(line: 403, column: 21, scope: !2708)
!2922 = !DILocation(line: 492, column: 31, scope: !2717)
!2923 = !DILocation(line: 493, column: 31, scope: !2717)
!2924 = !DILocation(line: 495, column: 31, scope: !2717)
!2925 = !DILocation(line: 496, column: 31, scope: !2717)
!2926 = !DILocation(line: 497, column: 31, scope: !2717)
!2927 = !DILocation(line: 500, column: 15, scope: !2717)
!2928 = !DILocation(line: 502, column: 19, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !171, line: 501, column: 13)
!2930 = distinct !DILexicalBlock(scope: !2717, file: !171, line: 500, column: 15)
!2931 = !DILocation(line: 509, column: 33, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2717, file: !171, line: 509, column: 15)
!2933 = !DILocation(line: 0, scope: !2717)
!2934 = !DILocation(line: 514, column: 15, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2717, file: !171, line: 513, column: 15)
!2936 = !DILocation(line: 518, column: 15, scope: !2717)
!2937 = !DILocation(line: 526, column: 26, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2717, file: !171, line: 526, column: 15)
!2939 = !DILocation(line: 526, column: 15, scope: !2717)
!2940 = !DILocation(line: 526, column: 40, scope: !2938)
!2941 = !DILocation(line: 526, column: 47, scope: !2938)
!2942 = !DILocation(line: 530, column: 17, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2717, file: !171, line: 530, column: 15)
!2944 = !DILocation(line: 526, column: 18, scope: !2938)
!2945 = !DILocation(line: 526, column: 65, scope: !2938)
!2946 = !DILocation(line: 530, column: 15, scope: !2717)
!2947 = !DILocation(line: 535, column: 11, scope: !2717)
!2948 = !DILocation(line: 549, column: 15, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2717, file: !171, line: 548, column: 15)
!2950 = !DILocation(line: 556, column: 15, scope: !2717)
!2951 = !DILocation(line: 558, column: 19, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !171, line: 557, column: 13)
!2953 = distinct !DILexicalBlock(scope: !2717, file: !171, line: 556, column: 15)
!2954 = !DILocation(line: 561, column: 19, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2952, file: !171, line: 561, column: 19)
!2956 = !DILocation(line: 561, column: 35, scope: !2955)
!2957 = !DILocation(line: 561, column: 30, scope: !2955)
!2958 = !DILocation(line: 570, column: 15, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !171, line: 570, column: 15)
!2960 = distinct !DILexicalBlock(scope: !2952, file: !171, line: 570, column: 15)
!2961 = !DILocation(line: 570, column: 15, scope: !2960)
!2962 = !DILocation(line: 571, column: 15, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !171, line: 571, column: 15)
!2964 = distinct !DILexicalBlock(scope: !2952, file: !171, line: 571, column: 15)
!2965 = !DILocation(line: 571, column: 15, scope: !2964)
!2966 = !DILocation(line: 572, column: 15, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !171, line: 572, column: 15)
!2968 = distinct !DILexicalBlock(scope: !2952, file: !171, line: 572, column: 15)
!2969 = !DILocation(line: 572, column: 15, scope: !2968)
!2970 = !DILocation(line: 574, column: 13, scope: !2952)
!2971 = !DILocation(line: 614, column: 17, scope: !2716)
!2972 = !DILocation(line: 610, column: 20, scope: !2716)
!2973 = !DILocation(line: 617, column: 29, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2721, file: !171, line: 615, column: 15)
!2975 = !{!1013, !1013, i64 0}
!2976 = !DILocation(line: 617, column: 27, scope: !2974)
!2977 = !DILocation(line: 612, column: 18, scope: !2716)
!2978 = !DILocation(line: 618, column: 15, scope: !2974)
!2979 = !DILocation(line: 621, column: 17, scope: !2720)
!2980 = !DILocation(line: 622, column: 17, scope: !2720)
!2981 = !DILocation(line: 626, column: 29, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2720, file: !171, line: 626, column: 21)
!2983 = !DILocation(line: 626, column: 21, scope: !2720)
!2984 = !DILocation(line: 627, column: 29, scope: !2982)
!2985 = !DILocation(line: 627, column: 19, scope: !2982)
!2986 = !DILocation(line: 0, scope: !2830)
!2987 = !DILocation(line: 629, column: 17, scope: !2720)
!2988 = !DILocation(line: 624, column: 19, scope: !2720)
!2989 = !DILocation(line: 625, column: 27, scope: !2720)
!2990 = !DILocation(line: 631, column: 21, scope: !2735)
!2991 = !DILocation(line: 632, column: 56, scope: !2735)
!2992 = !DILocation(line: 632, column: 50, scope: !2735)
!2993 = !DILocation(line: 633, column: 53, scope: !2735)
!2994 = !DILocation(line: 621, column: 27, scope: !2720)
!2995 = !DILocation(line: 631, column: 29, scope: !2735)
!2996 = !DILocation(line: 632, column: 36, scope: !2735)
!2997 = !DILocation(line: 632, column: 28, scope: !2735)
!2998 = !DILocation(line: 634, column: 25, scope: !2735)
!2999 = !DILocation(line: 644, column: 38, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2742, file: !171, line: 642, column: 23)
!3001 = !DILocation(line: 644, column: 48, scope: !3000)
!3002 = !DILocation(line: 644, column: 51, scope: !3000)
!3003 = !DILocation(line: 644, column: 25, scope: !3000)
!3004 = !DILocation(line: 645, column: 28, scope: !3000)
!3005 = !DILocation(line: 644, column: 34, scope: !3000)
!3006 = distinct !{!3006, !3003, !3004}
!3007 = !DILocation(line: 658, column: 43, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !171, line: 658, column: 29)
!3009 = distinct !DILexicalBlock(scope: !2739, file: !171, line: 658, column: 29)
!3010 = !DILocation(line: 655, column: 29, scope: !2740)
!3011 = !DILocation(line: 657, column: 36, scope: !2739)
!3012 = !DILocation(line: 659, column: 49, scope: !3008)
!3013 = !DILocation(line: 659, column: 39, scope: !3008)
!3014 = !DILocation(line: 659, column: 31, scope: !3008)
!3015 = !DILocation(line: 658, column: 53, scope: !3008)
!3016 = !DILocation(line: 658, column: 29, scope: !3009)
!3017 = distinct !{!3017, !3016, !3018}
!3018 = !DILocation(line: 667, column: 33, scope: !3009)
!3019 = !DILocation(line: 674, column: 19, scope: !2720)
!3020 = !DILocation(line: 670, column: 41, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2741, file: !171, line: 670, column: 29)
!3022 = !DILocation(line: 670, column: 31, scope: !3021)
!3023 = !DILocation(line: 670, column: 29, scope: !2741)
!3024 = !DILocation(line: 672, column: 27, scope: !2741)
!3025 = !DILocation(line: 675, column: 26, scope: !2720)
!3026 = !DILocation(line: 675, column: 24, scope: !2720)
!3027 = !DILocation(line: 674, column: 19, scope: !2735)
!3028 = distinct !{!3028, !2987, !3029}
!3029 = !DILocation(line: 675, column: 44, scope: !2720)
!3030 = !DILocation(line: 676, column: 15, scope: !2721)
!3031 = !DILocation(line: 0, scope: !2982)
!3032 = !DILocation(line: 0, scope: !2720)
!3033 = !DILocation(line: 678, column: 40, scope: !2716)
!3034 = !DILocation(line: 680, column: 19, scope: !2747)
!3035 = !DILocation(line: 680, column: 45, scope: !2747)
!3036 = !DILocation(line: 680, column: 23, scope: !2747)
!3037 = !DILocation(line: 684, column: 33, scope: !2746)
!3038 = !DILocation(line: 684, column: 24, scope: !2746)
!3039 = !DILocation(line: 686, column: 17, scope: !2746)
!3040 = !DILocation(line: 0, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !171, line: 687, column: 19)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !171, line: 686, column: 17)
!3043 = distinct !DILexicalBlock(scope: !2746, file: !171, line: 686, column: 17)
!3044 = !DILocation(line: 0, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3041, file: !171, line: 703, column: 21)
!3046 = !DILocation(line: 0, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !171, line: 696, column: 23)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !171, line: 695, column: 30)
!3049 = distinct !DILexicalBlock(scope: !3041, file: !171, line: 688, column: 25)
!3050 = !DILocation(line: 688, column: 43, scope: !3049)
!3051 = !DILocation(line: 690, column: 25, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !171, line: 690, column: 25)
!3053 = distinct !DILexicalBlock(scope: !3049, file: !171, line: 689, column: 23)
!3054 = !DILocation(line: 690, column: 25, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3052, file: !171, line: 690, column: 25)
!3056 = !DILocation(line: 690, column: 25, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !171, line: 690, column: 25)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !171, line: 690, column: 25)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !171, line: 690, column: 25)
!3060 = !DILocation(line: 690, column: 25, scope: !3058)
!3061 = !DILocation(line: 690, column: 25, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !171, line: 690, column: 25)
!3063 = distinct !DILexicalBlock(scope: !3059, file: !171, line: 690, column: 25)
!3064 = !DILocation(line: 690, column: 25, scope: !3063)
!3065 = !DILocation(line: 690, column: 25, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !171, line: 690, column: 25)
!3067 = distinct !DILexicalBlock(scope: !3059, file: !171, line: 690, column: 25)
!3068 = !DILocation(line: 690, column: 25, scope: !3067)
!3069 = !DILocation(line: 690, column: 25, scope: !3059)
!3070 = !DILocation(line: 690, column: 25, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !171, line: 690, column: 25)
!3072 = distinct !DILexicalBlock(scope: !3052, file: !171, line: 690, column: 25)
!3073 = !DILocation(line: 690, column: 25, scope: !3072)
!3074 = !DILocation(line: 691, column: 25, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !171, line: 691, column: 25)
!3076 = distinct !DILexicalBlock(scope: !3053, file: !171, line: 691, column: 25)
!3077 = !DILocation(line: 691, column: 25, scope: !3076)
!3078 = !DILocation(line: 692, column: 25, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !171, line: 692, column: 25)
!3080 = distinct !DILexicalBlock(scope: !3053, file: !171, line: 692, column: 25)
!3081 = !DILocation(line: 692, column: 25, scope: !3080)
!3082 = !DILocation(line: 693, column: 38, scope: !3053)
!3083 = !DILocation(line: 693, column: 33, scope: !3053)
!3084 = !DILocation(line: 694, column: 23, scope: !3053)
!3085 = !DILocation(line: 695, column: 30, scope: !3048)
!3086 = !DILocation(line: 695, column: 30, scope: !3049)
!3087 = !DILocation(line: 697, column: 25, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !171, line: 697, column: 25)
!3089 = distinct !DILexicalBlock(scope: !3047, file: !171, line: 697, column: 25)
!3090 = !DILocation(line: 697, column: 25, scope: !3089)
!3091 = !DILocation(line: 699, column: 23, scope: !3047)
!3092 = !DILocation(line: 0, scope: !3080)
!3093 = !DILocation(line: 0, scope: !3053)
!3094 = !DILocation(line: 0, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !2830, file: !171, line: 418, column: 9)
!3096 = !DILocation(line: 0, scope: !3052)
!3097 = !DILocation(line: 700, column: 35, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3041, file: !171, line: 700, column: 25)
!3099 = !DILocation(line: 700, column: 30, scope: !3098)
!3100 = !DILocation(line: 700, column: 25, scope: !3041)
!3101 = !DILocation(line: 702, column: 21, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !171, line: 702, column: 21)
!3103 = distinct !DILexicalBlock(scope: !3041, file: !171, line: 702, column: 21)
!3104 = !DILocation(line: 702, column: 21, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !171, line: 702, column: 21)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !171, line: 702, column: 21)
!3107 = distinct !DILexicalBlock(scope: !3102, file: !171, line: 702, column: 21)
!3108 = !DILocation(line: 702, column: 21, scope: !3106)
!3109 = !DILocation(line: 702, column: 21, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !171, line: 702, column: 21)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !171, line: 702, column: 21)
!3112 = !DILocation(line: 702, column: 21, scope: !3111)
!3113 = !DILocation(line: 702, column: 21, scope: !3107)
!3114 = !DILocation(line: 0, scope: !3089)
!3115 = !DILocation(line: 703, column: 21, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3045, file: !171, line: 703, column: 21)
!3117 = !DILocation(line: 703, column: 21, scope: !3045)
!3118 = !DILocation(line: 704, column: 25, scope: !3041)
!3119 = !DILocation(line: 686, column: 17, scope: !3042)
!3120 = distinct !{!3120, !3121, !3122}
!3121 = !DILocation(line: 686, column: 17, scope: !3043)
!3122 = !DILocation(line: 705, column: 19, scope: !3043)
!3123 = !DILocation(line: 0, scope: !2710)
!3124 = !DILocation(line: 416, column: 30, scope: !2830)
!3125 = !DILocation(line: 712, column: 34, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !2708, file: !171, line: 712, column: 11)
!3127 = !DILocation(line: 714, column: 14, scope: !3126)
!3128 = !DILocation(line: 715, column: 14, scope: !3126)
!3129 = !DILocation(line: 715, column: 35, scope: !3126)
!3130 = !DILocation(line: 715, column: 17, scope: !3126)
!3131 = !DILocation(line: 715, column: 47, scope: !3126)
!3132 = !DILocation(line: 715, column: 65, scope: !3126)
!3133 = !DILocation(line: 716, column: 15, scope: !3126)
!3134 = !DILocation(line: 716, column: 11, scope: !3126)
!3135 = !DILocation(line: 712, column: 11, scope: !2708)
!3136 = !DILocation(line: 400, column: 10, scope: !2710)
!3137 = !DILocation(line: 0, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !171, line: 519, column: 13)
!3139 = distinct !DILexicalBlock(scope: !2717, file: !171, line: 518, column: 15)
!3140 = !DILocation(line: 720, column: 7, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !2708, file: !171, line: 720, column: 7)
!3142 = !DILocation(line: 720, column: 7, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3141, file: !171, line: 720, column: 7)
!3144 = !DILocation(line: 720, column: 7, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !171, line: 720, column: 7)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !171, line: 720, column: 7)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !171, line: 720, column: 7)
!3148 = !DILocation(line: 720, column: 7, scope: !3146)
!3149 = !DILocation(line: 720, column: 7, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !171, line: 720, column: 7)
!3151 = distinct !DILexicalBlock(scope: !3147, file: !171, line: 720, column: 7)
!3152 = !DILocation(line: 720, column: 7, scope: !3151)
!3153 = !DILocation(line: 720, column: 7, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !171, line: 720, column: 7)
!3155 = distinct !DILexicalBlock(scope: !3147, file: !171, line: 720, column: 7)
!3156 = !DILocation(line: 720, column: 7, scope: !3155)
!3157 = !DILocation(line: 720, column: 7, scope: !3147)
!3158 = !DILocation(line: 720, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !171, line: 720, column: 7)
!3160 = distinct !DILexicalBlock(scope: !3141, file: !171, line: 720, column: 7)
!3161 = !DILocation(line: 720, column: 7, scope: !3160)
!3162 = !DILocation(line: 723, column: 7, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !171, line: 723, column: 7)
!3164 = distinct !DILexicalBlock(scope: !2708, file: !171, line: 723, column: 7)
!3165 = !DILocation(line: 424, column: 9, scope: !2708)
!3166 = !DILocation(line: 723, column: 7, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !171, line: 723, column: 7)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !171, line: 723, column: 7)
!3169 = distinct !DILexicalBlock(scope: !3163, file: !171, line: 723, column: 7)
!3170 = !DILocation(line: 723, column: 7, scope: !3168)
!3171 = !DILocation(line: 723, column: 7, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !171, line: 723, column: 7)
!3173 = distinct !DILexicalBlock(scope: !3169, file: !171, line: 723, column: 7)
!3174 = !DILocation(line: 723, column: 7, scope: !3173)
!3175 = !DILocation(line: 723, column: 7, scope: !3169)
!3176 = !DILocation(line: 724, column: 7, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !171, line: 724, column: 7)
!3178 = distinct !DILexicalBlock(scope: !2708, file: !171, line: 724, column: 7)
!3179 = !DILocation(line: 724, column: 7, scope: !3178)
!3180 = !DILocation(line: 726, column: 13, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !2708, file: !171, line: 726, column: 11)
!3182 = !DILocation(line: 726, column: 11, scope: !2708)
!3183 = !DILocation(line: 728, column: 5, scope: !2709)
!3184 = !DILocation(line: 400, column: 75, scope: !2709)
!3185 = !DILocation(line: 400, column: 3, scope: !2709)
!3186 = distinct !{!3186, !2824, !3187}
!3187 = !DILocation(line: 728, column: 5, scope: !2710)
!3188 = !DILocation(line: 730, column: 11, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !2681, file: !171, line: 730, column: 7)
!3190 = !DILocation(line: 730, column: 16, scope: !3189)
!3191 = !DILocation(line: 738, column: 51, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !2681, file: !171, line: 738, column: 7)
!3193 = !DILocation(line: 739, column: 10, scope: !3192)
!3194 = !DILocation(line: 741, column: 11, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !171, line: 741, column: 11)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !171, line: 740, column: 5)
!3197 = !DILocation(line: 741, column: 11, scope: !3196)
!3198 = !DILocation(line: 742, column: 16, scope: !3195)
!3199 = !DILocation(line: 742, column: 9, scope: !3195)
!3200 = !DILocation(line: 746, column: 18, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3195, file: !171, line: 746, column: 16)
!3202 = !DILocation(line: 746, column: 32, scope: !3201)
!3203 = !DILocation(line: 746, column: 29, scope: !3201)
!3204 = !DILocation(line: 755, column: 7, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !2681, file: !171, line: 755, column: 7)
!3206 = !DILocation(line: 755, column: 20, scope: !3205)
!3207 = !DILocation(line: 756, column: 12, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !171, line: 756, column: 5)
!3209 = distinct !DILexicalBlock(scope: !3205, file: !171, line: 756, column: 5)
!3210 = !DILocation(line: 756, column: 5, scope: !3209)
!3211 = !DILocation(line: 757, column: 7, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !171, line: 757, column: 7)
!3213 = distinct !DILexicalBlock(scope: !3208, file: !171, line: 757, column: 7)
!3214 = !DILocation(line: 757, column: 7, scope: !3213)
!3215 = !DILocation(line: 756, column: 39, scope: !3208)
!3216 = distinct !{!3216, !3210, !3217}
!3217 = !DILocation(line: 757, column: 7, scope: !3209)
!3218 = !DILocation(line: 759, column: 11, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !2681, file: !171, line: 759, column: 7)
!3220 = !DILocation(line: 759, column: 7, scope: !2681)
!3221 = !DILocation(line: 760, column: 5, scope: !3219)
!3222 = !DILocation(line: 760, column: 17, scope: !3219)
!3223 = !DILocation(line: 766, column: 21, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !2681, file: !171, line: 766, column: 7)
!3225 = !DILocation(line: 766, column: 54, scope: !3224)
!3226 = !DILocation(line: 766, column: 51, scope: !3224)
!3227 = !DILocation(line: 770, column: 42, scope: !2681)
!3228 = !DILocation(line: 768, column: 10, scope: !2681)
!3229 = !DILocation(line: 768, column: 3, scope: !2681)
!3230 = !DILocation(line: 772, column: 1, scope: !2681)
!3231 = distinct !DISubprogram(name: "gettext_quote", scope: !171, file: !171, line: 207, type: !3232, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3234)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!40, !40, !11}
!3234 = !{!3235, !3236, !3237, !3238}
!3235 = !DILocalVariable(name: "msgid", arg: 1, scope: !3231, file: !171, line: 207, type: !40)
!3236 = !DILocalVariable(name: "s", arg: 2, scope: !3231, file: !171, line: 207, type: !11)
!3237 = !DILocalVariable(name: "translation", scope: !3231, file: !171, line: 209, type: !40)
!3238 = !DILocalVariable(name: "locale_code", scope: !3231, file: !171, line: 210, type: !40)
!3239 = !DILocation(line: 207, column: 28, scope: !3231)
!3240 = !DILocation(line: 207, column: 54, scope: !3231)
!3241 = !DILocation(line: 209, column: 29, scope: !3231)
!3242 = !DILocation(line: 209, column: 15, scope: !3231)
!3243 = !DILocation(line: 212, column: 19, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3231, file: !171, line: 212, column: 7)
!3245 = !DILocation(line: 212, column: 7, scope: !3231)
!3246 = !DILocation(line: 233, column: 17, scope: !3231)
!3247 = !DILocation(line: 210, column: 15, scope: !3231)
!3248 = !DILocalVariable(name: "s1", arg: 1, scope: !3249, file: !3250, line: 160, type: !40)
!3249 = distinct !DISubprogram(name: "strcaseeq0", scope: !3250, file: !3250, line: 160, type: !3251, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3253)
!3250 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!57, !40, !40, !42, !42, !42, !42, !42, !42, !42, !42, !42}
!3253 = !{!3248, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263}
!3254 = !DILocalVariable(name: "s2", arg: 2, scope: !3249, file: !3250, line: 160, type: !40)
!3255 = !DILocalVariable(name: "s20", arg: 3, scope: !3249, file: !3250, line: 160, type: !42)
!3256 = !DILocalVariable(name: "s21", arg: 4, scope: !3249, file: !3250, line: 160, type: !42)
!3257 = !DILocalVariable(name: "s22", arg: 5, scope: !3249, file: !3250, line: 160, type: !42)
!3258 = !DILocalVariable(name: "s23", arg: 6, scope: !3249, file: !3250, line: 160, type: !42)
!3259 = !DILocalVariable(name: "s24", arg: 7, scope: !3249, file: !3250, line: 160, type: !42)
!3260 = !DILocalVariable(name: "s25", arg: 8, scope: !3249, file: !3250, line: 160, type: !42)
!3261 = !DILocalVariable(name: "s26", arg: 9, scope: !3249, file: !3250, line: 160, type: !42)
!3262 = !DILocalVariable(name: "s27", arg: 10, scope: !3249, file: !3250, line: 160, type: !42)
!3263 = !DILocalVariable(name: "s28", arg: 11, scope: !3249, file: !3250, line: 160, type: !42)
!3264 = !DILocation(line: 160, column: 25, scope: !3249, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 234, column: 7, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3231, file: !171, line: 234, column: 7)
!3267 = !DILocation(line: 160, column: 41, scope: !3249, inlinedAt: !3265)
!3268 = !DILocation(line: 160, column: 50, scope: !3249, inlinedAt: !3265)
!3269 = !DILocation(line: 160, column: 60, scope: !3249, inlinedAt: !3265)
!3270 = !DILocation(line: 160, column: 70, scope: !3249, inlinedAt: !3265)
!3271 = !DILocation(line: 160, column: 80, scope: !3249, inlinedAt: !3265)
!3272 = !DILocation(line: 160, column: 90, scope: !3249, inlinedAt: !3265)
!3273 = !DILocation(line: 160, column: 100, scope: !3249, inlinedAt: !3265)
!3274 = !DILocation(line: 160, column: 110, scope: !3249, inlinedAt: !3265)
!3275 = !DILocation(line: 160, column: 120, scope: !3249, inlinedAt: !3265)
!3276 = !DILocation(line: 160, column: 130, scope: !3249, inlinedAt: !3265)
!3277 = !DILocation(line: 162, column: 7, scope: !3278, inlinedAt: !3265)
!3278 = distinct !DILexicalBlock(scope: !3249, file: !3250, line: 162, column: 7)
!3279 = !DILocalVariable(name: "s1", arg: 1, scope: !3280, file: !3250, line: 146, type: !40)
!3280 = distinct !DISubprogram(name: "strcaseeq1", scope: !3250, file: !3250, line: 146, type: !3281, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3283)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!57, !40, !40, !42, !42, !42, !42, !42, !42, !42, !42}
!3283 = !{!3279, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292}
!3284 = !DILocalVariable(name: "s2", arg: 2, scope: !3280, file: !3250, line: 146, type: !40)
!3285 = !DILocalVariable(name: "s21", arg: 3, scope: !3280, file: !3250, line: 146, type: !42)
!3286 = !DILocalVariable(name: "s22", arg: 4, scope: !3280, file: !3250, line: 146, type: !42)
!3287 = !DILocalVariable(name: "s23", arg: 5, scope: !3280, file: !3250, line: 146, type: !42)
!3288 = !DILocalVariable(name: "s24", arg: 6, scope: !3280, file: !3250, line: 146, type: !42)
!3289 = !DILocalVariable(name: "s25", arg: 7, scope: !3280, file: !3250, line: 146, type: !42)
!3290 = !DILocalVariable(name: "s26", arg: 8, scope: !3280, file: !3250, line: 146, type: !42)
!3291 = !DILocalVariable(name: "s27", arg: 9, scope: !3280, file: !3250, line: 146, type: !42)
!3292 = !DILocalVariable(name: "s28", arg: 10, scope: !3280, file: !3250, line: 146, type: !42)
!3293 = !DILocation(line: 146, column: 25, scope: !3280, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 167, column: 16, scope: !3295, inlinedAt: !3265)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !3250, line: 164, column: 11)
!3296 = distinct !DILexicalBlock(scope: !3278, file: !3250, line: 163, column: 5)
!3297 = !DILocation(line: 146, column: 41, scope: !3280, inlinedAt: !3294)
!3298 = !DILocation(line: 146, column: 50, scope: !3280, inlinedAt: !3294)
!3299 = !DILocation(line: 146, column: 60, scope: !3280, inlinedAt: !3294)
!3300 = !DILocation(line: 146, column: 70, scope: !3280, inlinedAt: !3294)
!3301 = !DILocation(line: 146, column: 80, scope: !3280, inlinedAt: !3294)
!3302 = !DILocation(line: 146, column: 90, scope: !3280, inlinedAt: !3294)
!3303 = !DILocation(line: 146, column: 100, scope: !3280, inlinedAt: !3294)
!3304 = !DILocation(line: 146, column: 110, scope: !3280, inlinedAt: !3294)
!3305 = !DILocation(line: 146, column: 120, scope: !3280, inlinedAt: !3294)
!3306 = !DILocation(line: 148, column: 7, scope: !3307, inlinedAt: !3294)
!3307 = distinct !DILexicalBlock(scope: !3280, file: !3250, line: 148, column: 7)
!3308 = !DILocalVariable(name: "s1", arg: 1, scope: !3309, file: !3250, line: 132, type: !40)
!3309 = distinct !DISubprogram(name: "strcaseeq2", scope: !3250, file: !3250, line: 132, type: !3310, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!57, !40, !40, !42, !42, !42, !42, !42, !42, !42}
!3312 = !{!3308, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320}
!3313 = !DILocalVariable(name: "s2", arg: 2, scope: !3309, file: !3250, line: 132, type: !40)
!3314 = !DILocalVariable(name: "s22", arg: 3, scope: !3309, file: !3250, line: 132, type: !42)
!3315 = !DILocalVariable(name: "s23", arg: 4, scope: !3309, file: !3250, line: 132, type: !42)
!3316 = !DILocalVariable(name: "s24", arg: 5, scope: !3309, file: !3250, line: 132, type: !42)
!3317 = !DILocalVariable(name: "s25", arg: 6, scope: !3309, file: !3250, line: 132, type: !42)
!3318 = !DILocalVariable(name: "s26", arg: 7, scope: !3309, file: !3250, line: 132, type: !42)
!3319 = !DILocalVariable(name: "s27", arg: 8, scope: !3309, file: !3250, line: 132, type: !42)
!3320 = !DILocalVariable(name: "s28", arg: 9, scope: !3309, file: !3250, line: 132, type: !42)
!3321 = !DILocation(line: 132, column: 25, scope: !3309, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 153, column: 16, scope: !3323, inlinedAt: !3294)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !3250, line: 150, column: 11)
!3324 = distinct !DILexicalBlock(scope: !3307, file: !3250, line: 149, column: 5)
!3325 = !DILocation(line: 132, column: 41, scope: !3309, inlinedAt: !3322)
!3326 = !DILocation(line: 132, column: 50, scope: !3309, inlinedAt: !3322)
!3327 = !DILocation(line: 132, column: 60, scope: !3309, inlinedAt: !3322)
!3328 = !DILocation(line: 132, column: 70, scope: !3309, inlinedAt: !3322)
!3329 = !DILocation(line: 132, column: 80, scope: !3309, inlinedAt: !3322)
!3330 = !DILocation(line: 132, column: 90, scope: !3309, inlinedAt: !3322)
!3331 = !DILocation(line: 132, column: 100, scope: !3309, inlinedAt: !3322)
!3332 = !DILocation(line: 132, column: 110, scope: !3309, inlinedAt: !3322)
!3333 = !DILocation(line: 134, column: 7, scope: !3334, inlinedAt: !3322)
!3334 = distinct !DILexicalBlock(scope: !3309, file: !3250, line: 134, column: 7)
!3335 = !DILocalVariable(name: "s1", arg: 1, scope: !3336, file: !3250, line: 118, type: !40)
!3336 = distinct !DISubprogram(name: "strcaseeq3", scope: !3250, file: !3250, line: 118, type: !3337, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!57, !40, !40, !42, !42, !42, !42, !42, !42}
!3339 = !{!3335, !3340, !3341, !3342, !3343, !3344, !3345, !3346}
!3340 = !DILocalVariable(name: "s2", arg: 2, scope: !3336, file: !3250, line: 118, type: !40)
!3341 = !DILocalVariable(name: "s23", arg: 3, scope: !3336, file: !3250, line: 118, type: !42)
!3342 = !DILocalVariable(name: "s24", arg: 4, scope: !3336, file: !3250, line: 118, type: !42)
!3343 = !DILocalVariable(name: "s25", arg: 5, scope: !3336, file: !3250, line: 118, type: !42)
!3344 = !DILocalVariable(name: "s26", arg: 6, scope: !3336, file: !3250, line: 118, type: !42)
!3345 = !DILocalVariable(name: "s27", arg: 7, scope: !3336, file: !3250, line: 118, type: !42)
!3346 = !DILocalVariable(name: "s28", arg: 8, scope: !3336, file: !3250, line: 118, type: !42)
!3347 = !DILocation(line: 118, column: 25, scope: !3336, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 139, column: 16, scope: !3349, inlinedAt: !3322)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !3250, line: 136, column: 11)
!3350 = distinct !DILexicalBlock(scope: !3334, file: !3250, line: 135, column: 5)
!3351 = !DILocation(line: 118, column: 41, scope: !3336, inlinedAt: !3348)
!3352 = !DILocation(line: 118, column: 50, scope: !3336, inlinedAt: !3348)
!3353 = !DILocation(line: 118, column: 60, scope: !3336, inlinedAt: !3348)
!3354 = !DILocation(line: 118, column: 70, scope: !3336, inlinedAt: !3348)
!3355 = !DILocation(line: 118, column: 80, scope: !3336, inlinedAt: !3348)
!3356 = !DILocation(line: 118, column: 90, scope: !3336, inlinedAt: !3348)
!3357 = !DILocation(line: 118, column: 100, scope: !3336, inlinedAt: !3348)
!3358 = !DILocation(line: 120, column: 7, scope: !3359, inlinedAt: !3348)
!3359 = distinct !DILexicalBlock(scope: !3336, file: !3250, line: 120, column: 7)
!3360 = !DILocation(line: 120, column: 7, scope: !3336, inlinedAt: !3348)
!3361 = !DILocalVariable(name: "s1", arg: 1, scope: !3362, file: !3250, line: 104, type: !40)
!3362 = distinct !DISubprogram(name: "strcaseeq4", scope: !3250, file: !3250, line: 104, type: !3363, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3365)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!57, !40, !40, !42, !42, !42, !42, !42}
!3365 = !{!3361, !3366, !3367, !3368, !3369, !3370, !3371}
!3366 = !DILocalVariable(name: "s2", arg: 2, scope: !3362, file: !3250, line: 104, type: !40)
!3367 = !DILocalVariable(name: "s24", arg: 3, scope: !3362, file: !3250, line: 104, type: !42)
!3368 = !DILocalVariable(name: "s25", arg: 4, scope: !3362, file: !3250, line: 104, type: !42)
!3369 = !DILocalVariable(name: "s26", arg: 5, scope: !3362, file: !3250, line: 104, type: !42)
!3370 = !DILocalVariable(name: "s27", arg: 6, scope: !3362, file: !3250, line: 104, type: !42)
!3371 = !DILocalVariable(name: "s28", arg: 7, scope: !3362, file: !3250, line: 104, type: !42)
!3372 = !DILocation(line: 104, column: 25, scope: !3362, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 125, column: 16, scope: !3374, inlinedAt: !3348)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !3250, line: 122, column: 11)
!3375 = distinct !DILexicalBlock(scope: !3359, file: !3250, line: 121, column: 5)
!3376 = !DILocation(line: 104, column: 41, scope: !3362, inlinedAt: !3373)
!3377 = !DILocation(line: 104, column: 50, scope: !3362, inlinedAt: !3373)
!3378 = !DILocation(line: 104, column: 60, scope: !3362, inlinedAt: !3373)
!3379 = !DILocation(line: 104, column: 70, scope: !3362, inlinedAt: !3373)
!3380 = !DILocation(line: 104, column: 80, scope: !3362, inlinedAt: !3373)
!3381 = !DILocation(line: 104, column: 90, scope: !3362, inlinedAt: !3373)
!3382 = !DILocation(line: 106, column: 7, scope: !3383, inlinedAt: !3373)
!3383 = distinct !DILexicalBlock(scope: !3362, file: !3250, line: 106, column: 7)
!3384 = !DILocation(line: 106, column: 7, scope: !3362, inlinedAt: !3373)
!3385 = !DILocalVariable(name: "s1", arg: 1, scope: !3386, file: !3250, line: 90, type: !40)
!3386 = distinct !DISubprogram(name: "strcaseeq5", scope: !3250, file: !3250, line: 90, type: !3387, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!57, !40, !40, !42, !42, !42, !42}
!3389 = !{!3385, !3390, !3391, !3392, !3393, !3394}
!3390 = !DILocalVariable(name: "s2", arg: 2, scope: !3386, file: !3250, line: 90, type: !40)
!3391 = !DILocalVariable(name: "s25", arg: 3, scope: !3386, file: !3250, line: 90, type: !42)
!3392 = !DILocalVariable(name: "s26", arg: 4, scope: !3386, file: !3250, line: 90, type: !42)
!3393 = !DILocalVariable(name: "s27", arg: 5, scope: !3386, file: !3250, line: 90, type: !42)
!3394 = !DILocalVariable(name: "s28", arg: 6, scope: !3386, file: !3250, line: 90, type: !42)
!3395 = !DILocation(line: 90, column: 25, scope: !3386, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 111, column: 16, scope: !3397, inlinedAt: !3373)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !3250, line: 108, column: 11)
!3398 = distinct !DILexicalBlock(scope: !3383, file: !3250, line: 107, column: 5)
!3399 = !DILocation(line: 90, column: 41, scope: !3386, inlinedAt: !3396)
!3400 = !DILocation(line: 90, column: 50, scope: !3386, inlinedAt: !3396)
!3401 = !DILocation(line: 90, column: 60, scope: !3386, inlinedAt: !3396)
!3402 = !DILocation(line: 90, column: 70, scope: !3386, inlinedAt: !3396)
!3403 = !DILocation(line: 90, column: 80, scope: !3386, inlinedAt: !3396)
!3404 = !DILocation(line: 92, column: 7, scope: !3405, inlinedAt: !3396)
!3405 = distinct !DILexicalBlock(scope: !3386, file: !3250, line: 92, column: 7)
!3406 = !DILocation(line: 92, column: 7, scope: !3386, inlinedAt: !3396)
!3407 = !DILocation(line: 235, column: 12, scope: !3266)
!3408 = !DILocation(line: 235, column: 21, scope: !3266)
!3409 = !DILocation(line: 235, column: 5, scope: !3266)
!3410 = !DILocation(line: 146, column: 25, scope: !3280, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 167, column: 16, scope: !3295, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 236, column: 7, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3231, file: !171, line: 236, column: 7)
!3414 = !DILocation(line: 146, column: 41, scope: !3280, inlinedAt: !3411)
!3415 = !DILocation(line: 146, column: 50, scope: !3280, inlinedAt: !3411)
!3416 = !DILocation(line: 146, column: 60, scope: !3280, inlinedAt: !3411)
!3417 = !DILocation(line: 146, column: 70, scope: !3280, inlinedAt: !3411)
!3418 = !DILocation(line: 146, column: 80, scope: !3280, inlinedAt: !3411)
!3419 = !DILocation(line: 146, column: 90, scope: !3280, inlinedAt: !3411)
!3420 = !DILocation(line: 146, column: 100, scope: !3280, inlinedAt: !3411)
!3421 = !DILocation(line: 146, column: 110, scope: !3280, inlinedAt: !3411)
!3422 = !DILocation(line: 146, column: 120, scope: !3280, inlinedAt: !3411)
!3423 = !DILocation(line: 148, column: 7, scope: !3307, inlinedAt: !3411)
!3424 = !DILocation(line: 132, column: 25, scope: !3309, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 153, column: 16, scope: !3323, inlinedAt: !3411)
!3426 = !DILocation(line: 132, column: 41, scope: !3309, inlinedAt: !3425)
!3427 = !DILocation(line: 132, column: 50, scope: !3309, inlinedAt: !3425)
!3428 = !DILocation(line: 132, column: 60, scope: !3309, inlinedAt: !3425)
!3429 = !DILocation(line: 132, column: 70, scope: !3309, inlinedAt: !3425)
!3430 = !DILocation(line: 132, column: 80, scope: !3309, inlinedAt: !3425)
!3431 = !DILocation(line: 132, column: 90, scope: !3309, inlinedAt: !3425)
!3432 = !DILocation(line: 132, column: 100, scope: !3309, inlinedAt: !3425)
!3433 = !DILocation(line: 132, column: 110, scope: !3309, inlinedAt: !3425)
!3434 = !DILocation(line: 134, column: 7, scope: !3334, inlinedAt: !3425)
!3435 = !DILocation(line: 134, column: 7, scope: !3309, inlinedAt: !3425)
!3436 = !DILocation(line: 118, column: 25, scope: !3336, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 139, column: 16, scope: !3349, inlinedAt: !3425)
!3438 = !DILocation(line: 118, column: 41, scope: !3336, inlinedAt: !3437)
!3439 = !DILocation(line: 118, column: 50, scope: !3336, inlinedAt: !3437)
!3440 = !DILocation(line: 118, column: 60, scope: !3336, inlinedAt: !3437)
!3441 = !DILocation(line: 118, column: 70, scope: !3336, inlinedAt: !3437)
!3442 = !DILocation(line: 118, column: 80, scope: !3336, inlinedAt: !3437)
!3443 = !DILocation(line: 118, column: 90, scope: !3336, inlinedAt: !3437)
!3444 = !DILocation(line: 118, column: 100, scope: !3336, inlinedAt: !3437)
!3445 = !DILocation(line: 120, column: 7, scope: !3359, inlinedAt: !3437)
!3446 = !DILocation(line: 120, column: 7, scope: !3336, inlinedAt: !3437)
!3447 = !DILocation(line: 104, column: 25, scope: !3362, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 125, column: 16, scope: !3374, inlinedAt: !3437)
!3449 = !DILocation(line: 104, column: 41, scope: !3362, inlinedAt: !3448)
!3450 = !DILocation(line: 104, column: 50, scope: !3362, inlinedAt: !3448)
!3451 = !DILocation(line: 104, column: 60, scope: !3362, inlinedAt: !3448)
!3452 = !DILocation(line: 104, column: 70, scope: !3362, inlinedAt: !3448)
!3453 = !DILocation(line: 104, column: 80, scope: !3362, inlinedAt: !3448)
!3454 = !DILocation(line: 104, column: 90, scope: !3362, inlinedAt: !3448)
!3455 = !DILocation(line: 106, column: 7, scope: !3383, inlinedAt: !3448)
!3456 = !DILocation(line: 106, column: 7, scope: !3362, inlinedAt: !3448)
!3457 = !DILocation(line: 90, column: 25, scope: !3386, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 111, column: 16, scope: !3397, inlinedAt: !3448)
!3459 = !DILocation(line: 90, column: 41, scope: !3386, inlinedAt: !3458)
!3460 = !DILocation(line: 90, column: 50, scope: !3386, inlinedAt: !3458)
!3461 = !DILocation(line: 90, column: 60, scope: !3386, inlinedAt: !3458)
!3462 = !DILocation(line: 90, column: 70, scope: !3386, inlinedAt: !3458)
!3463 = !DILocation(line: 90, column: 80, scope: !3386, inlinedAt: !3458)
!3464 = !DILocation(line: 92, column: 7, scope: !3405, inlinedAt: !3458)
!3465 = !DILocation(line: 92, column: 7, scope: !3386, inlinedAt: !3458)
!3466 = !DILocalVariable(name: "s1", arg: 1, scope: !3467, file: !3250, line: 76, type: !40)
!3467 = distinct !DISubprogram(name: "strcaseeq6", scope: !3250, file: !3250, line: 76, type: !3468, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!57, !40, !40, !42, !42, !42}
!3470 = !{!3466, !3471, !3472, !3473, !3474}
!3471 = !DILocalVariable(name: "s2", arg: 2, scope: !3467, file: !3250, line: 76, type: !40)
!3472 = !DILocalVariable(name: "s26", arg: 3, scope: !3467, file: !3250, line: 76, type: !42)
!3473 = !DILocalVariable(name: "s27", arg: 4, scope: !3467, file: !3250, line: 76, type: !42)
!3474 = !DILocalVariable(name: "s28", arg: 5, scope: !3467, file: !3250, line: 76, type: !42)
!3475 = !DILocation(line: 76, column: 25, scope: !3467, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 97, column: 16, scope: !3477, inlinedAt: !3458)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !3250, line: 94, column: 11)
!3478 = distinct !DILexicalBlock(scope: !3405, file: !3250, line: 93, column: 5)
!3479 = !DILocation(line: 76, column: 41, scope: !3467, inlinedAt: !3476)
!3480 = !DILocation(line: 76, column: 50, scope: !3467, inlinedAt: !3476)
!3481 = !DILocation(line: 76, column: 60, scope: !3467, inlinedAt: !3476)
!3482 = !DILocation(line: 76, column: 70, scope: !3467, inlinedAt: !3476)
!3483 = !DILocation(line: 78, column: 7, scope: !3484, inlinedAt: !3476)
!3484 = distinct !DILexicalBlock(scope: !3467, file: !3250, line: 78, column: 7)
!3485 = !DILocation(line: 78, column: 7, scope: !3467, inlinedAt: !3476)
!3486 = !DILocalVariable(name: "s1", arg: 1, scope: !3487, file: !3250, line: 62, type: !40)
!3487 = distinct !DISubprogram(name: "strcaseeq7", scope: !3250, file: !3250, line: 62, type: !3488, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!57, !40, !40, !42, !42}
!3490 = !{!3486, !3491, !3492, !3493}
!3491 = !DILocalVariable(name: "s2", arg: 2, scope: !3487, file: !3250, line: 62, type: !40)
!3492 = !DILocalVariable(name: "s27", arg: 3, scope: !3487, file: !3250, line: 62, type: !42)
!3493 = !DILocalVariable(name: "s28", arg: 4, scope: !3487, file: !3250, line: 62, type: !42)
!3494 = !DILocation(line: 62, column: 25, scope: !3487, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 83, column: 16, scope: !3496, inlinedAt: !3476)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !3250, line: 80, column: 11)
!3497 = distinct !DILexicalBlock(scope: !3484, file: !3250, line: 79, column: 5)
!3498 = !DILocation(line: 62, column: 41, scope: !3487, inlinedAt: !3495)
!3499 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !3495)
!3500 = !DILocation(line: 62, column: 60, scope: !3487, inlinedAt: !3495)
!3501 = !DILocation(line: 64, column: 7, scope: !3502, inlinedAt: !3495)
!3502 = distinct !DILexicalBlock(scope: !3487, file: !3250, line: 64, column: 7)
!3503 = !DILocation(line: 236, column: 7, scope: !3231)
!3504 = !DILocation(line: 237, column: 12, scope: !3413)
!3505 = !DILocation(line: 237, column: 21, scope: !3413)
!3506 = !DILocation(line: 237, column: 5, scope: !3413)
!3507 = !DILocation(line: 239, column: 13, scope: !3231)
!3508 = !DILocation(line: 239, column: 11, scope: !3231)
!3509 = !DILocation(line: 239, column: 3, scope: !3231)
!3510 = !DILocation(line: 0, scope: !3231)
!3511 = !DILocation(line: 240, column: 1, scope: !3231)
!3512 = distinct !DISubprogram(name: "quotearg_alloc", scope: !171, file: !171, line: 799, type: !3513, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3515)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!74, !40, !166, !2554}
!3515 = !{!3516, !3517, !3518}
!3516 = !DILocalVariable(name: "arg", arg: 1, scope: !3512, file: !171, line: 799, type: !40)
!3517 = !DILocalVariable(name: "argsize", arg: 2, scope: !3512, file: !171, line: 799, type: !166)
!3518 = !DILocalVariable(name: "o", arg: 3, scope: !3512, file: !171, line: 800, type: !2554)
!3519 = !DILocation(line: 799, column: 29, scope: !3512)
!3520 = !DILocation(line: 799, column: 41, scope: !3512)
!3521 = !DILocation(line: 800, column: 47, scope: !3512)
!3522 = !DILocalVariable(name: "arg", arg: 1, scope: !3523, file: !171, line: 812, type: !40)
!3523 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !171, file: !171, line: 812, type: !3524, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!74, !40, !166, !238, !2554}
!3526 = !{!3522, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534}
!3527 = !DILocalVariable(name: "argsize", arg: 2, scope: !3523, file: !171, line: 812, type: !166)
!3528 = !DILocalVariable(name: "size", arg: 3, scope: !3523, file: !171, line: 812, type: !238)
!3529 = !DILocalVariable(name: "o", arg: 4, scope: !3523, file: !171, line: 813, type: !2554)
!3530 = !DILocalVariable(name: "p", scope: !3523, file: !171, line: 815, type: !2554)
!3531 = !DILocalVariable(name: "e", scope: !3523, file: !171, line: 816, type: !57)
!3532 = !DILocalVariable(name: "flags", scope: !3523, file: !171, line: 818, type: !57)
!3533 = !DILocalVariable(name: "bufsize", scope: !3523, file: !171, line: 819, type: !166)
!3534 = !DILocalVariable(name: "buf", scope: !3523, file: !171, line: 823, type: !74)
!3535 = !DILocation(line: 812, column: 33, scope: !3523, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 802, column: 10, scope: !3512)
!3537 = !DILocation(line: 812, column: 45, scope: !3523, inlinedAt: !3536)
!3538 = !DILocation(line: 812, column: 62, scope: !3523, inlinedAt: !3536)
!3539 = !DILocation(line: 813, column: 51, scope: !3523, inlinedAt: !3536)
!3540 = !DILocation(line: 815, column: 37, scope: !3523, inlinedAt: !3536)
!3541 = !DILocation(line: 815, column: 33, scope: !3523, inlinedAt: !3536)
!3542 = !DILocation(line: 816, column: 11, scope: !3523, inlinedAt: !3536)
!3543 = !DILocation(line: 816, column: 7, scope: !3523, inlinedAt: !3536)
!3544 = !DILocation(line: 818, column: 18, scope: !3523, inlinedAt: !3536)
!3545 = !DILocation(line: 818, column: 24, scope: !3523, inlinedAt: !3536)
!3546 = !DILocation(line: 818, column: 7, scope: !3523, inlinedAt: !3536)
!3547 = !DILocation(line: 819, column: 69, scope: !3523, inlinedAt: !3536)
!3548 = !DILocation(line: 820, column: 53, scope: !3523, inlinedAt: !3536)
!3549 = !DILocation(line: 821, column: 49, scope: !3523, inlinedAt: !3536)
!3550 = !DILocation(line: 822, column: 49, scope: !3523, inlinedAt: !3536)
!3551 = !DILocation(line: 819, column: 20, scope: !3523, inlinedAt: !3536)
!3552 = !DILocation(line: 822, column: 62, scope: !3523, inlinedAt: !3536)
!3553 = !DILocation(line: 819, column: 10, scope: !3523, inlinedAt: !3536)
!3554 = !DILocalVariable(name: "n", arg: 1, scope: !3555, file: !234, line: 216, type: !166)
!3555 = distinct !DISubprogram(name: "xcharalloc", scope: !234, file: !234, line: 216, type: !3556, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3557)
!3556 = !DISubroutineType(types: !278)
!3557 = !{!3554}
!3558 = !DILocation(line: 216, column: 20, scope: !3555, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 823, column: 15, scope: !3523, inlinedAt: !3536)
!3560 = !DILocation(line: 218, column: 10, scope: !3555, inlinedAt: !3559)
!3561 = !DILocation(line: 823, column: 9, scope: !3523, inlinedAt: !3536)
!3562 = !DILocation(line: 824, column: 60, scope: !3523, inlinedAt: !3536)
!3563 = !DILocation(line: 826, column: 32, scope: !3523, inlinedAt: !3536)
!3564 = !DILocation(line: 826, column: 47, scope: !3523, inlinedAt: !3536)
!3565 = !DILocation(line: 824, column: 3, scope: !3523, inlinedAt: !3536)
!3566 = !DILocation(line: 827, column: 9, scope: !3523, inlinedAt: !3536)
!3567 = !DILocation(line: 802, column: 3, scope: !3512)
!3568 = !DILocation(line: 812, column: 33, scope: !3523)
!3569 = !DILocation(line: 812, column: 45, scope: !3523)
!3570 = !DILocation(line: 812, column: 62, scope: !3523)
!3571 = !DILocation(line: 813, column: 51, scope: !3523)
!3572 = !DILocation(line: 815, column: 37, scope: !3523)
!3573 = !DILocation(line: 815, column: 33, scope: !3523)
!3574 = !DILocation(line: 816, column: 11, scope: !3523)
!3575 = !DILocation(line: 816, column: 7, scope: !3523)
!3576 = !DILocation(line: 818, column: 18, scope: !3523)
!3577 = !DILocation(line: 818, column: 27, scope: !3523)
!3578 = !DILocation(line: 818, column: 24, scope: !3523)
!3579 = !DILocation(line: 818, column: 7, scope: !3523)
!3580 = !DILocation(line: 819, column: 69, scope: !3523)
!3581 = !DILocation(line: 820, column: 53, scope: !3523)
!3582 = !DILocation(line: 821, column: 49, scope: !3523)
!3583 = !DILocation(line: 822, column: 49, scope: !3523)
!3584 = !DILocation(line: 819, column: 20, scope: !3523)
!3585 = !DILocation(line: 822, column: 62, scope: !3523)
!3586 = !DILocation(line: 819, column: 10, scope: !3523)
!3587 = !DILocation(line: 216, column: 20, scope: !3555, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 823, column: 15, scope: !3523)
!3589 = !DILocation(line: 218, column: 10, scope: !3555, inlinedAt: !3588)
!3590 = !DILocation(line: 823, column: 9, scope: !3523)
!3591 = !DILocation(line: 824, column: 60, scope: !3523)
!3592 = !DILocation(line: 826, column: 32, scope: !3523)
!3593 = !DILocation(line: 826, column: 47, scope: !3523)
!3594 = !DILocation(line: 824, column: 3, scope: !3523)
!3595 = !DILocation(line: 827, column: 9, scope: !3523)
!3596 = !DILocation(line: 828, column: 7, scope: !3523)
!3597 = !DILocation(line: 829, column: 11, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3523, file: !171, line: 828, column: 7)
!3599 = !DILocation(line: 829, column: 5, scope: !3598)
!3600 = !DILocation(line: 830, column: 3, scope: !3523)
!3601 = distinct !DISubprogram(name: "quotearg_free", scope: !171, file: !171, line: 848, type: !1166, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3602)
!3602 = !{!3603, !3604}
!3603 = !DILocalVariable(name: "sv", scope: !3601, file: !171, line: 850, type: !197)
!3604 = !DILocalVariable(name: "i", scope: !3601, file: !171, line: 851, type: !57)
!3605 = !DILocation(line: 850, column: 24, scope: !3601)
!3606 = !DILocation(line: 850, column: 19, scope: !3601)
!3607 = !DILocation(line: 851, column: 7, scope: !3601)
!3608 = !DILocation(line: 852, column: 19, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !171, line: 852, column: 3)
!3610 = distinct !DILexicalBlock(scope: !3601, file: !171, line: 852, column: 3)
!3611 = !DILocation(line: 852, column: 17, scope: !3609)
!3612 = !DILocation(line: 852, column: 3, scope: !3610)
!3613 = !DILocation(line: 853, column: 17, scope: !3609)
!3614 = !{!3615, !727, i64 8}
!3615 = !{!"slotvec", !968, i64 0, !727, i64 8}
!3616 = !DILocation(line: 853, column: 5, scope: !3609)
!3617 = !DILocation(line: 852, column: 28, scope: !3609)
!3618 = distinct !{!3618, !3612, !3619}
!3619 = !DILocation(line: 853, column: 20, scope: !3610)
!3620 = !DILocation(line: 854, column: 13, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3601, file: !171, line: 854, column: 7)
!3622 = !DILocation(line: 854, column: 17, scope: !3621)
!3623 = !DILocation(line: 854, column: 7, scope: !3601)
!3624 = !DILocation(line: 856, column: 7, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3621, file: !171, line: 855, column: 5)
!3626 = !DILocation(line: 857, column: 21, scope: !3625)
!3627 = !{!3615, !968, i64 0}
!3628 = !DILocation(line: 858, column: 20, scope: !3625)
!3629 = !DILocation(line: 859, column: 5, scope: !3625)
!3630 = !DILocation(line: 860, column: 10, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3601, file: !171, line: 860, column: 7)
!3632 = !DILocation(line: 860, column: 7, scope: !3601)
!3633 = !DILocation(line: 862, column: 13, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3631, file: !171, line: 861, column: 5)
!3635 = !DILocation(line: 862, column: 7, scope: !3634)
!3636 = !DILocation(line: 863, column: 15, scope: !3634)
!3637 = !DILocation(line: 864, column: 5, scope: !3634)
!3638 = !DILocation(line: 865, column: 10, scope: !3601)
!3639 = !DILocation(line: 866, column: 1, scope: !3601)
!3640 = distinct !DISubprogram(name: "quotearg_n", scope: !171, file: !171, line: 931, type: !3641, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3643)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!74, !57, !40}
!3643 = !{!3644, !3645}
!3644 = !DILocalVariable(name: "n", arg: 1, scope: !3640, file: !171, line: 931, type: !57)
!3645 = !DILocalVariable(name: "arg", arg: 2, scope: !3640, file: !171, line: 931, type: !40)
!3646 = !DILocation(line: 931, column: 17, scope: !3640)
!3647 = !DILocation(line: 931, column: 32, scope: !3640)
!3648 = !DILocation(line: 933, column: 10, scope: !3640)
!3649 = !DILocation(line: 933, column: 3, scope: !3640)
!3650 = distinct !DISubprogram(name: "quotearg_n_options", scope: !171, file: !171, line: 877, type: !3651, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!74, !57, !40, !166, !2554}
!3653 = !{!3654, !3655, !3656, !3657, !3658, !3659, !3660, !3663, !3664, !3666, !3667, !3668}
!3654 = !DILocalVariable(name: "n", arg: 1, scope: !3650, file: !171, line: 877, type: !57)
!3655 = !DILocalVariable(name: "arg", arg: 2, scope: !3650, file: !171, line: 877, type: !40)
!3656 = !DILocalVariable(name: "argsize", arg: 3, scope: !3650, file: !171, line: 877, type: !166)
!3657 = !DILocalVariable(name: "options", arg: 4, scope: !3650, file: !171, line: 878, type: !2554)
!3658 = !DILocalVariable(name: "e", scope: !3650, file: !171, line: 880, type: !57)
!3659 = !DILocalVariable(name: "sv", scope: !3650, file: !171, line: 882, type: !197)
!3660 = !DILocalVariable(name: "preallocated", scope: !3661, file: !171, line: 889, type: !109)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !171, line: 888, column: 5)
!3662 = distinct !DILexicalBlock(scope: !3650, file: !171, line: 887, column: 7)
!3663 = !DILocalVariable(name: "nmax", scope: !3661, file: !171, line: 890, type: !57)
!3664 = !DILocalVariable(name: "size", scope: !3665, file: !171, line: 903, type: !166)
!3665 = distinct !DILexicalBlock(scope: !3650, file: !171, line: 902, column: 3)
!3666 = !DILocalVariable(name: "val", scope: !3665, file: !171, line: 904, type: !74)
!3667 = !DILocalVariable(name: "flags", scope: !3665, file: !171, line: 906, type: !57)
!3668 = !DILocalVariable(name: "qsize", scope: !3665, file: !171, line: 907, type: !166)
!3669 = !DILocation(line: 877, column: 25, scope: !3650)
!3670 = !DILocation(line: 877, column: 40, scope: !3650)
!3671 = !DILocation(line: 877, column: 52, scope: !3650)
!3672 = !DILocation(line: 878, column: 51, scope: !3650)
!3673 = !DILocation(line: 880, column: 11, scope: !3650)
!3674 = !DILocation(line: 880, column: 7, scope: !3650)
!3675 = !DILocation(line: 882, column: 24, scope: !3650)
!3676 = !DILocation(line: 882, column: 19, scope: !3650)
!3677 = !DILocation(line: 884, column: 9, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3650, file: !171, line: 884, column: 7)
!3679 = !DILocation(line: 884, column: 7, scope: !3650)
!3680 = !DILocation(line: 885, column: 5, scope: !3678)
!3681 = !DILocation(line: 887, column: 7, scope: !3662)
!3682 = !DILocation(line: 887, column: 14, scope: !3662)
!3683 = !DILocation(line: 887, column: 7, scope: !3650)
!3684 = !DILocation(line: 889, column: 31, scope: !3661)
!3685 = !DILocation(line: 890, column: 11, scope: !3661)
!3686 = !DILocation(line: 892, column: 16, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3661, file: !171, line: 892, column: 11)
!3688 = !DILocation(line: 892, column: 11, scope: !3661)
!3689 = !DILocation(line: 893, column: 9, scope: !3687)
!3690 = !DILocation(line: 895, column: 32, scope: !3661)
!3691 = !DILocation(line: 895, column: 61, scope: !3661)
!3692 = !DILocation(line: 895, column: 58, scope: !3661)
!3693 = !DILocation(line: 895, column: 66, scope: !3661)
!3694 = !DILocation(line: 895, column: 22, scope: !3661)
!3695 = !DILocation(line: 895, column: 15, scope: !3661)
!3696 = !DILocation(line: 896, column: 11, scope: !3661)
!3697 = !DILocation(line: 897, column: 15, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3661, file: !171, line: 896, column: 11)
!3699 = !{i64 0, i64 8, !967, i64 8, i64 8, !726}
!3700 = !DILocation(line: 897, column: 9, scope: !3698)
!3701 = !DILocation(line: 898, column: 20, scope: !3661)
!3702 = !DILocation(line: 898, column: 18, scope: !3661)
!3703 = !DILocation(line: 898, column: 7, scope: !3661)
!3704 = !DILocation(line: 898, column: 38, scope: !3661)
!3705 = !DILocation(line: 898, column: 31, scope: !3661)
!3706 = !DILocation(line: 898, column: 48, scope: !3661)
!3707 = !DILocation(line: 899, column: 14, scope: !3661)
!3708 = !DILocation(line: 900, column: 5, scope: !3661)
!3709 = !DILocation(line: 0, scope: !3650)
!3710 = !DILocation(line: 903, column: 19, scope: !3665)
!3711 = !DILocation(line: 903, column: 25, scope: !3665)
!3712 = !DILocation(line: 903, column: 12, scope: !3665)
!3713 = !DILocation(line: 904, column: 23, scope: !3665)
!3714 = !DILocation(line: 904, column: 11, scope: !3665)
!3715 = !DILocation(line: 906, column: 26, scope: !3665)
!3716 = !DILocation(line: 906, column: 32, scope: !3665)
!3717 = !DILocation(line: 906, column: 9, scope: !3665)
!3718 = !DILocation(line: 908, column: 55, scope: !3665)
!3719 = !DILocation(line: 909, column: 46, scope: !3665)
!3720 = !DILocation(line: 910, column: 55, scope: !3665)
!3721 = !DILocation(line: 911, column: 55, scope: !3665)
!3722 = !DILocation(line: 907, column: 20, scope: !3665)
!3723 = !DILocation(line: 907, column: 12, scope: !3665)
!3724 = !DILocation(line: 913, column: 14, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3665, file: !171, line: 913, column: 9)
!3726 = !DILocation(line: 913, column: 9, scope: !3665)
!3727 = !DILocation(line: 915, column: 35, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3725, file: !171, line: 914, column: 7)
!3729 = !DILocation(line: 915, column: 20, scope: !3728)
!3730 = !DILocation(line: 916, column: 17, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3728, file: !171, line: 916, column: 13)
!3732 = !DILocation(line: 916, column: 13, scope: !3728)
!3733 = !DILocation(line: 917, column: 11, scope: !3731)
!3734 = !DILocation(line: 216, column: 20, scope: !3555, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 918, column: 27, scope: !3728)
!3736 = !DILocation(line: 218, column: 10, scope: !3555, inlinedAt: !3735)
!3737 = !DILocation(line: 918, column: 19, scope: !3728)
!3738 = !DILocation(line: 919, column: 69, scope: !3728)
!3739 = !DILocation(line: 921, column: 44, scope: !3728)
!3740 = !DILocation(line: 922, column: 44, scope: !3728)
!3741 = !DILocation(line: 919, column: 9, scope: !3728)
!3742 = !DILocation(line: 923, column: 7, scope: !3728)
!3743 = !DILocation(line: 0, scope: !3665)
!3744 = !DILocation(line: 925, column: 11, scope: !3665)
!3745 = !DILocation(line: 926, column: 5, scope: !3665)
!3746 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !171, file: !171, line: 937, type: !3747, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!74, !57, !40, !166}
!3749 = !{!3750, !3751, !3752}
!3750 = !DILocalVariable(name: "n", arg: 1, scope: !3746, file: !171, line: 937, type: !57)
!3751 = !DILocalVariable(name: "arg", arg: 2, scope: !3746, file: !171, line: 937, type: !40)
!3752 = !DILocalVariable(name: "argsize", arg: 3, scope: !3746, file: !171, line: 937, type: !166)
!3753 = !DILocation(line: 937, column: 21, scope: !3746)
!3754 = !DILocation(line: 937, column: 36, scope: !3746)
!3755 = !DILocation(line: 937, column: 48, scope: !3746)
!3756 = !DILocation(line: 939, column: 10, scope: !3746)
!3757 = !DILocation(line: 939, column: 3, scope: !3746)
!3758 = distinct !DISubprogram(name: "quotearg", scope: !171, file: !171, line: 943, type: !3759, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3761)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!74, !40}
!3761 = !{!3762}
!3762 = !DILocalVariable(name: "arg", arg: 1, scope: !3758, file: !171, line: 943, type: !40)
!3763 = !DILocation(line: 943, column: 23, scope: !3758)
!3764 = !DILocation(line: 931, column: 17, scope: !3640, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 945, column: 10, scope: !3758)
!3766 = !DILocation(line: 931, column: 32, scope: !3640, inlinedAt: !3765)
!3767 = !DILocation(line: 933, column: 10, scope: !3640, inlinedAt: !3765)
!3768 = !DILocation(line: 945, column: 3, scope: !3758)
!3769 = distinct !DISubprogram(name: "quotearg_mem", scope: !171, file: !171, line: 949, type: !3770, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3772)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!74, !40, !166}
!3772 = !{!3773, !3774}
!3773 = !DILocalVariable(name: "arg", arg: 1, scope: !3769, file: !171, line: 949, type: !40)
!3774 = !DILocalVariable(name: "argsize", arg: 2, scope: !3769, file: !171, line: 949, type: !166)
!3775 = !DILocation(line: 949, column: 27, scope: !3769)
!3776 = !DILocation(line: 949, column: 39, scope: !3769)
!3777 = !DILocation(line: 937, column: 21, scope: !3746, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 951, column: 10, scope: !3769)
!3779 = !DILocation(line: 937, column: 36, scope: !3746, inlinedAt: !3778)
!3780 = !DILocation(line: 937, column: 48, scope: !3746, inlinedAt: !3778)
!3781 = !DILocation(line: 939, column: 10, scope: !3746, inlinedAt: !3778)
!3782 = !DILocation(line: 951, column: 3, scope: !3769)
!3783 = distinct !DISubprogram(name: "quotearg_n_style", scope: !171, file: !171, line: 955, type: !3784, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!74, !57, !11, !40}
!3786 = !{!3787, !3788, !3789, !3790}
!3787 = !DILocalVariable(name: "n", arg: 1, scope: !3783, file: !171, line: 955, type: !57)
!3788 = !DILocalVariable(name: "s", arg: 2, scope: !3783, file: !171, line: 955, type: !11)
!3789 = !DILocalVariable(name: "arg", arg: 3, scope: !3783, file: !171, line: 955, type: !40)
!3790 = !DILocalVariable(name: "o", scope: !3783, file: !171, line: 957, type: !2555)
!3791 = !DILocation(line: 955, column: 23, scope: !3783)
!3792 = !DILocation(line: 955, column: 45, scope: !3783)
!3793 = !DILocation(line: 955, column: 60, scope: !3783)
!3794 = !DILocation(line: 957, column: 3, scope: !3783)
!3795 = !DILocation(line: 957, column: 32, scope: !3783)
!3796 = !DILocalVariable(name: "style", arg: 1, scope: !3797, file: !171, line: 193, type: !11)
!3797 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !171, file: !171, line: 193, type: !3798, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3800)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!178, !11}
!3800 = !{!3796, !3801}
!3801 = !DILocalVariable(name: "o", scope: !3797, file: !171, line: 195, type: !178)
!3802 = !DILocation(line: 193, column: 48, scope: !3797, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 957, column: 36, scope: !3783)
!3804 = !DILocation(line: 195, column: 26, scope: !3797, inlinedAt: !3803)
!3805 = !{!3806}
!3806 = distinct !{!3806, !3807, !"quoting_options_from_style: argument 0"}
!3807 = distinct !{!3807, !"quoting_options_from_style"}
!3808 = !DILocation(line: 196, column: 13, scope: !3809, inlinedAt: !3803)
!3809 = distinct !DILexicalBlock(scope: !3797, file: !171, line: 196, column: 7)
!3810 = !DILocation(line: 196, column: 7, scope: !3797, inlinedAt: !3803)
!3811 = !DILocation(line: 197, column: 5, scope: !3809, inlinedAt: !3803)
!3812 = !DILocation(line: 198, column: 5, scope: !3797, inlinedAt: !3803)
!3813 = !DILocation(line: 198, column: 11, scope: !3797, inlinedAt: !3803)
!3814 = !DILocation(line: 958, column: 10, scope: !3783)
!3815 = !DILocation(line: 959, column: 1, scope: !3783)
!3816 = !DILocation(line: 958, column: 3, scope: !3783)
!3817 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !171, file: !171, line: 962, type: !3818, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!74, !57, !11, !40, !166}
!3820 = !{!3821, !3822, !3823, !3824, !3825}
!3821 = !DILocalVariable(name: "n", arg: 1, scope: !3817, file: !171, line: 962, type: !57)
!3822 = !DILocalVariable(name: "s", arg: 2, scope: !3817, file: !171, line: 962, type: !11)
!3823 = !DILocalVariable(name: "arg", arg: 3, scope: !3817, file: !171, line: 963, type: !40)
!3824 = !DILocalVariable(name: "argsize", arg: 4, scope: !3817, file: !171, line: 963, type: !166)
!3825 = !DILocalVariable(name: "o", scope: !3817, file: !171, line: 965, type: !2555)
!3826 = !DILocation(line: 962, column: 27, scope: !3817)
!3827 = !DILocation(line: 962, column: 49, scope: !3817)
!3828 = !DILocation(line: 963, column: 35, scope: !3817)
!3829 = !DILocation(line: 963, column: 47, scope: !3817)
!3830 = !DILocation(line: 965, column: 3, scope: !3817)
!3831 = !DILocation(line: 965, column: 32, scope: !3817)
!3832 = !DILocation(line: 193, column: 48, scope: !3797, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 965, column: 36, scope: !3817)
!3834 = !DILocation(line: 195, column: 26, scope: !3797, inlinedAt: !3833)
!3835 = !{!3836}
!3836 = distinct !{!3836, !3837, !"quoting_options_from_style: argument 0"}
!3837 = distinct !{!3837, !"quoting_options_from_style"}
!3838 = !DILocation(line: 196, column: 13, scope: !3809, inlinedAt: !3833)
!3839 = !DILocation(line: 196, column: 7, scope: !3797, inlinedAt: !3833)
!3840 = !DILocation(line: 197, column: 5, scope: !3809, inlinedAt: !3833)
!3841 = !DILocation(line: 198, column: 5, scope: !3797, inlinedAt: !3833)
!3842 = !DILocation(line: 198, column: 11, scope: !3797, inlinedAt: !3833)
!3843 = !DILocation(line: 966, column: 10, scope: !3817)
!3844 = !DILocation(line: 967, column: 1, scope: !3817)
!3845 = !DILocation(line: 966, column: 3, scope: !3817)
!3846 = distinct !DISubprogram(name: "quotearg_style", scope: !171, file: !171, line: 970, type: !3847, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!74, !11, !40}
!3849 = !{!3850, !3851}
!3850 = !DILocalVariable(name: "s", arg: 1, scope: !3846, file: !171, line: 970, type: !11)
!3851 = !DILocalVariable(name: "arg", arg: 2, scope: !3846, file: !171, line: 970, type: !40)
!3852 = !DILocation(line: 970, column: 36, scope: !3846)
!3853 = !DILocation(line: 970, column: 51, scope: !3846)
!3854 = !DILocation(line: 955, column: 23, scope: !3783, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 972, column: 10, scope: !3846)
!3856 = !DILocation(line: 955, column: 45, scope: !3783, inlinedAt: !3855)
!3857 = !DILocation(line: 955, column: 60, scope: !3783, inlinedAt: !3855)
!3858 = !DILocation(line: 957, column: 3, scope: !3783, inlinedAt: !3855)
!3859 = !DILocation(line: 957, column: 32, scope: !3783, inlinedAt: !3855)
!3860 = !DILocation(line: 193, column: 48, scope: !3797, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 957, column: 36, scope: !3783, inlinedAt: !3855)
!3862 = !DILocation(line: 195, column: 26, scope: !3797, inlinedAt: !3861)
!3863 = !{!3864}
!3864 = distinct !{!3864, !3865, !"quoting_options_from_style: argument 0"}
!3865 = distinct !{!3865, !"quoting_options_from_style"}
!3866 = !DILocation(line: 196, column: 13, scope: !3809, inlinedAt: !3861)
!3867 = !DILocation(line: 196, column: 7, scope: !3797, inlinedAt: !3861)
!3868 = !DILocation(line: 197, column: 5, scope: !3809, inlinedAt: !3861)
!3869 = !DILocation(line: 198, column: 5, scope: !3797, inlinedAt: !3861)
!3870 = !DILocation(line: 198, column: 11, scope: !3797, inlinedAt: !3861)
!3871 = !DILocation(line: 958, column: 10, scope: !3783, inlinedAt: !3855)
!3872 = !DILocation(line: 959, column: 1, scope: !3783, inlinedAt: !3855)
!3873 = !DILocation(line: 972, column: 3, scope: !3846)
!3874 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !171, file: !171, line: 976, type: !3875, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3877)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!74, !11, !40, !166}
!3877 = !{!3878, !3879, !3880}
!3878 = !DILocalVariable(name: "s", arg: 1, scope: !3874, file: !171, line: 976, type: !11)
!3879 = !DILocalVariable(name: "arg", arg: 2, scope: !3874, file: !171, line: 976, type: !40)
!3880 = !DILocalVariable(name: "argsize", arg: 3, scope: !3874, file: !171, line: 976, type: !166)
!3881 = !DILocation(line: 976, column: 40, scope: !3874)
!3882 = !DILocation(line: 976, column: 55, scope: !3874)
!3883 = !DILocation(line: 976, column: 67, scope: !3874)
!3884 = !DILocation(line: 962, column: 27, scope: !3817, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 978, column: 10, scope: !3874)
!3886 = !DILocation(line: 962, column: 49, scope: !3817, inlinedAt: !3885)
!3887 = !DILocation(line: 963, column: 35, scope: !3817, inlinedAt: !3885)
!3888 = !DILocation(line: 963, column: 47, scope: !3817, inlinedAt: !3885)
!3889 = !DILocation(line: 965, column: 3, scope: !3817, inlinedAt: !3885)
!3890 = !DILocation(line: 965, column: 32, scope: !3817, inlinedAt: !3885)
!3891 = !DILocation(line: 193, column: 48, scope: !3797, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 965, column: 36, scope: !3817, inlinedAt: !3885)
!3893 = !DILocation(line: 195, column: 26, scope: !3797, inlinedAt: !3892)
!3894 = !{!3895}
!3895 = distinct !{!3895, !3896, !"quoting_options_from_style: argument 0"}
!3896 = distinct !{!3896, !"quoting_options_from_style"}
!3897 = !DILocation(line: 196, column: 13, scope: !3809, inlinedAt: !3892)
!3898 = !DILocation(line: 196, column: 7, scope: !3797, inlinedAt: !3892)
!3899 = !DILocation(line: 197, column: 5, scope: !3809, inlinedAt: !3892)
!3900 = !DILocation(line: 198, column: 5, scope: !3797, inlinedAt: !3892)
!3901 = !DILocation(line: 198, column: 11, scope: !3797, inlinedAt: !3892)
!3902 = !DILocation(line: 966, column: 10, scope: !3817, inlinedAt: !3885)
!3903 = !DILocation(line: 967, column: 1, scope: !3817, inlinedAt: !3885)
!3904 = !DILocation(line: 978, column: 3, scope: !3874)
!3905 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !171, file: !171, line: 982, type: !3906, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!74, !40, !166, !42}
!3908 = !{!3909, !3910, !3911, !3912}
!3909 = !DILocalVariable(name: "arg", arg: 1, scope: !3905, file: !171, line: 982, type: !40)
!3910 = !DILocalVariable(name: "argsize", arg: 2, scope: !3905, file: !171, line: 982, type: !166)
!3911 = !DILocalVariable(name: "ch", arg: 3, scope: !3905, file: !171, line: 982, type: !42)
!3912 = !DILocalVariable(name: "options", scope: !3905, file: !171, line: 984, type: !178)
!3913 = !DILocation(line: 982, column: 32, scope: !3905)
!3914 = !DILocation(line: 982, column: 44, scope: !3905)
!3915 = !DILocation(line: 982, column: 58, scope: !3905)
!3916 = !DILocation(line: 984, column: 3, scope: !3905)
!3917 = !DILocation(line: 985, column: 13, scope: !3905)
!3918 = !{i64 0, i64 4, !1009, i64 4, i64 4, !794, i64 8, i64 32, !1009, i64 40, i64 8, !726, i64 48, i64 8, !726}
!3919 = !DILocation(line: 984, column: 26, scope: !3905)
!3920 = !DILocation(line: 152, column: 43, scope: !2576, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 986, column: 3, scope: !3905)
!3922 = !DILocation(line: 152, column: 51, scope: !2576, inlinedAt: !3921)
!3923 = !DILocation(line: 152, column: 58, scope: !2576, inlinedAt: !3921)
!3924 = !DILocation(line: 154, column: 17, scope: !2576, inlinedAt: !3921)
!3925 = !DILocation(line: 156, column: 62, scope: !2576, inlinedAt: !3921)
!3926 = !DILocation(line: 156, column: 57, scope: !2576, inlinedAt: !3921)
!3927 = !DILocation(line: 155, column: 17, scope: !2576, inlinedAt: !3921)
!3928 = !DILocation(line: 157, column: 15, scope: !2576, inlinedAt: !3921)
!3929 = !DILocation(line: 157, column: 7, scope: !2576, inlinedAt: !3921)
!3930 = !DILocation(line: 158, column: 12, scope: !2576, inlinedAt: !3921)
!3931 = !DILocation(line: 158, column: 15, scope: !2576, inlinedAt: !3921)
!3932 = !DILocation(line: 158, column: 25, scope: !2576, inlinedAt: !3921)
!3933 = !DILocation(line: 158, column: 7, scope: !2576, inlinedAt: !3921)
!3934 = !DILocation(line: 159, column: 18, scope: !2576, inlinedAt: !3921)
!3935 = !DILocation(line: 159, column: 23, scope: !2576, inlinedAt: !3921)
!3936 = !DILocation(line: 159, column: 6, scope: !2576, inlinedAt: !3921)
!3937 = !DILocation(line: 987, column: 10, scope: !3905)
!3938 = !DILocation(line: 988, column: 1, scope: !3905)
!3939 = !DILocation(line: 987, column: 3, scope: !3905)
!3940 = distinct !DISubprogram(name: "quotearg_char", scope: !171, file: !171, line: 991, type: !3941, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3943)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!74, !40, !42}
!3943 = !{!3944, !3945}
!3944 = !DILocalVariable(name: "arg", arg: 1, scope: !3940, file: !171, line: 991, type: !40)
!3945 = !DILocalVariable(name: "ch", arg: 2, scope: !3940, file: !171, line: 991, type: !42)
!3946 = !DILocation(line: 991, column: 28, scope: !3940)
!3947 = !DILocation(line: 991, column: 38, scope: !3940)
!3948 = !DILocation(line: 982, column: 32, scope: !3905, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 993, column: 10, scope: !3940)
!3950 = !DILocation(line: 982, column: 44, scope: !3905, inlinedAt: !3949)
!3951 = !DILocation(line: 982, column: 58, scope: !3905, inlinedAt: !3949)
!3952 = !DILocation(line: 984, column: 3, scope: !3905, inlinedAt: !3949)
!3953 = !DILocation(line: 985, column: 13, scope: !3905, inlinedAt: !3949)
!3954 = !DILocation(line: 984, column: 26, scope: !3905, inlinedAt: !3949)
!3955 = !DILocation(line: 152, column: 43, scope: !2576, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 986, column: 3, scope: !3905, inlinedAt: !3949)
!3957 = !DILocation(line: 152, column: 51, scope: !2576, inlinedAt: !3956)
!3958 = !DILocation(line: 152, column: 58, scope: !2576, inlinedAt: !3956)
!3959 = !DILocation(line: 154, column: 17, scope: !2576, inlinedAt: !3956)
!3960 = !DILocation(line: 156, column: 62, scope: !2576, inlinedAt: !3956)
!3961 = !DILocation(line: 156, column: 57, scope: !2576, inlinedAt: !3956)
!3962 = !DILocation(line: 155, column: 17, scope: !2576, inlinedAt: !3956)
!3963 = !DILocation(line: 157, column: 15, scope: !2576, inlinedAt: !3956)
!3964 = !DILocation(line: 157, column: 7, scope: !2576, inlinedAt: !3956)
!3965 = !DILocation(line: 158, column: 12, scope: !2576, inlinedAt: !3956)
!3966 = !DILocation(line: 158, column: 15, scope: !2576, inlinedAt: !3956)
!3967 = !DILocation(line: 158, column: 25, scope: !2576, inlinedAt: !3956)
!3968 = !DILocation(line: 158, column: 7, scope: !2576, inlinedAt: !3956)
!3969 = !DILocation(line: 159, column: 18, scope: !2576, inlinedAt: !3956)
!3970 = !DILocation(line: 159, column: 23, scope: !2576, inlinedAt: !3956)
!3971 = !DILocation(line: 159, column: 6, scope: !2576, inlinedAt: !3956)
!3972 = !DILocation(line: 987, column: 10, scope: !3905, inlinedAt: !3949)
!3973 = !DILocation(line: 988, column: 1, scope: !3905, inlinedAt: !3949)
!3974 = !DILocation(line: 993, column: 3, scope: !3940)
!3975 = distinct !DISubprogram(name: "quotearg_colon", scope: !171, file: !171, line: 997, type: !3759, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !3976)
!3976 = !{!3977}
!3977 = !DILocalVariable(name: "arg", arg: 1, scope: !3975, file: !171, line: 997, type: !40)
!3978 = !DILocation(line: 997, column: 29, scope: !3975)
!3979 = !DILocation(line: 991, column: 28, scope: !3940, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 999, column: 10, scope: !3975)
!3981 = !DILocation(line: 991, column: 38, scope: !3940, inlinedAt: !3980)
!3982 = !DILocation(line: 982, column: 32, scope: !3905, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 993, column: 10, scope: !3940, inlinedAt: !3980)
!3984 = !DILocation(line: 982, column: 44, scope: !3905, inlinedAt: !3983)
!3985 = !DILocation(line: 982, column: 58, scope: !3905, inlinedAt: !3983)
!3986 = !DILocation(line: 984, column: 3, scope: !3905, inlinedAt: !3983)
!3987 = !DILocation(line: 985, column: 13, scope: !3905, inlinedAt: !3983)
!3988 = !DILocation(line: 984, column: 26, scope: !3905, inlinedAt: !3983)
!3989 = !DILocation(line: 152, column: 43, scope: !2576, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 986, column: 3, scope: !3905, inlinedAt: !3983)
!3991 = !DILocation(line: 152, column: 51, scope: !2576, inlinedAt: !3990)
!3992 = !DILocation(line: 152, column: 58, scope: !2576, inlinedAt: !3990)
!3993 = !DILocation(line: 154, column: 17, scope: !2576, inlinedAt: !3990)
!3994 = !DILocation(line: 156, column: 57, scope: !2576, inlinedAt: !3990)
!3995 = !DILocation(line: 155, column: 17, scope: !2576, inlinedAt: !3990)
!3996 = !DILocation(line: 157, column: 7, scope: !2576, inlinedAt: !3990)
!3997 = !DILocation(line: 158, column: 12, scope: !2576, inlinedAt: !3990)
!3998 = !DILocation(line: 159, column: 6, scope: !2576, inlinedAt: !3990)
!3999 = !DILocation(line: 987, column: 10, scope: !3905, inlinedAt: !3983)
!4000 = !DILocation(line: 988, column: 1, scope: !3905, inlinedAt: !3983)
!4001 = !DILocation(line: 999, column: 3, scope: !3975)
!4002 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !171, file: !171, line: 1003, type: !3770, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !4003)
!4003 = !{!4004, !4005}
!4004 = !DILocalVariable(name: "arg", arg: 1, scope: !4002, file: !171, line: 1003, type: !40)
!4005 = !DILocalVariable(name: "argsize", arg: 2, scope: !4002, file: !171, line: 1003, type: !166)
!4006 = !DILocation(line: 1003, column: 33, scope: !4002)
!4007 = !DILocation(line: 1003, column: 45, scope: !4002)
!4008 = !DILocation(line: 982, column: 32, scope: !3905, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 1005, column: 10, scope: !4002)
!4010 = !DILocation(line: 982, column: 44, scope: !3905, inlinedAt: !4009)
!4011 = !DILocation(line: 982, column: 58, scope: !3905, inlinedAt: !4009)
!4012 = !DILocation(line: 984, column: 3, scope: !3905, inlinedAt: !4009)
!4013 = !DILocation(line: 985, column: 13, scope: !3905, inlinedAt: !4009)
!4014 = !DILocation(line: 984, column: 26, scope: !3905, inlinedAt: !4009)
!4015 = !DILocation(line: 152, column: 43, scope: !2576, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 986, column: 3, scope: !3905, inlinedAt: !4009)
!4017 = !DILocation(line: 152, column: 51, scope: !2576, inlinedAt: !4016)
!4018 = !DILocation(line: 152, column: 58, scope: !2576, inlinedAt: !4016)
!4019 = !DILocation(line: 154, column: 17, scope: !2576, inlinedAt: !4016)
!4020 = !DILocation(line: 156, column: 57, scope: !2576, inlinedAt: !4016)
!4021 = !DILocation(line: 155, column: 17, scope: !2576, inlinedAt: !4016)
!4022 = !DILocation(line: 157, column: 7, scope: !2576, inlinedAt: !4016)
!4023 = !DILocation(line: 158, column: 12, scope: !2576, inlinedAt: !4016)
!4024 = !DILocation(line: 159, column: 6, scope: !2576, inlinedAt: !4016)
!4025 = !DILocation(line: 987, column: 10, scope: !3905, inlinedAt: !4009)
!4026 = !DILocation(line: 988, column: 1, scope: !3905, inlinedAt: !4009)
!4027 = !DILocation(line: 1005, column: 3, scope: !4002)
!4028 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !171, file: !171, line: 1009, type: !3784, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !4029)
!4029 = !{!4030, !4031, !4032, !4033}
!4030 = !DILocalVariable(name: "n", arg: 1, scope: !4028, file: !171, line: 1009, type: !57)
!4031 = !DILocalVariable(name: "s", arg: 2, scope: !4028, file: !171, line: 1009, type: !11)
!4032 = !DILocalVariable(name: "arg", arg: 3, scope: !4028, file: !171, line: 1009, type: !40)
!4033 = !DILocalVariable(name: "options", scope: !4028, file: !171, line: 1011, type: !178)
!4034 = !DILocation(line: 195, column: 26, scope: !3797, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 1012, column: 13, scope: !4028)
!4036 = !DILocation(line: 1009, column: 29, scope: !4028)
!4037 = !DILocation(line: 1009, column: 51, scope: !4028)
!4038 = !DILocation(line: 1009, column: 66, scope: !4028)
!4039 = !DILocation(line: 1011, column: 3, scope: !4028)
!4040 = !DILocation(line: 1012, column: 13, scope: !4028)
!4041 = !DILocation(line: 193, column: 48, scope: !3797, inlinedAt: !4035)
!4042 = !{!4043}
!4043 = distinct !{!4043, !4044, !"quoting_options_from_style: argument 0"}
!4044 = distinct !{!4044, !"quoting_options_from_style"}
!4045 = !DILocation(line: 196, column: 13, scope: !3809, inlinedAt: !4035)
!4046 = !DILocation(line: 196, column: 7, scope: !3797, inlinedAt: !4035)
!4047 = !DILocation(line: 197, column: 5, scope: !3809, inlinedAt: !4035)
!4048 = !DILocation(line: 1011, column: 26, scope: !4028)
!4049 = !DILocation(line: 152, column: 43, scope: !2576, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 1013, column: 3, scope: !4028)
!4051 = !DILocation(line: 152, column: 51, scope: !2576, inlinedAt: !4050)
!4052 = !DILocation(line: 152, column: 58, scope: !2576, inlinedAt: !4050)
!4053 = !DILocation(line: 154, column: 17, scope: !2576, inlinedAt: !4050)
!4054 = !DILocation(line: 156, column: 57, scope: !2576, inlinedAt: !4050)
!4055 = !DILocation(line: 155, column: 17, scope: !2576, inlinedAt: !4050)
!4056 = !DILocation(line: 157, column: 7, scope: !2576, inlinedAt: !4050)
!4057 = !DILocation(line: 158, column: 12, scope: !2576, inlinedAt: !4050)
!4058 = !DILocation(line: 159, column: 6, scope: !2576, inlinedAt: !4050)
!4059 = !DILocation(line: 1014, column: 10, scope: !4028)
!4060 = !DILocation(line: 1015, column: 1, scope: !4028)
!4061 = !DILocation(line: 1014, column: 3, scope: !4028)
!4062 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !171, file: !171, line: 1018, type: !4063, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!74, !57, !40, !40, !40}
!4065 = !{!4066, !4067, !4068, !4069}
!4066 = !DILocalVariable(name: "n", arg: 1, scope: !4062, file: !171, line: 1018, type: !57)
!4067 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4062, file: !171, line: 1018, type: !40)
!4068 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4062, file: !171, line: 1019, type: !40)
!4069 = !DILocalVariable(name: "arg", arg: 4, scope: !4062, file: !171, line: 1019, type: !40)
!4070 = !DILocation(line: 1018, column: 24, scope: !4062)
!4071 = !DILocation(line: 1018, column: 39, scope: !4062)
!4072 = !DILocation(line: 1019, column: 32, scope: !4062)
!4073 = !DILocation(line: 1019, column: 57, scope: !4062)
!4074 = !DILocalVariable(name: "n", arg: 1, scope: !4075, file: !171, line: 1026, type: !57)
!4075 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !171, file: !171, line: 1026, type: !4076, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !4078)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!74, !57, !40, !40, !40, !166}
!4078 = !{!4074, !4079, !4080, !4081, !4082, !4083}
!4079 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4075, file: !171, line: 1026, type: !40)
!4080 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4075, file: !171, line: 1027, type: !40)
!4081 = !DILocalVariable(name: "arg", arg: 4, scope: !4075, file: !171, line: 1028, type: !40)
!4082 = !DILocalVariable(name: "argsize", arg: 5, scope: !4075, file: !171, line: 1028, type: !166)
!4083 = !DILocalVariable(name: "o", scope: !4075, file: !171, line: 1030, type: !178)
!4084 = !DILocation(line: 1026, column: 28, scope: !4075, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 1021, column: 10, scope: !4062)
!4086 = !DILocation(line: 1026, column: 43, scope: !4075, inlinedAt: !4085)
!4087 = !DILocation(line: 1027, column: 36, scope: !4075, inlinedAt: !4085)
!4088 = !DILocation(line: 1028, column: 36, scope: !4075, inlinedAt: !4085)
!4089 = !DILocation(line: 1028, column: 48, scope: !4075, inlinedAt: !4085)
!4090 = !DILocation(line: 1030, column: 3, scope: !4075, inlinedAt: !4085)
!4091 = !DILocation(line: 1030, column: 30, scope: !4075, inlinedAt: !4085)
!4092 = !DILocation(line: 1030, column: 26, scope: !4075, inlinedAt: !4085)
!4093 = !DILocation(line: 179, column: 45, scope: !2624, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 1031, column: 3, scope: !4075, inlinedAt: !4085)
!4095 = !DILocation(line: 180, column: 33, scope: !2624, inlinedAt: !4094)
!4096 = !DILocation(line: 180, column: 57, scope: !2624, inlinedAt: !4094)
!4097 = !DILocation(line: 184, column: 6, scope: !2624, inlinedAt: !4094)
!4098 = !DILocation(line: 184, column: 12, scope: !2624, inlinedAt: !4094)
!4099 = !DILocation(line: 185, column: 8, scope: !2640, inlinedAt: !4094)
!4100 = !DILocation(line: 185, column: 23, scope: !2640, inlinedAt: !4094)
!4101 = !DILocation(line: 185, column: 19, scope: !2640, inlinedAt: !4094)
!4102 = !DILocation(line: 186, column: 5, scope: !2640, inlinedAt: !4094)
!4103 = !DILocation(line: 187, column: 6, scope: !2624, inlinedAt: !4094)
!4104 = !DILocation(line: 187, column: 17, scope: !2624, inlinedAt: !4094)
!4105 = !DILocation(line: 188, column: 6, scope: !2624, inlinedAt: !4094)
!4106 = !DILocation(line: 188, column: 18, scope: !2624, inlinedAt: !4094)
!4107 = !DILocation(line: 1032, column: 10, scope: !4075, inlinedAt: !4085)
!4108 = !DILocation(line: 1033, column: 1, scope: !4075, inlinedAt: !4085)
!4109 = !DILocation(line: 1021, column: 3, scope: !4062)
!4110 = !DILocation(line: 1026, column: 28, scope: !4075)
!4111 = !DILocation(line: 1026, column: 43, scope: !4075)
!4112 = !DILocation(line: 1027, column: 36, scope: !4075)
!4113 = !DILocation(line: 1028, column: 36, scope: !4075)
!4114 = !DILocation(line: 1028, column: 48, scope: !4075)
!4115 = !DILocation(line: 1030, column: 3, scope: !4075)
!4116 = !DILocation(line: 1030, column: 30, scope: !4075)
!4117 = !DILocation(line: 1030, column: 26, scope: !4075)
!4118 = !DILocation(line: 179, column: 45, scope: !2624, inlinedAt: !4119)
!4119 = distinct !DILocation(line: 1031, column: 3, scope: !4075)
!4120 = !DILocation(line: 180, column: 33, scope: !2624, inlinedAt: !4119)
!4121 = !DILocation(line: 180, column: 57, scope: !2624, inlinedAt: !4119)
!4122 = !DILocation(line: 184, column: 6, scope: !2624, inlinedAt: !4119)
!4123 = !DILocation(line: 184, column: 12, scope: !2624, inlinedAt: !4119)
!4124 = !DILocation(line: 185, column: 8, scope: !2640, inlinedAt: !4119)
!4125 = !DILocation(line: 185, column: 23, scope: !2640, inlinedAt: !4119)
!4126 = !DILocation(line: 185, column: 19, scope: !2640, inlinedAt: !4119)
!4127 = !DILocation(line: 186, column: 5, scope: !2640, inlinedAt: !4119)
!4128 = !DILocation(line: 187, column: 6, scope: !2624, inlinedAt: !4119)
!4129 = !DILocation(line: 187, column: 17, scope: !2624, inlinedAt: !4119)
!4130 = !DILocation(line: 188, column: 6, scope: !2624, inlinedAt: !4119)
!4131 = !DILocation(line: 188, column: 18, scope: !2624, inlinedAt: !4119)
!4132 = !DILocation(line: 1032, column: 10, scope: !4075)
!4133 = !DILocation(line: 1033, column: 1, scope: !4075)
!4134 = !DILocation(line: 1032, column: 3, scope: !4075)
!4135 = distinct !DISubprogram(name: "quotearg_custom", scope: !171, file: !171, line: 1036, type: !4136, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !4138)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!74, !40, !40, !40}
!4138 = !{!4139, !4140, !4141}
!4139 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4135, file: !171, line: 1036, type: !40)
!4140 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4135, file: !171, line: 1036, type: !40)
!4141 = !DILocalVariable(name: "arg", arg: 3, scope: !4135, file: !171, line: 1037, type: !40)
!4142 = !DILocation(line: 1036, column: 30, scope: !4135)
!4143 = !DILocation(line: 1036, column: 54, scope: !4135)
!4144 = !DILocation(line: 1037, column: 30, scope: !4135)
!4145 = !DILocation(line: 1018, column: 24, scope: !4062, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 1039, column: 10, scope: !4135)
!4147 = !DILocation(line: 1018, column: 39, scope: !4062, inlinedAt: !4146)
!4148 = !DILocation(line: 1019, column: 32, scope: !4062, inlinedAt: !4146)
!4149 = !DILocation(line: 1019, column: 57, scope: !4062, inlinedAt: !4146)
!4150 = !DILocation(line: 1026, column: 28, scope: !4075, inlinedAt: !4151)
!4151 = distinct !DILocation(line: 1021, column: 10, scope: !4062, inlinedAt: !4146)
!4152 = !DILocation(line: 1026, column: 43, scope: !4075, inlinedAt: !4151)
!4153 = !DILocation(line: 1027, column: 36, scope: !4075, inlinedAt: !4151)
!4154 = !DILocation(line: 1028, column: 36, scope: !4075, inlinedAt: !4151)
!4155 = !DILocation(line: 1028, column: 48, scope: !4075, inlinedAt: !4151)
!4156 = !DILocation(line: 1030, column: 3, scope: !4075, inlinedAt: !4151)
!4157 = !DILocation(line: 1030, column: 30, scope: !4075, inlinedAt: !4151)
!4158 = !DILocation(line: 1030, column: 26, scope: !4075, inlinedAt: !4151)
!4159 = !DILocation(line: 179, column: 45, scope: !2624, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 1031, column: 3, scope: !4075, inlinedAt: !4151)
!4161 = !DILocation(line: 180, column: 33, scope: !2624, inlinedAt: !4160)
!4162 = !DILocation(line: 180, column: 57, scope: !2624, inlinedAt: !4160)
!4163 = !DILocation(line: 184, column: 6, scope: !2624, inlinedAt: !4160)
!4164 = !DILocation(line: 184, column: 12, scope: !2624, inlinedAt: !4160)
!4165 = !DILocation(line: 185, column: 8, scope: !2640, inlinedAt: !4160)
!4166 = !DILocation(line: 185, column: 23, scope: !2640, inlinedAt: !4160)
!4167 = !DILocation(line: 185, column: 19, scope: !2640, inlinedAt: !4160)
!4168 = !DILocation(line: 186, column: 5, scope: !2640, inlinedAt: !4160)
!4169 = !DILocation(line: 187, column: 6, scope: !2624, inlinedAt: !4160)
!4170 = !DILocation(line: 187, column: 17, scope: !2624, inlinedAt: !4160)
!4171 = !DILocation(line: 188, column: 6, scope: !2624, inlinedAt: !4160)
!4172 = !DILocation(line: 188, column: 18, scope: !2624, inlinedAt: !4160)
!4173 = !DILocation(line: 1032, column: 10, scope: !4075, inlinedAt: !4151)
!4174 = !DILocation(line: 1033, column: 1, scope: !4075, inlinedAt: !4151)
!4175 = !DILocation(line: 1039, column: 3, scope: !4135)
!4176 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !171, file: !171, line: 1043, type: !4177, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !4179)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!74, !40, !40, !40, !166}
!4179 = !{!4180, !4181, !4182, !4183}
!4180 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4176, file: !171, line: 1043, type: !40)
!4181 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4176, file: !171, line: 1043, type: !40)
!4182 = !DILocalVariable(name: "arg", arg: 3, scope: !4176, file: !171, line: 1044, type: !40)
!4183 = !DILocalVariable(name: "argsize", arg: 4, scope: !4176, file: !171, line: 1044, type: !166)
!4184 = !DILocation(line: 1043, column: 34, scope: !4176)
!4185 = !DILocation(line: 1043, column: 58, scope: !4176)
!4186 = !DILocation(line: 1044, column: 34, scope: !4176)
!4187 = !DILocation(line: 1044, column: 46, scope: !4176)
!4188 = !DILocation(line: 1026, column: 28, scope: !4075, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 1046, column: 10, scope: !4176)
!4190 = !DILocation(line: 1026, column: 43, scope: !4075, inlinedAt: !4189)
!4191 = !DILocation(line: 1027, column: 36, scope: !4075, inlinedAt: !4189)
!4192 = !DILocation(line: 1028, column: 36, scope: !4075, inlinedAt: !4189)
!4193 = !DILocation(line: 1028, column: 48, scope: !4075, inlinedAt: !4189)
!4194 = !DILocation(line: 1030, column: 3, scope: !4075, inlinedAt: !4189)
!4195 = !DILocation(line: 1030, column: 30, scope: !4075, inlinedAt: !4189)
!4196 = !DILocation(line: 1030, column: 26, scope: !4075, inlinedAt: !4189)
!4197 = !DILocation(line: 179, column: 45, scope: !2624, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 1031, column: 3, scope: !4075, inlinedAt: !4189)
!4199 = !DILocation(line: 180, column: 33, scope: !2624, inlinedAt: !4198)
!4200 = !DILocation(line: 180, column: 57, scope: !2624, inlinedAt: !4198)
!4201 = !DILocation(line: 184, column: 6, scope: !2624, inlinedAt: !4198)
!4202 = !DILocation(line: 184, column: 12, scope: !2624, inlinedAt: !4198)
!4203 = !DILocation(line: 185, column: 8, scope: !2640, inlinedAt: !4198)
!4204 = !DILocation(line: 185, column: 23, scope: !2640, inlinedAt: !4198)
!4205 = !DILocation(line: 185, column: 19, scope: !2640, inlinedAt: !4198)
!4206 = !DILocation(line: 186, column: 5, scope: !2640, inlinedAt: !4198)
!4207 = !DILocation(line: 187, column: 6, scope: !2624, inlinedAt: !4198)
!4208 = !DILocation(line: 187, column: 17, scope: !2624, inlinedAt: !4198)
!4209 = !DILocation(line: 188, column: 6, scope: !2624, inlinedAt: !4198)
!4210 = !DILocation(line: 188, column: 18, scope: !2624, inlinedAt: !4198)
!4211 = !DILocation(line: 1032, column: 10, scope: !4075, inlinedAt: !4189)
!4212 = !DILocation(line: 1033, column: 1, scope: !4075, inlinedAt: !4189)
!4213 = !DILocation(line: 1046, column: 3, scope: !4176)
!4214 = distinct !DISubprogram(name: "quote_n_mem", scope: !171, file: !171, line: 1061, type: !4215, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!40, !57, !40, !166}
!4217 = !{!4218, !4219, !4220}
!4218 = !DILocalVariable(name: "n", arg: 1, scope: !4214, file: !171, line: 1061, type: !57)
!4219 = !DILocalVariable(name: "arg", arg: 2, scope: !4214, file: !171, line: 1061, type: !40)
!4220 = !DILocalVariable(name: "argsize", arg: 3, scope: !4214, file: !171, line: 1061, type: !166)
!4221 = !DILocation(line: 1061, column: 18, scope: !4214)
!4222 = !DILocation(line: 1061, column: 33, scope: !4214)
!4223 = !DILocation(line: 1061, column: 45, scope: !4214)
!4224 = !DILocation(line: 1063, column: 10, scope: !4214)
!4225 = !DILocation(line: 1063, column: 3, scope: !4214)
!4226 = distinct !DISubprogram(name: "quote_mem", scope: !171, file: !171, line: 1067, type: !4227, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !4229)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!40, !40, !166}
!4229 = !{!4230, !4231}
!4230 = !DILocalVariable(name: "arg", arg: 1, scope: !4226, file: !171, line: 1067, type: !40)
!4231 = !DILocalVariable(name: "argsize", arg: 2, scope: !4226, file: !171, line: 1067, type: !166)
!4232 = !DILocation(line: 1067, column: 24, scope: !4226)
!4233 = !DILocation(line: 1067, column: 36, scope: !4226)
!4234 = !DILocation(line: 1061, column: 18, scope: !4214, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 1069, column: 10, scope: !4226)
!4236 = !DILocation(line: 1061, column: 33, scope: !4214, inlinedAt: !4235)
!4237 = !DILocation(line: 1061, column: 45, scope: !4214, inlinedAt: !4235)
!4238 = !DILocation(line: 1063, column: 10, scope: !4214, inlinedAt: !4235)
!4239 = !DILocation(line: 1069, column: 3, scope: !4226)
!4240 = distinct !DISubprogram(name: "quote_n", scope: !171, file: !171, line: 1073, type: !4241, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!40, !57, !40}
!4243 = !{!4244, !4245}
!4244 = !DILocalVariable(name: "n", arg: 1, scope: !4240, file: !171, line: 1073, type: !57)
!4245 = !DILocalVariable(name: "arg", arg: 2, scope: !4240, file: !171, line: 1073, type: !40)
!4246 = !DILocation(line: 1073, column: 14, scope: !4240)
!4247 = !DILocation(line: 1073, column: 29, scope: !4240)
!4248 = !DILocation(line: 1061, column: 18, scope: !4214, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 1075, column: 10, scope: !4240)
!4250 = !DILocation(line: 1061, column: 33, scope: !4214, inlinedAt: !4249)
!4251 = !DILocation(line: 1061, column: 45, scope: !4214, inlinedAt: !4249)
!4252 = !DILocation(line: 1063, column: 10, scope: !4214, inlinedAt: !4249)
!4253 = !DILocation(line: 1075, column: 3, scope: !4240)
!4254 = distinct !DISubprogram(name: "quote", scope: !171, file: !171, line: 1079, type: !4255, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !142, retainedNodes: !4257)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!40, !40}
!4257 = !{!4258}
!4258 = !DILocalVariable(name: "arg", arg: 1, scope: !4254, file: !171, line: 1079, type: !40)
!4259 = !DILocation(line: 1079, column: 20, scope: !4254)
!4260 = !DILocation(line: 1073, column: 14, scope: !4240, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 1081, column: 10, scope: !4254)
!4262 = !DILocation(line: 1073, column: 29, scope: !4240, inlinedAt: !4261)
!4263 = !DILocation(line: 1061, column: 18, scope: !4214, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 1075, column: 10, scope: !4240, inlinedAt: !4261)
!4265 = !DILocation(line: 1061, column: 33, scope: !4214, inlinedAt: !4264)
!4266 = !DILocation(line: 1061, column: 45, scope: !4214, inlinedAt: !4264)
!4267 = !DILocation(line: 1063, column: 10, scope: !4214, inlinedAt: !4264)
!4268 = !DILocation(line: 1081, column: 3, scope: !4254)
!4269 = distinct !DISubprogram(name: "version_etc_arn", scope: !226, file: !226, line: 62, type: !4270, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !222, retainedNodes: !4307)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{null, !4272, !40, !40, !40, !4306, !166}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !893, line: 7, baseType: !4274)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !895, line: 49, size: 1728, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4274, file: !895, line: 51, baseType: !57, size: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4274, file: !895, line: 54, baseType: !74, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4274, file: !895, line: 55, baseType: !74, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4274, file: !895, line: 56, baseType: !74, size: 64, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4274, file: !895, line: 57, baseType: !74, size: 64, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4274, file: !895, line: 58, baseType: !74, size: 64, offset: 320)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4274, file: !895, line: 59, baseType: !74, size: 64, offset: 384)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4274, file: !895, line: 60, baseType: !74, size: 64, offset: 448)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4274, file: !895, line: 61, baseType: !74, size: 64, offset: 512)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4274, file: !895, line: 64, baseType: !74, size: 64, offset: 576)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4274, file: !895, line: 65, baseType: !74, size: 64, offset: 640)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4274, file: !895, line: 66, baseType: !74, size: 64, offset: 704)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4274, file: !895, line: 68, baseType: !910, size: 64, offset: 768)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4274, file: !895, line: 70, baseType: !4290, size: 64, offset: 832)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4274, file: !895, line: 72, baseType: !57, size: 32, offset: 896)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4274, file: !895, line: 73, baseType: !57, size: 32, offset: 928)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4274, file: !895, line: 74, baseType: !917, size: 64, offset: 960)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4274, file: !895, line: 77, baseType: !91, size: 16, offset: 1024)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4274, file: !895, line: 78, baseType: !920, size: 8, offset: 1040)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4274, file: !895, line: 79, baseType: !922, size: 8, offset: 1048)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4274, file: !895, line: 81, baseType: !924, size: 64, offset: 1088)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4274, file: !895, line: 89, baseType: !927, size: 64, offset: 1152)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4274, file: !895, line: 91, baseType: !929, size: 64, offset: 1216)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4274, file: !895, line: 92, baseType: !932, size: 64, offset: 1280)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4274, file: !895, line: 93, baseType: !4290, size: 64, offset: 1344)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4274, file: !895, line: 94, baseType: !43, size: 64, offset: 1408)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4274, file: !895, line: 95, baseType: !166, size: 64, offset: 1472)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4274, file: !895, line: 96, baseType: !57, size: 32, offset: 1536)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4274, file: !895, line: 98, baseType: !854, size: 160, offset: 1568)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!4307 = !{!4308, !4309, !4310, !4311, !4312, !4313}
!4308 = !DILocalVariable(name: "stream", arg: 1, scope: !4269, file: !226, line: 62, type: !4272)
!4309 = !DILocalVariable(name: "command_name", arg: 2, scope: !4269, file: !226, line: 63, type: !40)
!4310 = !DILocalVariable(name: "package", arg: 3, scope: !4269, file: !226, line: 63, type: !40)
!4311 = !DILocalVariable(name: "version", arg: 4, scope: !4269, file: !226, line: 64, type: !40)
!4312 = !DILocalVariable(name: "authors", arg: 5, scope: !4269, file: !226, line: 65, type: !4306)
!4313 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4269, file: !226, line: 65, type: !166)
!4314 = !DILocation(line: 62, column: 24, scope: !4269)
!4315 = !DILocation(line: 63, column: 30, scope: !4269)
!4316 = !DILocation(line: 63, column: 56, scope: !4269)
!4317 = !DILocation(line: 64, column: 30, scope: !4269)
!4318 = !DILocation(line: 65, column: 39, scope: !4269)
!4319 = !DILocation(line: 65, column: 55, scope: !4269)
!4320 = !DILocation(line: 67, column: 7, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4269, file: !226, line: 67, column: 7)
!4322 = !DILocation(line: 67, column: 7, scope: !4269)
!4323 = !DILocation(line: 68, column: 5, scope: !4321)
!4324 = !DILocation(line: 70, column: 5, scope: !4321)
!4325 = !DILocation(line: 84, column: 3, scope: !4269)
!4326 = !DILocation(line: 86, column: 3, scope: !4269)
!4327 = !DILocation(line: 95, column: 3, scope: !4269)
!4328 = !DILocation(line: 99, column: 7, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4269, file: !226, line: 96, column: 5)
!4330 = !DILocation(line: 102, column: 7, scope: !4329)
!4331 = !DILocation(line: 103, column: 7, scope: !4329)
!4332 = !DILocation(line: 106, column: 7, scope: !4329)
!4333 = !DILocation(line: 107, column: 7, scope: !4329)
!4334 = !DILocation(line: 110, column: 7, scope: !4329)
!4335 = !DILocation(line: 112, column: 7, scope: !4329)
!4336 = !DILocation(line: 117, column: 7, scope: !4329)
!4337 = !DILocation(line: 119, column: 7, scope: !4329)
!4338 = !DILocation(line: 124, column: 7, scope: !4329)
!4339 = !DILocation(line: 126, column: 7, scope: !4329)
!4340 = !DILocation(line: 131, column: 7, scope: !4329)
!4341 = !DILocation(line: 134, column: 7, scope: !4329)
!4342 = !DILocation(line: 139, column: 7, scope: !4329)
!4343 = !DILocation(line: 142, column: 7, scope: !4329)
!4344 = !DILocation(line: 147, column: 7, scope: !4329)
!4345 = !DILocation(line: 151, column: 7, scope: !4329)
!4346 = !DILocation(line: 156, column: 7, scope: !4329)
!4347 = !DILocation(line: 160, column: 7, scope: !4329)
!4348 = !DILocation(line: 167, column: 7, scope: !4329)
!4349 = !DILocation(line: 171, column: 7, scope: !4329)
!4350 = !DILocation(line: 173, column: 1, scope: !4269)
!4351 = distinct !DISubprogram(name: "version_etc_ar", scope: !226, file: !226, line: 180, type: !4352, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !222, retainedNodes: !4354)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{null, !4272, !40, !40, !40, !4306}
!4354 = !{!4355, !4356, !4357, !4358, !4359, !4360}
!4355 = !DILocalVariable(name: "stream", arg: 1, scope: !4351, file: !226, line: 180, type: !4272)
!4356 = !DILocalVariable(name: "command_name", arg: 2, scope: !4351, file: !226, line: 181, type: !40)
!4357 = !DILocalVariable(name: "package", arg: 3, scope: !4351, file: !226, line: 181, type: !40)
!4358 = !DILocalVariable(name: "version", arg: 4, scope: !4351, file: !226, line: 182, type: !40)
!4359 = !DILocalVariable(name: "authors", arg: 5, scope: !4351, file: !226, line: 182, type: !4306)
!4360 = !DILocalVariable(name: "n_authors", scope: !4351, file: !226, line: 184, type: !166)
!4361 = !DILocation(line: 180, column: 23, scope: !4351)
!4362 = !DILocation(line: 181, column: 29, scope: !4351)
!4363 = !DILocation(line: 181, column: 55, scope: !4351)
!4364 = !DILocation(line: 182, column: 29, scope: !4351)
!4365 = !DILocation(line: 182, column: 59, scope: !4351)
!4366 = !DILocation(line: 184, column: 10, scope: !4351)
!4367 = !DILocation(line: 186, column: 8, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4351, file: !226, line: 186, column: 3)
!4369 = !DILocation(line: 0, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4368, file: !226, line: 186, column: 3)
!4371 = !DILocation(line: 186, column: 23, scope: !4370)
!4372 = !DILocation(line: 186, column: 3, scope: !4368)
!4373 = !DILocation(line: 186, column: 52, scope: !4370)
!4374 = distinct !{!4374, !4372, !4375}
!4375 = !DILocation(line: 187, column: 5, scope: !4368)
!4376 = !DILocation(line: 188, column: 3, scope: !4351)
!4377 = !DILocation(line: 189, column: 1, scope: !4351)
!4378 = distinct !DISubprogram(name: "version_etc_va", scope: !226, file: !226, line: 196, type: !4379, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !222, retainedNodes: !4388)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{null, !4272, !40, !40, !40, !4381}
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !223, line: 189, size: 192, elements: !4383)
!4383 = !{!4384, !4385, !4386, !4387}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4382, file: !223, line: 189, baseType: !7, size: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4382, file: !223, line: 189, baseType: !7, size: 32, offset: 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4382, file: !223, line: 189, baseType: !43, size: 64, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4382, file: !223, line: 189, baseType: !43, size: 64, offset: 128)
!4388 = !{!4389, !4390, !4391, !4392, !4393, !4394, !4395}
!4389 = !DILocalVariable(name: "stream", arg: 1, scope: !4378, file: !226, line: 196, type: !4272)
!4390 = !DILocalVariable(name: "command_name", arg: 2, scope: !4378, file: !226, line: 197, type: !40)
!4391 = !DILocalVariable(name: "package", arg: 3, scope: !4378, file: !226, line: 197, type: !40)
!4392 = !DILocalVariable(name: "version", arg: 4, scope: !4378, file: !226, line: 198, type: !40)
!4393 = !DILocalVariable(name: "authors", arg: 5, scope: !4378, file: !226, line: 198, type: !4381)
!4394 = !DILocalVariable(name: "n_authors", scope: !4378, file: !226, line: 200, type: !166)
!4395 = !DILocalVariable(name: "authtab", scope: !4378, file: !226, line: 201, type: !4396)
!4396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 640, elements: !174)
!4397 = !DILocation(line: 196, column: 23, scope: !4378)
!4398 = !DILocation(line: 197, column: 29, scope: !4378)
!4399 = !DILocation(line: 197, column: 55, scope: !4378)
!4400 = !DILocation(line: 198, column: 29, scope: !4378)
!4401 = !DILocation(line: 198, column: 46, scope: !4378)
!4402 = !DILocation(line: 201, column: 3, scope: !4378)
!4403 = !DILocation(line: 201, column: 15, scope: !4378)
!4404 = !DILocation(line: 200, column: 10, scope: !4378)
!4405 = !DILocation(line: 205, column: 35, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4407, file: !226, line: 203, column: 3)
!4407 = distinct !DILexicalBlock(scope: !4378, file: !226, line: 203, column: 3)
!4408 = !DILocation(line: 205, column: 14, scope: !4406)
!4409 = !DILocation(line: 205, column: 33, scope: !4406)
!4410 = !DILocation(line: 205, column: 67, scope: !4406)
!4411 = !DILocation(line: 203, column: 3, scope: !4407)
!4412 = !DILocation(line: 0, scope: !4406)
!4413 = !DILocation(line: 208, column: 3, scope: !4378)
!4414 = !DILocation(line: 210, column: 1, scope: !4378)
!4415 = distinct !DISubprogram(name: "version_etc", scope: !226, file: !226, line: 227, type: !4416, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !222, retainedNodes: !4418)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{null, !4272, !40, !40, !40, null}
!4418 = !{!4419, !4420, !4421, !4422, !4423}
!4419 = !DILocalVariable(name: "stream", arg: 1, scope: !4415, file: !226, line: 227, type: !4272)
!4420 = !DILocalVariable(name: "command_name", arg: 2, scope: !4415, file: !226, line: 228, type: !40)
!4421 = !DILocalVariable(name: "package", arg: 3, scope: !4415, file: !226, line: 228, type: !40)
!4422 = !DILocalVariable(name: "version", arg: 4, scope: !4415, file: !226, line: 229, type: !40)
!4423 = !DILocalVariable(name: "authors", scope: !4415, file: !226, line: 231, type: !4424)
!4424 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2460, line: 52, baseType: !4425)
!4425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2462, line: 48, baseType: !4426)
!4426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !223, line: 231, baseType: !4427)
!4427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4382, size: 192, elements: !61)
!4428 = !DILocation(line: 227, column: 20, scope: !4415)
!4429 = !DILocation(line: 228, column: 26, scope: !4415)
!4430 = !DILocation(line: 228, column: 52, scope: !4415)
!4431 = !DILocation(line: 229, column: 26, scope: !4415)
!4432 = !DILocation(line: 231, column: 3, scope: !4415)
!4433 = !DILocation(line: 231, column: 11, scope: !4415)
!4434 = !DILocation(line: 233, column: 3, scope: !4415)
!4435 = !DILocation(line: 234, column: 3, scope: !4415)
!4436 = !DILocation(line: 235, column: 3, scope: !4415)
!4437 = !DILocation(line: 236, column: 1, scope: !4415)
!4438 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !226, file: !226, line: 239, type: !1166, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !222, retainedNodes: !67)
!4439 = !DILocation(line: 245, column: 3, scope: !4438)
!4440 = !DILocation(line: 251, column: 3, scope: !4438)
!4441 = !DILocation(line: 256, column: 3, scope: !4438)
!4442 = !DILocation(line: 258, column: 1, scope: !4438)
!4443 = distinct !DISubprogram(name: "xnmalloc", scope: !234, file: !234, line: 99, type: !4444, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !4446)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!43, !166, !166}
!4446 = !{!4447, !4448}
!4447 = !DILocalVariable(name: "n", arg: 1, scope: !4443, file: !234, line: 99, type: !166)
!4448 = !DILocalVariable(name: "s", arg: 2, scope: !4443, file: !234, line: 99, type: !166)
!4449 = !DILocation(line: 99, column: 18, scope: !4443)
!4450 = !DILocation(line: 99, column: 28, scope: !4443)
!4451 = !DILocation(line: 101, column: 7, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4443, file: !234, line: 101, column: 7)
!4453 = !DILocation(line: 101, column: 7, scope: !4443)
!4454 = !DILocation(line: 102, column: 5, scope: !4452)
!4455 = !DILocation(line: 103, column: 21, scope: !4443)
!4456 = !DILocalVariable(name: "n", arg: 1, scope: !4457, file: !4458, line: 39, type: !166)
!4457 = distinct !DISubprogram(name: "xmalloc", scope: !4458, file: !4458, line: 39, type: !4459, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !4461)
!4458 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!43, !166}
!4461 = !{!4456, !4462}
!4462 = !DILocalVariable(name: "p", scope: !4457, file: !4458, line: 41, type: !43)
!4463 = !DILocation(line: 39, column: 17, scope: !4457, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 103, column: 10, scope: !4443)
!4465 = !DILocation(line: 41, column: 13, scope: !4457, inlinedAt: !4464)
!4466 = !DILocation(line: 41, column: 9, scope: !4457, inlinedAt: !4464)
!4467 = !DILocation(line: 42, column: 8, scope: !4468, inlinedAt: !4464)
!4468 = distinct !DILexicalBlock(scope: !4457, file: !4458, line: 42, column: 7)
!4469 = !DILocation(line: 42, column: 15, scope: !4468, inlinedAt: !4464)
!4470 = !DILocation(line: 42, column: 10, scope: !4468, inlinedAt: !4464)
!4471 = !DILocation(line: 43, column: 5, scope: !4468, inlinedAt: !4464)
!4472 = !DILocation(line: 103, column: 3, scope: !4443)
!4473 = !DILocation(line: 39, column: 17, scope: !4457)
!4474 = !DILocation(line: 41, column: 13, scope: !4457)
!4475 = !DILocation(line: 41, column: 9, scope: !4457)
!4476 = !DILocation(line: 42, column: 8, scope: !4468)
!4477 = !DILocation(line: 42, column: 15, scope: !4468)
!4478 = !DILocation(line: 42, column: 10, scope: !4468)
!4479 = !DILocation(line: 43, column: 5, scope: !4468)
!4480 = !DILocation(line: 44, column: 3, scope: !4457)
!4481 = distinct !DISubprogram(name: "xnrealloc", scope: !234, file: !234, line: 112, type: !4482, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !4484)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!43, !43, !166, !166}
!4484 = !{!4485, !4486, !4487}
!4485 = !DILocalVariable(name: "p", arg: 1, scope: !4481, file: !234, line: 112, type: !43)
!4486 = !DILocalVariable(name: "n", arg: 2, scope: !4481, file: !234, line: 112, type: !166)
!4487 = !DILocalVariable(name: "s", arg: 3, scope: !4481, file: !234, line: 112, type: !166)
!4488 = !DILocation(line: 112, column: 18, scope: !4481)
!4489 = !DILocation(line: 112, column: 28, scope: !4481)
!4490 = !DILocation(line: 112, column: 38, scope: !4481)
!4491 = !DILocation(line: 114, column: 7, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4481, file: !234, line: 114, column: 7)
!4493 = !DILocation(line: 114, column: 7, scope: !4481)
!4494 = !DILocation(line: 115, column: 5, scope: !4492)
!4495 = !DILocation(line: 116, column: 25, scope: !4481)
!4496 = !DILocalVariable(name: "p", arg: 1, scope: !4497, file: !4458, line: 51, type: !43)
!4497 = distinct !DISubprogram(name: "xrealloc", scope: !4458, file: !4458, line: 51, type: !4498, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !4500)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!43, !43, !166}
!4500 = !{!4496, !4501}
!4501 = !DILocalVariable(name: "n", arg: 2, scope: !4497, file: !4458, line: 51, type: !166)
!4502 = !DILocation(line: 51, column: 17, scope: !4497, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 116, column: 10, scope: !4481)
!4504 = !DILocation(line: 51, column: 27, scope: !4497, inlinedAt: !4503)
!4505 = !DILocation(line: 53, column: 8, scope: !4506, inlinedAt: !4503)
!4506 = distinct !DILexicalBlock(scope: !4497, file: !4458, line: 53, column: 7)
!4507 = !DILocation(line: 53, column: 13, scope: !4506, inlinedAt: !4503)
!4508 = !DILocation(line: 53, column: 10, scope: !4506, inlinedAt: !4503)
!4509 = !DILocation(line: 57, column: 7, scope: !4510, inlinedAt: !4503)
!4510 = distinct !DILexicalBlock(scope: !4506, file: !4458, line: 54, column: 5)
!4511 = !DILocation(line: 58, column: 7, scope: !4510, inlinedAt: !4503)
!4512 = !DILocation(line: 61, column: 7, scope: !4497, inlinedAt: !4503)
!4513 = !DILocation(line: 62, column: 8, scope: !4514, inlinedAt: !4503)
!4514 = distinct !DILexicalBlock(scope: !4497, file: !4458, line: 62, column: 7)
!4515 = !DILocation(line: 62, column: 13, scope: !4514, inlinedAt: !4503)
!4516 = !DILocation(line: 62, column: 10, scope: !4514, inlinedAt: !4503)
!4517 = !DILocation(line: 63, column: 5, scope: !4514, inlinedAt: !4503)
!4518 = !DILocation(line: 0, scope: !4497, inlinedAt: !4503)
!4519 = !DILocation(line: 116, column: 3, scope: !4481)
!4520 = !DILocation(line: 51, column: 17, scope: !4497)
!4521 = !DILocation(line: 51, column: 27, scope: !4497)
!4522 = !DILocation(line: 53, column: 8, scope: !4506)
!4523 = !DILocation(line: 53, column: 13, scope: !4506)
!4524 = !DILocation(line: 53, column: 10, scope: !4506)
!4525 = !DILocation(line: 57, column: 7, scope: !4510)
!4526 = !DILocation(line: 58, column: 7, scope: !4510)
!4527 = !DILocation(line: 61, column: 7, scope: !4497)
!4528 = !DILocation(line: 62, column: 8, scope: !4514)
!4529 = !DILocation(line: 62, column: 13, scope: !4514)
!4530 = !DILocation(line: 62, column: 10, scope: !4514)
!4531 = !DILocation(line: 63, column: 5, scope: !4514)
!4532 = !DILocation(line: 0, scope: !4497)
!4533 = !DILocation(line: 65, column: 1, scope: !4497)
!4534 = !DILocation(line: 174, column: 19, scope: !235)
!4535 = !DILocation(line: 174, column: 30, scope: !235)
!4536 = !DILocation(line: 174, column: 41, scope: !235)
!4537 = !DILocation(line: 176, column: 14, scope: !235)
!4538 = !DILocation(line: 176, column: 10, scope: !235)
!4539 = !DILocation(line: 178, column: 9, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !235, file: !234, line: 178, column: 7)
!4541 = !DILocation(line: 178, column: 7, scope: !235)
!4542 = !DILocation(line: 180, column: 13, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !234, line: 180, column: 11)
!4544 = distinct !DILexicalBlock(scope: !4540, file: !234, line: 179, column: 5)
!4545 = !DILocation(line: 180, column: 11, scope: !4544)
!4546 = !DILocation(line: 188, column: 30, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4543, file: !234, line: 181, column: 9)
!4548 = !DILocation(line: 189, column: 16, scope: !4547)
!4549 = !DILocation(line: 189, column: 13, scope: !4547)
!4550 = !DILocation(line: 190, column: 9, scope: !4547)
!4551 = !DILocation(line: 0, scope: !4547)
!4552 = !DILocation(line: 191, column: 11, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4544, file: !234, line: 191, column: 11)
!4554 = !DILocation(line: 191, column: 11, scope: !4544)
!4555 = !DILocation(line: 206, column: 7, scope: !235)
!4556 = !DILocation(line: 207, column: 25, scope: !235)
!4557 = !DILocation(line: 51, column: 17, scope: !4497, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 207, column: 10, scope: !235)
!4559 = !DILocation(line: 51, column: 27, scope: !4497, inlinedAt: !4558)
!4560 = !DILocation(line: 53, column: 10, scope: !4506, inlinedAt: !4558)
!4561 = !DILocation(line: 192, column: 9, scope: !4553)
!4562 = !DILocation(line: 200, column: 69, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4564, file: !234, line: 200, column: 11)
!4564 = distinct !DILexicalBlock(scope: !4540, file: !234, line: 195, column: 5)
!4565 = !DILocation(line: 201, column: 11, scope: !4563)
!4566 = !DILocation(line: 200, column: 11, scope: !4564)
!4567 = !DILocation(line: 202, column: 9, scope: !4563)
!4568 = !DILocation(line: 203, column: 14, scope: !4564)
!4569 = !DILocation(line: 203, column: 18, scope: !4564)
!4570 = !DILocation(line: 203, column: 9, scope: !4564)
!4571 = !DILocation(line: 53, column: 8, scope: !4506, inlinedAt: !4558)
!4572 = !DILocation(line: 57, column: 7, scope: !4510, inlinedAt: !4558)
!4573 = !DILocation(line: 58, column: 7, scope: !4510, inlinedAt: !4558)
!4574 = !DILocation(line: 61, column: 7, scope: !4497, inlinedAt: !4558)
!4575 = !DILocation(line: 62, column: 8, scope: !4514, inlinedAt: !4558)
!4576 = !DILocation(line: 62, column: 13, scope: !4514, inlinedAt: !4558)
!4577 = !DILocation(line: 62, column: 10, scope: !4514, inlinedAt: !4558)
!4578 = !DILocation(line: 63, column: 5, scope: !4514, inlinedAt: !4558)
!4579 = !DILocation(line: 0, scope: !4497, inlinedAt: !4558)
!4580 = !DILocation(line: 207, column: 3, scope: !235)
!4581 = distinct !DISubprogram(name: "xcharalloc", scope: !234, file: !234, line: 216, type: !3556, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !4582)
!4582 = !{!4583}
!4583 = !DILocalVariable(name: "n", arg: 1, scope: !4581, file: !234, line: 216, type: !166)
!4584 = !DILocation(line: 216, column: 20, scope: !4581)
!4585 = !DILocation(line: 39, column: 17, scope: !4457, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 218, column: 10, scope: !4581)
!4587 = !DILocation(line: 41, column: 13, scope: !4457, inlinedAt: !4586)
!4588 = !DILocation(line: 41, column: 9, scope: !4457, inlinedAt: !4586)
!4589 = !DILocation(line: 42, column: 8, scope: !4468, inlinedAt: !4586)
!4590 = !DILocation(line: 42, column: 15, scope: !4468, inlinedAt: !4586)
!4591 = !DILocation(line: 42, column: 10, scope: !4468, inlinedAt: !4586)
!4592 = !DILocation(line: 43, column: 5, scope: !4468, inlinedAt: !4586)
!4593 = !DILocation(line: 218, column: 3, scope: !4581)
!4594 = distinct !DISubprogram(name: "x2realloc", scope: !4458, file: !4458, line: 74, type: !4595, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !4597)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!43, !43, !238}
!4597 = !{!4598, !4599}
!4598 = !DILocalVariable(name: "p", arg: 1, scope: !4594, file: !4458, line: 74, type: !43)
!4599 = !DILocalVariable(name: "pn", arg: 2, scope: !4594, file: !4458, line: 74, type: !238)
!4600 = !DILocation(line: 74, column: 18, scope: !4594)
!4601 = !DILocation(line: 74, column: 29, scope: !4594)
!4602 = !DILocation(line: 174, column: 19, scope: !235, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 76, column: 10, scope: !4594)
!4604 = !DILocation(line: 174, column: 30, scope: !235, inlinedAt: !4603)
!4605 = !DILocation(line: 174, column: 41, scope: !235, inlinedAt: !4603)
!4606 = !DILocation(line: 176, column: 14, scope: !235, inlinedAt: !4603)
!4607 = !DILocation(line: 176, column: 10, scope: !235, inlinedAt: !4603)
!4608 = !DILocation(line: 178, column: 9, scope: !4540, inlinedAt: !4603)
!4609 = !DILocation(line: 178, column: 7, scope: !235, inlinedAt: !4603)
!4610 = !DILocation(line: 180, column: 13, scope: !4543, inlinedAt: !4603)
!4611 = !DILocation(line: 180, column: 11, scope: !4544, inlinedAt: !4603)
!4612 = !DILocation(line: 191, column: 11, scope: !4553, inlinedAt: !4603)
!4613 = !DILocation(line: 191, column: 11, scope: !4544, inlinedAt: !4603)
!4614 = !DILocation(line: 206, column: 7, scope: !235, inlinedAt: !4603)
!4615 = !DILocation(line: 51, column: 17, scope: !4497, inlinedAt: !4616)
!4616 = distinct !DILocation(line: 207, column: 10, scope: !235, inlinedAt: !4603)
!4617 = !DILocation(line: 51, column: 27, scope: !4497, inlinedAt: !4616)
!4618 = !DILocation(line: 53, column: 10, scope: !4506, inlinedAt: !4616)
!4619 = !DILocation(line: 192, column: 9, scope: !4553, inlinedAt: !4603)
!4620 = !DILocation(line: 201, column: 11, scope: !4563, inlinedAt: !4603)
!4621 = !DILocation(line: 200, column: 11, scope: !4564, inlinedAt: !4603)
!4622 = !DILocation(line: 202, column: 9, scope: !4563, inlinedAt: !4603)
!4623 = !DILocation(line: 203, column: 14, scope: !4564, inlinedAt: !4603)
!4624 = !DILocation(line: 203, column: 18, scope: !4564, inlinedAt: !4603)
!4625 = !DILocation(line: 203, column: 9, scope: !4564, inlinedAt: !4603)
!4626 = !DILocation(line: 53, column: 8, scope: !4506, inlinedAt: !4616)
!4627 = !DILocation(line: 57, column: 7, scope: !4510, inlinedAt: !4616)
!4628 = !DILocation(line: 58, column: 7, scope: !4510, inlinedAt: !4616)
!4629 = !DILocation(line: 61, column: 7, scope: !4497, inlinedAt: !4616)
!4630 = !DILocation(line: 62, column: 8, scope: !4514, inlinedAt: !4616)
!4631 = !DILocation(line: 62, column: 13, scope: !4514, inlinedAt: !4616)
!4632 = !DILocation(line: 62, column: 10, scope: !4514, inlinedAt: !4616)
!4633 = !DILocation(line: 63, column: 5, scope: !4514, inlinedAt: !4616)
!4634 = !DILocation(line: 0, scope: !4497, inlinedAt: !4616)
!4635 = !DILocation(line: 76, column: 3, scope: !4594)
!4636 = distinct !DISubprogram(name: "xzalloc", scope: !4458, file: !4458, line: 84, type: !4459, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !4637)
!4637 = !{!4638}
!4638 = !DILocalVariable(name: "s", arg: 1, scope: !4636, file: !4458, line: 84, type: !166)
!4639 = !DILocation(line: 84, column: 17, scope: !4636)
!4640 = !DILocation(line: 39, column: 17, scope: !4457, inlinedAt: !4641)
!4641 = distinct !DILocation(line: 86, column: 18, scope: !4636)
!4642 = !DILocation(line: 41, column: 13, scope: !4457, inlinedAt: !4641)
!4643 = !DILocation(line: 41, column: 9, scope: !4457, inlinedAt: !4641)
!4644 = !DILocation(line: 42, column: 8, scope: !4468, inlinedAt: !4641)
!4645 = !DILocation(line: 42, column: 15, scope: !4468, inlinedAt: !4641)
!4646 = !DILocation(line: 42, column: 10, scope: !4468, inlinedAt: !4641)
!4647 = !DILocation(line: 43, column: 5, scope: !4468, inlinedAt: !4641)
!4648 = !DILocation(line: 86, column: 10, scope: !4636)
!4649 = !DILocation(line: 86, column: 3, scope: !4636)
!4650 = distinct !DISubprogram(name: "xcalloc", scope: !4458, file: !4458, line: 93, type: !4444, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !4651)
!4651 = !{!4652, !4653, !4654}
!4652 = !DILocalVariable(name: "n", arg: 1, scope: !4650, file: !4458, line: 93, type: !166)
!4653 = !DILocalVariable(name: "s", arg: 2, scope: !4650, file: !4458, line: 93, type: !166)
!4654 = !DILocalVariable(name: "p", scope: !4650, file: !4458, line: 95, type: !43)
!4655 = !DILocation(line: 93, column: 17, scope: !4650)
!4656 = !DILocation(line: 93, column: 27, scope: !4650)
!4657 = !DILocation(line: 100, column: 7, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4650, file: !4458, line: 100, column: 7)
!4659 = !DILocation(line: 101, column: 7, scope: !4658)
!4660 = !DILocation(line: 101, column: 18, scope: !4658)
!4661 = !DILocation(line: 95, column: 9, scope: !4650)
!4662 = !DILocation(line: 101, column: 16, scope: !4658)
!4663 = !DILocation(line: 100, column: 7, scope: !4650)
!4664 = !DILocation(line: 102, column: 5, scope: !4658)
!4665 = !DILocation(line: 103, column: 3, scope: !4650)
!4666 = distinct !DISubprogram(name: "xmemdup", scope: !4458, file: !4458, line: 111, type: !4667, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !4671)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!43, !4669, !166}
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4671 = !{!4672, !4673}
!4672 = !DILocalVariable(name: "p", arg: 1, scope: !4666, file: !4458, line: 111, type: !4669)
!4673 = !DILocalVariable(name: "s", arg: 2, scope: !4666, file: !4458, line: 111, type: !166)
!4674 = !DILocation(line: 111, column: 22, scope: !4666)
!4675 = !DILocation(line: 111, column: 32, scope: !4666)
!4676 = !DILocation(line: 39, column: 17, scope: !4457, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 113, column: 18, scope: !4666)
!4678 = !DILocation(line: 41, column: 13, scope: !4457, inlinedAt: !4677)
!4679 = !DILocation(line: 41, column: 9, scope: !4457, inlinedAt: !4677)
!4680 = !DILocation(line: 42, column: 8, scope: !4468, inlinedAt: !4677)
!4681 = !DILocation(line: 42, column: 15, scope: !4468, inlinedAt: !4677)
!4682 = !DILocation(line: 42, column: 10, scope: !4468, inlinedAt: !4677)
!4683 = !DILocation(line: 43, column: 5, scope: !4468, inlinedAt: !4677)
!4684 = !DILocation(line: 113, column: 10, scope: !4666)
!4685 = !DILocation(line: 113, column: 3, scope: !4666)
!4686 = distinct !DISubprogram(name: "xstrdup", scope: !4458, file: !4458, line: 119, type: !3759, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !4687)
!4687 = !{!4688}
!4688 = !DILocalVariable(name: "string", arg: 1, scope: !4686, file: !4458, line: 119, type: !40)
!4689 = !DILocation(line: 119, column: 22, scope: !4686)
!4690 = !DILocation(line: 121, column: 27, scope: !4686)
!4691 = !DILocation(line: 121, column: 43, scope: !4686)
!4692 = !DILocation(line: 111, column: 22, scope: !4666, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 121, column: 10, scope: !4686)
!4694 = !DILocation(line: 111, column: 32, scope: !4666, inlinedAt: !4693)
!4695 = !DILocation(line: 39, column: 17, scope: !4457, inlinedAt: !4696)
!4696 = distinct !DILocation(line: 113, column: 18, scope: !4666, inlinedAt: !4693)
!4697 = !DILocation(line: 41, column: 13, scope: !4457, inlinedAt: !4696)
!4698 = !DILocation(line: 41, column: 9, scope: !4457, inlinedAt: !4696)
!4699 = !DILocation(line: 42, column: 8, scope: !4468, inlinedAt: !4696)
!4700 = !DILocation(line: 42, column: 15, scope: !4468, inlinedAt: !4696)
!4701 = !DILocation(line: 42, column: 10, scope: !4468, inlinedAt: !4696)
!4702 = !DILocation(line: 43, column: 5, scope: !4468, inlinedAt: !4696)
!4703 = !DILocation(line: 113, column: 10, scope: !4666, inlinedAt: !4693)
!4704 = !DILocation(line: 121, column: 3, scope: !4686)
!4705 = distinct !DISubprogram(name: "xalloc_die", scope: !4706, file: !4706, line: 32, type: !1166, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !247, retainedNodes: !67)
!4706 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4707 = !DILocation(line: 34, column: 10, scope: !4705)
!4708 = !DILocation(line: 34, column: 33, scope: !4705)
!4709 = !DILocation(line: 34, column: 3, scope: !4705)
!4710 = !DILocation(line: 40, column: 3, scope: !4705)
!4711 = distinct !DISubprogram(name: "rpl_calloc", scope: !4712, file: !4712, line: 42, type: !4444, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !249, retainedNodes: !4713)
!4712 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4713 = !{!4714, !4715, !4716, !4717}
!4714 = !DILocalVariable(name: "n", arg: 1, scope: !4711, file: !4712, line: 42, type: !166)
!4715 = !DILocalVariable(name: "s", arg: 2, scope: !4711, file: !4712, line: 42, type: !166)
!4716 = !DILocalVariable(name: "result", scope: !4711, file: !4712, line: 44, type: !43)
!4717 = !DILocalVariable(name: "bytes", scope: !4718, file: !4712, line: 56, type: !166)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !4712, line: 53, column: 5)
!4719 = distinct !DILexicalBlock(scope: !4711, file: !4712, line: 47, column: 7)
!4720 = !DILocation(line: 42, column: 20, scope: !4711)
!4721 = !DILocation(line: 42, column: 30, scope: !4711)
!4722 = !DILocation(line: 47, column: 9, scope: !4719)
!4723 = !DILocation(line: 47, column: 19, scope: !4719)
!4724 = !DILocation(line: 47, column: 14, scope: !4719)
!4725 = !DILocation(line: 56, column: 24, scope: !4718)
!4726 = !DILocation(line: 56, column: 14, scope: !4718)
!4727 = !DILocation(line: 57, column: 17, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4718, file: !4712, line: 57, column: 11)
!4729 = !DILocation(line: 57, column: 21, scope: !4728)
!4730 = !DILocation(line: 57, column: 11, scope: !4718)
!4731 = !DILocation(line: 59, column: 11, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4728, file: !4712, line: 58, column: 9)
!4733 = !DILocation(line: 59, column: 17, scope: !4732)
!4734 = !DILocation(line: 65, column: 12, scope: !4711)
!4735 = !DILocation(line: 44, column: 9, scope: !4711)
!4736 = !DILocation(line: 72, column: 3, scope: !4711)
!4737 = !DILocation(line: 0, scope: !4732)
!4738 = !DILocation(line: 73, column: 1, scope: !4711)
!4739 = distinct !DISubprogram(name: "rpl_fclose", scope: !4740, file: !4740, line: 58, type: !4741, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !251, retainedNodes: !4777)
!4740 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!57, !4743}
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !893, line: 7, baseType: !4745)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !895, line: 49, size: 1728, elements: !4746)
!4746 = !{!4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4745, file: !895, line: 51, baseType: !57, size: 32)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4745, file: !895, line: 54, baseType: !74, size: 64, offset: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4745, file: !895, line: 55, baseType: !74, size: 64, offset: 128)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4745, file: !895, line: 56, baseType: !74, size: 64, offset: 192)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4745, file: !895, line: 57, baseType: !74, size: 64, offset: 256)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4745, file: !895, line: 58, baseType: !74, size: 64, offset: 320)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4745, file: !895, line: 59, baseType: !74, size: 64, offset: 384)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4745, file: !895, line: 60, baseType: !74, size: 64, offset: 448)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4745, file: !895, line: 61, baseType: !74, size: 64, offset: 512)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4745, file: !895, line: 64, baseType: !74, size: 64, offset: 576)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4745, file: !895, line: 65, baseType: !74, size: 64, offset: 640)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4745, file: !895, line: 66, baseType: !74, size: 64, offset: 704)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4745, file: !895, line: 68, baseType: !910, size: 64, offset: 768)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4745, file: !895, line: 70, baseType: !4761, size: 64, offset: 832)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4745, file: !895, line: 72, baseType: !57, size: 32, offset: 896)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4745, file: !895, line: 73, baseType: !57, size: 32, offset: 928)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4745, file: !895, line: 74, baseType: !917, size: 64, offset: 960)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4745, file: !895, line: 77, baseType: !91, size: 16, offset: 1024)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4745, file: !895, line: 78, baseType: !920, size: 8, offset: 1040)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4745, file: !895, line: 79, baseType: !922, size: 8, offset: 1048)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4745, file: !895, line: 81, baseType: !924, size: 64, offset: 1088)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4745, file: !895, line: 89, baseType: !927, size: 64, offset: 1152)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4745, file: !895, line: 91, baseType: !929, size: 64, offset: 1216)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4745, file: !895, line: 92, baseType: !932, size: 64, offset: 1280)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4745, file: !895, line: 93, baseType: !4761, size: 64, offset: 1344)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4745, file: !895, line: 94, baseType: !43, size: 64, offset: 1408)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4745, file: !895, line: 95, baseType: !166, size: 64, offset: 1472)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4745, file: !895, line: 96, baseType: !57, size: 32, offset: 1536)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4745, file: !895, line: 98, baseType: !854, size: 160, offset: 1568)
!4777 = !{!4778, !4779, !4780, !4781}
!4778 = !DILocalVariable(name: "fp", arg: 1, scope: !4739, file: !4740, line: 58, type: !4743)
!4779 = !DILocalVariable(name: "saved_errno", scope: !4739, file: !4740, line: 60, type: !57)
!4780 = !DILocalVariable(name: "fd", scope: !4739, file: !4740, line: 61, type: !57)
!4781 = !DILocalVariable(name: "result", scope: !4739, file: !4740, line: 62, type: !57)
!4782 = !DILocation(line: 58, column: 19, scope: !4739)
!4783 = !DILocation(line: 60, column: 7, scope: !4739)
!4784 = !DILocation(line: 62, column: 7, scope: !4739)
!4785 = !DILocation(line: 65, column: 8, scope: !4739)
!4786 = !DILocation(line: 61, column: 7, scope: !4739)
!4787 = !DILocation(line: 66, column: 10, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4739, file: !4740, line: 66, column: 7)
!4789 = !DILocation(line: 66, column: 7, scope: !4739)
!4790 = !DILocation(line: 67, column: 12, scope: !4788)
!4791 = !DILocation(line: 67, column: 5, scope: !4788)
!4792 = !DILocation(line: 72, column: 9, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4739, file: !4740, line: 72, column: 7)
!4794 = !DILocation(line: 72, column: 23, scope: !4793)
!4795 = !DILocation(line: 72, column: 33, scope: !4793)
!4796 = !DILocation(line: 72, column: 26, scope: !4793)
!4797 = !DILocation(line: 72, column: 59, scope: !4793)
!4798 = !DILocation(line: 73, column: 7, scope: !4793)
!4799 = !DILocation(line: 73, column: 10, scope: !4793)
!4800 = !DILocation(line: 72, column: 7, scope: !4739)
!4801 = !DILocation(line: 100, column: 12, scope: !4739)
!4802 = !DILocation(line: 105, column: 7, scope: !4739)
!4803 = !DILocation(line: 74, column: 19, scope: !4793)
!4804 = !DILocation(line: 105, column: 19, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4739, file: !4740, line: 105, column: 7)
!4806 = !DILocation(line: 107, column: 13, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4805, file: !4740, line: 106, column: 5)
!4808 = !DILocation(line: 109, column: 5, scope: !4807)
!4809 = !DILocation(line: 0, scope: !4739)
!4810 = !DILocation(line: 112, column: 1, scope: !4739)
!4811 = distinct !DISubprogram(name: "rpl_fflush", scope: !4812, file: !4812, line: 129, type: !4813, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !4849)
!4812 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!57, !4815}
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !893, line: 7, baseType: !4817)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !895, line: 49, size: 1728, elements: !4818)
!4818 = !{!4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4817, file: !895, line: 51, baseType: !57, size: 32)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4817, file: !895, line: 54, baseType: !74, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4817, file: !895, line: 55, baseType: !74, size: 64, offset: 128)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4817, file: !895, line: 56, baseType: !74, size: 64, offset: 192)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4817, file: !895, line: 57, baseType: !74, size: 64, offset: 256)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4817, file: !895, line: 58, baseType: !74, size: 64, offset: 320)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4817, file: !895, line: 59, baseType: !74, size: 64, offset: 384)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4817, file: !895, line: 60, baseType: !74, size: 64, offset: 448)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4817, file: !895, line: 61, baseType: !74, size: 64, offset: 512)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4817, file: !895, line: 64, baseType: !74, size: 64, offset: 576)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4817, file: !895, line: 65, baseType: !74, size: 64, offset: 640)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4817, file: !895, line: 66, baseType: !74, size: 64, offset: 704)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4817, file: !895, line: 68, baseType: !910, size: 64, offset: 768)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4817, file: !895, line: 70, baseType: !4833, size: 64, offset: 832)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4817, file: !895, line: 72, baseType: !57, size: 32, offset: 896)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4817, file: !895, line: 73, baseType: !57, size: 32, offset: 928)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4817, file: !895, line: 74, baseType: !917, size: 64, offset: 960)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4817, file: !895, line: 77, baseType: !91, size: 16, offset: 1024)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4817, file: !895, line: 78, baseType: !920, size: 8, offset: 1040)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4817, file: !895, line: 79, baseType: !922, size: 8, offset: 1048)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4817, file: !895, line: 81, baseType: !924, size: 64, offset: 1088)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4817, file: !895, line: 89, baseType: !927, size: 64, offset: 1152)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4817, file: !895, line: 91, baseType: !929, size: 64, offset: 1216)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4817, file: !895, line: 92, baseType: !932, size: 64, offset: 1280)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4817, file: !895, line: 93, baseType: !4833, size: 64, offset: 1344)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4817, file: !895, line: 94, baseType: !43, size: 64, offset: 1408)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4817, file: !895, line: 95, baseType: !166, size: 64, offset: 1472)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4817, file: !895, line: 96, baseType: !57, size: 32, offset: 1536)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4817, file: !895, line: 98, baseType: !854, size: 160, offset: 1568)
!4849 = !{!4850}
!4850 = !DILocalVariable(name: "stream", arg: 1, scope: !4811, file: !4812, line: 129, type: !4815)
!4851 = !DILocation(line: 129, column: 19, scope: !4811)
!4852 = !DILocation(line: 150, column: 14, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4811, file: !4812, line: 150, column: 7)
!4854 = !DILocation(line: 150, column: 22, scope: !4853)
!4855 = !DILocation(line: 150, column: 27, scope: !4853)
!4856 = !DILocation(line: 150, column: 7, scope: !4811)
!4857 = !DILocation(line: 151, column: 12, scope: !4853)
!4858 = !DILocation(line: 151, column: 5, scope: !4853)
!4859 = !DILocalVariable(name: "fp", arg: 1, scope: !4860, file: !4812, line: 41, type: !4815)
!4860 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4812, file: !4812, line: 41, type: !4861, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !4863)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{null, !4815}
!4863 = !{!4859}
!4864 = !DILocation(line: 41, column: 48, scope: !4860, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 156, column: 3, scope: !4811)
!4866 = !DILocation(line: 43, column: 11, scope: !4867, inlinedAt: !4865)
!4867 = distinct !DILexicalBlock(scope: !4860, file: !4812, line: 43, column: 7)
!4868 = !{!1085, !795, i64 0}
!4869 = !DILocation(line: 43, column: 18, scope: !4867, inlinedAt: !4865)
!4870 = !DILocation(line: 43, column: 7, scope: !4860, inlinedAt: !4865)
!4871 = !DILocation(line: 45, column: 5, scope: !4867, inlinedAt: !4865)
!4872 = !DILocation(line: 158, column: 10, scope: !4811)
!4873 = !DILocation(line: 158, column: 3, scope: !4811)
!4874 = !DILocation(line: 0, scope: !4811)
!4875 = !DILocation(line: 232, column: 1, scope: !4811)
!4876 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4877, file: !4877, line: 28, type: !4878, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !255, retainedNodes: !4915)
!4877 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!57, !4880, !4914, !57}
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !893, line: 7, baseType: !4882)
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !895, line: 49, size: 1728, elements: !4883)
!4883 = !{!4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4882, file: !895, line: 51, baseType: !57, size: 32)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4882, file: !895, line: 54, baseType: !74, size: 64, offset: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4882, file: !895, line: 55, baseType: !74, size: 64, offset: 128)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4882, file: !895, line: 56, baseType: !74, size: 64, offset: 192)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4882, file: !895, line: 57, baseType: !74, size: 64, offset: 256)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4882, file: !895, line: 58, baseType: !74, size: 64, offset: 320)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4882, file: !895, line: 59, baseType: !74, size: 64, offset: 384)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4882, file: !895, line: 60, baseType: !74, size: 64, offset: 448)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4882, file: !895, line: 61, baseType: !74, size: 64, offset: 512)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4882, file: !895, line: 64, baseType: !74, size: 64, offset: 576)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4882, file: !895, line: 65, baseType: !74, size: 64, offset: 640)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4882, file: !895, line: 66, baseType: !74, size: 64, offset: 704)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4882, file: !895, line: 68, baseType: !910, size: 64, offset: 768)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4882, file: !895, line: 70, baseType: !4898, size: 64, offset: 832)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4882, file: !895, line: 72, baseType: !57, size: 32, offset: 896)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4882, file: !895, line: 73, baseType: !57, size: 32, offset: 928)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4882, file: !895, line: 74, baseType: !917, size: 64, offset: 960)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4882, file: !895, line: 77, baseType: !91, size: 16, offset: 1024)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4882, file: !895, line: 78, baseType: !920, size: 8, offset: 1040)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4882, file: !895, line: 79, baseType: !922, size: 8, offset: 1048)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4882, file: !895, line: 81, baseType: !924, size: 64, offset: 1088)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4882, file: !895, line: 89, baseType: !927, size: 64, offset: 1152)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4882, file: !895, line: 91, baseType: !929, size: 64, offset: 1216)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4882, file: !895, line: 92, baseType: !932, size: 64, offset: 1280)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4882, file: !895, line: 93, baseType: !4898, size: 64, offset: 1344)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4882, file: !895, line: 94, baseType: !43, size: 64, offset: 1408)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4882, file: !895, line: 95, baseType: !166, size: 64, offset: 1472)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4882, file: !895, line: 96, baseType: !57, size: 32, offset: 1536)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4882, file: !895, line: 98, baseType: !854, size: 160, offset: 1568)
!4914 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2460, line: 63, baseType: !917)
!4915 = !{!4916, !4917, !4918, !4919}
!4916 = !DILocalVariable(name: "fp", arg: 1, scope: !4876, file: !4877, line: 28, type: !4880)
!4917 = !DILocalVariable(name: "offset", arg: 2, scope: !4876, file: !4877, line: 28, type: !4914)
!4918 = !DILocalVariable(name: "whence", arg: 3, scope: !4876, file: !4877, line: 28, type: !57)
!4919 = !DILocalVariable(name: "pos", scope: !4920, file: !4877, line: 117, type: !4914)
!4920 = distinct !DILexicalBlock(scope: !4921, file: !4877, line: 113, column: 5)
!4921 = distinct !DILexicalBlock(scope: !4876, file: !4877, line: 52, column: 7)
!4922 = !DILocation(line: 28, column: 15, scope: !4876)
!4923 = !DILocation(line: 28, column: 25, scope: !4876)
!4924 = !DILocation(line: 28, column: 37, scope: !4876)
!4925 = !DILocation(line: 52, column: 11, scope: !4921)
!4926 = !{!1085, !727, i64 16}
!4927 = !DILocation(line: 52, column: 31, scope: !4921)
!4928 = !{!1085, !727, i64 8}
!4929 = !DILocation(line: 52, column: 24, scope: !4921)
!4930 = !DILocation(line: 53, column: 7, scope: !4921)
!4931 = !DILocation(line: 53, column: 14, scope: !4921)
!4932 = !DILocation(line: 53, column: 35, scope: !4921)
!4933 = !{!1085, !727, i64 32}
!4934 = !DILocation(line: 53, column: 28, scope: !4921)
!4935 = !DILocation(line: 54, column: 7, scope: !4921)
!4936 = !DILocation(line: 54, column: 14, scope: !4921)
!4937 = !{!1085, !727, i64 72}
!4938 = !DILocation(line: 54, column: 28, scope: !4921)
!4939 = !DILocation(line: 52, column: 7, scope: !4876)
!4940 = !DILocation(line: 117, column: 26, scope: !4920)
!4941 = !DILocation(line: 117, column: 19, scope: !4920)
!4942 = !DILocation(line: 117, column: 13, scope: !4920)
!4943 = !DILocation(line: 118, column: 15, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4920, file: !4877, line: 118, column: 11)
!4945 = !DILocation(line: 118, column: 11, scope: !4920)
!4946 = !DILocation(line: 129, column: 11, scope: !4920)
!4947 = !DILocation(line: 129, column: 18, scope: !4920)
!4948 = !DILocation(line: 130, column: 11, scope: !4920)
!4949 = !DILocation(line: 130, column: 19, scope: !4920)
!4950 = !{!1085, !968, i64 144}
!4951 = !DILocation(line: 161, column: 7, scope: !4920)
!4952 = !DILocation(line: 163, column: 10, scope: !4876)
!4953 = !DILocation(line: 163, column: 3, scope: !4876)
!4954 = !DILocation(line: 0, scope: !4876)
!4955 = !DILocation(line: 164, column: 1, scope: !4876)
!4956 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4957, file: !4957, line: 385, type: !4958, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !4972)
!4957 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!166, !4960, !40, !166, !4961}
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2723, line: 6, baseType: !4963)
!4963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2725, line: 21, baseType: !4964)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2725, line: 13, size: 64, elements: !4965)
!4965 = !{!4966, !4967}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4964, file: !2725, line: 15, baseType: !57, size: 32)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4964, file: !2725, line: 20, baseType: !4968, size: 32, offset: 32)
!4968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4964, file: !2725, line: 16, size: 32, elements: !4969)
!4969 = !{!4970, !4971}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4968, file: !2725, line: 18, baseType: !7, size: 32)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4968, file: !2725, line: 19, baseType: !834, size: 32)
!4972 = !{!4973, !4974, !4975, !4976, !4977, !4978, !4979}
!4973 = !DILocalVariable(name: "pwc", arg: 1, scope: !4956, file: !4957, line: 385, type: !4960)
!4974 = !DILocalVariable(name: "s", arg: 2, scope: !4956, file: !4957, line: 385, type: !40)
!4975 = !DILocalVariable(name: "n", arg: 3, scope: !4956, file: !4957, line: 385, type: !166)
!4976 = !DILocalVariable(name: "ps", arg: 4, scope: !4956, file: !4957, line: 385, type: !4961)
!4977 = !DILocalVariable(name: "ret", scope: !4956, file: !4957, line: 387, type: !166)
!4978 = !DILocalVariable(name: "wc", scope: !4956, file: !4957, line: 388, type: !2736)
!4979 = !DILocalVariable(name: "uc", scope: !4980, file: !4957, line: 449, type: !48)
!4980 = distinct !DILexicalBlock(scope: !4981, file: !4957, line: 448, column: 5)
!4981 = distinct !DILexicalBlock(scope: !4956, file: !4957, line: 447, column: 7)
!4982 = !DILocation(line: 385, column: 23, scope: !4956)
!4983 = !DILocation(line: 385, column: 40, scope: !4956)
!4984 = !DILocation(line: 385, column: 50, scope: !4956)
!4985 = !DILocation(line: 385, column: 64, scope: !4956)
!4986 = !DILocation(line: 388, column: 3, scope: !4956)
!4987 = !DILocation(line: 404, column: 9, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4956, file: !4957, line: 404, column: 7)
!4989 = !DILocation(line: 404, column: 7, scope: !4956)
!4990 = !DILocation(line: 439, column: 9, scope: !4956)
!4991 = !DILocation(line: 387, column: 10, scope: !4956)
!4992 = !DILocation(line: 447, column: 19, scope: !4981)
!4993 = !DILocation(line: 447, column: 31, scope: !4981)
!4994 = !DILocation(line: 447, column: 26, scope: !4981)
!4995 = !DILocation(line: 447, column: 41, scope: !4981)
!4996 = !DILocation(line: 447, column: 7, scope: !4956)
!4997 = !DILocation(line: 449, column: 26, scope: !4980)
!4998 = !DILocation(line: 449, column: 21, scope: !4980)
!4999 = !DILocation(line: 450, column: 14, scope: !4980)
!5000 = !DILocation(line: 450, column: 12, scope: !4980)
!5001 = !DILocation(line: 0, scope: !4980)
!5002 = !DILocation(line: 456, column: 1, scope: !4956)
!5003 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !5004, file: !5004, line: 49, type: !5005, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !5031)
!5004 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!74, !5007}
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5009)
!5009 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !5010)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !823, line: 55, size: 3072, elements: !5011)
!5011 = !{!5012, !5013, !5014, !5015, !5016, !5017, !5018, !5023, !5024, !5029, !5030}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !5010, file: !823, line: 57, baseType: !826, size: 16)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !5010, file: !823, line: 58, baseType: !828, size: 32, offset: 32)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !5010, file: !823, line: 59, baseType: !830, size: 256, offset: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !5010, file: !823, line: 60, baseType: !834, size: 32, offset: 320)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !5010, file: !823, line: 61, baseType: !830, size: 256, offset: 352)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !5010, file: !823, line: 62, baseType: !192, size: 2048, offset: 608)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !5010, file: !823, line: 63, baseType: !5019, size: 32, offset: 2656)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !823, line: 42, size: 32, elements: !5020)
!5020 = !{!5021, !5022}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !5019, file: !823, line: 45, baseType: !826, size: 16)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !5019, file: !823, line: 46, baseType: !826, size: 16, offset: 16)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !5010, file: !823, line: 70, baseType: !845, size: 32, offset: 2688)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !5010, file: !823, line: 75, baseType: !5025, size: 64, offset: 2720)
!5025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5010, file: !823, line: 71, size: 64, elements: !5026)
!5026 = !{!5027, !5028}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5025, file: !823, line: 73, baseType: !845, size: 32)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !5025, file: !823, line: 74, baseType: !845, size: 32, offset: 32)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !5010, file: !823, line: 80, baseType: !852, size: 128, offset: 2784)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !5010, file: !823, line: 81, baseType: !854, size: 160, offset: 2912)
!5031 = !{!5032, !5033, !5034}
!5032 = !DILocalVariable(name: "ut", arg: 1, scope: !5003, file: !5004, line: 49, type: !5007)
!5033 = !DILocalVariable(name: "p", scope: !5003, file: !5004, line: 51, type: !74)
!5034 = !DILocalVariable(name: "trimmed_name", scope: !5003, file: !5004, line: 51, type: !74)
!5035 = !DILocation(line: 49, column: 42, scope: !5003)
!5036 = !DILocation(line: 53, column: 18, scope: !5003)
!5037 = !DILocation(line: 51, column: 13, scope: !5003)
!5038 = !DILocation(line: 54, column: 26, scope: !5003)
!5039 = !DILocalVariable(name: "__dest", arg: 1, scope: !5040, file: !5041, line: 103, type: !5044)
!5040 = distinct !DISubprogram(name: "strncpy", scope: !5041, file: !5041, line: 103, type: !5042, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !5046)
!5041 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!74, !5044, !5045, !166}
!5044 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!5045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!5046 = !{!5039, !5047, !5048}
!5047 = !DILocalVariable(name: "__src", arg: 2, scope: !5040, file: !5041, line: 103, type: !5045)
!5048 = !DILocalVariable(name: "__len", arg: 3, scope: !5040, file: !5041, line: 103, type: !166)
!5049 = !DILocation(line: 103, column: 1, scope: !5040, inlinedAt: !5050)
!5050 = distinct !DILocation(line: 54, column: 3, scope: !5003)
!5051 = !DILocation(line: 106, column: 57, scope: !5040, inlinedAt: !5050)
!5052 = !DILocation(line: 106, column: 10, scope: !5040, inlinedAt: !5050)
!5053 = !DILocation(line: 58, column: 3, scope: !5003)
!5054 = !DILocation(line: 58, column: 39, scope: !5003)
!5055 = !DILocation(line: 59, column: 27, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5003, file: !5004, line: 59, column: 3)
!5057 = !DILocation(line: 60, column: 21, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5056, file: !5004, line: 59, column: 3)
!5059 = !DILocation(line: 60, column: 25, scope: !5058)
!5060 = !DILocation(line: 59, column: 25, scope: !5056)
!5061 = !DILocation(line: 51, column: 9, scope: !5003)
!5062 = !DILocation(line: 60, column: 28, scope: !5058)
!5063 = !DILocation(line: 60, column: 34, scope: !5058)
!5064 = !DILocation(line: 59, column: 3, scope: !5056)
!5065 = !DILocation(line: 61, column: 13, scope: !5058)
!5066 = distinct !{!5066, !5064, !5067}
!5067 = !DILocation(line: 62, column: 5, scope: !5056)
!5068 = !DILocation(line: 63, column: 3, scope: !5003)
!5069 = distinct !DISubprogram(name: "read_utmp", scope: !5004, file: !5004, line: 92, type: !5070, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !5074)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!57, !40, !238, !5072, !57}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5074 = !{!5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082}
!5075 = !DILocalVariable(name: "file", arg: 1, scope: !5069, file: !5004, line: 92, type: !40)
!5076 = !DILocalVariable(name: "n_entries", arg: 2, scope: !5069, file: !5004, line: 92, type: !238)
!5077 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !5069, file: !5004, line: 92, type: !5072)
!5078 = !DILocalVariable(name: "options", arg: 4, scope: !5069, file: !5004, line: 93, type: !57)
!5079 = !DILocalVariable(name: "n_read", scope: !5069, file: !5004, line: 95, type: !166)
!5080 = !DILocalVariable(name: "n_alloc", scope: !5069, file: !5004, line: 96, type: !166)
!5081 = !DILocalVariable(name: "utmp", scope: !5069, file: !5004, line: 97, type: !5073)
!5082 = !DILocalVariable(name: "u", scope: !5069, file: !5004, line: 98, type: !5073)
!5083 = !DILocation(line: 92, column: 24, scope: !5069)
!5084 = !DILocation(line: 92, column: 38, scope: !5069)
!5085 = !DILocation(line: 92, column: 63, scope: !5069)
!5086 = !DILocation(line: 93, column: 16, scope: !5069)
!5087 = !DILocation(line: 95, column: 10, scope: !5069)
!5088 = !DILocation(line: 96, column: 10, scope: !5069)
!5089 = !DILocation(line: 97, column: 16, scope: !5069)
!5090 = !DILocation(line: 104, column: 3, scope: !5069)
!5091 = !DILocation(line: 106, column: 3, scope: !5069)
!5092 = !DILocation(line: 108, column: 15, scope: !5069)
!5093 = !DILocation(line: 98, column: 16, scope: !5069)
!5094 = !DILocation(line: 108, column: 32, scope: !5069)
!5095 = !DILocation(line: 108, column: 3, scope: !5069)
!5096 = !DILocalVariable(name: "u", arg: 1, scope: !5097, file: !5004, line: 69, type: !5007)
!5097 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !5004, file: !5004, line: 69, type: !5098, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !5100)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!109, !5007, !57}
!5100 = !{!5096, !5101, !5102}
!5101 = !DILocalVariable(name: "options", arg: 2, scope: !5097, file: !5004, line: 69, type: !57)
!5102 = !DILocalVariable(name: "user_proc", scope: !5097, file: !5004, line: 71, type: !109)
!5103 = !DILocation(line: 69, column: 42, scope: !5097, inlinedAt: !5104)
!5104 = distinct !DILocation(line: 109, column: 9, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5069, file: !5004, line: 109, column: 9)
!5106 = !DILocation(line: 69, column: 49, scope: !5097, inlinedAt: !5104)
!5107 = !DILocation(line: 71, column: 20, scope: !5097, inlinedAt: !5104)
!5108 = !DILocation(line: 0, scope: !5097, inlinedAt: !5104)
!5109 = !DILocation(line: 72, column: 42, scope: !5110, inlinedAt: !5104)
!5110 = distinct !DILexicalBlock(scope: !5097, file: !5004, line: 72, column: 7)
!5111 = !DILocation(line: 75, column: 7, scope: !5112, inlinedAt: !5104)
!5112 = distinct !DILexicalBlock(scope: !5097, file: !5004, line: 74, column: 7)
!5113 = !DILocation(line: 76, column: 14, scope: !5112, inlinedAt: !5104)
!5114 = !{!1012, !795, i64 4}
!5115 = !DILocation(line: 76, column: 12, scope: !5112, inlinedAt: !5104)
!5116 = !DILocation(line: 77, column: 7, scope: !5112, inlinedAt: !5104)
!5117 = !DILocation(line: 77, column: 11, scope: !5112, inlinedAt: !5104)
!5118 = !DILocation(line: 77, column: 32, scope: !5112, inlinedAt: !5104)
!5119 = !DILocation(line: 77, column: 36, scope: !5112, inlinedAt: !5104)
!5120 = !DILocation(line: 77, column: 39, scope: !5112, inlinedAt: !5104)
!5121 = !DILocation(line: 77, column: 45, scope: !5112, inlinedAt: !5104)
!5122 = !DILocation(line: 74, column: 7, scope: !5097, inlinedAt: !5104)
!5123 = !DILocation(line: 111, column: 20, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !5004, line: 111, column: 13)
!5125 = distinct !DILexicalBlock(scope: !5105, file: !5004, line: 110, column: 7)
!5126 = !DILocation(line: 111, column: 13, scope: !5125)
!5127 = !DILocation(line: 174, column: 19, scope: !264, inlinedAt: !5128)
!5128 = distinct !DILocation(line: 112, column: 18, scope: !5124)
!5129 = !DILocation(line: 174, column: 41, scope: !264, inlinedAt: !5128)
!5130 = !DILocation(line: 176, column: 10, scope: !264, inlinedAt: !5128)
!5131 = !DILocation(line: 178, column: 9, scope: !5132, inlinedAt: !5128)
!5132 = distinct !DILexicalBlock(scope: !264, file: !234, line: 178, column: 7)
!5133 = !DILocation(line: 178, column: 7, scope: !264, inlinedAt: !5128)
!5134 = !DILocation(line: 180, column: 13, scope: !5135, inlinedAt: !5128)
!5135 = distinct !DILexicalBlock(scope: !5136, file: !234, line: 180, column: 11)
!5136 = distinct !DILexicalBlock(scope: !5132, file: !234, line: 179, column: 5)
!5137 = !DILocation(line: 180, column: 11, scope: !5136, inlinedAt: !5128)
!5138 = !DILocation(line: 191, column: 11, scope: !5139, inlinedAt: !5128)
!5139 = distinct !DILexicalBlock(scope: !5136, file: !234, line: 191, column: 11)
!5140 = !DILocation(line: 191, column: 11, scope: !5136, inlinedAt: !5128)
!5141 = !DILocation(line: 192, column: 9, scope: !5139, inlinedAt: !5128)
!5142 = !DILocation(line: 201, column: 11, scope: !5143, inlinedAt: !5128)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !234, line: 200, column: 11)
!5144 = distinct !DILexicalBlock(scope: !5132, file: !234, line: 195, column: 5)
!5145 = !DILocation(line: 200, column: 11, scope: !5144, inlinedAt: !5128)
!5146 = !DILocation(line: 202, column: 9, scope: !5143, inlinedAt: !5128)
!5147 = !DILocation(line: 203, column: 14, scope: !5144, inlinedAt: !5128)
!5148 = !DILocation(line: 203, column: 18, scope: !5144, inlinedAt: !5128)
!5149 = !DILocation(line: 203, column: 9, scope: !5144, inlinedAt: !5128)
!5150 = !DILocation(line: 0, scope: !264, inlinedAt: !5128)
!5151 = !DILocation(line: 207, column: 25, scope: !264, inlinedAt: !5128)
!5152 = !DILocation(line: 207, column: 10, scope: !264, inlinedAt: !5128)
!5153 = !DILocation(line: 112, column: 18, scope: !5124)
!5154 = !DILocation(line: 112, column: 11, scope: !5124)
!5155 = !DILocation(line: 0, scope: !5069)
!5156 = !DILocation(line: 114, column: 20, scope: !5125)
!5157 = !DILocation(line: 114, column: 9, scope: !5125)
!5158 = !DILocation(line: 114, column: 26, scope: !5125)
!5159 = !{i64 0, i64 2, !2975, i64 4, i64 4, !794, i64 8, i64 32, !1009, i64 40, i64 4, !1009, i64 44, i64 32, !1009, i64 76, i64 256, !1009, i64 332, i64 2, !2975, i64 334, i64 2, !2975, i64 336, i64 4, !794, i64 340, i64 4, !794, i64 344, i64 4, !794, i64 348, i64 16, !1009, i64 364, i64 20, !1009}
!5160 = !DILocation(line: 115, column: 7, scope: !5125)
!5161 = distinct !{!5161, !5095, !5162}
!5162 = !DILocation(line: 115, column: 7, scope: !5069)
!5163 = !DILocation(line: 0, scope: !5124)
!5164 = !DILocation(line: 0, scope: !5125)
!5165 = !DILocation(line: 117, column: 3, scope: !5069)
!5166 = !DILocation(line: 119, column: 14, scope: !5069)
!5167 = !DILocation(line: 120, column: 13, scope: !5069)
!5168 = !DILocation(line: 122, column: 3, scope: !5069)
!5169 = distinct !DISubprogram(name: "tzalloc", scope: !275, file: !275, line: 95, type: !5170, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !5172)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!283, !40}
!5172 = !{!5173, !5174, !5175, !5176}
!5173 = !DILocalVariable(name: "name", arg: 1, scope: !5169, file: !275, line: 95, type: !40)
!5174 = !DILocalVariable(name: "name_size", scope: !5169, file: !275, line: 97, type: !166)
!5175 = !DILocalVariable(name: "abbr_size", scope: !5169, file: !275, line: 98, type: !166)
!5176 = !DILocalVariable(name: "tz", scope: !5169, file: !275, line: 99, type: !283)
!5177 = !DILocation(line: 95, column: 22, scope: !5169)
!5178 = !DILocation(line: 97, column: 22, scope: !5169)
!5179 = !DILocation(line: 97, column: 29, scope: !5169)
!5180 = !DILocation(line: 97, column: 43, scope: !5169)
!5181 = !DILocation(line: 97, column: 10, scope: !5169)
!5182 = !DILocation(line: 98, column: 32, scope: !5169)
!5183 = !DILocation(line: 99, column: 27, scope: !5169)
!5184 = !DILocation(line: 99, column: 19, scope: !5169)
!5185 = !DILocation(line: 99, column: 14, scope: !5169)
!5186 = !DILocation(line: 100, column: 7, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5169, file: !275, line: 100, column: 7)
!5188 = !DILocation(line: 100, column: 7, scope: !5169)
!5189 = !DILocation(line: 102, column: 11, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5187, file: !275, line: 101, column: 5)
!5191 = !DILocation(line: 102, column: 16, scope: !5190)
!5192 = !DILocation(line: 106, column: 23, scope: !5190)
!5193 = !DILocation(line: 106, column: 11, scope: !5190)
!5194 = !DILocation(line: 106, column: 21, scope: !5190)
!5195 = !DILocation(line: 107, column: 11, scope: !5190)
!5196 = !DILocation(line: 107, column: 20, scope: !5190)
!5197 = !DILocation(line: 108, column: 11, scope: !5190)
!5198 = !DILocalVariable(name: "abbrs", arg: 1, scope: !5199, file: !275, line: 86, type: !74)
!5199 = distinct !DISubprogram(name: "extend_abbrs", scope: !275, file: !275, line: 86, type: !5200, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !5202)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{null, !74, !40, !166}
!5202 = !{!5198, !5203, !5204}
!5203 = !DILocalVariable(name: "abbr", arg: 2, scope: !5199, file: !275, line: 86, type: !40)
!5204 = !DILocalVariable(name: "abbr_size", arg: 3, scope: !5199, file: !275, line: 86, type: !166)
!5205 = !DILocation(line: 86, column: 21, scope: !5199, inlinedAt: !5206)
!5206 = distinct !DILocation(line: 109, column: 9, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5190, file: !275, line: 108, column: 11)
!5208 = !DILocation(line: 86, column: 40, scope: !5199, inlinedAt: !5206)
!5209 = !DILocation(line: 86, column: 53, scope: !5199, inlinedAt: !5206)
!5210 = !DILocation(line: 88, column: 3, scope: !5199, inlinedAt: !5206)
!5211 = !DILocation(line: 89, column: 3, scope: !5199, inlinedAt: !5206)
!5212 = !DILocation(line: 89, column: 20, scope: !5199, inlinedAt: !5206)
!5213 = !DILocation(line: 109, column: 9, scope: !5207)
!5214 = !DILocation(line: 111, column: 3, scope: !5169)
!5215 = distinct !DISubprogram(name: "tzfree", scope: !275, file: !275, line: 196, type: !5216, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !5218)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{null, !283}
!5218 = !{!5219, !5220}
!5219 = !DILocalVariable(name: "tz", arg: 1, scope: !5215, file: !275, line: 196, type: !283)
!5220 = !DILocalVariable(name: "next", scope: !5221, file: !275, line: 201, type: !283)
!5221 = distinct !DILexicalBlock(scope: !5222, file: !275, line: 200, column: 7)
!5222 = distinct !DILexicalBlock(scope: !5215, file: !275, line: 198, column: 7)
!5223 = !DILocation(line: 196, column: 20, scope: !5215)
!5224 = !DILocation(line: 198, column: 7, scope: !5215)
!5225 = !DILocation(line: 201, column: 31, scope: !5221)
!5226 = !DILocation(line: 201, column: 20, scope: !5221)
!5227 = !DILocation(line: 202, column: 15, scope: !5221)
!5228 = !DILocation(line: 202, column: 9, scope: !5221)
!5229 = !DILocation(line: 199, column: 5, scope: !5222)
!5230 = !DILocation(line: 205, column: 1, scope: !5215)
!5231 = distinct !DISubprogram(name: "localtime_rz", scope: !275, file: !275, line: 287, type: !5232, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !5250)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!5234, !283, !5248, !5234}
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !876, line: 7, size: 448, elements: !5236)
!5236 = !{!5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !5235, file: !876, line: 9, baseType: !57, size: 32)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !5235, file: !876, line: 10, baseType: !57, size: 32, offset: 32)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !5235, file: !876, line: 11, baseType: !57, size: 32, offset: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !5235, file: !876, line: 12, baseType: !57, size: 32, offset: 96)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !5235, file: !876, line: 13, baseType: !57, size: 32, offset: 128)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !5235, file: !876, line: 14, baseType: !57, size: 32, offset: 160)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !5235, file: !876, line: 15, baseType: !57, size: 32, offset: 192)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !5235, file: !876, line: 16, baseType: !57, size: 32, offset: 224)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !5235, file: !876, line: 17, baseType: !57, size: 32, offset: 256)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !5235, file: !876, line: 20, baseType: !47, size: 64, offset: 320)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !5235, file: !876, line: 21, baseType: !40, size: 64, offset: 384)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!5250 = !{!5251, !5252, !5253, !5254, !5257}
!5251 = !DILocalVariable(name: "tz", arg: 1, scope: !5231, file: !275, line: 287, type: !283)
!5252 = !DILocalVariable(name: "t", arg: 2, scope: !5231, file: !275, line: 287, type: !5248)
!5253 = !DILocalVariable(name: "tm", arg: 3, scope: !5231, file: !275, line: 287, type: !5234)
!5254 = !DILocalVariable(name: "old_tz", scope: !5255, file: !275, line: 308, type: !283)
!5255 = distinct !DILexicalBlock(scope: !5256, file: !275, line: 307, column: 5)
!5256 = distinct !DILexicalBlock(scope: !5231, file: !275, line: 304, column: 7)
!5257 = !DILocalVariable(name: "abbr_saved", scope: !5258, file: !275, line: 311, type: !109)
!5258 = distinct !DILexicalBlock(scope: !5259, file: !275, line: 310, column: 9)
!5259 = distinct !DILexicalBlock(scope: !5255, file: !275, line: 309, column: 11)
!5260 = !DILocation(line: 287, column: 26, scope: !5231)
!5261 = !DILocation(line: 287, column: 44, scope: !5231)
!5262 = !DILocation(line: 287, column: 58, scope: !5231)
!5263 = !DILocation(line: 304, column: 8, scope: !5256)
!5264 = !DILocation(line: 304, column: 7, scope: !5231)
!5265 = !DILocation(line: 305, column: 12, scope: !5256)
!5266 = !DILocation(line: 305, column: 5, scope: !5256)
!5267 = !DILocation(line: 308, column: 27, scope: !5255)
!5268 = !DILocation(line: 308, column: 18, scope: !5255)
!5269 = !DILocation(line: 309, column: 11, scope: !5259)
!5270 = !DILocation(line: 309, column: 11, scope: !5255)
!5271 = !DILocation(line: 311, column: 29, scope: !5258)
!5272 = !DILocation(line: 311, column: 49, scope: !5258)
!5273 = !DILocation(line: 311, column: 52, scope: !5258)
!5274 = !DILocalVariable(name: "tz", arg: 1, scope: !5275, file: !275, line: 269, type: !283)
!5275 = distinct !DISubprogram(name: "revert_tz", scope: !275, file: !275, line: 269, type: !5276, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !5278)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!109, !283}
!5278 = !{!5274, !5279, !5282}
!5279 = !DILocalVariable(name: "saved_errno", scope: !5280, file: !275, line: 275, type: !57)
!5280 = distinct !DILexicalBlock(scope: !5281, file: !275, line: 274, column: 5)
!5281 = distinct !DILexicalBlock(scope: !5275, file: !275, line: 271, column: 7)
!5282 = !DILocalVariable(name: "ok", scope: !5280, file: !275, line: 276, type: !109)
!5283 = !DILocation(line: 269, column: 23, scope: !5275, inlinedAt: !5284)
!5284 = distinct !DILocation(line: 312, column: 15, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5258, file: !275, line: 312, column: 15)
!5286 = !DILocation(line: 271, column: 10, scope: !5281, inlinedAt: !5284)
!5287 = !DILocation(line: 271, column: 7, scope: !5275, inlinedAt: !5284)
!5288 = !DILocation(line: 275, column: 25, scope: !5280, inlinedAt: !5284)
!5289 = !DILocation(line: 275, column: 11, scope: !5280, inlinedAt: !5284)
!5290 = !DILocalVariable(name: "tz", arg: 1, scope: !5291, file: !275, line: 229, type: !283)
!5291 = distinct !DISubprogram(name: "change_env", scope: !275, file: !275, line: 229, type: !5276, isLocal: true, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !5292)
!5292 = !{!5290}
!5293 = !DILocation(line: 229, column: 24, scope: !5291, inlinedAt: !5294)
!5294 = distinct !DILocation(line: 276, column: 17, scope: !5280, inlinedAt: !5284)
!5295 = !DILocation(line: 231, column: 22, scope: !5296, inlinedAt: !5294)
!5296 = distinct !DILexicalBlock(scope: !5291, file: !275, line: 231, column: 7)
!5297 = !DILocation(line: 231, column: 18, scope: !5296, inlinedAt: !5294)
!5298 = !DILocation(line: 222, column: 10, scope: !5299, inlinedAt: !5304)
!5299 = distinct !DISubprogram(name: "setenv_TZ", scope: !275, file: !275, line: 220, type: !5300, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !5302)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{!57, !40}
!5302 = !{!5303}
!5303 = !DILocalVariable(name: "tz", arg: 1, scope: !5299, file: !275, line: 220, type: !40)
!5304 = distinct !DILocation(line: 231, column: 7, scope: !5296, inlinedAt: !5294)
!5305 = !DILocation(line: 231, column: 34, scope: !5296, inlinedAt: !5294)
!5306 = !DILocation(line: 220, column: 24, scope: !5299, inlinedAt: !5304)
!5307 = !DILocation(line: 222, column: 15, scope: !5299, inlinedAt: !5304)
!5308 = !DILocation(line: 222, column: 38, scope: !5299, inlinedAt: !5304)
!5309 = !DILocation(line: 231, column: 52, scope: !5296, inlinedAt: !5294)
!5310 = !DILocation(line: 231, column: 7, scope: !5291, inlinedAt: !5294)
!5311 = !DILocation(line: 233, column: 3, scope: !5291, inlinedAt: !5294)
!5312 = !DILocation(line: 277, column: 11, scope: !5280, inlinedAt: !5284)
!5313 = !DILocation(line: 278, column: 23, scope: !5314, inlinedAt: !5284)
!5314 = distinct !DILexicalBlock(scope: !5280, file: !275, line: 277, column: 11)
!5315 = !DILocation(line: 278, column: 9, scope: !5314, inlinedAt: !5284)
!5316 = !DILocation(line: 0, scope: !5314, inlinedAt: !5284)
!5317 = !DILocation(line: 196, column: 20, scope: !5215, inlinedAt: !5318)
!5318 = distinct !DILocation(line: 279, column: 7, scope: !5280, inlinedAt: !5284)
!5319 = !DILocation(line: 198, column: 7, scope: !5215, inlinedAt: !5318)
!5320 = !DILocation(line: 201, column: 31, scope: !5221, inlinedAt: !5318)
!5321 = !DILocation(line: 201, column: 20, scope: !5221, inlinedAt: !5318)
!5322 = !DILocation(line: 202, column: 15, scope: !5221, inlinedAt: !5318)
!5323 = !DILocation(line: 202, column: 9, scope: !5221, inlinedAt: !5318)
!5324 = !DILocation(line: 199, column: 5, scope: !5222, inlinedAt: !5318)
!5325 = !DILocation(line: 280, column: 13, scope: !5280, inlinedAt: !5284)
!5326 = !DILocation(line: 0, scope: !5280, inlinedAt: !5284)
!5327 = !DILocation(line: 312, column: 34, scope: !5285)
!5328 = !DILocation(line: 0, scope: !5256)
!5329 = !DILocation(line: 317, column: 1, scope: !5231)
!5330 = distinct !DISubprogram(name: "set_tz", scope: !275, file: !275, line: 242, type: !5331, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !5333)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!283, !283}
!5333 = !{!5334, !5335, !5336, !5339}
!5334 = !DILocalVariable(name: "tz", arg: 1, scope: !5330, file: !275, line: 242, type: !283)
!5335 = !DILocalVariable(name: "env_tz", scope: !5330, file: !275, line: 244, type: !74)
!5336 = !DILocalVariable(name: "old_tz", scope: !5337, file: !275, line: 251, type: !283)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !275, line: 250, column: 5)
!5338 = distinct !DILexicalBlock(scope: !5330, file: !275, line: 245, column: 7)
!5339 = !DILocalVariable(name: "saved_errno", scope: !5340, file: !275, line: 256, type: !57)
!5340 = distinct !DILexicalBlock(scope: !5341, file: !275, line: 255, column: 9)
!5341 = distinct !DILexicalBlock(scope: !5337, file: !275, line: 254, column: 11)
!5342 = !DILocation(line: 242, column: 20, scope: !5330)
!5343 = !DILocation(line: 214, column: 10, scope: !5344, inlinedAt: !5347)
!5344 = distinct !DISubprogram(name: "getenv_TZ", scope: !275, file: !275, line: 212, type: !5345, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !67)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{!74}
!5347 = distinct !DILocation(line: 244, column: 18, scope: !5330)
!5348 = !DILocation(line: 244, column: 9, scope: !5330)
!5349 = !DILocation(line: 245, column: 7, scope: !5338)
!5350 = !DILocation(line: 0, scope: !5338)
!5351 = !DILocation(line: 245, column: 7, scope: !5330)
!5352 = !DILocation(line: 246, column: 23, scope: !5338)
!5353 = !DILocation(line: 246, column: 34, scope: !5338)
!5354 = !DILocation(line: 246, column: 26, scope: !5338)
!5355 = !DILocation(line: 246, column: 53, scope: !5338)
!5356 = !DILocation(line: 95, column: 22, scope: !5169, inlinedAt: !5357)
!5357 = distinct !DILocation(line: 251, column: 27, scope: !5337)
!5358 = !DILocation(line: 97, column: 29, scope: !5169, inlinedAt: !5357)
!5359 = !DILocation(line: 97, column: 43, scope: !5169, inlinedAt: !5357)
!5360 = !DILocation(line: 97, column: 10, scope: !5169, inlinedAt: !5357)
!5361 = !DILocation(line: 98, column: 32, scope: !5169, inlinedAt: !5357)
!5362 = !DILocation(line: 99, column: 27, scope: !5169, inlinedAt: !5357)
!5363 = !DILocation(line: 99, column: 19, scope: !5169, inlinedAt: !5357)
!5364 = !DILocation(line: 99, column: 14, scope: !5169, inlinedAt: !5357)
!5365 = !DILocation(line: 100, column: 7, scope: !5187, inlinedAt: !5357)
!5366 = !DILocation(line: 100, column: 7, scope: !5169, inlinedAt: !5357)
!5367 = !DILocation(line: 102, column: 11, scope: !5190, inlinedAt: !5357)
!5368 = !DILocation(line: 102, column: 16, scope: !5190, inlinedAt: !5357)
!5369 = !DILocation(line: 106, column: 23, scope: !5190, inlinedAt: !5357)
!5370 = !DILocation(line: 106, column: 11, scope: !5190, inlinedAt: !5357)
!5371 = !DILocation(line: 106, column: 21, scope: !5190, inlinedAt: !5357)
!5372 = !DILocation(line: 107, column: 11, scope: !5190, inlinedAt: !5357)
!5373 = !DILocation(line: 107, column: 20, scope: !5190, inlinedAt: !5357)
!5374 = !DILocation(line: 108, column: 11, scope: !5190, inlinedAt: !5357)
!5375 = !DILocation(line: 86, column: 21, scope: !5199, inlinedAt: !5376)
!5376 = distinct !DILocation(line: 109, column: 9, scope: !5207, inlinedAt: !5357)
!5377 = !DILocation(line: 86, column: 40, scope: !5199, inlinedAt: !5376)
!5378 = !DILocation(line: 88, column: 3, scope: !5199, inlinedAt: !5376)
!5379 = !DILocation(line: 89, column: 3, scope: !5199, inlinedAt: !5376)
!5380 = !DILocation(line: 89, column: 20, scope: !5199, inlinedAt: !5376)
!5381 = !DILocation(line: 109, column: 9, scope: !5207, inlinedAt: !5357)
!5382 = !DILocation(line: 229, column: 24, scope: !5291, inlinedAt: !5383)
!5383 = distinct !DILocation(line: 254, column: 13, scope: !5341)
!5384 = !DILocation(line: 222, column: 10, scope: !5299, inlinedAt: !5385)
!5385 = distinct !DILocation(line: 231, column: 7, scope: !5296, inlinedAt: !5383)
!5386 = !DILocation(line: 231, column: 34, scope: !5296, inlinedAt: !5383)
!5387 = !DILocation(line: 220, column: 24, scope: !5299, inlinedAt: !5385)
!5388 = !DILocation(line: 222, column: 15, scope: !5299, inlinedAt: !5385)
!5389 = !DILocation(line: 222, column: 38, scope: !5299, inlinedAt: !5385)
!5390 = !DILocation(line: 231, column: 52, scope: !5296, inlinedAt: !5383)
!5391 = !DILocation(line: 231, column: 7, scope: !5291, inlinedAt: !5383)
!5392 = !DILocation(line: 233, column: 3, scope: !5291, inlinedAt: !5383)
!5393 = !DILocation(line: 254, column: 11, scope: !5337)
!5394 = !DILocation(line: 256, column: 29, scope: !5340)
!5395 = !DILocation(line: 256, column: 15, scope: !5340)
!5396 = !DILocation(line: 196, column: 20, scope: !5215, inlinedAt: !5397)
!5397 = distinct !DILocation(line: 257, column: 11, scope: !5340)
!5398 = !DILocation(line: 198, column: 7, scope: !5215, inlinedAt: !5397)
!5399 = !DILocation(line: 201, column: 31, scope: !5221, inlinedAt: !5397)
!5400 = !DILocation(line: 201, column: 20, scope: !5221, inlinedAt: !5397)
!5401 = !DILocation(line: 202, column: 15, scope: !5221, inlinedAt: !5397)
!5402 = !DILocation(line: 202, column: 9, scope: !5221, inlinedAt: !5397)
!5403 = !DILocation(line: 199, column: 5, scope: !5222, inlinedAt: !5397)
!5404 = !DILocation(line: 258, column: 17, scope: !5340)
!5405 = !DILocation(line: 0, scope: !5337)
!5406 = !DILocation(line: 263, column: 1, scope: !5330)
!5407 = distinct !DISubprogram(name: "save_abbr", scope: !275, file: !275, line: 119, type: !5408, isLocal: true, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !5410)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!109, !283, !5234}
!5410 = !{!5411, !5412, !5413, !5414, !5415, !5421}
!5411 = !DILocalVariable(name: "tz", arg: 1, scope: !5407, file: !275, line: 119, type: !283)
!5412 = !DILocalVariable(name: "tm", arg: 2, scope: !5407, file: !275, line: 119, type: !5234)
!5413 = !DILocalVariable(name: "zone", scope: !5407, file: !275, line: 122, type: !40)
!5414 = !DILocalVariable(name: "zone_copy", scope: !5407, file: !275, line: 123, type: !74)
!5415 = !DILocalVariable(name: "zone_size", scope: !5416, file: !275, line: 153, type: !166)
!5416 = distinct !DILexicalBlock(scope: !5417, file: !275, line: 152, column: 13)
!5417 = distinct !DILexicalBlock(scope: !5418, file: !275, line: 151, column: 15)
!5418 = distinct !DILexicalBlock(scope: !5419, file: !275, line: 150, column: 9)
!5419 = distinct !DILexicalBlock(scope: !5420, file: !275, line: 146, column: 5)
!5420 = distinct !DILexicalBlock(scope: !5407, file: !275, line: 145, column: 7)
!5421 = !DILocalVariable(name: "zone_used", scope: !5416, file: !275, line: 154, type: !166)
!5422 = !DILocation(line: 119, column: 23, scope: !5407)
!5423 = !DILocation(line: 119, column: 38, scope: !5407)
!5424 = !DILocation(line: 122, column: 15, scope: !5407)
!5425 = !DILocation(line: 130, column: 14, scope: !5407)
!5426 = !DILocation(line: 142, column: 8, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5407, file: !275, line: 142, column: 7)
!5428 = !DILocation(line: 142, column: 13, scope: !5427)
!5429 = !DILocation(line: 142, column: 17, scope: !5427)
!5430 = !DILocation(line: 142, column: 29, scope: !5427)
!5431 = !DILocation(line: 142, column: 37, scope: !5427)
!5432 = !DILocation(line: 142, column: 60, scope: !5427)
!5433 = !DILocation(line: 142, column: 47, scope: !5427)
!5434 = !DILocation(line: 142, column: 45, scope: !5427)
!5435 = !DILocation(line: 142, column: 7, scope: !5407)
!5436 = !DILocation(line: 145, column: 7, scope: !5420)
!5437 = !DILocation(line: 145, column: 7, scope: !5407)
!5438 = !DILocation(line: 147, column: 19, scope: !5419)
!5439 = !DILocation(line: 123, column: 9, scope: !5407)
!5440 = !DILocation(line: 149, column: 14, scope: !5419)
!5441 = !DILocation(line: 149, column: 39, scope: !5419)
!5442 = !DILocation(line: 149, column: 7, scope: !5419)
!5443 = !DILocation(line: 151, column: 18, scope: !5417)
!5444 = !DILocation(line: 151, column: 29, scope: !5417)
!5445 = !DILocation(line: 151, column: 46, scope: !5417)
!5446 = !DILocation(line: 151, column: 43, scope: !5417)
!5447 = !DILocation(line: 151, column: 56, scope: !5417)
!5448 = !DILocation(line: 151, column: 63, scope: !5417)
!5449 = !DILocation(line: 151, column: 59, scope: !5417)
!5450 = !DILocation(line: 151, column: 15, scope: !5418)
!5451 = !DILocation(line: 153, column: 34, scope: !5416)
!5452 = !DILocation(line: 153, column: 48, scope: !5416)
!5453 = !DILocation(line: 153, column: 22, scope: !5416)
!5454 = !DILocation(line: 154, column: 44, scope: !5416)
!5455 = !DILocation(line: 154, column: 22, scope: !5416)
!5456 = !DILocation(line: 155, column: 28, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5416, file: !275, line: 155, column: 19)
!5458 = !DILocation(line: 155, column: 40, scope: !5457)
!5459 = !DILocation(line: 155, column: 19, scope: !5416)
!5460 = !DILocation(line: 157, column: 19, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5457, file: !275, line: 156, column: 17)
!5462 = !DILocation(line: 157, column: 25, scope: !5461)
!5463 = !DILocation(line: 158, column: 19, scope: !5461)
!5464 = !DILocation(line: 160, column: 29, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5416, file: !275, line: 160, column: 19)
!5466 = !DILocation(line: 160, column: 41, scope: !5465)
!5467 = !DILocation(line: 160, column: 19, scope: !5416)
!5468 = !DILocation(line: 86, column: 21, scope: !5199, inlinedAt: !5469)
!5469 = distinct !DILocation(line: 161, column: 17, scope: !5465)
!5470 = !DILocation(line: 86, column: 40, scope: !5199, inlinedAt: !5469)
!5471 = !DILocation(line: 86, column: 53, scope: !5199, inlinedAt: !5469)
!5472 = !DILocation(line: 88, column: 3, scope: !5199, inlinedAt: !5469)
!5473 = !DILocation(line: 89, column: 3, scope: !5199, inlinedAt: !5469)
!5474 = !DILocation(line: 89, column: 20, scope: !5199, inlinedAt: !5469)
!5475 = !DILocation(line: 161, column: 17, scope: !5465)
!5476 = !DILocation(line: 95, column: 22, scope: !5169, inlinedAt: !5477)
!5477 = distinct !DILocation(line: 164, column: 35, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5465, file: !275, line: 163, column: 17)
!5479 = !DILocation(line: 97, column: 10, scope: !5169, inlinedAt: !5477)
!5480 = !DILocation(line: 98, column: 32, scope: !5169, inlinedAt: !5477)
!5481 = !DILocation(line: 99, column: 27, scope: !5169, inlinedAt: !5477)
!5482 = !DILocation(line: 99, column: 19, scope: !5169, inlinedAt: !5477)
!5483 = !DILocation(line: 100, column: 7, scope: !5187, inlinedAt: !5477)
!5484 = !DILocation(line: 100, column: 7, scope: !5169, inlinedAt: !5477)
!5485 = !DILocation(line: 102, column: 11, scope: !5190, inlinedAt: !5477)
!5486 = !DILocation(line: 102, column: 16, scope: !5190, inlinedAt: !5477)
!5487 = !DILocation(line: 106, column: 11, scope: !5190, inlinedAt: !5477)
!5488 = !DILocation(line: 106, column: 21, scope: !5190, inlinedAt: !5477)
!5489 = !DILocation(line: 107, column: 11, scope: !5190, inlinedAt: !5477)
!5490 = !DILocation(line: 107, column: 20, scope: !5190, inlinedAt: !5477)
!5491 = !DILocation(line: 86, column: 21, scope: !5199, inlinedAt: !5492)
!5492 = distinct !DILocation(line: 109, column: 9, scope: !5207, inlinedAt: !5477)
!5493 = !DILocation(line: 86, column: 40, scope: !5199, inlinedAt: !5492)
!5494 = !DILocation(line: 88, column: 3, scope: !5199, inlinedAt: !5492)
!5495 = !DILocation(line: 89, column: 3, scope: !5199, inlinedAt: !5492)
!5496 = !DILocation(line: 89, column: 20, scope: !5199, inlinedAt: !5492)
!5497 = !DILocation(line: 164, column: 33, scope: !5478)
!5498 = !DILocation(line: 167, column: 33, scope: !5478)
!5499 = !DILocation(line: 99, column: 14, scope: !5169, inlinedAt: !5477)
!5500 = !DILocation(line: 165, column: 23, scope: !5478)
!5501 = !DILocation(line: 173, column: 24, scope: !5418)
!5502 = !DILocation(line: 173, column: 43, scope: !5418)
!5503 = !DILocation(line: 173, column: 21, scope: !5418)
!5504 = !DILocation(line: 174, column: 16, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5418, file: !275, line: 174, column: 15)
!5506 = !DILocation(line: 174, column: 27, scope: !5505)
!5507 = !DILocation(line: 174, column: 34, scope: !5505)
!5508 = !DILocation(line: 174, column: 30, scope: !5505)
!5509 = !DILocation(line: 177, column: 27, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5505, file: !275, line: 175, column: 13)
!5511 = !DILocation(line: 174, column: 15, scope: !5418)
!5512 = !DILocation(line: 0, scope: !5418)
!5513 = distinct !{!5513, !5442, !5514}
!5514 = !DILocation(line: 179, column: 9, scope: !5419)
!5515 = !DILocation(line: 0, scope: !5407)
!5516 = !DILocation(line: 184, column: 15, scope: !5407)
!5517 = !DILocation(line: 191, column: 3, scope: !5407)
!5518 = !DILocation(line: 0, scope: !5461)
!5519 = !DILocation(line: 192, column: 1, scope: !5407)
!5520 = distinct !DISubprogram(name: "mktime_z", scope: !275, file: !275, line: 321, type: !5521, isLocal: false, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !5523)
!5521 = !DISubroutineType(types: !5522)
!5522 = !{!44, !283, !5234}
!5523 = !{!5524, !5525, !5526, !5529, !5532, !5533}
!5524 = !DILocalVariable(name: "tz", arg: 1, scope: !5520, file: !275, line: 321, type: !283)
!5525 = !DILocalVariable(name: "tm", arg: 2, scope: !5520, file: !275, line: 321, type: !5234)
!5526 = !DILocalVariable(name: "old_tz", scope: !5527, file: !275, line: 327, type: !283)
!5527 = distinct !DILexicalBlock(scope: !5528, file: !275, line: 326, column: 5)
!5528 = distinct !DILexicalBlock(scope: !5520, file: !275, line: 323, column: 7)
!5529 = !DILocalVariable(name: "t", scope: !5530, file: !275, line: 330, type: !44)
!5530 = distinct !DILexicalBlock(scope: !5531, file: !275, line: 329, column: 9)
!5531 = distinct !DILexicalBlock(scope: !5527, file: !275, line: 328, column: 11)
!5532 = !DILocalVariable(name: "badtime", scope: !5530, file: !275, line: 332, type: !44)
!5533 = !DILocalVariable(name: "tm_1", scope: !5530, file: !275, line: 333, type: !5235)
!5534 = !DILocation(line: 321, column: 22, scope: !5520)
!5535 = !DILocation(line: 321, column: 37, scope: !5520)
!5536 = !DILocation(line: 323, column: 8, scope: !5528)
!5537 = !DILocation(line: 323, column: 7, scope: !5520)
!5538 = !DILocation(line: 324, column: 12, scope: !5528)
!5539 = !DILocation(line: 324, column: 5, scope: !5528)
!5540 = !DILocation(line: 327, column: 27, scope: !5527)
!5541 = !DILocation(line: 327, column: 18, scope: !5527)
!5542 = !DILocation(line: 328, column: 11, scope: !5531)
!5543 = !DILocation(line: 328, column: 11, scope: !5527)
!5544 = !DILocation(line: 330, column: 11, scope: !5530)
!5545 = !DILocation(line: 330, column: 22, scope: !5530)
!5546 = !DILocation(line: 330, column: 18, scope: !5530)
!5547 = !DILocation(line: 332, column: 18, scope: !5530)
!5548 = !DILocation(line: 333, column: 11, scope: !5530)
!5549 = !DILocation(line: 334, column: 18, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5530, file: !275, line: 334, column: 15)
!5551 = !DILocation(line: 335, column: 16, scope: !5550)
!5552 = !DILocation(line: 333, column: 21, scope: !5530)
!5553 = !DILocation(line: 335, column: 20, scope: !5550)
!5554 = !DILocation(line: 335, column: 44, scope: !5550)
!5555 = !DILocalVariable(name: "a", arg: 1, scope: !5556, file: !275, line: 69, type: !5559)
!5556 = distinct !DISubprogram(name: "equal_tm", scope: !275, file: !275, line: 69, type: !5557, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !5561)
!5557 = !DISubroutineType(types: !5558)
!5558 = !{!57, !5559, !5559}
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5235)
!5561 = !{!5555, !5562}
!5562 = !DILocalVariable(name: "b", arg: 2, scope: !5556, file: !275, line: 69, type: !5559)
!5563 = !DILocation(line: 69, column: 28, scope: !5556, inlinedAt: !5564)
!5564 = distinct !DILocation(line: 335, column: 47, scope: !5550)
!5565 = !DILocation(line: 69, column: 48, scope: !5556, inlinedAt: !5564)
!5566 = !DILocation(line: 71, column: 17, scope: !5556, inlinedAt: !5564)
!5567 = !DILocation(line: 71, column: 29, scope: !5556, inlinedAt: !5564)
!5568 = !DILocation(line: 71, column: 24, scope: !5556, inlinedAt: !5564)
!5569 = !DILocation(line: 72, column: 19, scope: !5556, inlinedAt: !5564)
!5570 = !DILocation(line: 72, column: 31, scope: !5556, inlinedAt: !5564)
!5571 = !DILocation(line: 72, column: 26, scope: !5556, inlinedAt: !5564)
!5572 = !DILocation(line: 72, column: 13, scope: !5556, inlinedAt: !5564)
!5573 = !DILocation(line: 73, column: 19, scope: !5556, inlinedAt: !5564)
!5574 = !DILocation(line: 73, column: 32, scope: !5556, inlinedAt: !5564)
!5575 = !DILocation(line: 73, column: 27, scope: !5556, inlinedAt: !5564)
!5576 = !DILocation(line: 73, column: 13, scope: !5556, inlinedAt: !5564)
!5577 = !DILocation(line: 74, column: 13, scope: !5556, inlinedAt: !5564)
!5578 = !DILocation(line: 75, column: 19, scope: !5556, inlinedAt: !5564)
!5579 = !DILocation(line: 75, column: 31, scope: !5556, inlinedAt: !5564)
!5580 = !DILocation(line: 75, column: 26, scope: !5556, inlinedAt: !5564)
!5581 = !DILocation(line: 75, column: 13, scope: !5556, inlinedAt: !5564)
!5582 = !DILocation(line: 76, column: 13, scope: !5556, inlinedAt: !5564)
!5583 = !DILocation(line: 77, column: 32, scope: !5556, inlinedAt: !5564)
!5584 = !DILocation(line: 77, column: 45, scope: !5556, inlinedAt: !5564)
!5585 = !DILocalVariable(name: "a", arg: 1, scope: !5586, file: !275, line: 62, type: !57)
!5586 = distinct !DISubprogram(name: "isdst_differ", scope: !275, file: !275, line: 62, type: !5587, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !271, retainedNodes: !5589)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!109, !57, !57}
!5589 = !{!5585, !5590}
!5590 = !DILocalVariable(name: "b", arg: 2, scope: !5586, file: !275, line: 62, type: !57)
!5591 = !DILocation(line: 62, column: 19, scope: !5586, inlinedAt: !5592)
!5592 = distinct !DILocation(line: 77, column: 15, scope: !5556, inlinedAt: !5564)
!5593 = !DILocation(line: 62, column: 26, scope: !5586, inlinedAt: !5592)
!5594 = !DILocation(line: 64, column: 10, scope: !5586, inlinedAt: !5592)
!5595 = !DILocation(line: 64, column: 16, scope: !5586, inlinedAt: !5592)
!5596 = !DILocation(line: 64, column: 13, scope: !5586, inlinedAt: !5592)
!5597 = !DILocation(line: 64, column: 19, scope: !5586, inlinedAt: !5592)
!5598 = !DILocation(line: 77, column: 15, scope: !5556, inlinedAt: !5564)
!5599 = !DILocation(line: 77, column: 13, scope: !5556, inlinedAt: !5564)
!5600 = !DILocation(line: 71, column: 10, scope: !5556, inlinedAt: !5564)
!5601 = !DILocation(line: 336, column: 15, scope: !5550)
!5602 = !DILocation(line: 336, column: 19, scope: !5550)
!5603 = !DILocation(line: 334, column: 15, scope: !5530)
!5604 = !DILocation(line: 337, column: 15, scope: !5550)
!5605 = !DILocation(line: 337, column: 13, scope: !5550)
!5606 = !DILocation(line: 269, column: 23, scope: !5275, inlinedAt: !5607)
!5607 = distinct !DILocation(line: 339, column: 15, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5530, file: !275, line: 339, column: 15)
!5609 = !DILocation(line: 271, column: 10, scope: !5281, inlinedAt: !5607)
!5610 = !DILocation(line: 271, column: 7, scope: !5275, inlinedAt: !5607)
!5611 = !DILocation(line: 275, column: 25, scope: !5280, inlinedAt: !5607)
!5612 = !DILocation(line: 275, column: 11, scope: !5280, inlinedAt: !5607)
!5613 = !DILocation(line: 229, column: 24, scope: !5291, inlinedAt: !5614)
!5614 = distinct !DILocation(line: 276, column: 17, scope: !5280, inlinedAt: !5607)
!5615 = !DILocation(line: 231, column: 22, scope: !5296, inlinedAt: !5614)
!5616 = !DILocation(line: 231, column: 18, scope: !5296, inlinedAt: !5614)
!5617 = !DILocation(line: 222, column: 10, scope: !5299, inlinedAt: !5618)
!5618 = distinct !DILocation(line: 231, column: 7, scope: !5296, inlinedAt: !5614)
!5619 = !DILocation(line: 231, column: 34, scope: !5296, inlinedAt: !5614)
!5620 = !DILocation(line: 220, column: 24, scope: !5299, inlinedAt: !5618)
!5621 = !DILocation(line: 222, column: 15, scope: !5299, inlinedAt: !5618)
!5622 = !DILocation(line: 222, column: 38, scope: !5299, inlinedAt: !5618)
!5623 = !DILocation(line: 231, column: 52, scope: !5296, inlinedAt: !5614)
!5624 = !DILocation(line: 231, column: 7, scope: !5291, inlinedAt: !5614)
!5625 = !DILocation(line: 233, column: 3, scope: !5291, inlinedAt: !5614)
!5626 = !DILocation(line: 277, column: 11, scope: !5280, inlinedAt: !5607)
!5627 = !DILocation(line: 278, column: 23, scope: !5314, inlinedAt: !5607)
!5628 = !DILocation(line: 278, column: 9, scope: !5314, inlinedAt: !5607)
!5629 = !DILocation(line: 0, scope: !5314, inlinedAt: !5607)
!5630 = !DILocation(line: 196, column: 20, scope: !5215, inlinedAt: !5631)
!5631 = distinct !DILocation(line: 279, column: 7, scope: !5280, inlinedAt: !5607)
!5632 = !DILocation(line: 198, column: 7, scope: !5215, inlinedAt: !5631)
!5633 = !DILocation(line: 201, column: 31, scope: !5221, inlinedAt: !5631)
!5634 = !DILocation(line: 201, column: 20, scope: !5221, inlinedAt: !5631)
!5635 = !DILocation(line: 202, column: 15, scope: !5221, inlinedAt: !5631)
!5636 = !DILocation(line: 202, column: 9, scope: !5221, inlinedAt: !5631)
!5637 = !DILocation(line: 199, column: 5, scope: !5222, inlinedAt: !5631)
!5638 = !DILocation(line: 280, column: 13, scope: !5280, inlinedAt: !5607)
!5639 = !DILocation(line: 339, column: 15, scope: !5530)
!5640 = !DILocation(line: 341, column: 9, scope: !5531)
!5641 = !DILocation(line: 340, column: 20, scope: !5608)
!5642 = !DILocation(line: 0, scope: !5528)
!5643 = !DILocation(line: 344, column: 1, scope: !5520)
!5644 = distinct !DISubprogram(name: "close_stream", scope: !5645, file: !5645, line: 56, type: !5646, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !295, retainedNodes: !5682)
!5645 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5646 = !DISubroutineType(types: !5647)
!5647 = !{!57, !5648}
!5648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5649, size: 64)
!5649 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !893, line: 7, baseType: !5650)
!5650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !895, line: 49, size: 1728, elements: !5651)
!5651 = !{!5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681}
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5650, file: !895, line: 51, baseType: !57, size: 32)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5650, file: !895, line: 54, baseType: !74, size: 64, offset: 64)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5650, file: !895, line: 55, baseType: !74, size: 64, offset: 128)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5650, file: !895, line: 56, baseType: !74, size: 64, offset: 192)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5650, file: !895, line: 57, baseType: !74, size: 64, offset: 256)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5650, file: !895, line: 58, baseType: !74, size: 64, offset: 320)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5650, file: !895, line: 59, baseType: !74, size: 64, offset: 384)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5650, file: !895, line: 60, baseType: !74, size: 64, offset: 448)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5650, file: !895, line: 61, baseType: !74, size: 64, offset: 512)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5650, file: !895, line: 64, baseType: !74, size: 64, offset: 576)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5650, file: !895, line: 65, baseType: !74, size: 64, offset: 640)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5650, file: !895, line: 66, baseType: !74, size: 64, offset: 704)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5650, file: !895, line: 68, baseType: !910, size: 64, offset: 768)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5650, file: !895, line: 70, baseType: !5666, size: 64, offset: 832)
!5666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5650, size: 64)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5650, file: !895, line: 72, baseType: !57, size: 32, offset: 896)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5650, file: !895, line: 73, baseType: !57, size: 32, offset: 928)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5650, file: !895, line: 74, baseType: !917, size: 64, offset: 960)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5650, file: !895, line: 77, baseType: !91, size: 16, offset: 1024)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5650, file: !895, line: 78, baseType: !920, size: 8, offset: 1040)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5650, file: !895, line: 79, baseType: !922, size: 8, offset: 1048)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5650, file: !895, line: 81, baseType: !924, size: 64, offset: 1088)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5650, file: !895, line: 89, baseType: !927, size: 64, offset: 1152)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5650, file: !895, line: 91, baseType: !929, size: 64, offset: 1216)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5650, file: !895, line: 92, baseType: !932, size: 64, offset: 1280)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5650, file: !895, line: 93, baseType: !5666, size: 64, offset: 1344)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5650, file: !895, line: 94, baseType: !43, size: 64, offset: 1408)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5650, file: !895, line: 95, baseType: !166, size: 64, offset: 1472)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5650, file: !895, line: 96, baseType: !57, size: 32, offset: 1536)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5650, file: !895, line: 98, baseType: !854, size: 160, offset: 1568)
!5682 = !{!5683, !5684, !5686, !5687}
!5683 = !DILocalVariable(name: "stream", arg: 1, scope: !5644, file: !5645, line: 56, type: !5648)
!5684 = !DILocalVariable(name: "some_pending", scope: !5644, file: !5645, line: 58, type: !5685)
!5685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!5686 = !DILocalVariable(name: "prev_fail", scope: !5644, file: !5645, line: 59, type: !5685)
!5687 = !DILocalVariable(name: "fclose_fail", scope: !5644, file: !5645, line: 60, type: !5685)
!5688 = !DILocation(line: 56, column: 21, scope: !5644)
!5689 = !DILocation(line: 58, column: 30, scope: !5644)
!5690 = !DILocalVariable(name: "__stream", arg: 1, scope: !5691, file: !1077, line: 135, type: !5648)
!5691 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1077, file: !1077, line: 135, type: !5646, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !295, retainedNodes: !5692)
!5692 = !{!5690}
!5693 = !DILocation(line: 135, column: 1, scope: !5691, inlinedAt: !5694)
!5694 = distinct !DILocation(line: 59, column: 27, scope: !5644)
!5695 = !DILocation(line: 137, column: 10, scope: !5691, inlinedAt: !5694)
!5696 = !DILocation(line: 59, column: 43, scope: !5644)
!5697 = !DILocation(line: 60, column: 29, scope: !5644)
!5698 = !DILocation(line: 60, column: 45, scope: !5644)
!5699 = !DILocation(line: 70, column: 17, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5644, file: !5645, line: 70, column: 7)
!5701 = !DILocation(line: 58, column: 50, scope: !5644)
!5702 = !DILocation(line: 70, column: 33, scope: !5700)
!5703 = !DILocation(line: 70, column: 53, scope: !5700)
!5704 = !DILocation(line: 70, column: 59, scope: !5700)
!5705 = !DILocation(line: 70, column: 7, scope: !5644)
!5706 = !DILocation(line: 72, column: 11, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5700, file: !5645, line: 71, column: 5)
!5708 = !DILocation(line: 73, column: 9, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5707, file: !5645, line: 72, column: 11)
!5710 = !DILocation(line: 73, column: 15, scope: !5709)
!5711 = !DILocation(line: 0, scope: !5644)
!5712 = !DILocation(line: 78, column: 1, scope: !5644)
!5713 = distinct !DISubprogram(name: "hard_locale", scope: !5714, file: !5714, line: 38, type: !5715, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !297, retainedNodes: !5717)
!5714 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5715 = !DISubroutineType(types: !5716)
!5716 = !{!109, !57}
!5717 = !{!5718, !5719, !5720}
!5718 = !DILocalVariable(name: "category", arg: 1, scope: !5713, file: !5714, line: 38, type: !57)
!5719 = !DILocalVariable(name: "hard", scope: !5713, file: !5714, line: 40, type: !109)
!5720 = !DILocalVariable(name: "p", scope: !5713, file: !5714, line: 41, type: !40)
!5721 = !DILocation(line: 38, column: 18, scope: !5713)
!5722 = !DILocation(line: 40, column: 8, scope: !5713)
!5723 = !DILocation(line: 41, column: 19, scope: !5713)
!5724 = !DILocation(line: 41, column: 15, scope: !5713)
!5725 = !DILocation(line: 43, column: 7, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5713, file: !5714, line: 43, column: 7)
!5727 = !DILocation(line: 43, column: 7, scope: !5713)
!5728 = !DILocation(line: 47, column: 15, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5730, file: !5714, line: 47, column: 15)
!5730 = distinct !DILexicalBlock(scope: !5731, file: !5714, line: 46, column: 9)
!5731 = distinct !DILexicalBlock(scope: !5732, file: !5714, line: 45, column: 11)
!5732 = distinct !DILexicalBlock(scope: !5726, file: !5714, line: 44, column: 5)
!5733 = !DILocation(line: 47, column: 31, scope: !5729)
!5734 = !DILocation(line: 47, column: 36, scope: !5729)
!5735 = !DILocation(line: 47, column: 39, scope: !5729)
!5736 = !DILocation(line: 47, column: 59, scope: !5729)
!5737 = !DILocation(line: 47, column: 15, scope: !5730)
!5738 = !DILocation(line: 48, column: 13, scope: !5729)
!5739 = !DILocation(line: 71, column: 3, scope: !5713)
!5740 = distinct !DISubprogram(name: "locale_charset", scope: !5741, file: !5741, line: 687, type: !5742, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !299, retainedNodes: !5744)
!5741 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5742 = !DISubroutineType(types: !5743)
!5743 = !{!40}
!5744 = !{!5745}
!5745 = !DILocalVariable(name: "codeset", scope: !5740, file: !5741, line: 689, type: !40)
!5746 = !DILocation(line: 696, column: 13, scope: !5740)
!5747 = !DILocation(line: 689, column: 15, scope: !5740)
!5748 = !DILocation(line: 754, column: 15, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5740, file: !5741, line: 754, column: 7)
!5750 = !DILocation(line: 754, column: 7, scope: !5740)
!5751 = !DILocation(line: 907, column: 13, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5753, file: !5741, line: 907, column: 13)
!5753 = distinct !DILexicalBlock(scope: !5754, file: !5741, line: 897, column: 7)
!5754 = distinct !DILexicalBlock(scope: !5740, file: !5741, line: 856, column: 3)
!5755 = !DILocation(line: 907, column: 24, scope: !5752)
!5756 = !DILocation(line: 907, column: 13, scope: !5753)
!5757 = !DILocation(line: 995, column: 3, scope: !5740)
