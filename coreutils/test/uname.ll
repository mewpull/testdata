; ModuleID = 'coreutils-8.30/src/uname.bc'
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
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [362 x i8] c"Print certain system information.  With no OPTION, same as -s.\0A\0A  -a, --all                print all information, in the following order,\0A                             except omit -p and -i if unknown:\0A  -s, --kernel-name        print the kernel name\0A  -n, --nodename           print the network node hostname\0A  -r, --kernel-release     print the kernel release\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [303 x i8] c"  -v, --kernel-version     print the kernel version\0A  -m, --machine            print the machine hardware name\0A  -p, --processor          print the processor type (non-portable)\0A  -i, --hardware-platform  print the hardware platform (non-portable)\0A  -o, --operating-system   print the operating system\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Print machine architecture.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@arch_long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.30 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Karel Zak\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"asnrvmpio\00", align 1
@uname_long_options = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !49
@optind = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"cannot get system name\00", align 1
@print_element.printed = internal unnamed_addr global i1 false, align 1, !dbg !74
@main.unknown = internal constant [8 x i8] c"unknown\00", align 1, !dbg !11
@.str.13 = private unnamed_addr constant [10 x i8] c"GNU/Linux\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"kernel-name\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"sysname\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"nodename\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"kernel-release\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"kernel-version\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"processor\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"hardware-platform\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"operating-system\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@uname_mode = dso_local local_unnamed_addr global i32 1, align 4, !dbg !75
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), align 8, !dbg !80
@.str.47 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !85
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.50 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.51 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.52 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !93
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !100
@.str.59 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 16, !dbg !107
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !152
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !159
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !169
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.75 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.76 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.77 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.78 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !176
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !183
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !171
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !185
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !191
@.str.1.115 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.126 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.130 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !637 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !642, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i32 %0, metadata !641, metadata !DIExpression()), !dbg !663
  %3 = icmp eq i32 %0, 0, !dbg !664
  br i1 %3, label %9, label %4, !dbg !665

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !666, !tbaa !668
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !666
  %7 = load i8*, i8** @program_name, align 8, !dbg !666, !tbaa !668
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !666
  br label %71, !dbg !666

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !672
  %11 = load i8*, i8** @program_name, align 8, !dbg !672, !tbaa !668
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !672
  %13 = load i32, i32* @uname_mode, align 4, !dbg !673, !tbaa !675
  %14 = icmp eq i32 %13, 1, !dbg !677
  br i1 %14, label %15, label %22, !dbg !678

; <label>:15:                                     ; preds = %9
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([362 x i8], [362 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !679
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !679, !tbaa !668
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !679
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([303 x i8], [303 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !681
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !681, !tbaa !668
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !681
  br label %26, !dbg !682

; <label>:22:                                     ; preds = %9
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !683
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !683, !tbaa !668
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24), !dbg !683
  br label %26

; <label>:26:                                     ; preds = %22, %15
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !685
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !668
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !685
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !686
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !668
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31), !dbg !686
  %33 = load i32, i32* @uname_mode, align 4, !dbg !687, !tbaa !675
  %34 = icmp eq i32 %33, 1, !dbg !687
  %35 = select i1 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !687
  call void @llvm.dbg.value(metadata i8* %35, metadata !646, metadata !DIExpression()) #10, !dbg !688
  %36 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !689
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %36) #10, !dbg !689
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %36, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !659
  call void @llvm.dbg.value(metadata i8* %35, metadata !647, metadata !DIExpression()) #10, !dbg !690
  %37 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !691
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !648, metadata !DIExpression()) #10, !dbg !692
  br label %38, !dbg !693

; <label>:38:                                     ; preds = %43, %26
  %39 = phi i8* [ %46, %43 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %26 ]
  %40 = phi %struct.infomap* [ %44, %43 ], [ %37, %26 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !648, metadata !DIExpression()) #10, !dbg !692
  %41 = tail call i32 @strcmp(i8* %35, i8* nonnull %39) #14, !dbg !693
  %42 = icmp eq i32 %41, 0, !dbg !693
  br i1 %42, label %48, label %43, !dbg !694

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 1, !dbg !695
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !648, metadata !DIExpression()) #10, !dbg !692
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 0, !dbg !696
  %46 = load i8*, i8** %45, align 8, !dbg !696, !tbaa !697
  %47 = icmp eq i8* %46, null, !dbg !699
  br i1 %47, label %48, label %38, !dbg !700, !llvm.loop !701

; <label>:48:                                     ; preds = %43, %38
  %49 = phi %struct.infomap* [ %44, %43 ], [ %40, %38 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !648, metadata !DIExpression()) #10, !dbg !692
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !648, metadata !DIExpression()) #10, !dbg !692
  %50 = getelementptr inbounds %struct.infomap, %struct.infomap* %49, i64 0, i32 1, !dbg !704
  %51 = load i8*, i8** %50, align 8, !dbg !704, !tbaa !706
  %52 = icmp eq i8* %51, null, !dbg !707
  %53 = select i1 %52, i8* %35, i8* %51, !dbg !708
  call void @llvm.dbg.value(metadata i8* %53, metadata !647, metadata !DIExpression()) #10, !dbg !690
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !709
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !709
  %56 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !710
  call void @llvm.dbg.value(metadata i8* %56, metadata !655, metadata !DIExpression()) #10, !dbg !711
  %57 = icmp eq i8* %56, null, !dbg !712
  br i1 %57, label %64, label %58, !dbg !714

; <label>:58:                                     ; preds = %48
  %59 = tail call i32 @strncmp(i8* nonnull %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !715
  %60 = icmp eq i32 %59, 0, !dbg !715
  br i1 %60, label %64, label %61, !dbg !716

; <label>:61:                                     ; preds = %58
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !717
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* %35) #10, !dbg !717
  br label %64, !dbg !719

; <label>:64:                                     ; preds = %48, %58, %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !720
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* %35) #10, !dbg !720
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !721
  %68 = icmp eq i8* %53, %35, !dbg !721
  %69 = select i1 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !721
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* %53, i8* %69) #10, !dbg !721
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %36) #10, !dbg !722
  br label %71

; <label>:71:                                     ; preds = %64, %4
  tail call void @exit(i32 %0) #15, !dbg !723
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !13 {
  %3 = alloca %struct.utsname, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i8** %1, metadata !20, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !726
  %4 = load i8*, i8** %1, align 8, !dbg !727, !tbaa !668
  tail call void @set_program_name(i8* %4) #10, !dbg !728
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !729
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !730
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !731
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !732
  call void @llvm.dbg.value(metadata i32 %0, metadata !733, metadata !DIExpression()) #10, !dbg !739
  call void @llvm.dbg.value(metadata i8** %1, metadata !736, metadata !DIExpression()) #10, !dbg !741
  call void @llvm.dbg.value(metadata i32 0, metadata !738, metadata !DIExpression()) #10, !dbg !742
  %9 = load i32, i32* @uname_mode, align 4, !dbg !743, !tbaa !675
  %10 = icmp eq i32 %9, 2, !dbg !745
  br i1 %10, label %11, label %21, !dbg !746

; <label>:11:                                     ; preds = %2
  %12 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @arch_long_options, i64 0, i64 0), i32* null) #10, !dbg !747
  call void @llvm.dbg.value(metadata i32 %12, metadata !737, metadata !DIExpression()) #10, !dbg !749
  switch i32 %12, label %20 [
    i32 -1, label %50
    i32 -130, label %13
    i32 -131, label %14
  ], !dbg !750

; <label>:13:                                     ; preds = %11
  tail call void @usage(i32 0) #15, !dbg !751
  unreachable, !dbg !751

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !754, !tbaa !668
  %16 = load i32, i32* @uname_mode, align 4, !dbg !754, !tbaa !675
  %17 = icmp eq i32 %16, 1, !dbg !754
  %18 = select i1 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !754
  %19 = load i8*, i8** @Version, align 8, !dbg !754, !tbaa !668
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %15, i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8* null) #10, !dbg !754
  tail call void @exit(i32 0) #15, !dbg !754
  unreachable, !dbg !754

; <label>:20:                                     ; preds = %11
  tail call void @usage(i32 1) #15, !dbg !755
  unreachable, !dbg !755

; <label>:21:                                     ; preds = %2, %40
  %22 = phi i32 [ %41, %40 ], [ 0, %2 ], !dbg !756
  call void @llvm.dbg.value(metadata i32 %22, metadata !738, metadata !DIExpression()) #10, !dbg !742
  %23 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), %struct.option* getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @uname_long_options, i64 0, i64 0), i32* null) #10, !dbg !760
  call void @llvm.dbg.value(metadata i32 %23, metadata !737, metadata !DIExpression()) #10, !dbg !749
  switch i32 %23, label %49 [
    i32 -1, label %50
    i32 97, label %40
    i32 115, label %24
    i32 110, label %26
    i32 114, label %28
    i32 118, label %30
    i32 109, label %32
    i32 112, label %34
    i32 105, label %36
    i32 111, label %38
    i32 -130, label %42
    i32 -131, label %43
  ], !dbg !761

; <label>:24:                                     ; preds = %21
  %25 = or i32 %22, 1, !dbg !762
  call void @llvm.dbg.value(metadata i32 %25, metadata !738, metadata !DIExpression()) #10, !dbg !742
  br label %40, !dbg !763

; <label>:26:                                     ; preds = %21
  %27 = or i32 %22, 2, !dbg !764
  call void @llvm.dbg.value(metadata i32 %27, metadata !738, metadata !DIExpression()) #10, !dbg !742
  br label %40, !dbg !765

; <label>:28:                                     ; preds = %21
  %29 = or i32 %22, 4, !dbg !766
  call void @llvm.dbg.value(metadata i32 %29, metadata !738, metadata !DIExpression()) #10, !dbg !742
  br label %40, !dbg !767

; <label>:30:                                     ; preds = %21
  %31 = or i32 %22, 8, !dbg !768
  call void @llvm.dbg.value(metadata i32 %31, metadata !738, metadata !DIExpression()) #10, !dbg !742
  br label %40, !dbg !769

; <label>:32:                                     ; preds = %21
  %33 = or i32 %22, 16, !dbg !770
  call void @llvm.dbg.value(metadata i32 %33, metadata !738, metadata !DIExpression()) #10, !dbg !742
  br label %40, !dbg !771

; <label>:34:                                     ; preds = %21
  %35 = or i32 %22, 32, !dbg !772
  call void @llvm.dbg.value(metadata i32 %35, metadata !738, metadata !DIExpression()) #10, !dbg !742
  br label %40, !dbg !773

; <label>:36:                                     ; preds = %21
  %37 = or i32 %22, 64, !dbg !774
  call void @llvm.dbg.value(metadata i32 %37, metadata !738, metadata !DIExpression()) #10, !dbg !742
  br label %40, !dbg !775

; <label>:38:                                     ; preds = %21
  %39 = or i32 %22, 128, !dbg !776
  call void @llvm.dbg.value(metadata i32 %39, metadata !738, metadata !DIExpression()) #10, !dbg !742
  br label %40, !dbg !777

; <label>:40:                                     ; preds = %38, %36, %34, %32, %30, %28, %26, %24, %21
  %41 = phi i32 [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ -1, %21 ]
  br label %21, !dbg !742, !llvm.loop !778

; <label>:42:                                     ; preds = %21
  tail call void @usage(i32 0) #15, !dbg !781
  unreachable, !dbg !781

; <label>:43:                                     ; preds = %21
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !782, !tbaa !668
  %45 = load i32, i32* @uname_mode, align 4, !dbg !782, !tbaa !675
  %46 = icmp eq i32 %45, 1, !dbg !782
  %47 = select i1 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !782
  %48 = load i8*, i8** @Version, align 8, !dbg !782, !tbaa !668
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %44, i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* null) #10, !dbg !782
  tail call void @exit(i32 0) #15, !dbg !782
  unreachable, !dbg !782

; <label>:49:                                     ; preds = %21
  tail call void @usage(i32 1) #15, !dbg !783
  unreachable, !dbg !783

; <label>:50:                                     ; preds = %21, %11
  %51 = phi i32 [ 16, %11 ], [ %22, %21 ], !dbg !784
  call void @llvm.dbg.value(metadata i32 %51, metadata !738, metadata !DIExpression()) #10, !dbg !742
  %52 = load i32, i32* @optind, align 4, !dbg !785, !tbaa !675
  %53 = icmp eq i32 %52, %0, !dbg !787
  br i1 %53, label %61, label %54, !dbg !788

; <label>:54:                                     ; preds = %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !789
  %56 = load i32, i32* @optind, align 4, !dbg !791, !tbaa !675
  %57 = sext i32 %56 to i64, !dbg !792
  %58 = getelementptr inbounds i8*, i8** %1, i64 %57, !dbg !792
  %59 = load i8*, i8** %58, align 8, !dbg !792, !tbaa !668
  %60 = tail call i8* @quote(i8* %59) #10, !dbg !793
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %55, i8* %60) #10, !dbg !794
  tail call void @usage(i32 1) #15, !dbg !795
  unreachable, !dbg !795

; <label>:61:                                     ; preds = %50
  call void @llvm.dbg.value(metadata i32 %51, metadata !21, metadata !DIExpression()), !dbg !726
  %62 = icmp eq i32 %51, 0, !dbg !796
  %63 = select i1 %62, i32 1, i32 %51, !dbg !798
  call void @llvm.dbg.value(metadata i32 %63, metadata !21, metadata !DIExpression()), !dbg !726
  %64 = and i32 %63, 31, !dbg !799
  %65 = icmp eq i32 %64, 0, !dbg !799
  br i1 %65, label %174, label %66, !dbg !800

; <label>:66:                                     ; preds = %61
  %67 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 0, i64 0, !dbg !801
  call void @llvm.lifetime.start.p0i8(i64 390, i8* nonnull %67) #10, !dbg !801
  call void @llvm.dbg.value(metadata %struct.utsname* %3, metadata !23, metadata !DIExpression(DW_OP_deref)), !dbg !802
  %68 = call i32 @uname(%struct.utsname* nonnull %3) #10, !dbg !803
  %69 = icmp eq i32 %68, -1, !dbg !805
  br i1 %69, label %70, label %74, !dbg !806

; <label>:70:                                     ; preds = %66
  %71 = tail call i32* @__errno_location() #16, !dbg !807
  %72 = load i32, i32* %71, align 4, !dbg !807, !tbaa !675
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !807
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %72, i8* %73) #10, !dbg !807
  unreachable, !dbg !807

; <label>:74:                                     ; preds = %66
  %75 = and i32 %63, 1, !dbg !808
  %76 = icmp eq i32 %75, 0, !dbg !808
  br i1 %76, label %93, label %77, !dbg !810

; <label>:77:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i8* %67, metadata !69, metadata !DIExpression()) #10, !dbg !811
  %78 = load i1, i1* @print_element.printed, align 1
  br i1 %78, label %79, label %90, !dbg !813

; <label>:79:                                     ; preds = %77
  call void @llvm.dbg.value(metadata i32 32, metadata !814, metadata !DIExpression()) #10, !dbg !820
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !823, !tbaa !668
  %81 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %80, i64 0, i32 5, !dbg !823
  %82 = load i8*, i8** %81, align 8, !dbg !823, !tbaa !824
  %83 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %80, i64 0, i32 6, !dbg !823
  %84 = load i8*, i8** %83, align 8, !dbg !823, !tbaa !828
  %85 = icmp ult i8* %82, %84, !dbg !823
  br i1 %85, label %88, label %86, !dbg !823, !prof !829

; <label>:86:                                     ; preds = %79
  %87 = tail call i32 @__overflow(%struct._IO_FILE* %80, i32 32) #10, !dbg !823
  br label %90, !dbg !823

; <label>:88:                                     ; preds = %79
  %89 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !823
  store i8* %89, i8** %81, align 8, !dbg !823, !tbaa !824
  store i8 32, i8* %82, align 1, !dbg !823, !tbaa !830
  br label %90, !dbg !823

; <label>:90:                                     ; preds = %77, %86, %88
  store i1 true, i1* @print_element.printed, align 1
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !831, !tbaa !668
  %92 = call i32 @fputs_unlocked(i8* nonnull %67, %struct._IO_FILE* %91) #10, !dbg !831
  br label %93, !dbg !832

; <label>:93:                                     ; preds = %74, %90
  %94 = and i32 %63, 2, !dbg !833
  %95 = icmp eq i32 %94, 0, !dbg !833
  br i1 %95, label %113, label %96, !dbg !835

; <label>:96:                                     ; preds = %93
  %97 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 1, i64 0, !dbg !836
  call void @llvm.dbg.value(metadata i8* %97, metadata !69, metadata !DIExpression()) #10, !dbg !837
  %98 = load i1, i1* @print_element.printed, align 1
  br i1 %98, label %99, label %110, !dbg !839

; <label>:99:                                     ; preds = %96
  call void @llvm.dbg.value(metadata i32 32, metadata !814, metadata !DIExpression()) #10, !dbg !840
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !842, !tbaa !668
  %101 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 5, !dbg !842
  %102 = load i8*, i8** %101, align 8, !dbg !842, !tbaa !824
  %103 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 6, !dbg !842
  %104 = load i8*, i8** %103, align 8, !dbg !842, !tbaa !828
  %105 = icmp ult i8* %102, %104, !dbg !842
  br i1 %105, label %108, label %106, !dbg !842, !prof !829

; <label>:106:                                    ; preds = %99
  %107 = tail call i32 @__overflow(%struct._IO_FILE* %100, i32 32) #10, !dbg !842
  br label %110, !dbg !842

; <label>:108:                                    ; preds = %99
  %109 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !842
  store i8* %109, i8** %101, align 8, !dbg !842, !tbaa !824
  store i8 32, i8* %102, align 1, !dbg !842, !tbaa !830
  br label %110, !dbg !842

; <label>:110:                                    ; preds = %96, %106, %108
  store i1 true, i1* @print_element.printed, align 1
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !843, !tbaa !668
  %112 = call i32 @fputs_unlocked(i8* nonnull %97, %struct._IO_FILE* %111) #10, !dbg !843
  br label %113, !dbg !844

; <label>:113:                                    ; preds = %93, %110
  %114 = and i32 %63, 4, !dbg !845
  %115 = icmp eq i32 %114, 0, !dbg !845
  br i1 %115, label %133, label %116, !dbg !847

; <label>:116:                                    ; preds = %113
  %117 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 2, i64 0, !dbg !848
  call void @llvm.dbg.value(metadata i8* %117, metadata !69, metadata !DIExpression()) #10, !dbg !849
  %118 = load i1, i1* @print_element.printed, align 1
  br i1 %118, label %119, label %130, !dbg !851

; <label>:119:                                    ; preds = %116
  call void @llvm.dbg.value(metadata i32 32, metadata !814, metadata !DIExpression()) #10, !dbg !852
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !854, !tbaa !668
  %121 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %120, i64 0, i32 5, !dbg !854
  %122 = load i8*, i8** %121, align 8, !dbg !854, !tbaa !824
  %123 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %120, i64 0, i32 6, !dbg !854
  %124 = load i8*, i8** %123, align 8, !dbg !854, !tbaa !828
  %125 = icmp ult i8* %122, %124, !dbg !854
  br i1 %125, label %128, label %126, !dbg !854, !prof !829

; <label>:126:                                    ; preds = %119
  %127 = tail call i32 @__overflow(%struct._IO_FILE* %120, i32 32) #10, !dbg !854
  br label %130, !dbg !854

; <label>:128:                                    ; preds = %119
  %129 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !854
  store i8* %129, i8** %121, align 8, !dbg !854, !tbaa !824
  store i8 32, i8* %122, align 1, !dbg !854, !tbaa !830
  br label %130, !dbg !854

; <label>:130:                                    ; preds = %116, %126, %128
  store i1 true, i1* @print_element.printed, align 1
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !855, !tbaa !668
  %132 = call i32 @fputs_unlocked(i8* nonnull %117, %struct._IO_FILE* %131) #10, !dbg !855
  br label %133, !dbg !856

; <label>:133:                                    ; preds = %113, %130
  %134 = and i32 %63, 8, !dbg !857
  %135 = icmp eq i32 %134, 0, !dbg !857
  br i1 %135, label %153, label %136, !dbg !859

; <label>:136:                                    ; preds = %133
  %137 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 3, i64 0, !dbg !860
  call void @llvm.dbg.value(metadata i8* %137, metadata !69, metadata !DIExpression()) #10, !dbg !861
  %138 = load i1, i1* @print_element.printed, align 1
  br i1 %138, label %139, label %150, !dbg !863

; <label>:139:                                    ; preds = %136
  call void @llvm.dbg.value(metadata i32 32, metadata !814, metadata !DIExpression()) #10, !dbg !864
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !866, !tbaa !668
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %140, i64 0, i32 5, !dbg !866
  %142 = load i8*, i8** %141, align 8, !dbg !866, !tbaa !824
  %143 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %140, i64 0, i32 6, !dbg !866
  %144 = load i8*, i8** %143, align 8, !dbg !866, !tbaa !828
  %145 = icmp ult i8* %142, %144, !dbg !866
  br i1 %145, label %148, label %146, !dbg !866, !prof !829

; <label>:146:                                    ; preds = %139
  %147 = tail call i32 @__overflow(%struct._IO_FILE* %140, i32 32) #10, !dbg !866
  br label %150, !dbg !866

; <label>:148:                                    ; preds = %139
  %149 = getelementptr inbounds i8, i8* %142, i64 1, !dbg !866
  store i8* %149, i8** %141, align 8, !dbg !866, !tbaa !824
  store i8 32, i8* %142, align 1, !dbg !866, !tbaa !830
  br label %150, !dbg !866

; <label>:150:                                    ; preds = %136, %146, %148
  store i1 true, i1* @print_element.printed, align 1
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !867, !tbaa !668
  %152 = call i32 @fputs_unlocked(i8* nonnull %137, %struct._IO_FILE* %151) #10, !dbg !867
  br label %153, !dbg !868

; <label>:153:                                    ; preds = %133, %150
  %154 = and i32 %63, 16, !dbg !869
  %155 = icmp eq i32 %154, 0, !dbg !869
  br i1 %155, label %173, label %156, !dbg !871

; <label>:156:                                    ; preds = %153
  %157 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 4, i64 0, !dbg !872
  call void @llvm.dbg.value(metadata i8* %157, metadata !69, metadata !DIExpression()) #10, !dbg !873
  %158 = load i1, i1* @print_element.printed, align 1
  br i1 %158, label %159, label %170, !dbg !875

; <label>:159:                                    ; preds = %156
  call void @llvm.dbg.value(metadata i32 32, metadata !814, metadata !DIExpression()) #10, !dbg !876
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !878, !tbaa !668
  %161 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 5, !dbg !878
  %162 = load i8*, i8** %161, align 8, !dbg !878, !tbaa !824
  %163 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 6, !dbg !878
  %164 = load i8*, i8** %163, align 8, !dbg !878, !tbaa !828
  %165 = icmp ult i8* %162, %164, !dbg !878
  br i1 %165, label %168, label %166, !dbg !878, !prof !829

; <label>:166:                                    ; preds = %159
  %167 = tail call i32 @__overflow(%struct._IO_FILE* %160, i32 32) #10, !dbg !878
  br label %170, !dbg !878

; <label>:168:                                    ; preds = %159
  %169 = getelementptr inbounds i8, i8* %162, i64 1, !dbg !878
  store i8* %169, i8** %161, align 8, !dbg !878, !tbaa !824
  store i8 32, i8* %162, align 1, !dbg !878, !tbaa !830
  br label %170, !dbg !878

; <label>:170:                                    ; preds = %156, %166, %168
  store i1 true, i1* @print_element.printed, align 1
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !879, !tbaa !668
  %172 = call i32 @fputs_unlocked(i8* nonnull %157, %struct._IO_FILE* %171) #10, !dbg !879
  br label %173, !dbg !880

; <label>:173:                                    ; preds = %153, %170
  call void @llvm.lifetime.end.p0i8(i64 390, i8* nonnull %67) #10, !dbg !881
  br label %174, !dbg !882

; <label>:174:                                    ; preds = %61, %173
  %175 = and i32 %63, 32, !dbg !883
  %176 = icmp eq i32 %175, 0, !dbg !883
  %177 = icmp eq i32 %63, -1, !dbg !884
  %178 = or i1 %177, %176, !dbg !886
  br i1 %178, label %195, label %179, !dbg !886

; <label>:179:                                    ; preds = %174
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !69, metadata !DIExpression()) #10, !dbg !887
  %180 = load i1, i1* @print_element.printed, align 1
  br i1 %180, label %181, label %192, !dbg !889

; <label>:181:                                    ; preds = %179
  call void @llvm.dbg.value(metadata i32 32, metadata !814, metadata !DIExpression()) #10, !dbg !890
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !892, !tbaa !668
  %183 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 5, !dbg !892
  %184 = load i8*, i8** %183, align 8, !dbg !892, !tbaa !824
  %185 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 6, !dbg !892
  %186 = load i8*, i8** %185, align 8, !dbg !892, !tbaa !828
  %187 = icmp ult i8* %184, %186, !dbg !892
  br i1 %187, label %190, label %188, !dbg !892, !prof !829

; <label>:188:                                    ; preds = %181
  %189 = tail call i32 @__overflow(%struct._IO_FILE* %182, i32 32) #10, !dbg !892
  br label %192, !dbg !892

; <label>:190:                                    ; preds = %181
  %191 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !892
  store i8* %191, i8** %183, align 8, !dbg !892, !tbaa !824
  store i8 32, i8* %184, align 1, !dbg !892, !tbaa !830
  br label %192, !dbg !892

; <label>:192:                                    ; preds = %179, %188, %190
  store i1 true, i1* @print_element.printed, align 1
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !893, !tbaa !668
  %194 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), %struct._IO_FILE* %193) #10, !dbg !893
  br label %195, !dbg !894

; <label>:195:                                    ; preds = %192, %174
  %196 = and i32 %63, 64, !dbg !895
  %197 = icmp eq i32 %196, 0, !dbg !895
  %198 = or i1 %177, %197, !dbg !896
  br i1 %198, label %215, label %199, !dbg !896

; <label>:199:                                    ; preds = %195
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !69, metadata !DIExpression()) #10, !dbg !897
  %200 = load i1, i1* @print_element.printed, align 1
  br i1 %200, label %201, label %212, !dbg !900

; <label>:201:                                    ; preds = %199
  call void @llvm.dbg.value(metadata i32 32, metadata !814, metadata !DIExpression()) #10, !dbg !901
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !903, !tbaa !668
  %203 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %202, i64 0, i32 5, !dbg !903
  %204 = load i8*, i8** %203, align 8, !dbg !903, !tbaa !824
  %205 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %202, i64 0, i32 6, !dbg !903
  %206 = load i8*, i8** %205, align 8, !dbg !903, !tbaa !828
  %207 = icmp ult i8* %204, %206, !dbg !903
  br i1 %207, label %210, label %208, !dbg !903, !prof !829

; <label>:208:                                    ; preds = %201
  %209 = tail call i32 @__overflow(%struct._IO_FILE* %202, i32 32) #10, !dbg !903
  br label %212, !dbg !903

; <label>:210:                                    ; preds = %201
  %211 = getelementptr inbounds i8, i8* %204, i64 1, !dbg !903
  store i8* %211, i8** %203, align 8, !dbg !903, !tbaa !824
  store i8 32, i8* %204, align 1, !dbg !903, !tbaa !830
  br label %212, !dbg !903

; <label>:212:                                    ; preds = %199, %208, %210
  store i1 true, i1* @print_element.printed, align 1
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !904, !tbaa !668
  %214 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), %struct._IO_FILE* %213) #10, !dbg !904
  br label %215, !dbg !905

; <label>:215:                                    ; preds = %212, %195
  %216 = trunc i32 %63 to i8, !dbg !906
  %217 = icmp slt i8 %216, 0, !dbg !906
  br i1 %217, label %218, label %234, !dbg !908

; <label>:218:                                    ; preds = %215
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), metadata !69, metadata !DIExpression()) #10, !dbg !909
  %219 = load i1, i1* @print_element.printed, align 1
  br i1 %219, label %220, label %231, !dbg !911

; <label>:220:                                    ; preds = %218
  call void @llvm.dbg.value(metadata i32 32, metadata !814, metadata !DIExpression()) #10, !dbg !912
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !914, !tbaa !668
  %222 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %221, i64 0, i32 5, !dbg !914
  %223 = load i8*, i8** %222, align 8, !dbg !914, !tbaa !824
  %224 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %221, i64 0, i32 6, !dbg !914
  %225 = load i8*, i8** %224, align 8, !dbg !914, !tbaa !828
  %226 = icmp ult i8* %223, %225, !dbg !914
  br i1 %226, label %229, label %227, !dbg !914, !prof !829

; <label>:227:                                    ; preds = %220
  %228 = tail call i32 @__overflow(%struct._IO_FILE* %221, i32 32) #10, !dbg !914
  br label %231, !dbg !914

; <label>:229:                                    ; preds = %220
  %230 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !914
  store i8* %230, i8** %222, align 8, !dbg !914, !tbaa !824
  store i8 32, i8* %223, align 1, !dbg !914, !tbaa !830
  br label %231, !dbg !914

; <label>:231:                                    ; preds = %218, %227, %229
  store i1 true, i1* @print_element.printed, align 1
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !915, !tbaa !668
  %233 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %232) #10, !dbg !915
  br label %234, !dbg !916

; <label>:234:                                    ; preds = %231, %215
  call void @llvm.dbg.value(metadata i32 10, metadata !814, metadata !DIExpression()) #10, !dbg !917
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !919, !tbaa !668
  %236 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %235, i64 0, i32 5, !dbg !919
  %237 = load i8*, i8** %236, align 8, !dbg !919, !tbaa !824
  %238 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %235, i64 0, i32 6, !dbg !919
  %239 = load i8*, i8** %238, align 8, !dbg !919, !tbaa !828
  %240 = icmp ult i8* %237, %239, !dbg !919
  br i1 %240, label %243, label %241, !dbg !919, !prof !829

; <label>:241:                                    ; preds = %234
  %242 = tail call i32 @__overflow(%struct._IO_FILE* %235, i32 10) #10, !dbg !919
  br label %245, !dbg !919

; <label>:243:                                    ; preds = %234
  %244 = getelementptr inbounds i8, i8* %237, i64 1, !dbg !919
  store i8* %244, i8** %236, align 8, !dbg !919, !tbaa !824
  store i8 10, i8* %237, align 1, !dbg !919, !tbaa !830
  br label %245, !dbg !919

; <label>:245:                                    ; preds = %241, %243
  ret i32 0, !dbg !920
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
declare i32 @uname(%struct.utsname* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !921 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !923, metadata !DIExpression()), !dbg !924
  store i8* %0, i8** @file_name, align 8, !dbg !925, !tbaa !668
  ret void, !dbg !926
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !927 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !931, metadata !DIExpression()), !dbg !932
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !933, !tbaa !934
  ret void, !dbg !936
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !937 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !944, !tbaa !668
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !945
  %3 = icmp eq i32 %2, 0, !dbg !946
  br i1 %3, label %22, label %4, !dbg !947

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !948, !tbaa !934, !range !949
  %6 = icmp eq i8 %5, 0, !dbg !948
  br i1 %6, label %11, label %7, !dbg !950

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #16, !dbg !951
  %9 = load i32, i32* %8, align 4, !dbg !951, !tbaa !675
  %10 = icmp eq i32 %9, 32, !dbg !952
  br i1 %10, label %22, label %11, !dbg !953

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i32 5) #10, !dbg !954
  call void @llvm.dbg.value(metadata i8* %12, metadata !941, metadata !DIExpression()), !dbg !955
  %13 = load i8*, i8** @file_name, align 8, !dbg !956, !tbaa !668
  %14 = icmp eq i8* %13, null, !dbg !956
  %15 = tail call i32* @__errno_location() #16, !dbg !958
  %16 = load i32, i32* %15, align 4, !dbg !958, !tbaa !675
  br i1 %14, label %19, label %17, !dbg !959

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !960
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.51, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !961
  br label %20, !dbg !961

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.52, i64 0, i64 0), i8* %12) #10, !dbg !962
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !963, !tbaa !675
  tail call void @_exit(i32 %21) #15, !dbg !964
  unreachable, !dbg !964

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !965, !tbaa !668
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !967
  %25 = icmp eq i32 %24, 0, !dbg !968
  br i1 %25, label %28, label %26, !dbg !969

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !970, !tbaa !675
  tail call void @_exit(i32 %27) #15, !dbg !971
  unreachable, !dbg !971

; <label>:28:                                     ; preds = %22
  ret void, !dbg !972
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !973 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()), !dbg !978
  %2 = icmp eq i8* %0, null, !dbg !979
  br i1 %2, label %3, label %6, !dbg !981

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !982, !tbaa !668
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17, !dbg !984
  tail call void @abort() #15, !dbg !985
  unreachable, !dbg !985

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !986
  call void @llvm.dbg.value(metadata i8* %7, metadata !976, metadata !DIExpression()), !dbg !987
  %8 = icmp eq i8* %7, null, !dbg !988
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !989
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !990
  call void @llvm.dbg.value(metadata i8* %10, metadata !977, metadata !DIExpression()), !dbg !991
  %11 = ptrtoint i8* %10 to i64, !dbg !992
  %12 = ptrtoint i8* %0 to i64, !dbg !992
  %13 = sub i64 %11, %12, !dbg !992
  %14 = icmp sgt i64 %13, 6, !dbg !994
  br i1 %14, label %15, label %24, !dbg !995

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !996
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.60, i64 0, i64 0), i64 7) #14, !dbg !997
  %18 = icmp eq i32 %17, 0, !dbg !998
  br i1 %18, label %19, label %24, !dbg !999

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !975, metadata !DIExpression()), !dbg !978
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.61, i64 0, i64 0), i64 3) #14, !dbg !1000
  %21 = icmp eq i32 %20, 0, !dbg !1003
  br i1 %21, label %22, label %24, !dbg !1004

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1005
  call void @llvm.dbg.value(metadata i8* %23, metadata !975, metadata !DIExpression()), !dbg !978
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1007, !tbaa !668
  br label %24, !dbg !1008

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !975, metadata !DIExpression()), !dbg !978
  store i8* %25, i8** @program_name, align 8, !dbg !1009, !tbaa !668
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1010, !tbaa !668
  ret void, !dbg !1011
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1012 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1017, metadata !DIExpression()), !dbg !1020
  %2 = tail call i32* @__errno_location() #16, !dbg !1021
  %3 = load i32, i32* %2, align 4, !dbg !1021, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %3, metadata !1018, metadata !DIExpression()), !dbg !1022
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1023
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1023
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1023
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1024
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1019, metadata !DIExpression()), !dbg !1025
  store i32 %3, i32* %2, align 4, !dbg !1026, !tbaa !675
  ret %struct.quoting_options* %8, !dbg !1027
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1028 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1034, metadata !DIExpression()), !dbg !1035
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1036
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1036
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1037
  %5 = load i32, i32* %4, align 8, !dbg !1037, !tbaa !1038
  ret i32 %5, !dbg !1040
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1041 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1045, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i32 %1, metadata !1046, metadata !DIExpression()), !dbg !1048
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1049
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1049
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1050
  store i32 %1, i32* %5, align 8, !dbg !1051, !tbaa !1038
  ret void, !dbg !1052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1053 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1057, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %1, metadata !1058, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i32 %2, metadata !1059, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8 %1, metadata !1060, metadata !DIExpression()), !dbg !1068
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1069
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1069
  %6 = lshr i8 %1, 5, !dbg !1070
  %7 = zext i8 %6 to i64, !dbg !1070
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1071
  call void @llvm.dbg.value(metadata i32* %8, metadata !1061, metadata !DIExpression()), !dbg !1072
  %9 = and i8 %1, 31, !dbg !1073
  %10 = zext i8 %9 to i32, !dbg !1073
  call void @llvm.dbg.value(metadata i32 %10, metadata !1063, metadata !DIExpression()), !dbg !1074
  %11 = load i32, i32* %8, align 4, !dbg !1075, !tbaa !675
  %12 = lshr i32 %11, %10, !dbg !1076
  %13 = and i32 %12, 1, !dbg !1077
  call void @llvm.dbg.value(metadata i32 %13, metadata !1064, metadata !DIExpression()), !dbg !1078
  %14 = and i32 %2, 1, !dbg !1079
  %15 = xor i32 %13, %14, !dbg !1080
  %16 = shl i32 %15, %10, !dbg !1081
  %17 = xor i32 %16, %11, !dbg !1082
  store i32 %17, i32* %8, align 4, !dbg !1082, !tbaa !675
  ret i32 %13, !dbg !1083
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1084 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1088, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i32 %1, metadata !1089, metadata !DIExpression()), !dbg !1092
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1093
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1088, metadata !DIExpression()), !dbg !1091
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1096
  %6 = load i32, i32* %5, align 4, !dbg !1096, !tbaa !1097
  call void @llvm.dbg.value(metadata i32 %6, metadata !1090, metadata !DIExpression()), !dbg !1098
  store i32 %1, i32* %5, align 4, !dbg !1099, !tbaa !1097
  ret i32 %6, !dbg !1100
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1101 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1105, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %1, metadata !1106, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %2, metadata !1107, metadata !DIExpression()), !dbg !1110
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1111
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1113
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1105, metadata !DIExpression()), !dbg !1108
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1114
  store i32 10, i32* %6, align 8, !dbg !1115, !tbaa !1038
  %7 = icmp ne i8* %1, null, !dbg !1116
  %8 = icmp ne i8* %2, null, !dbg !1118
  %9 = and i1 %7, %8, !dbg !1119
  br i1 %9, label %11, label %10, !dbg !1119

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1120
  unreachable, !dbg !1120

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1121
  store i8* %1, i8** %12, align 8, !dbg !1122, !tbaa !1123
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1124
  store i8* %2, i8** %13, align 8, !dbg !1125, !tbaa !1126
  ret void, !dbg !1127
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1128 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1132, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %1, metadata !1133, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %2, metadata !1134, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i64 %3, metadata !1135, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1136, metadata !DIExpression()), !dbg !1144
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1145
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1145
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1137, metadata !DIExpression()), !dbg !1146
  %8 = tail call i32* @__errno_location() #16, !dbg !1147
  %9 = load i32, i32* %8, align 4, !dbg !1147, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %9, metadata !1138, metadata !DIExpression()), !dbg !1148
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1149
  %11 = load i32, i32* %10, align 8, !dbg !1149, !tbaa !1038
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1150
  %13 = load i32, i32* %12, align 4, !dbg !1150, !tbaa !1097
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1151
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1152
  %16 = load i8*, i8** %15, align 8, !dbg !1152, !tbaa !1123
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1153
  %18 = load i8*, i8** %17, align 8, !dbg !1153, !tbaa !1126
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %19, metadata !1139, metadata !DIExpression()), !dbg !1155
  store i32 %9, i32* %8, align 4, !dbg !1156, !tbaa !675
  ret i64 %19, !dbg !1157
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1158 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1164, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i64 %1, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %2, metadata !1166, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %3, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 %4, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 %5, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32* %6, metadata !1170, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %7, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %8, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 0, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 0, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8* null, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 0, metadata !1177, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8 0, metadata !1178, metadata !DIExpression()), !dbg !1241
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1242
  %14 = icmp eq i64 %13, 1, !dbg !1243
  %15 = lshr i32 %5, 1, !dbg !1244
  %16 = trunc i32 %15 to i8, !dbg !1244
  %17 = and i8 %16, 1, !dbg !1244
  call void @llvm.dbg.value(metadata i8 %17, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 0, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 0, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 1, metadata !1183, metadata !DIExpression()), !dbg !1247
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1248

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1238
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1239
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1240
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1241
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1249
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1245
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1246
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1247
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %39, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %38, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %37, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %36, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %35, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %34, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %33, metadata !1177, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %32, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %31, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 0, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %30, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %29, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i32 %28, metadata !1168, metadata !DIExpression()), !dbg !1232
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
  ], !dbg !1251

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 1, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %36, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 5, metadata !1168, metadata !DIExpression()), !dbg !1232
  br label %93, !dbg !1252

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 5, metadata !1168, metadata !DIExpression()), !dbg !1232
  %43 = and i8 %36, 1, !dbg !1253
  %44 = icmp eq i8 %43, 0, !dbg !1253
  br i1 %44, label %45, label %93, !dbg !1252

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1255
  br i1 %46, label %93, label %47, !dbg !1258

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1255, !tbaa !830
  br label %93, !dbg !1255

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 %28), !dbg !1259
  call void @llvm.dbg.value(metadata i8* %49, metadata !1171, metadata !DIExpression()), !dbg !1235
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), i32 %28), !dbg !1263
  call void @llvm.dbg.value(metadata i8* %50, metadata !1172, metadata !DIExpression()), !dbg !1236
  br label %51, !dbg !1264

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %52, metadata !1171, metadata !DIExpression()), !dbg !1235
  %54 = and i8 %36, 1, !dbg !1265
  %55 = icmp eq i8 %54, 0, !dbg !1265
  br i1 %55, label %56, label %71, !dbg !1267

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 0, metadata !1174, metadata !DIExpression()), !dbg !1237
  %57 = load i8, i8* %52, align 1, !dbg !1268, !tbaa !830
  %58 = icmp eq i8 %57, 0, !dbg !1271
  br i1 %58, label %71, label %59, !dbg !1271

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %62, metadata !1174, metadata !DIExpression()), !dbg !1237
  %63 = icmp ult i64 %62, %40, !dbg !1272
  br i1 %63, label %64, label %66, !dbg !1275

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1272
  store i8 %60, i8* %65, align 1, !dbg !1272, !tbaa !830
  br label %66, !dbg !1272

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1275
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1276
  call void @llvm.dbg.value(metadata i8* %68, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %67, metadata !1174, metadata !DIExpression()), !dbg !1237
  %69 = load i8, i8* %68, align 1, !dbg !1268, !tbaa !830
  %70 = icmp eq i8 %69, 0, !dbg !1271
  br i1 %70, label %71, label %59, !dbg !1271, !llvm.loop !1277

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1237
  call void @llvm.dbg.value(metadata i64 %72, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8* %53, metadata !1176, metadata !DIExpression()), !dbg !1239
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %73, metadata !1177, metadata !DIExpression()), !dbg !1240
  br label %93, !dbg !1280

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1178, metadata !DIExpression()), !dbg !1241
  br label %75, !dbg !1281

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1249
  call void @llvm.dbg.value(metadata i8 %76, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 1, metadata !1180, metadata !DIExpression()), !dbg !1244
  br label %77, !dbg !1282

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1241
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1249
  call void @llvm.dbg.value(metadata i8 %79, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %78, metadata !1178, metadata !DIExpression()), !dbg !1241
  %80 = and i8 %79, 1, !dbg !1283
  %81 = icmp eq i8 %80, 0, !dbg !1283
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1285
  br label %83, !dbg !1285

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1286
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1244
  call void @llvm.dbg.value(metadata i8 %85, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %84, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 2, metadata !1168, metadata !DIExpression()), !dbg !1232
  %86 = and i8 %85, 1, !dbg !1287
  %87 = icmp eq i8 %86, 0, !dbg !1287
  br i1 %87, label %88, label %93, !dbg !1289

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1290
  br i1 %89, label %93, label %90, !dbg !1293

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1290, !tbaa !830
  br label %93, !dbg !1290

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1180, metadata !DIExpression()), !dbg !1244
  br label %93, !dbg !1294

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1295
  unreachable, !dbg !1295

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1237
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %41 ], !dbg !1249
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1249
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1249
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8 %101, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %100, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %99, metadata !1177, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %97, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i32 %94, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i64 0, metadata !1173, metadata !DIExpression()), !dbg !1297
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
  br label %121, !dbg !1298

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1299
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1237
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1238
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1245
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1246
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1247
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %125, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %122, metadata !1173, metadata !DIExpression()), !dbg !1297
  %130 = icmp eq i64 %125, -1, !dbg !1300
  br i1 %130, label %131, label %135, !dbg !1301

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1302
  %133 = load i8, i8* %132, align 1, !dbg !1302, !tbaa !830
  %134 = icmp eq i8 %133, 0, !dbg !1303
  br i1 %134, label %617, label %137, !dbg !1304

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1305
  br i1 %136, label %617, label %137, !dbg !1304

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1189, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8 0, metadata !1190, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 0, metadata !1191, metadata !DIExpression()), !dbg !1308
  br i1 %107, label %138, label %153, !dbg !1309

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1311
  %140 = and i1 %108, %130, !dbg !1312
  br i1 %140, label %141, label %143, !dbg !1312

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %142, metadata !1167, metadata !DIExpression()), !dbg !1231
  br label %143, !dbg !1314

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1167, metadata !DIExpression()), !dbg !1231
  %145 = icmp ugt i64 %139, %144, !dbg !1315
  br i1 %145, label %153, label %146, !dbg !1316

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1317
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1318
  %149 = icmp ne i32 %148, 0, !dbg !1319
  %150 = or i1 %149, %110, !dbg !1320
  %151 = xor i1 %149, true, !dbg !1320
  %152 = zext i1 %151 to i8, !dbg !1320
  br i1 %150, label %153, label %661, !dbg !1320

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1321
  call void @llvm.dbg.value(metadata i8 %155, metadata !1189, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i64 %154, metadata !1167, metadata !DIExpression()), !dbg !1231
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1322
  %157 = load i8, i8* %156, align 1, !dbg !1322, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %157, metadata !1184, metadata !DIExpression()), !dbg !1323
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
  ], !dbg !1324

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1325

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1326

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1190, metadata !DIExpression()), !dbg !1307
  %161 = and i8 %126, 1, !dbg !1330
  %162 = icmp eq i8 %161, 0, !dbg !1330
  %163 = and i1 %114, %162, !dbg !1330
  br i1 %163, label %164, label %180, !dbg !1330

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1332
  br i1 %165, label %166, label %168, !dbg !1336

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1332
  store i8 39, i8* %167, align 1, !dbg !1332, !tbaa !830
  br label %168, !dbg !1332

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %169, metadata !1174, metadata !DIExpression()), !dbg !1237
  %170 = icmp ult i64 %169, %129, !dbg !1337
  br i1 %170, label %171, label %173, !dbg !1340

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1337
  store i8 36, i8* %172, align 1, !dbg !1337, !tbaa !830
  br label %173, !dbg !1337

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %174, metadata !1174, metadata !DIExpression()), !dbg !1237
  %175 = icmp ult i64 %174, %129, !dbg !1341
  br i1 %175, label %176, label %178, !dbg !1344

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1341
  store i8 39, i8* %177, align 1, !dbg !1341, !tbaa !830
  br label %178, !dbg !1341

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %179, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, metadata !1181, metadata !DIExpression()), !dbg !1245
  br label %180, !dbg !1345

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1296
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8 %182, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %181, metadata !1174, metadata !DIExpression()), !dbg !1237
  %183 = icmp ult i64 %181, %129, !dbg !1346
  br i1 %183, label %184, label %186, !dbg !1349

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1346
  store i8 92, i8* %185, align 1, !dbg !1346, !tbaa !830
  br label %186, !dbg !1346

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %187, metadata !1174, metadata !DIExpression()), !dbg !1237
  br i1 %104, label %188, label %478, !dbg !1350

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1352
  %190 = icmp ult i64 %189, %154, !dbg !1353
  br i1 %190, label %191, label %467, !dbg !1354

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1355
  %193 = load i8, i8* %192, align 1, !dbg !1355, !tbaa !830
  %194 = add i8 %193, -48, !dbg !1356
  %195 = icmp ult i8 %194, 10, !dbg !1356
  br i1 %195, label %196, label %467, !dbg !1356

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1357
  br i1 %197, label %198, label %200, !dbg !1361

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1357
  store i8 48, i8* %199, align 1, !dbg !1357, !tbaa !830
  br label %200, !dbg !1357

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %201, metadata !1174, metadata !DIExpression()), !dbg !1237
  %202 = icmp ult i64 %201, %129, !dbg !1362
  br i1 %202, label %203, label %205, !dbg !1365

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1362
  store i8 48, i8* %204, align 1, !dbg !1362, !tbaa !830
  br label %205, !dbg !1362

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %206, metadata !1174, metadata !DIExpression()), !dbg !1237
  br label %467, !dbg !1366

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1367

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1368

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1369

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1371

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1373
  %213 = icmp ult i64 %212, %154, !dbg !1374
  br i1 %213, label %214, label %467, !dbg !1375

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1376
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1377
  %217 = load i8, i8* %216, align 1, !dbg !1377, !tbaa !830
  %218 = icmp eq i8 %217, 63, !dbg !1378
  br i1 %218, label %219, label %467, !dbg !1379

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1380
  %221 = load i8, i8* %220, align 1, !dbg !1380, !tbaa !830
  %222 = sext i8 %221 to i32, !dbg !1380
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
  ], !dbg !1381

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1382

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1184, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %212, metadata !1173, metadata !DIExpression()), !dbg !1297
  %225 = icmp ult i64 %123, %129, !dbg !1384
  br i1 %225, label %226, label %228, !dbg !1387

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1384
  store i8 63, i8* %227, align 1, !dbg !1384, !tbaa !830
  br label %228, !dbg !1384

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1387
  call void @llvm.dbg.value(metadata i64 %229, metadata !1174, metadata !DIExpression()), !dbg !1237
  %230 = icmp ult i64 %229, %129, !dbg !1388
  br i1 %230, label %231, label %233, !dbg !1391

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1388
  store i8 34, i8* %232, align 1, !dbg !1388, !tbaa !830
  br label %233, !dbg !1388

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %234, metadata !1174, metadata !DIExpression()), !dbg !1237
  %235 = icmp ult i64 %234, %129, !dbg !1392
  br i1 %235, label %236, label %238, !dbg !1395

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1392
  store i8 34, i8* %237, align 1, !dbg !1392, !tbaa !830
  br label %238, !dbg !1392

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %239, metadata !1174, metadata !DIExpression()), !dbg !1237
  %240 = icmp ult i64 %239, %129, !dbg !1396
  br i1 %240, label %241, label %243, !dbg !1399

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1396
  store i8 63, i8* %242, align 1, !dbg !1396, !tbaa !830
  br label %243, !dbg !1396

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %244, metadata !1174, metadata !DIExpression()), !dbg !1237
  br label %467, !dbg !1400

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1188, metadata !DIExpression()), !dbg !1401
  br label %255, !dbg !1402

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1188, metadata !DIExpression()), !dbg !1401
  br label %255, !dbg !1403

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1188, metadata !DIExpression()), !dbg !1401
  br label %253, !dbg !1404

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1188, metadata !DIExpression()), !dbg !1401
  br label %253, !dbg !1405

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1188, metadata !DIExpression()), !dbg !1401
  br label %255, !dbg !1406

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1188, metadata !DIExpression()), !dbg !1401
  br i1 %114, label %251, label %252, !dbg !1407

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1408

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1411

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8 %254, metadata !1188, metadata !DIExpression()), !dbg !1401
  br i1 %113, label %255, label %661, !dbg !1414

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8 %256, metadata !1188, metadata !DIExpression()), !dbg !1401
  br i1 %103, label %524, label %478, !dbg !1416

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1417
  br i1 %258, label %259, label %264, !dbg !1419

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1420, !tbaa !830
  %261 = icmp ne i8 %260, 0, !dbg !1421
  %262 = icmp ne i64 %122, 0, !dbg !1422
  %263 = or i1 %262, %261, !dbg !1424
  br i1 %263, label %467, label %270, !dbg !1424

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1425
  %266 = icmp ne i64 %122, 0, !dbg !1422
  %267 = or i1 %266, %265, !dbg !1419
  br i1 %267, label %467, label %270, !dbg !1419

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1422
  br i1 %269, label %270, label %467, !dbg !1426

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1191, metadata !DIExpression()), !dbg !1308
  br label %271, !dbg !1427

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8 %272, metadata !1191, metadata !DIExpression()), !dbg !1308
  br i1 %113, label %467, label %661, !dbg !1428

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 1, metadata !1191, metadata !DIExpression()), !dbg !1308
  br i1 %114, label %274, label %467, !dbg !1430

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1431

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1434
  %277 = icmp ne i64 %124, 0, !dbg !1436
  %278 = or i1 %277, %276, !dbg !1437
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1437
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %280, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %279, metadata !1175, metadata !DIExpression()), !dbg !1238
  %281 = icmp ult i64 %123, %280, !dbg !1438
  br i1 %281, label %282, label %284, !dbg !1441

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1438
  store i8 39, i8* %283, align 1, !dbg !1438, !tbaa !830
  br label %284, !dbg !1438

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %285, metadata !1174, metadata !DIExpression()), !dbg !1237
  %286 = icmp ult i64 %285, %280, !dbg !1442
  br i1 %286, label %287, label %289, !dbg !1445

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1442
  store i8 92, i8* %288, align 1, !dbg !1442, !tbaa !830
  br label %289, !dbg !1442

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %290, metadata !1174, metadata !DIExpression()), !dbg !1237
  %291 = icmp ult i64 %290, %280, !dbg !1446
  br i1 %291, label %292, label %294, !dbg !1449

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1446
  store i8 39, i8* %293, align 1, !dbg !1446, !tbaa !830
  br label %294, !dbg !1446

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %295, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 0, metadata !1181, metadata !DIExpression()), !dbg !1245
  br label %467, !dbg !1450

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1451

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1192, metadata !DIExpression()), !dbg !1452
  %298 = tail call i16** @__ctype_b_loc() #16, !dbg !1453
  %299 = load i16*, i16** %298, align 8, !dbg !1453, !tbaa !668
  %300 = zext i8 %157 to i64, !dbg !1453
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1453
  %302 = load i16, i16* %301, align 2, !dbg !1453, !tbaa !1455
  %303 = lshr i16 %302, 14, !dbg !1456
  %304 = trunc i16 %303 to i8, !dbg !1456
  %305 = and i8 %304, 1, !dbg !1456
  call void @llvm.dbg.value(metadata i8 %305, metadata !1195, metadata !DIExpression()), !dbg !1457
  br label %359, !dbg !1458

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1459
  store i64 0, i64* %10, align 8, !dbg !1460
  call void @llvm.dbg.value(metadata i64 0, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 1, metadata !1195, metadata !DIExpression()), !dbg !1457
  %307 = icmp eq i64 %154, -1, !dbg !1461
  br i1 %307, label %308, label %310, !dbg !1463

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %309, metadata !1167, metadata !DIExpression()), !dbg !1231
  br label %310, !dbg !1465

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1466
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  br label %312, !dbg !1467

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1468
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1469
  call void @llvm.dbg.value(metadata i8 %314, metadata !1195, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %313, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1470
  %315 = add i64 %313, %122, !dbg !1471
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1472
  %317 = sub i64 %311, %315, !dbg !1473
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1196, metadata !DIExpression(DW_OP_deref)), !dbg !1474
  call void @llvm.dbg.value(metadata i32* %12, metadata !1214, metadata !DIExpression(DW_OP_deref)), !dbg !1475
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %318, metadata !1217, metadata !DIExpression()), !dbg !1477
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1478

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %313, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %313, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %313, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %313, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %313, metadata !1192, metadata !DIExpression()), !dbg !1452
  %320 = icmp ugt i64 %311, %315, !dbg !1479
  br i1 %320, label %321, label %344, !dbg !1481

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1192, metadata !DIExpression()), !dbg !1452
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1482
  %325 = load i8, i8* %324, align 1, !dbg !1482, !tbaa !830
  %326 = icmp eq i8 %325, 0, !dbg !1481
  br i1 %326, label %344, label %327, !dbg !1483

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %328, metadata !1192, metadata !DIExpression()), !dbg !1452
  %329 = add i64 %328, %122, !dbg !1485
  %330 = icmp ult i64 %329, %311, !dbg !1479
  br i1 %330, label %321, label %344, !dbg !1481, !llvm.loop !1486

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1487
  %333 = and i1 %116, %332, !dbg !1490
  call void @llvm.dbg.value(metadata i64 1, metadata !1218, metadata !DIExpression()), !dbg !1491
  br i1 %333, label %334, label %347, !dbg !1490

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1218, metadata !DIExpression()), !dbg !1491
  %336 = add i64 %335, %315, !dbg !1492
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1493
  %338 = load i8, i8* %337, align 1, !dbg !1493, !tbaa !830
  %339 = sext i8 %338 to i32, !dbg !1493
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1494

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %341, metadata !1218, metadata !DIExpression()), !dbg !1491
  %342 = icmp ult i64 %341, %318, !dbg !1487
  br i1 %342, label %334, label %347, !dbg !1496, !llvm.loop !1497

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %314, metadata !1195, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %313, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %314, metadata !1195, metadata !DIExpression()), !dbg !1457
  br label %344, !dbg !1499

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1195, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %352, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1499
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1500, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %348, metadata !1214, metadata !DIExpression()), !dbg !1475
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1502
  %350 = icmp eq i32 %349, 0, !dbg !1502
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1503
  call void @llvm.dbg.value(metadata i8 %351, metadata !1195, metadata !DIExpression()), !dbg !1457
  %352 = add i64 %318, %313, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %352, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %351, metadata !1195, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %352, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1499
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1196, metadata !DIExpression(DW_OP_deref)), !dbg !1474
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1505
  %354 = icmp eq i32 %353, 0, !dbg !1506
  br i1 %354, label %312, label %355, !dbg !1507, !llvm.loop !1508

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1510
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 2, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 2, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 2, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 2, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 2, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8 %100, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 %94, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 %94, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 %94, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 %94, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 %94, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8 %100, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1178, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %351, metadata !1195, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %352, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1499
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1510
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1511
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1512
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1512
  call void @llvm.dbg.value(metadata i8 %362, metadata !1195, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %361, metadata !1192, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %360, metadata !1167, metadata !DIExpression()), !dbg !1231
  %363 = and i8 %362, 1, !dbg !1513
  %364 = icmp ne i8 %363, 0, !dbg !1513
  call void @llvm.dbg.value(metadata i8 %363, metadata !1191, metadata !DIExpression()), !dbg !1308
  %365 = icmp ult i64 %361, 2, !dbg !1514
  %366 = or i1 %364, %115, !dbg !1515
  %367 = and i1 %365, %366, !dbg !1516
  br i1 %367, label %467, label %368, !dbg !1516

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %369, metadata !1225, metadata !DIExpression()), !dbg !1518
  br label %370, !dbg !1519

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1520
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1524
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1245
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1520
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1526
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1307
  call void @llvm.dbg.value(metadata i8 %376, metadata !1190, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %375, metadata !1189, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %374, metadata !1184, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %373, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %372, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %371, metadata !1173, metadata !DIExpression()), !dbg !1297
  br i1 %366, label %423, label %377, !dbg !1530

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1531

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1190, metadata !DIExpression()), !dbg !1307
  %379 = and i8 %373, 1, !dbg !1534
  %380 = icmp eq i8 %379, 0, !dbg !1534
  %381 = and i1 %114, %380, !dbg !1534
  br i1 %381, label %382, label %398, !dbg !1534

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1536
  br i1 %383, label %384, label %386, !dbg !1540

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1536
  store i8 39, i8* %385, align 1, !dbg !1536, !tbaa !830
  br label %386, !dbg !1536

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %387, metadata !1174, metadata !DIExpression()), !dbg !1237
  %388 = icmp ult i64 %387, %129, !dbg !1541
  br i1 %388, label %389, label %391, !dbg !1544

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1541
  store i8 36, i8* %390, align 1, !dbg !1541, !tbaa !830
  br label %391, !dbg !1541

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %392, metadata !1174, metadata !DIExpression()), !dbg !1237
  %393 = icmp ult i64 %392, %129, !dbg !1545
  br i1 %393, label %394, label %396, !dbg !1548

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1545
  store i8 39, i8* %395, align 1, !dbg !1545, !tbaa !830
  br label %396, !dbg !1545

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %397, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, metadata !1181, metadata !DIExpression()), !dbg !1245
  br label %398, !dbg !1549

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1296
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8 %400, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %399, metadata !1174, metadata !DIExpression()), !dbg !1237
  %401 = icmp ult i64 %399, %129, !dbg !1550
  br i1 %401, label %402, label %404, !dbg !1553

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1550
  store i8 92, i8* %403, align 1, !dbg !1550, !tbaa !830
  br label %404, !dbg !1550

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %405, metadata !1174, metadata !DIExpression()), !dbg !1237
  %406 = icmp ult i64 %405, %129, !dbg !1554
  br i1 %406, label %407, label %411, !dbg !1557

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1554
  %409 = or i8 %408, 48, !dbg !1554
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1554
  store i8 %409, i8* %410, align 1, !dbg !1554, !tbaa !830
  br label %411, !dbg !1554

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %412, metadata !1174, metadata !DIExpression()), !dbg !1237
  %413 = icmp ult i64 %412, %129, !dbg !1558
  br i1 %413, label %414, label %419, !dbg !1561

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1558
  %416 = and i8 %415, 7, !dbg !1558
  %417 = or i8 %416, 48, !dbg !1558
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1558
  store i8 %417, i8* %418, align 1, !dbg !1558, !tbaa !830
  br label %419, !dbg !1558

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %420, metadata !1174, metadata !DIExpression()), !dbg !1237
  %421 = and i8 %374, 7, !dbg !1562
  %422 = or i8 %421, 48, !dbg !1563
  call void @llvm.dbg.value(metadata i8 %422, metadata !1184, metadata !DIExpression()), !dbg !1323
  br label %432, !dbg !1564

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1565
  %425 = icmp eq i8 %424, 0, !dbg !1565
  br i1 %425, label %432, label %426, !dbg !1566

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1567
  br i1 %427, label %428, label %430, !dbg !1570

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1567
  store i8 92, i8* %429, align 1, !dbg !1567, !tbaa !830
  br label %430, !dbg !1567

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %431, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 0, metadata !1189, metadata !DIExpression()), !dbg !1306
  br label %432, !dbg !1571

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1572
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1245
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1573
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1574
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1576
  call void @llvm.dbg.value(metadata i8 %437, metadata !1190, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %436, metadata !1189, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %435, metadata !1184, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %434, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %433, metadata !1174, metadata !DIExpression()), !dbg !1237
  %438 = add i64 %371, 1, !dbg !1577
  %439 = icmp ugt i64 %369, %438, !dbg !1579
  br i1 %439, label %440, label %562, !dbg !1580

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1581
  %442 = icmp ne i8 %441, 0, !dbg !1581
  %443 = and i8 %437, 1, !dbg !1581
  %444 = icmp eq i8 %443, 0, !dbg !1581
  %445 = and i1 %442, %444, !dbg !1581
  br i1 %445, label %446, label %457, !dbg !1581

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1584
  br i1 %447, label %448, label %450, !dbg !1588

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1584
  store i8 39, i8* %449, align 1, !dbg !1584, !tbaa !830
  br label %450, !dbg !1584

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %451, metadata !1174, metadata !DIExpression()), !dbg !1237
  %452 = icmp ult i64 %451, %129, !dbg !1589
  br i1 %452, label %453, label %455, !dbg !1592

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1589
  store i8 39, i8* %454, align 1, !dbg !1589, !tbaa !830
  br label %455, !dbg !1589

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %456, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 0, metadata !1181, metadata !DIExpression()), !dbg !1245
  br label %457, !dbg !1593

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1594
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8 %459, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %458, metadata !1174, metadata !DIExpression()), !dbg !1237
  %460 = icmp ult i64 %458, %129, !dbg !1595
  br i1 %460, label %461, label %463, !dbg !1597

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1595
  store i8 %435, i8* %462, align 1, !dbg !1595, !tbaa !830
  br label %463, !dbg !1595

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %464, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %438, metadata !1173, metadata !DIExpression()), !dbg !1297
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1598
  %466 = load i8, i8* %465, align 1, !dbg !1598, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %466, metadata !1184, metadata !DIExpression()), !dbg !1323
  br label %370, !dbg !1599, !llvm.loop !1600

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1603
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1296
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1238
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1604
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1296
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1296
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1321
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1321
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1321
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %476, metadata !1191, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i8 %475, metadata !1190, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %155, metadata !1189, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %474, metadata !1184, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %473, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %472, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %471, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %470, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %469, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %468, metadata !1173, metadata !DIExpression()), !dbg !1297
  br i1 %105, label %489, label %478, !dbg !1605

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
  br i1 %112, label %490, label %512, !dbg !1607

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1608

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
  %501 = lshr i8 %494, 5, !dbg !1609
  %502 = zext i8 %501 to i64, !dbg !1609
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1610
  %504 = load i32, i32* %503, align 4, !dbg !1610, !tbaa !675
  %505 = and i8 %494, 31, !dbg !1611
  %506 = zext i8 %505 to i32, !dbg !1611
  %507 = shl i32 1, %506, !dbg !1612
  %508 = and i32 %504, %507, !dbg !1612
  %509 = icmp eq i32 %508, 0, !dbg !1612
  %510 = icmp eq i8 %155, 0, !dbg !1613
  %511 = and i1 %510, %509, !dbg !1614
  br i1 %511, label %562, label %524, !dbg !1614

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
  %523 = icmp eq i8 %155, 0, !dbg !1613
  br i1 %523, label %562, label %524, !dbg !1615

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1616
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1296
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1238
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1604
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1245
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1246
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1617
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1321
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %532, metadata !1191, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i8 %531, metadata !1184, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %530, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %529, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %528, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %527, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %526, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %525, metadata !1173, metadata !DIExpression()), !dbg !1297
  br i1 %110, label %534, label %661, !dbg !1620

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1190, metadata !DIExpression()), !dbg !1307
  %535 = and i8 %529, 1, !dbg !1622
  %536 = icmp eq i8 %535, 0, !dbg !1622
  %537 = and i1 %114, %536, !dbg !1622
  br i1 %537, label %538, label %554, !dbg !1622

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1624
  br i1 %539, label %540, label %542, !dbg !1628

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1624
  store i8 39, i8* %541, align 1, !dbg !1624, !tbaa !830
  br label %542, !dbg !1624

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %543, metadata !1174, metadata !DIExpression()), !dbg !1237
  %544 = icmp ult i64 %543, %533, !dbg !1629
  br i1 %544, label %545, label %547, !dbg !1632

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1629
  store i8 36, i8* %546, align 1, !dbg !1629, !tbaa !830
  br label %547, !dbg !1629

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %548, metadata !1174, metadata !DIExpression()), !dbg !1237
  %549 = icmp ult i64 %548, %533, !dbg !1633
  br i1 %549, label %550, label %552, !dbg !1636

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1633
  store i8 39, i8* %551, align 1, !dbg !1633, !tbaa !830
  br label %552, !dbg !1633

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %553, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, metadata !1181, metadata !DIExpression()), !dbg !1245
  br label %554, !dbg !1637

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1594
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8 %556, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %555, metadata !1174, metadata !DIExpression()), !dbg !1237
  %557 = icmp ult i64 %555, %533, !dbg !1638
  br i1 %557, label %558, label %560, !dbg !1641

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1638
  store i8 92, i8* %559, align 1, !dbg !1638, !tbaa !830
  br label %560, !dbg !1638

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %561, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %572, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %571, metadata !1191, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i8 %570, metadata !1190, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %569, metadata !1184, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %568, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %567, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %566, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %565, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %564, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %563, metadata !1173, metadata !DIExpression()), !dbg !1297
  br label %589, !dbg !1642

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1616
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1296
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1238
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1604
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1245
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1246
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1645
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1321
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1321
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %571, metadata !1191, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i8 %570, metadata !1190, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %569, metadata !1184, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %568, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %567, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %566, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %565, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %564, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %563, metadata !1173, metadata !DIExpression()), !dbg !1297
  %573 = and i8 %567, 1, !dbg !1642
  %574 = icmp ne i8 %573, 0, !dbg !1642
  %575 = and i8 %570, 1, !dbg !1642
  %576 = icmp eq i8 %575, 0, !dbg !1642
  %577 = and i1 %574, %576, !dbg !1642
  br i1 %577, label %578, label %589, !dbg !1642

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1646
  br i1 %579, label %580, label %582, !dbg !1650

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1646
  store i8 39, i8* %581, align 1, !dbg !1646, !tbaa !830
  br label %582, !dbg !1646

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %583, metadata !1174, metadata !DIExpression()), !dbg !1237
  %584 = icmp ult i64 %583, %572, !dbg !1651
  br i1 %584, label %585, label %587, !dbg !1654

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1651
  store i8 39, i8* %586, align 1, !dbg !1651, !tbaa !830
  br label %587, !dbg !1651

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %588, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 0, metadata !1181, metadata !DIExpression()), !dbg !1245
  br label %589, !dbg !1655

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1594
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8 %598, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %597, metadata !1174, metadata !DIExpression()), !dbg !1237
  %599 = icmp ult i64 %597, %590, !dbg !1656
  br i1 %599, label %600, label %602, !dbg !1659

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1656
  store i8 %592, i8* %601, align 1, !dbg !1656, !tbaa !830
  br label %602, !dbg !1656

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %603, metadata !1174, metadata !DIExpression()), !dbg !1237
  %604 = and i8 %591, 1, !dbg !1660
  %605 = icmp eq i8 %604, 0, !dbg !1660
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1662
  call void @llvm.dbg.value(metadata i8 %606, metadata !1183, metadata !DIExpression()), !dbg !1247
  br label %607, !dbg !1663

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1616
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1296
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1238
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1604
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1245
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1296
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1247
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %614, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %613, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %612, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %611, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %610, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %609, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %608, metadata !1173, metadata !DIExpression()), !dbg !1297
  %616 = add i64 %608, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %616, metadata !1173, metadata !DIExpression()), !dbg !1297
  br label %121, !dbg !1665, !llvm.loop !1666

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %618, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %618, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %125, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %125, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %126, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %127, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  %619 = icmp eq i64 %123, 0, !dbg !1668
  %620 = and i1 %114, %619, !dbg !1670
  %621 = xor i1 %620, true, !dbg !1670
  %622 = or i1 %110, %621, !dbg !1670
  br i1 %622, label %623, label %661, !dbg !1670

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1671
  %625 = xor i1 %624, true, !dbg !1671
  %626 = and i8 %127, 1, !dbg !1673
  %627 = icmp eq i8 %626, 0, !dbg !1673
  %628 = or i1 %627, %625, !dbg !1671
  br i1 %628, label %638, label %629, !dbg !1671

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1674
  %631 = icmp eq i8 %630, 0, !dbg !1674
  br i1 %631, label %634, label %632, !dbg !1677

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %618, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %618, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %618, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %618, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1171, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1172, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %125, metadata !1167, metadata !DIExpression()), !dbg !1231
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1678
  br label %671, !dbg !1679

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1680
  %636 = icmp ne i64 %124, 0, !dbg !1682
  %637 = and i1 %636, %635, !dbg !1683
  br i1 %637, label %27, label %638, !dbg !1683

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1165, metadata !DIExpression()), !dbg !1229
  %639 = icmp ne i8* %98, null, !dbg !1684
  %640 = and i1 %639, %110, !dbg !1686
  br i1 %640, label %641, label %656, !dbg !1686

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1174, metadata !DIExpression()), !dbg !1237
  %642 = load i8, i8* %98, align 1, !dbg !1687, !tbaa !830
  %643 = icmp eq i8 %642, 0, !dbg !1690
  br i1 %643, label %656, label %644, !dbg !1690

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %647, metadata !1174, metadata !DIExpression()), !dbg !1237
  %648 = icmp ult i64 %647, %129, !dbg !1691
  br i1 %648, label %649, label %651, !dbg !1694

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1691
  store i8 %645, i8* %650, align 1, !dbg !1691, !tbaa !830
  br label %651, !dbg !1691

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1694
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1695
  call void @llvm.dbg.value(metadata i8* %653, metadata !1176, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %652, metadata !1174, metadata !DIExpression()), !dbg !1237
  %654 = load i8, i8* %653, align 1, !dbg !1687, !tbaa !830
  %655 = icmp eq i8 %654, 0, !dbg !1690
  br i1 %655, label %656, label %644, !dbg !1690, !llvm.loop !1696

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1237
  call void @llvm.dbg.value(metadata i64 %657, metadata !1174, metadata !DIExpression()), !dbg !1237
  %658 = icmp ult i64 %657, %129, !dbg !1698
  br i1 %658, label %659, label %671, !dbg !1700

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1701
  store i8 0, i8* %660, align 1, !dbg !1702, !tbaa !830
  br label %671, !dbg !1701

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1165, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %663, metadata !1167, metadata !DIExpression()), !dbg !1231
  %665 = icmp ne i32 %662, 2, !dbg !1703
  %666 = icmp eq i8 %102, 0, !dbg !1705
  %667 = or i1 %665, %666, !dbg !1706
  call void @llvm.dbg.value(metadata i32 4, metadata !1168, metadata !DIExpression()), !dbg !1232
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1706
  call void @llvm.dbg.value(metadata i32 %668, metadata !1168, metadata !DIExpression()), !dbg !1232
  %669 = and i32 %5, -3, !dbg !1707
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1708
  br label %671, !dbg !1709

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1710
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1715, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 %1, metadata !1716, metadata !DIExpression()), !dbg !1720
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1721
  call void @llvm.dbg.value(metadata i8* %3, metadata !1717, metadata !DIExpression()), !dbg !1722
  %4 = icmp eq i8* %3, %0, !dbg !1723
  br i1 %4, label %5, label %71, !dbg !1725

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %6, metadata !1718, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8* %6, metadata !1728, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* null, metadata !1734, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 85, metadata !1735, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 84, metadata !1736, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 70, metadata !1737, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 45, metadata !1738, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 56, metadata !1739, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 0, metadata !1740, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 0, metadata !1741, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 0, metadata !1742, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8 0, metadata !1743, metadata !DIExpression()), !dbg !1756
  %7 = load i8, i8* %6, align 1, !dbg !1757, !tbaa !830
  %8 = and i8 %7, -33, !dbg !1757
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1757

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1759, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* null, metadata !1764, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 84, metadata !1765, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 70, metadata !1766, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 45, metadata !1767, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 56, metadata !1768, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 0, metadata !1769, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 0, metadata !1770, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 0, metadata !1771, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1785
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1786
  %11 = load i8, i8* %10, align 1, !dbg !1786, !tbaa !830
  %12 = and i8 %11, -33, !dbg !1786
  %13 = icmp eq i8 %12, 84, !dbg !1786
  br i1 %13, label %14, label %68, !dbg !1786

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1788, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i8* null, metadata !1793, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 70, metadata !1794, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 45, metadata !1795, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 56, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, metadata !1797, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 0, metadata !1798, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1799, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1812
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1813
  %16 = load i8, i8* %15, align 1, !dbg !1813, !tbaa !830
  %17 = and i8 %16, -33, !dbg !1813
  %18 = icmp eq i8 %17, 70, !dbg !1813
  br i1 %18, label %19, label %68, !dbg !1813

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1815, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8* null, metadata !1820, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 45, metadata !1821, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i8 56, metadata !1822, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i8 0, metadata !1823, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 0, metadata !1824, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8 0, metadata !1825, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i8 0, metadata !1826, metadata !DIExpression()), !dbg !1837
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1838
  %21 = load i8, i8* %20, align 1, !dbg !1838, !tbaa !830
  %22 = icmp eq i8 %21, 45, !dbg !1838
  br i1 %22, label %23, label %68, !dbg !1840

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1841, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8* null, metadata !1846, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 56, metadata !1847, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 0, metadata !1848, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 0, metadata !1849, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1861
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1862
  %25 = load i8, i8* %24, align 1, !dbg !1862, !tbaa !830
  %26 = icmp eq i8 %25, 56, !dbg !1862
  br i1 %26, label %27, label %68, !dbg !1864

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1865, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8* null, metadata !1870, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 0, metadata !1871, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1872, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 0, metadata !1873, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1883
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1884
  %29 = load i8, i8* %28, align 1, !dbg !1884, !tbaa !830
  %30 = icmp eq i8 %29, 0, !dbg !1884
  br i1 %30, label %31, label %68, !dbg !1886

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1887, !tbaa !830
  %33 = icmp eq i8 %32, 96, !dbg !1888
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.75, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.76, i64 0, i64 0), !dbg !1887
  br label %71, !dbg !1889

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1759, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* null, metadata !1764, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 66, metadata !1765, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 49, metadata !1766, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 56, metadata !1767, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 48, metadata !1768, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 51, metadata !1769, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 48, metadata !1770, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8 0, metadata !1771, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1902
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1903
  %37 = load i8, i8* %36, align 1, !dbg !1903, !tbaa !830
  %38 = and i8 %37, -33, !dbg !1903
  %39 = icmp eq i8 %38, 66, !dbg !1903
  br i1 %39, label %40, label %68, !dbg !1903

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1788, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8* null, metadata !1793, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 49, metadata !1794, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 56, metadata !1795, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 48, metadata !1796, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 51, metadata !1797, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 48, metadata !1798, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 0, metadata !1799, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1913
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1914
  %42 = load i8, i8* %41, align 1, !dbg !1914, !tbaa !830
  %43 = icmp eq i8 %42, 49, !dbg !1914
  br i1 %43, label %44, label %68, !dbg !1915

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1815, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8* null, metadata !1820, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 56, metadata !1821, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i8 48, metadata !1822, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8 51, metadata !1823, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8 48, metadata !1824, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 0, metadata !1825, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 0, metadata !1826, metadata !DIExpression()), !dbg !1924
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1925
  %46 = load i8, i8* %45, align 1, !dbg !1925, !tbaa !830
  %47 = icmp eq i8 %46, 56, !dbg !1925
  br i1 %47, label %48, label %68, !dbg !1926

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1841, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* null, metadata !1846, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 48, metadata !1847, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 51, metadata !1848, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 48, metadata !1849, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1934
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1935
  %50 = load i8, i8* %49, align 1, !dbg !1935, !tbaa !830
  %51 = icmp eq i8 %50, 48, !dbg !1935
  br i1 %51, label %52, label %68, !dbg !1936

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1865, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8* null, metadata !1870, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 51, metadata !1871, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i8 48, metadata !1872, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, metadata !1873, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1943
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1944
  %54 = load i8, i8* %53, align 1, !dbg !1944, !tbaa !830
  %55 = icmp eq i8 %54, 51, !dbg !1944
  br i1 %55, label %56, label %68, !dbg !1945

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1946, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8* null, metadata !1951, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8 48, metadata !1952, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 0, metadata !1953, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 0, metadata !1954, metadata !DIExpression()), !dbg !1962
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1963
  %58 = load i8, i8* %57, align 1, !dbg !1963, !tbaa !830
  %59 = icmp eq i8 %58, 48, !dbg !1963
  br i1 %59, label %60, label %68, !dbg !1965

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1966, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8* null, metadata !1971, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 0, metadata !1972, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 0, metadata !1973, metadata !DIExpression()), !dbg !1980
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1981
  %62 = load i8, i8* %61, align 1, !dbg !1981, !tbaa !830
  %63 = icmp eq i8 %62, 0, !dbg !1981
  br i1 %63, label %64, label %68, !dbg !1983

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1984, !tbaa !830
  %66 = icmp eq i8 %65, 96, !dbg !1985
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.78, i64 0, i64 0), !dbg !1984
  br label %71, !dbg !1986

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1987
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), !dbg !1988
  br label %71, !dbg !1989

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1990
  ret i8* %72, !dbg !1991
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1992 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1996, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %1, metadata !1997, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1998, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8* %0, metadata !2002, metadata !DIExpression()) #10, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %1, metadata !2007, metadata !DIExpression()) #10, !dbg !2017
  call void @llvm.dbg.value(metadata i64* null, metadata !2008, metadata !DIExpression()) #10, !dbg !2018
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2009, metadata !DIExpression()) #10, !dbg !2019
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2020
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2010, metadata !DIExpression()) #10, !dbg !2021
  %6 = tail call i32* @__errno_location() #16, !dbg !2022
  %7 = load i32, i32* %6, align 4, !dbg !2022, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %7, metadata !2011, metadata !DIExpression()) #10, !dbg !2023
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2024
  %9 = load i32, i32* %8, align 4, !dbg !2024, !tbaa !1097
  %10 = or i32 %9, 1, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %10, metadata !2012, metadata !DIExpression()) #10, !dbg !2026
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2027
  %12 = load i32, i32* %11, align 8, !dbg !2027, !tbaa !1038
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2028
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2029
  %15 = load i8*, i8** %14, align 8, !dbg !2029, !tbaa !1123
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2030
  %17 = load i8*, i8** %16, align 8, !dbg !2030, !tbaa !1126
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2031
  %19 = add i64 %18, 1, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %19, metadata !2013, metadata !DIExpression()) #10, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %19, metadata !2034, metadata !DIExpression()) #10, !dbg !2039
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2041
  call void @llvm.dbg.value(metadata i8* %20, metadata !2014, metadata !DIExpression()) #10, !dbg !2042
  %21 = load i32, i32* %11, align 8, !dbg !2043, !tbaa !1038
  %22 = load i8*, i8** %14, align 8, !dbg !2044, !tbaa !1123
  %23 = load i8*, i8** %16, align 8, !dbg !2045, !tbaa !1126
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2046
  store i32 %7, i32* %6, align 4, !dbg !2047, !tbaa !675
  ret i8* %20, !dbg !2048
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2002, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i64 %1, metadata !2007, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64* %2, metadata !2008, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2009, metadata !DIExpression()), !dbg !2052
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2053
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2053
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2010, metadata !DIExpression()), !dbg !2054
  %7 = tail call i32* @__errno_location() #16, !dbg !2055
  %8 = load i32, i32* %7, align 4, !dbg !2055, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %8, metadata !2011, metadata !DIExpression()), !dbg !2056
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2057
  %10 = load i32, i32* %9, align 4, !dbg !2057, !tbaa !1097
  %11 = icmp ne i64* %2, null, !dbg !2058
  %12 = xor i1 %11, true, !dbg !2058
  %13 = zext i1 %12 to i32, !dbg !2058
  %14 = or i32 %10, %13, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %14, metadata !2012, metadata !DIExpression()), !dbg !2060
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2061
  %16 = load i32, i32* %15, align 8, !dbg !2061, !tbaa !1038
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2062
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2063
  %19 = load i8*, i8** %18, align 8, !dbg !2063, !tbaa !1123
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2064
  %21 = load i8*, i8** %20, align 8, !dbg !2064, !tbaa !1126
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2065
  %23 = add i64 %22, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %23, metadata !2013, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %23, metadata !2034, metadata !DIExpression()) #10, !dbg !2068
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2070
  call void @llvm.dbg.value(metadata i8* %24, metadata !2014, metadata !DIExpression()), !dbg !2071
  %25 = load i32, i32* %15, align 8, !dbg !2072, !tbaa !1038
  %26 = load i8*, i8** %18, align 8, !dbg !2073, !tbaa !1123
  %27 = load i8*, i8** %20, align 8, !dbg !2074, !tbaa !1126
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2075
  store i32 %8, i32* %7, align 4, !dbg !2076, !tbaa !675
  br i1 %11, label %29, label %30, !dbg !2077

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2078, !tbaa !2080
  br label %30, !dbg !2081

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2083 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2087, !tbaa !668
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2085, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 1, metadata !2086, metadata !DIExpression()), !dbg !2089
  %2 = load i32, i32* @nslots, align 4, !dbg !2090, !tbaa !675
  %3 = icmp sgt i32 %2, 1, !dbg !2093
  br i1 %3, label %4, label %12, !dbg !2094

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2086, metadata !DIExpression()), !dbg !2089
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2095
  %7 = load i8*, i8** %6, align 8, !dbg !2095, !tbaa !2096
  tail call void @free(i8* %7) #10, !dbg !2098
  %8 = add nuw nsw i64 %5, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i32 undef, metadata !2086, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2089
  %9 = load i32, i32* @nslots, align 4, !dbg !2090, !tbaa !675
  %10 = sext i32 %9 to i64, !dbg !2093
  %11 = icmp slt i64 %8, %10, !dbg !2093
  br i1 %11, label %4, label %12, !dbg !2094, !llvm.loop !2100

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2102
  %14 = load i8*, i8** %13, align 8, !dbg !2102, !tbaa !2096
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2104
  br i1 %15, label %17, label %16, !dbg !2105

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2106
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2108, !tbaa !2109
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2110, !tbaa !2096
  br label %17, !dbg !2111

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2112
  br i1 %18, label %21, label %19, !dbg !2114

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2115
  tail call void @free(i8* %20) #10, !dbg !2117
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2118, !tbaa !668
  br label %21, !dbg !2119

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2120, !tbaa !675
  ret void, !dbg !2121
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2122 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2126, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i8* %1, metadata !2127, metadata !DIExpression()), !dbg !2129
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2130
  ret i8* %3, !dbg !2131
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2132 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2136, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8* %1, metadata !2137, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %2, metadata !2138, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2139, metadata !DIExpression()), !dbg !2154
  %5 = tail call i32* @__errno_location() #16, !dbg !2155
  %6 = load i32, i32* %5, align 4, !dbg !2155, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %6, metadata !2140, metadata !DIExpression()), !dbg !2156
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2157, !tbaa !668
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2141, metadata !DIExpression()), !dbg !2158
  %8 = icmp slt i32 %0, 0, !dbg !2159
  br i1 %8, label %9, label %10, !dbg !2161

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2162
  unreachable, !dbg !2162

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2163, !tbaa !675
  %12 = icmp sgt i32 %11, %0, !dbg !2164
  br i1 %12, label %34, label %13, !dbg !2165

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2166
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2145, metadata !DIExpression()), !dbg !2167
  %15 = icmp eq i32 %0, 2147483647, !dbg !2168
  br i1 %15, label %16, label %17, !dbg !2170

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2171
  unreachable, !dbg !2171

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2172
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2172
  %20 = add nsw i32 %0, 1, !dbg !2173
  %21 = sext i32 %20 to i64, !dbg !2174
  %22 = shl nsw i64 %21, 4, !dbg !2175
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2176
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2176
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2141, metadata !DIExpression()), !dbg !2158
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2177, !tbaa !668
  br i1 %14, label %25, label %26, !dbg !2178

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2179, !tbaa.struct !2181
  br label %26, !dbg !2182

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2183, !tbaa !675
  %28 = sext i32 %27 to i64, !dbg !2184
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2184
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2185
  %31 = sub nsw i32 %20, %27, !dbg !2186
  %32 = sext i32 %31 to i64, !dbg !2187
  %33 = shl nsw i64 %32, 4, !dbg !2188
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2185
  store i32 %20, i32* @nslots, align 4, !dbg !2189, !tbaa !675
  br label %34, !dbg !2190

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2191
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2141, metadata !DIExpression()), !dbg !2158
  %36 = sext i32 %0 to i64, !dbg !2192
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2193
  %38 = load i64, i64* %37, align 8, !dbg !2193, !tbaa !2109
  call void @llvm.dbg.value(metadata i64 %38, metadata !2146, metadata !DIExpression()), !dbg !2194
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2195
  %40 = load i8*, i8** %39, align 8, !dbg !2195, !tbaa !2096
  call void @llvm.dbg.value(metadata i8* %40, metadata !2148, metadata !DIExpression()), !dbg !2196
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2197
  %42 = load i32, i32* %41, align 4, !dbg !2197, !tbaa !1097
  %43 = or i32 %42, 1, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %43, metadata !2149, metadata !DIExpression()), !dbg !2199
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2200
  %45 = load i32, i32* %44, align 8, !dbg !2200, !tbaa !1038
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2201
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2202
  %48 = load i8*, i8** %47, align 8, !dbg !2202, !tbaa !1123
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2203
  %50 = load i8*, i8** %49, align 8, !dbg !2203, !tbaa !1126
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2204
  call void @llvm.dbg.value(metadata i64 %51, metadata !2150, metadata !DIExpression()), !dbg !2205
  %52 = icmp ugt i64 %38, %51, !dbg !2206
  br i1 %52, label %63, label %53, !dbg !2208

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %54, metadata !2146, metadata !DIExpression()), !dbg !2194
  store i64 %54, i64* %37, align 8, !dbg !2211, !tbaa !2109
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2212
  br i1 %55, label %57, label %56, !dbg !2214

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2215
  br label %57, !dbg !2215

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2034, metadata !DIExpression()) #10, !dbg !2216
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2218
  call void @llvm.dbg.value(metadata i8* %58, metadata !2148, metadata !DIExpression()), !dbg !2196
  store i8* %58, i8** %39, align 8, !dbg !2219, !tbaa !2096
  %59 = load i32, i32* %44, align 8, !dbg !2220, !tbaa !1038
  %60 = load i8*, i8** %47, align 8, !dbg !2221, !tbaa !1123
  %61 = load i8*, i8** %49, align 8, !dbg !2222, !tbaa !1126
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2223
  br label %63, !dbg !2224

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2225
  call void @llvm.dbg.value(metadata i8* %64, metadata !2148, metadata !DIExpression()), !dbg !2196
  store i32 %6, i32* %5, align 4, !dbg !2226, !tbaa !675
  ret i8* %64, !dbg !2227
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2228 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2232, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i8* %1, metadata !2233, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %2, metadata !2234, metadata !DIExpression()), !dbg !2237
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2238
  ret i8* %4, !dbg !2239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2240 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2244, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 0, metadata !2126, metadata !DIExpression()) #10, !dbg !2246
  call void @llvm.dbg.value(metadata i8* %0, metadata !2127, metadata !DIExpression()) #10, !dbg !2248
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2249
  ret i8* %2, !dbg !2250
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2251 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2255, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %1, metadata !2256, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i32 0, metadata !2232, metadata !DIExpression()) #10, !dbg !2259
  call void @llvm.dbg.value(metadata i8* %0, metadata !2233, metadata !DIExpression()) #10, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %1, metadata !2234, metadata !DIExpression()) #10, !dbg !2262
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2263
  ret i8* %3, !dbg !2264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2265 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2269, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 %1, metadata !2270, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8* %2, metadata !2271, metadata !DIExpression()), !dbg !2275
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2276
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2276
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2272, metadata !DIExpression(DW_OP_deref)), !dbg !2277
  call void @llvm.dbg.value(metadata i32 %1, metadata !2278, metadata !DIExpression()) #10, !dbg !2284
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2286, !alias.scope !2287
  %6 = icmp eq i32 %1, 10, !dbg !2290
  br i1 %6, label %7, label %8, !dbg !2292

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2293, !noalias !2287
  unreachable, !dbg !2293

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2294
  store i32 %1, i32* %9, align 8, !dbg !2295, !tbaa !1038, !alias.scope !2287
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2272, metadata !DIExpression(DW_OP_deref)), !dbg !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2283, metadata !DIExpression(DW_OP_deref)), !dbg !2286
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2296
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2297
  ret i8* %10, !dbg !2298
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2299 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2303, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 %1, metadata !2304, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %2, metadata !2305, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %3, metadata !2306, metadata !DIExpression()), !dbg !2311
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2312
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2312
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2307, metadata !DIExpression(DW_OP_deref)), !dbg !2313
  call void @llvm.dbg.value(metadata i32 %1, metadata !2278, metadata !DIExpression()) #10, !dbg !2314
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2316, !alias.scope !2317
  %7 = icmp eq i32 %1, 10, !dbg !2320
  br i1 %7, label %8, label %9, !dbg !2321

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2322, !noalias !2317
  unreachable, !dbg !2322

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2323
  store i32 %1, i32* %10, align 8, !dbg !2324, !tbaa !1038, !alias.scope !2317
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2307, metadata !DIExpression(DW_OP_deref)), !dbg !2313
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2283, metadata !DIExpression(DW_OP_deref)), !dbg !2316
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2325
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2326
  ret i8* %11, !dbg !2327
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2328 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8* %1, metadata !2333, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i32 0, metadata !2269, metadata !DIExpression()) #10, !dbg !2336
  call void @llvm.dbg.value(metadata i32 %0, metadata !2270, metadata !DIExpression()) #10, !dbg !2338
  call void @llvm.dbg.value(metadata i8* %1, metadata !2271, metadata !DIExpression()) #10, !dbg !2339
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2340
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2340
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2272, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %0, metadata !2278, metadata !DIExpression()) #10, !dbg !2342
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2344, !alias.scope !2345
  %5 = icmp eq i32 %0, 10, !dbg !2348
  br i1 %5, label %6, label %7, !dbg !2349

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2350, !noalias !2345
  unreachable, !dbg !2350

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2351
  store i32 %0, i32* %8, align 8, !dbg !2352, !tbaa !1038, !alias.scope !2345
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2272, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2283, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2344
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2353
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2354
  ret i8* %9, !dbg !2355
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2356 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2360, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8* %1, metadata !2361, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i64 %2, metadata !2362, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 0, metadata !2303, metadata !DIExpression()) #10, !dbg !2366
  call void @llvm.dbg.value(metadata i32 %0, metadata !2304, metadata !DIExpression()) #10, !dbg !2368
  call void @llvm.dbg.value(metadata i8* %1, metadata !2305, metadata !DIExpression()) #10, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %2, metadata !2306, metadata !DIExpression()) #10, !dbg !2370
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2371
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2307, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %0, metadata !2278, metadata !DIExpression()) #10, !dbg !2373
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2375, !alias.scope !2376
  %6 = icmp eq i32 %0, 10, !dbg !2379
  br i1 %6, label %7, label %8, !dbg !2380

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2381, !noalias !2376
  unreachable, !dbg !2381

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2382
  store i32 %0, i32* %9, align 8, !dbg !2383, !tbaa !1038, !alias.scope !2376
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2307, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2372
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2283, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2375
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2384
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2385
  ret i8* %10, !dbg !2386
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2387 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2391, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %1, metadata !2392, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i8 %2, metadata !2393, metadata !DIExpression()), !dbg !2397
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2398
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2398
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2399, !tbaa.struct !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2394, metadata !DIExpression(DW_OP_deref)), !dbg !2401
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1057, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8 %2, metadata !1058, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 1, metadata !1059, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %2, metadata !1060, metadata !DIExpression()), !dbg !2406
  %6 = lshr i8 %2, 5, !dbg !2407
  %7 = zext i8 %6 to i64, !dbg !2407
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2408
  call void @llvm.dbg.value(metadata i32* %8, metadata !1061, metadata !DIExpression()), !dbg !2409
  %9 = and i8 %2, 31, !dbg !2410
  %10 = zext i8 %9 to i32, !dbg !2410
  call void @llvm.dbg.value(metadata i32 %10, metadata !1063, metadata !DIExpression()), !dbg !2411
  %11 = load i32, i32* %8, align 4, !dbg !2412, !tbaa !675
  %12 = lshr i32 %11, %10, !dbg !2413
  %13 = and i32 %12, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %13, metadata !1064, metadata !DIExpression()), !dbg !2415
  %14 = xor i32 %13, 1, !dbg !2416
  %15 = shl i32 %14, %10, !dbg !2417
  %16 = xor i32 %15, %11, !dbg !2418
  store i32 %16, i32* %8, align 4, !dbg !2418, !tbaa !675
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2394, metadata !DIExpression(DW_OP_deref)), !dbg !2401
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2419
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2420
  ret i8* %17, !dbg !2421
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2422 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8 %1, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* %0, metadata !2391, metadata !DIExpression()) #10, !dbg !2430
  call void @llvm.dbg.value(metadata i64 -1, metadata !2392, metadata !DIExpression()) #10, !dbg !2432
  call void @llvm.dbg.value(metadata i8 %1, metadata !2393, metadata !DIExpression()) #10, !dbg !2433
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2434
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2434
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2435, !tbaa.struct !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2394, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2436
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1057, metadata !DIExpression()) #10, !dbg !2437
  call void @llvm.dbg.value(metadata i8 %1, metadata !1058, metadata !DIExpression()) #10, !dbg !2439
  call void @llvm.dbg.value(metadata i32 1, metadata !1059, metadata !DIExpression()) #10, !dbg !2440
  call void @llvm.dbg.value(metadata i8 %1, metadata !1060, metadata !DIExpression()) #10, !dbg !2441
  %5 = lshr i8 %1, 5, !dbg !2442
  %6 = zext i8 %5 to i64, !dbg !2442
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2443
  call void @llvm.dbg.value(metadata i32* %7, metadata !1061, metadata !DIExpression()) #10, !dbg !2444
  %8 = and i8 %1, 31, !dbg !2445
  %9 = zext i8 %8 to i32, !dbg !2445
  call void @llvm.dbg.value(metadata i32 %9, metadata !1063, metadata !DIExpression()) #10, !dbg !2446
  %10 = load i32, i32* %7, align 4, !dbg !2447, !tbaa !675
  %11 = lshr i32 %10, %9, !dbg !2448
  %12 = and i32 %11, 1, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %12, metadata !1064, metadata !DIExpression()) #10, !dbg !2450
  %13 = xor i32 %12, 1, !dbg !2451
  %14 = shl i32 %13, %9, !dbg !2452
  %15 = xor i32 %14, %10, !dbg !2453
  store i32 %15, i32* %7, align 4, !dbg !2453, !tbaa !675
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2394, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2436
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2454
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2455
  ret i8* %16, !dbg !2456
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2457 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2459, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8* %0, metadata !2426, metadata !DIExpression()) #10, !dbg !2461
  call void @llvm.dbg.value(metadata i8 58, metadata !2427, metadata !DIExpression()) #10, !dbg !2463
  call void @llvm.dbg.value(metadata i8* %0, metadata !2391, metadata !DIExpression()) #10, !dbg !2464
  call void @llvm.dbg.value(metadata i64 -1, metadata !2392, metadata !DIExpression()) #10, !dbg !2466
  call void @llvm.dbg.value(metadata i8 58, metadata !2393, metadata !DIExpression()) #10, !dbg !2467
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2468
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2468
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2469, !tbaa.struct !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2394, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2470
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1057, metadata !DIExpression()) #10, !dbg !2471
  call void @llvm.dbg.value(metadata i8 58, metadata !1058, metadata !DIExpression()) #10, !dbg !2473
  call void @llvm.dbg.value(metadata i32 1, metadata !1059, metadata !DIExpression()) #10, !dbg !2474
  call void @llvm.dbg.value(metadata i8 58, metadata !1060, metadata !DIExpression()) #10, !dbg !2475
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2476
  call void @llvm.dbg.value(metadata i32* %4, metadata !1061, metadata !DIExpression()) #10, !dbg !2477
  call void @llvm.dbg.value(metadata i32 26, metadata !1063, metadata !DIExpression()) #10, !dbg !2478
  %5 = load i32, i32* %4, align 4, !dbg !2479, !tbaa !675
  %6 = or i32 %5, 67108864, !dbg !2480
  store i32 %6, i32* %4, align 4, !dbg !2480, !tbaa !675
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2394, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2470
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2481
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2482
  ret i8* %7, !dbg !2483
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2484 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2486, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i64 %1, metadata !2487, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8* %0, metadata !2391, metadata !DIExpression()) #10, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %1, metadata !2392, metadata !DIExpression()) #10, !dbg !2492
  call void @llvm.dbg.value(metadata i8 58, metadata !2393, metadata !DIExpression()) #10, !dbg !2493
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2494
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2495, !tbaa.struct !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2394, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2496
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1057, metadata !DIExpression()) #10, !dbg !2497
  call void @llvm.dbg.value(metadata i8 58, metadata !1058, metadata !DIExpression()) #10, !dbg !2499
  call void @llvm.dbg.value(metadata i32 1, metadata !1059, metadata !DIExpression()) #10, !dbg !2500
  call void @llvm.dbg.value(metadata i8 58, metadata !1060, metadata !DIExpression()) #10, !dbg !2501
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2502
  call void @llvm.dbg.value(metadata i32* %5, metadata !1061, metadata !DIExpression()) #10, !dbg !2503
  call void @llvm.dbg.value(metadata i32 26, metadata !1063, metadata !DIExpression()) #10, !dbg !2504
  %6 = load i32, i32* %5, align 4, !dbg !2505, !tbaa !675
  %7 = or i32 %6, 67108864, !dbg !2506
  store i32 %7, i32* %5, align 4, !dbg !2506, !tbaa !675
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2394, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2496
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2507
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2508
  ret i8* %8, !dbg !2509
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2510 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2283, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2516
  call void @llvm.dbg.value(metadata i32 %0, metadata !2512, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i32 %1, metadata !2513, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8* %2, metadata !2514, metadata !DIExpression()), !dbg !2520
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2521
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2521
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2522
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2522
  call void @llvm.dbg.value(metadata i32 %1, metadata !2278, metadata !DIExpression()) #10, !dbg !2523
  call void @llvm.dbg.value(metadata i32 0, metadata !2283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2516
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2516, !alias.scope !2524
  %8 = icmp eq i32 %1, 10, !dbg !2527
  br i1 %8, label %9, label %10, !dbg !2528

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2529, !noalias !2524
  unreachable, !dbg !2529

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2516
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2522
  store i32 %1, i32* %11, align 8, !dbg !2522
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2522
  %13 = bitcast i32* %12 to i8*, !dbg !2522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2522
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2522
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2515, metadata !DIExpression(DW_OP_deref)), !dbg !2530
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1057, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8 58, metadata !1058, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 1, metadata !1059, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 58, metadata !1060, metadata !DIExpression()), !dbg !2535
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2536
  call void @llvm.dbg.value(metadata i32* %14, metadata !1061, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 26, metadata !1063, metadata !DIExpression()), !dbg !2538
  %15 = load i32, i32* %14, align 4, !dbg !2539, !tbaa !675
  %16 = or i32 %15, 67108864, !dbg !2540
  store i32 %16, i32* %14, align 4, !dbg !2540, !tbaa !675
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2515, metadata !DIExpression(DW_OP_deref)), !dbg !2530
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2541
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2542
  ret i8* %17, !dbg !2543
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2544 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2548, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8* %1, metadata !2549, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8* %2, metadata !2550, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* %3, metadata !2551, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i32 %0, metadata !2556, metadata !DIExpression()) #10, !dbg !2566
  call void @llvm.dbg.value(metadata i8* %1, metadata !2561, metadata !DIExpression()) #10, !dbg !2568
  call void @llvm.dbg.value(metadata i8* %2, metadata !2562, metadata !DIExpression()) #10, !dbg !2569
  call void @llvm.dbg.value(metadata i8* %3, metadata !2563, metadata !DIExpression()) #10, !dbg !2570
  call void @llvm.dbg.value(metadata i64 -1, metadata !2564, metadata !DIExpression()) #10, !dbg !2571
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2572
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2573, !tbaa.struct !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2565, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1105, metadata !DIExpression()) #10, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %1, metadata !1106, metadata !DIExpression()) #10, !dbg !2577
  call void @llvm.dbg.value(metadata i8* %2, metadata !1107, metadata !DIExpression()) #10, !dbg !2578
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1105, metadata !DIExpression()) #10, !dbg !2575
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2579
  store i32 10, i32* %7, align 8, !dbg !2580, !tbaa !1038
  %8 = icmp ne i8* %1, null, !dbg !2581
  %9 = icmp ne i8* %2, null, !dbg !2582
  %10 = and i1 %8, %9, !dbg !2583
  br i1 %10, label %12, label %11, !dbg !2583

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2584
  unreachable, !dbg !2584

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2585
  store i8* %1, i8** %13, align 8, !dbg !2586, !tbaa !1123
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2587
  store i8* %2, i8** %14, align 8, !dbg !2588, !tbaa !1126
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2565, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2574
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2589
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2590
  ret i8* %15, !dbg !2591
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2557 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2556, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8* %1, metadata !2561, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %2, metadata !2562, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8* %3, metadata !2563, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %4, metadata !2564, metadata !DIExpression()), !dbg !2596
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2597
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2597
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2598, !tbaa.struct !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2565, metadata !DIExpression(DW_OP_deref)), !dbg !2599
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1105, metadata !DIExpression()) #10, !dbg !2600
  call void @llvm.dbg.value(metadata i8* %1, metadata !1106, metadata !DIExpression()) #10, !dbg !2602
  call void @llvm.dbg.value(metadata i8* %2, metadata !1107, metadata !DIExpression()) #10, !dbg !2603
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1105, metadata !DIExpression()) #10, !dbg !2600
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2604
  store i32 10, i32* %8, align 8, !dbg !2605, !tbaa !1038
  %9 = icmp ne i8* %1, null, !dbg !2606
  %10 = icmp ne i8* %2, null, !dbg !2607
  %11 = and i1 %9, %10, !dbg !2608
  br i1 %11, label %13, label %12, !dbg !2608

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2609
  unreachable, !dbg !2609

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2610
  store i8* %1, i8** %14, align 8, !dbg !2611, !tbaa !1123
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2612
  store i8* %2, i8** %15, align 8, !dbg !2613, !tbaa !1126
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2565, metadata !DIExpression(DW_OP_deref)), !dbg !2599
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2614
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2615
  ret i8* %16, !dbg !2616
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2617 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2621, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %1, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %2, metadata !2623, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 0, metadata !2548, metadata !DIExpression()) #10, !dbg !2627
  call void @llvm.dbg.value(metadata i8* %0, metadata !2549, metadata !DIExpression()) #10, !dbg !2629
  call void @llvm.dbg.value(metadata i8* %1, metadata !2550, metadata !DIExpression()) #10, !dbg !2630
  call void @llvm.dbg.value(metadata i8* %2, metadata !2551, metadata !DIExpression()) #10, !dbg !2631
  call void @llvm.dbg.value(metadata i32 0, metadata !2556, metadata !DIExpression()) #10, !dbg !2632
  call void @llvm.dbg.value(metadata i8* %0, metadata !2561, metadata !DIExpression()) #10, !dbg !2634
  call void @llvm.dbg.value(metadata i8* %1, metadata !2562, metadata !DIExpression()) #10, !dbg !2635
  call void @llvm.dbg.value(metadata i8* %2, metadata !2563, metadata !DIExpression()) #10, !dbg !2636
  call void @llvm.dbg.value(metadata i64 -1, metadata !2564, metadata !DIExpression()) #10, !dbg !2637
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2638
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2638
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2639, !tbaa.struct !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2565, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2640
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1105, metadata !DIExpression()) #10, !dbg !2641
  call void @llvm.dbg.value(metadata i8* %0, metadata !1106, metadata !DIExpression()) #10, !dbg !2643
  call void @llvm.dbg.value(metadata i8* %1, metadata !1107, metadata !DIExpression()) #10, !dbg !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1105, metadata !DIExpression()) #10, !dbg !2641
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2645
  store i32 10, i32* %6, align 8, !dbg !2646, !tbaa !1038
  %7 = icmp ne i8* %0, null, !dbg !2647
  %8 = icmp ne i8* %1, null, !dbg !2648
  %9 = and i1 %7, %8, !dbg !2649
  br i1 %9, label %11, label %10, !dbg !2649

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2650
  unreachable, !dbg !2650

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2651
  store i8* %0, i8** %12, align 8, !dbg !2652, !tbaa !1123
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2653
  store i8* %1, i8** %13, align 8, !dbg !2654, !tbaa !1126
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2565, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2640
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2655
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2656
  ret i8* %14, !dbg !2657
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2658 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2662, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8* %1, metadata !2663, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* %2, metadata !2664, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i64 %3, metadata !2665, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i32 0, metadata !2556, metadata !DIExpression()) #10, !dbg !2670
  call void @llvm.dbg.value(metadata i8* %0, metadata !2561, metadata !DIExpression()) #10, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %1, metadata !2562, metadata !DIExpression()) #10, !dbg !2673
  call void @llvm.dbg.value(metadata i8* %2, metadata !2563, metadata !DIExpression()) #10, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %3, metadata !2564, metadata !DIExpression()) #10, !dbg !2675
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2676
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2677, !tbaa.struct !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2565, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2678
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1105, metadata !DIExpression()) #10, !dbg !2679
  call void @llvm.dbg.value(metadata i8* %0, metadata !1106, metadata !DIExpression()) #10, !dbg !2681
  call void @llvm.dbg.value(metadata i8* %1, metadata !1107, metadata !DIExpression()) #10, !dbg !2682
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1105, metadata !DIExpression()) #10, !dbg !2679
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2683
  store i32 10, i32* %7, align 8, !dbg !2684, !tbaa !1038
  %8 = icmp ne i8* %0, null, !dbg !2685
  %9 = icmp ne i8* %1, null, !dbg !2686
  %10 = and i1 %8, %9, !dbg !2687
  br i1 %10, label %12, label %11, !dbg !2687

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2688
  unreachable, !dbg !2688

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2689
  store i8* %0, i8** %13, align 8, !dbg !2690, !tbaa !1123
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2691
  store i8* %1, i8** %14, align 8, !dbg !2692, !tbaa !1126
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2565, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2678
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2693
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2694
  ret i8* %15, !dbg !2695
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2696 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2700, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8* %1, metadata !2701, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %2, metadata !2702, metadata !DIExpression()), !dbg !2705
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2706
  ret i8* %4, !dbg !2707
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2708 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2712, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %1, metadata !2713, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i32 0, metadata !2700, metadata !DIExpression()) #10, !dbg !2716
  call void @llvm.dbg.value(metadata i8* %0, metadata !2701, metadata !DIExpression()) #10, !dbg !2718
  call void @llvm.dbg.value(metadata i64 %1, metadata !2702, metadata !DIExpression()) #10, !dbg !2719
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2720
  ret i8* %3, !dbg !2721
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2722 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2726, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8* %1, metadata !2727, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i32 %0, metadata !2700, metadata !DIExpression()) #10, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %1, metadata !2701, metadata !DIExpression()) #10, !dbg !2732
  call void @llvm.dbg.value(metadata i64 -1, metadata !2702, metadata !DIExpression()) #10, !dbg !2733
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2734
  ret i8* %3, !dbg !2735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2736 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2740, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 0, metadata !2726, metadata !DIExpression()) #10, !dbg !2742
  call void @llvm.dbg.value(metadata i8* %0, metadata !2727, metadata !DIExpression()) #10, !dbg !2744
  call void @llvm.dbg.value(metadata i32 0, metadata !2700, metadata !DIExpression()) #10, !dbg !2745
  call void @llvm.dbg.value(metadata i8* %0, metadata !2701, metadata !DIExpression()) #10, !dbg !2747
  call void @llvm.dbg.value(metadata i64 -1, metadata !2702, metadata !DIExpression()) #10, !dbg !2748
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2749
  ret i8* %2, !dbg !2750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2751 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2811, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8* %1, metadata !2812, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i8* %2, metadata !2813, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8* %3, metadata !2814, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8** %4, metadata !2815, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %5, metadata !2816, metadata !DIExpression()), !dbg !2822
  %7 = icmp eq i8* %1, null, !dbg !2823
  br i1 %7, label %10, label %8, !dbg !2825

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2826
  br label %12, !dbg !2826

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.84, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2827
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.85, i64 0, i64 0), i32 5) #10, !dbg !2828
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2828
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.86, i64 0, i64 0), i32 5) #10, !dbg !2829
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2829
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
  ], !dbg !2830

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2831
  unreachable, !dbg !2831

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.87, i64 0, i64 0), i32 5) #10, !dbg !2833
  %20 = load i8*, i8** %4, align 8, !dbg !2833, !tbaa !668
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2833
  br label %146, !dbg !2834

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.88, i64 0, i64 0), i32 5) #10, !dbg !2835
  %24 = load i8*, i8** %4, align 8, !dbg !2835, !tbaa !668
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2835
  %26 = load i8*, i8** %25, align 8, !dbg !2835, !tbaa !668
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2835
  br label %146, !dbg !2836

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.89, i64 0, i64 0), i32 5) #10, !dbg !2837
  %30 = load i8*, i8** %4, align 8, !dbg !2837, !tbaa !668
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2837
  %32 = load i8*, i8** %31, align 8, !dbg !2837, !tbaa !668
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2837
  %34 = load i8*, i8** %33, align 8, !dbg !2837, !tbaa !668
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2837
  br label %146, !dbg !2838

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.90, i64 0, i64 0), i32 5) #10, !dbg !2839
  %38 = load i8*, i8** %4, align 8, !dbg !2839, !tbaa !668
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2839
  %40 = load i8*, i8** %39, align 8, !dbg !2839, !tbaa !668
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2839
  %42 = load i8*, i8** %41, align 8, !dbg !2839, !tbaa !668
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2839
  %44 = load i8*, i8** %43, align 8, !dbg !2839, !tbaa !668
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2839
  br label %146, !dbg !2840

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.91, i64 0, i64 0), i32 5) #10, !dbg !2841
  %48 = load i8*, i8** %4, align 8, !dbg !2841, !tbaa !668
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2841
  %50 = load i8*, i8** %49, align 8, !dbg !2841, !tbaa !668
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2841
  %52 = load i8*, i8** %51, align 8, !dbg !2841, !tbaa !668
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2841
  %54 = load i8*, i8** %53, align 8, !dbg !2841, !tbaa !668
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2841
  %56 = load i8*, i8** %55, align 8, !dbg !2841, !tbaa !668
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2841
  br label %146, !dbg !2842

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.92, i64 0, i64 0), i32 5) #10, !dbg !2843
  %60 = load i8*, i8** %4, align 8, !dbg !2843, !tbaa !668
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2843
  %62 = load i8*, i8** %61, align 8, !dbg !2843, !tbaa !668
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2843
  %64 = load i8*, i8** %63, align 8, !dbg !2843, !tbaa !668
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2843
  %66 = load i8*, i8** %65, align 8, !dbg !2843, !tbaa !668
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2843
  %68 = load i8*, i8** %67, align 8, !dbg !2843, !tbaa !668
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2843
  %70 = load i8*, i8** %69, align 8, !dbg !2843, !tbaa !668
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2843
  br label %146, !dbg !2844

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.93, i64 0, i64 0), i32 5) #10, !dbg !2845
  %74 = load i8*, i8** %4, align 8, !dbg !2845, !tbaa !668
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2845
  %76 = load i8*, i8** %75, align 8, !dbg !2845, !tbaa !668
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2845
  %78 = load i8*, i8** %77, align 8, !dbg !2845, !tbaa !668
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2845
  %80 = load i8*, i8** %79, align 8, !dbg !2845, !tbaa !668
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2845
  %82 = load i8*, i8** %81, align 8, !dbg !2845, !tbaa !668
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2845
  %84 = load i8*, i8** %83, align 8, !dbg !2845, !tbaa !668
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2845
  %86 = load i8*, i8** %85, align 8, !dbg !2845, !tbaa !668
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2845
  br label %146, !dbg !2846

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.94, i64 0, i64 0), i32 5) #10, !dbg !2847
  %90 = load i8*, i8** %4, align 8, !dbg !2847, !tbaa !668
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2847
  %92 = load i8*, i8** %91, align 8, !dbg !2847, !tbaa !668
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2847
  %94 = load i8*, i8** %93, align 8, !dbg !2847, !tbaa !668
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2847
  %96 = load i8*, i8** %95, align 8, !dbg !2847, !tbaa !668
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2847
  %98 = load i8*, i8** %97, align 8, !dbg !2847, !tbaa !668
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2847
  %100 = load i8*, i8** %99, align 8, !dbg !2847, !tbaa !668
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2847
  %102 = load i8*, i8** %101, align 8, !dbg !2847, !tbaa !668
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2847
  %104 = load i8*, i8** %103, align 8, !dbg !2847, !tbaa !668
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2847
  br label %146, !dbg !2848

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.95, i64 0, i64 0), i32 5) #10, !dbg !2849
  %108 = load i8*, i8** %4, align 8, !dbg !2849, !tbaa !668
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2849
  %110 = load i8*, i8** %109, align 8, !dbg !2849, !tbaa !668
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2849
  %112 = load i8*, i8** %111, align 8, !dbg !2849, !tbaa !668
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2849
  %114 = load i8*, i8** %113, align 8, !dbg !2849, !tbaa !668
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2849
  %116 = load i8*, i8** %115, align 8, !dbg !2849, !tbaa !668
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2849
  %118 = load i8*, i8** %117, align 8, !dbg !2849, !tbaa !668
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2849
  %120 = load i8*, i8** %119, align 8, !dbg !2849, !tbaa !668
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2849
  %122 = load i8*, i8** %121, align 8, !dbg !2849, !tbaa !668
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2849
  %124 = load i8*, i8** %123, align 8, !dbg !2849, !tbaa !668
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2849
  br label %146, !dbg !2850

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.96, i64 0, i64 0), i32 5) #10, !dbg !2851
  %128 = load i8*, i8** %4, align 8, !dbg !2851, !tbaa !668
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2851
  %130 = load i8*, i8** %129, align 8, !dbg !2851, !tbaa !668
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2851
  %132 = load i8*, i8** %131, align 8, !dbg !2851, !tbaa !668
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2851
  %134 = load i8*, i8** %133, align 8, !dbg !2851, !tbaa !668
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2851
  %136 = load i8*, i8** %135, align 8, !dbg !2851, !tbaa !668
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2851
  %138 = load i8*, i8** %137, align 8, !dbg !2851, !tbaa !668
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2851
  %140 = load i8*, i8** %139, align 8, !dbg !2851, !tbaa !668
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2851
  %142 = load i8*, i8** %141, align 8, !dbg !2851, !tbaa !668
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2851
  %144 = load i8*, i8** %143, align 8, !dbg !2851, !tbaa !668
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2851
  br label %146, !dbg !2852

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2853
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2854 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2858, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %1, metadata !2859, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8* %2, metadata !2860, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* %3, metadata !2861, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8** %4, metadata !2862, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 0, metadata !2863, metadata !DIExpression()), !dbg !2869
  br label %6, !dbg !2870

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2872
  call void @llvm.dbg.value(metadata i64 %7, metadata !2863, metadata !DIExpression()), !dbg !2869
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2874
  %9 = load i8*, i8** %8, align 8, !dbg !2874, !tbaa !668
  %10 = icmp eq i8* %9, null, !dbg !2875
  %11 = add i64 %7, 1, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %11, metadata !2863, metadata !DIExpression()), !dbg !2869
  br i1 %10, label %12, label %6, !dbg !2875, !llvm.loop !2877

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2863, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %7, metadata !2863, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %7, metadata !2863, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %7, metadata !2863, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %7, metadata !2863, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %7, metadata !2863, metadata !DIExpression()), !dbg !2869
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2879
  ret void, !dbg !2880
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2881 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2892, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* %1, metadata !2893, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8* %2, metadata !2894, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* %3, metadata !2895, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2896, metadata !DIExpression()), !dbg !2904
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2905
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2905
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2898, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 0, metadata !2897, metadata !DIExpression()), !dbg !2907
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2897, metadata !DIExpression()), !dbg !2907
  %11 = load i32, i32* %8, align 8, !dbg !2908
  %12 = icmp ult i32 %11, 41, !dbg !2908
  br i1 %12, label %13, label %18, !dbg !2908

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2908
  %15 = sext i32 %11 to i64, !dbg !2908
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2908
  %17 = add i32 %11, 8, !dbg !2908
  store i32 %17, i32* %8, align 8, !dbg !2908
  br label %21, !dbg !2908

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2908
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2908
  store i8* %20, i8** %10, align 8, !dbg !2908
  br label %21, !dbg !2908

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2908
  %25 = load i8*, i8** %24, align 8, !dbg !2908
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2911
  store i8* %25, i8** %26, align 16, !dbg !2912, !tbaa !668
  %27 = icmp eq i8* %25, null, !dbg !2913
  br i1 %27, label %30, label %28, !dbg !2914

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2897, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 1, metadata !2897, metadata !DIExpression()), !dbg !2907
  %29 = icmp ult i32 %22, 41, !dbg !2908
  br i1 %29, label %35, label %32, !dbg !2908

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2915
  call void @llvm.dbg.value(metadata i64 %31, metadata !2897, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 %31, metadata !2897, metadata !DIExpression()), !dbg !2907
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2916
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2917
  ret void, !dbg !2917

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2908
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2908
  store i8* %34, i8** %10, align 8, !dbg !2908
  br label %40, !dbg !2908

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2908
  %37 = sext i32 %22 to i64, !dbg !2908
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2908
  %39 = add i32 %22, 8, !dbg !2908
  store i32 %39, i32* %8, align 8, !dbg !2908
  br label %40, !dbg !2908

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2908
  %44 = load i8*, i8** %43, align 8, !dbg !2908
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2911
  store i8* %44, i8** %45, align 8, !dbg !2912, !tbaa !668
  %46 = icmp eq i8* %44, null, !dbg !2913
  br i1 %46, label %30, label %47, !dbg !2914

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2897, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 2, metadata !2897, metadata !DIExpression()), !dbg !2907
  %48 = icmp ult i32 %41, 41, !dbg !2908
  br i1 %48, label %52, label %49, !dbg !2908

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2908
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2908
  store i8* %51, i8** %10, align 8, !dbg !2908
  br label %57, !dbg !2908

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2908
  %54 = sext i32 %41 to i64, !dbg !2908
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2908
  %56 = add i32 %41, 8, !dbg !2908
  store i32 %56, i32* %8, align 8, !dbg !2908
  br label %57, !dbg !2908

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2908
  %61 = load i8*, i8** %60, align 8, !dbg !2908
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2911
  store i8* %61, i8** %62, align 16, !dbg !2912, !tbaa !668
  %63 = icmp eq i8* %61, null, !dbg !2913
  br i1 %63, label %30, label %64, !dbg !2914

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2897, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 3, metadata !2897, metadata !DIExpression()), !dbg !2907
  %65 = icmp ult i32 %58, 41, !dbg !2908
  br i1 %65, label %69, label %66, !dbg !2908

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2908
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2908
  store i8* %68, i8** %10, align 8, !dbg !2908
  br label %74, !dbg !2908

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2908
  %71 = sext i32 %58 to i64, !dbg !2908
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2908
  %73 = add i32 %58, 8, !dbg !2908
  store i32 %73, i32* %8, align 8, !dbg !2908
  br label %74, !dbg !2908

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2908
  %78 = load i8*, i8** %77, align 8, !dbg !2908
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2911
  store i8* %78, i8** %79, align 8, !dbg !2912, !tbaa !668
  %80 = icmp eq i8* %78, null, !dbg !2913
  br i1 %80, label %30, label %81, !dbg !2914

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2897, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 4, metadata !2897, metadata !DIExpression()), !dbg !2907
  %82 = icmp ult i32 %75, 41, !dbg !2908
  br i1 %82, label %86, label %83, !dbg !2908

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2908
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2908
  store i8* %85, i8** %10, align 8, !dbg !2908
  br label %91, !dbg !2908

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2908
  %88 = sext i32 %75 to i64, !dbg !2908
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2908
  %90 = add i32 %75, 8, !dbg !2908
  store i32 %90, i32* %8, align 8, !dbg !2908
  br label %91, !dbg !2908

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2908
  %95 = load i8*, i8** %94, align 8, !dbg !2908
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2911
  store i8* %95, i8** %96, align 16, !dbg !2912, !tbaa !668
  %97 = icmp eq i8* %95, null, !dbg !2913
  br i1 %97, label %30, label %98, !dbg !2914

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2897, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 5, metadata !2897, metadata !DIExpression()), !dbg !2907
  %99 = icmp ult i32 %92, 41, !dbg !2908
  br i1 %99, label %103, label %100, !dbg !2908

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2908
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2908
  store i8* %102, i8** %10, align 8, !dbg !2908
  br label %108, !dbg !2908

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2908
  %105 = sext i32 %92 to i64, !dbg !2908
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2908
  %107 = add i32 %92, 8, !dbg !2908
  store i32 %107, i32* %8, align 8, !dbg !2908
  br label %108, !dbg !2908

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2908
  %111 = load i8*, i8** %110, align 8, !dbg !2908
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2911
  store i8* %111, i8** %112, align 8, !dbg !2912, !tbaa !668
  %113 = icmp eq i8* %111, null, !dbg !2913
  br i1 %113, label %30, label %114, !dbg !2914

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2897, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 6, metadata !2897, metadata !DIExpression()), !dbg !2907
  %115 = load i8*, i8** %10, align 8, !dbg !2908
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2908
  store i8* %116, i8** %10, align 8, !dbg !2908
  %117 = bitcast i8* %115 to i8**, !dbg !2908
  %118 = load i8*, i8** %117, align 8, !dbg !2908
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2911
  store i8* %118, i8** %119, align 16, !dbg !2912, !tbaa !668
  %120 = icmp eq i8* %118, null, !dbg !2913
  br i1 %120, label %30, label %121, !dbg !2914

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2897, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 7, metadata !2897, metadata !DIExpression()), !dbg !2907
  %122 = load i8*, i8** %10, align 8, !dbg !2908
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2908
  store i8* %123, i8** %10, align 8, !dbg !2908
  %124 = bitcast i8* %122 to i8**, !dbg !2908
  %125 = load i8*, i8** %124, align 8, !dbg !2908
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2911
  store i8* %125, i8** %126, align 8, !dbg !2912, !tbaa !668
  %127 = icmp eq i8* %125, null, !dbg !2913
  br i1 %127, label %30, label %128, !dbg !2914

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2897, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 8, metadata !2897, metadata !DIExpression()), !dbg !2907
  %129 = load i8*, i8** %10, align 8, !dbg !2908
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2908
  store i8* %130, i8** %10, align 8, !dbg !2908
  %131 = bitcast i8* %129 to i8**, !dbg !2908
  %132 = load i8*, i8** %131, align 8, !dbg !2908
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2911
  store i8* %132, i8** %133, align 16, !dbg !2912, !tbaa !668
  %134 = icmp eq i8* %132, null, !dbg !2913
  br i1 %134, label %30, label %135, !dbg !2914

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2897, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 9, metadata !2897, metadata !DIExpression()), !dbg !2907
  %136 = load i8*, i8** %10, align 8, !dbg !2908
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2908
  store i8* %137, i8** %10, align 8, !dbg !2908
  %138 = bitcast i8* %136 to i8**, !dbg !2908
  %139 = load i8*, i8** %138, align 8, !dbg !2908
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2911
  store i8* %139, i8** %140, align 8, !dbg !2912, !tbaa !668
  %141 = icmp eq i8* %139, null, !dbg !2913
  %142 = select i1 %141, i64 9, i64 10, !dbg !2914
  br label %30, !dbg !2914
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2918 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2922, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8* %1, metadata !2923, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8* %2, metadata !2924, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8* %3, metadata !2925, metadata !DIExpression()), !dbg !2936
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2937
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2937
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2926, metadata !DIExpression()), !dbg !2938
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2939
  call void @llvm.va_start(i8* nonnull %6), !dbg !2939
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2940
  call void @llvm.va_end(i8* nonnull %6), !dbg !2941
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2942
  ret void, !dbg !2942
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2943 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.99, i64 0, i64 0), i32 5) #10, !dbg !2944
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.100, i64 0, i64 0)) #10, !dbg !2944
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.101, i64 0, i64 0), i32 5) #10, !dbg !2945
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.102, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.103, i64 0, i64 0)) #10, !dbg !2945
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.104, i64 0, i64 0), i32 5) #10, !dbg !2946
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2946, !tbaa !668
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2946
  ret void, !dbg !2947
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2948 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i64 %1, metadata !2953, metadata !DIExpression()), !dbg !2955
  %3 = udiv i64 9223372036854775807, %1, !dbg !2956
  %4 = icmp ult i64 %3, %0, !dbg !2956
  br i1 %4, label %5, label %6, !dbg !2958

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2959
  unreachable, !dbg !2959

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2960
  call void @llvm.dbg.value(metadata i64 %7, metadata !2961, metadata !DIExpression()) #10, !dbg !2968
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2970
  call void @llvm.dbg.value(metadata i8* %8, metadata !2967, metadata !DIExpression()) #10, !dbg !2971
  %9 = icmp eq i8* %8, null, !dbg !2972
  %10 = icmp ne i64 %7, 0, !dbg !2974
  %11 = and i1 %10, %9, !dbg !2975
  br i1 %11, label %12, label %13, !dbg !2975

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2976
  unreachable, !dbg !2976

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2977
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2962 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2961, metadata !DIExpression()), !dbg !2978
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2979
  call void @llvm.dbg.value(metadata i8* %2, metadata !2967, metadata !DIExpression()), !dbg !2980
  %3 = icmp eq i8* %2, null, !dbg !2981
  %4 = icmp ne i64 %0, 0, !dbg !2982
  %5 = and i1 %4, %3, !dbg !2983
  br i1 %5, label %6, label %7, !dbg !2983

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2984
  unreachable, !dbg !2984

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2985
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2986 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2990, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i64 %1, metadata !2991, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i64 %2, metadata !2992, metadata !DIExpression()), !dbg !2995
  %4 = udiv i64 9223372036854775807, %2, !dbg !2996
  %5 = icmp ult i64 %4, %1, !dbg !2996
  br i1 %5, label %6, label %7, !dbg !2998

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2999
  unreachable, !dbg !2999

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %0, metadata !3001, metadata !DIExpression()) #10, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %8, metadata !3006, metadata !DIExpression()) #10, !dbg !3009
  %9 = icmp eq i64 %8, 0, !dbg !3010
  %10 = icmp ne i8* %0, null, !dbg !3012
  %11 = and i1 %10, %9, !dbg !3013
  br i1 %11, label %12, label %13, !dbg !3013

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3014
  br label %19, !dbg !3016

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3017
  call void @llvm.dbg.value(metadata i8* %14, metadata !3001, metadata !DIExpression()) #10, !dbg !3007
  %15 = icmp eq i8* %14, null, !dbg !3018
  %16 = icmp ne i64 %8, 0, !dbg !3020
  %17 = and i1 %16, %15, !dbg !3021
  br i1 %17, label %18, label %19, !dbg !3021

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3022
  unreachable, !dbg !3022

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3023
  ret i8* %20, !dbg !3024
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3002 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3001, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %1, metadata !3006, metadata !DIExpression()), !dbg !3026
  %3 = icmp eq i64 %1, 0, !dbg !3027
  %4 = icmp ne i8* %0, null, !dbg !3028
  %5 = and i1 %4, %3, !dbg !3029
  br i1 %5, label %6, label %7, !dbg !3029

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3030
  br label %13, !dbg !3031

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3032
  call void @llvm.dbg.value(metadata i8* %8, metadata !3001, metadata !DIExpression()), !dbg !3025
  %9 = icmp eq i8* %8, null, !dbg !3033
  %10 = icmp ne i64 %1, 0, !dbg !3034
  %11 = and i1 %10, %9, !dbg !3035
  br i1 %11, label %12, label %13, !dbg !3035

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3036
  unreachable, !dbg !3036

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3037
  ret i8* %14, !dbg !3038
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !213 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !218, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64* %1, metadata !219, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %2, metadata !220, metadata !DIExpression()), !dbg !3041
  %4 = load i64, i64* %1, align 8, !dbg !3042, !tbaa !2080
  call void @llvm.dbg.value(metadata i64 %4, metadata !221, metadata !DIExpression()), !dbg !3043
  %5 = icmp eq i8* %0, null, !dbg !3044
  br i1 %5, label %6, label %20, !dbg !3046

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3047
  br i1 %7, label %8, label %13, !dbg !3050

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %9, metadata !221, metadata !DIExpression()), !dbg !3043
  %10 = icmp ugt i64 %2, 128, !dbg !3053
  %11 = zext i1 %10 to i64, !dbg !3053
  %12 = add nuw nsw i64 %9, %11, !dbg !3054
  call void @llvm.dbg.value(metadata i64 %12, metadata !221, metadata !DIExpression()), !dbg !3043
  br label %13, !dbg !3055

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3056
  call void @llvm.dbg.value(metadata i64 %14, metadata !221, metadata !DIExpression()), !dbg !3043
  %15 = udiv i64 9223372036854775807, %2, !dbg !3057
  %16 = icmp ult i64 %15, %14, !dbg !3057
  br i1 %16, label %19, label %17, !dbg !3059

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !221, metadata !DIExpression()), !dbg !3043
  store i64 %14, i64* %1, align 8, !dbg !3060, !tbaa !2080
  %18 = mul i64 %14, %2, !dbg !3061
  call void @llvm.dbg.value(metadata i8* %0, metadata !3001, metadata !DIExpression()) #10, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %28, metadata !3006, metadata !DIExpression()) #10, !dbg !3064
  br label %31, !dbg !3065

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3066
  unreachable, !dbg !3066

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3067
  %22 = icmp ugt i64 %21, %4, !dbg !3070
  br i1 %22, label %24, label %23, !dbg !3071

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3072
  unreachable, !dbg !3072

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3073
  %26 = add i64 %4, 1, !dbg !3074
  %27 = add i64 %26, %25, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %27, metadata !221, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %27, metadata !221, metadata !DIExpression()), !dbg !3043
  store i64 %27, i64* %1, align 8, !dbg !3060, !tbaa !2080
  %28 = mul i64 %27, %2, !dbg !3061
  call void @llvm.dbg.value(metadata i8* %0, metadata !3001, metadata !DIExpression()) #10, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %28, metadata !3006, metadata !DIExpression()) #10, !dbg !3064
  %29 = icmp eq i64 %28, 0, !dbg !3076
  br i1 %29, label %30, label %31, !dbg !3065

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3077
  br label %38, !dbg !3078

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %33, metadata !3001, metadata !DIExpression()) #10, !dbg !3062
  %34 = icmp eq i8* %33, null, !dbg !3080
  %35 = icmp ne i64 %32, 0, !dbg !3081
  %36 = and i1 %35, %34, !dbg !3082
  br i1 %36, label %37, label %38, !dbg !3082

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3083
  unreachable, !dbg !3083

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3084
  ret i8* %39, !dbg !3085
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3086 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %0, metadata !2961, metadata !DIExpression()) #10, !dbg !3090
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3092
  call void @llvm.dbg.value(metadata i8* %2, metadata !2967, metadata !DIExpression()) #10, !dbg !3093
  %3 = icmp eq i8* %2, null, !dbg !3094
  %4 = icmp ne i64 %0, 0, !dbg !3095
  %5 = and i1 %4, %3, !dbg !3096
  br i1 %5, label %6, label %7, !dbg !3096

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3097
  unreachable, !dbg !3097

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3098
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3099 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3103, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64* %1, metadata !3104, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %0, metadata !218, metadata !DIExpression()) #10, !dbg !3107
  call void @llvm.dbg.value(metadata i64* %1, metadata !219, metadata !DIExpression()) #10, !dbg !3109
  call void @llvm.dbg.value(metadata i64 1, metadata !220, metadata !DIExpression()) #10, !dbg !3110
  %3 = load i64, i64* %1, align 8, !dbg !3111, !tbaa !2080
  call void @llvm.dbg.value(metadata i64 %3, metadata !221, metadata !DIExpression()) #10, !dbg !3112
  %4 = icmp eq i8* %0, null, !dbg !3113
  br i1 %4, label %5, label %12, !dbg !3114

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3115
  br i1 %6, label %9, label %7, !dbg !3116

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !221, metadata !DIExpression()) #10, !dbg !3112
  %8 = icmp slt i64 %3, 0, !dbg !3117
  br i1 %8, label %11, label %9, !dbg !3118

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !221, metadata !DIExpression()) #10, !dbg !3112
  store i64 %10, i64* %1, align 8, !dbg !3119, !tbaa !2080
  call void @llvm.dbg.value(metadata i8* %0, metadata !3001, metadata !DIExpression()) #10, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %18, metadata !3006, metadata !DIExpression()) #10, !dbg !3122
  br label %21, !dbg !3123

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3124
  unreachable, !dbg !3124

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3125
  br i1 %13, label %15, label %14, !dbg !3126

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3127
  unreachable, !dbg !3127

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3128
  %17 = add i64 %3, 1, !dbg !3129
  %18 = add i64 %17, %16, !dbg !3130
  call void @llvm.dbg.value(metadata i64 %18, metadata !221, metadata !DIExpression()) #10, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %18, metadata !221, metadata !DIExpression()) #10, !dbg !3112
  store i64 %18, i64* %1, align 8, !dbg !3119, !tbaa !2080
  call void @llvm.dbg.value(metadata i8* %0, metadata !3001, metadata !DIExpression()) #10, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %18, metadata !3006, metadata !DIExpression()) #10, !dbg !3122
  %19 = icmp eq i64 %18, 0, !dbg !3131
  br i1 %19, label %20, label %21, !dbg !3123

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3132
  br label %28, !dbg !3133

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3134
  call void @llvm.dbg.value(metadata i8* %23, metadata !3001, metadata !DIExpression()) #10, !dbg !3120
  %24 = icmp eq i8* %23, null, !dbg !3135
  %25 = icmp ne i64 %22, 0, !dbg !3136
  %26 = and i1 %25, %24, !dbg !3137
  br i1 %26, label %27, label %28, !dbg !3137

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3138
  unreachable, !dbg !3138

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3139
  ret i8* %29, !dbg !3140
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3141 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3143, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %0, metadata !2961, metadata !DIExpression()) #10, !dbg !3145
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3147
  call void @llvm.dbg.value(metadata i8* %2, metadata !2967, metadata !DIExpression()) #10, !dbg !3148
  %3 = icmp eq i8* %2, null, !dbg !3149
  %4 = icmp ne i64 %0, 0, !dbg !3150
  %5 = and i1 %4, %3, !dbg !3151
  br i1 %5, label %6, label %7, !dbg !3151

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3152
  unreachable, !dbg !3152

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3153
  ret i8* %2, !dbg !3154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3155 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3157, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %1, metadata !3158, metadata !DIExpression()), !dbg !3161
  %3 = udiv i64 9223372036854775807, %1, !dbg !3162
  %4 = icmp ult i64 %3, %0, !dbg !3162
  br i1 %4, label %8, label %5, !dbg !3164

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3165
  call void @llvm.dbg.value(metadata i8* %6, metadata !3159, metadata !DIExpression()), !dbg !3166
  %7 = icmp eq i8* %6, null, !dbg !3167
  br i1 %7, label %8, label %9, !dbg !3168

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3169
  unreachable, !dbg !3169

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3170
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3171 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3177, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 %1, metadata !3178, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %1, metadata !2961, metadata !DIExpression()) #10, !dbg !3181
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %3, metadata !2967, metadata !DIExpression()) #10, !dbg !3184
  %4 = icmp eq i8* %3, null, !dbg !3185
  %5 = icmp ne i64 %1, 0, !dbg !3186
  %6 = and i1 %5, %4, !dbg !3187
  br i1 %6, label %7, label %8, !dbg !3187

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3188
  unreachable, !dbg !3188

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3189
  ret i8* %3, !dbg !3190
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3191 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3193, metadata !DIExpression()), !dbg !3194
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3195
  %3 = add i64 %2, 1, !dbg !3196
  call void @llvm.dbg.value(metadata i8* %0, metadata !3177, metadata !DIExpression()) #10, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %3, metadata !3178, metadata !DIExpression()) #10, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %3, metadata !2961, metadata !DIExpression()) #10, !dbg !3200
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3202
  call void @llvm.dbg.value(metadata i8* %4, metadata !2967, metadata !DIExpression()) #10, !dbg !3203
  %5 = icmp eq i8* %4, null, !dbg !3204
  %6 = icmp ne i64 %3, 0, !dbg !3205
  %7 = and i1 %6, %5, !dbg !3206
  br i1 %7, label %8, label %9, !dbg !3206

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3207
  unreachable, !dbg !3207

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3208
  ret i8* %4, !dbg !3209
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3210 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3212, !tbaa !675
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.115, i64 0, i64 0), i32 5) #10, !dbg !3213
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i64 0, i64 0), i8* %2) #10, !dbg !3214
  tail call void @abort() #15, !dbg !3215
  unreachable, !dbg !3215
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3216 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3219, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i64 %1, metadata !3220, metadata !DIExpression()), !dbg !3226
  %3 = icmp eq i64 %0, 0, !dbg !3227
  %4 = icmp eq i64 %1, 0, !dbg !3228
  %5 = or i1 %3, %4, !dbg !3229
  br i1 %5, label %12, label %6, !dbg !3229

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3230
  call void @llvm.dbg.value(metadata i64 %7, metadata !3222, metadata !DIExpression()), !dbg !3231
  %8 = udiv i64 %7, %1, !dbg !3232
  %9 = icmp eq i64 %8, %0, !dbg !3234
  br i1 %9, label %12, label %10, !dbg !3235

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #16, !dbg !3236
  store i32 12, i32* %11, align 4, !dbg !3238, !tbaa !675
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3219, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i64 %13, metadata !3220, metadata !DIExpression()), !dbg !3226
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3239
  call void @llvm.dbg.value(metadata i8* %15, metadata !3221, metadata !DIExpression()), !dbg !3240
  br label %16, !dbg !3241

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3242
  ret i8* %17, !dbg !3243
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3244 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3261, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i8* %1, metadata !3262, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %2, metadata !3263, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3264, metadata !DIExpression()), !dbg !3273
  %6 = bitcast i32* %5 to i8*, !dbg !3274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3274
  %7 = icmp eq i32* %0, null, !dbg !3275
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3277
  call void @llvm.dbg.value(metadata i32* %8, metadata !3261, metadata !DIExpression()), !dbg !3270
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3278
  call void @llvm.dbg.value(metadata i64 %9, metadata !3265, metadata !DIExpression()), !dbg !3279
  %10 = icmp ugt i64 %9, -3, !dbg !3280
  %11 = icmp ne i64 %2, 0, !dbg !3281
  %12 = and i1 %11, %10, !dbg !3282
  br i1 %12, label %13, label %18, !dbg !3282

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3283
  br i1 %14, label %18, label %15, !dbg !3284

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3285, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %16, metadata !3267, metadata !DIExpression()), !dbg !3286
  %17 = zext i8 %16 to i32, !dbg !3287
  store i32 %17, i32* %8, align 4, !dbg !3288, !tbaa !675
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3289
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3290
  ret i64 %19, !dbg !3290
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3291 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3330, metadata !DIExpression()), !dbg !3335
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3336
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3337, metadata !DIExpression()), !dbg !3340
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3342
  %4 = load i32, i32* %3, align 8, !dbg !3342, !tbaa !3343
  %5 = and i32 %4, 32, !dbg !3342
  %6 = icmp eq i32 %5, 0, !dbg !3344
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3345
  %8 = icmp ne i32 %7, 0, !dbg !3346
  br i1 %6, label %9, label %19, !dbg !3347

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3349
  %11 = xor i1 %8, true, !dbg !3350
  %12 = or i1 %10, %11, !dbg !3350
  %13 = sext i1 %8 to i32, !dbg !3350
  br i1 %12, label %22, label %14, !dbg !3350

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #16, !dbg !3351
  %16 = load i32, i32* %15, align 4, !dbg !3351, !tbaa !675
  %17 = icmp ne i32 %16, 9, !dbg !3352
  %18 = sext i1 %17 to i32, !dbg !3353
  br label %22, !dbg !3353

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3354

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #16, !dbg !3356
  store i32 0, i32* %21, align 4, !dbg !3358, !tbaa !675
  br label %22, !dbg !3356

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3359
  ret i32 %23, !dbg !3360
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3361 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3366, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 1, metadata !3367, metadata !DIExpression()), !dbg !3370
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %2, metadata !3368, metadata !DIExpression()), !dbg !3372
  %3 = icmp eq i8* %2, null, !dbg !3373
  br i1 %3, label %11, label %4, !dbg !3375

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i64 0, i64 0)) #14, !dbg !3376
  %6 = icmp eq i32 %5, 0, !dbg !3381
  br i1 %6, label %10, label %7, !dbg !3382

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i64 0, i64 0)) #14, !dbg !3383
  %9 = icmp eq i32 %8, 0, !dbg !3384
  br i1 %9, label %10, label %11, !dbg !3385

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3367, metadata !DIExpression()), !dbg !3370
  br label %11, !dbg !3386

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3387
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3388 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %1, metadata !3393, metadata !DIExpression()), !dbg !3395
  %2 = icmp eq i8* %1, null, !dbg !3396
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), i8* %1, !dbg !3398
  call void @llvm.dbg.value(metadata i8* %3, metadata !3393, metadata !DIExpression()), !dbg !3395
  %4 = load i8, i8* %3, align 1, !dbg !3399, !tbaa !830
  %5 = icmp eq i8 %4, 0, !dbg !3403
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.130, i64 0, i64 0), i8* %3, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %6, metadata !3393, metadata !DIExpression()), !dbg !3395
  ret i8* %6, !dbg !3405
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3406 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3445, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 0, metadata !3446, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i32 0, metadata !3448, metadata !DIExpression()), !dbg !3451
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3452
  call void @llvm.dbg.value(metadata i32 %2, metadata !3447, metadata !DIExpression()), !dbg !3453
  %3 = icmp slt i32 %2, 0, !dbg !3454
  br i1 %3, label %4, label %6, !dbg !3456

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3457
  br label %24, !dbg !3458

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3459
  %8 = icmp eq i32 %7, 0, !dbg !3459
  br i1 %8, label %13, label %9, !dbg !3461

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3462
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3463
  %12 = icmp eq i64 %11, -1, !dbg !3464
  br i1 %12, label %16, label %13, !dbg !3465

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3466
  %15 = icmp eq i32 %14, 0, !dbg !3466
  br i1 %15, label %16, label %18, !dbg !3467

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3446, metadata !DIExpression()), !dbg !3450
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3468
  call void @llvm.dbg.value(metadata i32 %21, metadata !3448, metadata !DIExpression()), !dbg !3451
  br label %24, !dbg !3469

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #16, !dbg !3470
  %20 = load i32, i32* %19, align 4, !dbg !3470, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %20, metadata !3446, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i32 %20, metadata !3446, metadata !DIExpression()), !dbg !3450
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3468
  call void @llvm.dbg.value(metadata i32 %21, metadata !3448, metadata !DIExpression()), !dbg !3451
  %22 = icmp eq i32 %20, 0, !dbg !3471
  br i1 %22, label %24, label %23, !dbg !3469

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3473, !tbaa !675
  call void @llvm.dbg.value(metadata i32 -1, metadata !3448, metadata !DIExpression()), !dbg !3451
  br label %24, !dbg !3475

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3476
  ret i32 %25, !dbg !3477
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3478 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3517, metadata !DIExpression()), !dbg !3518
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3519
  br i1 %2, label %6, label %3, !dbg !3521

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3522
  %5 = icmp eq i32 %4, 0, !dbg !3522
  br i1 %5, label %6, label %8, !dbg !3523

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3524
  br label %17, !dbg !3525

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3526, metadata !DIExpression()) #10, !dbg !3531
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3533
  %10 = load i32, i32* %9, align 8, !dbg !3533, !tbaa !3343
  %11 = and i32 %10, 256, !dbg !3535
  %12 = icmp eq i32 %11, 0, !dbg !3535
  br i1 %12, label %15, label %13, !dbg !3536

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3537
  br label %15, !dbg !3537

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3538
  br label %17, !dbg !3539

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3540
  ret i32 %18, !dbg !3541
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3542 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3582, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %1, metadata !3583, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %2, metadata !3584, metadata !DIExpression()), !dbg !3590
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3591
  %5 = load i8*, i8** %4, align 8, !dbg !3591, !tbaa !3592
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3593
  %7 = load i8*, i8** %6, align 8, !dbg !3593, !tbaa !3594
  %8 = icmp eq i8* %5, %7, !dbg !3595
  br i1 %8, label %9, label %28, !dbg !3596

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3597
  %11 = load i8*, i8** %10, align 8, !dbg !3597, !tbaa !824
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3598
  %13 = load i8*, i8** %12, align 8, !dbg !3598, !tbaa !3599
  %14 = icmp eq i8* %11, %13, !dbg !3600
  br i1 %14, label %15, label %28, !dbg !3601

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3602
  %17 = load i8*, i8** %16, align 8, !dbg !3602, !tbaa !3603
  %18 = icmp eq i8* %17, null, !dbg !3604
  br i1 %18, label %19, label %28, !dbg !3605

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3606
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3607
  call void @llvm.dbg.value(metadata i64 %21, metadata !3585, metadata !DIExpression()), !dbg !3608
  %22 = icmp eq i64 %21, -1, !dbg !3609
  br i1 %22, label %30, label %23, !dbg !3611

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3612
  %25 = load i32, i32* %24, align 8, !dbg !3613, !tbaa !3343
  %26 = and i32 %25, -17, !dbg !3613
  store i32 %26, i32* %24, align 8, !dbg !3613, !tbaa !3343
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3614
  store i64 %21, i64* %27, align 8, !dbg !3615, !tbaa !3616
  br label %30, !dbg !3617

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3618
  br label %30, !dbg !3619

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3620
  ret i32 %31, !dbg !3621
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
attributes #16 = { nounwind readnone }
attributes #17 = { cold }

!llvm.dbg.cu = !{!2, !77, !82, !87, !95, !102, !109, !200, !193, !208, !225, !227, !229, !232, !234, !236, !625, !627, !629}
!llvm.ident = !{!631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631}
!llvm.module.flags = !{!632, !633, !634, !635, !636}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arch_long_options", scope: !2, file: !3, line: 107, type: !71, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/uname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!11, !0, !49, !63}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "unknown", scope: !13, file: !3, line: 262, type: !46, isLocal: true, isDefinition: true)
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 260, type: !14, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !18)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16, !17}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!18 = !{!19, !20, !21, !23, !38, !43}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !3, line: 260, type: !16)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !3, line: 260, type: !17)
!21 = !DILocalVariable(name: "toprint", scope: !13, file: !3, line: 265, type: !22)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "name", scope: !24, file: !3, line: 284, type: !26)
!24 = distinct !DILexicalBlock(scope: !25, file: !3, line: 283, column: 5)
!25 = distinct !DILexicalBlock(scope: !13, file: !3, line: 280, column: 7)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !27, line: 48, size: 3120, elements: !28)
!27 = !DIFile(filename: "/usr/include/sys/utsname.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!28 = !{!29, !33, !34, !35, !36, !37}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !26, file: !27, line: 51, baseType: !30, size: 520)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 520, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 65)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !26, file: !27, line: 54, baseType: !30, size: 520, offset: 520)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !26, file: !27, line: 57, baseType: !30, size: 520, offset: 1040)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !26, file: !27, line: 59, baseType: !30, size: 520, offset: 1560)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !26, file: !27, line: 62, baseType: !30, size: 520, offset: 2080)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !26, file: !27, line: 67, baseType: !30, size: 520, offset: 2600)
!38 = !DILocalVariable(name: "element", scope: !39, file: !3, line: 303, type: !41)
!39 = distinct !DILexicalBlock(scope: !40, file: !3, line: 302, column: 5)
!40 = distinct !DILexicalBlock(scope: !13, file: !3, line: 301, column: 7)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!43 = !DILocalVariable(name: "element", scope: !44, file: !3, line: 347, type: !41)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 346, column: 5)
!45 = distinct !DILexicalBlock(scope: !13, file: !3, line: 345, column: 7)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 8)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "uname_long_options", scope: !2, file: !3, line: 89, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 3584, elements: !61)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !54, line: 50, size: 256, elements: !55)
!54 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!55 = !{!56, !57, !58, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !54, line: 52, baseType: !41, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !53, file: !54, line: 55, baseType: !16, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !53, file: !54, line: 56, baseType: !59, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !53, file: !54, line: 57, baseType: !16, size: 32, offset: 192)
!61 = !{!62}
!62 = !DISubrange(count: 14)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "printed", scope: !65, file: !3, line: 163, type: !70, isLocal: true, isDefinition: true)
!65 = distinct !DISubprogram(name: "print_element", scope: !3, file: !3, line: 161, type: !66, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !68)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !41}
!68 = !{!69}
!69 = !DILocalVariable(name: "element", arg: 1, scope: !65, file: !3, line: 161, type: !41)
!70 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 768, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 3)
!74 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "uname_mode", scope: !77, file: !78, line: 2, type: !16, isLocal: false, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !79)
!78 = !DIFile(filename: "src/uname-uname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!79 = !{!75}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "Version", scope: !82, file: !83, line: 2, type: !41, isLocal: false, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !84)
!83 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!84 = !{!80}
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "file_name", scope: !87, file: !92, line: 46, type: !41, isLocal: true, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !89)
!88 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!89 = !{!85, !90}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !87, file: !92, line: 56, type: !70, isLocal: true, isDefinition: true)
!92 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "exit_failure", scope: !95, file: !98, line: 24, type: !99, isLocal: false, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !97)
!96 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!97 = !{!93}
!98 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!99 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "program_name", scope: !102, file: !106, line: 33, type: !41, isLocal: false, isDefinition: true)
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !104, globals: !105)
!103 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!104 = !{!8, !6}
!105 = !{!100}
!106 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !109, file: !154, line: 85, type: !187, isLocal: false, isDefinition: true)
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !111, retainedTypes: !146, globals: !151)
!110 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!111 = !{!112, !126, !131}
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !113, line: 32, baseType: !22, size: 32, elements: !114)
!113 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!115 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!119 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!121 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!122 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!123 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!124 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!125 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !113, line: 242, baseType: !22, size: 32, elements: !127)
!127 = !{!128, !129, !130}
!128 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!129 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!130 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !132, line: 46, baseType: !22, size: 32, elements: !133)
!132 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!134 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!135 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!136 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!137 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!138 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!139 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!140 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!141 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!142 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!143 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!144 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!145 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!146 = !{!16, !147, !148, !6}
!147 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !149, line: 62, baseType: !150)
!149 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!150 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!151 = !{!107, !152, !159, !169, !171, !176, !183, !185}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !109, file: !154, line: 101, type: !155, isLocal: false, isDefinition: true)
!154 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 320, elements: !157)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!157 = !{!158}
!158 = !DISubrange(count: 10)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !109, file: !154, line: 1052, type: !161, isLocal: false, isDefinition: true)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !154, line: 65, size: 448, elements: !162)
!162 = !{!163, !164, !165, !167, !168}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !161, file: !154, line: 68, baseType: !112, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !154, line: 71, baseType: !16, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !161, file: !154, line: 75, baseType: !166, size: 256, offset: 64)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !47)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !161, file: !154, line: 78, baseType: !41, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !161, file: !154, line: 81, baseType: !41, size: 64, offset: 384)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !109, file: !154, line: 116, type: !161, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "slot0", scope: !109, file: !154, line: 842, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 256)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "slotvec", scope: !109, file: !154, line: 845, type: !178, isLocal: true, isDefinition: true)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !154, line: 834, size: 128, elements: !180)
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !179, file: !154, line: 836, baseType: !148, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !179, file: !154, line: 837, baseType: !6, size: 64, offset: 64)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "nslots", scope: !109, file: !154, line: 843, type: !16, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "slotvec0", scope: !109, file: !154, line: 844, type: !179, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 704, elements: !189)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!189 = !{!190}
!190 = !DISubrange(count: 11)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !193, file: !196, line: 26, type: !197, isLocal: false, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !195)
!194 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!195 = !{!191}
!196 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 376, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 47)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !202, retainedTypes: !207)
!201 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!202 = !{!203}
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !204, line: 41, baseType: !22, size: 32, elements: !205)
!204 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!205 = !{!206}
!206 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!207 = !{!8}
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !210, retainedTypes: !224)
!209 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!210 = !{!211}
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !213, file: !212, line: 186, baseType: !22, size: 32, elements: !222)
!212 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!213 = distinct !DISubprogram(name: "x2nrealloc", scope: !212, file: !212, line: 174, type: !214, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !217)
!214 = !DISubroutineType(types: !215)
!215 = !{!8, !8, !216, !148}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!217 = !{!218, !219, !220, !221}
!218 = !DILocalVariable(name: "p", arg: 1, scope: !213, file: !212, line: 174, type: !8)
!219 = !DILocalVariable(name: "pn", arg: 2, scope: !213, file: !212, line: 174, type: !216)
!220 = !DILocalVariable(name: "s", arg: 3, scope: !213, file: !212, line: 174, type: !148)
!221 = !DILocalVariable(name: "n", scope: !213, file: !212, line: 176, type: !148)
!222 = !{!223}
!223 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!224 = !{!148, !6, !8}
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!226 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !207)
!228 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !231)
!230 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!231 = !{!148}
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!233 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!235 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !238, retainedTypes: !207)
!237 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!238 = !{!239}
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !240, line: 41, baseType: !22, size: 32, elements: !241)
!240 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!242 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!243 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!244 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!245 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!246 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!247 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!248 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!249 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!250 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!251 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!252 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!253 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!254 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!255 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!256 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!257 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!258 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!259 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!260 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!261 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!262 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!263 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!264 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!265 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!266 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!267 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!268 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!269 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!270 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!271 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!272 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!273 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!274 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!275 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!276 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!277 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!278 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!279 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!280 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!281 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!282 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!283 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!284 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!285 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!286 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!287 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!288 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!289 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!290 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!291 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!350 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!353 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!354 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!355 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!356 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!357 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!358 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!359 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!360 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!361 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!362 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!363 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!364 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!437 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!510 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!511 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!512 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!513 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!514 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!515 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!516 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!517 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!518 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!519 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!520 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!521 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!522 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!523 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!524 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!526 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!527 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!528 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!529 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!530 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!531 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!557 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!558 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!559 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!560 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!561 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!566 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!567 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!568 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!569 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!625 = distinct !DICompileUnit(language: DW_LANG_C99, file: !626, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!626 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !207)
!628 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!629 = distinct !DICompileUnit(language: DW_LANG_C99, file: !630, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !207)
!630 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!631 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!632 = !{i32 2, !"Dwarf Version", i32 4}
!633 = !{i32 2, !"Debug Info Version", i32 3}
!634 = !{i32 1, !"wchar_size", i32 4}
!635 = !{i32 7, !"PIC Level", i32 2}
!636 = !{i32 7, !"PIE Level", i32 2}
!637 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 115, type: !638, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !16}
!640 = !{!641}
!641 = !DILocalVariable(name: "status", arg: 1, scope: !637, file: !3, line: 115, type: !16)
!642 = !DILocalVariable(name: "infomap", scope: !643, file: !644, line: 632, type: !656)
!643 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !644, file: !644, line: 630, type: !66, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !645)
!644 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!645 = !{!646, !642, !647, !648, !655}
!646 = !DILocalVariable(name: "program", arg: 1, scope: !643, file: !644, line: 630, type: !41)
!647 = !DILocalVariable(name: "node", scope: !643, file: !644, line: 642, type: !41)
!648 = !DILocalVariable(name: "map_prog", scope: !643, file: !644, line: 643, type: !649)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !643, file: !644, line: 632, size: 128, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !651, file: !644, line: 632, baseType: !41, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !651, file: !644, line: 632, baseType: !41, size: 64, offset: 64)
!655 = !DILocalVariable(name: "lc_messages", scope: !643, file: !644, line: 655, type: !41)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 896, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 7)
!659 = !DILocation(line: 632, column: 67, scope: !643, inlinedAt: !660)
!660 = distinct !DILocation(line: 152, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 120, column: 5)
!662 = distinct !DILexicalBlock(scope: !637, file: !3, line: 117, column: 7)
!663 = !DILocation(line: 115, column: 12, scope: !637)
!664 = !DILocation(line: 117, column: 14, scope: !662)
!665 = !DILocation(line: 117, column: 7, scope: !637)
!666 = !DILocation(line: 118, column: 5, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !3, line: 118, column: 5)
!668 = !{!669, !669, i64 0}
!669 = !{!"any pointer", !670, i64 0}
!670 = !{!"omnipotent char", !671, i64 0}
!671 = !{!"Simple C/C++ TBAA"}
!672 = !DILocation(line: 121, column: 7, scope: !661)
!673 = !DILocation(line: 123, column: 11, scope: !674)
!674 = distinct !DILexicalBlock(scope: !661, file: !3, line: 123, column: 11)
!675 = !{!676, !676, i64 0}
!676 = !{!"int", !670, i64 0}
!677 = !DILocation(line: 123, column: 22, scope: !674)
!678 = !DILocation(line: 123, column: 11, scope: !661)
!679 = !DILocation(line: 125, column: 11, scope: !680)
!680 = distinct !DILexicalBlock(scope: !674, file: !3, line: 124, column: 9)
!681 = !DILocation(line: 134, column: 11, scope: !680)
!682 = !DILocation(line: 141, column: 9, scope: !680)
!683 = !DILocation(line: 144, column: 11, scope: !684)
!684 = distinct !DILexicalBlock(scope: !674, file: !3, line: 143, column: 9)
!685 = !DILocation(line: 150, column: 7, scope: !661)
!686 = !DILocation(line: 151, column: 7, scope: !661)
!687 = !DILocation(line: 152, column: 28, scope: !661)
!688 = !DILocation(line: 630, column: 34, scope: !643, inlinedAt: !660)
!689 = !DILocation(line: 632, column: 3, scope: !643, inlinedAt: !660)
!690 = !DILocation(line: 642, column: 15, scope: !643, inlinedAt: !660)
!691 = !DILocation(line: 643, column: 36, scope: !643, inlinedAt: !660)
!692 = !DILocation(line: 643, column: 25, scope: !643, inlinedAt: !660)
!693 = !DILocation(line: 645, column: 33, scope: !643, inlinedAt: !660)
!694 = !DILocation(line: 645, column: 3, scope: !643, inlinedAt: !660)
!695 = !DILocation(line: 646, column: 13, scope: !643, inlinedAt: !660)
!696 = !DILocation(line: 645, column: 20, scope: !643, inlinedAt: !660)
!697 = !{!698, !669, i64 0}
!698 = !{!"infomap", !669, i64 0, !669, i64 8}
!699 = !DILocation(line: 645, column: 10, scope: !643, inlinedAt: !660)
!700 = !DILocation(line: 645, column: 28, scope: !643, inlinedAt: !660)
!701 = distinct !{!701, !702, !703}
!702 = !DILocation(line: 645, column: 3, scope: !643)
!703 = !DILocation(line: 646, column: 13, scope: !643)
!704 = !DILocation(line: 648, column: 17, scope: !705, inlinedAt: !660)
!705 = distinct !DILexicalBlock(scope: !643, file: !644, line: 648, column: 7)
!706 = !{!698, !669, i64 8}
!707 = !DILocation(line: 648, column: 7, scope: !705, inlinedAt: !660)
!708 = !DILocation(line: 648, column: 7, scope: !643, inlinedAt: !660)
!709 = !DILocation(line: 651, column: 3, scope: !643, inlinedAt: !660)
!710 = !DILocation(line: 655, column: 29, scope: !643, inlinedAt: !660)
!711 = !DILocation(line: 655, column: 15, scope: !643, inlinedAt: !660)
!712 = !DILocation(line: 656, column: 7, scope: !713, inlinedAt: !660)
!713 = distinct !DILexicalBlock(scope: !643, file: !644, line: 656, column: 7)
!714 = !DILocation(line: 656, column: 19, scope: !713, inlinedAt: !660)
!715 = !DILocation(line: 656, column: 22, scope: !713, inlinedAt: !660)
!716 = !DILocation(line: 656, column: 7, scope: !643, inlinedAt: !660)
!717 = !DILocation(line: 662, column: 7, scope: !718, inlinedAt: !660)
!718 = distinct !DILexicalBlock(scope: !713, file: !644, line: 657, column: 5)
!719 = !DILocation(line: 664, column: 5, scope: !718, inlinedAt: !660)
!720 = !DILocation(line: 665, column: 3, scope: !643, inlinedAt: !660)
!721 = !DILocation(line: 667, column: 3, scope: !643, inlinedAt: !660)
!722 = !DILocation(line: 669, column: 1, scope: !643, inlinedAt: !660)
!723 = !DILocation(line: 154, column: 3, scope: !637)
!724 = !DILocation(line: 260, column: 11, scope: !13)
!725 = !DILocation(line: 260, column: 24, scope: !13)
!726 = !DILocation(line: 265, column: 16, scope: !13)
!727 = !DILocation(line: 268, column: 21, scope: !13)
!728 = !DILocation(line: 268, column: 3, scope: !13)
!729 = !DILocation(line: 269, column: 3, scope: !13)
!730 = !DILocation(line: 270, column: 3, scope: !13)
!731 = !DILocation(line: 271, column: 3, scope: !13)
!732 = !DILocation(line: 273, column: 3, scope: !13)
!733 = !DILocalVariable(name: "argc", arg: 1, scope: !734, file: !3, line: 175, type: !16)
!734 = distinct !DISubprogram(name: "decode_switches", scope: !3, file: !3, line: 175, type: !14, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !735)
!735 = !{!733, !736, !737, !738}
!736 = !DILocalVariable(name: "argv", arg: 2, scope: !734, file: !3, line: 175, type: !17)
!737 = !DILocalVariable(name: "c", scope: !734, file: !3, line: 177, type: !16)
!738 = !DILocalVariable(name: "toprint", scope: !734, file: !3, line: 178, type: !22)
!739 = !DILocation(line: 175, column: 22, scope: !734, inlinedAt: !740)
!740 = distinct !DILocation(line: 275, column: 13, scope: !13)
!741 = !DILocation(line: 175, column: 35, scope: !734, inlinedAt: !740)
!742 = !DILocation(line: 178, column: 16, scope: !734, inlinedAt: !740)
!743 = !DILocation(line: 180, column: 7, scope: !744, inlinedAt: !740)
!744 = distinct !DILexicalBlock(scope: !734, file: !3, line: 180, column: 7)
!745 = !DILocation(line: 180, column: 18, scope: !744, inlinedAt: !740)
!746 = !DILocation(line: 180, column: 7, scope: !734, inlinedAt: !740)
!747 = !DILocation(line: 182, column: 19, scope: !748, inlinedAt: !740)
!748 = distinct !DILexicalBlock(scope: !744, file: !3, line: 181, column: 5)
!749 = !DILocation(line: 177, column: 7, scope: !734, inlinedAt: !740)
!750 = !DILocation(line: 182, column: 7, scope: !748, inlinedAt: !740)
!751 = !DILocation(line: 187, column: 13, scope: !752, inlinedAt: !740)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 186, column: 13)
!753 = distinct !DILexicalBlock(scope: !748, file: !3, line: 184, column: 9)
!754 = !DILocation(line: 189, column: 13, scope: !752, inlinedAt: !740)
!755 = !DILocation(line: 192, column: 15, scope: !752, inlinedAt: !740)
!756 = !DILocation(line: 0, scope: !757, inlinedAt: !740)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 203, column: 13)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 201, column: 9)
!759 = distinct !DILexicalBlock(scope: !744, file: !3, line: 198, column: 5)
!760 = !DILocation(line: 199, column: 19, scope: !759, inlinedAt: !740)
!761 = !DILocation(line: 199, column: 7, scope: !759, inlinedAt: !740)
!762 = !DILocation(line: 209, column: 23, scope: !757, inlinedAt: !740)
!763 = !DILocation(line: 210, column: 15, scope: !757, inlinedAt: !740)
!764 = !DILocation(line: 213, column: 23, scope: !757, inlinedAt: !740)
!765 = !DILocation(line: 214, column: 15, scope: !757, inlinedAt: !740)
!766 = !DILocation(line: 217, column: 23, scope: !757, inlinedAt: !740)
!767 = !DILocation(line: 218, column: 15, scope: !757, inlinedAt: !740)
!768 = !DILocation(line: 221, column: 23, scope: !757, inlinedAt: !740)
!769 = !DILocation(line: 222, column: 15, scope: !757, inlinedAt: !740)
!770 = !DILocation(line: 225, column: 23, scope: !757, inlinedAt: !740)
!771 = !DILocation(line: 226, column: 15, scope: !757, inlinedAt: !740)
!772 = !DILocation(line: 229, column: 23, scope: !757, inlinedAt: !740)
!773 = !DILocation(line: 230, column: 15, scope: !757, inlinedAt: !740)
!774 = !DILocation(line: 233, column: 23, scope: !757, inlinedAt: !740)
!775 = !DILocation(line: 234, column: 15, scope: !757, inlinedAt: !740)
!776 = !DILocation(line: 237, column: 23, scope: !757, inlinedAt: !740)
!777 = !DILocation(line: 238, column: 15, scope: !757, inlinedAt: !740)
!778 = distinct !{!778, !779, !780}
!779 = !DILocation(line: 199, column: 7, scope: !759)
!780 = !DILocation(line: 247, column: 9, scope: !759)
!781 = !DILocation(line: 240, column: 13, scope: !757, inlinedAt: !740)
!782 = !DILocation(line: 242, column: 13, scope: !757, inlinedAt: !740)
!783 = !DILocation(line: 245, column: 15, scope: !757, inlinedAt: !740)
!784 = !DILocation(line: 0, scope: !734, inlinedAt: !740)
!785 = !DILocation(line: 250, column: 15, scope: !786, inlinedAt: !740)
!786 = distinct !DILexicalBlock(scope: !734, file: !3, line: 250, column: 7)
!787 = !DILocation(line: 250, column: 12, scope: !786, inlinedAt: !740)
!788 = !DILocation(line: 250, column: 7, scope: !734, inlinedAt: !740)
!789 = !DILocation(line: 252, column: 20, scope: !790, inlinedAt: !740)
!790 = distinct !DILexicalBlock(scope: !786, file: !3, line: 251, column: 5)
!791 = !DILocation(line: 252, column: 55, scope: !790, inlinedAt: !740)
!792 = !DILocation(line: 252, column: 50, scope: !790, inlinedAt: !740)
!793 = !DILocation(line: 252, column: 43, scope: !790, inlinedAt: !740)
!794 = !DILocation(line: 252, column: 7, scope: !790, inlinedAt: !740)
!795 = !DILocation(line: 253, column: 7, scope: !790, inlinedAt: !740)
!796 = !DILocation(line: 277, column: 15, scope: !797)
!797 = distinct !DILexicalBlock(scope: !13, file: !3, line: 277, column: 7)
!798 = !DILocation(line: 277, column: 7, scope: !13)
!799 = !DILocation(line: 281, column: 8, scope: !25)
!800 = !DILocation(line: 280, column: 7, scope: !13)
!801 = !DILocation(line: 284, column: 7, scope: !24)
!802 = !DILocation(line: 284, column: 22, scope: !24)
!803 = !DILocation(line: 286, column: 11, scope: !804)
!804 = distinct !DILexicalBlock(scope: !24, file: !3, line: 286, column: 11)
!805 = !DILocation(line: 286, column: 25, scope: !804)
!806 = !DILocation(line: 286, column: 11, scope: !24)
!807 = !DILocation(line: 287, column: 9, scope: !804)
!808 = !DILocation(line: 289, column: 19, scope: !809)
!809 = distinct !DILexicalBlock(scope: !24, file: !3, line: 289, column: 11)
!810 = !DILocation(line: 289, column: 11, scope: !24)
!811 = !DILocation(line: 161, column: 28, scope: !65, inlinedAt: !812)
!812 = distinct !DILocation(line: 290, column: 9, scope: !809)
!813 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !812)
!814 = !DILocalVariable(name: "__c", arg: 1, scope: !815, file: !816, line: 108, type: !16)
!815 = distinct !DISubprogram(name: "putchar_unlocked", scope: !816, file: !816, line: 108, type: !817, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !819)
!816 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!817 = !DISubroutineType(types: !818)
!818 = !{!16, !16}
!819 = !{!814}
!820 = !DILocation(line: 108, column: 23, scope: !815, inlinedAt: !821)
!821 = distinct !DILocation(line: 165, column: 5, scope: !822, inlinedAt: !812)
!822 = distinct !DILexicalBlock(scope: !65, file: !3, line: 164, column: 7)
!823 = !DILocation(line: 110, column: 10, scope: !815, inlinedAt: !821)
!824 = !{!825, !669, i64 40}
!825 = !{!"_IO_FILE", !676, i64 0, !669, i64 8, !669, i64 16, !669, i64 24, !669, i64 32, !669, i64 40, !669, i64 48, !669, i64 56, !669, i64 64, !669, i64 72, !669, i64 80, !669, i64 88, !669, i64 96, !669, i64 104, !676, i64 112, !676, i64 116, !826, i64 120, !827, i64 128, !670, i64 130, !670, i64 131, !669, i64 136, !826, i64 144, !669, i64 152, !669, i64 160, !669, i64 168, !669, i64 176, !826, i64 184, !676, i64 192, !670, i64 196}
!826 = !{!"long", !670, i64 0}
!827 = !{!"short", !670, i64 0}
!828 = !{!825, !669, i64 48}
!829 = !{!"branch_weights", i32 2000, i32 1}
!830 = !{!670, !670, i64 0}
!831 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !812)
!832 = !DILocation(line: 290, column: 9, scope: !809)
!833 = !DILocation(line: 291, column: 19, scope: !834)
!834 = distinct !DILexicalBlock(scope: !24, file: !3, line: 291, column: 11)
!835 = !DILocation(line: 291, column: 11, scope: !24)
!836 = !DILocation(line: 292, column: 24, scope: !834)
!837 = !DILocation(line: 161, column: 28, scope: !65, inlinedAt: !838)
!838 = distinct !DILocation(line: 292, column: 9, scope: !834)
!839 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !838)
!840 = !DILocation(line: 108, column: 23, scope: !815, inlinedAt: !841)
!841 = distinct !DILocation(line: 165, column: 5, scope: !822, inlinedAt: !838)
!842 = !DILocation(line: 110, column: 10, scope: !815, inlinedAt: !841)
!843 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !838)
!844 = !DILocation(line: 292, column: 9, scope: !834)
!845 = !DILocation(line: 293, column: 19, scope: !846)
!846 = distinct !DILexicalBlock(scope: !24, file: !3, line: 293, column: 11)
!847 = !DILocation(line: 293, column: 11, scope: !24)
!848 = !DILocation(line: 294, column: 24, scope: !846)
!849 = !DILocation(line: 161, column: 28, scope: !65, inlinedAt: !850)
!850 = distinct !DILocation(line: 294, column: 9, scope: !846)
!851 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !850)
!852 = !DILocation(line: 108, column: 23, scope: !815, inlinedAt: !853)
!853 = distinct !DILocation(line: 165, column: 5, scope: !822, inlinedAt: !850)
!854 = !DILocation(line: 110, column: 10, scope: !815, inlinedAt: !853)
!855 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !850)
!856 = !DILocation(line: 294, column: 9, scope: !846)
!857 = !DILocation(line: 295, column: 19, scope: !858)
!858 = distinct !DILexicalBlock(scope: !24, file: !3, line: 295, column: 11)
!859 = !DILocation(line: 295, column: 11, scope: !24)
!860 = !DILocation(line: 296, column: 24, scope: !858)
!861 = !DILocation(line: 161, column: 28, scope: !65, inlinedAt: !862)
!862 = distinct !DILocation(line: 296, column: 9, scope: !858)
!863 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !862)
!864 = !DILocation(line: 108, column: 23, scope: !815, inlinedAt: !865)
!865 = distinct !DILocation(line: 165, column: 5, scope: !822, inlinedAt: !862)
!866 = !DILocation(line: 110, column: 10, scope: !815, inlinedAt: !865)
!867 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !862)
!868 = !DILocation(line: 296, column: 9, scope: !858)
!869 = !DILocation(line: 297, column: 19, scope: !870)
!870 = distinct !DILexicalBlock(scope: !24, file: !3, line: 297, column: 11)
!871 = !DILocation(line: 297, column: 11, scope: !24)
!872 = !DILocation(line: 298, column: 24, scope: !870)
!873 = !DILocation(line: 161, column: 28, scope: !65, inlinedAt: !874)
!874 = distinct !DILocation(line: 298, column: 9, scope: !870)
!875 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !874)
!876 = !DILocation(line: 108, column: 23, scope: !815, inlinedAt: !877)
!877 = distinct !DILocation(line: 165, column: 5, scope: !822, inlinedAt: !874)
!878 = !DILocation(line: 110, column: 10, scope: !815, inlinedAt: !877)
!879 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !874)
!880 = !DILocation(line: 298, column: 9, scope: !870)
!881 = !DILocation(line: 299, column: 5, scope: !25)
!882 = !DILocation(line: 299, column: 5, scope: !24)
!883 = !DILocation(line: 301, column: 15, scope: !40)
!884 = !DILocation(line: 341, column: 22, scope: !885)
!885 = distinct !DILexicalBlock(scope: !39, file: !3, line: 341, column: 11)
!886 = !DILocation(line: 301, column: 7, scope: !13)
!887 = !DILocation(line: 161, column: 28, scope: !65, inlinedAt: !888)
!888 = distinct !DILocation(line: 342, column: 9, scope: !885)
!889 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !888)
!890 = !DILocation(line: 108, column: 23, scope: !815, inlinedAt: !891)
!891 = distinct !DILocation(line: 165, column: 5, scope: !822, inlinedAt: !888)
!892 = !DILocation(line: 110, column: 10, scope: !815, inlinedAt: !891)
!893 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !888)
!894 = !DILocation(line: 342, column: 9, scope: !885)
!895 = !DILocation(line: 345, column: 15, scope: !45)
!896 = !DILocation(line: 345, column: 7, scope: !13)
!897 = !DILocation(line: 161, column: 28, scope: !65, inlinedAt: !898)
!898 = distinct !DILocation(line: 367, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !44, file: !3, line: 366, column: 11)
!900 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !898)
!901 = !DILocation(line: 108, column: 23, scope: !815, inlinedAt: !902)
!902 = distinct !DILocation(line: 165, column: 5, scope: !822, inlinedAt: !898)
!903 = !DILocation(line: 110, column: 10, scope: !815, inlinedAt: !902)
!904 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !898)
!905 = !DILocation(line: 367, column: 9, scope: !899)
!906 = !DILocation(line: 370, column: 15, scope: !907)
!907 = distinct !DILexicalBlock(scope: !13, file: !3, line: 370, column: 7)
!908 = !DILocation(line: 370, column: 7, scope: !13)
!909 = !DILocation(line: 161, column: 28, scope: !65, inlinedAt: !910)
!910 = distinct !DILocation(line: 371, column: 5, scope: !907)
!911 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !910)
!912 = !DILocation(line: 108, column: 23, scope: !815, inlinedAt: !913)
!913 = distinct !DILocation(line: 165, column: 5, scope: !822, inlinedAt: !910)
!914 = !DILocation(line: 110, column: 10, scope: !815, inlinedAt: !913)
!915 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !910)
!916 = !DILocation(line: 371, column: 5, scope: !907)
!917 = !DILocation(line: 108, column: 23, scope: !815, inlinedAt: !918)
!918 = distinct !DILocation(line: 373, column: 3, scope: !13)
!919 = !DILocation(line: 110, column: 10, scope: !815, inlinedAt: !918)
!920 = !DILocation(line: 375, column: 3, scope: !13)
!921 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !92, file: !92, line: 51, type: !66, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !922)
!922 = !{!923}
!923 = !DILocalVariable(name: "file", arg: 1, scope: !921, file: !92, line: 51, type: !41)
!924 = !DILocation(line: 51, column: 41, scope: !921)
!925 = !DILocation(line: 53, column: 13, scope: !921)
!926 = !DILocation(line: 54, column: 1, scope: !921)
!927 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !92, file: !92, line: 88, type: !928, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !70}
!930 = !{!931}
!931 = !DILocalVariable(name: "ignore", arg: 1, scope: !927, file: !92, line: 88, type: !70)
!932 = !DILocation(line: 88, column: 37, scope: !927)
!933 = !DILocation(line: 90, column: 16, scope: !927)
!934 = !{!935, !935, i64 0}
!935 = !{!"_Bool", !670, i64 0}
!936 = !DILocation(line: 91, column: 1, scope: !927)
!937 = distinct !DISubprogram(name: "close_stdout", scope: !92, file: !92, line: 117, type: !938, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{null}
!940 = !{!941}
!941 = !DILocalVariable(name: "write_error", scope: !942, file: !92, line: 122, type: !41)
!942 = distinct !DILexicalBlock(scope: !943, file: !92, line: 121, column: 5)
!943 = distinct !DILexicalBlock(scope: !937, file: !92, line: 119, column: 7)
!944 = !DILocation(line: 119, column: 21, scope: !943)
!945 = !DILocation(line: 119, column: 7, scope: !943)
!946 = !DILocation(line: 119, column: 29, scope: !943)
!947 = !DILocation(line: 120, column: 7, scope: !943)
!948 = !DILocation(line: 120, column: 12, scope: !943)
!949 = !{i8 0, i8 2}
!950 = !DILocation(line: 120, column: 25, scope: !943)
!951 = !DILocation(line: 120, column: 28, scope: !943)
!952 = !DILocation(line: 120, column: 34, scope: !943)
!953 = !DILocation(line: 119, column: 7, scope: !937)
!954 = !DILocation(line: 122, column: 33, scope: !942)
!955 = !DILocation(line: 122, column: 19, scope: !942)
!956 = !DILocation(line: 123, column: 11, scope: !957)
!957 = distinct !DILexicalBlock(scope: !942, file: !92, line: 123, column: 11)
!958 = !DILocation(line: 0, scope: !957)
!959 = !DILocation(line: 123, column: 11, scope: !942)
!960 = !DILocation(line: 124, column: 36, scope: !957)
!961 = !DILocation(line: 124, column: 9, scope: !957)
!962 = !DILocation(line: 127, column: 9, scope: !957)
!963 = !DILocation(line: 129, column: 14, scope: !942)
!964 = !DILocation(line: 129, column: 7, scope: !942)
!965 = !DILocation(line: 134, column: 42, scope: !966)
!966 = distinct !DILexicalBlock(scope: !937, file: !92, line: 134, column: 7)
!967 = !DILocation(line: 134, column: 28, scope: !966)
!968 = !DILocation(line: 134, column: 50, scope: !966)
!969 = !DILocation(line: 134, column: 7, scope: !937)
!970 = !DILocation(line: 135, column: 12, scope: !966)
!971 = !DILocation(line: 135, column: 5, scope: !966)
!972 = !DILocation(line: 136, column: 1, scope: !937)
!973 = distinct !DISubprogram(name: "set_program_name", scope: !106, file: !106, line: 39, type: !66, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !974)
!974 = !{!975, !976, !977}
!975 = !DILocalVariable(name: "argv0", arg: 1, scope: !973, file: !106, line: 39, type: !41)
!976 = !DILocalVariable(name: "slash", scope: !973, file: !106, line: 46, type: !41)
!977 = !DILocalVariable(name: "base", scope: !973, file: !106, line: 47, type: !41)
!978 = !DILocation(line: 39, column: 31, scope: !973)
!979 = !DILocation(line: 51, column: 13, scope: !980)
!980 = distinct !DILexicalBlock(scope: !973, file: !106, line: 51, column: 7)
!981 = !DILocation(line: 51, column: 7, scope: !973)
!982 = !DILocation(line: 55, column: 14, scope: !983)
!983 = distinct !DILexicalBlock(scope: !980, file: !106, line: 52, column: 5)
!984 = !DILocation(line: 54, column: 7, scope: !983)
!985 = !DILocation(line: 56, column: 7, scope: !983)
!986 = !DILocation(line: 59, column: 11, scope: !973)
!987 = !DILocation(line: 46, column: 15, scope: !973)
!988 = !DILocation(line: 60, column: 17, scope: !973)
!989 = !DILocation(line: 60, column: 33, scope: !973)
!990 = !DILocation(line: 60, column: 11, scope: !973)
!991 = !DILocation(line: 47, column: 15, scope: !973)
!992 = !DILocation(line: 61, column: 12, scope: !993)
!993 = distinct !DILexicalBlock(scope: !973, file: !106, line: 61, column: 7)
!994 = !DILocation(line: 61, column: 20, scope: !993)
!995 = !DILocation(line: 61, column: 25, scope: !993)
!996 = !DILocation(line: 61, column: 42, scope: !993)
!997 = !DILocation(line: 61, column: 28, scope: !993)
!998 = !DILocation(line: 61, column: 61, scope: !993)
!999 = !DILocation(line: 61, column: 7, scope: !973)
!1000 = !DILocation(line: 64, column: 11, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !106, line: 64, column: 11)
!1002 = distinct !DILexicalBlock(scope: !993, file: !106, line: 62, column: 5)
!1003 = !DILocation(line: 64, column: 36, scope: !1001)
!1004 = !DILocation(line: 64, column: 11, scope: !1002)
!1005 = !DILocation(line: 66, column: 24, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !106, line: 65, column: 9)
!1007 = !DILocation(line: 70, column: 41, scope: !1006)
!1008 = !DILocation(line: 72, column: 9, scope: !1006)
!1009 = !DILocation(line: 84, column: 16, scope: !973)
!1010 = !DILocation(line: 90, column: 27, scope: !973)
!1011 = !DILocation(line: 92, column: 1, scope: !973)
!1012 = distinct !DISubprogram(name: "clone_quoting_options", scope: !154, file: !154, line: 122, type: !1013, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1016)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!1015, !1015}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!1016 = !{!1017, !1018, !1019}
!1017 = !DILocalVariable(name: "o", arg: 1, scope: !1012, file: !154, line: 122, type: !1015)
!1018 = !DILocalVariable(name: "e", scope: !1012, file: !154, line: 124, type: !16)
!1019 = !DILocalVariable(name: "p", scope: !1012, file: !154, line: 125, type: !1015)
!1020 = !DILocation(line: 122, column: 48, scope: !1012)
!1021 = !DILocation(line: 124, column: 11, scope: !1012)
!1022 = !DILocation(line: 124, column: 7, scope: !1012)
!1023 = !DILocation(line: 125, column: 40, scope: !1012)
!1024 = !DILocation(line: 125, column: 31, scope: !1012)
!1025 = !DILocation(line: 125, column: 27, scope: !1012)
!1026 = !DILocation(line: 127, column: 9, scope: !1012)
!1027 = !DILocation(line: 128, column: 3, scope: !1012)
!1028 = distinct !DISubprogram(name: "get_quoting_style", scope: !154, file: !154, line: 133, type: !1029, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1033)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!112, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1033 = !{!1034}
!1034 = !DILocalVariable(name: "o", arg: 1, scope: !1028, file: !154, line: 133, type: !1031)
!1035 = !DILocation(line: 133, column: 50, scope: !1028)
!1036 = !DILocation(line: 135, column: 11, scope: !1028)
!1037 = !DILocation(line: 135, column: 46, scope: !1028)
!1038 = !{!1039, !670, i64 0}
!1039 = !{!"quoting_options", !670, i64 0, !676, i64 4, !670, i64 8, !669, i64 40, !669, i64 48}
!1040 = !DILocation(line: 135, column: 3, scope: !1028)
!1041 = distinct !DISubprogram(name: "set_quoting_style", scope: !154, file: !154, line: 141, type: !1042, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !1015, !112}
!1044 = !{!1045, !1046}
!1045 = !DILocalVariable(name: "o", arg: 1, scope: !1041, file: !154, line: 141, type: !1015)
!1046 = !DILocalVariable(name: "s", arg: 2, scope: !1041, file: !154, line: 141, type: !112)
!1047 = !DILocation(line: 141, column: 44, scope: !1041)
!1048 = !DILocation(line: 141, column: 66, scope: !1041)
!1049 = !DILocation(line: 143, column: 4, scope: !1041)
!1050 = !DILocation(line: 143, column: 39, scope: !1041)
!1051 = !DILocation(line: 143, column: 45, scope: !1041)
!1052 = !DILocation(line: 144, column: 1, scope: !1041)
!1053 = distinct !DISubprogram(name: "set_char_quoting", scope: !154, file: !154, line: 152, type: !1054, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!16, !1015, !7, !16}
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1063, !1064}
!1057 = !DILocalVariable(name: "o", arg: 1, scope: !1053, file: !154, line: 152, type: !1015)
!1058 = !DILocalVariable(name: "c", arg: 2, scope: !1053, file: !154, line: 152, type: !7)
!1059 = !DILocalVariable(name: "i", arg: 3, scope: !1053, file: !154, line: 152, type: !16)
!1060 = !DILocalVariable(name: "uc", scope: !1053, file: !154, line: 154, type: !9)
!1061 = !DILocalVariable(name: "p", scope: !1053, file: !154, line: 155, type: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1063 = !DILocalVariable(name: "shift", scope: !1053, file: !154, line: 157, type: !16)
!1064 = !DILocalVariable(name: "r", scope: !1053, file: !154, line: 158, type: !16)
!1065 = !DILocation(line: 152, column: 43, scope: !1053)
!1066 = !DILocation(line: 152, column: 51, scope: !1053)
!1067 = !DILocation(line: 152, column: 58, scope: !1053)
!1068 = !DILocation(line: 154, column: 17, scope: !1053)
!1069 = !DILocation(line: 156, column: 6, scope: !1053)
!1070 = !DILocation(line: 156, column: 62, scope: !1053)
!1071 = !DILocation(line: 156, column: 57, scope: !1053)
!1072 = !DILocation(line: 155, column: 17, scope: !1053)
!1073 = !DILocation(line: 157, column: 15, scope: !1053)
!1074 = !DILocation(line: 157, column: 7, scope: !1053)
!1075 = !DILocation(line: 158, column: 12, scope: !1053)
!1076 = !DILocation(line: 158, column: 15, scope: !1053)
!1077 = !DILocation(line: 158, column: 25, scope: !1053)
!1078 = !DILocation(line: 158, column: 7, scope: !1053)
!1079 = !DILocation(line: 159, column: 13, scope: !1053)
!1080 = !DILocation(line: 159, column: 18, scope: !1053)
!1081 = !DILocation(line: 159, column: 23, scope: !1053)
!1082 = !DILocation(line: 159, column: 6, scope: !1053)
!1083 = !DILocation(line: 160, column: 3, scope: !1053)
!1084 = distinct !DISubprogram(name: "set_quoting_flags", scope: !154, file: !154, line: 168, type: !1085, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!16, !1015, !16}
!1087 = !{!1088, !1089, !1090}
!1088 = !DILocalVariable(name: "o", arg: 1, scope: !1084, file: !154, line: 168, type: !1015)
!1089 = !DILocalVariable(name: "i", arg: 2, scope: !1084, file: !154, line: 168, type: !16)
!1090 = !DILocalVariable(name: "r", scope: !1084, file: !154, line: 170, type: !16)
!1091 = !DILocation(line: 168, column: 44, scope: !1084)
!1092 = !DILocation(line: 168, column: 51, scope: !1084)
!1093 = !DILocation(line: 171, column: 8, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1084, file: !154, line: 171, column: 7)
!1095 = !DILocation(line: 171, column: 7, scope: !1084)
!1096 = !DILocation(line: 173, column: 10, scope: !1084)
!1097 = !{!1039, !676, i64 4}
!1098 = !DILocation(line: 170, column: 7, scope: !1084)
!1099 = !DILocation(line: 174, column: 12, scope: !1084)
!1100 = !DILocation(line: 175, column: 3, scope: !1084)
!1101 = distinct !DISubprogram(name: "set_custom_quoting", scope: !154, file: !154, line: 179, type: !1102, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !1015, !41, !41}
!1104 = !{!1105, !1106, !1107}
!1105 = !DILocalVariable(name: "o", arg: 1, scope: !1101, file: !154, line: 179, type: !1015)
!1106 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1101, file: !154, line: 180, type: !41)
!1107 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1101, file: !154, line: 180, type: !41)
!1108 = !DILocation(line: 179, column: 45, scope: !1101)
!1109 = !DILocation(line: 180, column: 33, scope: !1101)
!1110 = !DILocation(line: 180, column: 57, scope: !1101)
!1111 = !DILocation(line: 182, column: 8, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1101, file: !154, line: 182, column: 7)
!1113 = !DILocation(line: 182, column: 7, scope: !1101)
!1114 = !DILocation(line: 184, column: 6, scope: !1101)
!1115 = !DILocation(line: 184, column: 12, scope: !1101)
!1116 = !DILocation(line: 185, column: 8, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1101, file: !154, line: 185, column: 7)
!1118 = !DILocation(line: 185, column: 23, scope: !1117)
!1119 = !DILocation(line: 185, column: 19, scope: !1117)
!1120 = !DILocation(line: 186, column: 5, scope: !1117)
!1121 = !DILocation(line: 187, column: 6, scope: !1101)
!1122 = !DILocation(line: 187, column: 17, scope: !1101)
!1123 = !{!1039, !669, i64 40}
!1124 = !DILocation(line: 188, column: 6, scope: !1101)
!1125 = !DILocation(line: 188, column: 18, scope: !1101)
!1126 = !{!1039, !669, i64 48}
!1127 = !DILocation(line: 189, column: 1, scope: !1101)
!1128 = distinct !DISubprogram(name: "quotearg_buffer", scope: !154, file: !154, line: 784, type: !1129, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1131)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!148, !6, !148, !41, !148, !1031}
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1132 = !DILocalVariable(name: "buffer", arg: 1, scope: !1128, file: !154, line: 784, type: !6)
!1133 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1128, file: !154, line: 784, type: !148)
!1134 = !DILocalVariable(name: "arg", arg: 3, scope: !1128, file: !154, line: 785, type: !41)
!1135 = !DILocalVariable(name: "argsize", arg: 4, scope: !1128, file: !154, line: 785, type: !148)
!1136 = !DILocalVariable(name: "o", arg: 5, scope: !1128, file: !154, line: 786, type: !1031)
!1137 = !DILocalVariable(name: "p", scope: !1128, file: !154, line: 788, type: !1031)
!1138 = !DILocalVariable(name: "e", scope: !1128, file: !154, line: 789, type: !16)
!1139 = !DILocalVariable(name: "r", scope: !1128, file: !154, line: 790, type: !148)
!1140 = !DILocation(line: 784, column: 24, scope: !1128)
!1141 = !DILocation(line: 784, column: 39, scope: !1128)
!1142 = !DILocation(line: 785, column: 30, scope: !1128)
!1143 = !DILocation(line: 785, column: 42, scope: !1128)
!1144 = !DILocation(line: 786, column: 48, scope: !1128)
!1145 = !DILocation(line: 788, column: 37, scope: !1128)
!1146 = !DILocation(line: 788, column: 33, scope: !1128)
!1147 = !DILocation(line: 789, column: 11, scope: !1128)
!1148 = !DILocation(line: 789, column: 7, scope: !1128)
!1149 = !DILocation(line: 791, column: 43, scope: !1128)
!1150 = !DILocation(line: 791, column: 53, scope: !1128)
!1151 = !DILocation(line: 791, column: 60, scope: !1128)
!1152 = !DILocation(line: 792, column: 43, scope: !1128)
!1153 = !DILocation(line: 792, column: 58, scope: !1128)
!1154 = !DILocation(line: 790, column: 14, scope: !1128)
!1155 = !DILocation(line: 790, column: 10, scope: !1128)
!1156 = !DILocation(line: 793, column: 9, scope: !1128)
!1157 = !DILocation(line: 794, column: 3, scope: !1128)
!1158 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !154, file: !154, line: 256, type: !1159, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1163)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!148, !6, !148, !41, !148, !112, !16, !1161, !41, !41}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1188, !1189, !1190, !1191, !1192, !1195, !1196, !1214, !1217, !1218, !1225}
!1164 = !DILocalVariable(name: "buffer", arg: 1, scope: !1158, file: !154, line: 256, type: !6)
!1165 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1158, file: !154, line: 256, type: !148)
!1166 = !DILocalVariable(name: "arg", arg: 3, scope: !1158, file: !154, line: 257, type: !41)
!1167 = !DILocalVariable(name: "argsize", arg: 4, scope: !1158, file: !154, line: 257, type: !148)
!1168 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1158, file: !154, line: 258, type: !112)
!1169 = !DILocalVariable(name: "flags", arg: 6, scope: !1158, file: !154, line: 258, type: !16)
!1170 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1158, file: !154, line: 259, type: !1161)
!1171 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1158, file: !154, line: 260, type: !41)
!1172 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1158, file: !154, line: 261, type: !41)
!1173 = !DILocalVariable(name: "i", scope: !1158, file: !154, line: 263, type: !148)
!1174 = !DILocalVariable(name: "len", scope: !1158, file: !154, line: 264, type: !148)
!1175 = !DILocalVariable(name: "orig_buffersize", scope: !1158, file: !154, line: 265, type: !148)
!1176 = !DILocalVariable(name: "quote_string", scope: !1158, file: !154, line: 266, type: !41)
!1177 = !DILocalVariable(name: "quote_string_len", scope: !1158, file: !154, line: 267, type: !148)
!1178 = !DILocalVariable(name: "backslash_escapes", scope: !1158, file: !154, line: 268, type: !70)
!1179 = !DILocalVariable(name: "unibyte_locale", scope: !1158, file: !154, line: 269, type: !70)
!1180 = !DILocalVariable(name: "elide_outer_quotes", scope: !1158, file: !154, line: 270, type: !70)
!1181 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1158, file: !154, line: 271, type: !70)
!1182 = !DILocalVariable(name: "encountered_single_quote", scope: !1158, file: !154, line: 272, type: !70)
!1183 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1158, file: !154, line: 273, type: !70)
!1184 = !DILocalVariable(name: "c", scope: !1185, file: !154, line: 402, type: !9)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !154, line: 401, column: 5)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !154, line: 400, column: 3)
!1187 = distinct !DILexicalBlock(scope: !1158, file: !154, line: 400, column: 3)
!1188 = !DILocalVariable(name: "esc", scope: !1185, file: !154, line: 403, type: !9)
!1189 = !DILocalVariable(name: "is_right_quote", scope: !1185, file: !154, line: 404, type: !70)
!1190 = !DILocalVariable(name: "escaping", scope: !1185, file: !154, line: 405, type: !70)
!1191 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1185, file: !154, line: 406, type: !70)
!1192 = !DILocalVariable(name: "m", scope: !1193, file: !154, line: 610, type: !148)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !154, line: 608, column: 11)
!1194 = distinct !DILexicalBlock(scope: !1185, file: !154, line: 426, column: 9)
!1195 = !DILocalVariable(name: "printable", scope: !1193, file: !154, line: 612, type: !70)
!1196 = !DILocalVariable(name: "mbstate", scope: !1197, file: !154, line: 621, type: !1199)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !154, line: 620, column: 15)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !154, line: 614, column: 17)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1200, line: 6, baseType: !1201)
!1200 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1202, line: 21, baseType: !1203)
!1202 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1202, line: 13, size: 64, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1203, file: !1202, line: 15, baseType: !16, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1203, file: !1202, line: 20, baseType: !1207, size: 32, offset: 32)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !1202, line: 16, size: 32, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1207, file: !1202, line: 18, baseType: !22, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1207, file: !1202, line: 19, baseType: !1211, size: 32)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1212)
!1212 = !{!1213}
!1213 = !DISubrange(count: 4)
!1214 = !DILocalVariable(name: "w", scope: !1215, file: !154, line: 631, type: !1216)
!1215 = distinct !DILexicalBlock(scope: !1197, file: !154, line: 630, column: 19)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !149, line: 90, baseType: !16)
!1217 = !DILocalVariable(name: "bytes", scope: !1215, file: !154, line: 632, type: !148)
!1218 = !DILocalVariable(name: "j", scope: !1219, file: !154, line: 657, type: !148)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !154, line: 656, column: 27)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !154, line: 654, column: 29)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !154, line: 649, column: 23)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !154, line: 641, column: 30)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !154, line: 636, column: 30)
!1224 = distinct !DILexicalBlock(scope: !1215, file: !154, line: 634, column: 25)
!1225 = !DILocalVariable(name: "ilim", scope: !1226, file: !154, line: 684, type: !148)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !154, line: 681, column: 15)
!1227 = distinct !DILexicalBlock(scope: !1193, file: !154, line: 680, column: 17)
!1228 = !DILocation(line: 256, column: 33, scope: !1158)
!1229 = !DILocation(line: 256, column: 48, scope: !1158)
!1230 = !DILocation(line: 257, column: 39, scope: !1158)
!1231 = !DILocation(line: 257, column: 51, scope: !1158)
!1232 = !DILocation(line: 258, column: 46, scope: !1158)
!1233 = !DILocation(line: 258, column: 65, scope: !1158)
!1234 = !DILocation(line: 259, column: 47, scope: !1158)
!1235 = !DILocation(line: 260, column: 39, scope: !1158)
!1236 = !DILocation(line: 261, column: 39, scope: !1158)
!1237 = !DILocation(line: 264, column: 10, scope: !1158)
!1238 = !DILocation(line: 265, column: 10, scope: !1158)
!1239 = !DILocation(line: 266, column: 15, scope: !1158)
!1240 = !DILocation(line: 267, column: 10, scope: !1158)
!1241 = !DILocation(line: 268, column: 8, scope: !1158)
!1242 = !DILocation(line: 269, column: 25, scope: !1158)
!1243 = !DILocation(line: 269, column: 36, scope: !1158)
!1244 = !DILocation(line: 270, column: 8, scope: !1158)
!1245 = !DILocation(line: 271, column: 8, scope: !1158)
!1246 = !DILocation(line: 272, column: 8, scope: !1158)
!1247 = !DILocation(line: 273, column: 8, scope: !1158)
!1248 = !DILocation(line: 273, column: 3, scope: !1158)
!1249 = !DILocation(line: 0, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1158, file: !154, line: 317, column: 5)
!1251 = !DILocation(line: 316, column: 3, scope: !1158)
!1252 = !DILocation(line: 323, column: 11, scope: !1250)
!1253 = !DILocation(line: 323, column: 12, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !154, line: 323, column: 11)
!1255 = !DILocation(line: 324, column: 9, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !154, line: 324, column: 9)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !154, line: 324, column: 9)
!1258 = !DILocation(line: 324, column: 9, scope: !1257)
!1259 = !DILocation(line: 362, column: 26, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !154, line: 340, column: 11)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !154, line: 339, column: 13)
!1262 = distinct !DILexicalBlock(scope: !1250, file: !154, line: 338, column: 7)
!1263 = !DILocation(line: 363, column: 27, scope: !1260)
!1264 = !DILocation(line: 364, column: 11, scope: !1260)
!1265 = !DILocation(line: 365, column: 14, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !154, line: 365, column: 13)
!1267 = !DILocation(line: 365, column: 13, scope: !1262)
!1268 = !DILocation(line: 366, column: 43, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !154, line: 366, column: 11)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !154, line: 366, column: 11)
!1271 = !DILocation(line: 366, column: 11, scope: !1270)
!1272 = !DILocation(line: 367, column: 13, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !154, line: 367, column: 13)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !154, line: 367, column: 13)
!1275 = !DILocation(line: 367, column: 13, scope: !1274)
!1276 = !DILocation(line: 366, column: 70, scope: !1269)
!1277 = distinct !{!1277, !1271, !1278}
!1278 = !DILocation(line: 367, column: 13, scope: !1270)
!1279 = !DILocation(line: 370, column: 28, scope: !1262)
!1280 = !DILocation(line: 372, column: 7, scope: !1250)
!1281 = !DILocation(line: 376, column: 7, scope: !1250)
!1282 = !DILocation(line: 379, column: 7, scope: !1250)
!1283 = !DILocation(line: 381, column: 12, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1250, file: !154, line: 381, column: 11)
!1285 = !DILocation(line: 381, column: 11, scope: !1250)
!1286 = !DILocation(line: 0, scope: !1284)
!1287 = !DILocation(line: 386, column: 12, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1250, file: !154, line: 386, column: 11)
!1289 = !DILocation(line: 386, column: 11, scope: !1250)
!1290 = !DILocation(line: 387, column: 9, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !154, line: 387, column: 9)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !154, line: 387, column: 9)
!1293 = !DILocation(line: 387, column: 9, scope: !1292)
!1294 = !DILocation(line: 394, column: 7, scope: !1250)
!1295 = !DILocation(line: 397, column: 7, scope: !1250)
!1296 = !DILocation(line: 0, scope: !1158)
!1297 = !DILocation(line: 263, column: 10, scope: !1158)
!1298 = !DILocation(line: 400, column: 8, scope: !1187)
!1299 = !DILocation(line: 0, scope: !1186)
!1300 = !DILocation(line: 400, column: 27, scope: !1186)
!1301 = !DILocation(line: 400, column: 19, scope: !1186)
!1302 = !DILocation(line: 400, column: 41, scope: !1186)
!1303 = !DILocation(line: 400, column: 48, scope: !1186)
!1304 = !DILocation(line: 400, column: 3, scope: !1187)
!1305 = !DILocation(line: 400, column: 60, scope: !1186)
!1306 = !DILocation(line: 404, column: 12, scope: !1185)
!1307 = !DILocation(line: 405, column: 12, scope: !1185)
!1308 = !DILocation(line: 406, column: 12, scope: !1185)
!1309 = !DILocation(line: 409, column: 11, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1185, file: !154, line: 408, column: 11)
!1311 = !DILocation(line: 411, column: 17, scope: !1310)
!1312 = !DILocation(line: 412, column: 39, scope: !1310)
!1313 = !DILocation(line: 416, column: 32, scope: !1310)
!1314 = !DILocation(line: 412, column: 19, scope: !1310)
!1315 = !DILocation(line: 412, column: 15, scope: !1310)
!1316 = !DILocation(line: 417, column: 11, scope: !1310)
!1317 = !DILocation(line: 417, column: 26, scope: !1310)
!1318 = !DILocation(line: 417, column: 14, scope: !1310)
!1319 = !DILocation(line: 417, column: 63, scope: !1310)
!1320 = !DILocation(line: 408, column: 11, scope: !1185)
!1321 = !DILocation(line: 0, scope: !1185)
!1322 = !DILocation(line: 424, column: 11, scope: !1185)
!1323 = !DILocation(line: 402, column: 21, scope: !1185)
!1324 = !DILocation(line: 425, column: 7, scope: !1185)
!1325 = !DILocation(line: 428, column: 15, scope: !1194)
!1326 = !DILocation(line: 430, column: 15, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !154, line: 430, column: 15)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !154, line: 429, column: 13)
!1329 = distinct !DILexicalBlock(scope: !1194, file: !154, line: 428, column: 15)
!1330 = !DILocation(line: 430, column: 15, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !154, line: 430, column: 15)
!1332 = !DILocation(line: 430, column: 15, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !154, line: 430, column: 15)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !154, line: 430, column: 15)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !154, line: 430, column: 15)
!1336 = !DILocation(line: 430, column: 15, scope: !1334)
!1337 = !DILocation(line: 430, column: 15, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !154, line: 430, column: 15)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !154, line: 430, column: 15)
!1340 = !DILocation(line: 430, column: 15, scope: !1339)
!1341 = !DILocation(line: 430, column: 15, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !154, line: 430, column: 15)
!1343 = distinct !DILexicalBlock(scope: !1335, file: !154, line: 430, column: 15)
!1344 = !DILocation(line: 430, column: 15, scope: !1343)
!1345 = !DILocation(line: 430, column: 15, scope: !1335)
!1346 = !DILocation(line: 430, column: 15, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !154, line: 430, column: 15)
!1348 = distinct !DILexicalBlock(scope: !1327, file: !154, line: 430, column: 15)
!1349 = !DILocation(line: 430, column: 15, scope: !1348)
!1350 = !DILocation(line: 438, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1328, file: !154, line: 437, column: 19)
!1352 = !DILocation(line: 438, column: 24, scope: !1351)
!1353 = !DILocation(line: 438, column: 28, scope: !1351)
!1354 = !DILocation(line: 438, column: 38, scope: !1351)
!1355 = !DILocation(line: 438, column: 48, scope: !1351)
!1356 = !DILocation(line: 438, column: 59, scope: !1351)
!1357 = !DILocation(line: 440, column: 19, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !154, line: 440, column: 19)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !154, line: 440, column: 19)
!1360 = distinct !DILexicalBlock(scope: !1351, file: !154, line: 439, column: 17)
!1361 = !DILocation(line: 440, column: 19, scope: !1359)
!1362 = !DILocation(line: 441, column: 19, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !154, line: 441, column: 19)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !154, line: 441, column: 19)
!1365 = !DILocation(line: 441, column: 19, scope: !1364)
!1366 = !DILocation(line: 442, column: 17, scope: !1360)
!1367 = !DILocation(line: 449, column: 20, scope: !1329)
!1368 = !DILocation(line: 454, column: 11, scope: !1194)
!1369 = !DILocation(line: 457, column: 19, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1194, file: !154, line: 455, column: 13)
!1371 = !DILocation(line: 463, column: 19, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1370, file: !154, line: 462, column: 19)
!1373 = !DILocation(line: 463, column: 24, scope: !1372)
!1374 = !DILocation(line: 463, column: 28, scope: !1372)
!1375 = !DILocation(line: 463, column: 38, scope: !1372)
!1376 = !DILocation(line: 463, column: 47, scope: !1372)
!1377 = !DILocation(line: 463, column: 41, scope: !1372)
!1378 = !DILocation(line: 463, column: 52, scope: !1372)
!1379 = !DILocation(line: 462, column: 19, scope: !1370)
!1380 = !DILocation(line: 464, column: 25, scope: !1372)
!1381 = !DILocation(line: 464, column: 17, scope: !1372)
!1382 = !DILocation(line: 471, column: 25, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1372, file: !154, line: 465, column: 19)
!1384 = !DILocation(line: 475, column: 21, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !154, line: 475, column: 21)
!1386 = distinct !DILexicalBlock(scope: !1383, file: !154, line: 475, column: 21)
!1387 = !DILocation(line: 475, column: 21, scope: !1386)
!1388 = !DILocation(line: 476, column: 21, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !154, line: 476, column: 21)
!1390 = distinct !DILexicalBlock(scope: !1383, file: !154, line: 476, column: 21)
!1391 = !DILocation(line: 476, column: 21, scope: !1390)
!1392 = !DILocation(line: 477, column: 21, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !154, line: 477, column: 21)
!1394 = distinct !DILexicalBlock(scope: !1383, file: !154, line: 477, column: 21)
!1395 = !DILocation(line: 477, column: 21, scope: !1394)
!1396 = !DILocation(line: 478, column: 21, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !154, line: 478, column: 21)
!1398 = distinct !DILexicalBlock(scope: !1383, file: !154, line: 478, column: 21)
!1399 = !DILocation(line: 478, column: 21, scope: !1398)
!1400 = !DILocation(line: 479, column: 21, scope: !1383)
!1401 = !DILocation(line: 403, column: 21, scope: !1185)
!1402 = !DILocation(line: 492, column: 31, scope: !1194)
!1403 = !DILocation(line: 493, column: 31, scope: !1194)
!1404 = !DILocation(line: 495, column: 31, scope: !1194)
!1405 = !DILocation(line: 496, column: 31, scope: !1194)
!1406 = !DILocation(line: 497, column: 31, scope: !1194)
!1407 = !DILocation(line: 500, column: 15, scope: !1194)
!1408 = !DILocation(line: 502, column: 19, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !154, line: 501, column: 13)
!1410 = distinct !DILexicalBlock(scope: !1194, file: !154, line: 500, column: 15)
!1411 = !DILocation(line: 509, column: 33, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1194, file: !154, line: 509, column: 15)
!1413 = !DILocation(line: 0, scope: !1194)
!1414 = !DILocation(line: 514, column: 15, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1194, file: !154, line: 513, column: 15)
!1416 = !DILocation(line: 518, column: 15, scope: !1194)
!1417 = !DILocation(line: 526, column: 26, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1194, file: !154, line: 526, column: 15)
!1419 = !DILocation(line: 526, column: 15, scope: !1194)
!1420 = !DILocation(line: 526, column: 40, scope: !1418)
!1421 = !DILocation(line: 526, column: 47, scope: !1418)
!1422 = !DILocation(line: 530, column: 17, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1194, file: !154, line: 530, column: 15)
!1424 = !DILocation(line: 526, column: 18, scope: !1418)
!1425 = !DILocation(line: 526, column: 65, scope: !1418)
!1426 = !DILocation(line: 530, column: 15, scope: !1194)
!1427 = !DILocation(line: 535, column: 11, scope: !1194)
!1428 = !DILocation(line: 549, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1194, file: !154, line: 548, column: 15)
!1430 = !DILocation(line: 556, column: 15, scope: !1194)
!1431 = !DILocation(line: 558, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !154, line: 557, column: 13)
!1433 = distinct !DILexicalBlock(scope: !1194, file: !154, line: 556, column: 15)
!1434 = !DILocation(line: 561, column: 19, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1432, file: !154, line: 561, column: 19)
!1436 = !DILocation(line: 561, column: 35, scope: !1435)
!1437 = !DILocation(line: 561, column: 30, scope: !1435)
!1438 = !DILocation(line: 570, column: 15, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !154, line: 570, column: 15)
!1440 = distinct !DILexicalBlock(scope: !1432, file: !154, line: 570, column: 15)
!1441 = !DILocation(line: 570, column: 15, scope: !1440)
!1442 = !DILocation(line: 571, column: 15, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !154, line: 571, column: 15)
!1444 = distinct !DILexicalBlock(scope: !1432, file: !154, line: 571, column: 15)
!1445 = !DILocation(line: 571, column: 15, scope: !1444)
!1446 = !DILocation(line: 572, column: 15, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !154, line: 572, column: 15)
!1448 = distinct !DILexicalBlock(scope: !1432, file: !154, line: 572, column: 15)
!1449 = !DILocation(line: 572, column: 15, scope: !1448)
!1450 = !DILocation(line: 574, column: 13, scope: !1432)
!1451 = !DILocation(line: 614, column: 17, scope: !1193)
!1452 = !DILocation(line: 610, column: 20, scope: !1193)
!1453 = !DILocation(line: 617, column: 29, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1198, file: !154, line: 615, column: 15)
!1455 = !{!827, !827, i64 0}
!1456 = !DILocation(line: 617, column: 27, scope: !1454)
!1457 = !DILocation(line: 612, column: 18, scope: !1193)
!1458 = !DILocation(line: 618, column: 15, scope: !1454)
!1459 = !DILocation(line: 621, column: 17, scope: !1197)
!1460 = !DILocation(line: 622, column: 17, scope: !1197)
!1461 = !DILocation(line: 626, column: 29, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1197, file: !154, line: 626, column: 21)
!1463 = !DILocation(line: 626, column: 21, scope: !1197)
!1464 = !DILocation(line: 627, column: 29, scope: !1462)
!1465 = !DILocation(line: 627, column: 19, scope: !1462)
!1466 = !DILocation(line: 0, scope: !1310)
!1467 = !DILocation(line: 629, column: 17, scope: !1197)
!1468 = !DILocation(line: 624, column: 19, scope: !1197)
!1469 = !DILocation(line: 625, column: 27, scope: !1197)
!1470 = !DILocation(line: 631, column: 21, scope: !1215)
!1471 = !DILocation(line: 632, column: 56, scope: !1215)
!1472 = !DILocation(line: 632, column: 50, scope: !1215)
!1473 = !DILocation(line: 633, column: 53, scope: !1215)
!1474 = !DILocation(line: 621, column: 27, scope: !1197)
!1475 = !DILocation(line: 631, column: 29, scope: !1215)
!1476 = !DILocation(line: 632, column: 36, scope: !1215)
!1477 = !DILocation(line: 632, column: 28, scope: !1215)
!1478 = !DILocation(line: 634, column: 25, scope: !1215)
!1479 = !DILocation(line: 644, column: 38, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1222, file: !154, line: 642, column: 23)
!1481 = !DILocation(line: 644, column: 48, scope: !1480)
!1482 = !DILocation(line: 644, column: 51, scope: !1480)
!1483 = !DILocation(line: 644, column: 25, scope: !1480)
!1484 = !DILocation(line: 645, column: 28, scope: !1480)
!1485 = !DILocation(line: 644, column: 34, scope: !1480)
!1486 = distinct !{!1486, !1483, !1484}
!1487 = !DILocation(line: 658, column: 43, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !154, line: 658, column: 29)
!1489 = distinct !DILexicalBlock(scope: !1219, file: !154, line: 658, column: 29)
!1490 = !DILocation(line: 655, column: 29, scope: !1220)
!1491 = !DILocation(line: 657, column: 36, scope: !1219)
!1492 = !DILocation(line: 659, column: 49, scope: !1488)
!1493 = !DILocation(line: 659, column: 39, scope: !1488)
!1494 = !DILocation(line: 659, column: 31, scope: !1488)
!1495 = !DILocation(line: 658, column: 53, scope: !1488)
!1496 = !DILocation(line: 658, column: 29, scope: !1489)
!1497 = distinct !{!1497, !1496, !1498}
!1498 = !DILocation(line: 667, column: 33, scope: !1489)
!1499 = !DILocation(line: 674, column: 19, scope: !1197)
!1500 = !DILocation(line: 670, column: 41, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1221, file: !154, line: 670, column: 29)
!1502 = !DILocation(line: 670, column: 31, scope: !1501)
!1503 = !DILocation(line: 670, column: 29, scope: !1221)
!1504 = !DILocation(line: 672, column: 27, scope: !1221)
!1505 = !DILocation(line: 675, column: 26, scope: !1197)
!1506 = !DILocation(line: 675, column: 24, scope: !1197)
!1507 = !DILocation(line: 674, column: 19, scope: !1215)
!1508 = distinct !{!1508, !1467, !1509}
!1509 = !DILocation(line: 675, column: 44, scope: !1197)
!1510 = !DILocation(line: 676, column: 15, scope: !1198)
!1511 = !DILocation(line: 0, scope: !1462)
!1512 = !DILocation(line: 0, scope: !1197)
!1513 = !DILocation(line: 678, column: 40, scope: !1193)
!1514 = !DILocation(line: 680, column: 19, scope: !1227)
!1515 = !DILocation(line: 680, column: 45, scope: !1227)
!1516 = !DILocation(line: 680, column: 23, scope: !1227)
!1517 = !DILocation(line: 684, column: 33, scope: !1226)
!1518 = !DILocation(line: 684, column: 24, scope: !1226)
!1519 = !DILocation(line: 686, column: 17, scope: !1226)
!1520 = !DILocation(line: 0, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !154, line: 687, column: 19)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !154, line: 686, column: 17)
!1523 = distinct !DILexicalBlock(scope: !1226, file: !154, line: 686, column: 17)
!1524 = !DILocation(line: 0, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !154, line: 703, column: 21)
!1526 = !DILocation(line: 0, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !154, line: 696, column: 23)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !154, line: 695, column: 30)
!1529 = distinct !DILexicalBlock(scope: !1521, file: !154, line: 688, column: 25)
!1530 = !DILocation(line: 688, column: 43, scope: !1529)
!1531 = !DILocation(line: 690, column: 25, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !154, line: 690, column: 25)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !154, line: 689, column: 23)
!1534 = !DILocation(line: 690, column: 25, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !154, line: 690, column: 25)
!1536 = !DILocation(line: 690, column: 25, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !154, line: 690, column: 25)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !154, line: 690, column: 25)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !154, line: 690, column: 25)
!1540 = !DILocation(line: 690, column: 25, scope: !1538)
!1541 = !DILocation(line: 690, column: 25, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !154, line: 690, column: 25)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !154, line: 690, column: 25)
!1544 = !DILocation(line: 690, column: 25, scope: !1543)
!1545 = !DILocation(line: 690, column: 25, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !154, line: 690, column: 25)
!1547 = distinct !DILexicalBlock(scope: !1539, file: !154, line: 690, column: 25)
!1548 = !DILocation(line: 690, column: 25, scope: !1547)
!1549 = !DILocation(line: 690, column: 25, scope: !1539)
!1550 = !DILocation(line: 690, column: 25, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !154, line: 690, column: 25)
!1552 = distinct !DILexicalBlock(scope: !1532, file: !154, line: 690, column: 25)
!1553 = !DILocation(line: 690, column: 25, scope: !1552)
!1554 = !DILocation(line: 691, column: 25, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !154, line: 691, column: 25)
!1556 = distinct !DILexicalBlock(scope: !1533, file: !154, line: 691, column: 25)
!1557 = !DILocation(line: 691, column: 25, scope: !1556)
!1558 = !DILocation(line: 692, column: 25, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !154, line: 692, column: 25)
!1560 = distinct !DILexicalBlock(scope: !1533, file: !154, line: 692, column: 25)
!1561 = !DILocation(line: 692, column: 25, scope: !1560)
!1562 = !DILocation(line: 693, column: 38, scope: !1533)
!1563 = !DILocation(line: 693, column: 33, scope: !1533)
!1564 = !DILocation(line: 694, column: 23, scope: !1533)
!1565 = !DILocation(line: 695, column: 30, scope: !1528)
!1566 = !DILocation(line: 695, column: 30, scope: !1529)
!1567 = !DILocation(line: 697, column: 25, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !154, line: 697, column: 25)
!1569 = distinct !DILexicalBlock(scope: !1527, file: !154, line: 697, column: 25)
!1570 = !DILocation(line: 697, column: 25, scope: !1569)
!1571 = !DILocation(line: 699, column: 23, scope: !1527)
!1572 = !DILocation(line: 0, scope: !1560)
!1573 = !DILocation(line: 0, scope: !1533)
!1574 = !DILocation(line: 0, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1310, file: !154, line: 418, column: 9)
!1576 = !DILocation(line: 0, scope: !1532)
!1577 = !DILocation(line: 700, column: 35, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1521, file: !154, line: 700, column: 25)
!1579 = !DILocation(line: 700, column: 30, scope: !1578)
!1580 = !DILocation(line: 700, column: 25, scope: !1521)
!1581 = !DILocation(line: 702, column: 21, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !154, line: 702, column: 21)
!1583 = distinct !DILexicalBlock(scope: !1521, file: !154, line: 702, column: 21)
!1584 = !DILocation(line: 702, column: 21, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !154, line: 702, column: 21)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !154, line: 702, column: 21)
!1587 = distinct !DILexicalBlock(scope: !1582, file: !154, line: 702, column: 21)
!1588 = !DILocation(line: 702, column: 21, scope: !1586)
!1589 = !DILocation(line: 702, column: 21, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !154, line: 702, column: 21)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !154, line: 702, column: 21)
!1592 = !DILocation(line: 702, column: 21, scope: !1591)
!1593 = !DILocation(line: 702, column: 21, scope: !1587)
!1594 = !DILocation(line: 0, scope: !1569)
!1595 = !DILocation(line: 703, column: 21, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1525, file: !154, line: 703, column: 21)
!1597 = !DILocation(line: 703, column: 21, scope: !1525)
!1598 = !DILocation(line: 704, column: 25, scope: !1521)
!1599 = !DILocation(line: 686, column: 17, scope: !1522)
!1600 = distinct !{!1600, !1601, !1602}
!1601 = !DILocation(line: 686, column: 17, scope: !1523)
!1602 = !DILocation(line: 705, column: 19, scope: !1523)
!1603 = !DILocation(line: 0, scope: !1187)
!1604 = !DILocation(line: 416, column: 30, scope: !1310)
!1605 = !DILocation(line: 712, column: 34, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1185, file: !154, line: 712, column: 11)
!1607 = !DILocation(line: 714, column: 14, scope: !1606)
!1608 = !DILocation(line: 715, column: 14, scope: !1606)
!1609 = !DILocation(line: 715, column: 35, scope: !1606)
!1610 = !DILocation(line: 715, column: 17, scope: !1606)
!1611 = !DILocation(line: 715, column: 47, scope: !1606)
!1612 = !DILocation(line: 715, column: 65, scope: !1606)
!1613 = !DILocation(line: 716, column: 15, scope: !1606)
!1614 = !DILocation(line: 716, column: 11, scope: !1606)
!1615 = !DILocation(line: 712, column: 11, scope: !1185)
!1616 = !DILocation(line: 400, column: 10, scope: !1187)
!1617 = !DILocation(line: 0, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !154, line: 519, column: 13)
!1619 = distinct !DILexicalBlock(scope: !1194, file: !154, line: 518, column: 15)
!1620 = !DILocation(line: 720, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1185, file: !154, line: 720, column: 7)
!1622 = !DILocation(line: 720, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1621, file: !154, line: 720, column: 7)
!1624 = !DILocation(line: 720, column: 7, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !154, line: 720, column: 7)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !154, line: 720, column: 7)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !154, line: 720, column: 7)
!1628 = !DILocation(line: 720, column: 7, scope: !1626)
!1629 = !DILocation(line: 720, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !154, line: 720, column: 7)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !154, line: 720, column: 7)
!1632 = !DILocation(line: 720, column: 7, scope: !1631)
!1633 = !DILocation(line: 720, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !154, line: 720, column: 7)
!1635 = distinct !DILexicalBlock(scope: !1627, file: !154, line: 720, column: 7)
!1636 = !DILocation(line: 720, column: 7, scope: !1635)
!1637 = !DILocation(line: 720, column: 7, scope: !1627)
!1638 = !DILocation(line: 720, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !154, line: 720, column: 7)
!1640 = distinct !DILexicalBlock(scope: !1621, file: !154, line: 720, column: 7)
!1641 = !DILocation(line: 720, column: 7, scope: !1640)
!1642 = !DILocation(line: 723, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !154, line: 723, column: 7)
!1644 = distinct !DILexicalBlock(scope: !1185, file: !154, line: 723, column: 7)
!1645 = !DILocation(line: 424, column: 9, scope: !1185)
!1646 = !DILocation(line: 723, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !154, line: 723, column: 7)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !154, line: 723, column: 7)
!1649 = distinct !DILexicalBlock(scope: !1643, file: !154, line: 723, column: 7)
!1650 = !DILocation(line: 723, column: 7, scope: !1648)
!1651 = !DILocation(line: 723, column: 7, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !154, line: 723, column: 7)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !154, line: 723, column: 7)
!1654 = !DILocation(line: 723, column: 7, scope: !1653)
!1655 = !DILocation(line: 723, column: 7, scope: !1649)
!1656 = !DILocation(line: 724, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !154, line: 724, column: 7)
!1658 = distinct !DILexicalBlock(scope: !1185, file: !154, line: 724, column: 7)
!1659 = !DILocation(line: 724, column: 7, scope: !1658)
!1660 = !DILocation(line: 726, column: 13, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1185, file: !154, line: 726, column: 11)
!1662 = !DILocation(line: 726, column: 11, scope: !1185)
!1663 = !DILocation(line: 728, column: 5, scope: !1186)
!1664 = !DILocation(line: 400, column: 75, scope: !1186)
!1665 = !DILocation(line: 400, column: 3, scope: !1186)
!1666 = distinct !{!1666, !1304, !1667}
!1667 = !DILocation(line: 728, column: 5, scope: !1187)
!1668 = !DILocation(line: 730, column: 11, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1158, file: !154, line: 730, column: 7)
!1670 = !DILocation(line: 730, column: 16, scope: !1669)
!1671 = !DILocation(line: 738, column: 51, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1158, file: !154, line: 738, column: 7)
!1673 = !DILocation(line: 739, column: 10, scope: !1672)
!1674 = !DILocation(line: 741, column: 11, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !154, line: 741, column: 11)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !154, line: 740, column: 5)
!1677 = !DILocation(line: 741, column: 11, scope: !1676)
!1678 = !DILocation(line: 742, column: 16, scope: !1675)
!1679 = !DILocation(line: 742, column: 9, scope: !1675)
!1680 = !DILocation(line: 746, column: 18, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1675, file: !154, line: 746, column: 16)
!1682 = !DILocation(line: 746, column: 32, scope: !1681)
!1683 = !DILocation(line: 746, column: 29, scope: !1681)
!1684 = !DILocation(line: 755, column: 7, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1158, file: !154, line: 755, column: 7)
!1686 = !DILocation(line: 755, column: 20, scope: !1685)
!1687 = !DILocation(line: 756, column: 12, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !154, line: 756, column: 5)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !154, line: 756, column: 5)
!1690 = !DILocation(line: 756, column: 5, scope: !1689)
!1691 = !DILocation(line: 757, column: 7, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !154, line: 757, column: 7)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !154, line: 757, column: 7)
!1694 = !DILocation(line: 757, column: 7, scope: !1693)
!1695 = !DILocation(line: 756, column: 39, scope: !1688)
!1696 = distinct !{!1696, !1690, !1697}
!1697 = !DILocation(line: 757, column: 7, scope: !1689)
!1698 = !DILocation(line: 759, column: 11, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1158, file: !154, line: 759, column: 7)
!1700 = !DILocation(line: 759, column: 7, scope: !1158)
!1701 = !DILocation(line: 760, column: 5, scope: !1699)
!1702 = !DILocation(line: 760, column: 17, scope: !1699)
!1703 = !DILocation(line: 766, column: 21, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1158, file: !154, line: 766, column: 7)
!1705 = !DILocation(line: 766, column: 54, scope: !1704)
!1706 = !DILocation(line: 766, column: 51, scope: !1704)
!1707 = !DILocation(line: 770, column: 42, scope: !1158)
!1708 = !DILocation(line: 768, column: 10, scope: !1158)
!1709 = !DILocation(line: 768, column: 3, scope: !1158)
!1710 = !DILocation(line: 772, column: 1, scope: !1158)
!1711 = distinct !DISubprogram(name: "gettext_quote", scope: !154, file: !154, line: 207, type: !1712, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!41, !41, !112}
!1714 = !{!1715, !1716, !1717, !1718}
!1715 = !DILocalVariable(name: "msgid", arg: 1, scope: !1711, file: !154, line: 207, type: !41)
!1716 = !DILocalVariable(name: "s", arg: 2, scope: !1711, file: !154, line: 207, type: !112)
!1717 = !DILocalVariable(name: "translation", scope: !1711, file: !154, line: 209, type: !41)
!1718 = !DILocalVariable(name: "locale_code", scope: !1711, file: !154, line: 210, type: !41)
!1719 = !DILocation(line: 207, column: 28, scope: !1711)
!1720 = !DILocation(line: 207, column: 54, scope: !1711)
!1721 = !DILocation(line: 209, column: 29, scope: !1711)
!1722 = !DILocation(line: 209, column: 15, scope: !1711)
!1723 = !DILocation(line: 212, column: 19, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1711, file: !154, line: 212, column: 7)
!1725 = !DILocation(line: 212, column: 7, scope: !1711)
!1726 = !DILocation(line: 233, column: 17, scope: !1711)
!1727 = !DILocation(line: 210, column: 15, scope: !1711)
!1728 = !DILocalVariable(name: "s1", arg: 1, scope: !1729, file: !1730, line: 160, type: !41)
!1729 = distinct !DISubprogram(name: "strcaseeq0", scope: !1730, file: !1730, line: 160, type: !1731, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1733)
!1730 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!16, !41, !41, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1733 = !{!1728, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743}
!1734 = !DILocalVariable(name: "s2", arg: 2, scope: !1729, file: !1730, line: 160, type: !41)
!1735 = !DILocalVariable(name: "s20", arg: 3, scope: !1729, file: !1730, line: 160, type: !7)
!1736 = !DILocalVariable(name: "s21", arg: 4, scope: !1729, file: !1730, line: 160, type: !7)
!1737 = !DILocalVariable(name: "s22", arg: 5, scope: !1729, file: !1730, line: 160, type: !7)
!1738 = !DILocalVariable(name: "s23", arg: 6, scope: !1729, file: !1730, line: 160, type: !7)
!1739 = !DILocalVariable(name: "s24", arg: 7, scope: !1729, file: !1730, line: 160, type: !7)
!1740 = !DILocalVariable(name: "s25", arg: 8, scope: !1729, file: !1730, line: 160, type: !7)
!1741 = !DILocalVariable(name: "s26", arg: 9, scope: !1729, file: !1730, line: 160, type: !7)
!1742 = !DILocalVariable(name: "s27", arg: 10, scope: !1729, file: !1730, line: 160, type: !7)
!1743 = !DILocalVariable(name: "s28", arg: 11, scope: !1729, file: !1730, line: 160, type: !7)
!1744 = !DILocation(line: 160, column: 25, scope: !1729, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 234, column: 7, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1711, file: !154, line: 234, column: 7)
!1747 = !DILocation(line: 160, column: 41, scope: !1729, inlinedAt: !1745)
!1748 = !DILocation(line: 160, column: 50, scope: !1729, inlinedAt: !1745)
!1749 = !DILocation(line: 160, column: 60, scope: !1729, inlinedAt: !1745)
!1750 = !DILocation(line: 160, column: 70, scope: !1729, inlinedAt: !1745)
!1751 = !DILocation(line: 160, column: 80, scope: !1729, inlinedAt: !1745)
!1752 = !DILocation(line: 160, column: 90, scope: !1729, inlinedAt: !1745)
!1753 = !DILocation(line: 160, column: 100, scope: !1729, inlinedAt: !1745)
!1754 = !DILocation(line: 160, column: 110, scope: !1729, inlinedAt: !1745)
!1755 = !DILocation(line: 160, column: 120, scope: !1729, inlinedAt: !1745)
!1756 = !DILocation(line: 160, column: 130, scope: !1729, inlinedAt: !1745)
!1757 = !DILocation(line: 162, column: 7, scope: !1758, inlinedAt: !1745)
!1758 = distinct !DILexicalBlock(scope: !1729, file: !1730, line: 162, column: 7)
!1759 = !DILocalVariable(name: "s1", arg: 1, scope: !1760, file: !1730, line: 146, type: !41)
!1760 = distinct !DISubprogram(name: "strcaseeq1", scope: !1730, file: !1730, line: 146, type: !1761, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!16, !41, !41, !7, !7, !7, !7, !7, !7, !7, !7}
!1763 = !{!1759, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772}
!1764 = !DILocalVariable(name: "s2", arg: 2, scope: !1760, file: !1730, line: 146, type: !41)
!1765 = !DILocalVariable(name: "s21", arg: 3, scope: !1760, file: !1730, line: 146, type: !7)
!1766 = !DILocalVariable(name: "s22", arg: 4, scope: !1760, file: !1730, line: 146, type: !7)
!1767 = !DILocalVariable(name: "s23", arg: 5, scope: !1760, file: !1730, line: 146, type: !7)
!1768 = !DILocalVariable(name: "s24", arg: 6, scope: !1760, file: !1730, line: 146, type: !7)
!1769 = !DILocalVariable(name: "s25", arg: 7, scope: !1760, file: !1730, line: 146, type: !7)
!1770 = !DILocalVariable(name: "s26", arg: 8, scope: !1760, file: !1730, line: 146, type: !7)
!1771 = !DILocalVariable(name: "s27", arg: 9, scope: !1760, file: !1730, line: 146, type: !7)
!1772 = !DILocalVariable(name: "s28", arg: 10, scope: !1760, file: !1730, line: 146, type: !7)
!1773 = !DILocation(line: 146, column: 25, scope: !1760, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 167, column: 16, scope: !1775, inlinedAt: !1745)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !1730, line: 164, column: 11)
!1776 = distinct !DILexicalBlock(scope: !1758, file: !1730, line: 163, column: 5)
!1777 = !DILocation(line: 146, column: 41, scope: !1760, inlinedAt: !1774)
!1778 = !DILocation(line: 146, column: 50, scope: !1760, inlinedAt: !1774)
!1779 = !DILocation(line: 146, column: 60, scope: !1760, inlinedAt: !1774)
!1780 = !DILocation(line: 146, column: 70, scope: !1760, inlinedAt: !1774)
!1781 = !DILocation(line: 146, column: 80, scope: !1760, inlinedAt: !1774)
!1782 = !DILocation(line: 146, column: 90, scope: !1760, inlinedAt: !1774)
!1783 = !DILocation(line: 146, column: 100, scope: !1760, inlinedAt: !1774)
!1784 = !DILocation(line: 146, column: 110, scope: !1760, inlinedAt: !1774)
!1785 = !DILocation(line: 146, column: 120, scope: !1760, inlinedAt: !1774)
!1786 = !DILocation(line: 148, column: 7, scope: !1787, inlinedAt: !1774)
!1787 = distinct !DILexicalBlock(scope: !1760, file: !1730, line: 148, column: 7)
!1788 = !DILocalVariable(name: "s1", arg: 1, scope: !1789, file: !1730, line: 132, type: !41)
!1789 = distinct !DISubprogram(name: "strcaseeq2", scope: !1730, file: !1730, line: 132, type: !1790, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1792)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!16, !41, !41, !7, !7, !7, !7, !7, !7, !7}
!1792 = !{!1788, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1793 = !DILocalVariable(name: "s2", arg: 2, scope: !1789, file: !1730, line: 132, type: !41)
!1794 = !DILocalVariable(name: "s22", arg: 3, scope: !1789, file: !1730, line: 132, type: !7)
!1795 = !DILocalVariable(name: "s23", arg: 4, scope: !1789, file: !1730, line: 132, type: !7)
!1796 = !DILocalVariable(name: "s24", arg: 5, scope: !1789, file: !1730, line: 132, type: !7)
!1797 = !DILocalVariable(name: "s25", arg: 6, scope: !1789, file: !1730, line: 132, type: !7)
!1798 = !DILocalVariable(name: "s26", arg: 7, scope: !1789, file: !1730, line: 132, type: !7)
!1799 = !DILocalVariable(name: "s27", arg: 8, scope: !1789, file: !1730, line: 132, type: !7)
!1800 = !DILocalVariable(name: "s28", arg: 9, scope: !1789, file: !1730, line: 132, type: !7)
!1801 = !DILocation(line: 132, column: 25, scope: !1789, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 153, column: 16, scope: !1803, inlinedAt: !1774)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !1730, line: 150, column: 11)
!1804 = distinct !DILexicalBlock(scope: !1787, file: !1730, line: 149, column: 5)
!1805 = !DILocation(line: 132, column: 41, scope: !1789, inlinedAt: !1802)
!1806 = !DILocation(line: 132, column: 50, scope: !1789, inlinedAt: !1802)
!1807 = !DILocation(line: 132, column: 60, scope: !1789, inlinedAt: !1802)
!1808 = !DILocation(line: 132, column: 70, scope: !1789, inlinedAt: !1802)
!1809 = !DILocation(line: 132, column: 80, scope: !1789, inlinedAt: !1802)
!1810 = !DILocation(line: 132, column: 90, scope: !1789, inlinedAt: !1802)
!1811 = !DILocation(line: 132, column: 100, scope: !1789, inlinedAt: !1802)
!1812 = !DILocation(line: 132, column: 110, scope: !1789, inlinedAt: !1802)
!1813 = !DILocation(line: 134, column: 7, scope: !1814, inlinedAt: !1802)
!1814 = distinct !DILexicalBlock(scope: !1789, file: !1730, line: 134, column: 7)
!1815 = !DILocalVariable(name: "s1", arg: 1, scope: !1816, file: !1730, line: 118, type: !41)
!1816 = distinct !DISubprogram(name: "strcaseeq3", scope: !1730, file: !1730, line: 118, type: !1817, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!16, !41, !41, !7, !7, !7, !7, !7, !7}
!1819 = !{!1815, !1820, !1821, !1822, !1823, !1824, !1825, !1826}
!1820 = !DILocalVariable(name: "s2", arg: 2, scope: !1816, file: !1730, line: 118, type: !41)
!1821 = !DILocalVariable(name: "s23", arg: 3, scope: !1816, file: !1730, line: 118, type: !7)
!1822 = !DILocalVariable(name: "s24", arg: 4, scope: !1816, file: !1730, line: 118, type: !7)
!1823 = !DILocalVariable(name: "s25", arg: 5, scope: !1816, file: !1730, line: 118, type: !7)
!1824 = !DILocalVariable(name: "s26", arg: 6, scope: !1816, file: !1730, line: 118, type: !7)
!1825 = !DILocalVariable(name: "s27", arg: 7, scope: !1816, file: !1730, line: 118, type: !7)
!1826 = !DILocalVariable(name: "s28", arg: 8, scope: !1816, file: !1730, line: 118, type: !7)
!1827 = !DILocation(line: 118, column: 25, scope: !1816, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 139, column: 16, scope: !1829, inlinedAt: !1802)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !1730, line: 136, column: 11)
!1830 = distinct !DILexicalBlock(scope: !1814, file: !1730, line: 135, column: 5)
!1831 = !DILocation(line: 118, column: 41, scope: !1816, inlinedAt: !1828)
!1832 = !DILocation(line: 118, column: 50, scope: !1816, inlinedAt: !1828)
!1833 = !DILocation(line: 118, column: 60, scope: !1816, inlinedAt: !1828)
!1834 = !DILocation(line: 118, column: 70, scope: !1816, inlinedAt: !1828)
!1835 = !DILocation(line: 118, column: 80, scope: !1816, inlinedAt: !1828)
!1836 = !DILocation(line: 118, column: 90, scope: !1816, inlinedAt: !1828)
!1837 = !DILocation(line: 118, column: 100, scope: !1816, inlinedAt: !1828)
!1838 = !DILocation(line: 120, column: 7, scope: !1839, inlinedAt: !1828)
!1839 = distinct !DILexicalBlock(scope: !1816, file: !1730, line: 120, column: 7)
!1840 = !DILocation(line: 120, column: 7, scope: !1816, inlinedAt: !1828)
!1841 = !DILocalVariable(name: "s1", arg: 1, scope: !1842, file: !1730, line: 104, type: !41)
!1842 = distinct !DISubprogram(name: "strcaseeq4", scope: !1730, file: !1730, line: 104, type: !1843, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!16, !41, !41, !7, !7, !7, !7, !7}
!1845 = !{!1841, !1846, !1847, !1848, !1849, !1850, !1851}
!1846 = !DILocalVariable(name: "s2", arg: 2, scope: !1842, file: !1730, line: 104, type: !41)
!1847 = !DILocalVariable(name: "s24", arg: 3, scope: !1842, file: !1730, line: 104, type: !7)
!1848 = !DILocalVariable(name: "s25", arg: 4, scope: !1842, file: !1730, line: 104, type: !7)
!1849 = !DILocalVariable(name: "s26", arg: 5, scope: !1842, file: !1730, line: 104, type: !7)
!1850 = !DILocalVariable(name: "s27", arg: 6, scope: !1842, file: !1730, line: 104, type: !7)
!1851 = !DILocalVariable(name: "s28", arg: 7, scope: !1842, file: !1730, line: 104, type: !7)
!1852 = !DILocation(line: 104, column: 25, scope: !1842, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 125, column: 16, scope: !1854, inlinedAt: !1828)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !1730, line: 122, column: 11)
!1855 = distinct !DILexicalBlock(scope: !1839, file: !1730, line: 121, column: 5)
!1856 = !DILocation(line: 104, column: 41, scope: !1842, inlinedAt: !1853)
!1857 = !DILocation(line: 104, column: 50, scope: !1842, inlinedAt: !1853)
!1858 = !DILocation(line: 104, column: 60, scope: !1842, inlinedAt: !1853)
!1859 = !DILocation(line: 104, column: 70, scope: !1842, inlinedAt: !1853)
!1860 = !DILocation(line: 104, column: 80, scope: !1842, inlinedAt: !1853)
!1861 = !DILocation(line: 104, column: 90, scope: !1842, inlinedAt: !1853)
!1862 = !DILocation(line: 106, column: 7, scope: !1863, inlinedAt: !1853)
!1863 = distinct !DILexicalBlock(scope: !1842, file: !1730, line: 106, column: 7)
!1864 = !DILocation(line: 106, column: 7, scope: !1842, inlinedAt: !1853)
!1865 = !DILocalVariable(name: "s1", arg: 1, scope: !1866, file: !1730, line: 90, type: !41)
!1866 = distinct !DISubprogram(name: "strcaseeq5", scope: !1730, file: !1730, line: 90, type: !1867, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!16, !41, !41, !7, !7, !7, !7}
!1869 = !{!1865, !1870, !1871, !1872, !1873, !1874}
!1870 = !DILocalVariable(name: "s2", arg: 2, scope: !1866, file: !1730, line: 90, type: !41)
!1871 = !DILocalVariable(name: "s25", arg: 3, scope: !1866, file: !1730, line: 90, type: !7)
!1872 = !DILocalVariable(name: "s26", arg: 4, scope: !1866, file: !1730, line: 90, type: !7)
!1873 = !DILocalVariable(name: "s27", arg: 5, scope: !1866, file: !1730, line: 90, type: !7)
!1874 = !DILocalVariable(name: "s28", arg: 6, scope: !1866, file: !1730, line: 90, type: !7)
!1875 = !DILocation(line: 90, column: 25, scope: !1866, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 111, column: 16, scope: !1877, inlinedAt: !1853)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !1730, line: 108, column: 11)
!1878 = distinct !DILexicalBlock(scope: !1863, file: !1730, line: 107, column: 5)
!1879 = !DILocation(line: 90, column: 41, scope: !1866, inlinedAt: !1876)
!1880 = !DILocation(line: 90, column: 50, scope: !1866, inlinedAt: !1876)
!1881 = !DILocation(line: 90, column: 60, scope: !1866, inlinedAt: !1876)
!1882 = !DILocation(line: 90, column: 70, scope: !1866, inlinedAt: !1876)
!1883 = !DILocation(line: 90, column: 80, scope: !1866, inlinedAt: !1876)
!1884 = !DILocation(line: 92, column: 7, scope: !1885, inlinedAt: !1876)
!1885 = distinct !DILexicalBlock(scope: !1866, file: !1730, line: 92, column: 7)
!1886 = !DILocation(line: 92, column: 7, scope: !1866, inlinedAt: !1876)
!1887 = !DILocation(line: 235, column: 12, scope: !1746)
!1888 = !DILocation(line: 235, column: 21, scope: !1746)
!1889 = !DILocation(line: 235, column: 5, scope: !1746)
!1890 = !DILocation(line: 146, column: 25, scope: !1760, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 167, column: 16, scope: !1775, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 236, column: 7, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1711, file: !154, line: 236, column: 7)
!1894 = !DILocation(line: 146, column: 41, scope: !1760, inlinedAt: !1891)
!1895 = !DILocation(line: 146, column: 50, scope: !1760, inlinedAt: !1891)
!1896 = !DILocation(line: 146, column: 60, scope: !1760, inlinedAt: !1891)
!1897 = !DILocation(line: 146, column: 70, scope: !1760, inlinedAt: !1891)
!1898 = !DILocation(line: 146, column: 80, scope: !1760, inlinedAt: !1891)
!1899 = !DILocation(line: 146, column: 90, scope: !1760, inlinedAt: !1891)
!1900 = !DILocation(line: 146, column: 100, scope: !1760, inlinedAt: !1891)
!1901 = !DILocation(line: 146, column: 110, scope: !1760, inlinedAt: !1891)
!1902 = !DILocation(line: 146, column: 120, scope: !1760, inlinedAt: !1891)
!1903 = !DILocation(line: 148, column: 7, scope: !1787, inlinedAt: !1891)
!1904 = !DILocation(line: 132, column: 25, scope: !1789, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 153, column: 16, scope: !1803, inlinedAt: !1891)
!1906 = !DILocation(line: 132, column: 41, scope: !1789, inlinedAt: !1905)
!1907 = !DILocation(line: 132, column: 50, scope: !1789, inlinedAt: !1905)
!1908 = !DILocation(line: 132, column: 60, scope: !1789, inlinedAt: !1905)
!1909 = !DILocation(line: 132, column: 70, scope: !1789, inlinedAt: !1905)
!1910 = !DILocation(line: 132, column: 80, scope: !1789, inlinedAt: !1905)
!1911 = !DILocation(line: 132, column: 90, scope: !1789, inlinedAt: !1905)
!1912 = !DILocation(line: 132, column: 100, scope: !1789, inlinedAt: !1905)
!1913 = !DILocation(line: 132, column: 110, scope: !1789, inlinedAt: !1905)
!1914 = !DILocation(line: 134, column: 7, scope: !1814, inlinedAt: !1905)
!1915 = !DILocation(line: 134, column: 7, scope: !1789, inlinedAt: !1905)
!1916 = !DILocation(line: 118, column: 25, scope: !1816, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 139, column: 16, scope: !1829, inlinedAt: !1905)
!1918 = !DILocation(line: 118, column: 41, scope: !1816, inlinedAt: !1917)
!1919 = !DILocation(line: 118, column: 50, scope: !1816, inlinedAt: !1917)
!1920 = !DILocation(line: 118, column: 60, scope: !1816, inlinedAt: !1917)
!1921 = !DILocation(line: 118, column: 70, scope: !1816, inlinedAt: !1917)
!1922 = !DILocation(line: 118, column: 80, scope: !1816, inlinedAt: !1917)
!1923 = !DILocation(line: 118, column: 90, scope: !1816, inlinedAt: !1917)
!1924 = !DILocation(line: 118, column: 100, scope: !1816, inlinedAt: !1917)
!1925 = !DILocation(line: 120, column: 7, scope: !1839, inlinedAt: !1917)
!1926 = !DILocation(line: 120, column: 7, scope: !1816, inlinedAt: !1917)
!1927 = !DILocation(line: 104, column: 25, scope: !1842, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 125, column: 16, scope: !1854, inlinedAt: !1917)
!1929 = !DILocation(line: 104, column: 41, scope: !1842, inlinedAt: !1928)
!1930 = !DILocation(line: 104, column: 50, scope: !1842, inlinedAt: !1928)
!1931 = !DILocation(line: 104, column: 60, scope: !1842, inlinedAt: !1928)
!1932 = !DILocation(line: 104, column: 70, scope: !1842, inlinedAt: !1928)
!1933 = !DILocation(line: 104, column: 80, scope: !1842, inlinedAt: !1928)
!1934 = !DILocation(line: 104, column: 90, scope: !1842, inlinedAt: !1928)
!1935 = !DILocation(line: 106, column: 7, scope: !1863, inlinedAt: !1928)
!1936 = !DILocation(line: 106, column: 7, scope: !1842, inlinedAt: !1928)
!1937 = !DILocation(line: 90, column: 25, scope: !1866, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 111, column: 16, scope: !1877, inlinedAt: !1928)
!1939 = !DILocation(line: 90, column: 41, scope: !1866, inlinedAt: !1938)
!1940 = !DILocation(line: 90, column: 50, scope: !1866, inlinedAt: !1938)
!1941 = !DILocation(line: 90, column: 60, scope: !1866, inlinedAt: !1938)
!1942 = !DILocation(line: 90, column: 70, scope: !1866, inlinedAt: !1938)
!1943 = !DILocation(line: 90, column: 80, scope: !1866, inlinedAt: !1938)
!1944 = !DILocation(line: 92, column: 7, scope: !1885, inlinedAt: !1938)
!1945 = !DILocation(line: 92, column: 7, scope: !1866, inlinedAt: !1938)
!1946 = !DILocalVariable(name: "s1", arg: 1, scope: !1947, file: !1730, line: 76, type: !41)
!1947 = distinct !DISubprogram(name: "strcaseeq6", scope: !1730, file: !1730, line: 76, type: !1948, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!16, !41, !41, !7, !7, !7}
!1950 = !{!1946, !1951, !1952, !1953, !1954}
!1951 = !DILocalVariable(name: "s2", arg: 2, scope: !1947, file: !1730, line: 76, type: !41)
!1952 = !DILocalVariable(name: "s26", arg: 3, scope: !1947, file: !1730, line: 76, type: !7)
!1953 = !DILocalVariable(name: "s27", arg: 4, scope: !1947, file: !1730, line: 76, type: !7)
!1954 = !DILocalVariable(name: "s28", arg: 5, scope: !1947, file: !1730, line: 76, type: !7)
!1955 = !DILocation(line: 76, column: 25, scope: !1947, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 97, column: 16, scope: !1957, inlinedAt: !1938)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !1730, line: 94, column: 11)
!1958 = distinct !DILexicalBlock(scope: !1885, file: !1730, line: 93, column: 5)
!1959 = !DILocation(line: 76, column: 41, scope: !1947, inlinedAt: !1956)
!1960 = !DILocation(line: 76, column: 50, scope: !1947, inlinedAt: !1956)
!1961 = !DILocation(line: 76, column: 60, scope: !1947, inlinedAt: !1956)
!1962 = !DILocation(line: 76, column: 70, scope: !1947, inlinedAt: !1956)
!1963 = !DILocation(line: 78, column: 7, scope: !1964, inlinedAt: !1956)
!1964 = distinct !DILexicalBlock(scope: !1947, file: !1730, line: 78, column: 7)
!1965 = !DILocation(line: 78, column: 7, scope: !1947, inlinedAt: !1956)
!1966 = !DILocalVariable(name: "s1", arg: 1, scope: !1967, file: !1730, line: 62, type: !41)
!1967 = distinct !DISubprogram(name: "strcaseeq7", scope: !1730, file: !1730, line: 62, type: !1968, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!16, !41, !41, !7, !7}
!1970 = !{!1966, !1971, !1972, !1973}
!1971 = !DILocalVariable(name: "s2", arg: 2, scope: !1967, file: !1730, line: 62, type: !41)
!1972 = !DILocalVariable(name: "s27", arg: 3, scope: !1967, file: !1730, line: 62, type: !7)
!1973 = !DILocalVariable(name: "s28", arg: 4, scope: !1967, file: !1730, line: 62, type: !7)
!1974 = !DILocation(line: 62, column: 25, scope: !1967, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 83, column: 16, scope: !1976, inlinedAt: !1956)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !1730, line: 80, column: 11)
!1977 = distinct !DILexicalBlock(scope: !1964, file: !1730, line: 79, column: 5)
!1978 = !DILocation(line: 62, column: 41, scope: !1967, inlinedAt: !1975)
!1979 = !DILocation(line: 62, column: 50, scope: !1967, inlinedAt: !1975)
!1980 = !DILocation(line: 62, column: 60, scope: !1967, inlinedAt: !1975)
!1981 = !DILocation(line: 64, column: 7, scope: !1982, inlinedAt: !1975)
!1982 = distinct !DILexicalBlock(scope: !1967, file: !1730, line: 64, column: 7)
!1983 = !DILocation(line: 236, column: 7, scope: !1711)
!1984 = !DILocation(line: 237, column: 12, scope: !1893)
!1985 = !DILocation(line: 237, column: 21, scope: !1893)
!1986 = !DILocation(line: 237, column: 5, scope: !1893)
!1987 = !DILocation(line: 239, column: 13, scope: !1711)
!1988 = !DILocation(line: 239, column: 11, scope: !1711)
!1989 = !DILocation(line: 239, column: 3, scope: !1711)
!1990 = !DILocation(line: 0, scope: !1711)
!1991 = !DILocation(line: 240, column: 1, scope: !1711)
!1992 = distinct !DISubprogram(name: "quotearg_alloc", scope: !154, file: !154, line: 799, type: !1993, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!6, !41, !148, !1031}
!1995 = !{!1996, !1997, !1998}
!1996 = !DILocalVariable(name: "arg", arg: 1, scope: !1992, file: !154, line: 799, type: !41)
!1997 = !DILocalVariable(name: "argsize", arg: 2, scope: !1992, file: !154, line: 799, type: !148)
!1998 = !DILocalVariable(name: "o", arg: 3, scope: !1992, file: !154, line: 800, type: !1031)
!1999 = !DILocation(line: 799, column: 29, scope: !1992)
!2000 = !DILocation(line: 799, column: 41, scope: !1992)
!2001 = !DILocation(line: 800, column: 47, scope: !1992)
!2002 = !DILocalVariable(name: "arg", arg: 1, scope: !2003, file: !154, line: 812, type: !41)
!2003 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !154, file: !154, line: 812, type: !2004, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!6, !41, !148, !216, !1031}
!2006 = !{!2002, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014}
!2007 = !DILocalVariable(name: "argsize", arg: 2, scope: !2003, file: !154, line: 812, type: !148)
!2008 = !DILocalVariable(name: "size", arg: 3, scope: !2003, file: !154, line: 812, type: !216)
!2009 = !DILocalVariable(name: "o", arg: 4, scope: !2003, file: !154, line: 813, type: !1031)
!2010 = !DILocalVariable(name: "p", scope: !2003, file: !154, line: 815, type: !1031)
!2011 = !DILocalVariable(name: "e", scope: !2003, file: !154, line: 816, type: !16)
!2012 = !DILocalVariable(name: "flags", scope: !2003, file: !154, line: 818, type: !16)
!2013 = !DILocalVariable(name: "bufsize", scope: !2003, file: !154, line: 819, type: !148)
!2014 = !DILocalVariable(name: "buf", scope: !2003, file: !154, line: 823, type: !6)
!2015 = !DILocation(line: 812, column: 33, scope: !2003, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 802, column: 10, scope: !1992)
!2017 = !DILocation(line: 812, column: 45, scope: !2003, inlinedAt: !2016)
!2018 = !DILocation(line: 812, column: 62, scope: !2003, inlinedAt: !2016)
!2019 = !DILocation(line: 813, column: 51, scope: !2003, inlinedAt: !2016)
!2020 = !DILocation(line: 815, column: 37, scope: !2003, inlinedAt: !2016)
!2021 = !DILocation(line: 815, column: 33, scope: !2003, inlinedAt: !2016)
!2022 = !DILocation(line: 816, column: 11, scope: !2003, inlinedAt: !2016)
!2023 = !DILocation(line: 816, column: 7, scope: !2003, inlinedAt: !2016)
!2024 = !DILocation(line: 818, column: 18, scope: !2003, inlinedAt: !2016)
!2025 = !DILocation(line: 818, column: 24, scope: !2003, inlinedAt: !2016)
!2026 = !DILocation(line: 818, column: 7, scope: !2003, inlinedAt: !2016)
!2027 = !DILocation(line: 819, column: 69, scope: !2003, inlinedAt: !2016)
!2028 = !DILocation(line: 820, column: 53, scope: !2003, inlinedAt: !2016)
!2029 = !DILocation(line: 821, column: 49, scope: !2003, inlinedAt: !2016)
!2030 = !DILocation(line: 822, column: 49, scope: !2003, inlinedAt: !2016)
!2031 = !DILocation(line: 819, column: 20, scope: !2003, inlinedAt: !2016)
!2032 = !DILocation(line: 822, column: 62, scope: !2003, inlinedAt: !2016)
!2033 = !DILocation(line: 819, column: 10, scope: !2003, inlinedAt: !2016)
!2034 = !DILocalVariable(name: "n", arg: 1, scope: !2035, file: !212, line: 216, type: !148)
!2035 = distinct !DISubprogram(name: "xcharalloc", scope: !212, file: !212, line: 216, type: !2036, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2038)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!6, !148}
!2038 = !{!2034}
!2039 = !DILocation(line: 216, column: 20, scope: !2035, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 823, column: 15, scope: !2003, inlinedAt: !2016)
!2041 = !DILocation(line: 218, column: 10, scope: !2035, inlinedAt: !2040)
!2042 = !DILocation(line: 823, column: 9, scope: !2003, inlinedAt: !2016)
!2043 = !DILocation(line: 824, column: 60, scope: !2003, inlinedAt: !2016)
!2044 = !DILocation(line: 826, column: 32, scope: !2003, inlinedAt: !2016)
!2045 = !DILocation(line: 826, column: 47, scope: !2003, inlinedAt: !2016)
!2046 = !DILocation(line: 824, column: 3, scope: !2003, inlinedAt: !2016)
!2047 = !DILocation(line: 827, column: 9, scope: !2003, inlinedAt: !2016)
!2048 = !DILocation(line: 802, column: 3, scope: !1992)
!2049 = !DILocation(line: 812, column: 33, scope: !2003)
!2050 = !DILocation(line: 812, column: 45, scope: !2003)
!2051 = !DILocation(line: 812, column: 62, scope: !2003)
!2052 = !DILocation(line: 813, column: 51, scope: !2003)
!2053 = !DILocation(line: 815, column: 37, scope: !2003)
!2054 = !DILocation(line: 815, column: 33, scope: !2003)
!2055 = !DILocation(line: 816, column: 11, scope: !2003)
!2056 = !DILocation(line: 816, column: 7, scope: !2003)
!2057 = !DILocation(line: 818, column: 18, scope: !2003)
!2058 = !DILocation(line: 818, column: 27, scope: !2003)
!2059 = !DILocation(line: 818, column: 24, scope: !2003)
!2060 = !DILocation(line: 818, column: 7, scope: !2003)
!2061 = !DILocation(line: 819, column: 69, scope: !2003)
!2062 = !DILocation(line: 820, column: 53, scope: !2003)
!2063 = !DILocation(line: 821, column: 49, scope: !2003)
!2064 = !DILocation(line: 822, column: 49, scope: !2003)
!2065 = !DILocation(line: 819, column: 20, scope: !2003)
!2066 = !DILocation(line: 822, column: 62, scope: !2003)
!2067 = !DILocation(line: 819, column: 10, scope: !2003)
!2068 = !DILocation(line: 216, column: 20, scope: !2035, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 823, column: 15, scope: !2003)
!2070 = !DILocation(line: 218, column: 10, scope: !2035, inlinedAt: !2069)
!2071 = !DILocation(line: 823, column: 9, scope: !2003)
!2072 = !DILocation(line: 824, column: 60, scope: !2003)
!2073 = !DILocation(line: 826, column: 32, scope: !2003)
!2074 = !DILocation(line: 826, column: 47, scope: !2003)
!2075 = !DILocation(line: 824, column: 3, scope: !2003)
!2076 = !DILocation(line: 827, column: 9, scope: !2003)
!2077 = !DILocation(line: 828, column: 7, scope: !2003)
!2078 = !DILocation(line: 829, column: 11, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2003, file: !154, line: 828, column: 7)
!2080 = !{!826, !826, i64 0}
!2081 = !DILocation(line: 829, column: 5, scope: !2079)
!2082 = !DILocation(line: 830, column: 3, scope: !2003)
!2083 = distinct !DISubprogram(name: "quotearg_free", scope: !154, file: !154, line: 848, type: !938, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2084)
!2084 = !{!2085, !2086}
!2085 = !DILocalVariable(name: "sv", scope: !2083, file: !154, line: 850, type: !178)
!2086 = !DILocalVariable(name: "i", scope: !2083, file: !154, line: 851, type: !16)
!2087 = !DILocation(line: 850, column: 24, scope: !2083)
!2088 = !DILocation(line: 850, column: 19, scope: !2083)
!2089 = !DILocation(line: 851, column: 7, scope: !2083)
!2090 = !DILocation(line: 852, column: 19, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !154, line: 852, column: 3)
!2092 = distinct !DILexicalBlock(scope: !2083, file: !154, line: 852, column: 3)
!2093 = !DILocation(line: 852, column: 17, scope: !2091)
!2094 = !DILocation(line: 852, column: 3, scope: !2092)
!2095 = !DILocation(line: 853, column: 17, scope: !2091)
!2096 = !{!2097, !669, i64 8}
!2097 = !{!"slotvec", !826, i64 0, !669, i64 8}
!2098 = !DILocation(line: 853, column: 5, scope: !2091)
!2099 = !DILocation(line: 852, column: 28, scope: !2091)
!2100 = distinct !{!2100, !2094, !2101}
!2101 = !DILocation(line: 853, column: 20, scope: !2092)
!2102 = !DILocation(line: 854, column: 13, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2083, file: !154, line: 854, column: 7)
!2104 = !DILocation(line: 854, column: 17, scope: !2103)
!2105 = !DILocation(line: 854, column: 7, scope: !2083)
!2106 = !DILocation(line: 856, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !154, line: 855, column: 5)
!2108 = !DILocation(line: 857, column: 21, scope: !2107)
!2109 = !{!2097, !826, i64 0}
!2110 = !DILocation(line: 858, column: 20, scope: !2107)
!2111 = !DILocation(line: 859, column: 5, scope: !2107)
!2112 = !DILocation(line: 860, column: 10, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2083, file: !154, line: 860, column: 7)
!2114 = !DILocation(line: 860, column: 7, scope: !2083)
!2115 = !DILocation(line: 862, column: 13, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !154, line: 861, column: 5)
!2117 = !DILocation(line: 862, column: 7, scope: !2116)
!2118 = !DILocation(line: 863, column: 15, scope: !2116)
!2119 = !DILocation(line: 864, column: 5, scope: !2116)
!2120 = !DILocation(line: 865, column: 10, scope: !2083)
!2121 = !DILocation(line: 866, column: 1, scope: !2083)
!2122 = distinct !DISubprogram(name: "quotearg_n", scope: !154, file: !154, line: 931, type: !2123, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!6, !16, !41}
!2125 = !{!2126, !2127}
!2126 = !DILocalVariable(name: "n", arg: 1, scope: !2122, file: !154, line: 931, type: !16)
!2127 = !DILocalVariable(name: "arg", arg: 2, scope: !2122, file: !154, line: 931, type: !41)
!2128 = !DILocation(line: 931, column: 17, scope: !2122)
!2129 = !DILocation(line: 931, column: 32, scope: !2122)
!2130 = !DILocation(line: 933, column: 10, scope: !2122)
!2131 = !DILocation(line: 933, column: 3, scope: !2122)
!2132 = distinct !DISubprogram(name: "quotearg_n_options", scope: !154, file: !154, line: 877, type: !2133, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!6, !16, !41, !148, !1031}
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2145, !2146, !2148, !2149, !2150}
!2136 = !DILocalVariable(name: "n", arg: 1, scope: !2132, file: !154, line: 877, type: !16)
!2137 = !DILocalVariable(name: "arg", arg: 2, scope: !2132, file: !154, line: 877, type: !41)
!2138 = !DILocalVariable(name: "argsize", arg: 3, scope: !2132, file: !154, line: 877, type: !148)
!2139 = !DILocalVariable(name: "options", arg: 4, scope: !2132, file: !154, line: 878, type: !1031)
!2140 = !DILocalVariable(name: "e", scope: !2132, file: !154, line: 880, type: !16)
!2141 = !DILocalVariable(name: "sv", scope: !2132, file: !154, line: 882, type: !178)
!2142 = !DILocalVariable(name: "preallocated", scope: !2143, file: !154, line: 889, type: !70)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !154, line: 888, column: 5)
!2144 = distinct !DILexicalBlock(scope: !2132, file: !154, line: 887, column: 7)
!2145 = !DILocalVariable(name: "nmax", scope: !2143, file: !154, line: 890, type: !16)
!2146 = !DILocalVariable(name: "size", scope: !2147, file: !154, line: 903, type: !148)
!2147 = distinct !DILexicalBlock(scope: !2132, file: !154, line: 902, column: 3)
!2148 = !DILocalVariable(name: "val", scope: !2147, file: !154, line: 904, type: !6)
!2149 = !DILocalVariable(name: "flags", scope: !2147, file: !154, line: 906, type: !16)
!2150 = !DILocalVariable(name: "qsize", scope: !2147, file: !154, line: 907, type: !148)
!2151 = !DILocation(line: 877, column: 25, scope: !2132)
!2152 = !DILocation(line: 877, column: 40, scope: !2132)
!2153 = !DILocation(line: 877, column: 52, scope: !2132)
!2154 = !DILocation(line: 878, column: 51, scope: !2132)
!2155 = !DILocation(line: 880, column: 11, scope: !2132)
!2156 = !DILocation(line: 880, column: 7, scope: !2132)
!2157 = !DILocation(line: 882, column: 24, scope: !2132)
!2158 = !DILocation(line: 882, column: 19, scope: !2132)
!2159 = !DILocation(line: 884, column: 9, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2132, file: !154, line: 884, column: 7)
!2161 = !DILocation(line: 884, column: 7, scope: !2132)
!2162 = !DILocation(line: 885, column: 5, scope: !2160)
!2163 = !DILocation(line: 887, column: 7, scope: !2144)
!2164 = !DILocation(line: 887, column: 14, scope: !2144)
!2165 = !DILocation(line: 887, column: 7, scope: !2132)
!2166 = !DILocation(line: 889, column: 31, scope: !2143)
!2167 = !DILocation(line: 890, column: 11, scope: !2143)
!2168 = !DILocation(line: 892, column: 16, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2143, file: !154, line: 892, column: 11)
!2170 = !DILocation(line: 892, column: 11, scope: !2143)
!2171 = !DILocation(line: 893, column: 9, scope: !2169)
!2172 = !DILocation(line: 895, column: 32, scope: !2143)
!2173 = !DILocation(line: 895, column: 61, scope: !2143)
!2174 = !DILocation(line: 895, column: 58, scope: !2143)
!2175 = !DILocation(line: 895, column: 66, scope: !2143)
!2176 = !DILocation(line: 895, column: 22, scope: !2143)
!2177 = !DILocation(line: 895, column: 15, scope: !2143)
!2178 = !DILocation(line: 896, column: 11, scope: !2143)
!2179 = !DILocation(line: 897, column: 15, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2143, file: !154, line: 896, column: 11)
!2181 = !{i64 0, i64 8, !2080, i64 8, i64 8, !668}
!2182 = !DILocation(line: 897, column: 9, scope: !2180)
!2183 = !DILocation(line: 898, column: 20, scope: !2143)
!2184 = !DILocation(line: 898, column: 18, scope: !2143)
!2185 = !DILocation(line: 898, column: 7, scope: !2143)
!2186 = !DILocation(line: 898, column: 38, scope: !2143)
!2187 = !DILocation(line: 898, column: 31, scope: !2143)
!2188 = !DILocation(line: 898, column: 48, scope: !2143)
!2189 = !DILocation(line: 899, column: 14, scope: !2143)
!2190 = !DILocation(line: 900, column: 5, scope: !2143)
!2191 = !DILocation(line: 0, scope: !2132)
!2192 = !DILocation(line: 903, column: 19, scope: !2147)
!2193 = !DILocation(line: 903, column: 25, scope: !2147)
!2194 = !DILocation(line: 903, column: 12, scope: !2147)
!2195 = !DILocation(line: 904, column: 23, scope: !2147)
!2196 = !DILocation(line: 904, column: 11, scope: !2147)
!2197 = !DILocation(line: 906, column: 26, scope: !2147)
!2198 = !DILocation(line: 906, column: 32, scope: !2147)
!2199 = !DILocation(line: 906, column: 9, scope: !2147)
!2200 = !DILocation(line: 908, column: 55, scope: !2147)
!2201 = !DILocation(line: 909, column: 46, scope: !2147)
!2202 = !DILocation(line: 910, column: 55, scope: !2147)
!2203 = !DILocation(line: 911, column: 55, scope: !2147)
!2204 = !DILocation(line: 907, column: 20, scope: !2147)
!2205 = !DILocation(line: 907, column: 12, scope: !2147)
!2206 = !DILocation(line: 913, column: 14, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2147, file: !154, line: 913, column: 9)
!2208 = !DILocation(line: 913, column: 9, scope: !2147)
!2209 = !DILocation(line: 915, column: 35, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !154, line: 914, column: 7)
!2211 = !DILocation(line: 915, column: 20, scope: !2210)
!2212 = !DILocation(line: 916, column: 17, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !154, line: 916, column: 13)
!2214 = !DILocation(line: 916, column: 13, scope: !2210)
!2215 = !DILocation(line: 917, column: 11, scope: !2213)
!2216 = !DILocation(line: 216, column: 20, scope: !2035, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 918, column: 27, scope: !2210)
!2218 = !DILocation(line: 218, column: 10, scope: !2035, inlinedAt: !2217)
!2219 = !DILocation(line: 918, column: 19, scope: !2210)
!2220 = !DILocation(line: 919, column: 69, scope: !2210)
!2221 = !DILocation(line: 921, column: 44, scope: !2210)
!2222 = !DILocation(line: 922, column: 44, scope: !2210)
!2223 = !DILocation(line: 919, column: 9, scope: !2210)
!2224 = !DILocation(line: 923, column: 7, scope: !2210)
!2225 = !DILocation(line: 0, scope: !2147)
!2226 = !DILocation(line: 925, column: 11, scope: !2147)
!2227 = !DILocation(line: 926, column: 5, scope: !2147)
!2228 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !154, file: !154, line: 937, type: !2229, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!6, !16, !41, !148}
!2231 = !{!2232, !2233, !2234}
!2232 = !DILocalVariable(name: "n", arg: 1, scope: !2228, file: !154, line: 937, type: !16)
!2233 = !DILocalVariable(name: "arg", arg: 2, scope: !2228, file: !154, line: 937, type: !41)
!2234 = !DILocalVariable(name: "argsize", arg: 3, scope: !2228, file: !154, line: 937, type: !148)
!2235 = !DILocation(line: 937, column: 21, scope: !2228)
!2236 = !DILocation(line: 937, column: 36, scope: !2228)
!2237 = !DILocation(line: 937, column: 48, scope: !2228)
!2238 = !DILocation(line: 939, column: 10, scope: !2228)
!2239 = !DILocation(line: 939, column: 3, scope: !2228)
!2240 = distinct !DISubprogram(name: "quotearg", scope: !154, file: !154, line: 943, type: !2241, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!6, !41}
!2243 = !{!2244}
!2244 = !DILocalVariable(name: "arg", arg: 1, scope: !2240, file: !154, line: 943, type: !41)
!2245 = !DILocation(line: 943, column: 23, scope: !2240)
!2246 = !DILocation(line: 931, column: 17, scope: !2122, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 945, column: 10, scope: !2240)
!2248 = !DILocation(line: 931, column: 32, scope: !2122, inlinedAt: !2247)
!2249 = !DILocation(line: 933, column: 10, scope: !2122, inlinedAt: !2247)
!2250 = !DILocation(line: 945, column: 3, scope: !2240)
!2251 = distinct !DISubprogram(name: "quotearg_mem", scope: !154, file: !154, line: 949, type: !2252, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2254)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!6, !41, !148}
!2254 = !{!2255, !2256}
!2255 = !DILocalVariable(name: "arg", arg: 1, scope: !2251, file: !154, line: 949, type: !41)
!2256 = !DILocalVariable(name: "argsize", arg: 2, scope: !2251, file: !154, line: 949, type: !148)
!2257 = !DILocation(line: 949, column: 27, scope: !2251)
!2258 = !DILocation(line: 949, column: 39, scope: !2251)
!2259 = !DILocation(line: 937, column: 21, scope: !2228, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 951, column: 10, scope: !2251)
!2261 = !DILocation(line: 937, column: 36, scope: !2228, inlinedAt: !2260)
!2262 = !DILocation(line: 937, column: 48, scope: !2228, inlinedAt: !2260)
!2263 = !DILocation(line: 939, column: 10, scope: !2228, inlinedAt: !2260)
!2264 = !DILocation(line: 951, column: 3, scope: !2251)
!2265 = distinct !DISubprogram(name: "quotearg_n_style", scope: !154, file: !154, line: 955, type: !2266, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!6, !16, !112, !41}
!2268 = !{!2269, !2270, !2271, !2272}
!2269 = !DILocalVariable(name: "n", arg: 1, scope: !2265, file: !154, line: 955, type: !16)
!2270 = !DILocalVariable(name: "s", arg: 2, scope: !2265, file: !154, line: 955, type: !112)
!2271 = !DILocalVariable(name: "arg", arg: 3, scope: !2265, file: !154, line: 955, type: !41)
!2272 = !DILocalVariable(name: "o", scope: !2265, file: !154, line: 957, type: !1032)
!2273 = !DILocation(line: 955, column: 23, scope: !2265)
!2274 = !DILocation(line: 955, column: 45, scope: !2265)
!2275 = !DILocation(line: 955, column: 60, scope: !2265)
!2276 = !DILocation(line: 957, column: 3, scope: !2265)
!2277 = !DILocation(line: 957, column: 32, scope: !2265)
!2278 = !DILocalVariable(name: "style", arg: 1, scope: !2279, file: !154, line: 193, type: !112)
!2279 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !154, file: !154, line: 193, type: !2280, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!161, !112}
!2282 = !{!2278, !2283}
!2283 = !DILocalVariable(name: "o", scope: !2279, file: !154, line: 195, type: !161)
!2284 = !DILocation(line: 193, column: 48, scope: !2279, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 957, column: 36, scope: !2265)
!2286 = !DILocation(line: 195, column: 26, scope: !2279, inlinedAt: !2285)
!2287 = !{!2288}
!2288 = distinct !{!2288, !2289, !"quoting_options_from_style: argument 0"}
!2289 = distinct !{!2289, !"quoting_options_from_style"}
!2290 = !DILocation(line: 196, column: 13, scope: !2291, inlinedAt: !2285)
!2291 = distinct !DILexicalBlock(scope: !2279, file: !154, line: 196, column: 7)
!2292 = !DILocation(line: 196, column: 7, scope: !2279, inlinedAt: !2285)
!2293 = !DILocation(line: 197, column: 5, scope: !2291, inlinedAt: !2285)
!2294 = !DILocation(line: 198, column: 5, scope: !2279, inlinedAt: !2285)
!2295 = !DILocation(line: 198, column: 11, scope: !2279, inlinedAt: !2285)
!2296 = !DILocation(line: 958, column: 10, scope: !2265)
!2297 = !DILocation(line: 959, column: 1, scope: !2265)
!2298 = !DILocation(line: 958, column: 3, scope: !2265)
!2299 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !154, file: !154, line: 962, type: !2300, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!6, !16, !112, !41, !148}
!2302 = !{!2303, !2304, !2305, !2306, !2307}
!2303 = !DILocalVariable(name: "n", arg: 1, scope: !2299, file: !154, line: 962, type: !16)
!2304 = !DILocalVariable(name: "s", arg: 2, scope: !2299, file: !154, line: 962, type: !112)
!2305 = !DILocalVariable(name: "arg", arg: 3, scope: !2299, file: !154, line: 963, type: !41)
!2306 = !DILocalVariable(name: "argsize", arg: 4, scope: !2299, file: !154, line: 963, type: !148)
!2307 = !DILocalVariable(name: "o", scope: !2299, file: !154, line: 965, type: !1032)
!2308 = !DILocation(line: 962, column: 27, scope: !2299)
!2309 = !DILocation(line: 962, column: 49, scope: !2299)
!2310 = !DILocation(line: 963, column: 35, scope: !2299)
!2311 = !DILocation(line: 963, column: 47, scope: !2299)
!2312 = !DILocation(line: 965, column: 3, scope: !2299)
!2313 = !DILocation(line: 965, column: 32, scope: !2299)
!2314 = !DILocation(line: 193, column: 48, scope: !2279, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 965, column: 36, scope: !2299)
!2316 = !DILocation(line: 195, column: 26, scope: !2279, inlinedAt: !2315)
!2317 = !{!2318}
!2318 = distinct !{!2318, !2319, !"quoting_options_from_style: argument 0"}
!2319 = distinct !{!2319, !"quoting_options_from_style"}
!2320 = !DILocation(line: 196, column: 13, scope: !2291, inlinedAt: !2315)
!2321 = !DILocation(line: 196, column: 7, scope: !2279, inlinedAt: !2315)
!2322 = !DILocation(line: 197, column: 5, scope: !2291, inlinedAt: !2315)
!2323 = !DILocation(line: 198, column: 5, scope: !2279, inlinedAt: !2315)
!2324 = !DILocation(line: 198, column: 11, scope: !2279, inlinedAt: !2315)
!2325 = !DILocation(line: 966, column: 10, scope: !2299)
!2326 = !DILocation(line: 967, column: 1, scope: !2299)
!2327 = !DILocation(line: 966, column: 3, scope: !2299)
!2328 = distinct !DISubprogram(name: "quotearg_style", scope: !154, file: !154, line: 970, type: !2329, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!6, !112, !41}
!2331 = !{!2332, !2333}
!2332 = !DILocalVariable(name: "s", arg: 1, scope: !2328, file: !154, line: 970, type: !112)
!2333 = !DILocalVariable(name: "arg", arg: 2, scope: !2328, file: !154, line: 970, type: !41)
!2334 = !DILocation(line: 970, column: 36, scope: !2328)
!2335 = !DILocation(line: 970, column: 51, scope: !2328)
!2336 = !DILocation(line: 955, column: 23, scope: !2265, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 972, column: 10, scope: !2328)
!2338 = !DILocation(line: 955, column: 45, scope: !2265, inlinedAt: !2337)
!2339 = !DILocation(line: 955, column: 60, scope: !2265, inlinedAt: !2337)
!2340 = !DILocation(line: 957, column: 3, scope: !2265, inlinedAt: !2337)
!2341 = !DILocation(line: 957, column: 32, scope: !2265, inlinedAt: !2337)
!2342 = !DILocation(line: 193, column: 48, scope: !2279, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 957, column: 36, scope: !2265, inlinedAt: !2337)
!2344 = !DILocation(line: 195, column: 26, scope: !2279, inlinedAt: !2343)
!2345 = !{!2346}
!2346 = distinct !{!2346, !2347, !"quoting_options_from_style: argument 0"}
!2347 = distinct !{!2347, !"quoting_options_from_style"}
!2348 = !DILocation(line: 196, column: 13, scope: !2291, inlinedAt: !2343)
!2349 = !DILocation(line: 196, column: 7, scope: !2279, inlinedAt: !2343)
!2350 = !DILocation(line: 197, column: 5, scope: !2291, inlinedAt: !2343)
!2351 = !DILocation(line: 198, column: 5, scope: !2279, inlinedAt: !2343)
!2352 = !DILocation(line: 198, column: 11, scope: !2279, inlinedAt: !2343)
!2353 = !DILocation(line: 958, column: 10, scope: !2265, inlinedAt: !2337)
!2354 = !DILocation(line: 959, column: 1, scope: !2265, inlinedAt: !2337)
!2355 = !DILocation(line: 972, column: 3, scope: !2328)
!2356 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !154, file: !154, line: 976, type: !2357, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2359)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!6, !112, !41, !148}
!2359 = !{!2360, !2361, !2362}
!2360 = !DILocalVariable(name: "s", arg: 1, scope: !2356, file: !154, line: 976, type: !112)
!2361 = !DILocalVariable(name: "arg", arg: 2, scope: !2356, file: !154, line: 976, type: !41)
!2362 = !DILocalVariable(name: "argsize", arg: 3, scope: !2356, file: !154, line: 976, type: !148)
!2363 = !DILocation(line: 976, column: 40, scope: !2356)
!2364 = !DILocation(line: 976, column: 55, scope: !2356)
!2365 = !DILocation(line: 976, column: 67, scope: !2356)
!2366 = !DILocation(line: 962, column: 27, scope: !2299, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 978, column: 10, scope: !2356)
!2368 = !DILocation(line: 962, column: 49, scope: !2299, inlinedAt: !2367)
!2369 = !DILocation(line: 963, column: 35, scope: !2299, inlinedAt: !2367)
!2370 = !DILocation(line: 963, column: 47, scope: !2299, inlinedAt: !2367)
!2371 = !DILocation(line: 965, column: 3, scope: !2299, inlinedAt: !2367)
!2372 = !DILocation(line: 965, column: 32, scope: !2299, inlinedAt: !2367)
!2373 = !DILocation(line: 193, column: 48, scope: !2279, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 965, column: 36, scope: !2299, inlinedAt: !2367)
!2375 = !DILocation(line: 195, column: 26, scope: !2279, inlinedAt: !2374)
!2376 = !{!2377}
!2377 = distinct !{!2377, !2378, !"quoting_options_from_style: argument 0"}
!2378 = distinct !{!2378, !"quoting_options_from_style"}
!2379 = !DILocation(line: 196, column: 13, scope: !2291, inlinedAt: !2374)
!2380 = !DILocation(line: 196, column: 7, scope: !2279, inlinedAt: !2374)
!2381 = !DILocation(line: 197, column: 5, scope: !2291, inlinedAt: !2374)
!2382 = !DILocation(line: 198, column: 5, scope: !2279, inlinedAt: !2374)
!2383 = !DILocation(line: 198, column: 11, scope: !2279, inlinedAt: !2374)
!2384 = !DILocation(line: 966, column: 10, scope: !2299, inlinedAt: !2367)
!2385 = !DILocation(line: 967, column: 1, scope: !2299, inlinedAt: !2367)
!2386 = !DILocation(line: 978, column: 3, scope: !2356)
!2387 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !154, file: !154, line: 982, type: !2388, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!6, !41, !148, !7}
!2390 = !{!2391, !2392, !2393, !2394}
!2391 = !DILocalVariable(name: "arg", arg: 1, scope: !2387, file: !154, line: 982, type: !41)
!2392 = !DILocalVariable(name: "argsize", arg: 2, scope: !2387, file: !154, line: 982, type: !148)
!2393 = !DILocalVariable(name: "ch", arg: 3, scope: !2387, file: !154, line: 982, type: !7)
!2394 = !DILocalVariable(name: "options", scope: !2387, file: !154, line: 984, type: !161)
!2395 = !DILocation(line: 982, column: 32, scope: !2387)
!2396 = !DILocation(line: 982, column: 44, scope: !2387)
!2397 = !DILocation(line: 982, column: 58, scope: !2387)
!2398 = !DILocation(line: 984, column: 3, scope: !2387)
!2399 = !DILocation(line: 985, column: 13, scope: !2387)
!2400 = !{i64 0, i64 4, !830, i64 4, i64 4, !675, i64 8, i64 32, !830, i64 40, i64 8, !668, i64 48, i64 8, !668}
!2401 = !DILocation(line: 984, column: 26, scope: !2387)
!2402 = !DILocation(line: 152, column: 43, scope: !1053, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 986, column: 3, scope: !2387)
!2404 = !DILocation(line: 152, column: 51, scope: !1053, inlinedAt: !2403)
!2405 = !DILocation(line: 152, column: 58, scope: !1053, inlinedAt: !2403)
!2406 = !DILocation(line: 154, column: 17, scope: !1053, inlinedAt: !2403)
!2407 = !DILocation(line: 156, column: 62, scope: !1053, inlinedAt: !2403)
!2408 = !DILocation(line: 156, column: 57, scope: !1053, inlinedAt: !2403)
!2409 = !DILocation(line: 155, column: 17, scope: !1053, inlinedAt: !2403)
!2410 = !DILocation(line: 157, column: 15, scope: !1053, inlinedAt: !2403)
!2411 = !DILocation(line: 157, column: 7, scope: !1053, inlinedAt: !2403)
!2412 = !DILocation(line: 158, column: 12, scope: !1053, inlinedAt: !2403)
!2413 = !DILocation(line: 158, column: 15, scope: !1053, inlinedAt: !2403)
!2414 = !DILocation(line: 158, column: 25, scope: !1053, inlinedAt: !2403)
!2415 = !DILocation(line: 158, column: 7, scope: !1053, inlinedAt: !2403)
!2416 = !DILocation(line: 159, column: 18, scope: !1053, inlinedAt: !2403)
!2417 = !DILocation(line: 159, column: 23, scope: !1053, inlinedAt: !2403)
!2418 = !DILocation(line: 159, column: 6, scope: !1053, inlinedAt: !2403)
!2419 = !DILocation(line: 987, column: 10, scope: !2387)
!2420 = !DILocation(line: 988, column: 1, scope: !2387)
!2421 = !DILocation(line: 987, column: 3, scope: !2387)
!2422 = distinct !DISubprogram(name: "quotearg_char", scope: !154, file: !154, line: 991, type: !2423, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!6, !41, !7}
!2425 = !{!2426, !2427}
!2426 = !DILocalVariable(name: "arg", arg: 1, scope: !2422, file: !154, line: 991, type: !41)
!2427 = !DILocalVariable(name: "ch", arg: 2, scope: !2422, file: !154, line: 991, type: !7)
!2428 = !DILocation(line: 991, column: 28, scope: !2422)
!2429 = !DILocation(line: 991, column: 38, scope: !2422)
!2430 = !DILocation(line: 982, column: 32, scope: !2387, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 993, column: 10, scope: !2422)
!2432 = !DILocation(line: 982, column: 44, scope: !2387, inlinedAt: !2431)
!2433 = !DILocation(line: 982, column: 58, scope: !2387, inlinedAt: !2431)
!2434 = !DILocation(line: 984, column: 3, scope: !2387, inlinedAt: !2431)
!2435 = !DILocation(line: 985, column: 13, scope: !2387, inlinedAt: !2431)
!2436 = !DILocation(line: 984, column: 26, scope: !2387, inlinedAt: !2431)
!2437 = !DILocation(line: 152, column: 43, scope: !1053, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 986, column: 3, scope: !2387, inlinedAt: !2431)
!2439 = !DILocation(line: 152, column: 51, scope: !1053, inlinedAt: !2438)
!2440 = !DILocation(line: 152, column: 58, scope: !1053, inlinedAt: !2438)
!2441 = !DILocation(line: 154, column: 17, scope: !1053, inlinedAt: !2438)
!2442 = !DILocation(line: 156, column: 62, scope: !1053, inlinedAt: !2438)
!2443 = !DILocation(line: 156, column: 57, scope: !1053, inlinedAt: !2438)
!2444 = !DILocation(line: 155, column: 17, scope: !1053, inlinedAt: !2438)
!2445 = !DILocation(line: 157, column: 15, scope: !1053, inlinedAt: !2438)
!2446 = !DILocation(line: 157, column: 7, scope: !1053, inlinedAt: !2438)
!2447 = !DILocation(line: 158, column: 12, scope: !1053, inlinedAt: !2438)
!2448 = !DILocation(line: 158, column: 15, scope: !1053, inlinedAt: !2438)
!2449 = !DILocation(line: 158, column: 25, scope: !1053, inlinedAt: !2438)
!2450 = !DILocation(line: 158, column: 7, scope: !1053, inlinedAt: !2438)
!2451 = !DILocation(line: 159, column: 18, scope: !1053, inlinedAt: !2438)
!2452 = !DILocation(line: 159, column: 23, scope: !1053, inlinedAt: !2438)
!2453 = !DILocation(line: 159, column: 6, scope: !1053, inlinedAt: !2438)
!2454 = !DILocation(line: 987, column: 10, scope: !2387, inlinedAt: !2431)
!2455 = !DILocation(line: 988, column: 1, scope: !2387, inlinedAt: !2431)
!2456 = !DILocation(line: 993, column: 3, scope: !2422)
!2457 = distinct !DISubprogram(name: "quotearg_colon", scope: !154, file: !154, line: 997, type: !2241, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2458)
!2458 = !{!2459}
!2459 = !DILocalVariable(name: "arg", arg: 1, scope: !2457, file: !154, line: 997, type: !41)
!2460 = !DILocation(line: 997, column: 29, scope: !2457)
!2461 = !DILocation(line: 991, column: 28, scope: !2422, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 999, column: 10, scope: !2457)
!2463 = !DILocation(line: 991, column: 38, scope: !2422, inlinedAt: !2462)
!2464 = !DILocation(line: 982, column: 32, scope: !2387, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 993, column: 10, scope: !2422, inlinedAt: !2462)
!2466 = !DILocation(line: 982, column: 44, scope: !2387, inlinedAt: !2465)
!2467 = !DILocation(line: 982, column: 58, scope: !2387, inlinedAt: !2465)
!2468 = !DILocation(line: 984, column: 3, scope: !2387, inlinedAt: !2465)
!2469 = !DILocation(line: 985, column: 13, scope: !2387, inlinedAt: !2465)
!2470 = !DILocation(line: 984, column: 26, scope: !2387, inlinedAt: !2465)
!2471 = !DILocation(line: 152, column: 43, scope: !1053, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 986, column: 3, scope: !2387, inlinedAt: !2465)
!2473 = !DILocation(line: 152, column: 51, scope: !1053, inlinedAt: !2472)
!2474 = !DILocation(line: 152, column: 58, scope: !1053, inlinedAt: !2472)
!2475 = !DILocation(line: 154, column: 17, scope: !1053, inlinedAt: !2472)
!2476 = !DILocation(line: 156, column: 57, scope: !1053, inlinedAt: !2472)
!2477 = !DILocation(line: 155, column: 17, scope: !1053, inlinedAt: !2472)
!2478 = !DILocation(line: 157, column: 7, scope: !1053, inlinedAt: !2472)
!2479 = !DILocation(line: 158, column: 12, scope: !1053, inlinedAt: !2472)
!2480 = !DILocation(line: 159, column: 6, scope: !1053, inlinedAt: !2472)
!2481 = !DILocation(line: 987, column: 10, scope: !2387, inlinedAt: !2465)
!2482 = !DILocation(line: 988, column: 1, scope: !2387, inlinedAt: !2465)
!2483 = !DILocation(line: 999, column: 3, scope: !2457)
!2484 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !154, file: !154, line: 1003, type: !2252, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2485)
!2485 = !{!2486, !2487}
!2486 = !DILocalVariable(name: "arg", arg: 1, scope: !2484, file: !154, line: 1003, type: !41)
!2487 = !DILocalVariable(name: "argsize", arg: 2, scope: !2484, file: !154, line: 1003, type: !148)
!2488 = !DILocation(line: 1003, column: 33, scope: !2484)
!2489 = !DILocation(line: 1003, column: 45, scope: !2484)
!2490 = !DILocation(line: 982, column: 32, scope: !2387, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 1005, column: 10, scope: !2484)
!2492 = !DILocation(line: 982, column: 44, scope: !2387, inlinedAt: !2491)
!2493 = !DILocation(line: 982, column: 58, scope: !2387, inlinedAt: !2491)
!2494 = !DILocation(line: 984, column: 3, scope: !2387, inlinedAt: !2491)
!2495 = !DILocation(line: 985, column: 13, scope: !2387, inlinedAt: !2491)
!2496 = !DILocation(line: 984, column: 26, scope: !2387, inlinedAt: !2491)
!2497 = !DILocation(line: 152, column: 43, scope: !1053, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 986, column: 3, scope: !2387, inlinedAt: !2491)
!2499 = !DILocation(line: 152, column: 51, scope: !1053, inlinedAt: !2498)
!2500 = !DILocation(line: 152, column: 58, scope: !1053, inlinedAt: !2498)
!2501 = !DILocation(line: 154, column: 17, scope: !1053, inlinedAt: !2498)
!2502 = !DILocation(line: 156, column: 57, scope: !1053, inlinedAt: !2498)
!2503 = !DILocation(line: 155, column: 17, scope: !1053, inlinedAt: !2498)
!2504 = !DILocation(line: 157, column: 7, scope: !1053, inlinedAt: !2498)
!2505 = !DILocation(line: 158, column: 12, scope: !1053, inlinedAt: !2498)
!2506 = !DILocation(line: 159, column: 6, scope: !1053, inlinedAt: !2498)
!2507 = !DILocation(line: 987, column: 10, scope: !2387, inlinedAt: !2491)
!2508 = !DILocation(line: 988, column: 1, scope: !2387, inlinedAt: !2491)
!2509 = !DILocation(line: 1005, column: 3, scope: !2484)
!2510 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !154, file: !154, line: 1009, type: !2266, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2511)
!2511 = !{!2512, !2513, !2514, !2515}
!2512 = !DILocalVariable(name: "n", arg: 1, scope: !2510, file: !154, line: 1009, type: !16)
!2513 = !DILocalVariable(name: "s", arg: 2, scope: !2510, file: !154, line: 1009, type: !112)
!2514 = !DILocalVariable(name: "arg", arg: 3, scope: !2510, file: !154, line: 1009, type: !41)
!2515 = !DILocalVariable(name: "options", scope: !2510, file: !154, line: 1011, type: !161)
!2516 = !DILocation(line: 195, column: 26, scope: !2279, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 1012, column: 13, scope: !2510)
!2518 = !DILocation(line: 1009, column: 29, scope: !2510)
!2519 = !DILocation(line: 1009, column: 51, scope: !2510)
!2520 = !DILocation(line: 1009, column: 66, scope: !2510)
!2521 = !DILocation(line: 1011, column: 3, scope: !2510)
!2522 = !DILocation(line: 1012, column: 13, scope: !2510)
!2523 = !DILocation(line: 193, column: 48, scope: !2279, inlinedAt: !2517)
!2524 = !{!2525}
!2525 = distinct !{!2525, !2526, !"quoting_options_from_style: argument 0"}
!2526 = distinct !{!2526, !"quoting_options_from_style"}
!2527 = !DILocation(line: 196, column: 13, scope: !2291, inlinedAt: !2517)
!2528 = !DILocation(line: 196, column: 7, scope: !2279, inlinedAt: !2517)
!2529 = !DILocation(line: 197, column: 5, scope: !2291, inlinedAt: !2517)
!2530 = !DILocation(line: 1011, column: 26, scope: !2510)
!2531 = !DILocation(line: 152, column: 43, scope: !1053, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 1013, column: 3, scope: !2510)
!2533 = !DILocation(line: 152, column: 51, scope: !1053, inlinedAt: !2532)
!2534 = !DILocation(line: 152, column: 58, scope: !1053, inlinedAt: !2532)
!2535 = !DILocation(line: 154, column: 17, scope: !1053, inlinedAt: !2532)
!2536 = !DILocation(line: 156, column: 57, scope: !1053, inlinedAt: !2532)
!2537 = !DILocation(line: 155, column: 17, scope: !1053, inlinedAt: !2532)
!2538 = !DILocation(line: 157, column: 7, scope: !1053, inlinedAt: !2532)
!2539 = !DILocation(line: 158, column: 12, scope: !1053, inlinedAt: !2532)
!2540 = !DILocation(line: 159, column: 6, scope: !1053, inlinedAt: !2532)
!2541 = !DILocation(line: 1014, column: 10, scope: !2510)
!2542 = !DILocation(line: 1015, column: 1, scope: !2510)
!2543 = !DILocation(line: 1014, column: 3, scope: !2510)
!2544 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !154, file: !154, line: 1018, type: !2545, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!6, !16, !41, !41, !41}
!2547 = !{!2548, !2549, !2550, !2551}
!2548 = !DILocalVariable(name: "n", arg: 1, scope: !2544, file: !154, line: 1018, type: !16)
!2549 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2544, file: !154, line: 1018, type: !41)
!2550 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2544, file: !154, line: 1019, type: !41)
!2551 = !DILocalVariable(name: "arg", arg: 4, scope: !2544, file: !154, line: 1019, type: !41)
!2552 = !DILocation(line: 1018, column: 24, scope: !2544)
!2553 = !DILocation(line: 1018, column: 39, scope: !2544)
!2554 = !DILocation(line: 1019, column: 32, scope: !2544)
!2555 = !DILocation(line: 1019, column: 57, scope: !2544)
!2556 = !DILocalVariable(name: "n", arg: 1, scope: !2557, file: !154, line: 1026, type: !16)
!2557 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !154, file: !154, line: 1026, type: !2558, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!6, !16, !41, !41, !41, !148}
!2560 = !{!2556, !2561, !2562, !2563, !2564, !2565}
!2561 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2557, file: !154, line: 1026, type: !41)
!2562 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2557, file: !154, line: 1027, type: !41)
!2563 = !DILocalVariable(name: "arg", arg: 4, scope: !2557, file: !154, line: 1028, type: !41)
!2564 = !DILocalVariable(name: "argsize", arg: 5, scope: !2557, file: !154, line: 1028, type: !148)
!2565 = !DILocalVariable(name: "o", scope: !2557, file: !154, line: 1030, type: !161)
!2566 = !DILocation(line: 1026, column: 28, scope: !2557, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 1021, column: 10, scope: !2544)
!2568 = !DILocation(line: 1026, column: 43, scope: !2557, inlinedAt: !2567)
!2569 = !DILocation(line: 1027, column: 36, scope: !2557, inlinedAt: !2567)
!2570 = !DILocation(line: 1028, column: 36, scope: !2557, inlinedAt: !2567)
!2571 = !DILocation(line: 1028, column: 48, scope: !2557, inlinedAt: !2567)
!2572 = !DILocation(line: 1030, column: 3, scope: !2557, inlinedAt: !2567)
!2573 = !DILocation(line: 1030, column: 30, scope: !2557, inlinedAt: !2567)
!2574 = !DILocation(line: 1030, column: 26, scope: !2557, inlinedAt: !2567)
!2575 = !DILocation(line: 179, column: 45, scope: !1101, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 1031, column: 3, scope: !2557, inlinedAt: !2567)
!2577 = !DILocation(line: 180, column: 33, scope: !1101, inlinedAt: !2576)
!2578 = !DILocation(line: 180, column: 57, scope: !1101, inlinedAt: !2576)
!2579 = !DILocation(line: 184, column: 6, scope: !1101, inlinedAt: !2576)
!2580 = !DILocation(line: 184, column: 12, scope: !1101, inlinedAt: !2576)
!2581 = !DILocation(line: 185, column: 8, scope: !1117, inlinedAt: !2576)
!2582 = !DILocation(line: 185, column: 23, scope: !1117, inlinedAt: !2576)
!2583 = !DILocation(line: 185, column: 19, scope: !1117, inlinedAt: !2576)
!2584 = !DILocation(line: 186, column: 5, scope: !1117, inlinedAt: !2576)
!2585 = !DILocation(line: 187, column: 6, scope: !1101, inlinedAt: !2576)
!2586 = !DILocation(line: 187, column: 17, scope: !1101, inlinedAt: !2576)
!2587 = !DILocation(line: 188, column: 6, scope: !1101, inlinedAt: !2576)
!2588 = !DILocation(line: 188, column: 18, scope: !1101, inlinedAt: !2576)
!2589 = !DILocation(line: 1032, column: 10, scope: !2557, inlinedAt: !2567)
!2590 = !DILocation(line: 1033, column: 1, scope: !2557, inlinedAt: !2567)
!2591 = !DILocation(line: 1021, column: 3, scope: !2544)
!2592 = !DILocation(line: 1026, column: 28, scope: !2557)
!2593 = !DILocation(line: 1026, column: 43, scope: !2557)
!2594 = !DILocation(line: 1027, column: 36, scope: !2557)
!2595 = !DILocation(line: 1028, column: 36, scope: !2557)
!2596 = !DILocation(line: 1028, column: 48, scope: !2557)
!2597 = !DILocation(line: 1030, column: 3, scope: !2557)
!2598 = !DILocation(line: 1030, column: 30, scope: !2557)
!2599 = !DILocation(line: 1030, column: 26, scope: !2557)
!2600 = !DILocation(line: 179, column: 45, scope: !1101, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 1031, column: 3, scope: !2557)
!2602 = !DILocation(line: 180, column: 33, scope: !1101, inlinedAt: !2601)
!2603 = !DILocation(line: 180, column: 57, scope: !1101, inlinedAt: !2601)
!2604 = !DILocation(line: 184, column: 6, scope: !1101, inlinedAt: !2601)
!2605 = !DILocation(line: 184, column: 12, scope: !1101, inlinedAt: !2601)
!2606 = !DILocation(line: 185, column: 8, scope: !1117, inlinedAt: !2601)
!2607 = !DILocation(line: 185, column: 23, scope: !1117, inlinedAt: !2601)
!2608 = !DILocation(line: 185, column: 19, scope: !1117, inlinedAt: !2601)
!2609 = !DILocation(line: 186, column: 5, scope: !1117, inlinedAt: !2601)
!2610 = !DILocation(line: 187, column: 6, scope: !1101, inlinedAt: !2601)
!2611 = !DILocation(line: 187, column: 17, scope: !1101, inlinedAt: !2601)
!2612 = !DILocation(line: 188, column: 6, scope: !1101, inlinedAt: !2601)
!2613 = !DILocation(line: 188, column: 18, scope: !1101, inlinedAt: !2601)
!2614 = !DILocation(line: 1032, column: 10, scope: !2557)
!2615 = !DILocation(line: 1033, column: 1, scope: !2557)
!2616 = !DILocation(line: 1032, column: 3, scope: !2557)
!2617 = distinct !DISubprogram(name: "quotearg_custom", scope: !154, file: !154, line: 1036, type: !2618, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!6, !41, !41, !41}
!2620 = !{!2621, !2622, !2623}
!2621 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2617, file: !154, line: 1036, type: !41)
!2622 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2617, file: !154, line: 1036, type: !41)
!2623 = !DILocalVariable(name: "arg", arg: 3, scope: !2617, file: !154, line: 1037, type: !41)
!2624 = !DILocation(line: 1036, column: 30, scope: !2617)
!2625 = !DILocation(line: 1036, column: 54, scope: !2617)
!2626 = !DILocation(line: 1037, column: 30, scope: !2617)
!2627 = !DILocation(line: 1018, column: 24, scope: !2544, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 1039, column: 10, scope: !2617)
!2629 = !DILocation(line: 1018, column: 39, scope: !2544, inlinedAt: !2628)
!2630 = !DILocation(line: 1019, column: 32, scope: !2544, inlinedAt: !2628)
!2631 = !DILocation(line: 1019, column: 57, scope: !2544, inlinedAt: !2628)
!2632 = !DILocation(line: 1026, column: 28, scope: !2557, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 1021, column: 10, scope: !2544, inlinedAt: !2628)
!2634 = !DILocation(line: 1026, column: 43, scope: !2557, inlinedAt: !2633)
!2635 = !DILocation(line: 1027, column: 36, scope: !2557, inlinedAt: !2633)
!2636 = !DILocation(line: 1028, column: 36, scope: !2557, inlinedAt: !2633)
!2637 = !DILocation(line: 1028, column: 48, scope: !2557, inlinedAt: !2633)
!2638 = !DILocation(line: 1030, column: 3, scope: !2557, inlinedAt: !2633)
!2639 = !DILocation(line: 1030, column: 30, scope: !2557, inlinedAt: !2633)
!2640 = !DILocation(line: 1030, column: 26, scope: !2557, inlinedAt: !2633)
!2641 = !DILocation(line: 179, column: 45, scope: !1101, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 1031, column: 3, scope: !2557, inlinedAt: !2633)
!2643 = !DILocation(line: 180, column: 33, scope: !1101, inlinedAt: !2642)
!2644 = !DILocation(line: 180, column: 57, scope: !1101, inlinedAt: !2642)
!2645 = !DILocation(line: 184, column: 6, scope: !1101, inlinedAt: !2642)
!2646 = !DILocation(line: 184, column: 12, scope: !1101, inlinedAt: !2642)
!2647 = !DILocation(line: 185, column: 8, scope: !1117, inlinedAt: !2642)
!2648 = !DILocation(line: 185, column: 23, scope: !1117, inlinedAt: !2642)
!2649 = !DILocation(line: 185, column: 19, scope: !1117, inlinedAt: !2642)
!2650 = !DILocation(line: 186, column: 5, scope: !1117, inlinedAt: !2642)
!2651 = !DILocation(line: 187, column: 6, scope: !1101, inlinedAt: !2642)
!2652 = !DILocation(line: 187, column: 17, scope: !1101, inlinedAt: !2642)
!2653 = !DILocation(line: 188, column: 6, scope: !1101, inlinedAt: !2642)
!2654 = !DILocation(line: 188, column: 18, scope: !1101, inlinedAt: !2642)
!2655 = !DILocation(line: 1032, column: 10, scope: !2557, inlinedAt: !2633)
!2656 = !DILocation(line: 1033, column: 1, scope: !2557, inlinedAt: !2633)
!2657 = !DILocation(line: 1039, column: 3, scope: !2617)
!2658 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !154, file: !154, line: 1043, type: !2659, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!6, !41, !41, !41, !148}
!2661 = !{!2662, !2663, !2664, !2665}
!2662 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2658, file: !154, line: 1043, type: !41)
!2663 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2658, file: !154, line: 1043, type: !41)
!2664 = !DILocalVariable(name: "arg", arg: 3, scope: !2658, file: !154, line: 1044, type: !41)
!2665 = !DILocalVariable(name: "argsize", arg: 4, scope: !2658, file: !154, line: 1044, type: !148)
!2666 = !DILocation(line: 1043, column: 34, scope: !2658)
!2667 = !DILocation(line: 1043, column: 58, scope: !2658)
!2668 = !DILocation(line: 1044, column: 34, scope: !2658)
!2669 = !DILocation(line: 1044, column: 46, scope: !2658)
!2670 = !DILocation(line: 1026, column: 28, scope: !2557, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 1046, column: 10, scope: !2658)
!2672 = !DILocation(line: 1026, column: 43, scope: !2557, inlinedAt: !2671)
!2673 = !DILocation(line: 1027, column: 36, scope: !2557, inlinedAt: !2671)
!2674 = !DILocation(line: 1028, column: 36, scope: !2557, inlinedAt: !2671)
!2675 = !DILocation(line: 1028, column: 48, scope: !2557, inlinedAt: !2671)
!2676 = !DILocation(line: 1030, column: 3, scope: !2557, inlinedAt: !2671)
!2677 = !DILocation(line: 1030, column: 30, scope: !2557, inlinedAt: !2671)
!2678 = !DILocation(line: 1030, column: 26, scope: !2557, inlinedAt: !2671)
!2679 = !DILocation(line: 179, column: 45, scope: !1101, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 1031, column: 3, scope: !2557, inlinedAt: !2671)
!2681 = !DILocation(line: 180, column: 33, scope: !1101, inlinedAt: !2680)
!2682 = !DILocation(line: 180, column: 57, scope: !1101, inlinedAt: !2680)
!2683 = !DILocation(line: 184, column: 6, scope: !1101, inlinedAt: !2680)
!2684 = !DILocation(line: 184, column: 12, scope: !1101, inlinedAt: !2680)
!2685 = !DILocation(line: 185, column: 8, scope: !1117, inlinedAt: !2680)
!2686 = !DILocation(line: 185, column: 23, scope: !1117, inlinedAt: !2680)
!2687 = !DILocation(line: 185, column: 19, scope: !1117, inlinedAt: !2680)
!2688 = !DILocation(line: 186, column: 5, scope: !1117, inlinedAt: !2680)
!2689 = !DILocation(line: 187, column: 6, scope: !1101, inlinedAt: !2680)
!2690 = !DILocation(line: 187, column: 17, scope: !1101, inlinedAt: !2680)
!2691 = !DILocation(line: 188, column: 6, scope: !1101, inlinedAt: !2680)
!2692 = !DILocation(line: 188, column: 18, scope: !1101, inlinedAt: !2680)
!2693 = !DILocation(line: 1032, column: 10, scope: !2557, inlinedAt: !2671)
!2694 = !DILocation(line: 1033, column: 1, scope: !2557, inlinedAt: !2671)
!2695 = !DILocation(line: 1046, column: 3, scope: !2658)
!2696 = distinct !DISubprogram(name: "quote_n_mem", scope: !154, file: !154, line: 1061, type: !2697, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2699)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!41, !16, !41, !148}
!2699 = !{!2700, !2701, !2702}
!2700 = !DILocalVariable(name: "n", arg: 1, scope: !2696, file: !154, line: 1061, type: !16)
!2701 = !DILocalVariable(name: "arg", arg: 2, scope: !2696, file: !154, line: 1061, type: !41)
!2702 = !DILocalVariable(name: "argsize", arg: 3, scope: !2696, file: !154, line: 1061, type: !148)
!2703 = !DILocation(line: 1061, column: 18, scope: !2696)
!2704 = !DILocation(line: 1061, column: 33, scope: !2696)
!2705 = !DILocation(line: 1061, column: 45, scope: !2696)
!2706 = !DILocation(line: 1063, column: 10, scope: !2696)
!2707 = !DILocation(line: 1063, column: 3, scope: !2696)
!2708 = distinct !DISubprogram(name: "quote_mem", scope: !154, file: !154, line: 1067, type: !2709, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!41, !41, !148}
!2711 = !{!2712, !2713}
!2712 = !DILocalVariable(name: "arg", arg: 1, scope: !2708, file: !154, line: 1067, type: !41)
!2713 = !DILocalVariable(name: "argsize", arg: 2, scope: !2708, file: !154, line: 1067, type: !148)
!2714 = !DILocation(line: 1067, column: 24, scope: !2708)
!2715 = !DILocation(line: 1067, column: 36, scope: !2708)
!2716 = !DILocation(line: 1061, column: 18, scope: !2696, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 1069, column: 10, scope: !2708)
!2718 = !DILocation(line: 1061, column: 33, scope: !2696, inlinedAt: !2717)
!2719 = !DILocation(line: 1061, column: 45, scope: !2696, inlinedAt: !2717)
!2720 = !DILocation(line: 1063, column: 10, scope: !2696, inlinedAt: !2717)
!2721 = !DILocation(line: 1069, column: 3, scope: !2708)
!2722 = distinct !DISubprogram(name: "quote_n", scope: !154, file: !154, line: 1073, type: !2723, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!41, !16, !41}
!2725 = !{!2726, !2727}
!2726 = !DILocalVariable(name: "n", arg: 1, scope: !2722, file: !154, line: 1073, type: !16)
!2727 = !DILocalVariable(name: "arg", arg: 2, scope: !2722, file: !154, line: 1073, type: !41)
!2728 = !DILocation(line: 1073, column: 14, scope: !2722)
!2729 = !DILocation(line: 1073, column: 29, scope: !2722)
!2730 = !DILocation(line: 1061, column: 18, scope: !2696, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 1075, column: 10, scope: !2722)
!2732 = !DILocation(line: 1061, column: 33, scope: !2696, inlinedAt: !2731)
!2733 = !DILocation(line: 1061, column: 45, scope: !2696, inlinedAt: !2731)
!2734 = !DILocation(line: 1063, column: 10, scope: !2696, inlinedAt: !2731)
!2735 = !DILocation(line: 1075, column: 3, scope: !2722)
!2736 = distinct !DISubprogram(name: "quote", scope: !154, file: !154, line: 1079, type: !2737, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !109, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!41, !41}
!2739 = !{!2740}
!2740 = !DILocalVariable(name: "arg", arg: 1, scope: !2736, file: !154, line: 1079, type: !41)
!2741 = !DILocation(line: 1079, column: 20, scope: !2736)
!2742 = !DILocation(line: 1073, column: 14, scope: !2722, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 1081, column: 10, scope: !2736)
!2744 = !DILocation(line: 1073, column: 29, scope: !2722, inlinedAt: !2743)
!2745 = !DILocation(line: 1061, column: 18, scope: !2696, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 1075, column: 10, scope: !2722, inlinedAt: !2743)
!2747 = !DILocation(line: 1061, column: 33, scope: !2696, inlinedAt: !2746)
!2748 = !DILocation(line: 1061, column: 45, scope: !2696, inlinedAt: !2746)
!2749 = !DILocation(line: 1063, column: 10, scope: !2696, inlinedAt: !2746)
!2750 = !DILocation(line: 1081, column: 3, scope: !2736)
!2751 = distinct !DISubprogram(name: "version_etc_arn", scope: !204, file: !204, line: 62, type: !2752, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !2810)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{null, !2754, !41, !41, !41, !2809, !148}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2756, line: 7, baseType: !2757)
!2756 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2758, line: 49, size: 1728, elements: !2759)
!2758 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2759 = !{!2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2775, !2777, !2778, !2779, !2783, !2784, !2786, !2790, !2793, !2795, !2798, !2801, !2802, !2803, !2804, !2805}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2757, file: !2758, line: 51, baseType: !16, size: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2757, file: !2758, line: 54, baseType: !6, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2757, file: !2758, line: 55, baseType: !6, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2757, file: !2758, line: 56, baseType: !6, size: 64, offset: 192)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2757, file: !2758, line: 57, baseType: !6, size: 64, offset: 256)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2757, file: !2758, line: 58, baseType: !6, size: 64, offset: 320)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2757, file: !2758, line: 59, baseType: !6, size: 64, offset: 384)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2757, file: !2758, line: 60, baseType: !6, size: 64, offset: 448)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2757, file: !2758, line: 61, baseType: !6, size: 64, offset: 512)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2757, file: !2758, line: 64, baseType: !6, size: 64, offset: 576)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2757, file: !2758, line: 65, baseType: !6, size: 64, offset: 640)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2757, file: !2758, line: 66, baseType: !6, size: 64, offset: 704)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2757, file: !2758, line: 68, baseType: !2773, size: 64, offset: 768)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2758, line: 36, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2757, file: !2758, line: 70, baseType: !2776, size: 64, offset: 832)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2757, file: !2758, line: 72, baseType: !16, size: 32, offset: 896)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2757, file: !2758, line: 73, baseType: !16, size: 32, offset: 928)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2757, file: !2758, line: 74, baseType: !2780, size: 64, offset: 960)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2781, line: 150, baseType: !2782)
!2781 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2782 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2757, file: !2758, line: 77, baseType: !147, size: 16, offset: 1024)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2757, file: !2758, line: 78, baseType: !2785, size: 8, offset: 1040)
!2785 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2757, file: !2758, line: 79, baseType: !2787, size: 8, offset: 1048)
!2787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2788)
!2788 = !{!2789}
!2789 = !DISubrange(count: 1)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2757, file: !2758, line: 81, baseType: !2791, size: 64, offset: 1088)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2758, line: 43, baseType: null)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2757, file: !2758, line: 89, baseType: !2794, size: 64, offset: 1152)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2781, line: 151, baseType: !2782)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2757, file: !2758, line: 91, baseType: !2796, size: 64, offset: 1216)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2758, line: 37, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2757, file: !2758, line: 92, baseType: !2799, size: 64, offset: 1280)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2758, line: 38, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2757, file: !2758, line: 93, baseType: !2776, size: 64, offset: 1344)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2757, file: !2758, line: 94, baseType: !8, size: 64, offset: 1408)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2757, file: !2758, line: 95, baseType: !148, size: 64, offset: 1472)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2757, file: !2758, line: 96, baseType: !16, size: 32, offset: 1536)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2757, file: !2758, line: 98, baseType: !2806, size: 160, offset: 1568)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !2807)
!2807 = !{!2808}
!2808 = !DISubrange(count: 20)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!2810 = !{!2811, !2812, !2813, !2814, !2815, !2816}
!2811 = !DILocalVariable(name: "stream", arg: 1, scope: !2751, file: !204, line: 62, type: !2754)
!2812 = !DILocalVariable(name: "command_name", arg: 2, scope: !2751, file: !204, line: 63, type: !41)
!2813 = !DILocalVariable(name: "package", arg: 3, scope: !2751, file: !204, line: 63, type: !41)
!2814 = !DILocalVariable(name: "version", arg: 4, scope: !2751, file: !204, line: 64, type: !41)
!2815 = !DILocalVariable(name: "authors", arg: 5, scope: !2751, file: !204, line: 65, type: !2809)
!2816 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2751, file: !204, line: 65, type: !148)
!2817 = !DILocation(line: 62, column: 24, scope: !2751)
!2818 = !DILocation(line: 63, column: 30, scope: !2751)
!2819 = !DILocation(line: 63, column: 56, scope: !2751)
!2820 = !DILocation(line: 64, column: 30, scope: !2751)
!2821 = !DILocation(line: 65, column: 39, scope: !2751)
!2822 = !DILocation(line: 65, column: 55, scope: !2751)
!2823 = !DILocation(line: 67, column: 7, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2751, file: !204, line: 67, column: 7)
!2825 = !DILocation(line: 67, column: 7, scope: !2751)
!2826 = !DILocation(line: 68, column: 5, scope: !2824)
!2827 = !DILocation(line: 70, column: 5, scope: !2824)
!2828 = !DILocation(line: 84, column: 3, scope: !2751)
!2829 = !DILocation(line: 86, column: 3, scope: !2751)
!2830 = !DILocation(line: 95, column: 3, scope: !2751)
!2831 = !DILocation(line: 99, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2751, file: !204, line: 96, column: 5)
!2833 = !DILocation(line: 102, column: 7, scope: !2832)
!2834 = !DILocation(line: 103, column: 7, scope: !2832)
!2835 = !DILocation(line: 106, column: 7, scope: !2832)
!2836 = !DILocation(line: 107, column: 7, scope: !2832)
!2837 = !DILocation(line: 110, column: 7, scope: !2832)
!2838 = !DILocation(line: 112, column: 7, scope: !2832)
!2839 = !DILocation(line: 117, column: 7, scope: !2832)
!2840 = !DILocation(line: 119, column: 7, scope: !2832)
!2841 = !DILocation(line: 124, column: 7, scope: !2832)
!2842 = !DILocation(line: 126, column: 7, scope: !2832)
!2843 = !DILocation(line: 131, column: 7, scope: !2832)
!2844 = !DILocation(line: 134, column: 7, scope: !2832)
!2845 = !DILocation(line: 139, column: 7, scope: !2832)
!2846 = !DILocation(line: 142, column: 7, scope: !2832)
!2847 = !DILocation(line: 147, column: 7, scope: !2832)
!2848 = !DILocation(line: 151, column: 7, scope: !2832)
!2849 = !DILocation(line: 156, column: 7, scope: !2832)
!2850 = !DILocation(line: 160, column: 7, scope: !2832)
!2851 = !DILocation(line: 167, column: 7, scope: !2832)
!2852 = !DILocation(line: 171, column: 7, scope: !2832)
!2853 = !DILocation(line: 173, column: 1, scope: !2751)
!2854 = distinct !DISubprogram(name: "version_etc_ar", scope: !204, file: !204, line: 180, type: !2855, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !2754, !41, !41, !41, !2809}
!2857 = !{!2858, !2859, !2860, !2861, !2862, !2863}
!2858 = !DILocalVariable(name: "stream", arg: 1, scope: !2854, file: !204, line: 180, type: !2754)
!2859 = !DILocalVariable(name: "command_name", arg: 2, scope: !2854, file: !204, line: 181, type: !41)
!2860 = !DILocalVariable(name: "package", arg: 3, scope: !2854, file: !204, line: 181, type: !41)
!2861 = !DILocalVariable(name: "version", arg: 4, scope: !2854, file: !204, line: 182, type: !41)
!2862 = !DILocalVariable(name: "authors", arg: 5, scope: !2854, file: !204, line: 182, type: !2809)
!2863 = !DILocalVariable(name: "n_authors", scope: !2854, file: !204, line: 184, type: !148)
!2864 = !DILocation(line: 180, column: 23, scope: !2854)
!2865 = !DILocation(line: 181, column: 29, scope: !2854)
!2866 = !DILocation(line: 181, column: 55, scope: !2854)
!2867 = !DILocation(line: 182, column: 29, scope: !2854)
!2868 = !DILocation(line: 182, column: 59, scope: !2854)
!2869 = !DILocation(line: 184, column: 10, scope: !2854)
!2870 = !DILocation(line: 186, column: 8, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2854, file: !204, line: 186, column: 3)
!2872 = !DILocation(line: 0, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2871, file: !204, line: 186, column: 3)
!2874 = !DILocation(line: 186, column: 23, scope: !2873)
!2875 = !DILocation(line: 186, column: 3, scope: !2871)
!2876 = !DILocation(line: 186, column: 52, scope: !2873)
!2877 = distinct !{!2877, !2875, !2878}
!2878 = !DILocation(line: 187, column: 5, scope: !2871)
!2879 = !DILocation(line: 188, column: 3, scope: !2854)
!2880 = !DILocation(line: 189, column: 1, scope: !2854)
!2881 = distinct !DISubprogram(name: "version_etc_va", scope: !204, file: !204, line: 196, type: !2882, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !2891)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !2754, !41, !41, !41, !2884}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !201, line: 189, size: 192, elements: !2886)
!2886 = !{!2887, !2888, !2889, !2890}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2885, file: !201, line: 189, baseType: !22, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2885, file: !201, line: 189, baseType: !22, size: 32, offset: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2885, file: !201, line: 189, baseType: !8, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2885, file: !201, line: 189, baseType: !8, size: 64, offset: 128)
!2891 = !{!2892, !2893, !2894, !2895, !2896, !2897, !2898}
!2892 = !DILocalVariable(name: "stream", arg: 1, scope: !2881, file: !204, line: 196, type: !2754)
!2893 = !DILocalVariable(name: "command_name", arg: 2, scope: !2881, file: !204, line: 197, type: !41)
!2894 = !DILocalVariable(name: "package", arg: 3, scope: !2881, file: !204, line: 197, type: !41)
!2895 = !DILocalVariable(name: "version", arg: 4, scope: !2881, file: !204, line: 198, type: !41)
!2896 = !DILocalVariable(name: "authors", arg: 5, scope: !2881, file: !204, line: 198, type: !2884)
!2897 = !DILocalVariable(name: "n_authors", scope: !2881, file: !204, line: 200, type: !148)
!2898 = !DILocalVariable(name: "authtab", scope: !2881, file: !204, line: 201, type: !2899)
!2899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, elements: !157)
!2900 = !DILocation(line: 196, column: 23, scope: !2881)
!2901 = !DILocation(line: 197, column: 29, scope: !2881)
!2902 = !DILocation(line: 197, column: 55, scope: !2881)
!2903 = !DILocation(line: 198, column: 29, scope: !2881)
!2904 = !DILocation(line: 198, column: 46, scope: !2881)
!2905 = !DILocation(line: 201, column: 3, scope: !2881)
!2906 = !DILocation(line: 201, column: 15, scope: !2881)
!2907 = !DILocation(line: 200, column: 10, scope: !2881)
!2908 = !DILocation(line: 205, column: 35, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !204, line: 203, column: 3)
!2910 = distinct !DILexicalBlock(scope: !2881, file: !204, line: 203, column: 3)
!2911 = !DILocation(line: 205, column: 14, scope: !2909)
!2912 = !DILocation(line: 205, column: 33, scope: !2909)
!2913 = !DILocation(line: 205, column: 67, scope: !2909)
!2914 = !DILocation(line: 203, column: 3, scope: !2910)
!2915 = !DILocation(line: 0, scope: !2909)
!2916 = !DILocation(line: 208, column: 3, scope: !2881)
!2917 = !DILocation(line: 210, column: 1, scope: !2881)
!2918 = distinct !DISubprogram(name: "version_etc", scope: !204, file: !204, line: 227, type: !2919, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2754, !41, !41, !41, null}
!2921 = !{!2922, !2923, !2924, !2925, !2926}
!2922 = !DILocalVariable(name: "stream", arg: 1, scope: !2918, file: !204, line: 227, type: !2754)
!2923 = !DILocalVariable(name: "command_name", arg: 2, scope: !2918, file: !204, line: 228, type: !41)
!2924 = !DILocalVariable(name: "package", arg: 3, scope: !2918, file: !204, line: 228, type: !41)
!2925 = !DILocalVariable(name: "version", arg: 4, scope: !2918, file: !204, line: 229, type: !41)
!2926 = !DILocalVariable(name: "authors", scope: !2918, file: !204, line: 231, type: !2927)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2928, line: 52, baseType: !2929)
!2928 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2930, line: 48, baseType: !2931)
!2930 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !201, line: 231, baseType: !2932)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2885, size: 192, elements: !2788)
!2933 = !DILocation(line: 227, column: 20, scope: !2918)
!2934 = !DILocation(line: 228, column: 26, scope: !2918)
!2935 = !DILocation(line: 228, column: 52, scope: !2918)
!2936 = !DILocation(line: 229, column: 26, scope: !2918)
!2937 = !DILocation(line: 231, column: 3, scope: !2918)
!2938 = !DILocation(line: 231, column: 11, scope: !2918)
!2939 = !DILocation(line: 233, column: 3, scope: !2918)
!2940 = !DILocation(line: 234, column: 3, scope: !2918)
!2941 = !DILocation(line: 235, column: 3, scope: !2918)
!2942 = !DILocation(line: 236, column: 1, scope: !2918)
!2943 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !204, file: !204, line: 239, type: !938, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !4)
!2944 = !DILocation(line: 245, column: 3, scope: !2943)
!2945 = !DILocation(line: 251, column: 3, scope: !2943)
!2946 = !DILocation(line: 256, column: 3, scope: !2943)
!2947 = !DILocation(line: 258, column: 1, scope: !2943)
!2948 = distinct !DISubprogram(name: "xnmalloc", scope: !212, file: !212, line: 99, type: !2949, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!8, !148, !148}
!2951 = !{!2952, !2953}
!2952 = !DILocalVariable(name: "n", arg: 1, scope: !2948, file: !212, line: 99, type: !148)
!2953 = !DILocalVariable(name: "s", arg: 2, scope: !2948, file: !212, line: 99, type: !148)
!2954 = !DILocation(line: 99, column: 18, scope: !2948)
!2955 = !DILocation(line: 99, column: 28, scope: !2948)
!2956 = !DILocation(line: 101, column: 7, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2948, file: !212, line: 101, column: 7)
!2958 = !DILocation(line: 101, column: 7, scope: !2948)
!2959 = !DILocation(line: 102, column: 5, scope: !2957)
!2960 = !DILocation(line: 103, column: 21, scope: !2948)
!2961 = !DILocalVariable(name: "n", arg: 1, scope: !2962, file: !2963, line: 39, type: !148)
!2962 = distinct !DISubprogram(name: "xmalloc", scope: !2963, file: !2963, line: 39, type: !2964, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !2966)
!2963 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!8, !148}
!2966 = !{!2961, !2967}
!2967 = !DILocalVariable(name: "p", scope: !2962, file: !2963, line: 41, type: !8)
!2968 = !DILocation(line: 39, column: 17, scope: !2962, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 103, column: 10, scope: !2948)
!2970 = !DILocation(line: 41, column: 13, scope: !2962, inlinedAt: !2969)
!2971 = !DILocation(line: 41, column: 9, scope: !2962, inlinedAt: !2969)
!2972 = !DILocation(line: 42, column: 8, scope: !2973, inlinedAt: !2969)
!2973 = distinct !DILexicalBlock(scope: !2962, file: !2963, line: 42, column: 7)
!2974 = !DILocation(line: 42, column: 15, scope: !2973, inlinedAt: !2969)
!2975 = !DILocation(line: 42, column: 10, scope: !2973, inlinedAt: !2969)
!2976 = !DILocation(line: 43, column: 5, scope: !2973, inlinedAt: !2969)
!2977 = !DILocation(line: 103, column: 3, scope: !2948)
!2978 = !DILocation(line: 39, column: 17, scope: !2962)
!2979 = !DILocation(line: 41, column: 13, scope: !2962)
!2980 = !DILocation(line: 41, column: 9, scope: !2962)
!2981 = !DILocation(line: 42, column: 8, scope: !2973)
!2982 = !DILocation(line: 42, column: 15, scope: !2973)
!2983 = !DILocation(line: 42, column: 10, scope: !2973)
!2984 = !DILocation(line: 43, column: 5, scope: !2973)
!2985 = !DILocation(line: 44, column: 3, scope: !2962)
!2986 = distinct !DISubprogram(name: "xnrealloc", scope: !212, file: !212, line: 112, type: !2987, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!8, !8, !148, !148}
!2989 = !{!2990, !2991, !2992}
!2990 = !DILocalVariable(name: "p", arg: 1, scope: !2986, file: !212, line: 112, type: !8)
!2991 = !DILocalVariable(name: "n", arg: 2, scope: !2986, file: !212, line: 112, type: !148)
!2992 = !DILocalVariable(name: "s", arg: 3, scope: !2986, file: !212, line: 112, type: !148)
!2993 = !DILocation(line: 112, column: 18, scope: !2986)
!2994 = !DILocation(line: 112, column: 28, scope: !2986)
!2995 = !DILocation(line: 112, column: 38, scope: !2986)
!2996 = !DILocation(line: 114, column: 7, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2986, file: !212, line: 114, column: 7)
!2998 = !DILocation(line: 114, column: 7, scope: !2986)
!2999 = !DILocation(line: 115, column: 5, scope: !2997)
!3000 = !DILocation(line: 116, column: 25, scope: !2986)
!3001 = !DILocalVariable(name: "p", arg: 1, scope: !3002, file: !2963, line: 51, type: !8)
!3002 = distinct !DISubprogram(name: "xrealloc", scope: !2963, file: !2963, line: 51, type: !3003, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!8, !8, !148}
!3005 = !{!3001, !3006}
!3006 = !DILocalVariable(name: "n", arg: 2, scope: !3002, file: !2963, line: 51, type: !148)
!3007 = !DILocation(line: 51, column: 17, scope: !3002, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 116, column: 10, scope: !2986)
!3009 = !DILocation(line: 51, column: 27, scope: !3002, inlinedAt: !3008)
!3010 = !DILocation(line: 53, column: 8, scope: !3011, inlinedAt: !3008)
!3011 = distinct !DILexicalBlock(scope: !3002, file: !2963, line: 53, column: 7)
!3012 = !DILocation(line: 53, column: 13, scope: !3011, inlinedAt: !3008)
!3013 = !DILocation(line: 53, column: 10, scope: !3011, inlinedAt: !3008)
!3014 = !DILocation(line: 57, column: 7, scope: !3015, inlinedAt: !3008)
!3015 = distinct !DILexicalBlock(scope: !3011, file: !2963, line: 54, column: 5)
!3016 = !DILocation(line: 58, column: 7, scope: !3015, inlinedAt: !3008)
!3017 = !DILocation(line: 61, column: 7, scope: !3002, inlinedAt: !3008)
!3018 = !DILocation(line: 62, column: 8, scope: !3019, inlinedAt: !3008)
!3019 = distinct !DILexicalBlock(scope: !3002, file: !2963, line: 62, column: 7)
!3020 = !DILocation(line: 62, column: 13, scope: !3019, inlinedAt: !3008)
!3021 = !DILocation(line: 62, column: 10, scope: !3019, inlinedAt: !3008)
!3022 = !DILocation(line: 63, column: 5, scope: !3019, inlinedAt: !3008)
!3023 = !DILocation(line: 0, scope: !3002, inlinedAt: !3008)
!3024 = !DILocation(line: 116, column: 3, scope: !2986)
!3025 = !DILocation(line: 51, column: 17, scope: !3002)
!3026 = !DILocation(line: 51, column: 27, scope: !3002)
!3027 = !DILocation(line: 53, column: 8, scope: !3011)
!3028 = !DILocation(line: 53, column: 13, scope: !3011)
!3029 = !DILocation(line: 53, column: 10, scope: !3011)
!3030 = !DILocation(line: 57, column: 7, scope: !3015)
!3031 = !DILocation(line: 58, column: 7, scope: !3015)
!3032 = !DILocation(line: 61, column: 7, scope: !3002)
!3033 = !DILocation(line: 62, column: 8, scope: !3019)
!3034 = !DILocation(line: 62, column: 13, scope: !3019)
!3035 = !DILocation(line: 62, column: 10, scope: !3019)
!3036 = !DILocation(line: 63, column: 5, scope: !3019)
!3037 = !DILocation(line: 0, scope: !3002)
!3038 = !DILocation(line: 65, column: 1, scope: !3002)
!3039 = !DILocation(line: 174, column: 19, scope: !213)
!3040 = !DILocation(line: 174, column: 30, scope: !213)
!3041 = !DILocation(line: 174, column: 41, scope: !213)
!3042 = !DILocation(line: 176, column: 14, scope: !213)
!3043 = !DILocation(line: 176, column: 10, scope: !213)
!3044 = !DILocation(line: 178, column: 9, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !213, file: !212, line: 178, column: 7)
!3046 = !DILocation(line: 178, column: 7, scope: !213)
!3047 = !DILocation(line: 180, column: 13, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !212, line: 180, column: 11)
!3049 = distinct !DILexicalBlock(scope: !3045, file: !212, line: 179, column: 5)
!3050 = !DILocation(line: 180, column: 11, scope: !3049)
!3051 = !DILocation(line: 188, column: 30, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3048, file: !212, line: 181, column: 9)
!3053 = !DILocation(line: 189, column: 16, scope: !3052)
!3054 = !DILocation(line: 189, column: 13, scope: !3052)
!3055 = !DILocation(line: 190, column: 9, scope: !3052)
!3056 = !DILocation(line: 0, scope: !3052)
!3057 = !DILocation(line: 191, column: 11, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3049, file: !212, line: 191, column: 11)
!3059 = !DILocation(line: 191, column: 11, scope: !3049)
!3060 = !DILocation(line: 206, column: 7, scope: !213)
!3061 = !DILocation(line: 207, column: 25, scope: !213)
!3062 = !DILocation(line: 51, column: 17, scope: !3002, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 207, column: 10, scope: !213)
!3064 = !DILocation(line: 51, column: 27, scope: !3002, inlinedAt: !3063)
!3065 = !DILocation(line: 53, column: 10, scope: !3011, inlinedAt: !3063)
!3066 = !DILocation(line: 192, column: 9, scope: !3058)
!3067 = !DILocation(line: 200, column: 69, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !212, line: 200, column: 11)
!3069 = distinct !DILexicalBlock(scope: !3045, file: !212, line: 195, column: 5)
!3070 = !DILocation(line: 201, column: 11, scope: !3068)
!3071 = !DILocation(line: 200, column: 11, scope: !3069)
!3072 = !DILocation(line: 202, column: 9, scope: !3068)
!3073 = !DILocation(line: 203, column: 14, scope: !3069)
!3074 = !DILocation(line: 203, column: 18, scope: !3069)
!3075 = !DILocation(line: 203, column: 9, scope: !3069)
!3076 = !DILocation(line: 53, column: 8, scope: !3011, inlinedAt: !3063)
!3077 = !DILocation(line: 57, column: 7, scope: !3015, inlinedAt: !3063)
!3078 = !DILocation(line: 58, column: 7, scope: !3015, inlinedAt: !3063)
!3079 = !DILocation(line: 61, column: 7, scope: !3002, inlinedAt: !3063)
!3080 = !DILocation(line: 62, column: 8, scope: !3019, inlinedAt: !3063)
!3081 = !DILocation(line: 62, column: 13, scope: !3019, inlinedAt: !3063)
!3082 = !DILocation(line: 62, column: 10, scope: !3019, inlinedAt: !3063)
!3083 = !DILocation(line: 63, column: 5, scope: !3019, inlinedAt: !3063)
!3084 = !DILocation(line: 0, scope: !3002, inlinedAt: !3063)
!3085 = !DILocation(line: 207, column: 3, scope: !213)
!3086 = distinct !DISubprogram(name: "xcharalloc", scope: !212, file: !212, line: 216, type: !2036, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3087)
!3087 = !{!3088}
!3088 = !DILocalVariable(name: "n", arg: 1, scope: !3086, file: !212, line: 216, type: !148)
!3089 = !DILocation(line: 216, column: 20, scope: !3086)
!3090 = !DILocation(line: 39, column: 17, scope: !2962, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 218, column: 10, scope: !3086)
!3092 = !DILocation(line: 41, column: 13, scope: !2962, inlinedAt: !3091)
!3093 = !DILocation(line: 41, column: 9, scope: !2962, inlinedAt: !3091)
!3094 = !DILocation(line: 42, column: 8, scope: !2973, inlinedAt: !3091)
!3095 = !DILocation(line: 42, column: 15, scope: !2973, inlinedAt: !3091)
!3096 = !DILocation(line: 42, column: 10, scope: !2973, inlinedAt: !3091)
!3097 = !DILocation(line: 43, column: 5, scope: !2973, inlinedAt: !3091)
!3098 = !DILocation(line: 218, column: 3, scope: !3086)
!3099 = distinct !DISubprogram(name: "x2realloc", scope: !2963, file: !2963, line: 74, type: !3100, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!8, !8, !216}
!3102 = !{!3103, !3104}
!3103 = !DILocalVariable(name: "p", arg: 1, scope: !3099, file: !2963, line: 74, type: !8)
!3104 = !DILocalVariable(name: "pn", arg: 2, scope: !3099, file: !2963, line: 74, type: !216)
!3105 = !DILocation(line: 74, column: 18, scope: !3099)
!3106 = !DILocation(line: 74, column: 29, scope: !3099)
!3107 = !DILocation(line: 174, column: 19, scope: !213, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 76, column: 10, scope: !3099)
!3109 = !DILocation(line: 174, column: 30, scope: !213, inlinedAt: !3108)
!3110 = !DILocation(line: 174, column: 41, scope: !213, inlinedAt: !3108)
!3111 = !DILocation(line: 176, column: 14, scope: !213, inlinedAt: !3108)
!3112 = !DILocation(line: 176, column: 10, scope: !213, inlinedAt: !3108)
!3113 = !DILocation(line: 178, column: 9, scope: !3045, inlinedAt: !3108)
!3114 = !DILocation(line: 178, column: 7, scope: !213, inlinedAt: !3108)
!3115 = !DILocation(line: 180, column: 13, scope: !3048, inlinedAt: !3108)
!3116 = !DILocation(line: 180, column: 11, scope: !3049, inlinedAt: !3108)
!3117 = !DILocation(line: 191, column: 11, scope: !3058, inlinedAt: !3108)
!3118 = !DILocation(line: 191, column: 11, scope: !3049, inlinedAt: !3108)
!3119 = !DILocation(line: 206, column: 7, scope: !213, inlinedAt: !3108)
!3120 = !DILocation(line: 51, column: 17, scope: !3002, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 207, column: 10, scope: !213, inlinedAt: !3108)
!3122 = !DILocation(line: 51, column: 27, scope: !3002, inlinedAt: !3121)
!3123 = !DILocation(line: 53, column: 10, scope: !3011, inlinedAt: !3121)
!3124 = !DILocation(line: 192, column: 9, scope: !3058, inlinedAt: !3108)
!3125 = !DILocation(line: 201, column: 11, scope: !3068, inlinedAt: !3108)
!3126 = !DILocation(line: 200, column: 11, scope: !3069, inlinedAt: !3108)
!3127 = !DILocation(line: 202, column: 9, scope: !3068, inlinedAt: !3108)
!3128 = !DILocation(line: 203, column: 14, scope: !3069, inlinedAt: !3108)
!3129 = !DILocation(line: 203, column: 18, scope: !3069, inlinedAt: !3108)
!3130 = !DILocation(line: 203, column: 9, scope: !3069, inlinedAt: !3108)
!3131 = !DILocation(line: 53, column: 8, scope: !3011, inlinedAt: !3121)
!3132 = !DILocation(line: 57, column: 7, scope: !3015, inlinedAt: !3121)
!3133 = !DILocation(line: 58, column: 7, scope: !3015, inlinedAt: !3121)
!3134 = !DILocation(line: 61, column: 7, scope: !3002, inlinedAt: !3121)
!3135 = !DILocation(line: 62, column: 8, scope: !3019, inlinedAt: !3121)
!3136 = !DILocation(line: 62, column: 13, scope: !3019, inlinedAt: !3121)
!3137 = !DILocation(line: 62, column: 10, scope: !3019, inlinedAt: !3121)
!3138 = !DILocation(line: 63, column: 5, scope: !3019, inlinedAt: !3121)
!3139 = !DILocation(line: 0, scope: !3002, inlinedAt: !3121)
!3140 = !DILocation(line: 76, column: 3, scope: !3099)
!3141 = distinct !DISubprogram(name: "xzalloc", scope: !2963, file: !2963, line: 84, type: !2964, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3142)
!3142 = !{!3143}
!3143 = !DILocalVariable(name: "s", arg: 1, scope: !3141, file: !2963, line: 84, type: !148)
!3144 = !DILocation(line: 84, column: 17, scope: !3141)
!3145 = !DILocation(line: 39, column: 17, scope: !2962, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 86, column: 18, scope: !3141)
!3147 = !DILocation(line: 41, column: 13, scope: !2962, inlinedAt: !3146)
!3148 = !DILocation(line: 41, column: 9, scope: !2962, inlinedAt: !3146)
!3149 = !DILocation(line: 42, column: 8, scope: !2973, inlinedAt: !3146)
!3150 = !DILocation(line: 42, column: 15, scope: !2973, inlinedAt: !3146)
!3151 = !DILocation(line: 42, column: 10, scope: !2973, inlinedAt: !3146)
!3152 = !DILocation(line: 43, column: 5, scope: !2973, inlinedAt: !3146)
!3153 = !DILocation(line: 86, column: 10, scope: !3141)
!3154 = !DILocation(line: 86, column: 3, scope: !3141)
!3155 = distinct !DISubprogram(name: "xcalloc", scope: !2963, file: !2963, line: 93, type: !2949, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3156)
!3156 = !{!3157, !3158, !3159}
!3157 = !DILocalVariable(name: "n", arg: 1, scope: !3155, file: !2963, line: 93, type: !148)
!3158 = !DILocalVariable(name: "s", arg: 2, scope: !3155, file: !2963, line: 93, type: !148)
!3159 = !DILocalVariable(name: "p", scope: !3155, file: !2963, line: 95, type: !8)
!3160 = !DILocation(line: 93, column: 17, scope: !3155)
!3161 = !DILocation(line: 93, column: 27, scope: !3155)
!3162 = !DILocation(line: 100, column: 7, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3155, file: !2963, line: 100, column: 7)
!3164 = !DILocation(line: 101, column: 7, scope: !3163)
!3165 = !DILocation(line: 101, column: 18, scope: !3163)
!3166 = !DILocation(line: 95, column: 9, scope: !3155)
!3167 = !DILocation(line: 101, column: 16, scope: !3163)
!3168 = !DILocation(line: 100, column: 7, scope: !3155)
!3169 = !DILocation(line: 102, column: 5, scope: !3163)
!3170 = !DILocation(line: 103, column: 3, scope: !3155)
!3171 = distinct !DISubprogram(name: "xmemdup", scope: !2963, file: !2963, line: 111, type: !3172, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3176)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!8, !3174, !148}
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3176 = !{!3177, !3178}
!3177 = !DILocalVariable(name: "p", arg: 1, scope: !3171, file: !2963, line: 111, type: !3174)
!3178 = !DILocalVariable(name: "s", arg: 2, scope: !3171, file: !2963, line: 111, type: !148)
!3179 = !DILocation(line: 111, column: 22, scope: !3171)
!3180 = !DILocation(line: 111, column: 32, scope: !3171)
!3181 = !DILocation(line: 39, column: 17, scope: !2962, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 113, column: 18, scope: !3171)
!3183 = !DILocation(line: 41, column: 13, scope: !2962, inlinedAt: !3182)
!3184 = !DILocation(line: 41, column: 9, scope: !2962, inlinedAt: !3182)
!3185 = !DILocation(line: 42, column: 8, scope: !2973, inlinedAt: !3182)
!3186 = !DILocation(line: 42, column: 15, scope: !2973, inlinedAt: !3182)
!3187 = !DILocation(line: 42, column: 10, scope: !2973, inlinedAt: !3182)
!3188 = !DILocation(line: 43, column: 5, scope: !2973, inlinedAt: !3182)
!3189 = !DILocation(line: 113, column: 10, scope: !3171)
!3190 = !DILocation(line: 113, column: 3, scope: !3171)
!3191 = distinct !DISubprogram(name: "xstrdup", scope: !2963, file: !2963, line: 119, type: !2241, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3192)
!3192 = !{!3193}
!3193 = !DILocalVariable(name: "string", arg: 1, scope: !3191, file: !2963, line: 119, type: !41)
!3194 = !DILocation(line: 119, column: 22, scope: !3191)
!3195 = !DILocation(line: 121, column: 27, scope: !3191)
!3196 = !DILocation(line: 121, column: 43, scope: !3191)
!3197 = !DILocation(line: 111, column: 22, scope: !3171, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 121, column: 10, scope: !3191)
!3199 = !DILocation(line: 111, column: 32, scope: !3171, inlinedAt: !3198)
!3200 = !DILocation(line: 39, column: 17, scope: !2962, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 113, column: 18, scope: !3171, inlinedAt: !3198)
!3202 = !DILocation(line: 41, column: 13, scope: !2962, inlinedAt: !3201)
!3203 = !DILocation(line: 41, column: 9, scope: !2962, inlinedAt: !3201)
!3204 = !DILocation(line: 42, column: 8, scope: !2973, inlinedAt: !3201)
!3205 = !DILocation(line: 42, column: 15, scope: !2973, inlinedAt: !3201)
!3206 = !DILocation(line: 42, column: 10, scope: !2973, inlinedAt: !3201)
!3207 = !DILocation(line: 43, column: 5, scope: !2973, inlinedAt: !3201)
!3208 = !DILocation(line: 113, column: 10, scope: !3171, inlinedAt: !3198)
!3209 = !DILocation(line: 121, column: 3, scope: !3191)
!3210 = distinct !DISubprogram(name: "xalloc_die", scope: !3211, file: !3211, line: 32, type: !938, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !225, retainedNodes: !4)
!3211 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3212 = !DILocation(line: 34, column: 10, scope: !3210)
!3213 = !DILocation(line: 34, column: 33, scope: !3210)
!3214 = !DILocation(line: 34, column: 3, scope: !3210)
!3215 = !DILocation(line: 40, column: 3, scope: !3210)
!3216 = distinct !DISubprogram(name: "rpl_calloc", scope: !3217, file: !3217, line: 42, type: !2949, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3218)
!3217 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3218 = !{!3219, !3220, !3221, !3222}
!3219 = !DILocalVariable(name: "n", arg: 1, scope: !3216, file: !3217, line: 42, type: !148)
!3220 = !DILocalVariable(name: "s", arg: 2, scope: !3216, file: !3217, line: 42, type: !148)
!3221 = !DILocalVariable(name: "result", scope: !3216, file: !3217, line: 44, type: !8)
!3222 = !DILocalVariable(name: "bytes", scope: !3223, file: !3217, line: 56, type: !148)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !3217, line: 53, column: 5)
!3224 = distinct !DILexicalBlock(scope: !3216, file: !3217, line: 47, column: 7)
!3225 = !DILocation(line: 42, column: 20, scope: !3216)
!3226 = !DILocation(line: 42, column: 30, scope: !3216)
!3227 = !DILocation(line: 47, column: 9, scope: !3224)
!3228 = !DILocation(line: 47, column: 19, scope: !3224)
!3229 = !DILocation(line: 47, column: 14, scope: !3224)
!3230 = !DILocation(line: 56, column: 24, scope: !3223)
!3231 = !DILocation(line: 56, column: 14, scope: !3223)
!3232 = !DILocation(line: 57, column: 17, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3223, file: !3217, line: 57, column: 11)
!3234 = !DILocation(line: 57, column: 21, scope: !3233)
!3235 = !DILocation(line: 57, column: 11, scope: !3223)
!3236 = !DILocation(line: 59, column: 11, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3233, file: !3217, line: 58, column: 9)
!3238 = !DILocation(line: 59, column: 17, scope: !3237)
!3239 = !DILocation(line: 65, column: 12, scope: !3216)
!3240 = !DILocation(line: 44, column: 9, scope: !3216)
!3241 = !DILocation(line: 72, column: 3, scope: !3216)
!3242 = !DILocation(line: 0, scope: !3237)
!3243 = !DILocation(line: 73, column: 1, scope: !3216)
!3244 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3245, file: !3245, line: 385, type: !3246, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !229, retainedNodes: !3260)
!3245 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!148, !3248, !41, !148, !3249}
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1200, line: 6, baseType: !3251)
!3251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1202, line: 21, baseType: !3252)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1202, line: 13, size: 64, elements: !3253)
!3253 = !{!3254, !3255}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3252, file: !1202, line: 15, baseType: !16, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3252, file: !1202, line: 20, baseType: !3256, size: 32, offset: 32)
!3256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !1202, line: 16, size: 32, elements: !3257)
!3257 = !{!3258, !3259}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3256, file: !1202, line: 18, baseType: !22, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3256, file: !1202, line: 19, baseType: !1211, size: 32)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266, !3267}
!3261 = !DILocalVariable(name: "pwc", arg: 1, scope: !3244, file: !3245, line: 385, type: !3248)
!3262 = !DILocalVariable(name: "s", arg: 2, scope: !3244, file: !3245, line: 385, type: !41)
!3263 = !DILocalVariable(name: "n", arg: 3, scope: !3244, file: !3245, line: 385, type: !148)
!3264 = !DILocalVariable(name: "ps", arg: 4, scope: !3244, file: !3245, line: 385, type: !3249)
!3265 = !DILocalVariable(name: "ret", scope: !3244, file: !3245, line: 387, type: !148)
!3266 = !DILocalVariable(name: "wc", scope: !3244, file: !3245, line: 388, type: !1216)
!3267 = !DILocalVariable(name: "uc", scope: !3268, file: !3245, line: 449, type: !9)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !3245, line: 448, column: 5)
!3269 = distinct !DILexicalBlock(scope: !3244, file: !3245, line: 447, column: 7)
!3270 = !DILocation(line: 385, column: 23, scope: !3244)
!3271 = !DILocation(line: 385, column: 40, scope: !3244)
!3272 = !DILocation(line: 385, column: 50, scope: !3244)
!3273 = !DILocation(line: 385, column: 64, scope: !3244)
!3274 = !DILocation(line: 388, column: 3, scope: !3244)
!3275 = !DILocation(line: 404, column: 9, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3244, file: !3245, line: 404, column: 7)
!3277 = !DILocation(line: 404, column: 7, scope: !3244)
!3278 = !DILocation(line: 439, column: 9, scope: !3244)
!3279 = !DILocation(line: 387, column: 10, scope: !3244)
!3280 = !DILocation(line: 447, column: 19, scope: !3269)
!3281 = !DILocation(line: 447, column: 31, scope: !3269)
!3282 = !DILocation(line: 447, column: 26, scope: !3269)
!3283 = !DILocation(line: 447, column: 41, scope: !3269)
!3284 = !DILocation(line: 447, column: 7, scope: !3244)
!3285 = !DILocation(line: 449, column: 26, scope: !3268)
!3286 = !DILocation(line: 449, column: 21, scope: !3268)
!3287 = !DILocation(line: 450, column: 14, scope: !3268)
!3288 = !DILocation(line: 450, column: 12, scope: !3268)
!3289 = !DILocation(line: 0, scope: !3268)
!3290 = !DILocation(line: 456, column: 1, scope: !3244)
!3291 = distinct !DISubprogram(name: "close_stream", scope: !3292, file: !3292, line: 56, type: !3293, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !232, retainedNodes: !3329)
!3292 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!16, !3295}
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2756, line: 7, baseType: !3297)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2758, line: 49, size: 1728, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3297, file: !2758, line: 51, baseType: !16, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3297, file: !2758, line: 54, baseType: !6, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3297, file: !2758, line: 55, baseType: !6, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3297, file: !2758, line: 56, baseType: !6, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3297, file: !2758, line: 57, baseType: !6, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3297, file: !2758, line: 58, baseType: !6, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3297, file: !2758, line: 59, baseType: !6, size: 64, offset: 384)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3297, file: !2758, line: 60, baseType: !6, size: 64, offset: 448)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3297, file: !2758, line: 61, baseType: !6, size: 64, offset: 512)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3297, file: !2758, line: 64, baseType: !6, size: 64, offset: 576)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3297, file: !2758, line: 65, baseType: !6, size: 64, offset: 640)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3297, file: !2758, line: 66, baseType: !6, size: 64, offset: 704)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3297, file: !2758, line: 68, baseType: !2773, size: 64, offset: 768)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3297, file: !2758, line: 70, baseType: !3313, size: 64, offset: 832)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3297, file: !2758, line: 72, baseType: !16, size: 32, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3297, file: !2758, line: 73, baseType: !16, size: 32, offset: 928)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3297, file: !2758, line: 74, baseType: !2780, size: 64, offset: 960)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3297, file: !2758, line: 77, baseType: !147, size: 16, offset: 1024)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3297, file: !2758, line: 78, baseType: !2785, size: 8, offset: 1040)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3297, file: !2758, line: 79, baseType: !2787, size: 8, offset: 1048)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3297, file: !2758, line: 81, baseType: !2791, size: 64, offset: 1088)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3297, file: !2758, line: 89, baseType: !2794, size: 64, offset: 1152)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3297, file: !2758, line: 91, baseType: !2796, size: 64, offset: 1216)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3297, file: !2758, line: 92, baseType: !2799, size: 64, offset: 1280)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3297, file: !2758, line: 93, baseType: !3313, size: 64, offset: 1344)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3297, file: !2758, line: 94, baseType: !8, size: 64, offset: 1408)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3297, file: !2758, line: 95, baseType: !148, size: 64, offset: 1472)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3297, file: !2758, line: 96, baseType: !16, size: 32, offset: 1536)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3297, file: !2758, line: 98, baseType: !2806, size: 160, offset: 1568)
!3329 = !{!3330, !3331, !3333, !3334}
!3330 = !DILocalVariable(name: "stream", arg: 1, scope: !3291, file: !3292, line: 56, type: !3295)
!3331 = !DILocalVariable(name: "some_pending", scope: !3291, file: !3292, line: 58, type: !3332)
!3332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3333 = !DILocalVariable(name: "prev_fail", scope: !3291, file: !3292, line: 59, type: !3332)
!3334 = !DILocalVariable(name: "fclose_fail", scope: !3291, file: !3292, line: 60, type: !3332)
!3335 = !DILocation(line: 56, column: 21, scope: !3291)
!3336 = !DILocation(line: 58, column: 30, scope: !3291)
!3337 = !DILocalVariable(name: "__stream", arg: 1, scope: !3338, file: !816, line: 135, type: !3295)
!3338 = distinct !DISubprogram(name: "ferror_unlocked", scope: !816, file: !816, line: 135, type: !3293, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !232, retainedNodes: !3339)
!3339 = !{!3337}
!3340 = !DILocation(line: 135, column: 1, scope: !3338, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 59, column: 27, scope: !3291)
!3342 = !DILocation(line: 137, column: 10, scope: !3338, inlinedAt: !3341)
!3343 = !{!825, !676, i64 0}
!3344 = !DILocation(line: 59, column: 43, scope: !3291)
!3345 = !DILocation(line: 60, column: 29, scope: !3291)
!3346 = !DILocation(line: 60, column: 45, scope: !3291)
!3347 = !DILocation(line: 70, column: 17, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3291, file: !3292, line: 70, column: 7)
!3349 = !DILocation(line: 58, column: 50, scope: !3291)
!3350 = !DILocation(line: 70, column: 33, scope: !3348)
!3351 = !DILocation(line: 70, column: 53, scope: !3348)
!3352 = !DILocation(line: 70, column: 59, scope: !3348)
!3353 = !DILocation(line: 70, column: 7, scope: !3291)
!3354 = !DILocation(line: 72, column: 11, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3348, file: !3292, line: 71, column: 5)
!3356 = !DILocation(line: 73, column: 9, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3355, file: !3292, line: 72, column: 11)
!3358 = !DILocation(line: 73, column: 15, scope: !3357)
!3359 = !DILocation(line: 0, scope: !3291)
!3360 = !DILocation(line: 78, column: 1, scope: !3291)
!3361 = distinct !DISubprogram(name: "hard_locale", scope: !3362, file: !3362, line: 38, type: !3363, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !3365)
!3362 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!70, !16}
!3365 = !{!3366, !3367, !3368}
!3366 = !DILocalVariable(name: "category", arg: 1, scope: !3361, file: !3362, line: 38, type: !16)
!3367 = !DILocalVariable(name: "hard", scope: !3361, file: !3362, line: 40, type: !70)
!3368 = !DILocalVariable(name: "p", scope: !3361, file: !3362, line: 41, type: !41)
!3369 = !DILocation(line: 38, column: 18, scope: !3361)
!3370 = !DILocation(line: 40, column: 8, scope: !3361)
!3371 = !DILocation(line: 41, column: 19, scope: !3361)
!3372 = !DILocation(line: 41, column: 15, scope: !3361)
!3373 = !DILocation(line: 43, column: 7, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3361, file: !3362, line: 43, column: 7)
!3375 = !DILocation(line: 43, column: 7, scope: !3361)
!3376 = !DILocation(line: 47, column: 15, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3362, line: 47, column: 15)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3362, line: 46, column: 9)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !3362, line: 45, column: 11)
!3380 = distinct !DILexicalBlock(scope: !3374, file: !3362, line: 44, column: 5)
!3381 = !DILocation(line: 47, column: 31, scope: !3377)
!3382 = !DILocation(line: 47, column: 36, scope: !3377)
!3383 = !DILocation(line: 47, column: 39, scope: !3377)
!3384 = !DILocation(line: 47, column: 59, scope: !3377)
!3385 = !DILocation(line: 47, column: 15, scope: !3378)
!3386 = !DILocation(line: 48, column: 13, scope: !3377)
!3387 = !DILocation(line: 71, column: 3, scope: !3361)
!3388 = distinct !DISubprogram(name: "locale_charset", scope: !3389, file: !3389, line: 687, type: !3390, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !236, retainedNodes: !3392)
!3389 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!41}
!3392 = !{!3393}
!3393 = !DILocalVariable(name: "codeset", scope: !3388, file: !3389, line: 689, type: !41)
!3394 = !DILocation(line: 696, column: 13, scope: !3388)
!3395 = !DILocation(line: 689, column: 15, scope: !3388)
!3396 = !DILocation(line: 754, column: 15, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3388, file: !3389, line: 754, column: 7)
!3398 = !DILocation(line: 754, column: 7, scope: !3388)
!3399 = !DILocation(line: 907, column: 13, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !3389, line: 907, column: 13)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !3389, line: 897, column: 7)
!3402 = distinct !DILexicalBlock(scope: !3388, file: !3389, line: 856, column: 3)
!3403 = !DILocation(line: 907, column: 24, scope: !3400)
!3404 = !DILocation(line: 907, column: 13, scope: !3401)
!3405 = !DILocation(line: 995, column: 3, scope: !3388)
!3406 = distinct !DISubprogram(name: "rpl_fclose", scope: !3407, file: !3407, line: 58, type: !3408, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !625, retainedNodes: !3444)
!3407 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!16, !3410}
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2756, line: 7, baseType: !3412)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2758, line: 49, size: 1728, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3412, file: !2758, line: 51, baseType: !16, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3412, file: !2758, line: 54, baseType: !6, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3412, file: !2758, line: 55, baseType: !6, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3412, file: !2758, line: 56, baseType: !6, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3412, file: !2758, line: 57, baseType: !6, size: 64, offset: 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3412, file: !2758, line: 58, baseType: !6, size: 64, offset: 320)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3412, file: !2758, line: 59, baseType: !6, size: 64, offset: 384)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3412, file: !2758, line: 60, baseType: !6, size: 64, offset: 448)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3412, file: !2758, line: 61, baseType: !6, size: 64, offset: 512)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3412, file: !2758, line: 64, baseType: !6, size: 64, offset: 576)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3412, file: !2758, line: 65, baseType: !6, size: 64, offset: 640)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3412, file: !2758, line: 66, baseType: !6, size: 64, offset: 704)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3412, file: !2758, line: 68, baseType: !2773, size: 64, offset: 768)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3412, file: !2758, line: 70, baseType: !3428, size: 64, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3412, file: !2758, line: 72, baseType: !16, size: 32, offset: 896)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3412, file: !2758, line: 73, baseType: !16, size: 32, offset: 928)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3412, file: !2758, line: 74, baseType: !2780, size: 64, offset: 960)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3412, file: !2758, line: 77, baseType: !147, size: 16, offset: 1024)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3412, file: !2758, line: 78, baseType: !2785, size: 8, offset: 1040)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3412, file: !2758, line: 79, baseType: !2787, size: 8, offset: 1048)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3412, file: !2758, line: 81, baseType: !2791, size: 64, offset: 1088)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3412, file: !2758, line: 89, baseType: !2794, size: 64, offset: 1152)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3412, file: !2758, line: 91, baseType: !2796, size: 64, offset: 1216)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3412, file: !2758, line: 92, baseType: !2799, size: 64, offset: 1280)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3412, file: !2758, line: 93, baseType: !3428, size: 64, offset: 1344)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3412, file: !2758, line: 94, baseType: !8, size: 64, offset: 1408)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3412, file: !2758, line: 95, baseType: !148, size: 64, offset: 1472)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3412, file: !2758, line: 96, baseType: !16, size: 32, offset: 1536)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3412, file: !2758, line: 98, baseType: !2806, size: 160, offset: 1568)
!3444 = !{!3445, !3446, !3447, !3448}
!3445 = !DILocalVariable(name: "fp", arg: 1, scope: !3406, file: !3407, line: 58, type: !3410)
!3446 = !DILocalVariable(name: "saved_errno", scope: !3406, file: !3407, line: 60, type: !16)
!3447 = !DILocalVariable(name: "fd", scope: !3406, file: !3407, line: 61, type: !16)
!3448 = !DILocalVariable(name: "result", scope: !3406, file: !3407, line: 62, type: !16)
!3449 = !DILocation(line: 58, column: 19, scope: !3406)
!3450 = !DILocation(line: 60, column: 7, scope: !3406)
!3451 = !DILocation(line: 62, column: 7, scope: !3406)
!3452 = !DILocation(line: 65, column: 8, scope: !3406)
!3453 = !DILocation(line: 61, column: 7, scope: !3406)
!3454 = !DILocation(line: 66, column: 10, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3406, file: !3407, line: 66, column: 7)
!3456 = !DILocation(line: 66, column: 7, scope: !3406)
!3457 = !DILocation(line: 67, column: 12, scope: !3455)
!3458 = !DILocation(line: 67, column: 5, scope: !3455)
!3459 = !DILocation(line: 72, column: 9, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3406, file: !3407, line: 72, column: 7)
!3461 = !DILocation(line: 72, column: 23, scope: !3460)
!3462 = !DILocation(line: 72, column: 33, scope: !3460)
!3463 = !DILocation(line: 72, column: 26, scope: !3460)
!3464 = !DILocation(line: 72, column: 59, scope: !3460)
!3465 = !DILocation(line: 73, column: 7, scope: !3460)
!3466 = !DILocation(line: 73, column: 10, scope: !3460)
!3467 = !DILocation(line: 72, column: 7, scope: !3406)
!3468 = !DILocation(line: 100, column: 12, scope: !3406)
!3469 = !DILocation(line: 105, column: 7, scope: !3406)
!3470 = !DILocation(line: 74, column: 19, scope: !3460)
!3471 = !DILocation(line: 105, column: 19, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3406, file: !3407, line: 105, column: 7)
!3473 = !DILocation(line: 107, column: 13, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3472, file: !3407, line: 106, column: 5)
!3475 = !DILocation(line: 109, column: 5, scope: !3474)
!3476 = !DILocation(line: 0, scope: !3406)
!3477 = !DILocation(line: 112, column: 1, scope: !3406)
!3478 = distinct !DISubprogram(name: "rpl_fflush", scope: !3479, file: !3479, line: 129, type: !3480, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !627, retainedNodes: !3516)
!3479 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!16, !3482}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2756, line: 7, baseType: !3484)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2758, line: 49, size: 1728, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3484, file: !2758, line: 51, baseType: !16, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3484, file: !2758, line: 54, baseType: !6, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3484, file: !2758, line: 55, baseType: !6, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3484, file: !2758, line: 56, baseType: !6, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3484, file: !2758, line: 57, baseType: !6, size: 64, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3484, file: !2758, line: 58, baseType: !6, size: 64, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3484, file: !2758, line: 59, baseType: !6, size: 64, offset: 384)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3484, file: !2758, line: 60, baseType: !6, size: 64, offset: 448)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3484, file: !2758, line: 61, baseType: !6, size: 64, offset: 512)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3484, file: !2758, line: 64, baseType: !6, size: 64, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3484, file: !2758, line: 65, baseType: !6, size: 64, offset: 640)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3484, file: !2758, line: 66, baseType: !6, size: 64, offset: 704)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3484, file: !2758, line: 68, baseType: !2773, size: 64, offset: 768)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3484, file: !2758, line: 70, baseType: !3500, size: 64, offset: 832)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3484, file: !2758, line: 72, baseType: !16, size: 32, offset: 896)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3484, file: !2758, line: 73, baseType: !16, size: 32, offset: 928)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3484, file: !2758, line: 74, baseType: !2780, size: 64, offset: 960)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3484, file: !2758, line: 77, baseType: !147, size: 16, offset: 1024)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3484, file: !2758, line: 78, baseType: !2785, size: 8, offset: 1040)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3484, file: !2758, line: 79, baseType: !2787, size: 8, offset: 1048)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3484, file: !2758, line: 81, baseType: !2791, size: 64, offset: 1088)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3484, file: !2758, line: 89, baseType: !2794, size: 64, offset: 1152)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3484, file: !2758, line: 91, baseType: !2796, size: 64, offset: 1216)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3484, file: !2758, line: 92, baseType: !2799, size: 64, offset: 1280)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3484, file: !2758, line: 93, baseType: !3500, size: 64, offset: 1344)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3484, file: !2758, line: 94, baseType: !8, size: 64, offset: 1408)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3484, file: !2758, line: 95, baseType: !148, size: 64, offset: 1472)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3484, file: !2758, line: 96, baseType: !16, size: 32, offset: 1536)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3484, file: !2758, line: 98, baseType: !2806, size: 160, offset: 1568)
!3516 = !{!3517}
!3517 = !DILocalVariable(name: "stream", arg: 1, scope: !3478, file: !3479, line: 129, type: !3482)
!3518 = !DILocation(line: 129, column: 19, scope: !3478)
!3519 = !DILocation(line: 150, column: 14, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3478, file: !3479, line: 150, column: 7)
!3521 = !DILocation(line: 150, column: 22, scope: !3520)
!3522 = !DILocation(line: 150, column: 27, scope: !3520)
!3523 = !DILocation(line: 150, column: 7, scope: !3478)
!3524 = !DILocation(line: 151, column: 12, scope: !3520)
!3525 = !DILocation(line: 151, column: 5, scope: !3520)
!3526 = !DILocalVariable(name: "fp", arg: 1, scope: !3527, file: !3479, line: 41, type: !3482)
!3527 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3479, file: !3479, line: 41, type: !3528, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !627, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{null, !3482}
!3530 = !{!3526}
!3531 = !DILocation(line: 41, column: 48, scope: !3527, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 156, column: 3, scope: !3478)
!3533 = !DILocation(line: 43, column: 11, scope: !3534, inlinedAt: !3532)
!3534 = distinct !DILexicalBlock(scope: !3527, file: !3479, line: 43, column: 7)
!3535 = !DILocation(line: 43, column: 18, scope: !3534, inlinedAt: !3532)
!3536 = !DILocation(line: 43, column: 7, scope: !3527, inlinedAt: !3532)
!3537 = !DILocation(line: 45, column: 5, scope: !3534, inlinedAt: !3532)
!3538 = !DILocation(line: 158, column: 10, scope: !3478)
!3539 = !DILocation(line: 158, column: 3, scope: !3478)
!3540 = !DILocation(line: 0, scope: !3478)
!3541 = !DILocation(line: 232, column: 1, scope: !3478)
!3542 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3543, file: !3543, line: 28, type: !3544, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !629, retainedNodes: !3581)
!3543 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!16, !3546, !3580, !16}
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2756, line: 7, baseType: !3548)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2758, line: 49, size: 1728, elements: !3549)
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3548, file: !2758, line: 51, baseType: !16, size: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3548, file: !2758, line: 54, baseType: !6, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3548, file: !2758, line: 55, baseType: !6, size: 64, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3548, file: !2758, line: 56, baseType: !6, size: 64, offset: 192)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3548, file: !2758, line: 57, baseType: !6, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3548, file: !2758, line: 58, baseType: !6, size: 64, offset: 320)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3548, file: !2758, line: 59, baseType: !6, size: 64, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3548, file: !2758, line: 60, baseType: !6, size: 64, offset: 448)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3548, file: !2758, line: 61, baseType: !6, size: 64, offset: 512)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3548, file: !2758, line: 64, baseType: !6, size: 64, offset: 576)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3548, file: !2758, line: 65, baseType: !6, size: 64, offset: 640)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3548, file: !2758, line: 66, baseType: !6, size: 64, offset: 704)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3548, file: !2758, line: 68, baseType: !2773, size: 64, offset: 768)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3548, file: !2758, line: 70, baseType: !3564, size: 64, offset: 832)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3548, file: !2758, line: 72, baseType: !16, size: 32, offset: 896)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3548, file: !2758, line: 73, baseType: !16, size: 32, offset: 928)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3548, file: !2758, line: 74, baseType: !2780, size: 64, offset: 960)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3548, file: !2758, line: 77, baseType: !147, size: 16, offset: 1024)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3548, file: !2758, line: 78, baseType: !2785, size: 8, offset: 1040)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3548, file: !2758, line: 79, baseType: !2787, size: 8, offset: 1048)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3548, file: !2758, line: 81, baseType: !2791, size: 64, offset: 1088)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3548, file: !2758, line: 89, baseType: !2794, size: 64, offset: 1152)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3548, file: !2758, line: 91, baseType: !2796, size: 64, offset: 1216)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3548, file: !2758, line: 92, baseType: !2799, size: 64, offset: 1280)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3548, file: !2758, line: 93, baseType: !3564, size: 64, offset: 1344)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3548, file: !2758, line: 94, baseType: !8, size: 64, offset: 1408)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3548, file: !2758, line: 95, baseType: !148, size: 64, offset: 1472)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3548, file: !2758, line: 96, baseType: !16, size: 32, offset: 1536)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3548, file: !2758, line: 98, baseType: !2806, size: 160, offset: 1568)
!3580 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2928, line: 63, baseType: !2780)
!3581 = !{!3582, !3583, !3584, !3585}
!3582 = !DILocalVariable(name: "fp", arg: 1, scope: !3542, file: !3543, line: 28, type: !3546)
!3583 = !DILocalVariable(name: "offset", arg: 2, scope: !3542, file: !3543, line: 28, type: !3580)
!3584 = !DILocalVariable(name: "whence", arg: 3, scope: !3542, file: !3543, line: 28, type: !16)
!3585 = !DILocalVariable(name: "pos", scope: !3586, file: !3543, line: 117, type: !3580)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !3543, line: 113, column: 5)
!3587 = distinct !DILexicalBlock(scope: !3542, file: !3543, line: 52, column: 7)
!3588 = !DILocation(line: 28, column: 15, scope: !3542)
!3589 = !DILocation(line: 28, column: 25, scope: !3542)
!3590 = !DILocation(line: 28, column: 37, scope: !3542)
!3591 = !DILocation(line: 52, column: 11, scope: !3587)
!3592 = !{!825, !669, i64 16}
!3593 = !DILocation(line: 52, column: 31, scope: !3587)
!3594 = !{!825, !669, i64 8}
!3595 = !DILocation(line: 52, column: 24, scope: !3587)
!3596 = !DILocation(line: 53, column: 7, scope: !3587)
!3597 = !DILocation(line: 53, column: 14, scope: !3587)
!3598 = !DILocation(line: 53, column: 35, scope: !3587)
!3599 = !{!825, !669, i64 32}
!3600 = !DILocation(line: 53, column: 28, scope: !3587)
!3601 = !DILocation(line: 54, column: 7, scope: !3587)
!3602 = !DILocation(line: 54, column: 14, scope: !3587)
!3603 = !{!825, !669, i64 72}
!3604 = !DILocation(line: 54, column: 28, scope: !3587)
!3605 = !DILocation(line: 52, column: 7, scope: !3542)
!3606 = !DILocation(line: 117, column: 26, scope: !3586)
!3607 = !DILocation(line: 117, column: 19, scope: !3586)
!3608 = !DILocation(line: 117, column: 13, scope: !3586)
!3609 = !DILocation(line: 118, column: 15, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3586, file: !3543, line: 118, column: 11)
!3611 = !DILocation(line: 118, column: 11, scope: !3586)
!3612 = !DILocation(line: 129, column: 11, scope: !3586)
!3613 = !DILocation(line: 129, column: 18, scope: !3586)
!3614 = !DILocation(line: 130, column: 11, scope: !3586)
!3615 = !DILocation(line: 130, column: 19, scope: !3586)
!3616 = !{!825, !826, i64 144}
!3617 = !DILocation(line: 161, column: 7, scope: !3586)
!3618 = !DILocation(line: 163, column: 10, scope: !3542)
!3619 = !DILocation(line: 163, column: 3, scope: !3542)
!3620 = !DILocation(line: 0, scope: !3542)
!3621 = !DILocation(line: 164, column: 1, scope: !3542)
