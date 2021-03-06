; ModuleID = 'coreutils-8.30/src/env.bc'
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
@.str.1 = private unnamed_addr constant [62 x i8] c"Usage: %s [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Set each NAME to VALUE in the environment and run COMMAND.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.31 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [187 x i8] c"  -i, --ignore-environment  start with an empty environment\0A  -0, --null           end each output line with NUL, not newline\0A  -u, --unset=NAME     remove variable from the environment\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"  -C, --chdir=DIR      change working directory to DIR\0A\00", align 1
@.str.5 = private unnamed_addr constant [217 x i8] c"  -S, --split-string=S  process and split S into separate arguments;\0A                        used to pass multiple arguments on shebang lines\0A  -v, --debug          print verbose information for each processing step\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"\0AA mere - implies -i.  If no COMMAND, print the resulting environment.\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.32 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.43 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@shortopts = internal constant [13 x i8] c"+C:iS:u:v0 \09\00", align 1, !dbg !0
@longopts = internal constant [9 x %struct.option] [%struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i32 1, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !98
@optarg = external local_unnamed_addr global i8*, align 8
@usvars_used = internal unnamed_addr global i64 0, align 8, !dbg !112
@usvars_alloc = internal unnamed_addr global i64 0, align 8, !dbg !114
@usvars = internal unnamed_addr global i8** null, align 8, !dbg !116
@dev_debug = internal unnamed_addr global i1 false, align 1, !dbg !126
@optind = external local_unnamed_addr global i32, align 4
@.str.58 = private unnamed_addr constant [35 x i8] c"str && str[0] && !isspace (str[0])\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"src/env.c\00", align 1
@__PRETTY_FUNCTION__.build_argv = private unnamed_addr constant [37 x i8] c"char **build_argv(const char *, int)\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"!(sq && dq)\00", align 1
@__PRETTY_FUNCTION__.validate_split_str = private unnamed_addr constant [55 x i8] c"void validate_split_str(const char *, size_t *, int *)\00", align 1
@.str.65 = private unnamed_addr constant [48 x i8] c"'\5Cc' must not appear in double-quoted -S string\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"invalid backslash at end of string in -S\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"invalid sequence '\5C%c' in -S\00", align 1
@.str.68 = private unnamed_addr constant [53 x i8] c"only ${VARNAME} expansion is supported, error at: %s\00", align 1
@.str.69 = private unnamed_addr constant [34 x i8] c"no terminating quote in -S string\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"DUMMY\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.escape_char = private unnamed_addr constant [29 x i8] c"char escape_char(const char)\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"expanding ${%s} into %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"replacing ${%s} with null string\0A\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"split -S:  %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c" into:    %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"     &    %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"invalid option -- '%c'\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"use -[v]S to pass options in shebang lines\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Assaf Gordon\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"cleaning environ\0A\00", align 1
@main.dummy_environ = internal global [1 x i8*] zeroinitializer, align 8, !dbg !65
@environ = external local_unnamed_addr global i8**, align 8
@.str.72 = private unnamed_addr constant [14 x i8] c"unset:    %s\0A\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"cannot unset %s\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"setenv:   %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"cannot set %s\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"cannot specify --null (-0) with command\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"must specify command with --chdir (-C)\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"chdir:    %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"cannot change directory to %s\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"executing: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"   arg[%d]= %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"str && *str == '$'\00", align 1
@__PRETTY_FUNCTION__.scan_varname = private unnamed_addr constant [39 x i8] c"const char *scan_varname(const char *)\00", align 1
@vnlen = internal unnamed_addr global i64 0, align 8, !dbg !119
@varname = internal unnamed_addr global i8* null, align 8, !dbg !121
@.str.47 = private unnamed_addr constant [19 x i8] c"ignore-environment\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"split-string\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), align 8, !dbg !127
@.str.74 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !133
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !138
@.str.79 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.80 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.81 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !141
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !148
@.str.88 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.89 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.90 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.92, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.93, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.94, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.95, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.96, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.97, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.98, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.99, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.100, i32 0, i32 0), i8* null], align 16, !dbg !155
@.str.91 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.92 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.93 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.94 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.95 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.96 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.97 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.98 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.99 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.100 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !167
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !174
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !186
@.str.11.101 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.102 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.103 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.104 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.105 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.106 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.107 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !193
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !200
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !188
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !202
@.str.114 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.115 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.116 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.117 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.118 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.119 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.120 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.121 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.122 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.123 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.124 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.125 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.126 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.127 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.130 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.131 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.132 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.133 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.134 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.135 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !208
@.str.1.146 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.156 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.157 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.160 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.161 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !650 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !655, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i32 %0, metadata !654, metadata !DIExpression()), !dbg !677
  %3 = icmp eq i32 %0, 0, !dbg !678
  br i1 %3, label %9, label %4, !dbg !679

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !680, !tbaa !682
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !680
  %7 = load i8*, i8** @program_name, align 8, !dbg !680, !tbaa !682
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !680
  br label %72, !dbg !680

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !686
  %11 = load i8*, i8** @program_name, align 8, !dbg !686, !tbaa !682
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !686
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !687
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !682
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !687
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.31, i64 0, i64 0), i32 5) #12, !dbg !688
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !682
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #12, !dbg !688
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !693
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !693, !tbaa !682
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !693
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !694
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !694, !tbaa !682
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !694
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([217 x i8], [217 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !695
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !695, !tbaa !682
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !695
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !696
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !696, !tbaa !682
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !696
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !697
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !697, !tbaa !682
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !697
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0), i32 5) #12, !dbg !698
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !698, !tbaa !682
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !698
  %37 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !699
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %37) #12, !dbg !699
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %37, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !673
  %38 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !700
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !662, metadata !DIExpression()) #12, !dbg !701
  br label %39, !dbg !702

; <label>:39:                                     ; preds = %44, %9
  %40 = phi i8* [ %47, %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), %9 ]
  %41 = phi %struct.infomap* [ %45, %44 ], [ %38, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !662, metadata !DIExpression()) #12, !dbg !701
  %42 = tail call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %40) #15, !dbg !702
  %43 = icmp eq i32 %42, 0, !dbg !702
  br i1 %43, label %49, label %44, !dbg !703

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 1, !dbg !704
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !662, metadata !DIExpression()) #12, !dbg !701
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 0, i32 0, !dbg !705
  %47 = load i8*, i8** %46, align 8, !dbg !705, !tbaa !706
  %48 = icmp eq i8* %47, null, !dbg !708
  br i1 %48, label %49, label %39, !dbg !709, !llvm.loop !710

; <label>:49:                                     ; preds = %44, %39
  %50 = phi %struct.infomap* [ %45, %44 ], [ %41, %39 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !662, metadata !DIExpression()) #12, !dbg !701
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !662, metadata !DIExpression()) #12, !dbg !701
  %51 = getelementptr inbounds %struct.infomap, %struct.infomap* %50, i64 0, i32 1, !dbg !713
  %52 = load i8*, i8** %51, align 8, !dbg !713, !tbaa !715
  %53 = icmp eq i8* %52, null, !dbg !716
  %54 = select i1 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %52, !dbg !717
  call void @llvm.dbg.value(metadata i8* %54, metadata !661, metadata !DIExpression()) #12, !dbg !718
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i32 5) #12, !dbg !719
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0)) #12, !dbg !719
  %57 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !720
  call void @llvm.dbg.value(metadata i8* %57, metadata !669, metadata !DIExpression()) #12, !dbg !721
  %58 = icmp eq i8* %57, null, !dbg !722
  br i1 %58, label %65, label %59, !dbg !724

; <label>:59:                                     ; preds = %49
  %60 = tail call i32 @strncmp(i8* nonnull %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i64 3) #15, !dbg !725
  %61 = icmp eq i32 %60, 0, !dbg !725
  br i1 %61, label %65, label %62, !dbg !726

; <label>:62:                                     ; preds = %59
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.43, i64 0, i64 0), i32 5) #12, !dbg !727
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !727
  br label %65, !dbg !729

; <label>:65:                                     ; preds = %49, %59, %62
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i64 0, i64 0), i32 5) #12, !dbg !730
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !730
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i32 5) #12, !dbg !731
  %69 = icmp eq i8* %54, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), !dbg !731
  %70 = select i1 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !731
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* %54, i8* %70) #12, !dbg !731
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %37) #12, !dbg !732
  br label %72

; <label>:72:                                     ; preds = %65, %4
  tail call void @exit(i32 %0) #16, !dbg !733
  unreachable, !dbg !733
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !67 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !72, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i8** %1, metadata !73, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i8 0, metadata !75, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i8 0, metadata !77, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i8* null, metadata !78, metadata !DIExpression()), !dbg !738
  %3 = load i8*, i8** %1, align 8, !dbg !739, !tbaa !682
  tail call void @set_program_name(i8* %3) #12, !dbg !740
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !741
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !742
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !743
  call void @llvm.dbg.value(metadata i32 125, metadata !744, metadata !DIExpression()), !dbg !747
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !749, !tbaa !751
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !753
  br label %8, !dbg !754

; <label>:8:                                      ; preds = %559, %2
  %9 = phi i32 [ %560, %559 ], [ %0, %2 ]
  %10 = phi i8** [ %180, %559 ], [ %1, %2 ]
  %11 = phi i8* [ %15, %559 ], [ null, %2 ]
  %12 = phi i8 [ %19, %559 ], [ 0, %2 ]
  %13 = phi i8 [ %22, %559 ], [ 0, %2 ]
  br label %14, !dbg !755

; <label>:14:                                     ; preds = %8, %60
  %15 = phi i8* [ %11, %8 ], [ %61, %60 ]
  %16 = phi i8 [ %12, %8 ], [ %19, %60 ]
  %17 = phi i8 [ %13, %8 ], [ %22, %60 ]
  br label %18, !dbg !755

; <label>:18:                                     ; preds = %23, %14
  %19 = phi i8 [ %16, %14 ], [ 1, %23 ]
  %20 = phi i8 [ %17, %14 ], [ %22, %23 ]
  br label %21, !dbg !755

; <label>:21:                                     ; preds = %23, %18
  %22 = phi i8 [ %20, %18 ], [ 1, %23 ]
  br label %23, !dbg !755

; <label>:23:                                     ; preds = %77, %21
  call void @llvm.dbg.value(metadata i8 %22, metadata !75, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i8 %19, metadata !77, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i8* %15, metadata !78, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i32 %9, metadata !72, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  %24 = tail call i32 @getopt_long(i32 %9, i8** %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([9 x %struct.option], [9 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !755
  call void @llvm.dbg.value(metadata i32 %24, metadata !74, metadata !DIExpression()), !dbg !756
  switch i32 %24, label %568 [
    i32 -1, label %569
    i32 105, label %21
    i32 117, label %25
    i32 118, label %59
    i32 48, label %18
    i32 67, label %60
    i32 83, label %62
    i32 32, label %561
    i32 9, label %561
    i32 -130, label %564
    i32 -131, label %565
  ], !dbg !754, !llvm.loop !757

; <label>:25:                                     ; preds = %23
  %26 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !759, !tbaa !682
  call void @llvm.dbg.value(metadata i8** @optarg, metadata !762, metadata !DIExpression(DW_OP_deref)) #12, !dbg !765
  %27 = load i64, i64* @usvars_used, align 8, !dbg !767, !tbaa !769
  %28 = load i64, i64* @usvars_alloc, align 8, !dbg !771, !tbaa !769
  %29 = icmp eq i64 %27, %28, !dbg !772
  br i1 %29, label %32, label %30, !dbg !773

; <label>:30:                                     ; preds = %25
  %31 = load i8**, i8*** @usvars, align 8, !dbg !774, !tbaa !682
  br label %53, !dbg !773

; <label>:32:                                     ; preds = %25
  %33 = load i8*, i8** bitcast (i8*** @usvars to i8**), align 8, !dbg !775, !tbaa !682
  call void @llvm.dbg.value(metadata i8* %33, metadata !38, metadata !DIExpression()) #12, !dbg !776
  call void @llvm.dbg.value(metadata i64* @usvars_alloc, metadata !39, metadata !DIExpression()) #12, !dbg !778
  call void @llvm.dbg.value(metadata i64 8, metadata !40, metadata !DIExpression()) #12, !dbg !779
  call void @llvm.dbg.value(metadata i64 %28, metadata !41, metadata !DIExpression()) #12, !dbg !780
  %34 = icmp eq i8* %33, null, !dbg !781
  br i1 %34, label %35, label %40, !dbg !783

; <label>:35:                                     ; preds = %32
  %36 = icmp eq i64 %27, 0, !dbg !784
  br i1 %36, label %47, label %37, !dbg !787

; <label>:37:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i64 %28, metadata !41, metadata !DIExpression()) #12, !dbg !780
  %38 = icmp ugt i64 %27, 1152921504606846975, !dbg !788
  br i1 %38, label %39, label %47, !dbg !790

; <label>:39:                                     ; preds = %37
  tail call void @xalloc_die() #16, !dbg !791
  unreachable, !dbg !791

; <label>:40:                                     ; preds = %32
  %41 = icmp ult i64 %27, 768614336404564650, !dbg !792
  br i1 %41, label %43, label %42, !dbg !795

; <label>:42:                                     ; preds = %40
  tail call void @xalloc_die() #16, !dbg !796
  unreachable, !dbg !796

; <label>:43:                                     ; preds = %40
  %44 = lshr i64 %27, 1, !dbg !797
  %45 = add i64 %27, 1, !dbg !798
  %46 = add i64 %45, %44, !dbg !799
  call void @llvm.dbg.value(metadata i64 %46, metadata !41, metadata !DIExpression()) #12, !dbg !780
  br label %47

; <label>:47:                                     ; preds = %43, %37, %35
  %48 = phi i64 [ %46, %43 ], [ %27, %37 ], [ 16, %35 ], !dbg !800
  call void @llvm.dbg.value(metadata i64 %48, metadata !41, metadata !DIExpression()) #12, !dbg !780
  store i64 %48, i64* @usvars_alloc, align 8, !dbg !801, !tbaa !769
  %49 = shl i64 %48, 3, !dbg !802
  %50 = tail call i8* @xrealloc(i8* %33, i64 %49) #12, !dbg !803
  store i8* %50, i8** bitcast (i8*** @usvars to i8**), align 8, !dbg !804, !tbaa !682
  %51 = bitcast i8* %50 to i8**, !dbg !805
  %52 = load i64, i64* @usvars_used, align 8, !dbg !806, !tbaa !769
  br label %53, !dbg !805

; <label>:53:                                     ; preds = %30, %47
  %54 = phi i64 [ %27, %30 ], [ %52, %47 ], !dbg !806
  %55 = phi i8** [ %31, %30 ], [ %51, %47 ], !dbg !774
  %56 = add i64 %54, 1, !dbg !806
  store i64 %56, i64* @usvars_used, align 8, !dbg !806, !tbaa !769
  %57 = getelementptr inbounds i8*, i8** %55, i64 %54, !dbg !774
  %58 = bitcast i8** %57 to i64*, !dbg !807
  store i64 %26, i64* %58, align 8, !dbg !807, !tbaa !682
  br label %77, !dbg !808

; <label>:59:                                     ; preds = %23
  store i1 true, i1* @dev_debug, align 1
  br label %77, !dbg !809

; <label>:60:                                     ; preds = %23
  %61 = load i8*, i8** @optarg, align 8, !dbg !810, !tbaa !682
  call void @llvm.dbg.value(metadata i8* %61, metadata !78, metadata !DIExpression()), !dbg !738
  br label %14, !dbg !811, !llvm.loop !757

; <label>:62:                                     ; preds = %23
  %63 = load i8*, i8** @optarg, align 8, !dbg !812, !tbaa !682
  call void @llvm.dbg.value(metadata i8* %63, metadata !813, metadata !DIExpression()) #12, !dbg !826
  call void @llvm.dbg.value(metadata i32* @optind, metadata !819, metadata !DIExpression()) #12, !dbg !828
  %64 = tail call i16** @__ctype_b_loc() #17, !dbg !829
  %65 = load i16*, i16** %64, align 8, !tbaa !682
  br label %66, !dbg !830

; <label>:66:                                     ; preds = %66, %62
  %67 = phi i8* [ %63, %62 ], [ %74, %66 ]
  call void @llvm.dbg.value(metadata i8* %67, metadata !813, metadata !DIExpression()) #12, !dbg !826
  %68 = load i8, i8* %67, align 1, !dbg !829, !tbaa !831
  %69 = sext i8 %68 to i64, !dbg !829
  %70 = getelementptr inbounds i16, i16* %65, i64 %69, !dbg !829
  %71 = load i16, i16* %70, align 2, !dbg !829, !tbaa !832
  %72 = and i16 %71, 8192, !dbg !829
  %73 = icmp eq i16 %72, 0, !dbg !830
  %74 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !834
  call void @llvm.dbg.value(metadata i8* %74, metadata !813, metadata !DIExpression()) #12, !dbg !826
  br i1 %73, label %75, label %66, !dbg !830, !llvm.loop !835

; <label>:75:                                     ; preds = %66
  call void @llvm.dbg.value(metadata i8* %67, metadata !813, metadata !DIExpression()) #12, !dbg !826
  call void @llvm.dbg.value(metadata i8* %67, metadata !813, metadata !DIExpression()) #12, !dbg !826
  call void @llvm.dbg.value(metadata i8* %67, metadata !813, metadata !DIExpression()) #12, !dbg !826
  call void @llvm.dbg.value(metadata i8* %67, metadata !813, metadata !DIExpression()) #12, !dbg !826
  call void @llvm.dbg.value(metadata i8* %67, metadata !813, metadata !DIExpression()) #12, !dbg !826
  call void @llvm.dbg.value(metadata i8* %67, metadata !813, metadata !DIExpression()) #12, !dbg !826
  call void @llvm.dbg.value(metadata i8* %67, metadata !813, metadata !DIExpression()) #12, !dbg !826
  call void @llvm.dbg.value(metadata i8* %67, metadata !813, metadata !DIExpression()) #12, !dbg !826
  call void @llvm.dbg.value(metadata i8* %67, metadata !813, metadata !DIExpression()) #12, !dbg !826
  %76 = icmp eq i8 %68, 0, !dbg !838
  br i1 %76, label %77, label %78, !dbg !840

; <label>:77:                                     ; preds = %75, %59, %53
  br label %23, !dbg !736, !llvm.loop !757

; <label>:78:                                     ; preds = %75
  call void @llvm.dbg.value(metadata i8* %67, metadata !813, metadata !DIExpression()) #12, !dbg !826
  call void @llvm.dbg.value(metadata i8* %67, metadata !813, metadata !DIExpression()) #12, !dbg !826
  %79 = load i32, i32* @optind, align 4, !dbg !841, !tbaa !751
  call void @llvm.dbg.value(metadata i8* %67, metadata !842, metadata !DIExpression()) #12, !dbg !862
  call void @llvm.dbg.value(metadata i32 undef, metadata !847, metadata !DIExpression()) #12, !dbg !864
  call void @llvm.dbg.value(metadata i8 0, metadata !848, metadata !DIExpression()) #12, !dbg !865
  call void @llvm.dbg.value(metadata i8 0, metadata !849, metadata !DIExpression()) #12, !dbg !866
  call void @llvm.dbg.value(metadata i8 1, metadata !850, metadata !DIExpression()) #12, !dbg !867
  call void @llvm.dbg.value(metadata i32 0, metadata !854, metadata !DIExpression()) #12, !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !855, metadata !DIExpression()) #12, !dbg !869
  %80 = icmp eq i8* %67, null, !dbg !870
  br i1 %80, label %81, label %82, !dbg !870

; <label>:81:                                     ; preds = %78
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 336, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.build_argv, i64 0, i64 0)) #16, !dbg !870
  unreachable, !dbg !870

; <label>:82:                                     ; preds = %78
  call void @llvm.dbg.value(metadata i8* %67, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i32 1, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 0, metadata !882, metadata !DIExpression()) #12, !dbg !891
  call void @llvm.dbg.value(metadata i8 0, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i8 0, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8* %67, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i32 1, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 0, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i8 0, metadata !880, metadata !DIExpression()) #12, !dbg !893
  %83 = tail call i64 @strlen(i8* nonnull %67) #15, !dbg !894
  %84 = add i64 %83, 1, !dbg !895
  call void @llvm.dbg.value(metadata i64 %84, metadata !884, metadata !DIExpression()) #12, !dbg !896
  br label %85, !dbg !897

; <label>:85:                                     ; preds = %160, %82
  %86 = phi i16 [ %164, %160 ], [ %71, %82 ], !dbg !898
  %87 = phi i8 [ %158, %160 ], [ %68, %82 ]
  %88 = phi i8* [ %153, %160 ], [ %67, %82 ]
  %89 = phi i32 [ %157, %160 ], [ 1, %82 ]
  %90 = phi i64 [ %156, %160 ], [ %84, %82 ]
  %91 = phi i32 [ %102, %160 ], [ 0, %82 ]
  %92 = phi i8 [ %155, %160 ], [ 0, %82 ]
  %93 = phi i8 [ %154, %160 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i32 %89, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i64 %90, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i8 %92, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i8 %93, metadata !880, metadata !DIExpression()) #12, !dbg !893
  %94 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !897
  %95 = load i8, i8* %94, align 1, !dbg !900, !tbaa !831
  call void @llvm.dbg.value(metadata i8 %95, metadata !886, metadata !DIExpression()) #12, !dbg !901
  %96 = and i16 %86, 8192, !dbg !898
  %97 = icmp ne i16 %96, 0, !dbg !898
  %98 = or i8 %93, %92, !dbg !902
  %99 = and i8 %98, 1, !dbg !902
  %100 = icmp eq i8 %99, 0, !dbg !902
  %101 = and i1 %97, %100, !dbg !902
  call void @llvm.dbg.value(metadata i8 0, metadata !882, metadata !DIExpression()) #12, !dbg !891
  %102 = zext i1 %101 to i32, !dbg !902
  %103 = select i1 %101, i32 0, i32 %91, !dbg !902
  %104 = add nsw i32 %103, %89, !dbg !902
  call void @llvm.dbg.value(metadata i32 %104, metadata !885, metadata !DIExpression()) #12, !dbg !890
  %105 = sext i8 %87 to i32, !dbg !903
  switch i32 %105, label %152 [
    i32 39, label %106
    i32 34, label %113
    i32 92, label %120
    i32 36, label %138
  ], !dbg !904

; <label>:106:                                    ; preds = %85
  %107 = and i8 %92, 1, !dbg !905
  %108 = and i8 %107, %93, !dbg !905
  %109 = icmp eq i8 %108, 0, !dbg !905
  br i1 %109, label %111, label %110, !dbg !905

; <label>:110:                                    ; preds = %106
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 244, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.validate_split_str, i64 0, i64 0)) #16, !dbg !905
  unreachable, !dbg !905

; <label>:111:                                    ; preds = %106
  %112 = xor i8 %99, 1, !dbg !909
  call void @llvm.dbg.value(metadata i8 %112, metadata !881, metadata !DIExpression()) #12, !dbg !892
  br label %152, !dbg !910

; <label>:113:                                    ; preds = %85
  %114 = and i8 %92, 1, !dbg !911
  %115 = and i8 %114, %93, !dbg !911
  %116 = icmp eq i8 %115, 0, !dbg !911
  br i1 %116, label %118, label %117, !dbg !911

; <label>:117:                                    ; preds = %113
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 249, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.validate_split_str, i64 0, i64 0)) #16, !dbg !911
  unreachable, !dbg !911

; <label>:118:                                    ; preds = %113
  %119 = xor i8 %99, 1, !dbg !914
  call void @llvm.dbg.value(metadata i8 %119, metadata !880, metadata !DIExpression()) #12, !dbg !893
  br label %152, !dbg !915

; <label>:120:                                    ; preds = %85
  %121 = and i8 %93, 1, !dbg !916
  %122 = icmp ne i8 %121, 0, !dbg !917
  %123 = icmp eq i8 %95, 99, !dbg !919
  %124 = and i1 %122, %123, !dbg !920
  br i1 %124, label %125, label %127, !dbg !920

; <label>:125:                                    ; preds = %120
  %126 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.65, i64 0, i64 0), i32 5) #12, !dbg !921
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %126) #12, !dbg !921
  unreachable, !dbg !921

; <label>:127:                                    ; preds = %120
  switch i8 %95, label %130 [
    i8 0, label %128
    i8 99, label %133
    i8 102, label %133
    i8 110, label %133
    i8 114, label %133
    i8 116, label %133
    i8 118, label %133
    i8 35, label %133
    i8 36, label %133
    i8 95, label %133
    i8 34, label %133
    i8 39, label %133
    i8 92, label %133
  ], !dbg !922

; <label>:128:                                    ; preds = %127
  %129 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.66, i64 0, i64 0), i32 5) #12, !dbg !923
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %129) #12, !dbg !923
  unreachable, !dbg !923

; <label>:130:                                    ; preds = %127
  %131 = sext i8 %95 to i32, !dbg !925
  %132 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.67, i64 0, i64 0), i32 5) #12, !dbg !926
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %132, i32 %131) #12, !dbg !926
  unreachable, !dbg !926

; <label>:133:                                    ; preds = %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127
  %134 = icmp eq i8 %95, 95, !dbg !928
  %135 = zext i1 %134 to i32, !dbg !930
  %136 = add nsw i32 %104, %135, !dbg !930
  call void @llvm.dbg.value(metadata i32 %136, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8* %94, metadata !873, metadata !DIExpression()) #12, !dbg !888
  %137 = getelementptr inbounds i8, i8* %88, i64 2, !dbg !931
  br label %152, !dbg !932

; <label>:138:                                    ; preds = %85
  %139 = and i8 %92, 1, !dbg !933
  %140 = icmp eq i8 %139, 0, !dbg !933
  br i1 %140, label %141, label %152, !dbg !934

; <label>:141:                                    ; preds = %138
  %142 = tail call fastcc i8* @extract_varname(i8* nonnull %88) #12, !dbg !935
  call void @llvm.dbg.value(metadata i8* %142, metadata !883, metadata !DIExpression()) #12, !dbg !937
  %143 = icmp eq i8* %142, null, !dbg !938
  br i1 %143, label %144, label %146, !dbg !939

; <label>:144:                                    ; preds = %141
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i8* %88, metadata !873, metadata !DIExpression()) #12, !dbg !888
  %145 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.68, i64 0, i64 0), i32 5) #12, !dbg !940
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %145, i8* nonnull %88) #12, !dbg !940
  unreachable, !dbg !940

; <label>:146:                                    ; preds = %141
  %147 = tail call i8* @getenv(i8* nonnull %142) #12, !dbg !941
  call void @llvm.dbg.value(metadata i8* %147, metadata !883, metadata !DIExpression()) #12, !dbg !937
  %148 = icmp eq i8* %147, null, !dbg !943
  br i1 %148, label %152, label %149, !dbg !944

; <label>:149:                                    ; preds = %146
  %150 = tail call i64 @strlen(i8* nonnull %147) #15, !dbg !945
  %151 = add i64 %150, %90, !dbg !946
  call void @llvm.dbg.value(metadata i64 %151, metadata !884, metadata !DIExpression()) #12, !dbg !896
  br label %152, !dbg !947

; <label>:152:                                    ; preds = %149, %146, %138, %133, %118, %111, %85
  %153 = phi i8* [ %94, %146 ], [ %94, %138 ], [ %94, %149 ], [ %94, %85 ], [ %137, %133 ], [ %94, %118 ], [ %94, %111 ], !dbg !931
  %154 = phi i8 [ %93, %146 ], [ %93, %138 ], [ %93, %149 ], [ %93, %85 ], [ %93, %133 ], [ %119, %118 ], [ %93, %111 ], !dbg !948
  %155 = phi i8 [ %92, %146 ], [ %92, %138 ], [ %92, %149 ], [ %92, %85 ], [ %92, %133 ], [ %92, %118 ], [ %112, %111 ], !dbg !949
  %156 = phi i64 [ %90, %146 ], [ %90, %138 ], [ %151, %149 ], [ %90, %85 ], [ %90, %133 ], [ %90, %118 ], [ %90, %111 ], !dbg !948
  %157 = phi i32 [ %104, %146 ], [ %104, %138 ], [ %104, %149 ], [ %104, %85 ], [ %136, %133 ], [ %104, %118 ], [ %104, %111 ], !dbg !950
  call void @llvm.dbg.value(metadata i8* %153, metadata !873, metadata !DIExpression()) #12, !dbg !888
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  %158 = load i8, i8* %153, align 1, !dbg !953, !tbaa !831
  %159 = icmp eq i8 %158, 0, !dbg !954
  br i1 %159, label %165, label %160, !dbg !954, !llvm.loop !955

; <label>:160:                                    ; preds = %152
  %161 = load i16*, i16** %64, align 8, !dbg !898, !tbaa !682
  %162 = sext i8 %158 to i64
  %163 = getelementptr inbounds i16, i16* %161, i64 %162
  %164 = load i16, i16* %163, align 2, !dbg !898, !tbaa !832
  br label %85, !dbg !954

; <label>:165:                                    ; preds = %152
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.dbg.value(metadata i8 %154, metadata !880, metadata !DIExpression()) #12, !dbg !893
  call void @llvm.dbg.value(metadata i8 %155, metadata !881, metadata !DIExpression()) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64 %156, metadata !884, metadata !DIExpression()) #12, !dbg !896
  call void @llvm.dbg.value(metadata i32 %157, metadata !885, metadata !DIExpression()) #12, !dbg !890
  %166 = or i8 %155, %154, !dbg !958
  %167 = and i8 %166, 1, !dbg !958
  %168 = icmp eq i8 %167, 0, !dbg !958
  br i1 %168, label %171, label %169, !dbg !958

; <label>:169:                                    ; preds = %165
  %170 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.69, i64 0, i64 0), i32 5) #12, !dbg !960
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %170) #12, !dbg !960
  unreachable, !dbg !960

; <label>:171:                                    ; preds = %165
  call void @llvm.dbg.value(metadata i64 %156, metadata !855, metadata !DIExpression()) #12, !dbg !869
  %172 = add i64 %156, 7, !dbg !961
  %173 = tail call noalias i8* @xmalloc(i64 %172) #12, !dbg !962
  call void @llvm.dbg.value(metadata i8* %173, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i32 %157, metadata !854, metadata !DIExpression()) #12, !dbg !868
  %174 = add i32 %9, 2, !dbg !964
  %175 = sub i32 %174, %79, !dbg !965
  %176 = add i32 %175, %157, !dbg !966
  %177 = sext i32 %176 to i64, !dbg !967
  %178 = shl nsw i64 %177, 3, !dbg !968
  %179 = tail call noalias i8* @xmalloc(i64 %178) #12, !dbg !969
  %180 = bitcast i8* %179 to i8**, !dbg !969
  call void @llvm.dbg.value(metadata i8** %180, metadata !852, metadata !DIExpression()) #12, !dbg !970
  call void @llvm.dbg.value(metadata i8** %180, metadata !853, metadata !DIExpression()) #12, !dbg !971
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %173, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i64 6, i1 false) #12, !dbg !972
  %181 = getelementptr inbounds i8, i8* %179, i64 8, !dbg !973
  %182 = bitcast i8* %181 to i8**, !dbg !973
  call void @llvm.dbg.value(metadata i8** %182, metadata !853, metadata !DIExpression()) #12, !dbg !971
  store i8* %173, i8** %180, align 8, !dbg !974, !tbaa !682
  %183 = getelementptr inbounds i8, i8* %173, i64 6, !dbg !975
  call void @llvm.dbg.value(metadata i8* %183, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i8* %67, metadata !842, metadata !DIExpression()) #12, !dbg !862
  call void @llvm.dbg.value(metadata i8** %182, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8 0, metadata !848, metadata !DIExpression()) #12, !dbg !865
  call void @llvm.dbg.value(metadata i8 1, metadata !850, metadata !DIExpression()) #12, !dbg !867
  call void @llvm.dbg.value(metadata i8 0, metadata !849, metadata !DIExpression()) #12, !dbg !866
  %184 = load i8, i8* %67, align 1, !dbg !976, !tbaa !831
  %185 = icmp eq i8 %184, 0, !dbg !977
  br i1 %185, label %320, label %186, !dbg !977

; <label>:186:                                    ; preds = %171, %311
  %187 = phi i8 [ %318, %311 ], [ %184, %171 ]
  %188 = phi i8* [ %317, %311 ], [ %67, %171 ]
  %189 = phi i8** [ %316, %311 ], [ %182, %171 ]
  %190 = phi i8 [ %315, %311 ], [ 0, %171 ]
  %191 = phi i8* [ %314, %311 ], [ %183, %171 ]
  %192 = phi i8 [ %313, %311 ], [ 1, %171 ]
  %193 = phi i8 [ %312, %311 ], [ 0, %171 ]
  call void @llvm.dbg.value(metadata i8* %188, metadata !842, metadata !DIExpression()) #12, !dbg !862
  call void @llvm.dbg.value(metadata i8** %189, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8 %190, metadata !848, metadata !DIExpression()) #12, !dbg !865
  call void @llvm.dbg.value(metadata i8* %191, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i8 %192, metadata !850, metadata !DIExpression()) #12, !dbg !867
  call void @llvm.dbg.value(metadata i8 %193, metadata !849, metadata !DIExpression()) #12, !dbg !866
  call void @llvm.dbg.value(metadata i8 %187, metadata !856, metadata !DIExpression()) #12, !dbg !978
  %194 = sext i8 %187 to i32, !dbg !979
  switch i32 %194, label %297 [
    i32 39, label %195
    i32 34, label %211
    i32 32, label %227
    i32 9, label %227
    i32 35, label %234
    i32 92, label %237
    i32 36, label %260
  ], !dbg !980

; <label>:195:                                    ; preds = %186
  %196 = and i8 %190, 1, !dbg !981
  %197 = icmp eq i8 %196, 0, !dbg !981
  br i1 %197, label %198, label %297, !dbg !983

; <label>:198:                                    ; preds = %195
  %199 = and i8 %193, 1, !dbg !984
  %200 = xor i8 %199, 1, !dbg !985
  call void @llvm.dbg.value(metadata i8 %200, metadata !849, metadata !DIExpression()) #12, !dbg !866
  %201 = and i8 %192, 1, !dbg !986
  %202 = icmp eq i8 %201, 0, !dbg !986
  br i1 %202, label %206, label %203, !dbg !989

; <label>:203:                                    ; preds = %198
  %204 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !990
  call void @llvm.dbg.value(metadata i8* %204, metadata !851, metadata !DIExpression()) #12, !dbg !963
  store i8 0, i8* %191, align 1, !dbg !990, !tbaa !831
  %205 = getelementptr inbounds i8*, i8** %189, i64 1, !dbg !990
  call void @llvm.dbg.value(metadata i8** %205, metadata !853, metadata !DIExpression()) #12, !dbg !971
  store i8* %204, i8** %189, align 8, !dbg !990, !tbaa !682
  call void @llvm.dbg.value(metadata i8 0, metadata !850, metadata !DIExpression()) #12, !dbg !867
  br label %206, !dbg !990

; <label>:206:                                    ; preds = %203, %198
  %207 = phi i8 [ 0, %203 ], [ %192, %198 ], !dbg !992
  %208 = phi i8* [ %204, %203 ], [ %191, %198 ], !dbg !992
  %209 = phi i8** [ %205, %203 ], [ %189, %198 ], !dbg !992
  call void @llvm.dbg.value(metadata i8** %209, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8* %208, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i8 %207, metadata !850, metadata !DIExpression()) #12, !dbg !867
  %210 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !993
  call void @llvm.dbg.value(metadata i8* %210, metadata !842, metadata !DIExpression()) #12, !dbg !862
  br label %311, !dbg !994, !llvm.loop !995

; <label>:211:                                    ; preds = %186
  %212 = and i8 %193, 1, !dbg !998
  %213 = icmp eq i8 %212, 0, !dbg !998
  br i1 %213, label %214, label %297, !dbg !1000

; <label>:214:                                    ; preds = %211
  %215 = and i8 %190, 1, !dbg !1001
  %216 = xor i8 %215, 1, !dbg !1002
  call void @llvm.dbg.value(metadata i8 %216, metadata !848, metadata !DIExpression()) #12, !dbg !865
  %217 = and i8 %192, 1, !dbg !1003
  %218 = icmp eq i8 %217, 0, !dbg !1003
  br i1 %218, label %222, label %219, !dbg !1006

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1007
  call void @llvm.dbg.value(metadata i8* %220, metadata !851, metadata !DIExpression()) #12, !dbg !963
  store i8 0, i8* %191, align 1, !dbg !1007, !tbaa !831
  %221 = getelementptr inbounds i8*, i8** %189, i64 1, !dbg !1007
  call void @llvm.dbg.value(metadata i8** %221, metadata !853, metadata !DIExpression()) #12, !dbg !971
  store i8* %220, i8** %189, align 8, !dbg !1007, !tbaa !682
  call void @llvm.dbg.value(metadata i8 0, metadata !850, metadata !DIExpression()) #12, !dbg !867
  br label %222, !dbg !1007

; <label>:222:                                    ; preds = %219, %214
  %223 = phi i8 [ 0, %219 ], [ %192, %214 ], !dbg !992
  %224 = phi i8* [ %220, %219 ], [ %191, %214 ], !dbg !992
  %225 = phi i8** [ %221, %219 ], [ %189, %214 ], !dbg !992
  call void @llvm.dbg.value(metadata i8** %225, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8* %224, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i8 %223, metadata !850, metadata !DIExpression()) #12, !dbg !867
  %226 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %226, metadata !842, metadata !DIExpression()) #12, !dbg !862
  br label %311, !dbg !1010, !llvm.loop !995

; <label>:227:                                    ; preds = %186, %186
  %228 = or i8 %193, %190, !dbg !1011
  %229 = and i8 %228, 1, !dbg !1011
  %230 = icmp eq i8 %229, 0, !dbg !1011
  br i1 %230, label %231, label %297, !dbg !1011

; <label>:231:                                    ; preds = %227
  call void @llvm.dbg.value(metadata i8 1, metadata !850, metadata !DIExpression()) #12, !dbg !867
  %232 = tail call i64 @strspn(i8* %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #15, !dbg !1013
  %233 = getelementptr inbounds i8, i8* %188, i64 %232, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %233, metadata !842, metadata !DIExpression()) #12, !dbg !862
  br label %311, !dbg !1015, !llvm.loop !995

; <label>:234:                                    ; preds = %186
  %235 = and i8 %192, 1, !dbg !1016
  %236 = icmp eq i8 %235, 0, !dbg !1016
  br i1 %236, label %297, label %320, !dbg !1018

; <label>:237:                                    ; preds = %186
  %238 = and i8 %193, 1, !dbg !1019
  %239 = icmp eq i8 %238, 0, !dbg !1019
  %240 = getelementptr inbounds i8, i8* %188, i64 1
  %241 = load i8, i8* %240, align 1, !dbg !1021, !tbaa !831
  br i1 %239, label %243, label %242, !dbg !1022

; <label>:242:                                    ; preds = %237
  switch i8 %241, label %297 [
    i8 92, label %296
    i8 39, label %296
  ], !dbg !1023

; <label>:243:                                    ; preds = %237
  call void @llvm.dbg.value(metadata i8* %240, metadata !842, metadata !DIExpression()) #12, !dbg !862
  call void @llvm.dbg.value(metadata i8 %241, metadata !856, metadata !DIExpression()) #12, !dbg !978
  switch i8 %241, label %249 [
    i8 92, label %296
    i8 39, label %296
    i8 35, label %297
    i8 36, label %297
    i8 34, label %297
    i8 95, label %244
    i8 99, label %320
  ], !dbg !1024

; <label>:244:                                    ; preds = %243
  %245 = and i8 %190, 1, !dbg !1026
  %246 = icmp eq i8 %245, 0, !dbg !1026
  br i1 %246, label %247, label %297, !dbg !1030

; <label>:247:                                    ; preds = %244
  %248 = getelementptr inbounds i8, i8* %188, i64 2, !dbg !1031
  call void @llvm.dbg.value(metadata i8* %248, metadata !842, metadata !DIExpression()) #12, !dbg !862
  call void @llvm.dbg.value(metadata i8 1, metadata !850, metadata !DIExpression()) #12, !dbg !867
  br label %311, !dbg !1033, !llvm.loop !995

; <label>:249:                                    ; preds = %243
  call void @llvm.dbg.value(metadata i8 %241, metadata !1034, metadata !DIExpression()) #12, !dbg !1039
  %250 = sext i8 %241 to i32, !dbg !1042
  %251 = add nsw i32 %250, -102, !dbg !1043
  %252 = lshr i32 %251, 1, !dbg !1043
  %253 = shl i32 %251, 31, !dbg !1043
  %254 = or i32 %252, %253, !dbg !1043
  switch i32 %254, label %259 [
    i32 0, label %297
    i32 4, label %255
    i32 6, label %256
    i32 7, label %257
    i32 8, label %258
  ], !dbg !1043

; <label>:255:                                    ; preds = %249
  br label %297, !dbg !1044

; <label>:256:                                    ; preds = %249
  br label %297, !dbg !1046

; <label>:257:                                    ; preds = %249
  br label %297, !dbg !1047

; <label>:258:                                    ; preds = %249
  br label %297, !dbg !1048

; <label>:259:                                    ; preds = %249
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.escape_char, i64 0, i64 0)) #16, !dbg !1049
  unreachable, !dbg !1049

; <label>:260:                                    ; preds = %186
  %261 = and i8 %193, 1, !dbg !1052
  %262 = icmp eq i8 %261, 0, !dbg !1052
  br i1 %262, label %263, label %297, !dbg !1054

; <label>:263:                                    ; preds = %260
  %264 = tail call fastcc i8* @extract_varname(i8* %188) #12, !dbg !1055
  call void @llvm.dbg.value(metadata i8* %264, metadata !858, metadata !DIExpression()) #12, !dbg !1056
  %265 = tail call i8* @getenv(i8* %264) #12, !dbg !1057
  call void @llvm.dbg.value(metadata i8* %265, metadata !861, metadata !DIExpression()) #12, !dbg !1058
  %266 = icmp eq i8* %265, null, !dbg !1059
  br i1 %266, label %285, label %267, !dbg !1061

; <label>:267:                                    ; preds = %263
  %268 = and i8 %192, 1, !dbg !1062
  %269 = icmp eq i8 %268, 0, !dbg !1062
  br i1 %269, label %273, label %270, !dbg !1066

; <label>:270:                                    ; preds = %267
  %271 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1067
  call void @llvm.dbg.value(metadata i8* %271, metadata !851, metadata !DIExpression()) #12, !dbg !963
  store i8 0, i8* %191, align 1, !dbg !1067, !tbaa !831
  %272 = getelementptr inbounds i8*, i8** %189, i64 1, !dbg !1067
  call void @llvm.dbg.value(metadata i8** %272, metadata !853, metadata !DIExpression()) #12, !dbg !971
  store i8* %271, i8** %189, align 8, !dbg !1067, !tbaa !682
  call void @llvm.dbg.value(metadata i8 0, metadata !850, metadata !DIExpression()) #12, !dbg !867
  br label %273, !dbg !1067

; <label>:273:                                    ; preds = %270, %267
  %274 = phi i8 [ 0, %270 ], [ %192, %267 ], !dbg !992
  %275 = phi i8* [ %271, %270 ], [ %191, %267 ], !dbg !992
  %276 = phi i8** [ %272, %270 ], [ %189, %267 ], !dbg !992
  call void @llvm.dbg.value(metadata i8** %276, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8* %275, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i8 %274, metadata !850, metadata !DIExpression()) #12, !dbg !867
  %277 = load i1, i1* @dev_debug, align 1
  br i1 %277, label %278, label %282, !dbg !1069

; <label>:278:                                    ; preds = %273
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1071, !tbaa !682
  %280 = tail call i8* @quote(i8* nonnull %265) #12, !dbg !1071
  %281 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %279, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.62, i64 0, i64 0), i8* %264, i8* %280) #12, !dbg !1071
  br label %282, !dbg !1071

; <label>:282:                                    ; preds = %278, %273
  call void @llvm.dbg.value(metadata i8* %275, metadata !1073, metadata !DIExpression()) #12, !dbg !1082
  call void @llvm.dbg.value(metadata i8* %265, metadata !1081, metadata !DIExpression()) #12, !dbg !1082
  %283 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %275, i1 false, i1 true) #12, !dbg !1084
  %284 = tail call i8* @__stpcpy_chk(i8* nonnull %275, i8* nonnull %265, i64 %283) #12, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %284, metadata !851, metadata !DIExpression()) #12, !dbg !963
  br label %290, !dbg !1086

; <label>:285:                                    ; preds = %263
  %286 = load i1, i1* @dev_debug, align 1
  br i1 %286, label %287, label %290, !dbg !1087

; <label>:287:                                    ; preds = %285
  %288 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1089, !tbaa !682
  %289 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %288, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0), i8* %264) #12, !dbg !1089
  br label %290, !dbg !1089

; <label>:290:                                    ; preds = %287, %285, %282
  %291 = phi i8 [ %274, %282 ], [ %192, %287 ], [ %192, %285 ], !dbg !992
  %292 = phi i8* [ %284, %282 ], [ %191, %287 ], [ %191, %285 ], !dbg !992
  %293 = phi i8** [ %276, %282 ], [ %189, %287 ], [ %189, %285 ], !dbg !992
  call void @llvm.dbg.value(metadata i8** %293, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8* %292, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i8 %291, metadata !850, metadata !DIExpression()) #12, !dbg !867
  %294 = tail call i8* @strchr(i8* %188, i32 125) #15, !dbg !1091
  %295 = getelementptr inbounds i8, i8* %294, i64 1, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %295, metadata !842, metadata !DIExpression()) #12, !dbg !862
  br label %311

; <label>:296:                                    ; preds = %243, %243, %242, %242
  br label %297, !dbg !1093

; <label>:297:                                    ; preds = %296, %260, %258, %257, %256, %255, %249, %244, %243, %243, %243, %242, %234, %227, %211, %195, %186
  %298 = phi i8 [ %187, %186 ], [ %187, %260 ], [ %187, %234 ], [ %187, %227 ], [ %187, %211 ], [ %187, %195 ], [ %187, %242 ], [ 32, %244 ], [ 11, %258 ], [ 9, %257 ], [ 13, %256 ], [ 10, %255 ], [ 12, %249 ], [ %241, %296 ], [ %241, %243 ], [ %241, %243 ], [ %241, %243 ], !dbg !1096
  %299 = phi i8* [ %188, %186 ], [ %188, %260 ], [ %188, %234 ], [ %188, %227 ], [ %188, %211 ], [ %188, %195 ], [ %188, %242 ], [ %240, %244 ], [ %240, %258 ], [ %240, %257 ], [ %240, %256 ], [ %240, %255 ], [ %240, %249 ], [ %240, %296 ], [ %240, %243 ], [ %240, %243 ], [ %240, %243 ]
  call void @llvm.dbg.value(metadata i8* %299, metadata !842, metadata !DIExpression()) #12, !dbg !862
  call void @llvm.dbg.value(metadata i8 %298, metadata !856, metadata !DIExpression()) #12, !dbg !978
  %300 = and i8 %192, 1, !dbg !1093
  %301 = icmp eq i8 %300, 0, !dbg !1093
  br i1 %301, label %305, label %302, !dbg !1097

; <label>:302:                                    ; preds = %297
  %303 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1098
  call void @llvm.dbg.value(metadata i8* %303, metadata !851, metadata !DIExpression()) #12, !dbg !963
  store i8 0, i8* %191, align 1, !dbg !1098, !tbaa !831
  %304 = getelementptr inbounds i8*, i8** %189, i64 1, !dbg !1098
  call void @llvm.dbg.value(metadata i8** %304, metadata !853, metadata !DIExpression()) #12, !dbg !971
  store i8* %303, i8** %189, align 8, !dbg !1098, !tbaa !682
  call void @llvm.dbg.value(metadata i8 0, metadata !850, metadata !DIExpression()) #12, !dbg !867
  br label %305, !dbg !1098

; <label>:305:                                    ; preds = %302, %297
  %306 = phi i8 [ 0, %302 ], [ %192, %297 ], !dbg !992
  %307 = phi i8* [ %303, %302 ], [ %191, %297 ], !dbg !992
  %308 = phi i8** [ %304, %302 ], [ %189, %297 ], !dbg !992
  call void @llvm.dbg.value(metadata i8** %308, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8* %307, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i8 %306, metadata !850, metadata !DIExpression()) #12, !dbg !867
  %309 = getelementptr inbounds i8, i8* %307, i64 1, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %309, metadata !851, metadata !DIExpression()) #12, !dbg !963
  store i8 %298, i8* %307, align 1, !dbg !1101, !tbaa !831
  %310 = getelementptr inbounds i8, i8* %299, i64 1, !dbg !1102
  call void @llvm.dbg.value(metadata i8* %310, metadata !842, metadata !DIExpression()) #12, !dbg !862
  br label %311, !dbg !1103

; <label>:311:                                    ; preds = %305, %290, %247, %231, %222, %206
  %312 = phi i8 [ %193, %305 ], [ %193, %290 ], [ %193, %247 ], [ %193, %231 ], [ %193, %222 ], [ %200, %206 ], !dbg !1021
  %313 = phi i8 [ %306, %305 ], [ %291, %290 ], [ 1, %247 ], [ 1, %231 ], [ %223, %222 ], [ %207, %206 ], !dbg !1104
  %314 = phi i8* [ %309, %305 ], [ %292, %290 ], [ %191, %247 ], [ %191, %231 ], [ %224, %222 ], [ %208, %206 ], !dbg !1104
  %315 = phi i8 [ %190, %305 ], [ %190, %290 ], [ %190, %247 ], [ %190, %231 ], [ %216, %222 ], [ %190, %206 ], !dbg !992
  %316 = phi i8** [ %308, %305 ], [ %293, %290 ], [ %189, %247 ], [ %189, %231 ], [ %225, %222 ], [ %209, %206 ], !dbg !1104
  %317 = phi i8* [ %310, %305 ], [ %295, %290 ], [ %248, %247 ], [ %233, %231 ], [ %226, %222 ], [ %210, %206 ]
  call void @llvm.dbg.value(metadata i8* %317, metadata !842, metadata !DIExpression()) #12, !dbg !862
  call void @llvm.dbg.value(metadata i8** %316, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8 %315, metadata !848, metadata !DIExpression()) #12, !dbg !865
  call void @llvm.dbg.value(metadata i8* %314, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i8 %313, metadata !850, metadata !DIExpression()) #12, !dbg !867
  call void @llvm.dbg.value(metadata i8 %312, metadata !849, metadata !DIExpression()) #12, !dbg !866
  %318 = load i8, i8* %317, align 1, !dbg !976, !tbaa !831
  %319 = icmp eq i8 %318, 0, !dbg !977
  br i1 %319, label %320, label %186, !dbg !977

; <label>:320:                                    ; preds = %311, %243, %234, %171
  %321 = phi i8* [ %183, %171 ], [ %191, %243 ], [ %191, %234 ], [ %314, %311 ], !dbg !1096
  %322 = phi i8** [ %182, %171 ], [ %189, %243 ], [ %189, %234 ], [ %316, %311 ], !dbg !1105
  call void @llvm.dbg.value(metadata i8* %321, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i8* %321, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i8* %321, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i8* %321, metadata !851, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.dbg.value(metadata i8** %322, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8** %322, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8** %322, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8** %322, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8** undef, metadata !853, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8* undef, metadata !851, metadata !DIExpression()) #12, !dbg !963
  store i8 0, i8* %321, align 1, !dbg !1106, !tbaa !831
  store i8* null, i8** %322, align 8, !dbg !1107, !tbaa !682
  call void @llvm.dbg.value(metadata i8** %180, metadata !824, metadata !DIExpression()) #12, !dbg !1108
  %323 = bitcast i8** %10 to i64*, !dbg !1109
  %324 = load i64, i64* %323, align 8, !dbg !1110, !tbaa !682
  %325 = bitcast i8* %179 to i64*, !dbg !1111
  store i64 %324, i64* %325, align 8, !dbg !1111, !tbaa !682
  call void @llvm.dbg.value(metadata i8** %182, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  %326 = load i1, i1* @dev_debug, align 1
  br i1 %326, label %328, label %327, !dbg !1113

; <label>:327:                                    ; preds = %328, %320
  br label %361, !dbg !1115

; <label>:328:                                    ; preds = %320
  %329 = load i8*, i8** %182, align 8, !dbg !1117, !tbaa !682
  %330 = icmp eq i8* %329, null, !dbg !1117
  br i1 %330, label %327, label %331, !dbg !1118

; <label>:331:                                    ; preds = %328
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1119, !tbaa !682
  %333 = tail call i8* @quote(i8* nonnull %67) #12, !dbg !1119
  %334 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %332, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i8* %333) #12, !dbg !1119
  %335 = load i1, i1* @dev_debug, align 1
  br i1 %335, label %336, label %343, !dbg !1123

; <label>:336:                                    ; preds = %331
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1125, !tbaa !682
  %338 = getelementptr inbounds i8, i8* %179, i64 16, !dbg !1125
  %339 = bitcast i8* %338 to i8**, !dbg !1125
  call void @llvm.dbg.value(metadata i8** %339, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  %340 = load i8*, i8** %182, align 8, !dbg !1125, !tbaa !682
  %341 = tail call i8* @quote(i8* %340) #12, !dbg !1125
  %342 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %337, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i64 0, i64 0), i8* %341) #12, !dbg !1125
  br label %343, !dbg !1125

; <label>:343:                                    ; preds = %336, %331
  %344 = phi i8** [ %339, %336 ], [ %182, %331 ], !dbg !1127
  call void @llvm.dbg.value(metadata i8** %344, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  %345 = load i8*, i8** %344, align 8, !dbg !1128, !tbaa !682
  %346 = icmp eq i8* %345, null, !dbg !1129
  br i1 %346, label %366, label %347, !dbg !1129

; <label>:347:                                    ; preds = %343, %357
  %348 = phi i8* [ %358, %357 ], [ %345, %343 ]
  %349 = phi i8** [ %359, %357 ], [ %344, %343 ]
  call void @llvm.dbg.value(metadata i8** %349, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  %350 = load i1, i1* @dev_debug, align 1
  br i1 %350, label %351, label %357, !dbg !1130

; <label>:351:                                    ; preds = %347
  %352 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1132, !tbaa !682
  %353 = getelementptr inbounds i8*, i8** %349, i64 1, !dbg !1132
  call void @llvm.dbg.value(metadata i8** %353, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  %354 = tail call i8* @quote(i8* nonnull %348) #12, !dbg !1132
  %355 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %352, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i8* %354) #12, !dbg !1132
  %356 = load i8*, i8** %353, align 8, !dbg !1128, !tbaa !682
  br label %357, !dbg !1132

; <label>:357:                                    ; preds = %351, %347
  %358 = phi i8* [ %356, %351 ], [ %348, %347 ], !dbg !1128
  %359 = phi i8** [ %353, %351 ], [ %349, %347 ], !dbg !1134
  call void @llvm.dbg.value(metadata i8** %359, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  %360 = icmp eq i8* %358, null, !dbg !1129
  br i1 %360, label %366, label %347, !dbg !1129, !llvm.loop !1135

; <label>:361:                                    ; preds = %327, %361
  %362 = phi i8** [ %365, %361 ], [ %182, %327 ], !dbg !1138
  call void @llvm.dbg.value(metadata i8** %362, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  %363 = load i8*, i8** %362, align 8, !dbg !1115, !tbaa !682
  %364 = icmp eq i8* %363, null, !dbg !1139
  %365 = getelementptr inbounds i8*, i8** %362, i64 1, !dbg !1140
  call void @llvm.dbg.value(metadata i8** %365, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  br i1 %364, label %366, label %361, !dbg !1139, !llvm.loop !1141

; <label>:366:                                    ; preds = %357, %361, %343
  %367 = phi i8** [ %344, %343 ], [ %362, %361 ], [ %359, %357 ], !dbg !1127
  call void @llvm.dbg.value(metadata i8** %367, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  %368 = load i32, i32* @optind, align 4, !dbg !1144, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %368, metadata !822, metadata !DIExpression()) #12, !dbg !1146
  call void @llvm.dbg.value(metadata i8** %367, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  %369 = icmp slt i32 %368, %9, !dbg !1147
  br i1 %369, label %370, label %548, !dbg !1149

; <label>:370:                                    ; preds = %366
  %371 = sext i32 %368 to i64, !dbg !1149
  %372 = sext i32 %9 to i64, !dbg !1149
  %373 = sub nsw i64 %372, %371, !dbg !1149
  %374 = sub nsw i64 %372, %371, !dbg !1149
  %375 = icmp ult i64 %374, 4, !dbg !1149
  br i1 %375, label %470, label %376, !dbg !1149

; <label>:376:                                    ; preds = %370
  %377 = sub nsw i64 %372, %371, !dbg !1149
  %378 = getelementptr i8*, i8** %367, i64 %377, !dbg !1149
  %379 = getelementptr i8*, i8** %10, i64 %371, !dbg !1149
  %380 = getelementptr i8*, i8** %10, i64 %372, !dbg !1149
  %381 = icmp ult i8** %367, %380, !dbg !1149
  %382 = icmp ult i8** %379, %378, !dbg !1149
  %383 = and i1 %381, %382, !dbg !1149
  br i1 %383, label %470, label %384, !dbg !1149

; <label>:384:                                    ; preds = %376
  %385 = and i64 %374, -4, !dbg !1149
  %386 = add nsw i64 %385, %371, !dbg !1149
  %387 = getelementptr i8*, i8** %367, i64 %385, !dbg !1149
  %388 = add nsw i64 %385, -4, !dbg !1149
  %389 = lshr exact i64 %388, 2, !dbg !1149
  %390 = add nuw nsw i64 %389, 1, !dbg !1149
  %391 = and i64 %390, 3, !dbg !1149
  %392 = icmp ult i64 %388, 12, !dbg !1149
  br i1 %392, label %448, label %393, !dbg !1149

; <label>:393:                                    ; preds = %384
  %394 = sub nsw i64 %390, %391, !dbg !1149
  br label %395, !dbg !1149

; <label>:395:                                    ; preds = %395, %393
  %396 = phi i64 [ 0, %393 ], [ %445, %395 ]
  %397 = phi i64 [ %394, %393 ], [ %446, %395 ]
  %398 = add i64 %396, %371
  %399 = getelementptr i8*, i8** %367, i64 %396
  %400 = getelementptr inbounds i8*, i8** %10, i64 %398, !dbg !1150
  %401 = bitcast i8** %400 to <2 x i64>*, !dbg !1150
  %402 = load <2 x i64>, <2 x i64>* %401, align 8, !dbg !1150, !tbaa !682, !alias.scope !1151
  %403 = getelementptr inbounds i8*, i8** %400, i64 2, !dbg !1150
  %404 = bitcast i8** %403 to <2 x i64>*, !dbg !1150
  %405 = load <2 x i64>, <2 x i64>* %404, align 8, !dbg !1150, !tbaa !682, !alias.scope !1151
  %406 = bitcast i8** %399 to <2 x i64>*, !dbg !1154
  store <2 x i64> %402, <2 x i64>* %406, align 8, !dbg !1154, !tbaa !682, !alias.scope !1155, !noalias !1151
  %407 = getelementptr i8*, i8** %399, i64 2, !dbg !1154
  %408 = bitcast i8** %407 to <2 x i64>*, !dbg !1154
  store <2 x i64> %405, <2 x i64>* %408, align 8, !dbg !1154, !tbaa !682, !alias.scope !1155, !noalias !1151
  %409 = or i64 %396, 4
  %410 = add i64 %409, %371
  %411 = getelementptr i8*, i8** %367, i64 %409
  %412 = getelementptr inbounds i8*, i8** %10, i64 %410, !dbg !1150
  %413 = bitcast i8** %412 to <2 x i64>*, !dbg !1150
  %414 = load <2 x i64>, <2 x i64>* %413, align 8, !dbg !1150, !tbaa !682, !alias.scope !1151
  %415 = getelementptr inbounds i8*, i8** %412, i64 2, !dbg !1150
  %416 = bitcast i8** %415 to <2 x i64>*, !dbg !1150
  %417 = load <2 x i64>, <2 x i64>* %416, align 8, !dbg !1150, !tbaa !682, !alias.scope !1151
  %418 = bitcast i8** %411 to <2 x i64>*, !dbg !1154
  store <2 x i64> %414, <2 x i64>* %418, align 8, !dbg !1154, !tbaa !682, !alias.scope !1155, !noalias !1151
  %419 = getelementptr i8*, i8** %411, i64 2, !dbg !1154
  %420 = bitcast i8** %419 to <2 x i64>*, !dbg !1154
  store <2 x i64> %417, <2 x i64>* %420, align 8, !dbg !1154, !tbaa !682, !alias.scope !1155, !noalias !1151
  %421 = or i64 %396, 8
  %422 = add i64 %421, %371
  %423 = getelementptr i8*, i8** %367, i64 %421
  %424 = getelementptr inbounds i8*, i8** %10, i64 %422, !dbg !1150
  %425 = bitcast i8** %424 to <2 x i64>*, !dbg !1150
  %426 = load <2 x i64>, <2 x i64>* %425, align 8, !dbg !1150, !tbaa !682, !alias.scope !1151
  %427 = getelementptr inbounds i8*, i8** %424, i64 2, !dbg !1150
  %428 = bitcast i8** %427 to <2 x i64>*, !dbg !1150
  %429 = load <2 x i64>, <2 x i64>* %428, align 8, !dbg !1150, !tbaa !682, !alias.scope !1151
  %430 = bitcast i8** %423 to <2 x i64>*, !dbg !1154
  store <2 x i64> %426, <2 x i64>* %430, align 8, !dbg !1154, !tbaa !682, !alias.scope !1155, !noalias !1151
  %431 = getelementptr i8*, i8** %423, i64 2, !dbg !1154
  %432 = bitcast i8** %431 to <2 x i64>*, !dbg !1154
  store <2 x i64> %429, <2 x i64>* %432, align 8, !dbg !1154, !tbaa !682, !alias.scope !1155, !noalias !1151
  %433 = or i64 %396, 12
  %434 = add i64 %433, %371
  %435 = getelementptr i8*, i8** %367, i64 %433
  %436 = getelementptr inbounds i8*, i8** %10, i64 %434, !dbg !1150
  %437 = bitcast i8** %436 to <2 x i64>*, !dbg !1150
  %438 = load <2 x i64>, <2 x i64>* %437, align 8, !dbg !1150, !tbaa !682, !alias.scope !1151
  %439 = getelementptr inbounds i8*, i8** %436, i64 2, !dbg !1150
  %440 = bitcast i8** %439 to <2 x i64>*, !dbg !1150
  %441 = load <2 x i64>, <2 x i64>* %440, align 8, !dbg !1150, !tbaa !682, !alias.scope !1151
  %442 = bitcast i8** %435 to <2 x i64>*, !dbg !1154
  store <2 x i64> %438, <2 x i64>* %442, align 8, !dbg !1154, !tbaa !682, !alias.scope !1155, !noalias !1151
  %443 = getelementptr i8*, i8** %435, i64 2, !dbg !1154
  %444 = bitcast i8** %443 to <2 x i64>*, !dbg !1154
  store <2 x i64> %441, <2 x i64>* %444, align 8, !dbg !1154, !tbaa !682, !alias.scope !1155, !noalias !1151
  %445 = add i64 %396, 16
  %446 = add i64 %397, -4
  %447 = icmp eq i64 %446, 0
  br i1 %447, label %448, label %395, !llvm.loop !1157

; <label>:448:                                    ; preds = %395, %384
  %449 = phi i64 [ 0, %384 ], [ %445, %395 ]
  %450 = icmp eq i64 %391, 0
  br i1 %450, label %468, label %451

; <label>:451:                                    ; preds = %448, %451
  %452 = phi i64 [ %465, %451 ], [ %449, %448 ]
  %453 = phi i64 [ %466, %451 ], [ %391, %448 ]
  %454 = add i64 %452, %371
  %455 = getelementptr i8*, i8** %367, i64 %452
  %456 = getelementptr inbounds i8*, i8** %10, i64 %454, !dbg !1150
  %457 = bitcast i8** %456 to <2 x i64>*, !dbg !1150
  %458 = load <2 x i64>, <2 x i64>* %457, align 8, !dbg !1150, !tbaa !682, !alias.scope !1151
  %459 = getelementptr inbounds i8*, i8** %456, i64 2, !dbg !1150
  %460 = bitcast i8** %459 to <2 x i64>*, !dbg !1150
  %461 = load <2 x i64>, <2 x i64>* %460, align 8, !dbg !1150, !tbaa !682, !alias.scope !1151
  %462 = bitcast i8** %455 to <2 x i64>*, !dbg !1154
  store <2 x i64> %458, <2 x i64>* %462, align 8, !dbg !1154, !tbaa !682, !alias.scope !1155, !noalias !1151
  %463 = getelementptr i8*, i8** %455, i64 2, !dbg !1154
  %464 = bitcast i8** %463 to <2 x i64>*, !dbg !1154
  store <2 x i64> %461, <2 x i64>* %464, align 8, !dbg !1154, !tbaa !682, !alias.scope !1155, !noalias !1151
  %465 = add i64 %452, 4
  %466 = add i64 %453, -1
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %468, label %451, !llvm.loop !1161

; <label>:468:                                    ; preds = %451, %448
  %469 = icmp eq i64 %374, %385
  br i1 %469, label %546, label %470, !dbg !1149

; <label>:470:                                    ; preds = %468, %376, %370
  %471 = phi i64 [ %371, %376 ], [ %371, %370 ], [ %386, %468 ]
  %472 = phi i8** [ %367, %376 ], [ %367, %370 ], [ %387, %468 ]
  %473 = sub nsw i64 %372, %471, !dbg !1150
  %474 = xor i64 %471, -1, !dbg !1150
  %475 = add nsw i64 %474, %372, !dbg !1150
  %476 = and i64 %473, 7, !dbg !1150
  %477 = icmp eq i64 %476, 0, !dbg !1150
  br i1 %477, label %490, label %478, !dbg !1150

; <label>:478:                                    ; preds = %470, %478
  %479 = phi i64 [ %487, %478 ], [ %471, %470 ]
  %480 = phi i8** [ %485, %478 ], [ %472, %470 ]
  %481 = phi i64 [ %488, %478 ], [ %476, %470 ]
  call void @llvm.dbg.value(metadata i8** %480, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %479, metadata !822, metadata !DIExpression()) #12, !dbg !1146
  %482 = getelementptr inbounds i8*, i8** %10, i64 %479, !dbg !1150
  %483 = bitcast i8** %482 to i64*, !dbg !1150
  %484 = load i64, i64* %483, align 8, !dbg !1150, !tbaa !682
  %485 = getelementptr inbounds i8*, i8** %480, i64 1, !dbg !1163
  %486 = bitcast i8** %480 to i64*, !dbg !1154
  store i64 %484, i64* %486, align 8, !dbg !1154, !tbaa !682
  %487 = add nsw i64 %479, 1, !dbg !1164
  call void @llvm.dbg.value(metadata i8** %485, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i32 undef, metadata !822, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !1146
  %488 = add i64 %481, -1, !dbg !1149
  %489 = icmp eq i64 %488, 0, !dbg !1149
  br i1 %489, label %490, label %478, !dbg !1149, !llvm.loop !1165

; <label>:490:                                    ; preds = %478, %470
  %491 = phi i64 [ %471, %470 ], [ %487, %478 ]
  %492 = phi i8** [ %472, %470 ], [ %485, %478 ]
  %493 = icmp ult i64 %475, 7, !dbg !1150
  br i1 %493, label %546, label %494, !dbg !1150

; <label>:494:                                    ; preds = %490, %494
  %495 = phi i64 [ %544, %494 ], [ %491, %490 ]
  %496 = phi i8** [ %542, %494 ], [ %492, %490 ]
  call void @llvm.dbg.value(metadata i8** %496, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %495, metadata !822, metadata !DIExpression()) #12, !dbg !1146
  %497 = getelementptr inbounds i8*, i8** %10, i64 %495, !dbg !1150
  %498 = bitcast i8** %497 to i64*, !dbg !1150
  %499 = load i64, i64* %498, align 8, !dbg !1150, !tbaa !682
  %500 = getelementptr inbounds i8*, i8** %496, i64 1, !dbg !1163
  %501 = bitcast i8** %496 to i64*, !dbg !1154
  store i64 %499, i64* %501, align 8, !dbg !1154, !tbaa !682
  %502 = add nsw i64 %495, 1, !dbg !1164
  call void @llvm.dbg.value(metadata i8** %500, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i32 undef, metadata !822, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !1146
  call void @llvm.dbg.value(metadata i8** %500, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %502, metadata !822, metadata !DIExpression()) #12, !dbg !1146
  %503 = getelementptr inbounds i8*, i8** %10, i64 %502, !dbg !1150
  %504 = bitcast i8** %503 to i64*, !dbg !1150
  %505 = load i64, i64* %504, align 8, !dbg !1150, !tbaa !682
  %506 = getelementptr inbounds i8*, i8** %496, i64 2, !dbg !1163
  %507 = bitcast i8** %500 to i64*, !dbg !1154
  store i64 %505, i64* %507, align 8, !dbg !1154, !tbaa !682
  %508 = add nsw i64 %495, 2, !dbg !1164
  call void @llvm.dbg.value(metadata i8** %506, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i32 undef, metadata !822, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !1146
  call void @llvm.dbg.value(metadata i8** %506, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %508, metadata !822, metadata !DIExpression()) #12, !dbg !1146
  %509 = getelementptr inbounds i8*, i8** %10, i64 %508, !dbg !1150
  %510 = bitcast i8** %509 to i64*, !dbg !1150
  %511 = load i64, i64* %510, align 8, !dbg !1150, !tbaa !682
  %512 = getelementptr inbounds i8*, i8** %496, i64 3, !dbg !1163
  %513 = bitcast i8** %506 to i64*, !dbg !1154
  store i64 %511, i64* %513, align 8, !dbg !1154, !tbaa !682
  %514 = add nsw i64 %495, 3, !dbg !1164
  call void @llvm.dbg.value(metadata i8** %512, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i32 undef, metadata !822, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !1146
  call void @llvm.dbg.value(metadata i8** %512, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %514, metadata !822, metadata !DIExpression()) #12, !dbg !1146
  %515 = getelementptr inbounds i8*, i8** %10, i64 %514, !dbg !1150
  %516 = bitcast i8** %515 to i64*, !dbg !1150
  %517 = load i64, i64* %516, align 8, !dbg !1150, !tbaa !682
  %518 = getelementptr inbounds i8*, i8** %496, i64 4, !dbg !1163
  %519 = bitcast i8** %512 to i64*, !dbg !1154
  store i64 %517, i64* %519, align 8, !dbg !1154, !tbaa !682
  %520 = add nsw i64 %495, 4, !dbg !1164
  call void @llvm.dbg.value(metadata i8** %518, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i32 undef, metadata !822, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !1146
  call void @llvm.dbg.value(metadata i8** %518, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %520, metadata !822, metadata !DIExpression()) #12, !dbg !1146
  %521 = getelementptr inbounds i8*, i8** %10, i64 %520, !dbg !1150
  %522 = bitcast i8** %521 to i64*, !dbg !1150
  %523 = load i64, i64* %522, align 8, !dbg !1150, !tbaa !682
  %524 = getelementptr inbounds i8*, i8** %496, i64 5, !dbg !1163
  %525 = bitcast i8** %518 to i64*, !dbg !1154
  store i64 %523, i64* %525, align 8, !dbg !1154, !tbaa !682
  %526 = add nsw i64 %495, 5, !dbg !1164
  call void @llvm.dbg.value(metadata i8** %524, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i32 undef, metadata !822, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !1146
  call void @llvm.dbg.value(metadata i8** %524, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %526, metadata !822, metadata !DIExpression()) #12, !dbg !1146
  %527 = getelementptr inbounds i8*, i8** %10, i64 %526, !dbg !1150
  %528 = bitcast i8** %527 to i64*, !dbg !1150
  %529 = load i64, i64* %528, align 8, !dbg !1150, !tbaa !682
  %530 = getelementptr inbounds i8*, i8** %496, i64 6, !dbg !1163
  %531 = bitcast i8** %524 to i64*, !dbg !1154
  store i64 %529, i64* %531, align 8, !dbg !1154, !tbaa !682
  %532 = add nsw i64 %495, 6, !dbg !1164
  call void @llvm.dbg.value(metadata i8** %530, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i32 undef, metadata !822, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !1146
  call void @llvm.dbg.value(metadata i8** %530, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %532, metadata !822, metadata !DIExpression()) #12, !dbg !1146
  %533 = getelementptr inbounds i8*, i8** %10, i64 %532, !dbg !1150
  %534 = bitcast i8** %533 to i64*, !dbg !1150
  %535 = load i64, i64* %534, align 8, !dbg !1150, !tbaa !682
  %536 = getelementptr inbounds i8*, i8** %496, i64 7, !dbg !1163
  %537 = bitcast i8** %530 to i64*, !dbg !1154
  store i64 %535, i64* %537, align 8, !dbg !1154, !tbaa !682
  %538 = add nsw i64 %495, 7, !dbg !1164
  call void @llvm.dbg.value(metadata i8** %536, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i32 undef, metadata !822, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !1146
  call void @llvm.dbg.value(metadata i8** %536, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %538, metadata !822, metadata !DIExpression()) #12, !dbg !1146
  %539 = getelementptr inbounds i8*, i8** %10, i64 %538, !dbg !1150
  %540 = bitcast i8** %539 to i64*, !dbg !1150
  %541 = load i64, i64* %540, align 8, !dbg !1150, !tbaa !682
  %542 = getelementptr inbounds i8*, i8** %496, i64 8, !dbg !1163
  %543 = bitcast i8** %536 to i64*, !dbg !1154
  store i64 %541, i64* %543, align 8, !dbg !1154, !tbaa !682
  %544 = add nsw i64 %495, 8, !dbg !1164
  call void @llvm.dbg.value(metadata i8** %542, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i32 undef, metadata !822, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !1146
  %545 = icmp eq i64 %544, %372, !dbg !1147
  br i1 %545, label %546, label %494, !dbg !1149, !llvm.loop !1166

; <label>:546:                                    ; preds = %490, %494, %468
  %547 = getelementptr i8*, i8** %367, i64 %373, !dbg !1149
  br label %548, !dbg !1167

; <label>:548:                                    ; preds = %546, %366
  %549 = phi i8** [ %367, %366 ], [ %547, %546 ], !dbg !1168
  call void @llvm.dbg.value(metadata i8** %549, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  store i8* null, i8** %549, align 8, !dbg !1167, !tbaa !682
  call void @llvm.dbg.value(metadata i32 0, metadata !823, metadata !DIExpression()) #12, !dbg !1169
  call void @llvm.dbg.value(metadata i8** %180, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  %550 = load i8*, i8** %180, align 8, !dbg !1170, !tbaa !682
  %551 = icmp eq i8* %550, null, !dbg !1173
  br i1 %551, label %559, label %552, !dbg !1173

; <label>:552:                                    ; preds = %548, %552
  %553 = phi i8** [ %556, %552 ], [ %180, %548 ]
  %554 = phi i32 [ %555, %552 ], [ 0, %548 ]
  call void @llvm.dbg.value(metadata i8** %553, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %554, metadata !823, metadata !DIExpression()) #12, !dbg !1169
  %555 = add nuw nsw i32 %554, 1, !dbg !1174
  %556 = getelementptr inbounds i8*, i8** %553, i64 1, !dbg !1175
  call void @llvm.dbg.value(metadata i8** %556, metadata !825, metadata !DIExpression()) #12, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %555, metadata !823, metadata !DIExpression()) #12, !dbg !1169
  %557 = load i8*, i8** %556, align 8, !dbg !1170, !tbaa !682
  %558 = icmp eq i8* %557, null, !dbg !1173
  br i1 %558, label %559, label %552, !dbg !1173, !llvm.loop !1176

; <label>:559:                                    ; preds = %552, %548
  %560 = phi i32 [ 0, %548 ], [ %555, %552 ], !dbg !1179
  call void @llvm.dbg.value(metadata i32 %560, metadata !823, metadata !DIExpression()) #12, !dbg !1169
  store i32 0, i32* @optind, align 4, !dbg !1180, !tbaa !751
  br label %8, !dbg !1181, !llvm.loop !757

; <label>:561:                                    ; preds = %23, %23
  %562 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 5) #12, !dbg !1182
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %562, i32 %24) #12, !dbg !1183
  %563 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 5) #12, !dbg !1184
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %563) #12, !dbg !1185
  tail call void @usage(i32 125) #18, !dbg !1186
  unreachable, !dbg !1186

; <label>:564:                                    ; preds = %23
  tail call void @usage(i32 0) #18, !dbg !1187
  unreachable, !dbg !1187

; <label>:565:                                    ; preds = %23
  %566 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1188, !tbaa !682
  %567 = load i8*, i8** @Version, align 8, !dbg !1188, !tbaa !682
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %566, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %567, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* null) #12, !dbg !1188
  tail call void @exit(i32 0) #16, !dbg !1188
  unreachable, !dbg !1188

; <label>:568:                                    ; preds = %23
  tail call void @usage(i32 125) #18, !dbg !1189
  unreachable, !dbg !1189

; <label>:569:                                    ; preds = %23
  call void @llvm.dbg.value(metadata i32 %9, metadata !72, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i8* %15, metadata !78, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i8 %19, metadata !77, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i8 %22, metadata !75, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i32 %9, metadata !72, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i8* %15, metadata !78, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i8 %19, metadata !77, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i8 %22, metadata !75, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i32 %9, metadata !72, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i8* %15, metadata !78, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i8 %19, metadata !77, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i8 %22, metadata !75, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i32 %9, metadata !72, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i8* %15, metadata !78, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i8 %19, metadata !77, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i8 %22, metadata !75, metadata !DIExpression()), !dbg !736
  %570 = load i32, i32* @optind, align 4, !dbg !1190, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %9, metadata !72, metadata !DIExpression()), !dbg !734
  %571 = icmp slt i32 %570, %9, !dbg !1192
  br i1 %571, label %572, label %580, !dbg !1193

; <label>:572:                                    ; preds = %569
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  %573 = sext i32 %570 to i64, !dbg !1194
  %574 = getelementptr inbounds i8*, i8** %10, i64 %573, !dbg !1194
  %575 = load i8*, i8** %574, align 8, !dbg !1194, !tbaa !682
  %576 = tail call i32 @strcmp(i8* %575, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #15, !dbg !1194
  %577 = icmp eq i32 %576, 0, !dbg !1194
  br i1 %577, label %578, label %580, !dbg !1195

; <label>:578:                                    ; preds = %572
  call void @llvm.dbg.value(metadata i8 1, metadata !75, metadata !DIExpression()), !dbg !736
  %579 = add nsw i32 %570, 1, !dbg !1196
  store i32 %579, i32* @optind, align 4, !dbg !1196, !tbaa !751
  call void @llvm.dbg.value(metadata i8 %22, metadata !75, metadata !DIExpression()), !dbg !736
  br label %582, !dbg !1198

; <label>:580:                                    ; preds = %572, %569
  call void @llvm.dbg.value(metadata i8 %22, metadata !75, metadata !DIExpression()), !dbg !736
  %581 = icmp eq i8 %22, 0, !dbg !1199
  br i1 %581, label %588, label %582, !dbg !1198

; <label>:582:                                    ; preds = %578, %580
  %583 = load i1, i1* @dev_debug, align 1
  br i1 %583, label %584, label %587, !dbg !1201

; <label>:584:                                    ; preds = %582
  %585 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1204, !tbaa !682
  %586 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %585, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0)) #12, !dbg !1204
  br label %587, !dbg !1204

; <label>:587:                                    ; preds = %584, %582
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.dummy_environ, i64 0, i64 0), i8*** @environ, align 8, !dbg !1206, !tbaa !682
  br label %618, !dbg !1207

; <label>:588:                                    ; preds = %580
  call void @llvm.dbg.value(metadata i64 0, metadata !1208, metadata !DIExpression()) #12, !dbg !1212
  %589 = load i64, i64* @usvars_used, align 8, !dbg !1214, !tbaa !769
  %590 = icmp eq i64 %589, 0, !dbg !1216
  br i1 %590, label %618, label %591, !dbg !1217

; <label>:591:                                    ; preds = %588, %614
  %592 = phi i64 [ %615, %614 ], [ 0, %588 ]
  call void @llvm.dbg.value(metadata i64 %592, metadata !1208, metadata !DIExpression()) #12, !dbg !1212
  %593 = load i1, i1* @dev_debug, align 1
  br i1 %593, label %594, label %600, !dbg !1218

; <label>:594:                                    ; preds = %591
  %595 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1221, !tbaa !682
  %596 = load i8**, i8*** @usvars, align 8, !dbg !1221, !tbaa !682
  %597 = getelementptr inbounds i8*, i8** %596, i64 %592, !dbg !1221
  %598 = load i8*, i8** %597, align 8, !dbg !1221, !tbaa !682
  %599 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %595, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i64 0, i64 0), i8* %598) #12, !dbg !1221
  br label %600, !dbg !1221

; <label>:600:                                    ; preds = %594, %591
  %601 = load i8**, i8*** @usvars, align 8, !dbg !1223, !tbaa !682
  %602 = getelementptr inbounds i8*, i8** %601, i64 %592, !dbg !1223
  %603 = load i8*, i8** %602, align 8, !dbg !1223, !tbaa !682
  %604 = tail call i32 @unsetenv(i8* %603) #12, !dbg !1225
  %605 = icmp eq i32 %604, 0, !dbg !1225
  br i1 %605, label %614, label %606, !dbg !1226

; <label>:606:                                    ; preds = %600
  call void @llvm.dbg.value(metadata i64 %592, metadata !1208, metadata !DIExpression()) #12, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %592, metadata !1208, metadata !DIExpression()) #12, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %592, metadata !1208, metadata !DIExpression()) #12, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %592, metadata !1208, metadata !DIExpression()) #12, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %592, metadata !1208, metadata !DIExpression()) #12, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %592, metadata !1208, metadata !DIExpression()) #12, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %592, metadata !1208, metadata !DIExpression()) #12, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %592, metadata !1208, metadata !DIExpression()) #12, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %592, metadata !1208, metadata !DIExpression()) #12, !dbg !1212
  %607 = tail call i32* @__errno_location() #17, !dbg !1227
  %608 = load i32, i32* %607, align 4, !dbg !1227, !tbaa !751
  %609 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i64 0, i64 0), i32 5) #12, !dbg !1227
  %610 = load i8**, i8*** @usvars, align 8, !dbg !1227, !tbaa !682
  %611 = getelementptr inbounds i8*, i8** %610, i64 %592, !dbg !1227
  %612 = load i8*, i8** %611, align 8, !dbg !1227, !tbaa !682
  %613 = tail call i8* @quote(i8* %612) #12, !dbg !1227
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 %608, i8* %609, i8* %613) #12, !dbg !1227
  unreachable, !dbg !1227

; <label>:614:                                    ; preds = %600
  %615 = add nuw i64 %592, 1, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %615, metadata !1208, metadata !DIExpression()) #12, !dbg !1212
  %616 = load i64, i64* @usvars_used, align 8, !dbg !1214, !tbaa !769
  %617 = icmp ult i64 %615, %616, !dbg !1216
  br i1 %617, label %591, label %618, !dbg !1217, !llvm.loop !1229

; <label>:618:                                    ; preds = %614, %588, %587
  %619 = load i32, i32* @optind, align 4, !dbg !1232, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %9, metadata !72, metadata !DIExpression()), !dbg !734
  %620 = icmp slt i32 %619, %9, !dbg !1233
  br i1 %620, label %621, label %658, !dbg !1234

; <label>:621:                                    ; preds = %618, %650
  %622 = phi i32 [ %652, %650 ], [ %619, %618 ]
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  %623 = sext i32 %622 to i64, !dbg !1235
  %624 = getelementptr inbounds i8*, i8** %10, i64 %623, !dbg !1235
  %625 = load i8*, i8** %624, align 8, !dbg !1235, !tbaa !682
  %626 = tail call i8* @strchr(i8* %625, i32 61) #15, !dbg !1236
  call void @llvm.dbg.value(metadata i8* %626, metadata !81, metadata !DIExpression()), !dbg !1237
  %627 = icmp eq i8* %626, null, !dbg !1234
  br i1 %627, label %654, label %628, !dbg !1238

; <label>:628:                                    ; preds = %621
  %629 = load i1, i1* @dev_debug, align 1
  br i1 %629, label %630, label %637, !dbg !1239

; <label>:630:                                    ; preds = %628
  %631 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1242, !tbaa !682
  %632 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %631, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %625) #12, !dbg !1242
  %633 = load i32, i32* @optind, align 4, !dbg !1244, !tbaa !751
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds i8*, i8** %10, i64 %634
  %636 = load i8*, i8** %635, align 8, !dbg !1246, !tbaa !682
  br label %637, !dbg !1242

; <label>:637:                                    ; preds = %630, %628
  %638 = phi i8* [ %636, %630 ], [ %625, %628 ], !dbg !1246
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  %639 = tail call i32 @putenv(i8* %638) #12, !dbg !1247
  %640 = icmp eq i32 %639, 0, !dbg !1247
  br i1 %640, label %650, label %641, !dbg !1248

; <label>:641:                                    ; preds = %637
  store i8 0, i8* %626, align 1, !dbg !1249, !tbaa !831
  %642 = tail call i32* @__errno_location() #17, !dbg !1251
  %643 = load i32, i32* %642, align 4, !dbg !1251, !tbaa !751
  %644 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 5) #12, !dbg !1251
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  %645 = load i32, i32* @optind, align 4, !dbg !1251, !tbaa !751
  %646 = sext i32 %645 to i64, !dbg !1251
  %647 = getelementptr inbounds i8*, i8** %10, i64 %646, !dbg !1251
  %648 = load i8*, i8** %647, align 8, !dbg !1251, !tbaa !682
  %649 = tail call i8* @quote(i8* %648) #12, !dbg !1251
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 %643, i8* %644, i8* %649) #12, !dbg !1251
  unreachable, !dbg !1251

; <label>:650:                                    ; preds = %637
  %651 = load i32, i32* @optind, align 4, !dbg !1252, !tbaa !751
  %652 = add nsw i32 %651, 1, !dbg !1252
  store i32 %652, i32* @optind, align 4, !dbg !1252, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %9, metadata !72, metadata !DIExpression()), !dbg !734
  %653 = icmp slt i32 %652, %9, !dbg !1233
  br i1 %653, label %621, label %658, !dbg !1234, !llvm.loop !1253

; <label>:654:                                    ; preds = %621
  call void @llvm.dbg.value(metadata i32 %9, metadata !72, metadata !DIExpression()), !dbg !734
  %655 = icmp eq i8 %19, 0, !dbg !1255
  br i1 %655, label %676, label %656, !dbg !1257

; <label>:656:                                    ; preds = %654
  %657 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i32 5) #12, !dbg !1258
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %657) #12, !dbg !1260
  tail call void @usage(i32 125) #18, !dbg !1261
  unreachable, !dbg !1261

; <label>:658:                                    ; preds = %650, %618
  call void @llvm.dbg.value(metadata i32 %9, metadata !72, metadata !DIExpression()), !dbg !734
  %659 = icmp eq i8 %19, 0, !dbg !1255
  %660 = icmp eq i8* %15, null, !dbg !1262
  br i1 %660, label %663, label %661, !dbg !1264

; <label>:661:                                    ; preds = %658
  %662 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !1265
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %662) #12, !dbg !1267
  tail call void @usage(i32 125) #18, !dbg !1268
  unreachable, !dbg !1268

; <label>:663:                                    ; preds = %658
  %664 = load i8**, i8*** @environ, align 8, !dbg !1269, !tbaa !682
  call void @llvm.dbg.value(metadata i8** %664, metadata !83, metadata !DIExpression()), !dbg !1270
  %665 = load i8*, i8** %664, align 8, !dbg !1271, !tbaa !682
  %666 = icmp eq i8* %665, null, !dbg !1272
  br i1 %666, label %744, label %667, !dbg !1272

; <label>:667:                                    ; preds = %663
  %668 = select i1 %659, i32 10, i32 0
  br label %669, !dbg !1272

; <label>:669:                                    ; preds = %667, %669
  %670 = phi i8* [ %665, %667 ], [ %674, %669 ]
  %671 = phi i8** [ %664, %667 ], [ %672, %669 ]
  call void @llvm.dbg.value(metadata i8** %671, metadata !83, metadata !DIExpression()), !dbg !1270
  %672 = getelementptr inbounds i8*, i8** %671, i64 1, !dbg !1273
  %673 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* nonnull %670, i32 %668) #12, !dbg !1273
  call void @llvm.dbg.value(metadata i8** %672, metadata !83, metadata !DIExpression()), !dbg !1270
  %674 = load i8*, i8** %672, align 8, !dbg !1271, !tbaa !682
  %675 = icmp eq i8* %674, null, !dbg !1272
  br i1 %675, label %744, label %669, !dbg !1272, !llvm.loop !1274

; <label>:676:                                    ; preds = %654
  %677 = icmp eq i8* %15, null, !dbg !1262
  br i1 %677, label %692, label %678, !dbg !1275

; <label>:678:                                    ; preds = %676
  %679 = load i1, i1* @dev_debug, align 1
  br i1 %679, label %680, label %684, !dbg !1276

; <label>:680:                                    ; preds = %678
  %681 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1280, !tbaa !682
  %682 = tail call i8* @quotearg_style(i32 4, i8* nonnull %15) #12, !dbg !1280
  %683 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %681, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* %682) #12, !dbg !1280
  br label %684, !dbg !1280

; <label>:684:                                    ; preds = %680, %678
  %685 = tail call i32 @chdir(i8* nonnull %15) #12, !dbg !1282
  %686 = icmp eq i32 %685, 0, !dbg !1284
  br i1 %686, label %692, label %687, !dbg !1285

; <label>:687:                                    ; preds = %684
  %688 = tail call i32* @__errno_location() #17, !dbg !1286
  %689 = load i32, i32* %688, align 4, !dbg !1286, !tbaa !751
  %690 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !1286
  %691 = tail call i8* @quotearg_style(i32 4, i8* nonnull %15) #12, !dbg !1286
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 %689, i8* %690, i8* %691) #12, !dbg !1286
  unreachable, !dbg !1286

; <label>:692:                                    ; preds = %676, %684
  %693 = load i1, i1* @dev_debug, align 1
  br i1 %693, label %694, label %721, !dbg !1287

; <label>:694:                                    ; preds = %692
  %695 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1288, !tbaa !682
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  %696 = load i32, i32* @optind, align 4, !dbg !1288, !tbaa !751
  %697 = sext i32 %696 to i64, !dbg !1288
  %698 = getelementptr inbounds i8*, i8** %10, i64 %697, !dbg !1288
  %699 = load i8*, i8** %698, align 8, !dbg !1288, !tbaa !682
  %700 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %695, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8* %699) #12, !dbg !1288
  %701 = load i32, i32* @optind, align 4, !dbg !1291, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %701, metadata !88, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 %9, metadata !72, metadata !DIExpression()), !dbg !734
  %702 = icmp slt i32 %701, %9, !dbg !1293
  br i1 %702, label %703, label %721, !dbg !1295

; <label>:703:                                    ; preds = %694
  %704 = sext i32 %701 to i64
  br label %705

; <label>:705:                                    ; preds = %717, %703
  %706 = phi i64 [ %704, %703 ], [ %718, %717 ]
  call void @llvm.dbg.value(metadata i64 %706, metadata !88, metadata !DIExpression()), !dbg !1292
  %707 = load i1, i1* @dev_debug, align 1
  br i1 %707, label %708, label %717, !dbg !1296

; <label>:708:                                    ; preds = %705
  %709 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1298, !tbaa !682
  %710 = load i32, i32* @optind, align 4, !dbg !1298, !tbaa !751
  %711 = trunc i64 %706 to i32, !dbg !1298
  %712 = sub nsw i32 %711, %710, !dbg !1298
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  %713 = getelementptr inbounds i8*, i8** %10, i64 %706, !dbg !1298
  %714 = load i8*, i8** %713, align 8, !dbg !1298, !tbaa !682
  %715 = tail call i8* @quote(i8* %714) #12, !dbg !1298
  %716 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %709, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i32 %712, i8* %715) #12, !dbg !1298
  br label %717, !dbg !1298

; <label>:717:                                    ; preds = %705, %708
  %718 = add nsw i64 %706, 1, !dbg !1300
  call void @llvm.dbg.value(metadata i32 undef, metadata !88, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1292
  call void @llvm.dbg.value(metadata i32 %9, metadata !72, metadata !DIExpression()), !dbg !734
  %719 = trunc i64 %718 to i32, !dbg !1293
  %720 = icmp eq i32 %9, %719, !dbg !1293
  br i1 %720, label %721, label %705, !dbg !1295, !llvm.loop !1301

; <label>:721:                                    ; preds = %717, %694, %692
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  %722 = load i32, i32* @optind, align 4, !dbg !1303, !tbaa !751
  %723 = sext i32 %722 to i64, !dbg !1304
  %724 = getelementptr inbounds i8*, i8** %10, i64 %723, !dbg !1304
  %725 = load i8*, i8** %724, align 8, !dbg !1304, !tbaa !682
  %726 = tail call i32 @execvp(i8* %725, i8** %724) #12, !dbg !1305
  %727 = tail call i32* @__errno_location() #17, !dbg !1306
  %728 = load i32, i32* %727, align 4, !dbg !1306, !tbaa !751
  %729 = icmp eq i32 %728, 2, !dbg !1307
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  %730 = load i32, i32* @optind, align 4, !dbg !1308, !tbaa !751
  %731 = sext i32 %730 to i64, !dbg !1309
  %732 = getelementptr inbounds i8*, i8** %10, i64 %731, !dbg !1309
  %733 = load i8*, i8** %732, align 8, !dbg !1309, !tbaa !682
  %734 = tail call i8* @quote(i8* %733) #12, !dbg !1310
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %728, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %734) #12, !dbg !1311
  br i1 %729, label %735, label %744, !dbg !1312

; <label>:735:                                    ; preds = %721
  call void @llvm.dbg.value(metadata i8** %10, metadata !73, metadata !DIExpression()), !dbg !735
  %736 = load i32, i32* @optind, align 4, !dbg !1314, !tbaa !751
  %737 = sext i32 %736 to i64, !dbg !1315
  %738 = getelementptr inbounds i8*, i8** %10, i64 %737, !dbg !1315
  %739 = load i8*, i8** %738, align 8, !dbg !1315, !tbaa !682
  %740 = tail call i8* @strchr(i8* %739, i32 32) #15, !dbg !1316
  %741 = icmp eq i8* %740, null, !dbg !1316
  br i1 %741, label %744, label %742, !dbg !1317

; <label>:742:                                    ; preds = %735
  %743 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 5) #12, !dbg !1318
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %743) #12, !dbg !1319
  br label %744, !dbg !1319

; <label>:744:                                    ; preds = %669, %663, %721, %742, %735
  %745 = phi i32 [ 127, %735 ], [ 127, %742 ], [ 126, %721 ], [ 0, %663 ], [ 0, %669 ], !dbg !1320
  ret i32 %745, !dbg !1321
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @extract_varname(i8*) unnamed_addr #7 !dbg !1322 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1326, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i8* %0, metadata !1332, metadata !DIExpression()) #12, !dbg !1340
  %2 = icmp eq i8* %0, null, !dbg !1342
  br i1 %2, label %6, label %3, !dbg !1342

; <label>:3:                                      ; preds = %1
  %4 = load i8, i8* %0, align 1, !dbg !1342, !tbaa !831
  %5 = icmp eq i8 %4, 36, !dbg !1342
  br i1 %5, label %7, label %6, !dbg !1345

; <label>:6:                                      ; preds = %3, %1
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 162, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.scan_varname, i64 0, i64 0)) #16, !dbg !1342
  unreachable, !dbg !1342

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1346
  %9 = load i8, i8* %8, align 1, !dbg !1347, !tbaa !831
  %10 = icmp eq i8 %9, 123, !dbg !1348
  br i1 %10, label %11, label %44, !dbg !1349

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1350
  %13 = load i8, i8* %12, align 1, !dbg !1351, !tbaa !831
  %14 = sext i8 %13 to i32, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %14, metadata !1352, metadata !DIExpression()) #12, !dbg !1358
  switch i32 %14, label %15 [
    i32 97, label %17
    i32 98, label %17
    i32 99, label %17
    i32 100, label %17
    i32 101, label %17
    i32 102, label %17
    i32 103, label %17
    i32 104, label %17
    i32 105, label %17
    i32 106, label %17
    i32 107, label %17
    i32 108, label %17
    i32 109, label %17
    i32 110, label %17
    i32 111, label %17
    i32 112, label %17
    i32 113, label %17
    i32 114, label %17
    i32 115, label %17
    i32 116, label %17
    i32 117, label %17
    i32 118, label %17
    i32 119, label %17
    i32 120, label %17
    i32 121, label %17
    i32 122, label %17
    i32 65, label %17
    i32 66, label %17
    i32 67, label %17
    i32 68, label %17
    i32 69, label %17
    i32 70, label %17
    i32 71, label %17
    i32 72, label %17
    i32 73, label %17
    i32 74, label %17
    i32 75, label %17
    i32 76, label %17
    i32 77, label %17
    i32 78, label %17
    i32 79, label %17
    i32 80, label %17
    i32 81, label %17
    i32 82, label %17
    i32 83, label %17
    i32 84, label %17
    i32 85, label %17
    i32 86, label %17
    i32 87, label %17
    i32 88, label %17
    i32 89, label %17
    i32 90, label %17
  ], !dbg !1360

; <label>:15:                                     ; preds = %11
  %16 = icmp eq i8 %13, 95, !dbg !1361
  br i1 %16, label %17, label %44, !dbg !1362

; <label>:17:                                     ; preds = %15, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %18 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1363
  call void @llvm.dbg.value(metadata i8* %18, metadata !1337, metadata !DIExpression()) #12, !dbg !1364
  br label %19, !dbg !1365

; <label>:19:                                     ; preds = %26, %17
  %20 = phi i8* [ %18, %17 ], [ %27, %26 ], !dbg !1366
  call void @llvm.dbg.value(metadata i8* %20, metadata !1337, metadata !DIExpression()) #12, !dbg !1364
  %21 = load i8, i8* %20, align 1, !dbg !1367, !tbaa !831
  %22 = sext i8 %21 to i32, !dbg !1367
  %23 = tail call zeroext i1 @c_isalnum(i32 %22) #12, !dbg !1368
  br i1 %23, label %26, label %24, !dbg !1369

; <label>:24:                                     ; preds = %19
  %25 = load i8, i8* %20, align 1, !dbg !1370, !tbaa !831
  switch i8 %25, label %44 [
    i8 95, label %26
    i8 125, label %28
  ], !dbg !1365

; <label>:26:                                     ; preds = %24, %19
  %27 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %27, metadata !1337, metadata !DIExpression()) #12, !dbg !1364
  br label %19, !dbg !1365, !llvm.loop !1372

; <label>:28:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %20, metadata !1337, metadata !DIExpression()) #12, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %20, metadata !1337, metadata !DIExpression()) #12, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %20, metadata !1337, metadata !DIExpression()) #12, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %20, metadata !1337, metadata !DIExpression()) #12, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %20, metadata !1337, metadata !DIExpression()) #12, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %20, metadata !1337, metadata !DIExpression()) #12, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %20, metadata !1337, metadata !DIExpression()) #12, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %20, metadata !1330, metadata !DIExpression()), !dbg !1375
  %29 = ptrtoint i8* %20 to i64, !dbg !1376
  %30 = ptrtoint i8* %0 to i64, !dbg !1376
  %31 = sub i64 %29, %30, !dbg !1376
  %32 = add nsw i64 %31, -2, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %32, metadata !1327, metadata !DIExpression()), !dbg !1378
  %33 = load i64, i64* @vnlen, align 8, !dbg !1379, !tbaa !769
  %34 = icmp ult i64 %32, %33, !dbg !1381
  br i1 %34, label %35, label %37, !dbg !1382

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** @varname, align 8, !dbg !1383, !tbaa !682
  br label %41, !dbg !1382

; <label>:37:                                     ; preds = %28
  %38 = add nsw i64 %31, -1, !dbg !1384
  store i64 %38, i64* @vnlen, align 8, !dbg !1386, !tbaa !769
  %39 = load i8*, i8** @varname, align 8, !dbg !1387, !tbaa !682
  %40 = tail call i8* @xrealloc(i8* %39, i64 %38) #12, !dbg !1388
  store i8* %40, i8** @varname, align 8, !dbg !1389, !tbaa !682
  br label %41, !dbg !1390

; <label>:41:                                     ; preds = %35, %37
  %42 = phi i8* [ %36, %35 ], [ %40, %37 ], !dbg !1383
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %42, i8* nonnull align 1 %12, i64 %32, i1 false), !dbg !1391
  %43 = getelementptr inbounds i8, i8* %42, i64 %32, !dbg !1392
  store i8 0, i8* %43, align 1, !dbg !1393, !tbaa !831
  br label %44, !dbg !1394

; <label>:44:                                     ; preds = %24, %7, %15, %41
  %45 = phi i8* [ %42, %41 ], [ null, %15 ], [ null, %7 ], [ null, %24 ], !dbg !1395
  ret i8* %45, !dbg !1397
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @unsetenv(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @putenv(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isalnum(i32) local_unnamed_addr #10 !dbg !1398 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1400, metadata !DIExpression()), !dbg !1401
  switch i32 %0, label %2 [
    i32 48, label %3
    i32 49, label %3
    i32 50, label %3
    i32 51, label %3
    i32 52, label %3
    i32 53, label %3
    i32 54, label %3
    i32 55, label %3
    i32 56, label %3
    i32 57, label %3
    i32 97, label %3
    i32 98, label %3
    i32 99, label %3
    i32 100, label %3
    i32 101, label %3
    i32 102, label %3
    i32 103, label %3
    i32 104, label %3
    i32 105, label %3
    i32 106, label %3
    i32 107, label %3
    i32 108, label %3
    i32 109, label %3
    i32 110, label %3
    i32 111, label %3
    i32 112, label %3
    i32 113, label %3
    i32 114, label %3
    i32 115, label %3
    i32 116, label %3
    i32 117, label %3
    i32 118, label %3
    i32 119, label %3
    i32 120, label %3
    i32 121, label %3
    i32 122, label %3
    i32 65, label %3
    i32 66, label %3
    i32 67, label %3
    i32 68, label %3
    i32 69, label %3
    i32 70, label %3
    i32 71, label %3
    i32 72, label %3
    i32 73, label %3
    i32 74, label %3
    i32 75, label %3
    i32 76, label %3
    i32 77, label %3
    i32 78, label %3
    i32 79, label %3
    i32 80, label %3
    i32 81, label %3
    i32 82, label %3
    i32 83, label %3
    i32 84, label %3
    i32 85, label %3
    i32 86, label %3
    i32 87, label %3
    i32 88, label %3
    i32 89, label %3
    i32 90, label %3
  ], !dbg !1402

; <label>:2:                                      ; preds = %1
  br label %3, !dbg !1403

; <label>:3:                                      ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !1405
  ret i1 %4, !dbg !1406
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isalpha(i32) local_unnamed_addr #10 !dbg !1407 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1409, metadata !DIExpression()), !dbg !1410
  %2 = add i32 %0, -65, !dbg !1411
  %3 = icmp ult i32 %2, 58, !dbg !1411
  br i1 %3, label %4, label %9, !dbg !1411

; <label>:4:                                      ; preds = %1
  %5 = zext i32 %2 to i58, !dbg !1411
  %6 = lshr i58 -4227858433, %5, !dbg !1411
  %7 = and i58 %6, 1, !dbg !1411
  %8 = icmp ne i58 %7, 0, !dbg !1411
  ret i1 %8, !dbg !1411

; <label>:9:                                      ; preds = %1
  ret i1 false, !dbg !1412
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isascii(i32) local_unnamed_addr #10 !dbg !1413 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1415, metadata !DIExpression()), !dbg !1416
  %2 = icmp ult i32 %0, 128, !dbg !1417
  ret i1 %2, !dbg !1418
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isblank(i32) local_unnamed_addr #10 !dbg !1419 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1421, metadata !DIExpression()), !dbg !1422
  %2 = icmp eq i32 %0, 32, !dbg !1423
  %3 = icmp eq i32 %0, 9, !dbg !1424
  %4 = or i1 %2, %3, !dbg !1425
  ret i1 %4, !dbg !1426
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_iscntrl(i32) local_unnamed_addr #10 !dbg !1427 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1429, metadata !DIExpression()), !dbg !1430
  switch i32 %0, label %2 [
    i32 7, label %3
    i32 8, label %3
    i32 12, label %3
    i32 10, label %3
    i32 13, label %3
    i32 9, label %3
    i32 11, label %3
    i32 0, label %3
    i32 1, label %3
    i32 2, label %3
    i32 3, label %3
    i32 4, label %3
    i32 5, label %3
    i32 6, label %3
    i32 14, label %3
    i32 15, label %3
    i32 16, label %3
    i32 17, label %3
    i32 18, label %3
    i32 19, label %3
    i32 20, label %3
    i32 21, label %3
    i32 22, label %3
    i32 23, label %3
    i32 24, label %3
    i32 25, label %3
    i32 26, label %3
    i32 27, label %3
    i32 28, label %3
    i32 29, label %3
    i32 30, label %3
    i32 31, label %3
    i32 127, label %3
  ], !dbg !1431

; <label>:2:                                      ; preds = %1
  br label %3, !dbg !1432

; <label>:3:                                      ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !1434
  ret i1 %4, !dbg !1435
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isdigit(i32) local_unnamed_addr #10 !dbg !1436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1438, metadata !DIExpression()), !dbg !1439
  %2 = add i32 %0, -48, !dbg !1440
  %3 = icmp ult i32 %2, 10, !dbg !1440
  ret i1 %3, !dbg !1441
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isgraph(i32) local_unnamed_addr #10 !dbg !1442 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1444, metadata !DIExpression()), !dbg !1445
  %2 = add i32 %0, -33, !dbg !1446
  %3 = icmp ult i32 %2, 94, !dbg !1446
  ret i1 %3, !dbg !1447
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_islower(i32) local_unnamed_addr #10 !dbg !1448 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1450, metadata !DIExpression()), !dbg !1451
  %2 = add i32 %0, -97, !dbg !1452
  %3 = icmp ult i32 %2, 26, !dbg !1452
  ret i1 %3, !dbg !1453
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isprint(i32) local_unnamed_addr #10 !dbg !1454 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1456, metadata !DIExpression()), !dbg !1457
  %2 = add i32 %0, -32, !dbg !1458
  %3 = icmp ult i32 %2, 95, !dbg !1458
  ret i1 %3, !dbg !1459
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_ispunct(i32) local_unnamed_addr #10 !dbg !1460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1462, metadata !DIExpression()), !dbg !1463
  switch i32 %0, label %2 [
    i32 33, label %3
    i32 34, label %3
    i32 35, label %3
    i32 36, label %3
    i32 37, label %3
    i32 38, label %3
    i32 39, label %3
    i32 40, label %3
    i32 41, label %3
    i32 42, label %3
    i32 43, label %3
    i32 44, label %3
    i32 45, label %3
    i32 46, label %3
    i32 47, label %3
    i32 58, label %3
    i32 59, label %3
    i32 60, label %3
    i32 61, label %3
    i32 62, label %3
    i32 63, label %3
    i32 64, label %3
    i32 91, label %3
    i32 92, label %3
    i32 93, label %3
    i32 94, label %3
    i32 95, label %3
    i32 96, label %3
    i32 123, label %3
    i32 124, label %3
    i32 125, label %3
    i32 126, label %3
  ], !dbg !1464

; <label>:2:                                      ; preds = %1
  br label %3, !dbg !1465

; <label>:3:                                      ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !1467
  ret i1 %4, !dbg !1468
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isspace(i32) local_unnamed_addr #10 !dbg !1469 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1471, metadata !DIExpression()), !dbg !1472
  %2 = add i32 %0, -9, !dbg !1473
  %3 = icmp ult i32 %2, 24, !dbg !1473
  br i1 %3, label %4, label %9, !dbg !1473

; <label>:4:                                      ; preds = %1
  %5 = trunc i32 %2 to i24, !dbg !1473
  %6 = lshr i24 -8388577, %5, !dbg !1473
  %7 = and i24 %6, 1, !dbg !1473
  %8 = icmp ne i24 %7, 0, !dbg !1473
  ret i1 %8, !dbg !1473

; <label>:9:                                      ; preds = %1
  ret i1 false, !dbg !1474
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isupper(i32) local_unnamed_addr #10 !dbg !1475 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1477, metadata !DIExpression()), !dbg !1478
  %2 = add i32 %0, -65, !dbg !1479
  %3 = icmp ult i32 %2, 26, !dbg !1479
  ret i1 %3, !dbg !1480
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isxdigit(i32) local_unnamed_addr #10 !dbg !1481 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1483, metadata !DIExpression()), !dbg !1484
  %2 = add i32 %0, -48, !dbg !1485
  %3 = icmp ult i32 %2, 55, !dbg !1485
  br i1 %3, label %4, label %9, !dbg !1485

; <label>:4:                                      ; preds = %1
  %5 = zext i32 %2 to i55, !dbg !1485
  %6 = lshr i55 -562949945162753, %5, !dbg !1485
  %7 = and i55 %6, 1, !dbg !1485
  %8 = icmp ne i55 %7, 0, !dbg !1485
  ret i1 %8, !dbg !1485

; <label>:9:                                      ; preds = %1
  ret i1 false, !dbg !1486
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local i32 @c_tolower(i32) local_unnamed_addr #10 !dbg !1487 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1491, metadata !DIExpression()), !dbg !1492
  %2 = add i32 %0, -65, !dbg !1493
  %3 = icmp ult i32 %2, 26, !dbg !1493
  %4 = add nsw i32 %0, 32, !dbg !1494
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !1493
  ret i32 %5, !dbg !1496
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local i32 @c_toupper(i32) local_unnamed_addr #10 !dbg !1497 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1499, metadata !DIExpression()), !dbg !1500
  %2 = add i32 %0, -97, !dbg !1501
  %3 = icmp ult i32 %2, 26, !dbg !1501
  %4 = add nsw i32 %0, -32, !dbg !1502
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !1501
  ret i32 %5, !dbg !1504
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1505 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1507, metadata !DIExpression()), !dbg !1508
  store i8* %0, i8** @file_name, align 8, !dbg !1509, !tbaa !682
  ret void, !dbg !1510
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1511 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1515, metadata !DIExpression()), !dbg !1516
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1517, !tbaa !1518
  ret void, !dbg !1520
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1521 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1526, !tbaa !682
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1527
  %3 = icmp eq i32 %2, 0, !dbg !1528
  br i1 %3, label %22, label %4, !dbg !1529

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1530, !tbaa !1518, !range !1531
  %6 = icmp eq i8 %5, 0, !dbg !1530
  br i1 %6, label %11, label %7, !dbg !1532

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1533
  %9 = load i32, i32* %8, align 4, !dbg !1533, !tbaa !751
  %10 = icmp eq i32 %9, 32, !dbg !1534
  br i1 %10, label %22, label %11, !dbg !1535

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0), i32 5) #12, !dbg !1536
  call void @llvm.dbg.value(metadata i8* %12, metadata !1523, metadata !DIExpression()), !dbg !1537
  %13 = load i8*, i8** @file_name, align 8, !dbg !1538, !tbaa !682
  %14 = icmp eq i8* %13, null, !dbg !1538
  %15 = tail call i32* @__errno_location() #17, !dbg !1540
  %16 = load i32, i32* %15, align 4, !dbg !1540, !tbaa !751
  br i1 %14, label %19, label %17, !dbg !1541

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1542
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.80, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1543
  br label %20, !dbg !1543

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.81, i64 0, i64 0), i8* %12) #12, !dbg !1544
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1545, !tbaa !751
  tail call void @_exit(i32 %21) #16, !dbg !1546
  unreachable, !dbg !1546

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1547, !tbaa !682
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1549
  %25 = icmp eq i32 %24, 0, !dbg !1550
  br i1 %25, label %28, label %26, !dbg !1551

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1552, !tbaa !751
  tail call void @_exit(i32 %27) #16, !dbg !1553
  unreachable, !dbg !1553

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1554
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1555 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1557, metadata !DIExpression()), !dbg !1560
  %2 = icmp eq i8* %0, null, !dbg !1561
  br i1 %2, label %3, label %6, !dbg !1563

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1564, !tbaa !682
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.88, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !1566
  tail call void @abort() #16, !dbg !1567
  unreachable, !dbg !1567

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !1568
  call void @llvm.dbg.value(metadata i8* %7, metadata !1558, metadata !DIExpression()), !dbg !1569
  %8 = icmp eq i8* %7, null, !dbg !1570
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1571
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1572
  call void @llvm.dbg.value(metadata i8* %10, metadata !1559, metadata !DIExpression()), !dbg !1573
  %11 = ptrtoint i8* %10 to i64, !dbg !1574
  %12 = ptrtoint i8* %0 to i64, !dbg !1574
  %13 = sub i64 %11, %12, !dbg !1574
  %14 = icmp sgt i64 %13, 6, !dbg !1576
  br i1 %14, label %15, label %24, !dbg !1577

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1578
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.89, i64 0, i64 0), i64 7) #15, !dbg !1579
  %18 = icmp eq i32 %17, 0, !dbg !1580
  br i1 %18, label %19, label %24, !dbg !1581

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1557, metadata !DIExpression()), !dbg !1560
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.90, i64 0, i64 0), i64 3) #15, !dbg !1582
  %21 = icmp eq i32 %20, 0, !dbg !1585
  br i1 %21, label %22, label %24, !dbg !1586

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1587
  call void @llvm.dbg.value(metadata i8* %23, metadata !1557, metadata !DIExpression()), !dbg !1560
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1589, !tbaa !682
  br label %24, !dbg !1590

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1557, metadata !DIExpression()), !dbg !1560
  store i8* %25, i8** @program_name, align 8, !dbg !1591, !tbaa !682
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1592, !tbaa !682
  ret void, !dbg !1593
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1594 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1599, metadata !DIExpression()), !dbg !1602
  %2 = tail call i32* @__errno_location() #17, !dbg !1603
  %3 = load i32, i32* %2, align 4, !dbg !1603, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %3, metadata !1600, metadata !DIExpression()), !dbg !1604
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1605
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1605
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1605
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1606
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1601, metadata !DIExpression()), !dbg !1607
  store i32 %3, i32* %2, align 4, !dbg !1608, !tbaa !751
  ret %struct.quoting_options* %8, !dbg !1609
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #13 !dbg !1610 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1616, metadata !DIExpression()), !dbg !1617
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1618
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1618
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1619
  %5 = load i32, i32* %4, align 8, !dbg !1619, !tbaa !1620
  ret i32 %5, !dbg !1622
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1623 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1627, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i32 %1, metadata !1628, metadata !DIExpression()), !dbg !1630
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1631
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1631
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1632
  store i32 %1, i32* %5, align 8, !dbg !1633, !tbaa !1620
  ret void, !dbg !1634
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1635 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1639, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %1, metadata !1640, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 %2, metadata !1641, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8 %1, metadata !1642, metadata !DIExpression()), !dbg !1651
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1652
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1652
  %6 = lshr i8 %1, 5, !dbg !1653
  %7 = zext i8 %6 to i64, !dbg !1653
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1654
  call void @llvm.dbg.value(metadata i32* %8, metadata !1644, metadata !DIExpression()), !dbg !1655
  %9 = and i8 %1, 31, !dbg !1656
  %10 = zext i8 %9 to i32, !dbg !1656
  call void @llvm.dbg.value(metadata i32 %10, metadata !1646, metadata !DIExpression()), !dbg !1657
  %11 = load i32, i32* %8, align 4, !dbg !1658, !tbaa !751
  %12 = lshr i32 %11, %10, !dbg !1659
  %13 = and i32 %12, 1, !dbg !1660
  call void @llvm.dbg.value(metadata i32 %13, metadata !1647, metadata !DIExpression()), !dbg !1661
  %14 = and i32 %2, 1, !dbg !1662
  %15 = xor i32 %13, %14, !dbg !1663
  %16 = shl i32 %15, %10, !dbg !1664
  %17 = xor i32 %16, %11, !dbg !1665
  store i32 %17, i32* %8, align 4, !dbg !1665, !tbaa !751
  ret i32 %13, !dbg !1666
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1667 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1671, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i32 %1, metadata !1672, metadata !DIExpression()), !dbg !1675
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1676
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1678
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1671, metadata !DIExpression()), !dbg !1674
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1679
  %6 = load i32, i32* %5, align 4, !dbg !1679, !tbaa !1680
  call void @llvm.dbg.value(metadata i32 %6, metadata !1673, metadata !DIExpression()), !dbg !1681
  store i32 %1, i32* %5, align 4, !dbg !1682, !tbaa !1680
  ret i32 %6, !dbg !1683
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1684 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1688, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8* %1, metadata !1689, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8* %2, metadata !1690, metadata !DIExpression()), !dbg !1693
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1694
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1688, metadata !DIExpression()), !dbg !1691
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1697
  store i32 10, i32* %6, align 8, !dbg !1698, !tbaa !1620
  %7 = icmp ne i8* %1, null, !dbg !1699
  %8 = icmp ne i8* %2, null, !dbg !1701
  %9 = and i1 %7, %8, !dbg !1702
  br i1 %9, label %11, label %10, !dbg !1702

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !1703
  unreachable, !dbg !1703

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1704
  store i8* %1, i8** %12, align 8, !dbg !1705, !tbaa !1706
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1707
  store i8* %2, i8** %13, align 8, !dbg !1708, !tbaa !1709
  ret void, !dbg !1710
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1715, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %1, metadata !1716, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8* %2, metadata !1717, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %3, metadata !1718, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1719, metadata !DIExpression()), !dbg !1727
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1728
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1728
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1720, metadata !DIExpression()), !dbg !1729
  %8 = tail call i32* @__errno_location() #17, !dbg !1730
  %9 = load i32, i32* %8, align 4, !dbg !1730, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %9, metadata !1721, metadata !DIExpression()), !dbg !1731
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1732
  %11 = load i32, i32* %10, align 8, !dbg !1732, !tbaa !1620
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1733
  %13 = load i32, i32* %12, align 4, !dbg !1733, !tbaa !1680
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1734
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1735
  %16 = load i8*, i8** %15, align 8, !dbg !1735, !tbaa !1706
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1736
  %18 = load i8*, i8** %17, align 8, !dbg !1736, !tbaa !1709
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1737
  call void @llvm.dbg.value(metadata i64 %19, metadata !1722, metadata !DIExpression()), !dbg !1738
  store i32 %9, i32* %8, align 4, !dbg !1739, !tbaa !751
  ret i64 %19, !dbg !1740
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1741 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1747, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i64 %1, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8* %2, metadata !1749, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %3, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 %4, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 %5, metadata !1752, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32* %6, metadata !1753, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8* %7, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %8, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 0, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 0, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8* null, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 0, metadata !1760, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1824
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1825
  %14 = icmp eq i64 %13, 1, !dbg !1826
  %15 = lshr i32 %5, 1, !dbg !1827
  %16 = trunc i32 %15 to i8, !dbg !1827
  %17 = and i8 %16, 1, !dbg !1827
  call void @llvm.dbg.value(metadata i8 %17, metadata !1763, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 0, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 1, metadata !1766, metadata !DIExpression()), !dbg !1830
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1831

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1821
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1822
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1823
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1824
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1832
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1828
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1829
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1830
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %39, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %38, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %37, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %36, metadata !1763, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %35, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %34, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i64 %33, metadata !1760, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8* %32, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %31, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8* %30, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %29, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %28, metadata !1751, metadata !DIExpression()), !dbg !1815
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
  ], !dbg !1834

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i8 1, metadata !1763, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 %36, metadata !1763, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 5, metadata !1751, metadata !DIExpression()), !dbg !1815
  br label %93, !dbg !1835

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1763, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 5, metadata !1751, metadata !DIExpression()), !dbg !1815
  %43 = and i8 %36, 1, !dbg !1836
  %44 = icmp eq i8 %43, 0, !dbg !1836
  br i1 %44, label %45, label %93, !dbg !1835

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1838
  br i1 %46, label %93, label %47, !dbg !1841

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1838, !tbaa !831
  br label %93, !dbg !1838

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.101, i64 0, i64 0), i32 %28), !dbg !1842
  call void @llvm.dbg.value(metadata i8* %49, metadata !1754, metadata !DIExpression()), !dbg !1818
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.102, i64 0, i64 0), i32 %28), !dbg !1846
  call void @llvm.dbg.value(metadata i8* %50, metadata !1755, metadata !DIExpression()), !dbg !1819
  br label %51, !dbg !1847

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %52, metadata !1754, metadata !DIExpression()), !dbg !1818
  %54 = and i8 %36, 1, !dbg !1848
  %55 = icmp eq i8 %54, 0, !dbg !1848
  br i1 %55, label %56, label %71, !dbg !1850

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 0, metadata !1757, metadata !DIExpression()), !dbg !1820
  %57 = load i8, i8* %52, align 1, !dbg !1851, !tbaa !831
  %58 = icmp eq i8 %57, 0, !dbg !1854
  br i1 %58, label %71, label %59, !dbg !1854

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %62, metadata !1757, metadata !DIExpression()), !dbg !1820
  %63 = icmp ult i64 %62, %40, !dbg !1855
  br i1 %63, label %64, label %66, !dbg !1858

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1855
  store i8 %60, i8* %65, align 1, !dbg !1855, !tbaa !831
  br label %66, !dbg !1855

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1858
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1859
  call void @llvm.dbg.value(metadata i8* %68, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %67, metadata !1757, metadata !DIExpression()), !dbg !1820
  %69 = load i8, i8* %68, align 1, !dbg !1851, !tbaa !831
  %70 = icmp eq i8 %69, 0, !dbg !1854
  br i1 %70, label %71, label %59, !dbg !1854, !llvm.loop !1860

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1820
  call void @llvm.dbg.value(metadata i64 %72, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %53, metadata !1759, metadata !DIExpression()), !dbg !1822
  %73 = call i64 @strlen(i8* %53) #15, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %73, metadata !1760, metadata !DIExpression()), !dbg !1823
  br label %93, !dbg !1863

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1824
  br label %75, !dbg !1864

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1832
  call void @llvm.dbg.value(metadata i8 %76, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8 1, metadata !1763, metadata !DIExpression()), !dbg !1827
  br label %77, !dbg !1865

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1824
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1832
  call void @llvm.dbg.value(metadata i8 %79, metadata !1763, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 %78, metadata !1761, metadata !DIExpression()), !dbg !1824
  %80 = and i8 %79, 1, !dbg !1866
  %81 = icmp eq i8 %80, 0, !dbg !1866
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1868
  br label %83, !dbg !1868

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1869
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1827
  call void @llvm.dbg.value(metadata i8 %85, metadata !1763, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 %84, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i32 2, metadata !1751, metadata !DIExpression()), !dbg !1815
  %86 = and i8 %85, 1, !dbg !1870
  %87 = icmp eq i8 %86, 0, !dbg !1870
  br i1 %87, label %88, label %93, !dbg !1872

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1873
  br i1 %89, label %93, label %90, !dbg !1876

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1873, !tbaa !831
  br label %93, !dbg !1873

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1827
  br label %93, !dbg !1877

; <label>:92:                                     ; preds = %27
  call void @abort() #16, !dbg !1878
  unreachable, !dbg !1878

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1820
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.103, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.103, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.103, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.102, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.102, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.102, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.103, i64 0, i64 0), %41 ], !dbg !1832
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1832
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1832
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1879
  call void @llvm.dbg.value(metadata i8 %101, metadata !1763, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 %100, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i64 %99, metadata !1760, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %97, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %94, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i64 0, metadata !1756, metadata !DIExpression()), !dbg !1880
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
  br label %121, !dbg !1881

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1882
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1820
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1821
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1828
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1829
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1830
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %125, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %122, metadata !1756, metadata !DIExpression()), !dbg !1880
  %130 = icmp eq i64 %125, -1, !dbg !1883
  br i1 %130, label %131, label %135, !dbg !1884

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1885
  %133 = load i8, i8* %132, align 1, !dbg !1885, !tbaa !831
  %134 = icmp eq i8 %133, 0, !dbg !1886
  br i1 %134, label %617, label %137, !dbg !1887

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1888
  br i1 %136, label %617, label %137, !dbg !1887

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8 0, metadata !1773, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1891
  br i1 %107, label %138, label %153, !dbg !1892

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1894
  %140 = and i1 %108, %130, !dbg !1895
  br i1 %140, label %141, label %143, !dbg !1895

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #15, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %142, metadata !1750, metadata !DIExpression()), !dbg !1814
  br label %143, !dbg !1897

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1750, metadata !DIExpression()), !dbg !1814
  %145 = icmp ugt i64 %139, %144, !dbg !1898
  br i1 %145, label %153, label %146, !dbg !1899

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1900
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #15, !dbg !1901
  %149 = icmp ne i32 %148, 0, !dbg !1902
  %150 = or i1 %149, %110, !dbg !1903
  %151 = xor i1 %149, true, !dbg !1903
  %152 = zext i1 %151 to i8, !dbg !1903
  br i1 %150, label %153, label %661, !dbg !1903

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1904
  call void @llvm.dbg.value(metadata i8 %155, metadata !1772, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i64 %154, metadata !1750, metadata !DIExpression()), !dbg !1814
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1905
  %157 = load i8, i8* %156, align 1, !dbg !1905, !tbaa !831
  call void @llvm.dbg.value(metadata i8 %157, metadata !1767, metadata !DIExpression()), !dbg !1906
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
  ], !dbg !1907

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1908

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1909

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1773, metadata !DIExpression()), !dbg !1890
  %161 = and i8 %126, 1, !dbg !1913
  %162 = icmp eq i8 %161, 0, !dbg !1913
  %163 = and i1 %114, %162, !dbg !1913
  br i1 %163, label %164, label %180, !dbg !1913

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1915
  br i1 %165, label %166, label %168, !dbg !1919

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1915
  store i8 39, i8* %167, align 1, !dbg !1915, !tbaa !831
  br label %168, !dbg !1915

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %169, metadata !1757, metadata !DIExpression()), !dbg !1820
  %170 = icmp ult i64 %169, %129, !dbg !1920
  br i1 %170, label %171, label %173, !dbg !1923

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1920
  store i8 36, i8* %172, align 1, !dbg !1920, !tbaa !831
  br label %173, !dbg !1920

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %174, metadata !1757, metadata !DIExpression()), !dbg !1820
  %175 = icmp ult i64 %174, %129, !dbg !1924
  br i1 %175, label %176, label %178, !dbg !1927

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1924
  store i8 39, i8* %177, align 1, !dbg !1924, !tbaa !831
  br label %178, !dbg !1924

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %179, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 1, metadata !1764, metadata !DIExpression()), !dbg !1828
  br label %180, !dbg !1928

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1879
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1879
  call void @llvm.dbg.value(metadata i8 %182, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %181, metadata !1757, metadata !DIExpression()), !dbg !1820
  %183 = icmp ult i64 %181, %129, !dbg !1929
  br i1 %183, label %184, label %186, !dbg !1932

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1929
  store i8 92, i8* %185, align 1, !dbg !1929, !tbaa !831
  br label %186, !dbg !1929

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %187, metadata !1757, metadata !DIExpression()), !dbg !1820
  br i1 %104, label %188, label %478, !dbg !1933

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1935
  %190 = icmp ult i64 %189, %154, !dbg !1936
  br i1 %190, label %191, label %467, !dbg !1937

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1938
  %193 = load i8, i8* %192, align 1, !dbg !1938, !tbaa !831
  %194 = add i8 %193, -48, !dbg !1939
  %195 = icmp ult i8 %194, 10, !dbg !1939
  br i1 %195, label %196, label %467, !dbg !1939

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1940
  br i1 %197, label %198, label %200, !dbg !1944

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1940
  store i8 48, i8* %199, align 1, !dbg !1940, !tbaa !831
  br label %200, !dbg !1940

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %201, metadata !1757, metadata !DIExpression()), !dbg !1820
  %202 = icmp ult i64 %201, %129, !dbg !1945
  br i1 %202, label %203, label %205, !dbg !1948

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1945
  store i8 48, i8* %204, align 1, !dbg !1945, !tbaa !831
  br label %205, !dbg !1945

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %206, metadata !1757, metadata !DIExpression()), !dbg !1820
  br label %467, !dbg !1949

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1950

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1951

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1952

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1954

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1956
  %213 = icmp ult i64 %212, %154, !dbg !1957
  br i1 %213, label %214, label %467, !dbg !1958

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1959
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1960
  %217 = load i8, i8* %216, align 1, !dbg !1960, !tbaa !831
  %218 = icmp eq i8 %217, 63, !dbg !1961
  br i1 %218, label %219, label %467, !dbg !1962

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1963
  %221 = load i8, i8* %220, align 1, !dbg !1963, !tbaa !831
  %222 = sext i8 %221 to i32, !dbg !1963
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
  ], !dbg !1964

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1965

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1767, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %212, metadata !1756, metadata !DIExpression()), !dbg !1880
  %225 = icmp ult i64 %123, %129, !dbg !1967
  br i1 %225, label %226, label %228, !dbg !1970

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1967
  store i8 63, i8* %227, align 1, !dbg !1967, !tbaa !831
  br label %228, !dbg !1967

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %229, metadata !1757, metadata !DIExpression()), !dbg !1820
  %230 = icmp ult i64 %229, %129, !dbg !1971
  br i1 %230, label %231, label %233, !dbg !1974

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1971
  store i8 34, i8* %232, align 1, !dbg !1971, !tbaa !831
  br label %233, !dbg !1971

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %234, metadata !1757, metadata !DIExpression()), !dbg !1820
  %235 = icmp ult i64 %234, %129, !dbg !1975
  br i1 %235, label %236, label %238, !dbg !1978

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1975
  store i8 34, i8* %237, align 1, !dbg !1975, !tbaa !831
  br label %238, !dbg !1975

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %239, metadata !1757, metadata !DIExpression()), !dbg !1820
  %240 = icmp ult i64 %239, %129, !dbg !1979
  br i1 %240, label %241, label %243, !dbg !1982

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1979
  store i8 63, i8* %242, align 1, !dbg !1979, !tbaa !831
  br label %243, !dbg !1979

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %244, metadata !1757, metadata !DIExpression()), !dbg !1820
  br label %467, !dbg !1983

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1771, metadata !DIExpression()), !dbg !1984
  br label %255, !dbg !1985

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1771, metadata !DIExpression()), !dbg !1984
  br label %255, !dbg !1986

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1771, metadata !DIExpression()), !dbg !1984
  br label %253, !dbg !1987

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1771, metadata !DIExpression()), !dbg !1984
  br label %253, !dbg !1988

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1771, metadata !DIExpression()), !dbg !1984
  br label %255, !dbg !1989

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1771, metadata !DIExpression()), !dbg !1984
  br i1 %114, label %251, label %252, !dbg !1990

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1991

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1994

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1996
  call void @llvm.dbg.value(metadata i8 %254, metadata !1771, metadata !DIExpression()), !dbg !1984
  br i1 %113, label %255, label %661, !dbg !1997

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1996
  call void @llvm.dbg.value(metadata i8 %256, metadata !1771, metadata !DIExpression()), !dbg !1984
  br i1 %103, label %524, label %478, !dbg !1999

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2000
  br i1 %258, label %259, label %264, !dbg !2002

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2003, !tbaa !831
  %261 = icmp ne i8 %260, 0, !dbg !2004
  %262 = icmp ne i64 %122, 0, !dbg !2005
  %263 = or i1 %262, %261, !dbg !2007
  br i1 %263, label %467, label %270, !dbg !2007

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2008
  %266 = icmp ne i64 %122, 0, !dbg !2005
  %267 = or i1 %266, %265, !dbg !2002
  br i1 %267, label %467, label %270, !dbg !2002

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2005
  br i1 %269, label %270, label %467, !dbg !2009

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1891
  br label %271, !dbg !2010

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1996
  call void @llvm.dbg.value(metadata i8 %272, metadata !1774, metadata !DIExpression()), !dbg !1891
  br i1 %113, label %467, label %661, !dbg !2011

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1891
  br i1 %114, label %274, label %467, !dbg !2013

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2014

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2017
  %277 = icmp ne i64 %124, 0, !dbg !2019
  %278 = or i1 %277, %276, !dbg !2020
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2020
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %280, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %279, metadata !1758, metadata !DIExpression()), !dbg !1821
  %281 = icmp ult i64 %123, %280, !dbg !2021
  br i1 %281, label %282, label %284, !dbg !2024

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2021
  store i8 39, i8* %283, align 1, !dbg !2021, !tbaa !831
  br label %284, !dbg !2021

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %285, metadata !1757, metadata !DIExpression()), !dbg !1820
  %286 = icmp ult i64 %285, %280, !dbg !2025
  br i1 %286, label %287, label %289, !dbg !2028

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2025
  store i8 92, i8* %288, align 1, !dbg !2025, !tbaa !831
  br label %289, !dbg !2025

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %290, metadata !1757, metadata !DIExpression()), !dbg !1820
  %291 = icmp ult i64 %290, %280, !dbg !2029
  br i1 %291, label %292, label %294, !dbg !2032

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2029
  store i8 39, i8* %293, align 1, !dbg !2029, !tbaa !831
  br label %294, !dbg !2029

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %295, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1828
  br label %467, !dbg !2033

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2034

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1775, metadata !DIExpression()), !dbg !2035
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2036
  %299 = load i16*, i16** %298, align 8, !dbg !2036, !tbaa !682
  %300 = zext i8 %157 to i64, !dbg !2036
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2036
  %302 = load i16, i16* %301, align 2, !dbg !2036, !tbaa !832
  %303 = lshr i16 %302, 14, !dbg !2038
  %304 = trunc i16 %303 to i8, !dbg !2038
  %305 = and i8 %304, 1, !dbg !2038
  call void @llvm.dbg.value(metadata i8 %305, metadata !1778, metadata !DIExpression()), !dbg !2039
  br label %359, !dbg !2040

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2041
  store i64 0, i64* %10, align 8, !dbg !2042
  call void @llvm.dbg.value(metadata i64 0, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 1, metadata !1778, metadata !DIExpression()), !dbg !2039
  %307 = icmp eq i64 %154, -1, !dbg !2043
  br i1 %307, label %308, label %310, !dbg !2045

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #15, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %309, metadata !1750, metadata !DIExpression()), !dbg !1814
  br label %310, !dbg !2047

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2048
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  br label %312, !dbg !2049

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2050
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2051
  call void @llvm.dbg.value(metadata i8 %314, metadata !1778, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %313, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2052
  %315 = add i64 %313, %122, !dbg !2053
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2054
  %317 = sub i64 %311, %315, !dbg !2055
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1779, metadata !DIExpression(DW_OP_deref)), !dbg !2056
  call void @llvm.dbg.value(metadata i32* %12, metadata !1797, metadata !DIExpression(DW_OP_deref)), !dbg !2057
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %318, metadata !1800, metadata !DIExpression()), !dbg !2059
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2060

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %313, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %313, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %313, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %313, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %313, metadata !1775, metadata !DIExpression()), !dbg !2035
  %320 = icmp ugt i64 %311, %315, !dbg !2061
  br i1 %320, label %321, label %344, !dbg !2063

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1775, metadata !DIExpression()), !dbg !2035
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2064
  %325 = load i8, i8* %324, align 1, !dbg !2064, !tbaa !831
  %326 = icmp eq i8 %325, 0, !dbg !2063
  br i1 %326, label %344, label %327, !dbg !2065

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %328, metadata !1775, metadata !DIExpression()), !dbg !2035
  %329 = add i64 %328, %122, !dbg !2067
  %330 = icmp ult i64 %329, %311, !dbg !2061
  br i1 %330, label %321, label %344, !dbg !2063, !llvm.loop !2068

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2069
  %333 = and i1 %116, %332, !dbg !2072
  call void @llvm.dbg.value(metadata i64 1, metadata !1801, metadata !DIExpression()), !dbg !2073
  br i1 %333, label %334, label %347, !dbg !2072

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1801, metadata !DIExpression()), !dbg !2073
  %336 = add i64 %335, %315, !dbg !2074
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2075
  %338 = load i8, i8* %337, align 1, !dbg !2075, !tbaa !831
  %339 = sext i8 %338 to i32, !dbg !2075
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2076

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %341, metadata !1801, metadata !DIExpression()), !dbg !2073
  %342 = icmp ult i64 %341, %318, !dbg !2069
  br i1 %342, label %334, label %347, !dbg !2078, !llvm.loop !2079

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 %314, metadata !1778, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %313, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 %314, metadata !1778, metadata !DIExpression()), !dbg !2039
  br label %344, !dbg !2081

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1778, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %352, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2081
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2082, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %348, metadata !1797, metadata !DIExpression()), !dbg !2057
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !2084
  %350 = icmp eq i32 %349, 0, !dbg !2084
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2085
  call void @llvm.dbg.value(metadata i8 %351, metadata !1778, metadata !DIExpression()), !dbg !2039
  %352 = add i64 %318, %313, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %352, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 %351, metadata !1778, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %352, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2081
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1779, metadata !DIExpression(DW_OP_deref)), !dbg !2056
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !2087
  %354 = icmp eq i32 %353, 0, !dbg !2088
  br i1 %354, label %312, label %355, !dbg !2089, !llvm.loop !2090

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2092
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 2, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 2, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 2, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 2, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 2, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 %100, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %100, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %100, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %100, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %100, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 %94, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 %94, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 %94, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 %94, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 %94, metadata !1751, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 %100, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %100, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %100, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %100, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %100, metadata !1761, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %311, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %351, metadata !1778, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %352, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2081
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2092
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2093
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2094
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2094
  call void @llvm.dbg.value(metadata i8 %362, metadata !1778, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %361, metadata !1775, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %360, metadata !1750, metadata !DIExpression()), !dbg !1814
  %363 = and i8 %362, 1, !dbg !2095
  %364 = icmp ne i8 %363, 0, !dbg !2095
  call void @llvm.dbg.value(metadata i8 %363, metadata !1774, metadata !DIExpression()), !dbg !1891
  %365 = icmp ult i64 %361, 2, !dbg !2096
  %366 = or i1 %364, %115, !dbg !2097
  %367 = and i1 %365, %366, !dbg !2098
  br i1 %367, label %467, label %368, !dbg !2098

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %369, metadata !1808, metadata !DIExpression()), !dbg !2100
  br label %370, !dbg !2101

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2102
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2106
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1828
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2102
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2108
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1890
  call void @llvm.dbg.value(metadata i8 %376, metadata !1773, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %375, metadata !1772, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8 %374, metadata !1767, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %373, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %372, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %371, metadata !1756, metadata !DIExpression()), !dbg !1880
  br i1 %366, label %423, label %377, !dbg !2112

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2113

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1773, metadata !DIExpression()), !dbg !1890
  %379 = and i8 %373, 1, !dbg !2116
  %380 = icmp eq i8 %379, 0, !dbg !2116
  %381 = and i1 %114, %380, !dbg !2116
  br i1 %381, label %382, label %398, !dbg !2116

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2118
  br i1 %383, label %384, label %386, !dbg !2122

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2118
  store i8 39, i8* %385, align 1, !dbg !2118, !tbaa !831
  br label %386, !dbg !2118

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %387, metadata !1757, metadata !DIExpression()), !dbg !1820
  %388 = icmp ult i64 %387, %129, !dbg !2123
  br i1 %388, label %389, label %391, !dbg !2126

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2123
  store i8 36, i8* %390, align 1, !dbg !2123, !tbaa !831
  br label %391, !dbg !2123

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %392, metadata !1757, metadata !DIExpression()), !dbg !1820
  %393 = icmp ult i64 %392, %129, !dbg !2127
  br i1 %393, label %394, label %396, !dbg !2130

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2127
  store i8 39, i8* %395, align 1, !dbg !2127, !tbaa !831
  br label %396, !dbg !2127

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %397, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 1, metadata !1764, metadata !DIExpression()), !dbg !1828
  br label %398, !dbg !2131

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1879
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1879
  call void @llvm.dbg.value(metadata i8 %400, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %399, metadata !1757, metadata !DIExpression()), !dbg !1820
  %401 = icmp ult i64 %399, %129, !dbg !2132
  br i1 %401, label %402, label %404, !dbg !2135

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2132
  store i8 92, i8* %403, align 1, !dbg !2132, !tbaa !831
  br label %404, !dbg !2132

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %405, metadata !1757, metadata !DIExpression()), !dbg !1820
  %406 = icmp ult i64 %405, %129, !dbg !2136
  br i1 %406, label %407, label %411, !dbg !2139

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2136
  %409 = or i8 %408, 48, !dbg !2136
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2136
  store i8 %409, i8* %410, align 1, !dbg !2136, !tbaa !831
  br label %411, !dbg !2136

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %412, metadata !1757, metadata !DIExpression()), !dbg !1820
  %413 = icmp ult i64 %412, %129, !dbg !2140
  br i1 %413, label %414, label %419, !dbg !2143

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2140
  %416 = and i8 %415, 7, !dbg !2140
  %417 = or i8 %416, 48, !dbg !2140
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2140
  store i8 %417, i8* %418, align 1, !dbg !2140, !tbaa !831
  br label %419, !dbg !2140

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %420, metadata !1757, metadata !DIExpression()), !dbg !1820
  %421 = and i8 %374, 7, !dbg !2144
  %422 = or i8 %421, 48, !dbg !2145
  call void @llvm.dbg.value(metadata i8 %422, metadata !1767, metadata !DIExpression()), !dbg !1906
  br label %432, !dbg !2146

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2147
  %425 = icmp eq i8 %424, 0, !dbg !2147
  br i1 %425, label %432, label %426, !dbg !2148

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2149
  br i1 %427, label %428, label %430, !dbg !2152

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2149
  store i8 92, i8* %429, align 1, !dbg !2149, !tbaa !831
  br label %430, !dbg !2149

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %431, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1889
  br label %432, !dbg !2153

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2154
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1828
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2155
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2156
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2158
  call void @llvm.dbg.value(metadata i8 %437, metadata !1773, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %436, metadata !1772, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8 %435, metadata !1767, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %434, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %433, metadata !1757, metadata !DIExpression()), !dbg !1820
  %438 = add i64 %371, 1, !dbg !2159
  %439 = icmp ugt i64 %369, %438, !dbg !2161
  br i1 %439, label %440, label %562, !dbg !2162

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2163
  %442 = icmp ne i8 %441, 0, !dbg !2163
  %443 = and i8 %437, 1, !dbg !2163
  %444 = icmp eq i8 %443, 0, !dbg !2163
  %445 = and i1 %442, %444, !dbg !2163
  br i1 %445, label %446, label %457, !dbg !2163

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2166
  br i1 %447, label %448, label %450, !dbg !2170

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2166
  store i8 39, i8* %449, align 1, !dbg !2166, !tbaa !831
  br label %450, !dbg !2166

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %451, metadata !1757, metadata !DIExpression()), !dbg !1820
  %452 = icmp ult i64 %451, %129, !dbg !2171
  br i1 %452, label %453, label %455, !dbg !2174

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2171
  store i8 39, i8* %454, align 1, !dbg !2171, !tbaa !831
  br label %455, !dbg !2171

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %456, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1828
  br label %457, !dbg !2175

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2176
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1879
  call void @llvm.dbg.value(metadata i8 %459, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %458, metadata !1757, metadata !DIExpression()), !dbg !1820
  %460 = icmp ult i64 %458, %129, !dbg !2177
  br i1 %460, label %461, label %463, !dbg !2179

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2177
  store i8 %435, i8* %462, align 1, !dbg !2177, !tbaa !831
  br label %463, !dbg !2177

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %464, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %438, metadata !1756, metadata !DIExpression()), !dbg !1880
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2180
  %466 = load i8, i8* %465, align 1, !dbg !2180, !tbaa !831
  call void @llvm.dbg.value(metadata i8 %466, metadata !1767, metadata !DIExpression()), !dbg !1906
  br label %370, !dbg !2181, !llvm.loop !2182

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2185
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1879
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1821
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2186
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1879
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1879
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1904
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1904
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1904
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %476, metadata !1774, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %475, metadata !1773, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %155, metadata !1772, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8 %474, metadata !1767, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %473, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %472, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %471, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %470, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %469, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %468, metadata !1756, metadata !DIExpression()), !dbg !1880
  br i1 %105, label %489, label %478, !dbg !2187

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
  br i1 %112, label %490, label %512, !dbg !2189

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2190

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
  %501 = lshr i8 %494, 5, !dbg !2191
  %502 = zext i8 %501 to i64, !dbg !2191
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2192
  %504 = load i32, i32* %503, align 4, !dbg !2192, !tbaa !751
  %505 = and i8 %494, 31, !dbg !2193
  %506 = zext i8 %505 to i32, !dbg !2193
  %507 = shl i32 1, %506, !dbg !2194
  %508 = and i32 %504, %507, !dbg !2194
  %509 = icmp eq i32 %508, 0, !dbg !2194
  %510 = icmp eq i8 %155, 0, !dbg !2195
  %511 = and i1 %510, %509, !dbg !2196
  br i1 %511, label %562, label %524, !dbg !2196

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
  %523 = icmp eq i8 %155, 0, !dbg !2195
  br i1 %523, label %562, label %524, !dbg !2197

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2198
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1879
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1821
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2186
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1828
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1829
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2199
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1904
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %532, metadata !1774, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %531, metadata !1767, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %530, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %529, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %528, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %527, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %526, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %525, metadata !1756, metadata !DIExpression()), !dbg !1880
  br i1 %110, label %534, label %661, !dbg !2202

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1773, metadata !DIExpression()), !dbg !1890
  %535 = and i8 %529, 1, !dbg !2204
  %536 = icmp eq i8 %535, 0, !dbg !2204
  %537 = and i1 %114, %536, !dbg !2204
  br i1 %537, label %538, label %554, !dbg !2204

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2206
  br i1 %539, label %540, label %542, !dbg !2210

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2206
  store i8 39, i8* %541, align 1, !dbg !2206, !tbaa !831
  br label %542, !dbg !2206

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %543, metadata !1757, metadata !DIExpression()), !dbg !1820
  %544 = icmp ult i64 %543, %533, !dbg !2211
  br i1 %544, label %545, label %547, !dbg !2214

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2211
  store i8 36, i8* %546, align 1, !dbg !2211, !tbaa !831
  br label %547, !dbg !2211

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %548, metadata !1757, metadata !DIExpression()), !dbg !1820
  %549 = icmp ult i64 %548, %533, !dbg !2215
  br i1 %549, label %550, label %552, !dbg !2218

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2215
  store i8 39, i8* %551, align 1, !dbg !2215, !tbaa !831
  br label %552, !dbg !2215

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %553, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 1, metadata !1764, metadata !DIExpression()), !dbg !1828
  br label %554, !dbg !2219

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2176
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1879
  call void @llvm.dbg.value(metadata i8 %556, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %555, metadata !1757, metadata !DIExpression()), !dbg !1820
  %557 = icmp ult i64 %555, %533, !dbg !2220
  br i1 %557, label %558, label %560, !dbg !2223

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2220
  store i8 92, i8* %559, align 1, !dbg !2220, !tbaa !831
  br label %560, !dbg !2220

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %561, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %572, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %571, metadata !1774, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %570, metadata !1773, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %569, metadata !1767, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %568, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %567, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %566, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %565, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %564, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %563, metadata !1756, metadata !DIExpression()), !dbg !1880
  br label %589, !dbg !2224

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2198
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1879
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1821
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2186
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1828
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1829
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2227
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1904
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1904
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %571, metadata !1774, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %570, metadata !1773, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %569, metadata !1767, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %568, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %567, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %566, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %565, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %564, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %563, metadata !1756, metadata !DIExpression()), !dbg !1880
  %573 = and i8 %567, 1, !dbg !2224
  %574 = icmp ne i8 %573, 0, !dbg !2224
  %575 = and i8 %570, 1, !dbg !2224
  %576 = icmp eq i8 %575, 0, !dbg !2224
  %577 = and i1 %574, %576, !dbg !2224
  br i1 %577, label %578, label %589, !dbg !2224

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2228
  br i1 %579, label %580, label %582, !dbg !2232

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2228
  store i8 39, i8* %581, align 1, !dbg !2228, !tbaa !831
  br label %582, !dbg !2228

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %583, metadata !1757, metadata !DIExpression()), !dbg !1820
  %584 = icmp ult i64 %583, %572, !dbg !2233
  br i1 %584, label %585, label %587, !dbg !2236

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2233
  store i8 39, i8* %586, align 1, !dbg !2233, !tbaa !831
  br label %587, !dbg !2233

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %588, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1828
  br label %589, !dbg !2237

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2176
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1879
  call void @llvm.dbg.value(metadata i8 %598, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %597, metadata !1757, metadata !DIExpression()), !dbg !1820
  %599 = icmp ult i64 %597, %590, !dbg !2238
  br i1 %599, label %600, label %602, !dbg !2241

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2238
  store i8 %592, i8* %601, align 1, !dbg !2238, !tbaa !831
  br label %602, !dbg !2238

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %603, metadata !1757, metadata !DIExpression()), !dbg !1820
  %604 = and i8 %591, 1, !dbg !2242
  %605 = icmp eq i8 %604, 0, !dbg !2242
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2244
  call void @llvm.dbg.value(metadata i8 %606, metadata !1766, metadata !DIExpression()), !dbg !1830
  br label %607, !dbg !2245

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2198
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1879
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1821
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2186
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1828
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1879
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1830
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %614, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %613, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %612, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %611, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %610, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %609, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %608, metadata !1756, metadata !DIExpression()), !dbg !1880
  %616 = add i64 %608, 1, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %616, metadata !1756, metadata !DIExpression()), !dbg !1880
  br label %121, !dbg !2247, !llvm.loop !2248

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %618, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %618, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %125, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %125, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %126, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %127, metadata !1765, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %128, metadata !1766, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  %619 = icmp eq i64 %123, 0, !dbg !2250
  %620 = and i1 %114, %619, !dbg !2252
  %621 = xor i1 %620, true, !dbg !2252
  %622 = or i1 %110, %621, !dbg !2252
  br i1 %622, label %623, label %661, !dbg !2252

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2253
  %625 = xor i1 %624, true, !dbg !2253
  %626 = and i8 %127, 1, !dbg !2255
  %627 = icmp eq i8 %626, 0, !dbg !2255
  %628 = or i1 %627, %625, !dbg !2253
  br i1 %628, label %638, label %629, !dbg !2253

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2256
  %631 = icmp eq i8 %630, 0, !dbg !2256
  br i1 %631, label %634, label %632, !dbg !2259

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %618, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %618, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %618, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %618, metadata !1750, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* %95, metadata !1754, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, metadata !1755, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %125, metadata !1750, metadata !DIExpression()), !dbg !1814
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2260
  br label %671, !dbg !2261

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2262
  %636 = icmp ne i64 %124, 0, !dbg !2264
  %637 = and i1 %636, %635, !dbg !2265
  br i1 %637, label %27, label %638, !dbg !2265

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1812
  %639 = icmp ne i8* %98, null, !dbg !2266
  %640 = and i1 %639, %110, !dbg !2268
  br i1 %640, label %641, label %656, !dbg !2268

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1820
  %642 = load i8, i8* %98, align 1, !dbg !2269, !tbaa !831
  %643 = icmp eq i8 %642, 0, !dbg !2272
  br i1 %643, label %656, label %644, !dbg !2272

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %647, metadata !1757, metadata !DIExpression()), !dbg !1820
  %648 = icmp ult i64 %647, %129, !dbg !2273
  br i1 %648, label %649, label %651, !dbg !2276

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2273
  store i8 %645, i8* %650, align 1, !dbg !2273, !tbaa !831
  br label %651, !dbg !2273

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2276
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2277
  call void @llvm.dbg.value(metadata i8* %653, metadata !1759, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %652, metadata !1757, metadata !DIExpression()), !dbg !1820
  %654 = load i8, i8* %653, align 1, !dbg !2269, !tbaa !831
  %655 = icmp eq i8 %654, 0, !dbg !2272
  br i1 %655, label %656, label %644, !dbg !2272, !llvm.loop !2278

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1820
  call void @llvm.dbg.value(metadata i64 %657, metadata !1757, metadata !DIExpression()), !dbg !1820
  %658 = icmp ult i64 %657, %129, !dbg !2280
  br i1 %658, label %659, label %671, !dbg !2282

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2283
  store i8 0, i8* %660, align 1, !dbg !2284, !tbaa !831
  br label %671, !dbg !2283

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1748, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %663, metadata !1750, metadata !DIExpression()), !dbg !1814
  %665 = icmp ne i32 %662, 2, !dbg !2285
  %666 = icmp eq i8 %102, 0, !dbg !2287
  %667 = or i1 %665, %666, !dbg !2288
  call void @llvm.dbg.value(metadata i32 4, metadata !1751, metadata !DIExpression()), !dbg !1815
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %668, metadata !1751, metadata !DIExpression()), !dbg !1815
  %669 = and i32 %5, -3, !dbg !2289
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2290
  br label %671, !dbg !2291

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2292
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2293 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2297, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %1, metadata !2298, metadata !DIExpression()), !dbg !2302
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2303
  call void @llvm.dbg.value(metadata i8* %3, metadata !2299, metadata !DIExpression()), !dbg !2304
  %4 = icmp eq i8* %3, %0, !dbg !2305
  br i1 %4, label %5, label %71, !dbg !2307

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2308
  call void @llvm.dbg.value(metadata i8* %6, metadata !2300, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %6, metadata !2310, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8* null, metadata !2316, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 85, metadata !2317, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 84, metadata !2318, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8 70, metadata !2319, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8 45, metadata !2320, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i8 56, metadata !2321, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 0, metadata !2322, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8 0, metadata !2323, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8 0, metadata !2324, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2338
  %7 = load i8, i8* %6, align 1, !dbg !2339, !tbaa !831
  %8 = and i8 %7, -33, !dbg !2339
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2339

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2341, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8* null, metadata !2346, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 84, metadata !2347, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 70, metadata !2348, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 45, metadata !2349, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 56, metadata !2350, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2351, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2352, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 0, metadata !2353, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8 0, metadata !2354, metadata !DIExpression()), !dbg !2367
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2368
  %11 = load i8, i8* %10, align 1, !dbg !2368, !tbaa !831
  %12 = and i8 %11, -33, !dbg !2368
  %13 = icmp eq i8 %12, 84, !dbg !2368
  br i1 %13, label %14, label %68, !dbg !2368

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2370, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* null, metadata !2375, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 70, metadata !2376, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 45, metadata !2377, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8 56, metadata !2378, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8 0, metadata !2382, metadata !DIExpression()), !dbg !2394
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2395
  %16 = load i8, i8* %15, align 1, !dbg !2395, !tbaa !831
  %17 = and i8 %16, -33, !dbg !2395
  %18 = icmp eq i8 %17, 70, !dbg !2395
  br i1 %18, label %19, label %68, !dbg !2395

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2397, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8* null, metadata !2402, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 45, metadata !2403, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 56, metadata !2404, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8 0, metadata !2405, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 0, metadata !2406, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2419
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2420
  %21 = load i8, i8* %20, align 1, !dbg !2420, !tbaa !831
  %22 = icmp eq i8 %21, 45, !dbg !2420
  br i1 %22, label %23, label %68, !dbg !2422

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2423, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8* null, metadata !2428, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i8 56, metadata !2429, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 0, metadata !2431, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2443
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2444
  %25 = load i8, i8* %24, align 1, !dbg !2444, !tbaa !831
  %26 = icmp eq i8 %25, 56, !dbg !2444
  br i1 %26, label %27, label %68, !dbg !2446

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2447, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8* null, metadata !2452, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 0, metadata !2453, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 0, metadata !2454, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2455, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i8 0, metadata !2456, metadata !DIExpression()), !dbg !2465
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2466
  %29 = load i8, i8* %28, align 1, !dbg !2466, !tbaa !831
  %30 = icmp eq i8 %29, 0, !dbg !2466
  br i1 %30, label %31, label %68, !dbg !2468

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2469, !tbaa !831
  %33 = icmp eq i8 %32, 96, !dbg !2470
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.104, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.105, i64 0, i64 0), !dbg !2469
  br label %71, !dbg !2471

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2341, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8* null, metadata !2346, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 66, metadata !2347, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 49, metadata !2348, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 56, metadata !2349, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 48, metadata !2350, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8 51, metadata !2351, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 48, metadata !2352, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 0, metadata !2353, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 0, metadata !2354, metadata !DIExpression()), !dbg !2484
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2485
  %37 = load i8, i8* %36, align 1, !dbg !2485, !tbaa !831
  %38 = and i8 %37, -33, !dbg !2485
  %39 = icmp eq i8 %38, 66, !dbg !2485
  br i1 %39, label %40, label %68, !dbg !2485

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2370, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8* null, metadata !2375, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8 49, metadata !2376, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 56, metadata !2377, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 48, metadata !2378, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8 51, metadata !2379, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 48, metadata !2380, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8 0, metadata !2382, metadata !DIExpression()), !dbg !2495
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2496
  %42 = load i8, i8* %41, align 1, !dbg !2496, !tbaa !831
  %43 = icmp eq i8 %42, 49, !dbg !2496
  br i1 %43, label %44, label %68, !dbg !2497

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2397, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8* null, metadata !2402, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 56, metadata !2403, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8 48, metadata !2404, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 51, metadata !2405, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8 48, metadata !2406, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2506
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2507
  %46 = load i8, i8* %45, align 1, !dbg !2507, !tbaa !831
  %47 = icmp eq i8 %46, 56, !dbg !2507
  br i1 %47, label %48, label %68, !dbg !2508

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2423, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8* null, metadata !2428, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 48, metadata !2429, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 51, metadata !2430, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8 48, metadata !2431, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2516
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2517
  %50 = load i8, i8* %49, align 1, !dbg !2517, !tbaa !831
  %51 = icmp eq i8 %50, 48, !dbg !2517
  br i1 %51, label %52, label %68, !dbg !2518

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2447, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8* null, metadata !2452, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 51, metadata !2453, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 48, metadata !2454, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i8 0, metadata !2455, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 0, metadata !2456, metadata !DIExpression()), !dbg !2525
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2526
  %54 = load i8, i8* %53, align 1, !dbg !2526, !tbaa !831
  %55 = icmp eq i8 %54, 51, !dbg !2526
  br i1 %55, label %56, label %68, !dbg !2527

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2528, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8* null, metadata !2533, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 48, metadata !2534, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2544
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2545
  %58 = load i8, i8* %57, align 1, !dbg !2545, !tbaa !831
  %59 = icmp eq i8 %58, 48, !dbg !2545
  br i1 %59, label %60, label %68, !dbg !2547

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2548, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* null, metadata !2553, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 0, metadata !2554, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2562
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2563
  %62 = load i8, i8* %61, align 1, !dbg !2563, !tbaa !831
  %63 = icmp eq i8 %62, 0, !dbg !2563
  br i1 %63, label %64, label %68, !dbg !2565

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2566, !tbaa !831
  %66 = icmp eq i8 %65, 96, !dbg !2567
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.106, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.107, i64 0, i64 0), !dbg !2566
  br label %71, !dbg !2568

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2569
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.103, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.102, i64 0, i64 0), !dbg !2570
  br label %71, !dbg !2571

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2572
  ret i8* %72, !dbg !2573
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2574 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2578, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %1, metadata !2579, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2580, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %0, metadata !2584, metadata !DIExpression()) #12, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %1, metadata !2589, metadata !DIExpression()) #12, !dbg !2599
  call void @llvm.dbg.value(metadata i64* null, metadata !2590, metadata !DIExpression()) #12, !dbg !2600
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2591, metadata !DIExpression()) #12, !dbg !2601
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2602
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2602
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2592, metadata !DIExpression()) #12, !dbg !2603
  %6 = tail call i32* @__errno_location() #17, !dbg !2604
  %7 = load i32, i32* %6, align 4, !dbg !2604, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %7, metadata !2593, metadata !DIExpression()) #12, !dbg !2605
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2606
  %9 = load i32, i32* %8, align 4, !dbg !2606, !tbaa !1680
  %10 = or i32 %9, 1, !dbg !2607
  call void @llvm.dbg.value(metadata i32 %10, metadata !2594, metadata !DIExpression()) #12, !dbg !2608
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2609
  %12 = load i32, i32* %11, align 8, !dbg !2609, !tbaa !1620
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2610
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2611
  %15 = load i8*, i8** %14, align 8, !dbg !2611, !tbaa !1706
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2612
  %17 = load i8*, i8** %16, align 8, !dbg !2612, !tbaa !1709
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2613
  %19 = add i64 %18, 1, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %19, metadata !2595, metadata !DIExpression()) #12, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %19, metadata !2616, metadata !DIExpression()) #12, !dbg !2621
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2623
  call void @llvm.dbg.value(metadata i8* %20, metadata !2596, metadata !DIExpression()) #12, !dbg !2624
  %21 = load i32, i32* %11, align 8, !dbg !2625, !tbaa !1620
  %22 = load i8*, i8** %14, align 8, !dbg !2626, !tbaa !1706
  %23 = load i8*, i8** %16, align 8, !dbg !2627, !tbaa !1709
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2628
  store i32 %7, i32* %6, align 4, !dbg !2629, !tbaa !751
  ret i8* %20, !dbg !2630
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2585 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2584, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i64 %1, metadata !2589, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64* %2, metadata !2590, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2591, metadata !DIExpression()), !dbg !2634
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2635
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2635
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2592, metadata !DIExpression()), !dbg !2636
  %7 = tail call i32* @__errno_location() #17, !dbg !2637
  %8 = load i32, i32* %7, align 4, !dbg !2637, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %8, metadata !2593, metadata !DIExpression()), !dbg !2638
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2639
  %10 = load i32, i32* %9, align 4, !dbg !2639, !tbaa !1680
  %11 = icmp ne i64* %2, null, !dbg !2640
  %12 = xor i1 %11, true, !dbg !2640
  %13 = zext i1 %12 to i32, !dbg !2640
  %14 = or i32 %10, %13, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %14, metadata !2594, metadata !DIExpression()), !dbg !2642
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2643
  %16 = load i32, i32* %15, align 8, !dbg !2643, !tbaa !1620
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2644
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2645
  %19 = load i8*, i8** %18, align 8, !dbg !2645, !tbaa !1706
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2646
  %21 = load i8*, i8** %20, align 8, !dbg !2646, !tbaa !1709
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2647
  %23 = add i64 %22, 1, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %23, metadata !2595, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 %23, metadata !2616, metadata !DIExpression()) #12, !dbg !2650
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %24, metadata !2596, metadata !DIExpression()), !dbg !2653
  %25 = load i32, i32* %15, align 8, !dbg !2654, !tbaa !1620
  %26 = load i8*, i8** %18, align 8, !dbg !2655, !tbaa !1706
  %27 = load i8*, i8** %20, align 8, !dbg !2656, !tbaa !1709
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2657
  store i32 %8, i32* %7, align 4, !dbg !2658, !tbaa !751
  br i1 %11, label %29, label %30, !dbg !2659

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2660, !tbaa !769
  br label %30, !dbg !2662

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2663
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2664 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2668, !tbaa !682
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2666, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i32 1, metadata !2667, metadata !DIExpression()), !dbg !2670
  %2 = load i32, i32* @nslots, align 4, !dbg !2671, !tbaa !751
  %3 = icmp sgt i32 %2, 1, !dbg !2674
  br i1 %3, label %4, label %12, !dbg !2675

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2667, metadata !DIExpression()), !dbg !2670
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2676
  %7 = load i8*, i8** %6, align 8, !dbg !2676, !tbaa !2677
  tail call void @free(i8* %7) #12, !dbg !2679
  %8 = add nuw nsw i64 %5, 1, !dbg !2680
  call void @llvm.dbg.value(metadata i32 undef, metadata !2667, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2670
  %9 = load i32, i32* @nslots, align 4, !dbg !2671, !tbaa !751
  %10 = sext i32 %9 to i64, !dbg !2674
  %11 = icmp slt i64 %8, %10, !dbg !2674
  br i1 %11, label %4, label %12, !dbg !2675, !llvm.loop !2681

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2683
  %14 = load i8*, i8** %13, align 8, !dbg !2683, !tbaa !2677
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2685
  br i1 %15, label %17, label %16, !dbg !2686

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2687
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2689, !tbaa !2690
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2691, !tbaa !2677
  br label %17, !dbg !2692

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2693
  br i1 %18, label %21, label %19, !dbg !2695

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2696
  tail call void @free(i8* %20) #12, !dbg !2698
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2699, !tbaa !682
  br label %21, !dbg !2700

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2701, !tbaa !751
  ret void, !dbg !2702
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2707, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8* %1, metadata !2708, metadata !DIExpression()), !dbg !2710
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2711
  ret i8* %3, !dbg !2712
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2713 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2717, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8* %1, metadata !2718, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %2, metadata !2719, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2720, metadata !DIExpression()), !dbg !2735
  %5 = tail call i32* @__errno_location() #17, !dbg !2736
  %6 = load i32, i32* %5, align 4, !dbg !2736, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %6, metadata !2721, metadata !DIExpression()), !dbg !2737
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2738, !tbaa !682
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2722, metadata !DIExpression()), !dbg !2739
  %8 = icmp slt i32 %0, 0, !dbg !2740
  br i1 %8, label %9, label %10, !dbg !2742

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !2743
  unreachable, !dbg !2743

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2744, !tbaa !751
  %12 = icmp sgt i32 %11, %0, !dbg !2745
  br i1 %12, label %34, label %13, !dbg !2746

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2747
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2726, metadata !DIExpression()), !dbg !2748
  %15 = icmp eq i32 %0, 2147483647, !dbg !2749
  br i1 %15, label %16, label %17, !dbg !2751

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !2752
  unreachable, !dbg !2752

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2753
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2753
  %20 = add nsw i32 %0, 1, !dbg !2754
  %21 = sext i32 %20 to i64, !dbg !2755
  %22 = shl nsw i64 %21, 4, !dbg !2756
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2757
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2757
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2722, metadata !DIExpression()), !dbg !2739
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2758, !tbaa !682
  br i1 %14, label %25, label %26, !dbg !2759

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2760, !tbaa.struct !2762
  br label %26, !dbg !2763

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2764, !tbaa !751
  %28 = sext i32 %27 to i64, !dbg !2765
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2765
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2766
  %31 = sub nsw i32 %20, %27, !dbg !2767
  %32 = sext i32 %31 to i64, !dbg !2768
  %33 = shl nsw i64 %32, 4, !dbg !2769
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2766
  store i32 %20, i32* @nslots, align 4, !dbg !2770, !tbaa !751
  br label %34, !dbg !2771

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2772
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2722, metadata !DIExpression()), !dbg !2739
  %36 = sext i32 %0 to i64, !dbg !2773
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2774
  %38 = load i64, i64* %37, align 8, !dbg !2774, !tbaa !2690
  call void @llvm.dbg.value(metadata i64 %38, metadata !2727, metadata !DIExpression()), !dbg !2775
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2776
  %40 = load i8*, i8** %39, align 8, !dbg !2776, !tbaa !2677
  call void @llvm.dbg.value(metadata i8* %40, metadata !2729, metadata !DIExpression()), !dbg !2777
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2778
  %42 = load i32, i32* %41, align 4, !dbg !2778, !tbaa !1680
  %43 = or i32 %42, 1, !dbg !2779
  call void @llvm.dbg.value(metadata i32 %43, metadata !2730, metadata !DIExpression()), !dbg !2780
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2781
  %45 = load i32, i32* %44, align 8, !dbg !2781, !tbaa !1620
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2782
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2783
  %48 = load i8*, i8** %47, align 8, !dbg !2783, !tbaa !1706
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2784
  %50 = load i8*, i8** %49, align 8, !dbg !2784, !tbaa !1709
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2785
  call void @llvm.dbg.value(metadata i64 %51, metadata !2731, metadata !DIExpression()), !dbg !2786
  %52 = icmp ugt i64 %38, %51, !dbg !2787
  br i1 %52, label %63, label %53, !dbg !2789

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %54, metadata !2727, metadata !DIExpression()), !dbg !2775
  store i64 %54, i64* %37, align 8, !dbg !2792, !tbaa !2690
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2793
  br i1 %55, label %57, label %56, !dbg !2795

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2796
  br label %57, !dbg !2796

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2616, metadata !DIExpression()) #12, !dbg !2797
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2799
  call void @llvm.dbg.value(metadata i8* %58, metadata !2729, metadata !DIExpression()), !dbg !2777
  store i8* %58, i8** %39, align 8, !dbg !2800, !tbaa !2677
  %59 = load i32, i32* %44, align 8, !dbg !2801, !tbaa !1620
  %60 = load i8*, i8** %47, align 8, !dbg !2802, !tbaa !1706
  %61 = load i8*, i8** %49, align 8, !dbg !2803, !tbaa !1709
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2804
  br label %63, !dbg !2805

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2806
  call void @llvm.dbg.value(metadata i8* %64, metadata !2729, metadata !DIExpression()), !dbg !2777
  store i32 %6, i32* %5, align 4, !dbg !2807, !tbaa !751
  ret i8* %64, !dbg !2808
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2809 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2813, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8* %1, metadata !2814, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i64 %2, metadata !2815, metadata !DIExpression()), !dbg !2818
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2819
  ret i8* %4, !dbg !2820
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2821 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2823, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()) #12, !dbg !2825
  call void @llvm.dbg.value(metadata i8* %0, metadata !2708, metadata !DIExpression()) #12, !dbg !2827
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2828
  ret i8* %2, !dbg !2829
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2830 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2834, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %1, metadata !2835, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i32 0, metadata !2813, metadata !DIExpression()) #12, !dbg !2838
  call void @llvm.dbg.value(metadata i8* %0, metadata !2814, metadata !DIExpression()) #12, !dbg !2840
  call void @llvm.dbg.value(metadata i64 %1, metadata !2815, metadata !DIExpression()) #12, !dbg !2841
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2842
  ret i8* %3, !dbg !2843
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2844 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2848, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i32 %1, metadata !2849, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8* %2, metadata !2850, metadata !DIExpression()), !dbg !2854
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2855
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2855
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2851, metadata !DIExpression(DW_OP_deref)), !dbg !2856
  call void @llvm.dbg.value(metadata i32 %1, metadata !2857, metadata !DIExpression()) #12, !dbg !2863
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2865, !alias.scope !2866
  %6 = icmp eq i32 %1, 10, !dbg !2869
  br i1 %6, label %7, label %8, !dbg !2871

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2872, !noalias !2866
  unreachable, !dbg !2872

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2873
  store i32 %1, i32* %9, align 8, !dbg !2874, !tbaa !1620, !alias.scope !2866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2851, metadata !DIExpression(DW_OP_deref)), !dbg !2856
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2862, metadata !DIExpression(DW_OP_deref)), !dbg !2865
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2875
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2876
  ret i8* %10, !dbg !2877
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2878 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2882, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i32 %1, metadata !2883, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %2, metadata !2884, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %3, metadata !2885, metadata !DIExpression()), !dbg !2890
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2891
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2891
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2886, metadata !DIExpression(DW_OP_deref)), !dbg !2892
  call void @llvm.dbg.value(metadata i32 %1, metadata !2857, metadata !DIExpression()) #12, !dbg !2893
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !2895, !alias.scope !2896
  %7 = icmp eq i32 %1, 10, !dbg !2899
  br i1 %7, label %8, label %9, !dbg !2900

; <label>:8:                                      ; preds = %4
  tail call void @abort() #16, !dbg !2901, !noalias !2896
  unreachable, !dbg !2901

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2902
  store i32 %1, i32* %10, align 8, !dbg !2903, !tbaa !1620, !alias.scope !2896
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2886, metadata !DIExpression(DW_OP_deref)), !dbg !2892
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2862, metadata !DIExpression(DW_OP_deref)), !dbg !2895
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2904
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2905
  ret i8* %11, !dbg !2906
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2907 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2911, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8* %1, metadata !2912, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 0, metadata !2848, metadata !DIExpression()) #12, !dbg !2915
  call void @llvm.dbg.value(metadata i32 %0, metadata !2849, metadata !DIExpression()) #12, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %1, metadata !2850, metadata !DIExpression()) #12, !dbg !2918
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2919
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2919
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2851, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2920
  call void @llvm.dbg.value(metadata i32 %0, metadata !2857, metadata !DIExpression()) #12, !dbg !2921
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !2923, !alias.scope !2924
  %5 = icmp eq i32 %0, 10, !dbg !2927
  br i1 %5, label %6, label %7, !dbg !2928

; <label>:6:                                      ; preds = %2
  tail call void @abort() #16, !dbg !2929, !noalias !2924
  unreachable, !dbg !2929

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2930
  store i32 %0, i32* %8, align 8, !dbg !2931, !tbaa !1620, !alias.scope !2924
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2851, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2920
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2862, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2923
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2932
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2933
  ret i8* %9, !dbg !2934
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2935 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2939, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8* %1, metadata !2940, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %2, metadata !2941, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i32 0, metadata !2882, metadata !DIExpression()) #12, !dbg !2945
  call void @llvm.dbg.value(metadata i32 %0, metadata !2883, metadata !DIExpression()) #12, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %1, metadata !2884, metadata !DIExpression()) #12, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %2, metadata !2885, metadata !DIExpression()) #12, !dbg !2949
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2950
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2950
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2886, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2951
  call void @llvm.dbg.value(metadata i32 %0, metadata !2857, metadata !DIExpression()) #12, !dbg !2952
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2954, !alias.scope !2955
  %6 = icmp eq i32 %0, 10, !dbg !2958
  br i1 %6, label %7, label %8, !dbg !2959

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2960, !noalias !2955
  unreachable, !dbg !2960

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2961
  store i32 %0, i32* %9, align 8, !dbg !2962, !tbaa !1620, !alias.scope !2955
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2886, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2951
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2862, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2954
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2963
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2964
  ret i8* %10, !dbg !2965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2966 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2970, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %1, metadata !2971, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 %2, metadata !2972, metadata !DIExpression()), !dbg !2976
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2977
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2977
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2978, !tbaa.struct !2979
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2973, metadata !DIExpression(DW_OP_deref)), !dbg !2980
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1639, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %2, metadata !1640, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 1, metadata !1641, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %2, metadata !1642, metadata !DIExpression()), !dbg !2985
  %6 = lshr i8 %2, 5, !dbg !2986
  %7 = zext i8 %6 to i64, !dbg !2986
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2987
  call void @llvm.dbg.value(metadata i32* %8, metadata !1644, metadata !DIExpression()), !dbg !2988
  %9 = and i8 %2, 31, !dbg !2989
  %10 = zext i8 %9 to i32, !dbg !2989
  call void @llvm.dbg.value(metadata i32 %10, metadata !1646, metadata !DIExpression()), !dbg !2990
  %11 = load i32, i32* %8, align 4, !dbg !2991, !tbaa !751
  %12 = lshr i32 %11, %10, !dbg !2992
  %13 = and i32 %12, 1, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %13, metadata !1647, metadata !DIExpression()), !dbg !2994
  %14 = xor i32 %13, 1, !dbg !2995
  %15 = shl i32 %14, %10, !dbg !2996
  %16 = xor i32 %15, %11, !dbg !2997
  store i32 %16, i32* %8, align 4, !dbg !2997, !tbaa !751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2973, metadata !DIExpression(DW_OP_deref)), !dbg !2980
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2998
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2999
  ret i8* %17, !dbg !3000
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3001 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i8 %1, metadata !3006, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i8* %0, metadata !2970, metadata !DIExpression()) #12, !dbg !3009
  call void @llvm.dbg.value(metadata i64 -1, metadata !2971, metadata !DIExpression()) #12, !dbg !3011
  call void @llvm.dbg.value(metadata i8 %1, metadata !2972, metadata !DIExpression()) #12, !dbg !3012
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3013
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3013
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3014, !tbaa.struct !2979
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2973, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1639, metadata !DIExpression()) #12, !dbg !3016
  call void @llvm.dbg.value(metadata i8 %1, metadata !1640, metadata !DIExpression()) #12, !dbg !3018
  call void @llvm.dbg.value(metadata i32 1, metadata !1641, metadata !DIExpression()) #12, !dbg !3019
  call void @llvm.dbg.value(metadata i8 %1, metadata !1642, metadata !DIExpression()) #12, !dbg !3020
  %5 = lshr i8 %1, 5, !dbg !3021
  %6 = zext i8 %5 to i64, !dbg !3021
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3022
  call void @llvm.dbg.value(metadata i32* %7, metadata !1644, metadata !DIExpression()) #12, !dbg !3023
  %8 = and i8 %1, 31, !dbg !3024
  %9 = zext i8 %8 to i32, !dbg !3024
  call void @llvm.dbg.value(metadata i32 %9, metadata !1646, metadata !DIExpression()) #12, !dbg !3025
  %10 = load i32, i32* %7, align 4, !dbg !3026, !tbaa !751
  %11 = lshr i32 %10, %9, !dbg !3027
  %12 = and i32 %11, 1, !dbg !3028
  call void @llvm.dbg.value(metadata i32 %12, metadata !1647, metadata !DIExpression()) #12, !dbg !3029
  %13 = xor i32 %12, 1, !dbg !3030
  %14 = shl i32 %13, %9, !dbg !3031
  %15 = xor i32 %14, %10, !dbg !3032
  store i32 %15, i32* %7, align 4, !dbg !3032, !tbaa !751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2973, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3015
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3033
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3034
  ret i8* %16, !dbg !3035
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3036 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3038, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()) #12, !dbg !3040
  call void @llvm.dbg.value(metadata i8 58, metadata !3006, metadata !DIExpression()) #12, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %0, metadata !2970, metadata !DIExpression()) #12, !dbg !3043
  call void @llvm.dbg.value(metadata i64 -1, metadata !2971, metadata !DIExpression()) #12, !dbg !3045
  call void @llvm.dbg.value(metadata i8 58, metadata !2972, metadata !DIExpression()) #12, !dbg !3046
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3047
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3048, !tbaa.struct !2979
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2973, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1639, metadata !DIExpression()) #12, !dbg !3050
  call void @llvm.dbg.value(metadata i8 58, metadata !1640, metadata !DIExpression()) #12, !dbg !3052
  call void @llvm.dbg.value(metadata i32 1, metadata !1641, metadata !DIExpression()) #12, !dbg !3053
  call void @llvm.dbg.value(metadata i8 58, metadata !1642, metadata !DIExpression()) #12, !dbg !3054
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3055
  call void @llvm.dbg.value(metadata i32* %4, metadata !1644, metadata !DIExpression()) #12, !dbg !3056
  call void @llvm.dbg.value(metadata i32 26, metadata !1646, metadata !DIExpression()) #12, !dbg !3057
  %5 = load i32, i32* %4, align 4, !dbg !3058, !tbaa !751
  %6 = or i32 %5, 67108864, !dbg !3059
  store i32 %6, i32* %4, align 4, !dbg !3059, !tbaa !751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2973, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3049
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3060
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3061
  ret i8* %7, !dbg !3062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3063 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3065, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i64 %1, metadata !3066, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8* %0, metadata !2970, metadata !DIExpression()) #12, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %1, metadata !2971, metadata !DIExpression()) #12, !dbg !3071
  call void @llvm.dbg.value(metadata i8 58, metadata !2972, metadata !DIExpression()) #12, !dbg !3072
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3073
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3073
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3074, !tbaa.struct !2979
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2973, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1639, metadata !DIExpression()) #12, !dbg !3076
  call void @llvm.dbg.value(metadata i8 58, metadata !1640, metadata !DIExpression()) #12, !dbg !3078
  call void @llvm.dbg.value(metadata i32 1, metadata !1641, metadata !DIExpression()) #12, !dbg !3079
  call void @llvm.dbg.value(metadata i8 58, metadata !1642, metadata !DIExpression()) #12, !dbg !3080
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3081
  call void @llvm.dbg.value(metadata i32* %5, metadata !1644, metadata !DIExpression()) #12, !dbg !3082
  call void @llvm.dbg.value(metadata i32 26, metadata !1646, metadata !DIExpression()) #12, !dbg !3083
  %6 = load i32, i32* %5, align 4, !dbg !3084, !tbaa !751
  %7 = or i32 %6, 67108864, !dbg !3085
  store i32 %7, i32* %5, align 4, !dbg !3085, !tbaa !751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2973, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3075
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3086
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3087
  ret i8* %8, !dbg !3088
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3089 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2862, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3095
  call void @llvm.dbg.value(metadata i32 %0, metadata !3091, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 %1, metadata !3092, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8* %2, metadata !3093, metadata !DIExpression()), !dbg !3099
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3100
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3100
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3101
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3101
  call void @llvm.dbg.value(metadata i32 %1, metadata !2857, metadata !DIExpression()) #12, !dbg !3102
  call void @llvm.dbg.value(metadata i32 0, metadata !2862, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3095
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3095, !alias.scope !3103
  %8 = icmp eq i32 %1, 10, !dbg !3106
  br i1 %8, label %9, label %10, !dbg !3107

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3108, !noalias !3103
  unreachable, !dbg !3108

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2862, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3095
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3101
  store i32 %1, i32* %11, align 8, !dbg !3101
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3101
  %13 = bitcast i32* %12 to i8*, !dbg !3101
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3101
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3101
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3094, metadata !DIExpression(DW_OP_deref)), !dbg !3109
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1639, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 58, metadata !1640, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i32 1, metadata !1641, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8 58, metadata !1642, metadata !DIExpression()), !dbg !3114
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3115
  call void @llvm.dbg.value(metadata i32* %14, metadata !1644, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i32 26, metadata !1646, metadata !DIExpression()), !dbg !3117
  %15 = load i32, i32* %14, align 4, !dbg !3118, !tbaa !751
  %16 = or i32 %15, 67108864, !dbg !3119
  store i32 %16, i32* %14, align 4, !dbg !3119, !tbaa !751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3094, metadata !DIExpression(DW_OP_deref)), !dbg !3109
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3120
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3121
  ret i8* %17, !dbg !3122
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3123 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3127, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8* %1, metadata !3128, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8* %2, metadata !3129, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8* %3, metadata !3130, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i32 %0, metadata !3135, metadata !DIExpression()) #12, !dbg !3145
  call void @llvm.dbg.value(metadata i8* %1, metadata !3140, metadata !DIExpression()) #12, !dbg !3147
  call void @llvm.dbg.value(metadata i8* %2, metadata !3141, metadata !DIExpression()) #12, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %3, metadata !3142, metadata !DIExpression()) #12, !dbg !3149
  call void @llvm.dbg.value(metadata i64 -1, metadata !3143, metadata !DIExpression()) #12, !dbg !3150
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3151
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3152, !tbaa.struct !2979
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3144, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3153
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1688, metadata !DIExpression()) #12, !dbg !3154
  call void @llvm.dbg.value(metadata i8* %1, metadata !1689, metadata !DIExpression()) #12, !dbg !3156
  call void @llvm.dbg.value(metadata i8* %2, metadata !1690, metadata !DIExpression()) #12, !dbg !3157
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1688, metadata !DIExpression()) #12, !dbg !3154
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3158
  store i32 10, i32* %7, align 8, !dbg !3159, !tbaa !1620
  %8 = icmp ne i8* %1, null, !dbg !3160
  %9 = icmp ne i8* %2, null, !dbg !3161
  %10 = and i1 %8, %9, !dbg !3162
  br i1 %10, label %12, label %11, !dbg !3162

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3163
  unreachable, !dbg !3163

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3164
  store i8* %1, i8** %13, align 8, !dbg !3165, !tbaa !1706
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3166
  store i8* %2, i8** %14, align 8, !dbg !3167, !tbaa !1709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3144, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3153
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3168
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3169
  ret i8* %15, !dbg !3170
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3136 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3135, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i8* %1, metadata !3140, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8* %2, metadata !3141, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i8* %3, metadata !3142, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i64 %4, metadata !3143, metadata !DIExpression()), !dbg !3175
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3176
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3176
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3177, !tbaa.struct !2979
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3144, metadata !DIExpression(DW_OP_deref)), !dbg !3178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1688, metadata !DIExpression()) #12, !dbg !3179
  call void @llvm.dbg.value(metadata i8* %1, metadata !1689, metadata !DIExpression()) #12, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %2, metadata !1690, metadata !DIExpression()) #12, !dbg !3182
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1688, metadata !DIExpression()) #12, !dbg !3179
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3183
  store i32 10, i32* %8, align 8, !dbg !3184, !tbaa !1620
  %9 = icmp ne i8* %1, null, !dbg !3185
  %10 = icmp ne i8* %2, null, !dbg !3186
  %11 = and i1 %9, %10, !dbg !3187
  br i1 %11, label %13, label %12, !dbg !3187

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !3188
  unreachable, !dbg !3188

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3189
  store i8* %1, i8** %14, align 8, !dbg !3190, !tbaa !1706
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3191
  store i8* %2, i8** %15, align 8, !dbg !3192, !tbaa !1709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3144, metadata !DIExpression(DW_OP_deref)), !dbg !3178
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3193
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3194
  ret i8* %16, !dbg !3195
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3196 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3200, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i8* %1, metadata !3201, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %2, metadata !3202, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 0, metadata !3127, metadata !DIExpression()) #12, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %0, metadata !3128, metadata !DIExpression()) #12, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %1, metadata !3129, metadata !DIExpression()) #12, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %2, metadata !3130, metadata !DIExpression()) #12, !dbg !3210
  call void @llvm.dbg.value(metadata i32 0, metadata !3135, metadata !DIExpression()) #12, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %0, metadata !3140, metadata !DIExpression()) #12, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %1, metadata !3141, metadata !DIExpression()) #12, !dbg !3214
  call void @llvm.dbg.value(metadata i8* %2, metadata !3142, metadata !DIExpression()) #12, !dbg !3215
  call void @llvm.dbg.value(metadata i64 -1, metadata !3143, metadata !DIExpression()) #12, !dbg !3216
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3217
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3218, !tbaa.struct !2979
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3144, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1688, metadata !DIExpression()) #12, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %0, metadata !1689, metadata !DIExpression()) #12, !dbg !3222
  call void @llvm.dbg.value(metadata i8* %1, metadata !1690, metadata !DIExpression()) #12, !dbg !3223
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1688, metadata !DIExpression()) #12, !dbg !3220
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3224
  store i32 10, i32* %6, align 8, !dbg !3225, !tbaa !1620
  %7 = icmp ne i8* %0, null, !dbg !3226
  %8 = icmp ne i8* %1, null, !dbg !3227
  %9 = and i1 %7, %8, !dbg !3228
  br i1 %9, label %11, label %10, !dbg !3228

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3229
  unreachable, !dbg !3229

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3230
  store i8* %0, i8** %12, align 8, !dbg !3231, !tbaa !1706
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3232
  store i8* %1, i8** %13, align 8, !dbg !3233, !tbaa !1709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3144, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3219
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3234
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3235
  ret i8* %14, !dbg !3236
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3237 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3241, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8* %1, metadata !3242, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %2, metadata !3243, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %3, metadata !3244, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i32 0, metadata !3135, metadata !DIExpression()) #12, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %0, metadata !3140, metadata !DIExpression()) #12, !dbg !3251
  call void @llvm.dbg.value(metadata i8* %1, metadata !3141, metadata !DIExpression()) #12, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %2, metadata !3142, metadata !DIExpression()) #12, !dbg !3253
  call void @llvm.dbg.value(metadata i64 %3, metadata !3143, metadata !DIExpression()) #12, !dbg !3254
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3255
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3255
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3256, !tbaa.struct !2979
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3144, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3257
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1688, metadata !DIExpression()) #12, !dbg !3258
  call void @llvm.dbg.value(metadata i8* %0, metadata !1689, metadata !DIExpression()) #12, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %1, metadata !1690, metadata !DIExpression()) #12, !dbg !3261
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1688, metadata !DIExpression()) #12, !dbg !3258
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3262
  store i32 10, i32* %7, align 8, !dbg !3263, !tbaa !1620
  %8 = icmp ne i8* %0, null, !dbg !3264
  %9 = icmp ne i8* %1, null, !dbg !3265
  %10 = and i1 %8, %9, !dbg !3266
  br i1 %10, label %12, label %11, !dbg !3266

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3267
  unreachable, !dbg !3267

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3268
  store i8* %0, i8** %13, align 8, !dbg !3269, !tbaa !1706
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3270
  store i8* %1, i8** %14, align 8, !dbg !3271, !tbaa !1709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3144, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3257
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3272
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3273
  ret i8* %15, !dbg !3274
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3275 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3279, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8* %1, metadata !3280, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %2, metadata !3281, metadata !DIExpression()), !dbg !3284
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3285
  ret i8* %4, !dbg !3286
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3287 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3291, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !3292, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i32 0, metadata !3279, metadata !DIExpression()) #12, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %0, metadata !3280, metadata !DIExpression()) #12, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %1, metadata !3281, metadata !DIExpression()) #12, !dbg !3298
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3299
  ret i8* %3, !dbg !3300
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3301 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3305, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8* %1, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32 %0, metadata !3279, metadata !DIExpression()) #12, !dbg !3309
  call void @llvm.dbg.value(metadata i8* %1, metadata !3280, metadata !DIExpression()) #12, !dbg !3311
  call void @llvm.dbg.value(metadata i64 -1, metadata !3281, metadata !DIExpression()) #12, !dbg !3312
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3313
  ret i8* %3, !dbg !3314
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3315 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3317, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32 0, metadata !3305, metadata !DIExpression()) #12, !dbg !3319
  call void @llvm.dbg.value(metadata i8* %0, metadata !3306, metadata !DIExpression()) #12, !dbg !3321
  call void @llvm.dbg.value(metadata i32 0, metadata !3279, metadata !DIExpression()) #12, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %0, metadata !3280, metadata !DIExpression()) #12, !dbg !3324
  call void @llvm.dbg.value(metadata i64 -1, metadata !3281, metadata !DIExpression()) #12, !dbg !3325
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3326
  ret i8* %2, !dbg !3327
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3328 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3385, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8* %1, metadata !3386, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i8* %2, metadata !3387, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %3, metadata !3388, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i8** %4, metadata !3389, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i64 %5, metadata !3390, metadata !DIExpression()), !dbg !3396
  %7 = icmp eq i8* %1, null, !dbg !3397
  br i1 %7, label %10, label %8, !dbg !3399

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3400
  br label %12, !dbg !3400

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.115, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3401
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.116, i64 0, i64 0), i32 5) #12, !dbg !3402
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !3402
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.117, i64 0, i64 0), i32 5) #12, !dbg !3403
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3403
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
  ], !dbg !3404

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !3405
  unreachable, !dbg !3405

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.118, i64 0, i64 0), i32 5) #12, !dbg !3407
  %20 = load i8*, i8** %4, align 8, !dbg !3407, !tbaa !682
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3407
  br label %146, !dbg !3408

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.119, i64 0, i64 0), i32 5) #12, !dbg !3409
  %24 = load i8*, i8** %4, align 8, !dbg !3409, !tbaa !682
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3409
  %26 = load i8*, i8** %25, align 8, !dbg !3409, !tbaa !682
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3409
  br label %146, !dbg !3410

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.120, i64 0, i64 0), i32 5) #12, !dbg !3411
  %30 = load i8*, i8** %4, align 8, !dbg !3411, !tbaa !682
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3411
  %32 = load i8*, i8** %31, align 8, !dbg !3411, !tbaa !682
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3411
  %34 = load i8*, i8** %33, align 8, !dbg !3411, !tbaa !682
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3411
  br label %146, !dbg !3412

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.121, i64 0, i64 0), i32 5) #12, !dbg !3413
  %38 = load i8*, i8** %4, align 8, !dbg !3413, !tbaa !682
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3413
  %40 = load i8*, i8** %39, align 8, !dbg !3413, !tbaa !682
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3413
  %42 = load i8*, i8** %41, align 8, !dbg !3413, !tbaa !682
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3413
  %44 = load i8*, i8** %43, align 8, !dbg !3413, !tbaa !682
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3413
  br label %146, !dbg !3414

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.122, i64 0, i64 0), i32 5) #12, !dbg !3415
  %48 = load i8*, i8** %4, align 8, !dbg !3415, !tbaa !682
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3415
  %50 = load i8*, i8** %49, align 8, !dbg !3415, !tbaa !682
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3415
  %52 = load i8*, i8** %51, align 8, !dbg !3415, !tbaa !682
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3415
  %54 = load i8*, i8** %53, align 8, !dbg !3415, !tbaa !682
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3415
  %56 = load i8*, i8** %55, align 8, !dbg !3415, !tbaa !682
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3415
  br label %146, !dbg !3416

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.123, i64 0, i64 0), i32 5) #12, !dbg !3417
  %60 = load i8*, i8** %4, align 8, !dbg !3417, !tbaa !682
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3417
  %62 = load i8*, i8** %61, align 8, !dbg !3417, !tbaa !682
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3417
  %64 = load i8*, i8** %63, align 8, !dbg !3417, !tbaa !682
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3417
  %66 = load i8*, i8** %65, align 8, !dbg !3417, !tbaa !682
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3417
  %68 = load i8*, i8** %67, align 8, !dbg !3417, !tbaa !682
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3417
  %70 = load i8*, i8** %69, align 8, !dbg !3417, !tbaa !682
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3417
  br label %146, !dbg !3418

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.124, i64 0, i64 0), i32 5) #12, !dbg !3419
  %74 = load i8*, i8** %4, align 8, !dbg !3419, !tbaa !682
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3419
  %76 = load i8*, i8** %75, align 8, !dbg !3419, !tbaa !682
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3419
  %78 = load i8*, i8** %77, align 8, !dbg !3419, !tbaa !682
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3419
  %80 = load i8*, i8** %79, align 8, !dbg !3419, !tbaa !682
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3419
  %82 = load i8*, i8** %81, align 8, !dbg !3419, !tbaa !682
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3419
  %84 = load i8*, i8** %83, align 8, !dbg !3419, !tbaa !682
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3419
  %86 = load i8*, i8** %85, align 8, !dbg !3419, !tbaa !682
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3419
  br label %146, !dbg !3420

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.125, i64 0, i64 0), i32 5) #12, !dbg !3421
  %90 = load i8*, i8** %4, align 8, !dbg !3421, !tbaa !682
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3421
  %92 = load i8*, i8** %91, align 8, !dbg !3421, !tbaa !682
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3421
  %94 = load i8*, i8** %93, align 8, !dbg !3421, !tbaa !682
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3421
  %96 = load i8*, i8** %95, align 8, !dbg !3421, !tbaa !682
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3421
  %98 = load i8*, i8** %97, align 8, !dbg !3421, !tbaa !682
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3421
  %100 = load i8*, i8** %99, align 8, !dbg !3421, !tbaa !682
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3421
  %102 = load i8*, i8** %101, align 8, !dbg !3421, !tbaa !682
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3421
  %104 = load i8*, i8** %103, align 8, !dbg !3421, !tbaa !682
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3421
  br label %146, !dbg !3422

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.126, i64 0, i64 0), i32 5) #12, !dbg !3423
  %108 = load i8*, i8** %4, align 8, !dbg !3423, !tbaa !682
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3423
  %110 = load i8*, i8** %109, align 8, !dbg !3423, !tbaa !682
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3423
  %112 = load i8*, i8** %111, align 8, !dbg !3423, !tbaa !682
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3423
  %114 = load i8*, i8** %113, align 8, !dbg !3423, !tbaa !682
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3423
  %116 = load i8*, i8** %115, align 8, !dbg !3423, !tbaa !682
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3423
  %118 = load i8*, i8** %117, align 8, !dbg !3423, !tbaa !682
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3423
  %120 = load i8*, i8** %119, align 8, !dbg !3423, !tbaa !682
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3423
  %122 = load i8*, i8** %121, align 8, !dbg !3423, !tbaa !682
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3423
  %124 = load i8*, i8** %123, align 8, !dbg !3423, !tbaa !682
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3423
  br label %146, !dbg !3424

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.127, i64 0, i64 0), i32 5) #12, !dbg !3425
  %128 = load i8*, i8** %4, align 8, !dbg !3425, !tbaa !682
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3425
  %130 = load i8*, i8** %129, align 8, !dbg !3425, !tbaa !682
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3425
  %132 = load i8*, i8** %131, align 8, !dbg !3425, !tbaa !682
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3425
  %134 = load i8*, i8** %133, align 8, !dbg !3425, !tbaa !682
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3425
  %136 = load i8*, i8** %135, align 8, !dbg !3425, !tbaa !682
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3425
  %138 = load i8*, i8** %137, align 8, !dbg !3425, !tbaa !682
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3425
  %140 = load i8*, i8** %139, align 8, !dbg !3425, !tbaa !682
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3425
  %142 = load i8*, i8** %141, align 8, !dbg !3425, !tbaa !682
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3425
  %144 = load i8*, i8** %143, align 8, !dbg !3425, !tbaa !682
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3425
  br label %146, !dbg !3426

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3427
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3428 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3432, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8* %1, metadata !3433, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i8* %2, metadata !3434, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8* %3, metadata !3435, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i8** %4, metadata !3436, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 0, metadata !3437, metadata !DIExpression()), !dbg !3443
  br label %6, !dbg !3444

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3446
  call void @llvm.dbg.value(metadata i64 %7, metadata !3437, metadata !DIExpression()), !dbg !3443
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3448
  %9 = load i8*, i8** %8, align 8, !dbg !3448, !tbaa !682
  %10 = icmp eq i8* %9, null, !dbg !3449
  %11 = add i64 %7, 1, !dbg !3450
  call void @llvm.dbg.value(metadata i64 %11, metadata !3437, metadata !DIExpression()), !dbg !3443
  br i1 %10, label %12, label %6, !dbg !3449, !llvm.loop !3451

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3437, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %7, metadata !3437, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %7, metadata !3437, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %7, metadata !3437, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %7, metadata !3437, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %7, metadata !3437, metadata !DIExpression()), !dbg !3443
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3453
  ret void, !dbg !3454
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3455 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3466, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8* %1, metadata !3467, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i8* %2, metadata !3468, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8* %3, metadata !3469, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3470, metadata !DIExpression()), !dbg !3478
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3479
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3479
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3472, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64 0, metadata !3471, metadata !DIExpression()), !dbg !3481
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3471, metadata !DIExpression()), !dbg !3481
  %11 = load i32, i32* %8, align 8, !dbg !3482
  %12 = icmp ult i32 %11, 41, !dbg !3482
  br i1 %12, label %13, label %18, !dbg !3482

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3482
  %15 = sext i32 %11 to i64, !dbg !3482
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3482
  %17 = add i32 %11, 8, !dbg !3482
  store i32 %17, i32* %8, align 8, !dbg !3482
  br label %21, !dbg !3482

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3482
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3482
  store i8* %20, i8** %10, align 8, !dbg !3482
  br label %21, !dbg !3482

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3482
  %25 = load i8*, i8** %24, align 8, !dbg !3482
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3485
  store i8* %25, i8** %26, align 16, !dbg !3486, !tbaa !682
  %27 = icmp eq i8* %25, null, !dbg !3487
  br i1 %27, label %30, label %28, !dbg !3488

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 1, metadata !3471, metadata !DIExpression()), !dbg !3481
  %29 = icmp ult i32 %22, 41, !dbg !3482
  br i1 %29, label %35, label %32, !dbg !3482

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3489
  call void @llvm.dbg.value(metadata i64 %31, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 %31, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3490
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3491
  ret void, !dbg !3491

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3482
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3482
  store i8* %34, i8** %10, align 8, !dbg !3482
  br label %40, !dbg !3482

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3482
  %37 = sext i32 %22 to i64, !dbg !3482
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3482
  %39 = add i32 %22, 8, !dbg !3482
  store i32 %39, i32* %8, align 8, !dbg !3482
  br label %40, !dbg !3482

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3482
  %44 = load i8*, i8** %43, align 8, !dbg !3482
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3485
  store i8* %44, i8** %45, align 8, !dbg !3486, !tbaa !682
  %46 = icmp eq i8* %44, null, !dbg !3487
  br i1 %46, label %30, label %47, !dbg !3488

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 2, metadata !3471, metadata !DIExpression()), !dbg !3481
  %48 = icmp ult i32 %41, 41, !dbg !3482
  br i1 %48, label %52, label %49, !dbg !3482

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3482
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3482
  store i8* %51, i8** %10, align 8, !dbg !3482
  br label %57, !dbg !3482

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3482
  %54 = sext i32 %41 to i64, !dbg !3482
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3482
  %56 = add i32 %41, 8, !dbg !3482
  store i32 %56, i32* %8, align 8, !dbg !3482
  br label %57, !dbg !3482

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3482
  %61 = load i8*, i8** %60, align 8, !dbg !3482
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3485
  store i8* %61, i8** %62, align 16, !dbg !3486, !tbaa !682
  %63 = icmp eq i8* %61, null, !dbg !3487
  br i1 %63, label %30, label %64, !dbg !3488

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 3, metadata !3471, metadata !DIExpression()), !dbg !3481
  %65 = icmp ult i32 %58, 41, !dbg !3482
  br i1 %65, label %69, label %66, !dbg !3482

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3482
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3482
  store i8* %68, i8** %10, align 8, !dbg !3482
  br label %74, !dbg !3482

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3482
  %71 = sext i32 %58 to i64, !dbg !3482
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3482
  %73 = add i32 %58, 8, !dbg !3482
  store i32 %73, i32* %8, align 8, !dbg !3482
  br label %74, !dbg !3482

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3482
  %78 = load i8*, i8** %77, align 8, !dbg !3482
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3485
  store i8* %78, i8** %79, align 8, !dbg !3486, !tbaa !682
  %80 = icmp eq i8* %78, null, !dbg !3487
  br i1 %80, label %30, label %81, !dbg !3488

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 4, metadata !3471, metadata !DIExpression()), !dbg !3481
  %82 = icmp ult i32 %75, 41, !dbg !3482
  br i1 %82, label %86, label %83, !dbg !3482

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3482
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3482
  store i8* %85, i8** %10, align 8, !dbg !3482
  br label %91, !dbg !3482

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3482
  %88 = sext i32 %75 to i64, !dbg !3482
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3482
  %90 = add i32 %75, 8, !dbg !3482
  store i32 %90, i32* %8, align 8, !dbg !3482
  br label %91, !dbg !3482

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3482
  %95 = load i8*, i8** %94, align 8, !dbg !3482
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3485
  store i8* %95, i8** %96, align 16, !dbg !3486, !tbaa !682
  %97 = icmp eq i8* %95, null, !dbg !3487
  br i1 %97, label %30, label %98, !dbg !3488

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 5, metadata !3471, metadata !DIExpression()), !dbg !3481
  %99 = icmp ult i32 %92, 41, !dbg !3482
  br i1 %99, label %103, label %100, !dbg !3482

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3482
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3482
  store i8* %102, i8** %10, align 8, !dbg !3482
  br label %108, !dbg !3482

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3482
  %105 = sext i32 %92 to i64, !dbg !3482
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3482
  %107 = add i32 %92, 8, !dbg !3482
  store i32 %107, i32* %8, align 8, !dbg !3482
  br label %108, !dbg !3482

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3482
  %111 = load i8*, i8** %110, align 8, !dbg !3482
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3485
  store i8* %111, i8** %112, align 8, !dbg !3486, !tbaa !682
  %113 = icmp eq i8* %111, null, !dbg !3487
  br i1 %113, label %30, label %114, !dbg !3488

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 6, metadata !3471, metadata !DIExpression()), !dbg !3481
  %115 = load i8*, i8** %10, align 8, !dbg !3482
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3482
  store i8* %116, i8** %10, align 8, !dbg !3482
  %117 = bitcast i8* %115 to i8**, !dbg !3482
  %118 = load i8*, i8** %117, align 8, !dbg !3482
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3485
  store i8* %118, i8** %119, align 16, !dbg !3486, !tbaa !682
  %120 = icmp eq i8* %118, null, !dbg !3487
  br i1 %120, label %30, label %121, !dbg !3488

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 7, metadata !3471, metadata !DIExpression()), !dbg !3481
  %122 = load i8*, i8** %10, align 8, !dbg !3482
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3482
  store i8* %123, i8** %10, align 8, !dbg !3482
  %124 = bitcast i8* %122 to i8**, !dbg !3482
  %125 = load i8*, i8** %124, align 8, !dbg !3482
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3485
  store i8* %125, i8** %126, align 8, !dbg !3486, !tbaa !682
  %127 = icmp eq i8* %125, null, !dbg !3487
  br i1 %127, label %30, label %128, !dbg !3488

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 8, metadata !3471, metadata !DIExpression()), !dbg !3481
  %129 = load i8*, i8** %10, align 8, !dbg !3482
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3482
  store i8* %130, i8** %10, align 8, !dbg !3482
  %131 = bitcast i8* %129 to i8**, !dbg !3482
  %132 = load i8*, i8** %131, align 8, !dbg !3482
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3485
  store i8* %132, i8** %133, align 16, !dbg !3486, !tbaa !682
  %134 = icmp eq i8* %132, null, !dbg !3487
  br i1 %134, label %30, label %135, !dbg !3488

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 9, metadata !3471, metadata !DIExpression()), !dbg !3481
  %136 = load i8*, i8** %10, align 8, !dbg !3482
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3482
  store i8* %137, i8** %10, align 8, !dbg !3482
  %138 = bitcast i8* %136 to i8**, !dbg !3482
  %139 = load i8*, i8** %138, align 8, !dbg !3482
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3485
  store i8* %139, i8** %140, align 8, !dbg !3486, !tbaa !682
  %141 = icmp eq i8* %139, null, !dbg !3487
  %142 = select i1 %141, i64 9, i64 10, !dbg !3488
  br label %30, !dbg !3488
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3492 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3496, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i8* %1, metadata !3497, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i8* %2, metadata !3498, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i8* %3, metadata !3499, metadata !DIExpression()), !dbg !3510
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3511
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3511
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3500, metadata !DIExpression()), !dbg !3512
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3513
  call void @llvm.va_start(i8* nonnull %6), !dbg !3513
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3514
  call void @llvm.va_end(i8* nonnull %6), !dbg !3515
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3516
  ret void, !dbg !3516
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3517 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.130, i64 0, i64 0), i32 5) #12, !dbg !3518
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.131, i64 0, i64 0)) #12, !dbg !3518
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.132, i64 0, i64 0), i32 5) #12, !dbg !3519
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.133, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.134, i64 0, i64 0)) #12, !dbg !3519
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.135, i64 0, i64 0), i32 5) #12, !dbg !3520
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3520, !tbaa !682
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3520
  ret void, !dbg !3521
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3522 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3526, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i64 %1, metadata !3527, metadata !DIExpression()), !dbg !3529
  %3 = udiv i64 9223372036854775807, %1, !dbg !3530
  %4 = icmp ult i64 %3, %0, !dbg !3530
  br i1 %4, label %5, label %6, !dbg !3532

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3533
  unreachable, !dbg !3533

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3534
  call void @llvm.dbg.value(metadata i64 %7, metadata !3535, metadata !DIExpression()) #12, !dbg !3542
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3544
  call void @llvm.dbg.value(metadata i8* %8, metadata !3541, metadata !DIExpression()) #12, !dbg !3545
  %9 = icmp eq i8* %8, null, !dbg !3546
  %10 = icmp ne i64 %7, 0, !dbg !3548
  %11 = and i1 %10, %9, !dbg !3549
  br i1 %11, label %12, label %13, !dbg !3549

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !3550
  unreachable, !dbg !3550

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3551
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3536 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3535, metadata !DIExpression()), !dbg !3552
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3553
  call void @llvm.dbg.value(metadata i8* %2, metadata !3541, metadata !DIExpression()), !dbg !3554
  %3 = icmp eq i8* %2, null, !dbg !3555
  %4 = icmp ne i64 %0, 0, !dbg !3556
  %5 = and i1 %4, %3, !dbg !3557
  br i1 %5, label %6, label %7, !dbg !3557

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3558
  unreachable, !dbg !3558

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3559
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3560 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3564, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i64 %1, metadata !3565, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %2, metadata !3566, metadata !DIExpression()), !dbg !3569
  %4 = udiv i64 9223372036854775807, %2, !dbg !3570
  %5 = icmp ult i64 %4, %1, !dbg !3570
  br i1 %5, label %6, label %7, !dbg !3572

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !3573
  unreachable, !dbg !3573

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %0, metadata !3575, metadata !DIExpression()) #12, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %8, metadata !3580, metadata !DIExpression()) #12, !dbg !3583
  %9 = icmp eq i64 %8, 0, !dbg !3584
  %10 = icmp ne i8* %0, null, !dbg !3586
  %11 = and i1 %10, %9, !dbg !3587
  br i1 %11, label %12, label %13, !dbg !3587

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3588
  br label %19, !dbg !3590

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3591
  call void @llvm.dbg.value(metadata i8* %14, metadata !3575, metadata !DIExpression()) #12, !dbg !3581
  %15 = icmp eq i8* %14, null, !dbg !3592
  %16 = icmp ne i64 %8, 0, !dbg !3594
  %17 = and i1 %16, %15, !dbg !3595
  br i1 %17, label %18, label %19, !dbg !3595

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3596
  unreachable, !dbg !3596

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3597
  ret i8* %20, !dbg !3598
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3576 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3575, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %1, metadata !3580, metadata !DIExpression()), !dbg !3600
  %3 = icmp eq i64 %1, 0, !dbg !3601
  %4 = icmp ne i8* %0, null, !dbg !3602
  %5 = and i1 %4, %3, !dbg !3603
  br i1 %5, label %6, label %7, !dbg !3603

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3604
  br label %13, !dbg !3605

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3606
  call void @llvm.dbg.value(metadata i8* %8, metadata !3575, metadata !DIExpression()), !dbg !3599
  %9 = icmp eq i8* %8, null, !dbg !3607
  %10 = icmp ne i64 %1, 0, !dbg !3608
  %11 = and i1 %10, %9, !dbg !3609
  br i1 %11, label %12, label %13, !dbg !3609

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3610
  unreachable, !dbg !3610

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3611
  ret i8* %14, !dbg !3612
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !231 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !233, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64* %1, metadata !234, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %2, metadata !235, metadata !DIExpression()), !dbg !3615
  %4 = load i64, i64* %1, align 8, !dbg !3616, !tbaa !769
  call void @llvm.dbg.value(metadata i64 %4, metadata !236, metadata !DIExpression()), !dbg !3617
  %5 = icmp eq i8* %0, null, !dbg !3618
  br i1 %5, label %6, label %20, !dbg !3620

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3621
  br i1 %7, label %8, label %13, !dbg !3624

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3625
  call void @llvm.dbg.value(metadata i64 %9, metadata !236, metadata !DIExpression()), !dbg !3617
  %10 = icmp ugt i64 %2, 128, !dbg !3627
  %11 = zext i1 %10 to i64, !dbg !3627
  %12 = add nuw nsw i64 %9, %11, !dbg !3628
  call void @llvm.dbg.value(metadata i64 %12, metadata !236, metadata !DIExpression()), !dbg !3617
  br label %13, !dbg !3629

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3630
  call void @llvm.dbg.value(metadata i64 %14, metadata !236, metadata !DIExpression()), !dbg !3617
  %15 = udiv i64 9223372036854775807, %2, !dbg !3631
  %16 = icmp ult i64 %15, %14, !dbg !3631
  br i1 %16, label %19, label %17, !dbg !3633

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !236, metadata !DIExpression()), !dbg !3617
  store i64 %14, i64* %1, align 8, !dbg !3634, !tbaa !769
  %18 = mul i64 %14, %2, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %0, metadata !3575, metadata !DIExpression()) #12, !dbg !3636
  call void @llvm.dbg.value(metadata i64 %28, metadata !3580, metadata !DIExpression()) #12, !dbg !3638
  br label %31, !dbg !3639

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3640
  unreachable, !dbg !3640

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3641
  %22 = icmp ugt i64 %21, %4, !dbg !3644
  br i1 %22, label %24, label %23, !dbg !3645

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #16, !dbg !3646
  unreachable, !dbg !3646

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3647
  %26 = add i64 %4, 1, !dbg !3648
  %27 = add i64 %26, %25, !dbg !3649
  call void @llvm.dbg.value(metadata i64 %27, metadata !236, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %27, metadata !236, metadata !DIExpression()), !dbg !3617
  store i64 %27, i64* %1, align 8, !dbg !3634, !tbaa !769
  %28 = mul i64 %27, %2, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %0, metadata !3575, metadata !DIExpression()) #12, !dbg !3636
  call void @llvm.dbg.value(metadata i64 %28, metadata !3580, metadata !DIExpression()) #12, !dbg !3638
  %29 = icmp eq i64 %28, 0, !dbg !3650
  br i1 %29, label %30, label %31, !dbg !3639

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3651
  br label %38, !dbg !3652

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3653
  call void @llvm.dbg.value(metadata i8* %33, metadata !3575, metadata !DIExpression()) #12, !dbg !3636
  %34 = icmp eq i8* %33, null, !dbg !3654
  %35 = icmp ne i64 %32, 0, !dbg !3655
  %36 = and i1 %35, %34, !dbg !3656
  br i1 %36, label %37, label %38, !dbg !3656

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #16, !dbg !3657
  unreachable, !dbg !3657

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3658
  ret i8* %39, !dbg !3659
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !3660 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3662, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %0, metadata !3535, metadata !DIExpression()) #12, !dbg !3664
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3666
  call void @llvm.dbg.value(metadata i8* %2, metadata !3541, metadata !DIExpression()) #12, !dbg !3667
  %3 = icmp eq i8* %2, null, !dbg !3668
  %4 = icmp ne i64 %0, 0, !dbg !3669
  %5 = and i1 %4, %3, !dbg !3670
  br i1 %5, label %6, label %7, !dbg !3670

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3671
  unreachable, !dbg !3671

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3672
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3673 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3677, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64* %1, metadata !3678, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8* %0, metadata !233, metadata !DIExpression()) #12, !dbg !3681
  call void @llvm.dbg.value(metadata i64* %1, metadata !234, metadata !DIExpression()) #12, !dbg !3683
  call void @llvm.dbg.value(metadata i64 1, metadata !235, metadata !DIExpression()) #12, !dbg !3684
  %3 = load i64, i64* %1, align 8, !dbg !3685, !tbaa !769
  call void @llvm.dbg.value(metadata i64 %3, metadata !236, metadata !DIExpression()) #12, !dbg !3686
  %4 = icmp eq i8* %0, null, !dbg !3687
  br i1 %4, label %5, label %12, !dbg !3688

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3689
  br i1 %6, label %9, label %7, !dbg !3690

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !236, metadata !DIExpression()) #12, !dbg !3686
  %8 = icmp slt i64 %3, 0, !dbg !3691
  br i1 %8, label %11, label %9, !dbg !3692

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !236, metadata !DIExpression()) #12, !dbg !3686
  store i64 %10, i64* %1, align 8, !dbg !3693, !tbaa !769
  call void @llvm.dbg.value(metadata i8* %0, metadata !3575, metadata !DIExpression()) #12, !dbg !3694
  call void @llvm.dbg.value(metadata i64 %18, metadata !3580, metadata !DIExpression()) #12, !dbg !3696
  br label %21, !dbg !3697

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3698
  unreachable, !dbg !3698

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3699
  br i1 %13, label %15, label %14, !dbg !3700

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #16, !dbg !3701
  unreachable, !dbg !3701

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3702
  %17 = add i64 %3, 1, !dbg !3703
  %18 = add i64 %17, %16, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %18, metadata !236, metadata !DIExpression()) #12, !dbg !3686
  call void @llvm.dbg.value(metadata i64 %18, metadata !236, metadata !DIExpression()) #12, !dbg !3686
  store i64 %18, i64* %1, align 8, !dbg !3693, !tbaa !769
  call void @llvm.dbg.value(metadata i8* %0, metadata !3575, metadata !DIExpression()) #12, !dbg !3694
  call void @llvm.dbg.value(metadata i64 %18, metadata !3580, metadata !DIExpression()) #12, !dbg !3696
  %19 = icmp eq i64 %18, 0, !dbg !3705
  br i1 %19, label %20, label %21, !dbg !3697

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3706
  br label %28, !dbg !3707

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3708
  call void @llvm.dbg.value(metadata i8* %23, metadata !3575, metadata !DIExpression()) #12, !dbg !3694
  %24 = icmp eq i8* %23, null, !dbg !3709
  %25 = icmp ne i64 %22, 0, !dbg !3710
  %26 = and i1 %25, %24, !dbg !3711
  br i1 %26, label %27, label %28, !dbg !3711

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #16, !dbg !3712
  unreachable, !dbg !3712

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3713
  ret i8* %29, !dbg !3714
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3715 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3717, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %0, metadata !3535, metadata !DIExpression()) #12, !dbg !3719
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %2, metadata !3541, metadata !DIExpression()) #12, !dbg !3722
  %3 = icmp eq i8* %2, null, !dbg !3723
  %4 = icmp ne i64 %0, 0, !dbg !3724
  %5 = and i1 %4, %3, !dbg !3725
  br i1 %5, label %6, label %7, !dbg !3725

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3726
  unreachable, !dbg !3726

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3727
  ret i8* %2, !dbg !3728
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3729 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3731, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i64 %1, metadata !3732, metadata !DIExpression()), !dbg !3735
  %3 = udiv i64 9223372036854775807, %1, !dbg !3736
  %4 = icmp ult i64 %3, %0, !dbg !3736
  br i1 %4, label %8, label %5, !dbg !3738

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3739
  call void @llvm.dbg.value(metadata i8* %6, metadata !3733, metadata !DIExpression()), !dbg !3740
  %7 = icmp eq i8* %6, null, !dbg !3741
  br i1 %7, label %8, label %9, !dbg !3742

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !3743
  unreachable, !dbg !3743

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3744
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3745 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3751, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 %1, metadata !3752, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 %1, metadata !3535, metadata !DIExpression()) #12, !dbg !3755
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3757
  call void @llvm.dbg.value(metadata i8* %3, metadata !3541, metadata !DIExpression()) #12, !dbg !3758
  %4 = icmp eq i8* %3, null, !dbg !3759
  %5 = icmp ne i64 %1, 0, !dbg !3760
  %6 = and i1 %5, %4, !dbg !3761
  br i1 %6, label %7, label %8, !dbg !3761

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3762
  unreachable, !dbg !3762

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3763
  ret i8* %3, !dbg !3764
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3765 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3767, metadata !DIExpression()), !dbg !3768
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !3769
  %3 = add i64 %2, 1, !dbg !3770
  call void @llvm.dbg.value(metadata i8* %0, metadata !3751, metadata !DIExpression()) #12, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %3, metadata !3752, metadata !DIExpression()) #12, !dbg !3773
  call void @llvm.dbg.value(metadata i64 %3, metadata !3535, metadata !DIExpression()) #12, !dbg !3774
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3776
  call void @llvm.dbg.value(metadata i8* %4, metadata !3541, metadata !DIExpression()) #12, !dbg !3777
  %5 = icmp eq i8* %4, null, !dbg !3778
  %6 = icmp ne i64 %3, 0, !dbg !3779
  %7 = and i1 %6, %5, !dbg !3780
  br i1 %7, label %8, label %9, !dbg !3780

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3781
  unreachable, !dbg !3781

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !3782
  ret i8* %4, !dbg !3783
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3784 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3786, !tbaa !751
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.146, i64 0, i64 0), i32 5) #12, !dbg !3787
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0), i8* %2) #12, !dbg !3788
  tail call void @abort() #16, !dbg !3789
  unreachable, !dbg !3789
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3790 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3793, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i64 %1, metadata !3794, metadata !DIExpression()), !dbg !3800
  %3 = icmp eq i64 %0, 0, !dbg !3801
  %4 = icmp eq i64 %1, 0, !dbg !3802
  %5 = or i1 %3, %4, !dbg !3803
  br i1 %5, label %12, label %6, !dbg !3803

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3804
  call void @llvm.dbg.value(metadata i64 %7, metadata !3796, metadata !DIExpression()), !dbg !3805
  %8 = udiv i64 %7, %1, !dbg !3806
  %9 = icmp eq i64 %8, %0, !dbg !3808
  br i1 %9, label %12, label %10, !dbg !3809

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3810
  store i32 12, i32* %11, align 4, !dbg !3812, !tbaa !751
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3793, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i64 %13, metadata !3794, metadata !DIExpression()), !dbg !3800
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %15, metadata !3795, metadata !DIExpression()), !dbg !3814
  br label %16, !dbg !3815

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3816
  ret i8* %17, !dbg !3817
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3818 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3835, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8* %1, metadata !3836, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %2, metadata !3837, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3838, metadata !DIExpression()), !dbg !3847
  %6 = bitcast i32* %5 to i8*, !dbg !3848
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3848
  %7 = icmp eq i32* %0, null, !dbg !3849
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3851
  call void @llvm.dbg.value(metadata i32* %8, metadata !3835, metadata !DIExpression()), !dbg !3844
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3852
  call void @llvm.dbg.value(metadata i64 %9, metadata !3839, metadata !DIExpression()), !dbg !3853
  %10 = icmp ugt i64 %9, -3, !dbg !3854
  %11 = icmp ne i64 %2, 0, !dbg !3855
  %12 = and i1 %11, %10, !dbg !3856
  br i1 %12, label %13, label %18, !dbg !3856

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3857
  br i1 %14, label %18, label %15, !dbg !3858

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3859, !tbaa !831
  call void @llvm.dbg.value(metadata i8 %16, metadata !3841, metadata !DIExpression()), !dbg !3860
  %17 = zext i8 %16 to i32, !dbg !3861
  store i32 %17, i32* %8, align 4, !dbg !3862, !tbaa !751
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3863
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3864
  ret i64 %19, !dbg !3864
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3865 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3904, metadata !DIExpression()), !dbg !3909
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3911, metadata !DIExpression()), !dbg !3915
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3917
  %4 = load i32, i32* %3, align 8, !dbg !3917, !tbaa !3918
  %5 = and i32 %4, 32, !dbg !3917
  %6 = icmp eq i32 %5, 0, !dbg !3920
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3921
  %8 = icmp ne i32 %7, 0, !dbg !3922
  br i1 %6, label %9, label %19, !dbg !3923

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3925
  %11 = xor i1 %8, true, !dbg !3926
  %12 = or i1 %10, %11, !dbg !3926
  %13 = sext i1 %8 to i32, !dbg !3926
  br i1 %12, label %22, label %14, !dbg !3926

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3927
  %16 = load i32, i32* %15, align 4, !dbg !3927, !tbaa !751
  %17 = icmp ne i32 %16, 9, !dbg !3928
  %18 = sext i1 %17 to i32, !dbg !3929
  br label %22, !dbg !3929

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3930

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3932
  store i32 0, i32* %21, align 4, !dbg !3934, !tbaa !751
  br label %22, !dbg !3932

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3935
  ret i32 %23, !dbg !3936
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3937 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3940, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i8 1, metadata !3941, metadata !DIExpression()), !dbg !3944
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3945
  call void @llvm.dbg.value(metadata i8* %2, metadata !3942, metadata !DIExpression()), !dbg !3946
  %3 = icmp eq i8* %2, null, !dbg !3947
  br i1 %3, label %11, label %4, !dbg !3949

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156, i64 0, i64 0)) #15, !dbg !3950
  %6 = icmp eq i32 %5, 0, !dbg !3955
  br i1 %6, label %10, label %7, !dbg !3956

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.157, i64 0, i64 0)) #15, !dbg !3957
  %9 = icmp eq i32 %8, 0, !dbg !3958
  br i1 %9, label %10, label %11, !dbg !3959

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3941, metadata !DIExpression()), !dbg !3944
  br label %11, !dbg !3960

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3962 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3968
  call void @llvm.dbg.value(metadata i8* %1, metadata !3967, metadata !DIExpression()), !dbg !3969
  %2 = icmp eq i8* %1, null, !dbg !3970
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), i8* %1, !dbg !3972
  call void @llvm.dbg.value(metadata i8* %3, metadata !3967, metadata !DIExpression()), !dbg !3969
  %4 = load i8, i8* %3, align 1, !dbg !3973, !tbaa !831
  %5 = icmp eq i8 %4, 0, !dbg !3977
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.161, i64 0, i64 0), i8* %3, !dbg !3978
  call void @llvm.dbg.value(metadata i8* %6, metadata !3967, metadata !DIExpression()), !dbg !3969
  ret i8* %6, !dbg !3979
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3980 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4019, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 0, metadata !4020, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4025
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4026
  call void @llvm.dbg.value(metadata i32 %2, metadata !4021, metadata !DIExpression()), !dbg !4027
  %3 = icmp slt i32 %2, 0, !dbg !4028
  br i1 %3, label %4, label %6, !dbg !4030

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4031
  br label %24, !dbg !4032

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4033
  %8 = icmp eq i32 %7, 0, !dbg !4033
  br i1 %8, label %13, label %9, !dbg !4035

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4036
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4037
  %12 = icmp eq i64 %11, -1, !dbg !4038
  br i1 %12, label %16, label %13, !dbg !4039

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4040
  %15 = icmp eq i32 %14, 0, !dbg !4040
  br i1 %15, label %16, label %18, !dbg !4041

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4020, metadata !DIExpression()), !dbg !4024
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4042
  call void @llvm.dbg.value(metadata i32 %21, metadata !4022, metadata !DIExpression()), !dbg !4025
  br label %24, !dbg !4043

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4044
  %20 = load i32, i32* %19, align 4, !dbg !4044, !tbaa !751
  call void @llvm.dbg.value(metadata i32 %20, metadata !4020, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 %20, metadata !4020, metadata !DIExpression()), !dbg !4024
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4042
  call void @llvm.dbg.value(metadata i32 %21, metadata !4022, metadata !DIExpression()), !dbg !4025
  %22 = icmp eq i32 %20, 0, !dbg !4045
  br i1 %22, label %24, label %23, !dbg !4043

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4047, !tbaa !751
  call void @llvm.dbg.value(metadata i32 -1, metadata !4022, metadata !DIExpression()), !dbg !4025
  br label %24, !dbg !4049

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4050
  ret i32 %25, !dbg !4051
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4052 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4091, metadata !DIExpression()), !dbg !4092
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4093
  br i1 %2, label %6, label %3, !dbg !4095

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4096
  %5 = icmp eq i32 %4, 0, !dbg !4096
  br i1 %5, label %6, label %8, !dbg !4097

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4098
  br label %17, !dbg !4099

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4100, metadata !DIExpression()) #12, !dbg !4105
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4107
  %10 = load i32, i32* %9, align 8, !dbg !4107, !tbaa !3918
  %11 = and i32 %10, 256, !dbg !4109
  %12 = icmp eq i32 %11, 0, !dbg !4109
  br i1 %12, label %15, label %13, !dbg !4110

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4111
  br label %15, !dbg !4111

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4112
  br label %17, !dbg !4113

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4114
  ret i32 %18, !dbg !4115
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4116 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4156, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i64 %1, metadata !4157, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i32 %2, metadata !4158, metadata !DIExpression()), !dbg !4164
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4165
  %5 = load i8*, i8** %4, align 8, !dbg !4165, !tbaa !4166
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4167
  %7 = load i8*, i8** %6, align 8, !dbg !4167, !tbaa !4168
  %8 = icmp eq i8* %5, %7, !dbg !4169
  br i1 %8, label %9, label %28, !dbg !4170

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4171
  %11 = load i8*, i8** %10, align 8, !dbg !4171, !tbaa !4172
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4173
  %13 = load i8*, i8** %12, align 8, !dbg !4173, !tbaa !4174
  %14 = icmp eq i8* %11, %13, !dbg !4175
  br i1 %14, label %15, label %28, !dbg !4176

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4177
  %17 = load i8*, i8** %16, align 8, !dbg !4177, !tbaa !4178
  %18 = icmp eq i8* %17, null, !dbg !4179
  br i1 %18, label %19, label %28, !dbg !4180

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4181
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4182
  call void @llvm.dbg.value(metadata i64 %21, metadata !4159, metadata !DIExpression()), !dbg !4183
  %22 = icmp eq i64 %21, -1, !dbg !4184
  br i1 %22, label %30, label %23, !dbg !4186

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4187
  %25 = load i32, i32* %24, align 8, !dbg !4188, !tbaa !3918
  %26 = and i32 %25, -17, !dbg !4188
  store i32 %26, i32* %24, align 8, !dbg !4188, !tbaa !3918
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4189
  store i64 %21, i64* %27, align 8, !dbg !4190, !tbaa !4191
  br label %30, !dbg !4192

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4193
  br label %30, !dbg !4194

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4195
  ret i32 %31, !dbg !4196
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
attributes #9 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { noreturn }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !129, !217, !135, !143, !150, !157, !219, !210, !227, !238, !240, !242, !245, !247, !249, !638, !640, !642}
!llvm.ident = !{!644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644}
!llvm.module.flags = !{!645, !646, !647, !648, !649}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 51, type: !123, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !59, globals: !64)
!3 = !DIFile(filename: "src/env.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !13, !27, !44}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !29, file: !28, line: 186, baseType: !7, size: 32, elements: !42)
!28 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!29 = distinct !DISubprogram(name: "x2nrealloc", scope: !28, file: !28, line: 174, type: !30, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !37)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !32, !33, !34}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 62, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!38, !39, !40, !41}
!38 = !DILocalVariable(name: "p", arg: 1, scope: !29, file: !28, line: 174, type: !32)
!39 = !DILocalVariable(name: "pn", arg: 2, scope: !29, file: !28, line: 174, type: !33)
!40 = !DILocalVariable(name: "s", arg: 3, scope: !29, file: !28, line: 174, type: !34)
!41 = !DILocalVariable(name: "n", scope: !29, file: !28, line: 176, type: !34)
!42 = !{!43}
!43 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 46, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!47 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!48 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!49 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!50 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!51 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!52 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!53 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!54 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!55 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!56 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!57 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!59 = !{!60, !32, !34, !62, !63}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !{!65, !96, !0, !98, !112, !114, !116, !119, !121}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "dummy_environ", scope: !67, file: !3, line: 593, type: !93, isLocal: true, isDefinition: true)
!67 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 529, type: !68, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !71)
!68 = !DISubroutineType(types: !69)
!69 = !{!62, !62, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!71 = !{!72, !73, !74, !75, !77, !78, !81, !82, !83, !88, !92}
!72 = !DILocalVariable(name: "argc", arg: 1, scope: !67, file: !3, line: 529, type: !62)
!73 = !DILocalVariable(name: "argv", arg: 2, scope: !67, file: !3, line: 529, type: !70)
!74 = !DILocalVariable(name: "optc", scope: !67, file: !3, line: 531, type: !62)
!75 = !DILocalVariable(name: "ignore_environment", scope: !67, file: !3, line: 532, type: !76)
!76 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !67, file: !3, line: 533, type: !76)
!78 = !DILocalVariable(name: "newdir", scope: !67, file: !3, line: 534, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!81 = !DILocalVariable(name: "eq", scope: !67, file: !3, line: 599, type: !60)
!82 = !DILocalVariable(name: "program_specified", scope: !67, file: !3, line: 613, type: !76)
!83 = !DILocalVariable(name: "e", scope: !84, file: !3, line: 630, type: !86)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 628, column: 5)
!85 = distinct !DILexicalBlock(scope: !67, file: !3, line: 627, column: 7)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!88 = !DILocalVariable(name: "i", scope: !89, file: !3, line: 648, type: !62)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 648, column: 7)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 646, column: 5)
!91 = distinct !DILexicalBlock(scope: !67, file: !3, line: 645, column: 7)
!92 = !DILocalVariable(name: "exit_status", scope: !67, file: !3, line: 654, type: !62)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "dev_debug", scope: !2, file: !3, line: 45, type: !76, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 53, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 2304, elements: !110)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !103, line: 50, size: 256, elements: !104)
!103 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!104 = !{!105, !106, !107, !109}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !103, line: 52, baseType: !79, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !102, file: !103, line: 55, baseType: !62, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !102, file: !103, line: 56, baseType: !108, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !102, file: !103, line: 57, baseType: !62, size: 32, offset: 192)
!110 = !{!111}
!111 = !DISubrange(count: 9)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "usvars_used", scope: !2, file: !3, line: 42, type: !34, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "usvars_alloc", scope: !2, file: !3, line: 41, type: !34, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "usvars", scope: !2, file: !3, line: 40, type: !118, isLocal: true, isDefinition: true)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "vnlen", scope: !2, file: !3, line: 49, type: !34, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "varname", scope: !2, file: !3, line: 48, type: !60, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 104, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 13)
!126 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "Version", scope: !129, file: !130, line: 2, type: !79, isLocal: false, isDefinition: true)
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, globals: !132)
!130 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!131 = !{}
!132 = !{!127}
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "file_name", scope: !135, file: !140, line: 46, type: !79, isLocal: true, isDefinition: true)
!135 = distinct !DICompileUnit(language: DW_LANG_C99, file: !136, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, globals: !137)
!136 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!137 = !{!133, !138}
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !135, file: !140, line: 56, type: !76, isLocal: true, isDefinition: true)
!140 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "exit_failure", scope: !143, file: !146, line: 24, type: !147, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, globals: !145)
!144 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!145 = !{!141}
!146 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!147 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "program_name", scope: !150, file: !154, line: 33, type: !79, isLocal: false, isDefinition: true)
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, retainedTypes: !152, globals: !153)
!151 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!152 = !{!32, !60}
!153 = !{!148}
!154 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !157, file: !169, line: 85, type: !204, isLocal: false, isDefinition: true)
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !159, retainedTypes: !165, globals: !166)
!158 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!159 = !{!13, !160, !44}
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !14, line: 242, baseType: !7, size: 32, elements: !161)
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!164 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!165 = !{!62, !63, !34, !60}
!166 = !{!155, !167, !174, !186, !188, !193, !200, !202}
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !157, file: !169, line: 101, type: !170, isLocal: false, isDefinition: true)
!169 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 320, elements: !172)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!172 = !{!173}
!173 = !DISubrange(count: 10)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !157, file: !169, line: 1052, type: !176, isLocal: false, isDefinition: true)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !169, line: 65, size: 448, elements: !177)
!177 = !{!178, !179, !180, !184, !185}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !176, file: !169, line: 68, baseType: !13, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !169, line: 71, baseType: !62, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !176, file: !169, line: 75, baseType: !181, size: 256, offset: 64)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !176, file: !169, line: 78, baseType: !79, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !176, file: !169, line: 81, baseType: !79, size: 64, offset: 384)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !157, file: !169, line: 116, type: !176, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "slot0", scope: !157, file: !169, line: 842, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2048, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 256)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "slotvec", scope: !157, file: !169, line: 845, type: !195, isLocal: true, isDefinition: true)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !169, line: 834, size: 128, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !196, file: !169, line: 836, baseType: !34, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !196, file: !169, line: 837, baseType: !60, size: 64, offset: 64)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "nslots", scope: !157, file: !169, line: 843, type: !62, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "slotvec0", scope: !157, file: !169, line: 844, type: !196, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 704, elements: !206)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!206 = !{!207}
!207 = !DISubrange(count: 11)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !210, file: !213, line: 26, type: !214, isLocal: false, isDefinition: true)
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, globals: !212)
!211 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!212 = !{!208}
!213 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 376, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 47)
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131)
!218 = !DIFile(filename: "./lib/c-ctype.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !226)
!220 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!221 = !{!222}
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !223, line: 41, baseType: !7, size: 32, elements: !224)
!223 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!224 = !{!225}
!225 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!226 = !{!32}
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !229, retainedTypes: !237)
!228 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!229 = !{!230}
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !231, file: !28, line: 186, baseType: !7, size: 32, elements: !42)
!231 = distinct !DISubprogram(name: "x2nrealloc", scope: !28, file: !28, line: 174, type: !30, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !232)
!232 = !{!233, !234, !235, !236}
!233 = !DILocalVariable(name: "p", arg: 1, scope: !231, file: !28, line: 174, type: !32)
!234 = !DILocalVariable(name: "pn", arg: 2, scope: !231, file: !28, line: 174, type: !33)
!235 = !DILocalVariable(name: "s", arg: 3, scope: !231, file: !28, line: 174, type: !34)
!236 = !DILocalVariable(name: "n", scope: !231, file: !28, line: 176, type: !34)
!237 = !{!34, !60, !32}
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131)
!239 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, retainedTypes: !226)
!241 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, retainedTypes: !244)
!243 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!244 = !{!34}
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131)
!246 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131)
!248 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !251, retainedTypes: !226)
!250 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!251 = !{!252}
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !253, line: 41, baseType: !7, size: 32, elements: !254)
!253 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!255 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!256 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!257 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!258 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!259 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!260 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!261 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!262 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!263 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!264 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!265 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!266 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!267 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!268 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!269 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!270 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!271 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!272 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!273 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!274 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!275 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!276 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!277 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!278 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!279 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!280 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!281 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!282 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!283 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!284 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!285 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!286 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!287 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!288 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!289 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!290 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!291 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!292 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!293 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!294 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!295 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!296 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!297 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!298 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!299 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!300 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!301 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!302 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!303 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!304 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!363 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!366 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!367 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!368 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!369 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!370 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!371 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!372 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!373 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!374 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!375 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!376 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!377 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!450 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!523 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!524 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!525 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!526 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!527 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!528 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!529 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!530 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!531 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!532 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!533 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!534 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!535 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!536 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!537 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!539 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!540 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!541 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!542 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!543 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!544 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!570 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!571 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!572 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!573 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!574 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!579 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!580 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!581 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!582 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!638 = distinct !DICompileUnit(language: DW_LANG_C99, file: !639, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131)
!639 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!640 = distinct !DICompileUnit(language: DW_LANG_C99, file: !641, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, retainedTypes: !226)
!641 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!642 = distinct !DICompileUnit(language: DW_LANG_C99, file: !643, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, retainedTypes: !226)
!643 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!644 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!645 = !{i32 2, !"Dwarf Version", i32 4}
!646 = !{i32 2, !"Debug Info Version", i32 3}
!647 = !{i32 1, !"wchar_size", i32 4}
!648 = !{i32 7, !"PIC Level", i32 2}
!649 = !{i32 7, !"PIE Level", i32 2}
!650 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 67, type: !651, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !653)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !62}
!653 = !{!654}
!654 = !DILocalVariable(name: "status", arg: 1, scope: !650, file: !3, line: 67, type: !62)
!655 = !DILocalVariable(name: "infomap", scope: !656, file: !6, line: 632, type: !670)
!656 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 630, type: !657, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !79}
!659 = !{!660, !655, !661, !662, !669}
!660 = !DILocalVariable(name: "program", arg: 1, scope: !656, file: !6, line: 630, type: !79)
!661 = !DILocalVariable(name: "node", scope: !656, file: !6, line: 642, type: !79)
!662 = !DILocalVariable(name: "map_prog", scope: !656, file: !6, line: 643, type: !663)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !656, file: !6, line: 632, size: 128, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !665, file: !6, line: 632, baseType: !79, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !665, file: !6, line: 632, baseType: !79, size: 64, offset: 64)
!669 = !DILocalVariable(name: "lc_messages", scope: !656, file: !6, line: 655, type: !79)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 896, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 7)
!673 = !DILocation(line: 632, column: 67, scope: !656, inlinedAt: !674)
!674 = distinct !DILocation(line: 101, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 72, column: 5)
!676 = distinct !DILexicalBlock(scope: !650, file: !3, line: 69, column: 7)
!677 = !DILocation(line: 67, column: 12, scope: !650)
!678 = !DILocation(line: 69, column: 14, scope: !676)
!679 = !DILocation(line: 69, column: 7, scope: !650)
!680 = !DILocation(line: 70, column: 5, scope: !681)
!681 = distinct !DILexicalBlock(scope: !676, file: !3, line: 70, column: 5)
!682 = !{!683, !683, i64 0}
!683 = !{!"any pointer", !684, i64 0}
!684 = !{!"omnipotent char", !685, i64 0}
!685 = !{!"Simple C/C++ TBAA"}
!686 = !DILocation(line: 73, column: 7, scope: !675)
!687 = !DILocation(line: 76, column: 7, scope: !675)
!688 = !DILocation(line: 587, column: 3, scope: !689, inlinedAt: !692)
!689 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 585, type: !690, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !131)
!690 = !DISubroutineType(types: !691)
!691 = !{null}
!692 = distinct !DILocation(line: 80, column: 7, scope: !675)
!693 = !DILocation(line: 82, column: 7, scope: !675)
!694 = !DILocation(line: 87, column: 7, scope: !675)
!695 = !DILocation(line: 90, column: 7, scope: !675)
!696 = !DILocation(line: 95, column: 7, scope: !675)
!697 = !DILocation(line: 96, column: 7, scope: !675)
!698 = !DILocation(line: 97, column: 7, scope: !675)
!699 = !DILocation(line: 632, column: 3, scope: !656, inlinedAt: !674)
!700 = !DILocation(line: 643, column: 36, scope: !656, inlinedAt: !674)
!701 = !DILocation(line: 643, column: 25, scope: !656, inlinedAt: !674)
!702 = !DILocation(line: 645, column: 33, scope: !656, inlinedAt: !674)
!703 = !DILocation(line: 645, column: 3, scope: !656, inlinedAt: !674)
!704 = !DILocation(line: 646, column: 13, scope: !656, inlinedAt: !674)
!705 = !DILocation(line: 645, column: 20, scope: !656, inlinedAt: !674)
!706 = !{!707, !683, i64 0}
!707 = !{!"infomap", !683, i64 0, !683, i64 8}
!708 = !DILocation(line: 645, column: 10, scope: !656, inlinedAt: !674)
!709 = !DILocation(line: 645, column: 28, scope: !656, inlinedAt: !674)
!710 = distinct !{!710, !711, !712}
!711 = !DILocation(line: 645, column: 3, scope: !656)
!712 = !DILocation(line: 646, column: 13, scope: !656)
!713 = !DILocation(line: 648, column: 17, scope: !714, inlinedAt: !674)
!714 = distinct !DILexicalBlock(scope: !656, file: !6, line: 648, column: 7)
!715 = !{!707, !683, i64 8}
!716 = !DILocation(line: 648, column: 7, scope: !714, inlinedAt: !674)
!717 = !DILocation(line: 648, column: 7, scope: !656, inlinedAt: !674)
!718 = !DILocation(line: 642, column: 15, scope: !656, inlinedAt: !674)
!719 = !DILocation(line: 651, column: 3, scope: !656, inlinedAt: !674)
!720 = !DILocation(line: 655, column: 29, scope: !656, inlinedAt: !674)
!721 = !DILocation(line: 655, column: 15, scope: !656, inlinedAt: !674)
!722 = !DILocation(line: 656, column: 7, scope: !723, inlinedAt: !674)
!723 = distinct !DILexicalBlock(scope: !656, file: !6, line: 656, column: 7)
!724 = !DILocation(line: 656, column: 19, scope: !723, inlinedAt: !674)
!725 = !DILocation(line: 656, column: 22, scope: !723, inlinedAt: !674)
!726 = !DILocation(line: 656, column: 7, scope: !656, inlinedAt: !674)
!727 = !DILocation(line: 662, column: 7, scope: !728, inlinedAt: !674)
!728 = distinct !DILexicalBlock(scope: !723, file: !6, line: 657, column: 5)
!729 = !DILocation(line: 664, column: 5, scope: !728, inlinedAt: !674)
!730 = !DILocation(line: 665, column: 3, scope: !656, inlinedAt: !674)
!731 = !DILocation(line: 667, column: 3, scope: !656, inlinedAt: !674)
!732 = !DILocation(line: 669, column: 1, scope: !656, inlinedAt: !674)
!733 = !DILocation(line: 103, column: 3, scope: !650)
!734 = !DILocation(line: 529, column: 11, scope: !67)
!735 = !DILocation(line: 529, column: 24, scope: !67)
!736 = !DILocation(line: 532, column: 8, scope: !67)
!737 = !DILocation(line: 533, column: 8, scope: !67)
!738 = !DILocation(line: 534, column: 15, scope: !67)
!739 = !DILocation(line: 537, column: 21, scope: !67)
!740 = !DILocation(line: 537, column: 3, scope: !67)
!741 = !DILocation(line: 538, column: 3, scope: !67)
!742 = !DILocation(line: 539, column: 3, scope: !67)
!743 = !DILocation(line: 540, column: 3, scope: !67)
!744 = !DILocalVariable(name: "status", arg: 1, scope: !745, file: !6, line: 99, type: !62)
!745 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !651, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !746)
!746 = !{!744}
!747 = !DILocation(line: 99, column: 30, scope: !745, inlinedAt: !748)
!748 = distinct !DILocation(line: 542, column: 3, scope: !67)
!749 = !DILocation(line: 102, column: 18, scope: !750, inlinedAt: !748)
!750 = distinct !DILexicalBlock(scope: !745, file: !6, line: 101, column: 7)
!751 = !{!752, !752, i64 0}
!752 = !{!"int", !684, i64 0}
!753 = !DILocation(line: 543, column: 3, scope: !67)
!754 = !DILocation(line: 545, column: 3, scope: !67)
!755 = !DILocation(line: 545, column: 18, scope: !67)
!756 = !DILocation(line: 531, column: 7, scope: !67)
!757 = distinct !{!757, !754, !758}
!758 = !DILocation(line: 582, column: 5, scope: !67)
!759 = !DILocation(line: 553, column: 29, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 548, column: 9)
!761 = distinct !DILexicalBlock(scope: !67, file: !3, line: 546, column: 5)
!762 = !DILocalVariable(name: "var", arg: 1, scope: !763, file: !3, line: 107, type: !79)
!763 = distinct !DISubprogram(name: "append_unset_var", scope: !3, file: !3, line: 107, type: !657, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !764)
!764 = !{!762}
!765 = !DILocation(line: 107, column: 31, scope: !763, inlinedAt: !766)
!766 = distinct !DILocation(line: 553, column: 11, scope: !760)
!767 = !DILocation(line: 109, column: 7, scope: !768, inlinedAt: !766)
!768 = distinct !DILexicalBlock(scope: !763, file: !3, line: 109, column: 7)
!769 = !{!770, !770, i64 0}
!770 = !{!"long", !684, i64 0}
!771 = !DILocation(line: 109, column: 22, scope: !768, inlinedAt: !766)
!772 = !DILocation(line: 109, column: 19, scope: !768, inlinedAt: !766)
!773 = !DILocation(line: 109, column: 7, scope: !763, inlinedAt: !766)
!774 = !DILocation(line: 111, column: 3, scope: !763, inlinedAt: !766)
!775 = !DILocation(line: 110, column: 26, scope: !768, inlinedAt: !766)
!776 = !DILocation(line: 174, column: 19, scope: !29, inlinedAt: !777)
!777 = distinct !DILocation(line: 110, column: 14, scope: !768, inlinedAt: !766)
!778 = !DILocation(line: 174, column: 30, scope: !29, inlinedAt: !777)
!779 = !DILocation(line: 174, column: 41, scope: !29, inlinedAt: !777)
!780 = !DILocation(line: 176, column: 10, scope: !29, inlinedAt: !777)
!781 = !DILocation(line: 178, column: 9, scope: !782, inlinedAt: !777)
!782 = distinct !DILexicalBlock(scope: !29, file: !28, line: 178, column: 7)
!783 = !DILocation(line: 178, column: 7, scope: !29, inlinedAt: !777)
!784 = !DILocation(line: 180, column: 13, scope: !785, inlinedAt: !777)
!785 = distinct !DILexicalBlock(scope: !786, file: !28, line: 180, column: 11)
!786 = distinct !DILexicalBlock(scope: !782, file: !28, line: 179, column: 5)
!787 = !DILocation(line: 180, column: 11, scope: !786, inlinedAt: !777)
!788 = !DILocation(line: 191, column: 11, scope: !789, inlinedAt: !777)
!789 = distinct !DILexicalBlock(scope: !786, file: !28, line: 191, column: 11)
!790 = !DILocation(line: 191, column: 11, scope: !786, inlinedAt: !777)
!791 = !DILocation(line: 192, column: 9, scope: !789, inlinedAt: !777)
!792 = !DILocation(line: 201, column: 11, scope: !793, inlinedAt: !777)
!793 = distinct !DILexicalBlock(scope: !794, file: !28, line: 200, column: 11)
!794 = distinct !DILexicalBlock(scope: !782, file: !28, line: 195, column: 5)
!795 = !DILocation(line: 200, column: 11, scope: !794, inlinedAt: !777)
!796 = !DILocation(line: 202, column: 9, scope: !793, inlinedAt: !777)
!797 = !DILocation(line: 203, column: 14, scope: !794, inlinedAt: !777)
!798 = !DILocation(line: 203, column: 18, scope: !794, inlinedAt: !777)
!799 = !DILocation(line: 203, column: 9, scope: !794, inlinedAt: !777)
!800 = !DILocation(line: 0, scope: !29, inlinedAt: !777)
!801 = !DILocation(line: 206, column: 7, scope: !29, inlinedAt: !777)
!802 = !DILocation(line: 207, column: 25, scope: !29, inlinedAt: !777)
!803 = !DILocation(line: 207, column: 10, scope: !29, inlinedAt: !777)
!804 = !DILocation(line: 110, column: 12, scope: !768, inlinedAt: !766)
!805 = !DILocation(line: 110, column: 5, scope: !768, inlinedAt: !766)
!806 = !DILocation(line: 111, column: 21, scope: !763, inlinedAt: !766)
!807 = !DILocation(line: 111, column: 25, scope: !763, inlinedAt: !766)
!808 = !DILocation(line: 554, column: 11, scope: !760)
!809 = !DILocation(line: 557, column: 11, scope: !760)
!810 = !DILocation(line: 562, column: 20, scope: !760)
!811 = !DILocation(line: 563, column: 11, scope: !760)
!812 = !DILocation(line: 565, column: 31, scope: !760)
!813 = !DILocalVariable(name: "str", arg: 1, scope: !814, file: !3, line: 477, type: !79)
!814 = distinct !DISubprogram(name: "parse_split_string", scope: !3, file: !3, line: 477, type: !815, isLocal: true, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !818)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !79, !108, !108, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!818 = !{!813, !819, !820, !821, !822, !823, !824, !825}
!819 = !DILocalVariable(name: "orig_optind", arg: 2, scope: !814, file: !3, line: 477, type: !108)
!820 = !DILocalVariable(name: "orig_argc", arg: 3, scope: !814, file: !3, line: 478, type: !108)
!821 = !DILocalVariable(name: "orig_argv", arg: 4, scope: !814, file: !3, line: 478, type: !817)
!822 = !DILocalVariable(name: "i", scope: !814, file: !3, line: 480, type: !62)
!823 = !DILocalVariable(name: "newargc", scope: !814, file: !3, line: 480, type: !62)
!824 = !DILocalVariable(name: "newargv", scope: !814, file: !3, line: 481, type: !70)
!825 = !DILocalVariable(name: "nextargv", scope: !814, file: !3, line: 481, type: !70)
!826 = !DILocation(line: 477, column: 33, scope: !814, inlinedAt: !827)
!827 = distinct !DILocation(line: 565, column: 11, scope: !760)
!828 = !DILocation(line: 477, column: 51, scope: !814, inlinedAt: !827)
!829 = !DILocation(line: 484, column: 10, scope: !814, inlinedAt: !827)
!830 = !DILocation(line: 484, column: 3, scope: !814, inlinedAt: !827)
!831 = !{!684, !684, i64 0}
!832 = !{!833, !833, i64 0}
!833 = !{!"short", !684, i64 0}
!834 = !DILocation(line: 485, column: 8, scope: !814, inlinedAt: !827)
!835 = distinct !{!835, !836, !837}
!836 = !DILocation(line: 484, column: 3, scope: !814)
!837 = !DILocation(line: 485, column: 8, scope: !814)
!838 = !DILocation(line: 486, column: 12, scope: !839, inlinedAt: !827)
!839 = distinct !DILexicalBlock(scope: !814, file: !3, line: 486, column: 7)
!840 = !DILocation(line: 486, column: 7, scope: !814, inlinedAt: !827)
!841 = !DILocation(line: 489, column: 43, scope: !814, inlinedAt: !827)
!842 = !DILocalVariable(name: "str", arg: 1, scope: !843, file: !3, line: 314, type: !79)
!843 = distinct !DISubprogram(name: "build_argv", scope: !3, file: !3, line: 314, type: !844, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{!70, !79, !62}
!846 = !{!842, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !858, !861}
!847 = !DILocalVariable(name: "extra_argc", arg: 2, scope: !843, file: !3, line: 314, type: !62)
!848 = !DILocalVariable(name: "dq", scope: !843, file: !3, line: 316, type: !76)
!849 = !DILocalVariable(name: "sq", scope: !843, file: !3, line: 316, type: !76)
!850 = !DILocalVariable(name: "sep", scope: !843, file: !3, line: 316, type: !76)
!851 = !DILocalVariable(name: "dest", scope: !843, file: !3, line: 317, type: !60)
!852 = !DILocalVariable(name: "newargv", scope: !843, file: !3, line: 319, type: !70)
!853 = !DILocalVariable(name: "nextargv", scope: !843, file: !3, line: 319, type: !70)
!854 = !DILocalVariable(name: "newargc", scope: !843, file: !3, line: 320, type: !62)
!855 = !DILocalVariable(name: "buflen", scope: !843, file: !3, line: 321, type: !34)
!856 = !DILocalVariable(name: "newc", scope: !857, file: !3, line: 357, type: !61)
!857 = distinct !DILexicalBlock(scope: !843, file: !3, line: 356, column: 5)
!858 = !DILocalVariable(name: "n", scope: !859, file: !3, line: 428, type: !60)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 427, column: 11)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 360, column: 9)
!861 = !DILocalVariable(name: "v", scope: !859, file: !3, line: 429, type: !60)
!862 = !DILocation(line: 314, column: 25, scope: !843, inlinedAt: !863)
!863 = distinct !DILocation(line: 489, column: 13, scope: !814, inlinedAt: !827)
!864 = !DILocation(line: 314, column: 34, scope: !843, inlinedAt: !863)
!865 = !DILocation(line: 316, column: 8, scope: !843, inlinedAt: !863)
!866 = !DILocation(line: 316, column: 20, scope: !843, inlinedAt: !863)
!867 = !DILocation(line: 316, column: 32, scope: !843, inlinedAt: !863)
!868 = !DILocation(line: 320, column: 7, scope: !843, inlinedAt: !863)
!869 = !DILocation(line: 321, column: 10, scope: !843, inlinedAt: !863)
!870 = !DILocation(line: 336, column: 3, scope: !871, inlinedAt: !863)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 336, column: 3)
!872 = distinct !DILexicalBlock(scope: !843, file: !3, line: 336, column: 3)
!873 = !DILocalVariable(name: "str", arg: 1, scope: !874, file: !3, line: 213, type: !79)
!874 = distinct !DISubprogram(name: "validate_split_str", scope: !3, file: !3, line: 213, type: !875, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !877)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !79, !33, !108}
!877 = !{!873, !878, !879, !880, !881, !882, !883, !884, !885, !886}
!878 = !DILocalVariable(name: "bufsize", arg: 2, scope: !874, file: !3, line: 213, type: !33)
!879 = !DILocalVariable(name: "maxargc", arg: 3, scope: !874, file: !3, line: 214, type: !108)
!880 = !DILocalVariable(name: "dq", scope: !874, file: !3, line: 216, type: !76)
!881 = !DILocalVariable(name: "sq", scope: !874, file: !3, line: 216, type: !76)
!882 = !DILocalVariable(name: "sp", scope: !874, file: !3, line: 216, type: !76)
!883 = !DILocalVariable(name: "pch", scope: !874, file: !3, line: 217, type: !79)
!884 = !DILocalVariable(name: "buflen", scope: !874, file: !3, line: 218, type: !34)
!885 = !DILocalVariable(name: "cnt", scope: !874, file: !3, line: 219, type: !62)
!886 = !DILocalVariable(name: "next", scope: !887, file: !3, line: 228, type: !80)
!887 = distinct !DILexicalBlock(scope: !874, file: !3, line: 227, column: 5)
!888 = !DILocation(line: 213, column: 33, scope: !874, inlinedAt: !889)
!889 = distinct !DILocation(line: 338, column: 3, scope: !843, inlinedAt: !863)
!890 = !DILocation(line: 219, column: 7, scope: !874, inlinedAt: !889)
!891 = !DILocation(line: 216, column: 16, scope: !874, inlinedAt: !889)
!892 = !DILocation(line: 216, column: 12, scope: !874, inlinedAt: !889)
!893 = !DILocation(line: 216, column: 8, scope: !874, inlinedAt: !889)
!894 = !DILocation(line: 224, column: 12, scope: !874, inlinedAt: !889)
!895 = !DILocation(line: 224, column: 24, scope: !874, inlinedAt: !889)
!896 = !DILocation(line: 218, column: 10, scope: !874, inlinedAt: !889)
!897 = !DILocation(line: 228, column: 30, scope: !887, inlinedAt: !889)
!898 = !DILocation(line: 230, column: 11, scope: !899, inlinedAt: !889)
!899 = distinct !DILexicalBlock(scope: !887, file: !3, line: 230, column: 11)
!900 = !DILocation(line: 228, column: 25, scope: !887, inlinedAt: !889)
!901 = !DILocation(line: 228, column: 18, scope: !887, inlinedAt: !889)
!902 = !DILocation(line: 230, column: 26, scope: !899, inlinedAt: !889)
!903 = !DILocation(line: 241, column: 15, scope: !887, inlinedAt: !889)
!904 = !DILocation(line: 241, column: 7, scope: !887, inlinedAt: !889)
!905 = !DILocation(line: 244, column: 11, scope: !906, inlinedAt: !889)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 244, column: 11)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 244, column: 11)
!908 = distinct !DILexicalBlock(scope: !887, file: !3, line: 242, column: 9)
!909 = !DILocation(line: 245, column: 14, scope: !908, inlinedAt: !889)
!910 = !DILocation(line: 246, column: 11, scope: !908, inlinedAt: !889)
!911 = !DILocation(line: 249, column: 11, scope: !912, inlinedAt: !889)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 249, column: 11)
!913 = distinct !DILexicalBlock(scope: !908, file: !3, line: 249, column: 11)
!914 = !DILocation(line: 250, column: 14, scope: !908, inlinedAt: !889)
!915 = !DILocation(line: 251, column: 11, scope: !908, inlinedAt: !889)
!916 = !DILocation(line: 230, column: 30, scope: !899, inlinedAt: !889)
!917 = !DILocation(line: 254, column: 15, scope: !918, inlinedAt: !889)
!918 = distinct !DILexicalBlock(scope: !908, file: !3, line: 254, column: 15)
!919 = !DILocation(line: 254, column: 26, scope: !918, inlinedAt: !889)
!920 = !DILocation(line: 254, column: 18, scope: !918, inlinedAt: !889)
!921 = !DILocation(line: 255, column: 13, scope: !918, inlinedAt: !889)
!922 = !DILocation(line: 258, column: 15, scope: !908, inlinedAt: !889)
!923 = !DILocation(line: 259, column: 13, scope: !924, inlinedAt: !889)
!924 = distinct !DILexicalBlock(scope: !908, file: !3, line: 258, column: 15)
!925 = !DILocation(line: 258, column: 15, scope: !924, inlinedAt: !889)
!926 = !DILocation(line: 263, column: 13, scope: !927, inlinedAt: !889)
!927 = distinct !DILexicalBlock(scope: !908, file: !3, line: 262, column: 15)
!928 = !DILocation(line: 265, column: 20, scope: !929, inlinedAt: !889)
!929 = distinct !DILexicalBlock(scope: !908, file: !3, line: 265, column: 15)
!930 = !DILocation(line: 265, column: 15, scope: !908, inlinedAt: !889)
!931 = !DILocation(line: 284, column: 7, scope: !887, inlinedAt: !889)
!932 = !DILocation(line: 269, column: 11, scope: !908, inlinedAt: !889)
!933 = !DILocation(line: 230, column: 37, scope: !899, inlinedAt: !889)
!934 = !DILocation(line: 273, column: 15, scope: !908, inlinedAt: !889)
!935 = !DILocation(line: 276, column: 23, scope: !936, inlinedAt: !889)
!936 = distinct !DILexicalBlock(scope: !908, file: !3, line: 276, column: 15)
!937 = !DILocation(line: 217, column: 15, scope: !874, inlinedAt: !889)
!938 = !DILocation(line: 276, column: 21, scope: !936, inlinedAt: !889)
!939 = !DILocation(line: 276, column: 15, scope: !908, inlinedAt: !889)
!940 = !DILocation(line: 277, column: 13, scope: !936, inlinedAt: !889)
!941 = !DILocation(line: 280, column: 22, scope: !942, inlinedAt: !889)
!942 = distinct !DILexicalBlock(scope: !908, file: !3, line: 280, column: 15)
!943 = !DILocation(line: 280, column: 20, scope: !942, inlinedAt: !889)
!944 = !DILocation(line: 280, column: 15, scope: !908, inlinedAt: !889)
!945 = !DILocation(line: 281, column: 23, scope: !942, inlinedAt: !889)
!946 = !DILocation(line: 281, column: 20, scope: !942, inlinedAt: !889)
!947 = !DILocation(line: 281, column: 13, scope: !942, inlinedAt: !889)
!948 = !DILocation(line: 0, scope: !874, inlinedAt: !889)
!949 = !DILocation(line: 0, scope: !908, inlinedAt: !889)
!950 = !DILocation(line: 0, scope: !951, inlinedAt: !889)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 236, column: 15)
!952 = distinct !DILexicalBlock(scope: !899, file: !3, line: 235, column: 9)
!953 = !DILocation(line: 226, column: 10, scope: !874, inlinedAt: !889)
!954 = !DILocation(line: 226, column: 3, scope: !874, inlinedAt: !889)
!955 = distinct !{!955, !956, !957}
!956 = !DILocation(line: 226, column: 3, scope: !874)
!957 = !DILocation(line: 285, column: 5, scope: !874)
!958 = !DILocation(line: 287, column: 10, scope: !959, inlinedAt: !889)
!959 = distinct !DILexicalBlock(scope: !874, file: !3, line: 287, column: 7)
!960 = !DILocation(line: 288, column: 5, scope: !959, inlinedAt: !889)
!961 = !DILocation(line: 341, column: 30, scope: !843, inlinedAt: !863)
!962 = !DILocation(line: 341, column: 10, scope: !843, inlinedAt: !863)
!963 = !DILocation(line: 317, column: 9, scope: !843, inlinedAt: !863)
!964 = !DILocation(line: 489, column: 41, scope: !814, inlinedAt: !827)
!965 = !DILocation(line: 345, column: 42, scope: !843, inlinedAt: !863)
!966 = !DILocation(line: 345, column: 55, scope: !843, inlinedAt: !863)
!967 = !DILocation(line: 345, column: 33, scope: !843, inlinedAt: !863)
!968 = !DILocation(line: 345, column: 60, scope: !843, inlinedAt: !863)
!969 = !DILocation(line: 345, column: 24, scope: !843, inlinedAt: !863)
!970 = !DILocation(line: 319, column: 10, scope: !843, inlinedAt: !863)
!971 = !DILocation(line: 319, column: 21, scope: !843, inlinedAt: !863)
!972 = !DILocation(line: 348, column: 3, scope: !843, inlinedAt: !863)
!973 = !DILocation(line: 349, column: 12, scope: !843, inlinedAt: !863)
!974 = !DILocation(line: 349, column: 15, scope: !843, inlinedAt: !863)
!975 = !DILocation(line: 350, column: 8, scope: !843, inlinedAt: !863)
!976 = !DILocation(line: 355, column: 10, scope: !843, inlinedAt: !863)
!977 = !DILocation(line: 355, column: 3, scope: !843, inlinedAt: !863)
!978 = !DILocation(line: 357, column: 12, scope: !857, inlinedAt: !863)
!979 = !DILocation(line: 359, column: 15, scope: !857, inlinedAt: !863)
!980 = !DILocation(line: 359, column: 7, scope: !857, inlinedAt: !863)
!981 = !DILocation(line: 362, column: 15, scope: !982, inlinedAt: !863)
!982 = distinct !DILexicalBlock(scope: !860, file: !3, line: 362, column: 15)
!983 = !DILocation(line: 362, column: 15, scope: !860, inlinedAt: !863)
!984 = !DILocation(line: 364, column: 17, scope: !860, inlinedAt: !863)
!985 = !DILocation(line: 364, column: 14, scope: !860, inlinedAt: !863)
!986 = !DILocation(line: 365, column: 11, scope: !987, inlinedAt: !863)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 365, column: 11)
!988 = distinct !DILexicalBlock(scope: !860, file: !3, line: 365, column: 11)
!989 = !DILocation(line: 365, column: 11, scope: !988, inlinedAt: !863)
!990 = !DILocation(line: 365, column: 11, scope: !991, inlinedAt: !863)
!991 = distinct !DILexicalBlock(scope: !987, file: !3, line: 365, column: 11)
!992 = !DILocation(line: 0, scope: !843, inlinedAt: !863)
!993 = !DILocation(line: 366, column: 11, scope: !860, inlinedAt: !863)
!994 = !DILocation(line: 367, column: 11, scope: !860, inlinedAt: !863)
!995 = distinct !{!995, !996, !997}
!996 = !DILocation(line: 355, column: 3, scope: !843)
!997 = !DILocation(line: 448, column: 5, scope: !843)
!998 = !DILocation(line: 370, column: 15, scope: !999, inlinedAt: !863)
!999 = distinct !DILexicalBlock(scope: !860, file: !3, line: 370, column: 15)
!1000 = !DILocation(line: 370, column: 15, scope: !860, inlinedAt: !863)
!1001 = !DILocation(line: 372, column: 17, scope: !860, inlinedAt: !863)
!1002 = !DILocation(line: 372, column: 14, scope: !860, inlinedAt: !863)
!1003 = !DILocation(line: 373, column: 11, scope: !1004, inlinedAt: !863)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 373, column: 11)
!1005 = distinct !DILexicalBlock(scope: !860, file: !3, line: 373, column: 11)
!1006 = !DILocation(line: 373, column: 11, scope: !1005, inlinedAt: !863)
!1007 = !DILocation(line: 373, column: 11, scope: !1008, inlinedAt: !863)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 373, column: 11)
!1009 = !DILocation(line: 374, column: 11, scope: !860, inlinedAt: !863)
!1010 = !DILocation(line: 375, column: 11, scope: !860, inlinedAt: !863)
!1011 = !DILocation(line: 380, column: 18, scope: !1012, inlinedAt: !863)
!1012 = distinct !DILexicalBlock(scope: !860, file: !3, line: 380, column: 15)
!1013 = !DILocation(line: 383, column: 18, scope: !860, inlinedAt: !863)
!1014 = !DILocation(line: 383, column: 15, scope: !860, inlinedAt: !863)
!1015 = !DILocation(line: 384, column: 11, scope: !860, inlinedAt: !863)
!1016 = !DILocation(line: 387, column: 16, scope: !1017, inlinedAt: !863)
!1017 = distinct !DILexicalBlock(scope: !860, file: !3, line: 387, column: 15)
!1018 = !DILocation(line: 387, column: 15, scope: !860, inlinedAt: !863)
!1019 = !DILocation(line: 393, column: 15, scope: !1020, inlinedAt: !863)
!1020 = distinct !DILexicalBlock(scope: !860, file: !3, line: 393, column: 15)
!1021 = !DILocation(line: 0, scope: !860, inlinedAt: !863)
!1022 = !DILocation(line: 393, column: 18, scope: !1020, inlinedAt: !863)
!1023 = !DILocation(line: 393, column: 38, scope: !1020, inlinedAt: !863)
!1024 = !DILocation(line: 398, column: 29, scope: !1025, inlinedAt: !863)
!1025 = distinct !DILexicalBlock(scope: !860, file: !3, line: 398, column: 15)
!1026 = !DILocation(line: 405, column: 20, scope: !1027, inlinedAt: !863)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 405, column: 19)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 404, column: 13)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 403, column: 20)
!1030 = !DILocation(line: 405, column: 19, scope: !1028, inlinedAt: !863)
!1031 = !DILocation(line: 407, column: 19, scope: !1032, inlinedAt: !863)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 406, column: 17)
!1033 = !DILocation(line: 409, column: 19, scope: !1032, inlinedAt: !863)
!1034 = !DILocalVariable(name: "c", arg: 1, scope: !1035, file: !3, line: 141, type: !80)
!1035 = distinct !DISubprogram(name: "escape_char", scope: !3, file: !3, line: 141, type: !1036, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1038)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!61, !80}
!1038 = !{!1034}
!1039 = !DILocation(line: 141, column: 25, scope: !1035, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 417, column: 22, scope: !1041, inlinedAt: !863)
!1041 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 414, column: 20)
!1042 = !DILocation(line: 143, column: 11, scope: !1035, inlinedAt: !1040)
!1043 = !DILocation(line: 143, column: 3, scope: !1035, inlinedAt: !1040)
!1044 = !DILocation(line: 147, column: 15, scope: !1045, inlinedAt: !1040)
!1045 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 144, column: 5)
!1046 = !DILocation(line: 148, column: 15, scope: !1045, inlinedAt: !1040)
!1047 = !DILocation(line: 149, column: 15, scope: !1045, inlinedAt: !1040)
!1048 = !DILocation(line: 150, column: 15, scope: !1045, inlinedAt: !1040)
!1049 = !DILocation(line: 151, column: 15, scope: !1050, inlinedAt: !1040)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 151, column: 15)
!1051 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 151, column: 15)
!1052 = !DILocation(line: 422, column: 15, scope: !1053, inlinedAt: !863)
!1053 = distinct !DILexicalBlock(scope: !860, file: !3, line: 422, column: 15)
!1054 = !DILocation(line: 422, column: 15, scope: !860, inlinedAt: !863)
!1055 = !DILocation(line: 428, column: 23, scope: !859, inlinedAt: !863)
!1056 = !DILocation(line: 428, column: 19, scope: !859, inlinedAt: !863)
!1057 = !DILocation(line: 429, column: 23, scope: !859, inlinedAt: !863)
!1058 = !DILocation(line: 429, column: 19, scope: !859, inlinedAt: !863)
!1059 = !DILocation(line: 430, column: 17, scope: !1060, inlinedAt: !863)
!1060 = distinct !DILexicalBlock(scope: !859, file: !3, line: 430, column: 17)
!1061 = !DILocation(line: 430, column: 17, scope: !859, inlinedAt: !863)
!1062 = !DILocation(line: 432, column: 17, scope: !1063, inlinedAt: !863)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 432, column: 17)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 432, column: 17)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 431, column: 15)
!1066 = !DILocation(line: 432, column: 17, scope: !1064, inlinedAt: !863)
!1067 = !DILocation(line: 432, column: 17, scope: !1068, inlinedAt: !863)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 432, column: 17)
!1069 = !DILocation(line: 433, column: 17, scope: !1070, inlinedAt: !863)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 433, column: 17)
!1071 = !DILocation(line: 433, column: 17, scope: !1072, inlinedAt: !863)
!1072 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 433, column: 17)
!1073 = !DILocalVariable(name: "__dest", arg: 1, scope: !1074, file: !1075, line: 95, type: !1078)
!1074 = distinct !DISubprogram(name: "stpcpy", scope: !1075, file: !1075, line: 95, type: !1076, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1080)
!1075 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!60, !1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!1079 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!1080 = !{!1073, !1081}
!1081 = !DILocalVariable(name: "__src", arg: 2, scope: !1074, file: !1075, line: 95, type: !1079)
!1082 = !DILocation(line: 95, column: 1, scope: !1074, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 434, column: 24, scope: !1065, inlinedAt: !863)
!1084 = !DILocation(line: 97, column: 49, scope: !1074, inlinedAt: !1083)
!1085 = !DILocation(line: 97, column: 10, scope: !1074, inlinedAt: !1083)
!1086 = !DILocation(line: 435, column: 15, scope: !1065, inlinedAt: !863)
!1087 = !DILocation(line: 437, column: 15, scope: !1088, inlinedAt: !863)
!1088 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 437, column: 15)
!1089 = !DILocation(line: 437, column: 15, scope: !1090, inlinedAt: !863)
!1090 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 437, column: 15)
!1091 = !DILocation(line: 439, column: 19, scope: !859, inlinedAt: !863)
!1092 = !DILocation(line: 439, column: 37, scope: !859, inlinedAt: !863)
!1093 = !DILocation(line: 445, column: 7, scope: !1094, inlinedAt: !863)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 445, column: 7)
!1095 = distinct !DILexicalBlock(scope: !857, file: !3, line: 445, column: 7)
!1096 = !DILocation(line: 0, scope: !857, inlinedAt: !863)
!1097 = !DILocation(line: 445, column: 7, scope: !1095, inlinedAt: !863)
!1098 = !DILocation(line: 445, column: 7, scope: !1099, inlinedAt: !863)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 445, column: 7)
!1100 = !DILocation(line: 446, column: 12, scope: !857, inlinedAt: !863)
!1101 = !DILocation(line: 446, column: 15, scope: !857, inlinedAt: !863)
!1102 = !DILocation(line: 447, column: 7, scope: !857, inlinedAt: !863)
!1103 = !DILocation(line: 448, column: 5, scope: !843, inlinedAt: !863)
!1104 = !DILocation(line: 0, scope: !991, inlinedAt: !863)
!1105 = !DILocation(line: 0, scope: !1099, inlinedAt: !863)
!1106 = !DILocation(line: 451, column: 9, scope: !843, inlinedAt: !863)
!1107 = !DILocation(line: 452, column: 13, scope: !843, inlinedAt: !863)
!1108 = !DILocation(line: 481, column: 10, scope: !814, inlinedAt: !827)
!1109 = !DILocation(line: 492, column: 15, scope: !814, inlinedAt: !827)
!1110 = !DILocation(line: 492, column: 14, scope: !814, inlinedAt: !827)
!1111 = !DILocation(line: 492, column: 12, scope: !814, inlinedAt: !827)
!1112 = !DILocation(line: 481, column: 21, scope: !814, inlinedAt: !827)
!1113 = !DILocation(line: 498, column: 17, scope: !1114, inlinedAt: !827)
!1114 = distinct !DILexicalBlock(scope: !814, file: !3, line: 498, column: 7)
!1115 = !DILocation(line: 508, column: 14, scope: !1116, inlinedAt: !827)
!1116 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 506, column: 5)
!1117 = !DILocation(line: 498, column: 20, scope: !1114, inlinedAt: !827)
!1118 = !DILocation(line: 498, column: 7, scope: !814, inlinedAt: !827)
!1119 = !DILocation(line: 500, column: 7, scope: !1120, inlinedAt: !827)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 500, column: 7)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 500, column: 7)
!1122 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 499, column: 5)
!1123 = !DILocation(line: 501, column: 7, scope: !1124, inlinedAt: !827)
!1124 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 501, column: 7)
!1125 = !DILocation(line: 501, column: 7, scope: !1126, inlinedAt: !827)
!1126 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 501, column: 7)
!1127 = !DILocation(line: 0, scope: !814, inlinedAt: !827)
!1128 = !DILocation(line: 502, column: 14, scope: !1122, inlinedAt: !827)
!1129 = !DILocation(line: 502, column: 7, scope: !1122, inlinedAt: !827)
!1130 = !DILocation(line: 503, column: 9, scope: !1131, inlinedAt: !827)
!1131 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 503, column: 9)
!1132 = !DILocation(line: 503, column: 9, scope: !1133, inlinedAt: !827)
!1133 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 503, column: 9)
!1134 = !DILocation(line: 0, scope: !1126, inlinedAt: !827)
!1135 = distinct !{!1135, !1136, !1137}
!1136 = !DILocation(line: 502, column: 7, scope: !1122)
!1137 = !DILocation(line: 503, column: 9, scope: !1122)
!1138 = !DILocation(line: 0, scope: !1116, inlinedAt: !827)
!1139 = !DILocation(line: 508, column: 7, scope: !1116, inlinedAt: !827)
!1140 = !DILocation(line: 509, column: 9, scope: !1116, inlinedAt: !827)
!1141 = distinct !{!1141, !1142, !1143}
!1142 = !DILocation(line: 508, column: 7, scope: !1116)
!1143 = !DILocation(line: 509, column: 11, scope: !1116)
!1144 = !DILocation(line: 513, column: 12, scope: !1145, inlinedAt: !827)
!1145 = distinct !DILexicalBlock(scope: !814, file: !3, line: 513, column: 3)
!1146 = !DILocation(line: 480, column: 7, scope: !814, inlinedAt: !827)
!1147 = !DILocation(line: 513, column: 28, scope: !1148, inlinedAt: !827)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 513, column: 3)
!1149 = !DILocation(line: 513, column: 3, scope: !1145, inlinedAt: !827)
!1150 = !DILocation(line: 514, column: 19, scope: !1148, inlinedAt: !827)
!1151 = !{!1152}
!1152 = distinct !{!1152, !1153}
!1153 = distinct !{!1153, !"LVerDomain"}
!1154 = !DILocation(line: 514, column: 17, scope: !1148, inlinedAt: !827)
!1155 = !{!1156}
!1156 = distinct !{!1156, !1153}
!1157 = distinct !{!1157, !1158, !1159, !1160}
!1158 = !DILocation(line: 513, column: 3, scope: !1145)
!1159 = !DILocation(line: 514, column: 33, scope: !1145)
!1160 = !{!"llvm.loop.isvectorized", i32 1}
!1161 = distinct !{!1161, !1162}
!1162 = !{!"llvm.loop.unroll.disable"}
!1163 = !DILocation(line: 514, column: 14, scope: !1148, inlinedAt: !827)
!1164 = !DILocation(line: 513, column: 42, scope: !1148, inlinedAt: !827)
!1165 = distinct !{!1165, !1162}
!1166 = distinct !{!1166, !1158, !1159, !1160}
!1167 = !DILocation(line: 515, column: 13, scope: !814, inlinedAt: !827)
!1168 = !DILocation(line: 0, scope: !1148, inlinedAt: !827)
!1169 = !DILocation(line: 480, column: 10, scope: !814, inlinedAt: !827)
!1170 = !DILocation(line: 519, column: 28, scope: !1171, inlinedAt: !827)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 519, column: 3)
!1172 = distinct !DILexicalBlock(scope: !814, file: !3, line: 519, column: 3)
!1173 = !DILocation(line: 519, column: 3, scope: !1172, inlinedAt: !827)
!1174 = !DILocation(line: 520, column: 5, scope: !1171, inlinedAt: !827)
!1175 = !DILocation(line: 519, column: 39, scope: !1171, inlinedAt: !827)
!1176 = distinct !{!1176, !1177, !1178}
!1177 = !DILocation(line: 519, column: 3, scope: !1172)
!1178 = !DILocation(line: 520, column: 7, scope: !1172)
!1179 = !DILocation(line: 0, scope: !1171, inlinedAt: !827)
!1180 = !DILocation(line: 525, column: 16, scope: !814, inlinedAt: !827)
!1181 = !DILocation(line: 526, column: 1, scope: !814, inlinedAt: !827)
!1182 = !DILocation(line: 573, column: 24, scope: !760)
!1183 = !DILocation(line: 573, column: 11, scope: !760)
!1184 = !DILocation(line: 574, column: 24, scope: !760)
!1185 = !DILocation(line: 574, column: 11, scope: !760)
!1186 = !DILocation(line: 575, column: 11, scope: !760)
!1187 = !DILocation(line: 577, column: 9, scope: !760)
!1188 = !DILocation(line: 578, column: 9, scope: !760)
!1189 = !DILocation(line: 580, column: 11, scope: !760)
!1190 = !DILocation(line: 584, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !67, file: !3, line: 584, column: 7)
!1192 = !DILocation(line: 584, column: 14, scope: !1191)
!1193 = !DILocation(line: 584, column: 21, scope: !1191)
!1194 = !DILocation(line: 584, column: 24, scope: !1191)
!1195 = !DILocation(line: 584, column: 7, scope: !67)
!1196 = !DILocation(line: 587, column: 7, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 585, column: 5)
!1198 = !DILocation(line: 590, column: 7, scope: !67)
!1199 = !DILocation(line: 590, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !67, file: !3, line: 590, column: 7)
!1201 = !DILocation(line: 592, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 592, column: 7)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 591, column: 5)
!1204 = !DILocation(line: 592, column: 7, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 592, column: 7)
!1206 = !DILocation(line: 594, column: 15, scope: !1203)
!1207 = !DILocation(line: 595, column: 5, scope: !1203)
!1208 = !DILocalVariable(name: "i", scope: !1209, file: !3, line: 117, type: !34)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 117, column: 3)
!1210 = distinct !DISubprogram(name: "unset_envvars", scope: !3, file: !3, line: 115, type: !690, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1211)
!1211 = !{!1208}
!1212 = !DILocation(line: 117, column: 15, scope: !1209, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 597, column: 5, scope: !1200)
!1214 = !DILocation(line: 117, column: 26, scope: !1215, inlinedAt: !1213)
!1215 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 117, column: 3)
!1216 = !DILocation(line: 117, column: 24, scope: !1215, inlinedAt: !1213)
!1217 = !DILocation(line: 117, column: 3, scope: !1209, inlinedAt: !1213)
!1218 = !DILocation(line: 119, column: 7, scope: !1219, inlinedAt: !1213)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 119, column: 7)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 118, column: 5)
!1221 = !DILocation(line: 119, column: 7, scope: !1222, inlinedAt: !1213)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 119, column: 7)
!1223 = !DILocation(line: 121, column: 21, scope: !1224, inlinedAt: !1213)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 121, column: 11)
!1225 = !DILocation(line: 121, column: 11, scope: !1224, inlinedAt: !1213)
!1226 = !DILocation(line: 121, column: 11, scope: !1220, inlinedAt: !1213)
!1227 = !DILocation(line: 122, column: 9, scope: !1224, inlinedAt: !1213)
!1228 = !DILocation(line: 117, column: 39, scope: !1215, inlinedAt: !1213)
!1229 = distinct !{!1229, !1230, !1231}
!1230 = !DILocation(line: 117, column: 3, scope: !1209)
!1231 = !DILocation(line: 124, column: 5, scope: !1209)
!1232 = !DILocation(line: 600, column: 10, scope: !67)
!1233 = !DILocation(line: 600, column: 17, scope: !67)
!1234 = !DILocation(line: 600, column: 24, scope: !67)
!1235 = !DILocation(line: 600, column: 41, scope: !67)
!1236 = !DILocation(line: 600, column: 33, scope: !67)
!1237 = !DILocation(line: 599, column: 9, scope: !67)
!1238 = !DILocation(line: 600, column: 3, scope: !67)
!1239 = !DILocation(line: 602, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 602, column: 7)
!1241 = distinct !DILexicalBlock(scope: !67, file: !3, line: 601, column: 5)
!1242 = !DILocation(line: 602, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 602, column: 7)
!1244 = !DILocation(line: 604, column: 24, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 604, column: 11)
!1246 = !DILocation(line: 604, column: 19, scope: !1245)
!1247 = !DILocation(line: 604, column: 11, scope: !1245)
!1248 = !DILocation(line: 604, column: 11, scope: !1241)
!1249 = !DILocation(line: 606, column: 15, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 605, column: 9)
!1251 = !DILocation(line: 607, column: 11, scope: !1250)
!1252 = !DILocation(line: 610, column: 13, scope: !1241)
!1253 = distinct !{!1253, !1238, !1254}
!1254 = !DILocation(line: 611, column: 5, scope: !67)
!1255 = !DILocation(line: 615, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !67, file: !3, line: 615, column: 7)
!1257 = !DILocation(line: 615, column: 32, scope: !1256)
!1258 = !DILocation(line: 617, column: 20, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 616, column: 5)
!1260 = !DILocation(line: 617, column: 7, scope: !1259)
!1261 = !DILocation(line: 618, column: 7, scope: !1259)
!1262 = !DILocation(line: 621, column: 7, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !67, file: !3, line: 621, column: 7)
!1264 = !DILocation(line: 621, column: 14, scope: !1263)
!1265 = !DILocation(line: 623, column: 20, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 622, column: 5)
!1267 = !DILocation(line: 623, column: 7, scope: !1266)
!1268 = !DILocation(line: 624, column: 7, scope: !1266)
!1269 = !DILocation(line: 630, column: 24, scope: !84)
!1270 = !DILocation(line: 630, column: 20, scope: !84)
!1271 = !DILocation(line: 631, column: 14, scope: !84)
!1272 = !DILocation(line: 631, column: 7, scope: !84)
!1273 = !DILocation(line: 632, column: 9, scope: !84)
!1274 = distinct !{!1274, !1272, !1273}
!1275 = !DILocation(line: 636, column: 7, scope: !67)
!1276 = !DILocation(line: 638, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 638, column: 7)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 637, column: 5)
!1279 = distinct !DILexicalBlock(scope: !67, file: !3, line: 636, column: 7)
!1280 = !DILocation(line: 638, column: 7, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 638, column: 7)
!1282 = !DILocation(line: 640, column: 11, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 640, column: 11)
!1284 = !DILocation(line: 640, column: 26, scope: !1283)
!1285 = !DILocation(line: 640, column: 11, scope: !1278)
!1286 = !DILocation(line: 641, column: 9, scope: !1283)
!1287 = !DILocation(line: 645, column: 7, scope: !67)
!1288 = !DILocation(line: 647, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 647, column: 7)
!1290 = distinct !DILexicalBlock(scope: !90, file: !3, line: 647, column: 7)
!1291 = !DILocation(line: 648, column: 18, scope: !89)
!1292 = !DILocation(line: 648, column: 16, scope: !89)
!1293 = !DILocation(line: 648, column: 27, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !89, file: !3, line: 648, column: 7)
!1295 = !DILocation(line: 648, column: 7, scope: !89)
!1296 = !DILocation(line: 649, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 649, column: 9)
!1298 = !DILocation(line: 649, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 649, column: 9)
!1300 = !DILocation(line: 648, column: 34, scope: !1294)
!1301 = distinct !{!1301, !1295, !1302}
!1302 = !DILocation(line: 649, column: 9, scope: !89)
!1303 = !DILocation(line: 652, column: 16, scope: !67)
!1304 = !DILocation(line: 652, column: 11, scope: !67)
!1305 = !DILocation(line: 652, column: 3, scope: !67)
!1306 = !DILocation(line: 654, column: 21, scope: !67)
!1307 = !DILocation(line: 654, column: 27, scope: !67)
!1308 = !DILocation(line: 655, column: 38, scope: !67)
!1309 = !DILocation(line: 655, column: 33, scope: !67)
!1310 = !DILocation(line: 655, column: 26, scope: !67)
!1311 = !DILocation(line: 655, column: 3, scope: !67)
!1312 = !DILocation(line: 657, column: 34, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !67, file: !3, line: 657, column: 7)
!1314 = !DILocation(line: 657, column: 50, scope: !1313)
!1315 = !DILocation(line: 657, column: 45, scope: !1313)
!1316 = !DILocation(line: 657, column: 37, scope: !1313)
!1317 = !DILocation(line: 657, column: 7, scope: !67)
!1318 = !DILocation(line: 658, column: 18, scope: !1313)
!1319 = !DILocation(line: 658, column: 5, scope: !1313)
!1320 = !DILocation(line: 0, scope: !84)
!1321 = !DILocation(line: 661, column: 1, scope: !67)
!1322 = distinct !DISubprogram(name: "extract_varname", scope: !3, file: !3, line: 181, type: !1323, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1325)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!60, !79}
!1325 = !{!1326, !1327, !1330}
!1326 = !DILocalVariable(name: "str", arg: 1, scope: !1322, file: !3, line: 181, type: !79)
!1327 = !DILocalVariable(name: "i", scope: !1322, file: !3, line: 183, type: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !35, line: 51, baseType: !1329)
!1329 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1330 = !DILocalVariable(name: "p", scope: !1322, file: !3, line: 184, type: !79)
!1331 = !DILocation(line: 181, column: 30, scope: !1322)
!1332 = !DILocalVariable(name: "str", arg: 1, scope: !1333, file: !3, line: 160, type: !79)
!1333 = distinct !DISubprogram(name: "scan_varname", scope: !3, file: !3, line: 160, type: !1334, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1336)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!79, !79}
!1336 = !{!1332, !1337}
!1337 = !DILocalVariable(name: "end", scope: !1338, file: !3, line: 165, type: !79)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 164, column: 5)
!1339 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 163, column: 8)
!1340 = !DILocation(line: 160, column: 27, scope: !1333, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 186, column: 7, scope: !1322)
!1342 = !DILocation(line: 162, column: 3, scope: !1343, inlinedAt: !1341)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 162, column: 3)
!1344 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 162, column: 3)
!1345 = !DILocation(line: 162, column: 3, scope: !1344, inlinedAt: !1341)
!1346 = !DILocation(line: 163, column: 13, scope: !1339, inlinedAt: !1341)
!1347 = !DILocation(line: 163, column: 8, scope: !1339, inlinedAt: !1341)
!1348 = !DILocation(line: 163, column: 17, scope: !1339, inlinedAt: !1341)
!1349 = !DILocation(line: 163, column: 24, scope: !1339, inlinedAt: !1341)
!1350 = !DILocation(line: 163, column: 44, scope: !1339, inlinedAt: !1341)
!1351 = !DILocation(line: 163, column: 39, scope: !1339, inlinedAt: !1341)
!1352 = !DILocalVariable(name: "c", arg: 1, scope: !1353, file: !1354, line: 183, type: !62)
!1353 = distinct !DISubprogram(name: "c_isalpha", scope: !1354, file: !1354, line: 183, type: !1355, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1357)
!1354 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!76, !62}
!1357 = !{!1352}
!1358 = !DILocation(line: 183, column: 16, scope: !1353, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 163, column: 28, scope: !1339, inlinedAt: !1341)
!1360 = !DILocation(line: 185, column: 3, scope: !1353, inlinedAt: !1359)
!1361 = !DILocation(line: 163, column: 61, scope: !1339, inlinedAt: !1341)
!1362 = !DILocation(line: 163, column: 8, scope: !1333, inlinedAt: !1341)
!1363 = !DILocation(line: 165, column: 28, scope: !1338, inlinedAt: !1341)
!1364 = !DILocation(line: 165, column: 19, scope: !1338, inlinedAt: !1341)
!1365 = !DILocation(line: 166, column: 7, scope: !1338, inlinedAt: !1341)
!1366 = !DILocation(line: 0, scope: !1338, inlinedAt: !1341)
!1367 = !DILocation(line: 166, column: 25, scope: !1338, inlinedAt: !1341)
!1368 = !DILocation(line: 166, column: 14, scope: !1338, inlinedAt: !1341)
!1369 = !DILocation(line: 166, column: 31, scope: !1338, inlinedAt: !1341)
!1370 = !DILocation(line: 166, column: 34, scope: !1338, inlinedAt: !1341)
!1371 = !DILocation(line: 167, column: 9, scope: !1338, inlinedAt: !1341)
!1372 = distinct !{!1372, !1373, !1374}
!1373 = !DILocation(line: 166, column: 7, scope: !1338)
!1374 = !DILocation(line: 167, column: 11, scope: !1338)
!1375 = !DILocation(line: 184, column: 15, scope: !1322)
!1376 = !DILocation(line: 191, column: 9, scope: !1322)
!1377 = !DILocation(line: 191, column: 15, scope: !1322)
!1378 = !DILocation(line: 183, column: 13, scope: !1322)
!1379 = !DILocation(line: 193, column: 12, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 193, column: 7)
!1381 = !DILocation(line: 193, column: 9, scope: !1380)
!1382 = !DILocation(line: 193, column: 7, scope: !1322)
!1383 = !DILocation(line: 199, column: 11, scope: !1322)
!1384 = !DILocation(line: 195, column: 17, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 194, column: 5)
!1386 = !DILocation(line: 195, column: 13, scope: !1385)
!1387 = !DILocation(line: 196, column: 27, scope: !1385)
!1388 = !DILocation(line: 196, column: 17, scope: !1385)
!1389 = !DILocation(line: 196, column: 15, scope: !1385)
!1390 = !DILocation(line: 197, column: 5, scope: !1385)
!1391 = !DILocation(line: 199, column: 3, scope: !1322)
!1392 = !DILocation(line: 200, column: 3, scope: !1322)
!1393 = !DILocation(line: 200, column: 13, scope: !1322)
!1394 = !DILocation(line: 202, column: 3, scope: !1322)
!1395 = !DILocation(line: 0, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 187, column: 7)
!1397 = !DILocation(line: 203, column: 1, scope: !1322)
!1398 = distinct !DISubprogram(name: "c_isalnum", scope: !1354, file: !1354, line: 169, type: !1355, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1399)
!1399 = !{!1400}
!1400 = !DILocalVariable(name: "c", arg: 1, scope: !1398, file: !1354, line: 169, type: !62)
!1401 = !DILocation(line: 169, column: 16, scope: !1398)
!1402 = !DILocation(line: 171, column: 3, scope: !1398)
!1403 = !DILocation(line: 178, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1398, file: !1354, line: 172, column: 5)
!1405 = !DILocation(line: 0, scope: !1404)
!1406 = !DILocation(line: 180, column: 1, scope: !1398)
!1407 = distinct !DISubprogram(name: "c_isalpha", scope: !1354, file: !1354, line: 183, type: !1355, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1408)
!1408 = !{!1409}
!1409 = !DILocalVariable(name: "c", arg: 1, scope: !1407, file: !1354, line: 183, type: !62)
!1410 = !DILocation(line: 183, column: 16, scope: !1407)
!1411 = !DILocation(line: 185, column: 3, scope: !1407)
!1412 = !DILocation(line: 193, column: 1, scope: !1407)
!1413 = distinct !DISubprogram(name: "c_isascii", scope: !1354, file: !1354, line: 198, type: !1355, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1414)
!1414 = !{!1415}
!1415 = !DILocalVariable(name: "c", arg: 1, scope: !1413, file: !1354, line: 198, type: !62)
!1416 = !DILocation(line: 198, column: 16, scope: !1413)
!1417 = !DILocation(line: 200, column: 3, scope: !1413)
!1418 = !DILocation(line: 212, column: 1, scope: !1413)
!1419 = distinct !DISubprogram(name: "c_isblank", scope: !1354, file: !1354, line: 215, type: !1355, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1420)
!1420 = !{!1421}
!1421 = !DILocalVariable(name: "c", arg: 1, scope: !1419, file: !1354, line: 215, type: !62)
!1422 = !DILocation(line: 215, column: 16, scope: !1419)
!1423 = !DILocation(line: 217, column: 12, scope: !1419)
!1424 = !DILocation(line: 217, column: 24, scope: !1419)
!1425 = !DILocation(line: 217, column: 19, scope: !1419)
!1426 = !DILocation(line: 217, column: 3, scope: !1419)
!1427 = distinct !DISubprogram(name: "c_iscntrl", scope: !1354, file: !1354, line: 221, type: !1355, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1428)
!1428 = !{!1429}
!1429 = !DILocalVariable(name: "c", arg: 1, scope: !1427, file: !1354, line: 221, type: !62)
!1430 = !DILocation(line: 221, column: 16, scope: !1427)
!1431 = !DILocation(line: 223, column: 3, scope: !1427)
!1432 = !DILocation(line: 228, column: 7, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1427, file: !1354, line: 224, column: 5)
!1434 = !DILocation(line: 0, scope: !1433)
!1435 = !DILocation(line: 230, column: 1, scope: !1427)
!1436 = distinct !DISubprogram(name: "c_isdigit", scope: !1354, file: !1354, line: 233, type: !1355, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1437)
!1437 = !{!1438}
!1438 = !DILocalVariable(name: "c", arg: 1, scope: !1436, file: !1354, line: 233, type: !62)
!1439 = !DILocation(line: 233, column: 16, scope: !1436)
!1440 = !DILocation(line: 235, column: 3, scope: !1436)
!1441 = !DILocation(line: 242, column: 1, scope: !1436)
!1442 = distinct !DISubprogram(name: "c_isgraph", scope: !1354, file: !1354, line: 245, type: !1355, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1443)
!1443 = !{!1444}
!1444 = !DILocalVariable(name: "c", arg: 1, scope: !1442, file: !1354, line: 245, type: !62)
!1445 = !DILocation(line: 245, column: 16, scope: !1442)
!1446 = !DILocation(line: 247, column: 3, scope: !1442)
!1447 = !DILocation(line: 257, column: 1, scope: !1442)
!1448 = distinct !DISubprogram(name: "c_islower", scope: !1354, file: !1354, line: 260, type: !1355, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1449)
!1449 = !{!1450}
!1450 = !DILocalVariable(name: "c", arg: 1, scope: !1448, file: !1354, line: 260, type: !62)
!1451 = !DILocation(line: 260, column: 16, scope: !1448)
!1452 = !DILocation(line: 262, column: 3, scope: !1448)
!1453 = !DILocation(line: 269, column: 1, scope: !1448)
!1454 = distinct !DISubprogram(name: "c_isprint", scope: !1354, file: !1354, line: 272, type: !1355, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1455)
!1455 = !{!1456}
!1456 = !DILocalVariable(name: "c", arg: 1, scope: !1454, file: !1354, line: 272, type: !62)
!1457 = !DILocation(line: 272, column: 16, scope: !1454)
!1458 = !DILocation(line: 274, column: 3, scope: !1454)
!1459 = !DILocation(line: 285, column: 1, scope: !1454)
!1460 = distinct !DISubprogram(name: "c_ispunct", scope: !1354, file: !1354, line: 288, type: !1355, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1461)
!1461 = !{!1462}
!1462 = !DILocalVariable(name: "c", arg: 1, scope: !1460, file: !1354, line: 288, type: !62)
!1463 = !DILocation(line: 288, column: 16, scope: !1460)
!1464 = !DILocation(line: 290, column: 3, scope: !1460)
!1465 = !DILocation(line: 295, column: 7, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1460, file: !1354, line: 291, column: 5)
!1467 = !DILocation(line: 0, scope: !1466)
!1468 = !DILocation(line: 297, column: 1, scope: !1460)
!1469 = distinct !DISubprogram(name: "c_isspace", scope: !1354, file: !1354, line: 300, type: !1355, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1470)
!1470 = !{!1471}
!1471 = !DILocalVariable(name: "c", arg: 1, scope: !1469, file: !1354, line: 300, type: !62)
!1472 = !DILocation(line: 300, column: 16, scope: !1469)
!1473 = !DILocation(line: 302, column: 3, scope: !1469)
!1474 = !DILocation(line: 309, column: 1, scope: !1469)
!1475 = distinct !DISubprogram(name: "c_isupper", scope: !1354, file: !1354, line: 312, type: !1355, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1476)
!1476 = !{!1477}
!1477 = !DILocalVariable(name: "c", arg: 1, scope: !1475, file: !1354, line: 312, type: !62)
!1478 = !DILocation(line: 312, column: 16, scope: !1475)
!1479 = !DILocation(line: 314, column: 3, scope: !1475)
!1480 = !DILocation(line: 321, column: 1, scope: !1475)
!1481 = distinct !DISubprogram(name: "c_isxdigit", scope: !1354, file: !1354, line: 324, type: !1355, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1482)
!1482 = !{!1483}
!1483 = !DILocalVariable(name: "c", arg: 1, scope: !1481, file: !1354, line: 324, type: !62)
!1484 = !DILocation(line: 324, column: 17, scope: !1481)
!1485 = !DILocation(line: 326, column: 3, scope: !1481)
!1486 = !DILocation(line: 334, column: 1, scope: !1481)
!1487 = distinct !DISubprogram(name: "c_tolower", scope: !1354, file: !1354, line: 337, type: !1488, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!62, !62}
!1490 = !{!1491}
!1491 = !DILocalVariable(name: "c", arg: 1, scope: !1487, file: !1354, line: 337, type: !62)
!1492 = !DILocation(line: 337, column: 16, scope: !1487)
!1493 = !DILocation(line: 339, column: 3, scope: !1487)
!1494 = !DILocation(line: 342, column: 22, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1487, file: !1354, line: 340, column: 5)
!1496 = !DILocation(line: 346, column: 1, scope: !1487)
!1497 = distinct !DISubprogram(name: "c_toupper", scope: !1354, file: !1354, line: 349, type: !1488, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1498)
!1498 = !{!1499}
!1499 = !DILocalVariable(name: "c", arg: 1, scope: !1497, file: !1354, line: 349, type: !62)
!1500 = !DILocation(line: 349, column: 16, scope: !1497)
!1501 = !DILocation(line: 351, column: 3, scope: !1497)
!1502 = !DILocation(line: 354, column: 22, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1497, file: !1354, line: 352, column: 5)
!1504 = !DILocation(line: 358, column: 1, scope: !1497)
!1505 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !140, file: !140, line: 51, type: !657, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !135, retainedNodes: !1506)
!1506 = !{!1507}
!1507 = !DILocalVariable(name: "file", arg: 1, scope: !1505, file: !140, line: 51, type: !79)
!1508 = !DILocation(line: 51, column: 41, scope: !1505)
!1509 = !DILocation(line: 53, column: 13, scope: !1505)
!1510 = !DILocation(line: 54, column: 1, scope: !1505)
!1511 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !140, file: !140, line: 88, type: !1512, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !135, retainedNodes: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !76}
!1514 = !{!1515}
!1515 = !DILocalVariable(name: "ignore", arg: 1, scope: !1511, file: !140, line: 88, type: !76)
!1516 = !DILocation(line: 88, column: 37, scope: !1511)
!1517 = !DILocation(line: 90, column: 16, scope: !1511)
!1518 = !{!1519, !1519, i64 0}
!1519 = !{!"_Bool", !684, i64 0}
!1520 = !DILocation(line: 91, column: 1, scope: !1511)
!1521 = distinct !DISubprogram(name: "close_stdout", scope: !140, file: !140, line: 117, type: !690, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !135, retainedNodes: !1522)
!1522 = !{!1523}
!1523 = !DILocalVariable(name: "write_error", scope: !1524, file: !140, line: 122, type: !79)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !140, line: 121, column: 5)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !140, line: 119, column: 7)
!1526 = !DILocation(line: 119, column: 21, scope: !1525)
!1527 = !DILocation(line: 119, column: 7, scope: !1525)
!1528 = !DILocation(line: 119, column: 29, scope: !1525)
!1529 = !DILocation(line: 120, column: 7, scope: !1525)
!1530 = !DILocation(line: 120, column: 12, scope: !1525)
!1531 = !{i8 0, i8 2}
!1532 = !DILocation(line: 120, column: 25, scope: !1525)
!1533 = !DILocation(line: 120, column: 28, scope: !1525)
!1534 = !DILocation(line: 120, column: 34, scope: !1525)
!1535 = !DILocation(line: 119, column: 7, scope: !1521)
!1536 = !DILocation(line: 122, column: 33, scope: !1524)
!1537 = !DILocation(line: 122, column: 19, scope: !1524)
!1538 = !DILocation(line: 123, column: 11, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1524, file: !140, line: 123, column: 11)
!1540 = !DILocation(line: 0, scope: !1539)
!1541 = !DILocation(line: 123, column: 11, scope: !1524)
!1542 = !DILocation(line: 124, column: 36, scope: !1539)
!1543 = !DILocation(line: 124, column: 9, scope: !1539)
!1544 = !DILocation(line: 127, column: 9, scope: !1539)
!1545 = !DILocation(line: 129, column: 14, scope: !1524)
!1546 = !DILocation(line: 129, column: 7, scope: !1524)
!1547 = !DILocation(line: 134, column: 42, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1521, file: !140, line: 134, column: 7)
!1549 = !DILocation(line: 134, column: 28, scope: !1548)
!1550 = !DILocation(line: 134, column: 50, scope: !1548)
!1551 = !DILocation(line: 134, column: 7, scope: !1521)
!1552 = !DILocation(line: 135, column: 12, scope: !1548)
!1553 = !DILocation(line: 135, column: 5, scope: !1548)
!1554 = !DILocation(line: 136, column: 1, scope: !1521)
!1555 = distinct !DISubprogram(name: "set_program_name", scope: !154, file: !154, line: 39, type: !657, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DILocalVariable(name: "argv0", arg: 1, scope: !1555, file: !154, line: 39, type: !79)
!1558 = !DILocalVariable(name: "slash", scope: !1555, file: !154, line: 46, type: !79)
!1559 = !DILocalVariable(name: "base", scope: !1555, file: !154, line: 47, type: !79)
!1560 = !DILocation(line: 39, column: 31, scope: !1555)
!1561 = !DILocation(line: 51, column: 13, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1555, file: !154, line: 51, column: 7)
!1563 = !DILocation(line: 51, column: 7, scope: !1555)
!1564 = !DILocation(line: 55, column: 14, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !154, line: 52, column: 5)
!1566 = !DILocation(line: 54, column: 7, scope: !1565)
!1567 = !DILocation(line: 56, column: 7, scope: !1565)
!1568 = !DILocation(line: 59, column: 11, scope: !1555)
!1569 = !DILocation(line: 46, column: 15, scope: !1555)
!1570 = !DILocation(line: 60, column: 17, scope: !1555)
!1571 = !DILocation(line: 60, column: 33, scope: !1555)
!1572 = !DILocation(line: 60, column: 11, scope: !1555)
!1573 = !DILocation(line: 47, column: 15, scope: !1555)
!1574 = !DILocation(line: 61, column: 12, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1555, file: !154, line: 61, column: 7)
!1576 = !DILocation(line: 61, column: 20, scope: !1575)
!1577 = !DILocation(line: 61, column: 25, scope: !1575)
!1578 = !DILocation(line: 61, column: 42, scope: !1575)
!1579 = !DILocation(line: 61, column: 28, scope: !1575)
!1580 = !DILocation(line: 61, column: 61, scope: !1575)
!1581 = !DILocation(line: 61, column: 7, scope: !1555)
!1582 = !DILocation(line: 64, column: 11, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !154, line: 64, column: 11)
!1584 = distinct !DILexicalBlock(scope: !1575, file: !154, line: 62, column: 5)
!1585 = !DILocation(line: 64, column: 36, scope: !1583)
!1586 = !DILocation(line: 64, column: 11, scope: !1584)
!1587 = !DILocation(line: 66, column: 24, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !154, line: 65, column: 9)
!1589 = !DILocation(line: 70, column: 41, scope: !1588)
!1590 = !DILocation(line: 72, column: 9, scope: !1588)
!1591 = !DILocation(line: 84, column: 16, scope: !1555)
!1592 = !DILocation(line: 90, column: 27, scope: !1555)
!1593 = !DILocation(line: 92, column: 1, scope: !1555)
!1594 = distinct !DISubprogram(name: "clone_quoting_options", scope: !169, file: !169, line: 122, type: !1595, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !1598)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!1597, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!1598 = !{!1599, !1600, !1601}
!1599 = !DILocalVariable(name: "o", arg: 1, scope: !1594, file: !169, line: 122, type: !1597)
!1600 = !DILocalVariable(name: "e", scope: !1594, file: !169, line: 124, type: !62)
!1601 = !DILocalVariable(name: "p", scope: !1594, file: !169, line: 125, type: !1597)
!1602 = !DILocation(line: 122, column: 48, scope: !1594)
!1603 = !DILocation(line: 124, column: 11, scope: !1594)
!1604 = !DILocation(line: 124, column: 7, scope: !1594)
!1605 = !DILocation(line: 125, column: 40, scope: !1594)
!1606 = !DILocation(line: 125, column: 31, scope: !1594)
!1607 = !DILocation(line: 125, column: 27, scope: !1594)
!1608 = !DILocation(line: 127, column: 9, scope: !1594)
!1609 = !DILocation(line: 128, column: 3, scope: !1594)
!1610 = distinct !DISubprogram(name: "get_quoting_style", scope: !169, file: !169, line: 133, type: !1611, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !1615)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!13, !1613}
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!1615 = !{!1616}
!1616 = !DILocalVariable(name: "o", arg: 1, scope: !1610, file: !169, line: 133, type: !1613)
!1617 = !DILocation(line: 133, column: 50, scope: !1610)
!1618 = !DILocation(line: 135, column: 11, scope: !1610)
!1619 = !DILocation(line: 135, column: 46, scope: !1610)
!1620 = !{!1621, !684, i64 0}
!1621 = !{!"quoting_options", !684, i64 0, !752, i64 4, !684, i64 8, !683, i64 40, !683, i64 48}
!1622 = !DILocation(line: 135, column: 3, scope: !1610)
!1623 = distinct !DISubprogram(name: "set_quoting_style", scope: !169, file: !169, line: 141, type: !1624, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !1626)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1597, !13}
!1626 = !{!1627, !1628}
!1627 = !DILocalVariable(name: "o", arg: 1, scope: !1623, file: !169, line: 141, type: !1597)
!1628 = !DILocalVariable(name: "s", arg: 2, scope: !1623, file: !169, line: 141, type: !13)
!1629 = !DILocation(line: 141, column: 44, scope: !1623)
!1630 = !DILocation(line: 141, column: 66, scope: !1623)
!1631 = !DILocation(line: 143, column: 4, scope: !1623)
!1632 = !DILocation(line: 143, column: 39, scope: !1623)
!1633 = !DILocation(line: 143, column: 45, scope: !1623)
!1634 = !DILocation(line: 144, column: 1, scope: !1623)
!1635 = distinct !DISubprogram(name: "set_char_quoting", scope: !169, file: !169, line: 152, type: !1636, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !1638)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!62, !1597, !61, !62}
!1638 = !{!1639, !1640, !1641, !1642, !1644, !1646, !1647}
!1639 = !DILocalVariable(name: "o", arg: 1, scope: !1635, file: !169, line: 152, type: !1597)
!1640 = !DILocalVariable(name: "c", arg: 2, scope: !1635, file: !169, line: 152, type: !61)
!1641 = !DILocalVariable(name: "i", arg: 3, scope: !1635, file: !169, line: 152, type: !62)
!1642 = !DILocalVariable(name: "uc", scope: !1635, file: !169, line: 154, type: !1643)
!1643 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1644 = !DILocalVariable(name: "p", scope: !1635, file: !169, line: 155, type: !1645)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1646 = !DILocalVariable(name: "shift", scope: !1635, file: !169, line: 157, type: !62)
!1647 = !DILocalVariable(name: "r", scope: !1635, file: !169, line: 158, type: !62)
!1648 = !DILocation(line: 152, column: 43, scope: !1635)
!1649 = !DILocation(line: 152, column: 51, scope: !1635)
!1650 = !DILocation(line: 152, column: 58, scope: !1635)
!1651 = !DILocation(line: 154, column: 17, scope: !1635)
!1652 = !DILocation(line: 156, column: 6, scope: !1635)
!1653 = !DILocation(line: 156, column: 62, scope: !1635)
!1654 = !DILocation(line: 156, column: 57, scope: !1635)
!1655 = !DILocation(line: 155, column: 17, scope: !1635)
!1656 = !DILocation(line: 157, column: 15, scope: !1635)
!1657 = !DILocation(line: 157, column: 7, scope: !1635)
!1658 = !DILocation(line: 158, column: 12, scope: !1635)
!1659 = !DILocation(line: 158, column: 15, scope: !1635)
!1660 = !DILocation(line: 158, column: 25, scope: !1635)
!1661 = !DILocation(line: 158, column: 7, scope: !1635)
!1662 = !DILocation(line: 159, column: 13, scope: !1635)
!1663 = !DILocation(line: 159, column: 18, scope: !1635)
!1664 = !DILocation(line: 159, column: 23, scope: !1635)
!1665 = !DILocation(line: 159, column: 6, scope: !1635)
!1666 = !DILocation(line: 160, column: 3, scope: !1635)
!1667 = distinct !DISubprogram(name: "set_quoting_flags", scope: !169, file: !169, line: 168, type: !1668, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !1670)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!62, !1597, !62}
!1670 = !{!1671, !1672, !1673}
!1671 = !DILocalVariable(name: "o", arg: 1, scope: !1667, file: !169, line: 168, type: !1597)
!1672 = !DILocalVariable(name: "i", arg: 2, scope: !1667, file: !169, line: 168, type: !62)
!1673 = !DILocalVariable(name: "r", scope: !1667, file: !169, line: 170, type: !62)
!1674 = !DILocation(line: 168, column: 44, scope: !1667)
!1675 = !DILocation(line: 168, column: 51, scope: !1667)
!1676 = !DILocation(line: 171, column: 8, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1667, file: !169, line: 171, column: 7)
!1678 = !DILocation(line: 171, column: 7, scope: !1667)
!1679 = !DILocation(line: 173, column: 10, scope: !1667)
!1680 = !{!1621, !752, i64 4}
!1681 = !DILocation(line: 170, column: 7, scope: !1667)
!1682 = !DILocation(line: 174, column: 12, scope: !1667)
!1683 = !DILocation(line: 175, column: 3, scope: !1667)
!1684 = distinct !DISubprogram(name: "set_custom_quoting", scope: !169, file: !169, line: 179, type: !1685, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !1687)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !1597, !79, !79}
!1687 = !{!1688, !1689, !1690}
!1688 = !DILocalVariable(name: "o", arg: 1, scope: !1684, file: !169, line: 179, type: !1597)
!1689 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1684, file: !169, line: 180, type: !79)
!1690 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1684, file: !169, line: 180, type: !79)
!1691 = !DILocation(line: 179, column: 45, scope: !1684)
!1692 = !DILocation(line: 180, column: 33, scope: !1684)
!1693 = !DILocation(line: 180, column: 57, scope: !1684)
!1694 = !DILocation(line: 182, column: 8, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1684, file: !169, line: 182, column: 7)
!1696 = !DILocation(line: 182, column: 7, scope: !1684)
!1697 = !DILocation(line: 184, column: 6, scope: !1684)
!1698 = !DILocation(line: 184, column: 12, scope: !1684)
!1699 = !DILocation(line: 185, column: 8, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1684, file: !169, line: 185, column: 7)
!1701 = !DILocation(line: 185, column: 23, scope: !1700)
!1702 = !DILocation(line: 185, column: 19, scope: !1700)
!1703 = !DILocation(line: 186, column: 5, scope: !1700)
!1704 = !DILocation(line: 187, column: 6, scope: !1684)
!1705 = !DILocation(line: 187, column: 17, scope: !1684)
!1706 = !{!1621, !683, i64 40}
!1707 = !DILocation(line: 188, column: 6, scope: !1684)
!1708 = !DILocation(line: 188, column: 18, scope: !1684)
!1709 = !{!1621, !683, i64 48}
!1710 = !DILocation(line: 189, column: 1, scope: !1684)
!1711 = distinct !DISubprogram(name: "quotearg_buffer", scope: !169, file: !169, line: 784, type: !1712, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!34, !60, !34, !79, !34, !1613}
!1714 = !{!1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1715 = !DILocalVariable(name: "buffer", arg: 1, scope: !1711, file: !169, line: 784, type: !60)
!1716 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1711, file: !169, line: 784, type: !34)
!1717 = !DILocalVariable(name: "arg", arg: 3, scope: !1711, file: !169, line: 785, type: !79)
!1718 = !DILocalVariable(name: "argsize", arg: 4, scope: !1711, file: !169, line: 785, type: !34)
!1719 = !DILocalVariable(name: "o", arg: 5, scope: !1711, file: !169, line: 786, type: !1613)
!1720 = !DILocalVariable(name: "p", scope: !1711, file: !169, line: 788, type: !1613)
!1721 = !DILocalVariable(name: "e", scope: !1711, file: !169, line: 789, type: !62)
!1722 = !DILocalVariable(name: "r", scope: !1711, file: !169, line: 790, type: !34)
!1723 = !DILocation(line: 784, column: 24, scope: !1711)
!1724 = !DILocation(line: 784, column: 39, scope: !1711)
!1725 = !DILocation(line: 785, column: 30, scope: !1711)
!1726 = !DILocation(line: 785, column: 42, scope: !1711)
!1727 = !DILocation(line: 786, column: 48, scope: !1711)
!1728 = !DILocation(line: 788, column: 37, scope: !1711)
!1729 = !DILocation(line: 788, column: 33, scope: !1711)
!1730 = !DILocation(line: 789, column: 11, scope: !1711)
!1731 = !DILocation(line: 789, column: 7, scope: !1711)
!1732 = !DILocation(line: 791, column: 43, scope: !1711)
!1733 = !DILocation(line: 791, column: 53, scope: !1711)
!1734 = !DILocation(line: 791, column: 60, scope: !1711)
!1735 = !DILocation(line: 792, column: 43, scope: !1711)
!1736 = !DILocation(line: 792, column: 58, scope: !1711)
!1737 = !DILocation(line: 790, column: 14, scope: !1711)
!1738 = !DILocation(line: 790, column: 10, scope: !1711)
!1739 = !DILocation(line: 793, column: 9, scope: !1711)
!1740 = !DILocation(line: 794, column: 3, scope: !1711)
!1741 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !169, file: !169, line: 256, type: !1742, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !1746)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!34, !60, !34, !79, !34, !13, !62, !1744, !79, !79}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1771, !1772, !1773, !1774, !1775, !1778, !1779, !1797, !1800, !1801, !1808}
!1747 = !DILocalVariable(name: "buffer", arg: 1, scope: !1741, file: !169, line: 256, type: !60)
!1748 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1741, file: !169, line: 256, type: !34)
!1749 = !DILocalVariable(name: "arg", arg: 3, scope: !1741, file: !169, line: 257, type: !79)
!1750 = !DILocalVariable(name: "argsize", arg: 4, scope: !1741, file: !169, line: 257, type: !34)
!1751 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1741, file: !169, line: 258, type: !13)
!1752 = !DILocalVariable(name: "flags", arg: 6, scope: !1741, file: !169, line: 258, type: !62)
!1753 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1741, file: !169, line: 259, type: !1744)
!1754 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1741, file: !169, line: 260, type: !79)
!1755 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1741, file: !169, line: 261, type: !79)
!1756 = !DILocalVariable(name: "i", scope: !1741, file: !169, line: 263, type: !34)
!1757 = !DILocalVariable(name: "len", scope: !1741, file: !169, line: 264, type: !34)
!1758 = !DILocalVariable(name: "orig_buffersize", scope: !1741, file: !169, line: 265, type: !34)
!1759 = !DILocalVariable(name: "quote_string", scope: !1741, file: !169, line: 266, type: !79)
!1760 = !DILocalVariable(name: "quote_string_len", scope: !1741, file: !169, line: 267, type: !34)
!1761 = !DILocalVariable(name: "backslash_escapes", scope: !1741, file: !169, line: 268, type: !76)
!1762 = !DILocalVariable(name: "unibyte_locale", scope: !1741, file: !169, line: 269, type: !76)
!1763 = !DILocalVariable(name: "elide_outer_quotes", scope: !1741, file: !169, line: 270, type: !76)
!1764 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1741, file: !169, line: 271, type: !76)
!1765 = !DILocalVariable(name: "encountered_single_quote", scope: !1741, file: !169, line: 272, type: !76)
!1766 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1741, file: !169, line: 273, type: !76)
!1767 = !DILocalVariable(name: "c", scope: !1768, file: !169, line: 402, type: !1643)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !169, line: 401, column: 5)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !169, line: 400, column: 3)
!1770 = distinct !DILexicalBlock(scope: !1741, file: !169, line: 400, column: 3)
!1771 = !DILocalVariable(name: "esc", scope: !1768, file: !169, line: 403, type: !1643)
!1772 = !DILocalVariable(name: "is_right_quote", scope: !1768, file: !169, line: 404, type: !76)
!1773 = !DILocalVariable(name: "escaping", scope: !1768, file: !169, line: 405, type: !76)
!1774 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1768, file: !169, line: 406, type: !76)
!1775 = !DILocalVariable(name: "m", scope: !1776, file: !169, line: 610, type: !34)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !169, line: 608, column: 11)
!1777 = distinct !DILexicalBlock(scope: !1768, file: !169, line: 426, column: 9)
!1778 = !DILocalVariable(name: "printable", scope: !1776, file: !169, line: 612, type: !76)
!1779 = !DILocalVariable(name: "mbstate", scope: !1780, file: !169, line: 621, type: !1782)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !169, line: 620, column: 15)
!1781 = distinct !DILexicalBlock(scope: !1776, file: !169, line: 614, column: 17)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1783, line: 6, baseType: !1784)
!1783 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1785, line: 21, baseType: !1786)
!1785 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1785, line: 13, size: 64, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1786, file: !1785, line: 15, baseType: !62, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1786, file: !1785, line: 20, baseType: !1790, size: 32, offset: 32)
!1790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !1785, line: 16, size: 32, elements: !1791)
!1791 = !{!1792, !1793}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1790, file: !1785, line: 18, baseType: !7, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1790, file: !1785, line: 19, baseType: !1794, size: 32)
!1794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, elements: !1795)
!1795 = !{!1796}
!1796 = !DISubrange(count: 4)
!1797 = !DILocalVariable(name: "w", scope: !1798, file: !169, line: 631, type: !1799)
!1798 = distinct !DILexicalBlock(scope: !1780, file: !169, line: 630, column: 19)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !35, line: 90, baseType: !62)
!1800 = !DILocalVariable(name: "bytes", scope: !1798, file: !169, line: 632, type: !34)
!1801 = !DILocalVariable(name: "j", scope: !1802, file: !169, line: 657, type: !34)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !169, line: 656, column: 27)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !169, line: 654, column: 29)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !169, line: 649, column: 23)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !169, line: 641, column: 30)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !169, line: 636, column: 30)
!1807 = distinct !DILexicalBlock(scope: !1798, file: !169, line: 634, column: 25)
!1808 = !DILocalVariable(name: "ilim", scope: !1809, file: !169, line: 684, type: !34)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !169, line: 681, column: 15)
!1810 = distinct !DILexicalBlock(scope: !1776, file: !169, line: 680, column: 17)
!1811 = !DILocation(line: 256, column: 33, scope: !1741)
!1812 = !DILocation(line: 256, column: 48, scope: !1741)
!1813 = !DILocation(line: 257, column: 39, scope: !1741)
!1814 = !DILocation(line: 257, column: 51, scope: !1741)
!1815 = !DILocation(line: 258, column: 46, scope: !1741)
!1816 = !DILocation(line: 258, column: 65, scope: !1741)
!1817 = !DILocation(line: 259, column: 47, scope: !1741)
!1818 = !DILocation(line: 260, column: 39, scope: !1741)
!1819 = !DILocation(line: 261, column: 39, scope: !1741)
!1820 = !DILocation(line: 264, column: 10, scope: !1741)
!1821 = !DILocation(line: 265, column: 10, scope: !1741)
!1822 = !DILocation(line: 266, column: 15, scope: !1741)
!1823 = !DILocation(line: 267, column: 10, scope: !1741)
!1824 = !DILocation(line: 268, column: 8, scope: !1741)
!1825 = !DILocation(line: 269, column: 25, scope: !1741)
!1826 = !DILocation(line: 269, column: 36, scope: !1741)
!1827 = !DILocation(line: 270, column: 8, scope: !1741)
!1828 = !DILocation(line: 271, column: 8, scope: !1741)
!1829 = !DILocation(line: 272, column: 8, scope: !1741)
!1830 = !DILocation(line: 273, column: 8, scope: !1741)
!1831 = !DILocation(line: 273, column: 3, scope: !1741)
!1832 = !DILocation(line: 0, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1741, file: !169, line: 317, column: 5)
!1834 = !DILocation(line: 316, column: 3, scope: !1741)
!1835 = !DILocation(line: 323, column: 11, scope: !1833)
!1836 = !DILocation(line: 323, column: 12, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1833, file: !169, line: 323, column: 11)
!1838 = !DILocation(line: 324, column: 9, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !169, line: 324, column: 9)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !169, line: 324, column: 9)
!1841 = !DILocation(line: 324, column: 9, scope: !1840)
!1842 = !DILocation(line: 362, column: 26, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !169, line: 340, column: 11)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !169, line: 339, column: 13)
!1845 = distinct !DILexicalBlock(scope: !1833, file: !169, line: 338, column: 7)
!1846 = !DILocation(line: 363, column: 27, scope: !1843)
!1847 = !DILocation(line: 364, column: 11, scope: !1843)
!1848 = !DILocation(line: 365, column: 14, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !169, line: 365, column: 13)
!1850 = !DILocation(line: 365, column: 13, scope: !1845)
!1851 = !DILocation(line: 366, column: 43, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !169, line: 366, column: 11)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !169, line: 366, column: 11)
!1854 = !DILocation(line: 366, column: 11, scope: !1853)
!1855 = !DILocation(line: 367, column: 13, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !169, line: 367, column: 13)
!1857 = distinct !DILexicalBlock(scope: !1852, file: !169, line: 367, column: 13)
!1858 = !DILocation(line: 367, column: 13, scope: !1857)
!1859 = !DILocation(line: 366, column: 70, scope: !1852)
!1860 = distinct !{!1860, !1854, !1861}
!1861 = !DILocation(line: 367, column: 13, scope: !1853)
!1862 = !DILocation(line: 370, column: 28, scope: !1845)
!1863 = !DILocation(line: 372, column: 7, scope: !1833)
!1864 = !DILocation(line: 376, column: 7, scope: !1833)
!1865 = !DILocation(line: 379, column: 7, scope: !1833)
!1866 = !DILocation(line: 381, column: 12, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1833, file: !169, line: 381, column: 11)
!1868 = !DILocation(line: 381, column: 11, scope: !1833)
!1869 = !DILocation(line: 0, scope: !1867)
!1870 = !DILocation(line: 386, column: 12, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1833, file: !169, line: 386, column: 11)
!1872 = !DILocation(line: 386, column: 11, scope: !1833)
!1873 = !DILocation(line: 387, column: 9, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !169, line: 387, column: 9)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !169, line: 387, column: 9)
!1876 = !DILocation(line: 387, column: 9, scope: !1875)
!1877 = !DILocation(line: 394, column: 7, scope: !1833)
!1878 = !DILocation(line: 397, column: 7, scope: !1833)
!1879 = !DILocation(line: 0, scope: !1741)
!1880 = !DILocation(line: 263, column: 10, scope: !1741)
!1881 = !DILocation(line: 400, column: 8, scope: !1770)
!1882 = !DILocation(line: 0, scope: !1769)
!1883 = !DILocation(line: 400, column: 27, scope: !1769)
!1884 = !DILocation(line: 400, column: 19, scope: !1769)
!1885 = !DILocation(line: 400, column: 41, scope: !1769)
!1886 = !DILocation(line: 400, column: 48, scope: !1769)
!1887 = !DILocation(line: 400, column: 3, scope: !1770)
!1888 = !DILocation(line: 400, column: 60, scope: !1769)
!1889 = !DILocation(line: 404, column: 12, scope: !1768)
!1890 = !DILocation(line: 405, column: 12, scope: !1768)
!1891 = !DILocation(line: 406, column: 12, scope: !1768)
!1892 = !DILocation(line: 409, column: 11, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1768, file: !169, line: 408, column: 11)
!1894 = !DILocation(line: 411, column: 17, scope: !1893)
!1895 = !DILocation(line: 412, column: 39, scope: !1893)
!1896 = !DILocation(line: 416, column: 32, scope: !1893)
!1897 = !DILocation(line: 412, column: 19, scope: !1893)
!1898 = !DILocation(line: 412, column: 15, scope: !1893)
!1899 = !DILocation(line: 417, column: 11, scope: !1893)
!1900 = !DILocation(line: 417, column: 26, scope: !1893)
!1901 = !DILocation(line: 417, column: 14, scope: !1893)
!1902 = !DILocation(line: 417, column: 63, scope: !1893)
!1903 = !DILocation(line: 408, column: 11, scope: !1768)
!1904 = !DILocation(line: 0, scope: !1768)
!1905 = !DILocation(line: 424, column: 11, scope: !1768)
!1906 = !DILocation(line: 402, column: 21, scope: !1768)
!1907 = !DILocation(line: 425, column: 7, scope: !1768)
!1908 = !DILocation(line: 428, column: 15, scope: !1777)
!1909 = !DILocation(line: 430, column: 15, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !169, line: 430, column: 15)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !169, line: 429, column: 13)
!1912 = distinct !DILexicalBlock(scope: !1777, file: !169, line: 428, column: 15)
!1913 = !DILocation(line: 430, column: 15, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !169, line: 430, column: 15)
!1915 = !DILocation(line: 430, column: 15, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !169, line: 430, column: 15)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !169, line: 430, column: 15)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !169, line: 430, column: 15)
!1919 = !DILocation(line: 430, column: 15, scope: !1917)
!1920 = !DILocation(line: 430, column: 15, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !169, line: 430, column: 15)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !169, line: 430, column: 15)
!1923 = !DILocation(line: 430, column: 15, scope: !1922)
!1924 = !DILocation(line: 430, column: 15, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !169, line: 430, column: 15)
!1926 = distinct !DILexicalBlock(scope: !1918, file: !169, line: 430, column: 15)
!1927 = !DILocation(line: 430, column: 15, scope: !1926)
!1928 = !DILocation(line: 430, column: 15, scope: !1918)
!1929 = !DILocation(line: 430, column: 15, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !169, line: 430, column: 15)
!1931 = distinct !DILexicalBlock(scope: !1910, file: !169, line: 430, column: 15)
!1932 = !DILocation(line: 430, column: 15, scope: !1931)
!1933 = !DILocation(line: 438, column: 19, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1911, file: !169, line: 437, column: 19)
!1935 = !DILocation(line: 438, column: 24, scope: !1934)
!1936 = !DILocation(line: 438, column: 28, scope: !1934)
!1937 = !DILocation(line: 438, column: 38, scope: !1934)
!1938 = !DILocation(line: 438, column: 48, scope: !1934)
!1939 = !DILocation(line: 438, column: 59, scope: !1934)
!1940 = !DILocation(line: 440, column: 19, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !169, line: 440, column: 19)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !169, line: 440, column: 19)
!1943 = distinct !DILexicalBlock(scope: !1934, file: !169, line: 439, column: 17)
!1944 = !DILocation(line: 440, column: 19, scope: !1942)
!1945 = !DILocation(line: 441, column: 19, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !169, line: 441, column: 19)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !169, line: 441, column: 19)
!1948 = !DILocation(line: 441, column: 19, scope: !1947)
!1949 = !DILocation(line: 442, column: 17, scope: !1943)
!1950 = !DILocation(line: 449, column: 20, scope: !1912)
!1951 = !DILocation(line: 454, column: 11, scope: !1777)
!1952 = !DILocation(line: 457, column: 19, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1777, file: !169, line: 455, column: 13)
!1954 = !DILocation(line: 463, column: 19, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1953, file: !169, line: 462, column: 19)
!1956 = !DILocation(line: 463, column: 24, scope: !1955)
!1957 = !DILocation(line: 463, column: 28, scope: !1955)
!1958 = !DILocation(line: 463, column: 38, scope: !1955)
!1959 = !DILocation(line: 463, column: 47, scope: !1955)
!1960 = !DILocation(line: 463, column: 41, scope: !1955)
!1961 = !DILocation(line: 463, column: 52, scope: !1955)
!1962 = !DILocation(line: 462, column: 19, scope: !1953)
!1963 = !DILocation(line: 464, column: 25, scope: !1955)
!1964 = !DILocation(line: 464, column: 17, scope: !1955)
!1965 = !DILocation(line: 471, column: 25, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1955, file: !169, line: 465, column: 19)
!1967 = !DILocation(line: 475, column: 21, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !169, line: 475, column: 21)
!1969 = distinct !DILexicalBlock(scope: !1966, file: !169, line: 475, column: 21)
!1970 = !DILocation(line: 475, column: 21, scope: !1969)
!1971 = !DILocation(line: 476, column: 21, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !169, line: 476, column: 21)
!1973 = distinct !DILexicalBlock(scope: !1966, file: !169, line: 476, column: 21)
!1974 = !DILocation(line: 476, column: 21, scope: !1973)
!1975 = !DILocation(line: 477, column: 21, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !169, line: 477, column: 21)
!1977 = distinct !DILexicalBlock(scope: !1966, file: !169, line: 477, column: 21)
!1978 = !DILocation(line: 477, column: 21, scope: !1977)
!1979 = !DILocation(line: 478, column: 21, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !169, line: 478, column: 21)
!1981 = distinct !DILexicalBlock(scope: !1966, file: !169, line: 478, column: 21)
!1982 = !DILocation(line: 478, column: 21, scope: !1981)
!1983 = !DILocation(line: 479, column: 21, scope: !1966)
!1984 = !DILocation(line: 403, column: 21, scope: !1768)
!1985 = !DILocation(line: 492, column: 31, scope: !1777)
!1986 = !DILocation(line: 493, column: 31, scope: !1777)
!1987 = !DILocation(line: 495, column: 31, scope: !1777)
!1988 = !DILocation(line: 496, column: 31, scope: !1777)
!1989 = !DILocation(line: 497, column: 31, scope: !1777)
!1990 = !DILocation(line: 500, column: 15, scope: !1777)
!1991 = !DILocation(line: 502, column: 19, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !169, line: 501, column: 13)
!1993 = distinct !DILexicalBlock(scope: !1777, file: !169, line: 500, column: 15)
!1994 = !DILocation(line: 509, column: 33, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1777, file: !169, line: 509, column: 15)
!1996 = !DILocation(line: 0, scope: !1777)
!1997 = !DILocation(line: 514, column: 15, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1777, file: !169, line: 513, column: 15)
!1999 = !DILocation(line: 518, column: 15, scope: !1777)
!2000 = !DILocation(line: 526, column: 26, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1777, file: !169, line: 526, column: 15)
!2002 = !DILocation(line: 526, column: 15, scope: !1777)
!2003 = !DILocation(line: 526, column: 40, scope: !2001)
!2004 = !DILocation(line: 526, column: 47, scope: !2001)
!2005 = !DILocation(line: 530, column: 17, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1777, file: !169, line: 530, column: 15)
!2007 = !DILocation(line: 526, column: 18, scope: !2001)
!2008 = !DILocation(line: 526, column: 65, scope: !2001)
!2009 = !DILocation(line: 530, column: 15, scope: !1777)
!2010 = !DILocation(line: 535, column: 11, scope: !1777)
!2011 = !DILocation(line: 549, column: 15, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1777, file: !169, line: 548, column: 15)
!2013 = !DILocation(line: 556, column: 15, scope: !1777)
!2014 = !DILocation(line: 558, column: 19, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !169, line: 557, column: 13)
!2016 = distinct !DILexicalBlock(scope: !1777, file: !169, line: 556, column: 15)
!2017 = !DILocation(line: 561, column: 19, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2015, file: !169, line: 561, column: 19)
!2019 = !DILocation(line: 561, column: 35, scope: !2018)
!2020 = !DILocation(line: 561, column: 30, scope: !2018)
!2021 = !DILocation(line: 570, column: 15, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !169, line: 570, column: 15)
!2023 = distinct !DILexicalBlock(scope: !2015, file: !169, line: 570, column: 15)
!2024 = !DILocation(line: 570, column: 15, scope: !2023)
!2025 = !DILocation(line: 571, column: 15, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !169, line: 571, column: 15)
!2027 = distinct !DILexicalBlock(scope: !2015, file: !169, line: 571, column: 15)
!2028 = !DILocation(line: 571, column: 15, scope: !2027)
!2029 = !DILocation(line: 572, column: 15, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !169, line: 572, column: 15)
!2031 = distinct !DILexicalBlock(scope: !2015, file: !169, line: 572, column: 15)
!2032 = !DILocation(line: 572, column: 15, scope: !2031)
!2033 = !DILocation(line: 574, column: 13, scope: !2015)
!2034 = !DILocation(line: 614, column: 17, scope: !1776)
!2035 = !DILocation(line: 610, column: 20, scope: !1776)
!2036 = !DILocation(line: 617, column: 29, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1781, file: !169, line: 615, column: 15)
!2038 = !DILocation(line: 617, column: 27, scope: !2037)
!2039 = !DILocation(line: 612, column: 18, scope: !1776)
!2040 = !DILocation(line: 618, column: 15, scope: !2037)
!2041 = !DILocation(line: 621, column: 17, scope: !1780)
!2042 = !DILocation(line: 622, column: 17, scope: !1780)
!2043 = !DILocation(line: 626, column: 29, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1780, file: !169, line: 626, column: 21)
!2045 = !DILocation(line: 626, column: 21, scope: !1780)
!2046 = !DILocation(line: 627, column: 29, scope: !2044)
!2047 = !DILocation(line: 627, column: 19, scope: !2044)
!2048 = !DILocation(line: 0, scope: !1893)
!2049 = !DILocation(line: 629, column: 17, scope: !1780)
!2050 = !DILocation(line: 624, column: 19, scope: !1780)
!2051 = !DILocation(line: 625, column: 27, scope: !1780)
!2052 = !DILocation(line: 631, column: 21, scope: !1798)
!2053 = !DILocation(line: 632, column: 56, scope: !1798)
!2054 = !DILocation(line: 632, column: 50, scope: !1798)
!2055 = !DILocation(line: 633, column: 53, scope: !1798)
!2056 = !DILocation(line: 621, column: 27, scope: !1780)
!2057 = !DILocation(line: 631, column: 29, scope: !1798)
!2058 = !DILocation(line: 632, column: 36, scope: !1798)
!2059 = !DILocation(line: 632, column: 28, scope: !1798)
!2060 = !DILocation(line: 634, column: 25, scope: !1798)
!2061 = !DILocation(line: 644, column: 38, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1805, file: !169, line: 642, column: 23)
!2063 = !DILocation(line: 644, column: 48, scope: !2062)
!2064 = !DILocation(line: 644, column: 51, scope: !2062)
!2065 = !DILocation(line: 644, column: 25, scope: !2062)
!2066 = !DILocation(line: 645, column: 28, scope: !2062)
!2067 = !DILocation(line: 644, column: 34, scope: !2062)
!2068 = distinct !{!2068, !2065, !2066}
!2069 = !DILocation(line: 658, column: 43, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !169, line: 658, column: 29)
!2071 = distinct !DILexicalBlock(scope: !1802, file: !169, line: 658, column: 29)
!2072 = !DILocation(line: 655, column: 29, scope: !1803)
!2073 = !DILocation(line: 657, column: 36, scope: !1802)
!2074 = !DILocation(line: 659, column: 49, scope: !2070)
!2075 = !DILocation(line: 659, column: 39, scope: !2070)
!2076 = !DILocation(line: 659, column: 31, scope: !2070)
!2077 = !DILocation(line: 658, column: 53, scope: !2070)
!2078 = !DILocation(line: 658, column: 29, scope: !2071)
!2079 = distinct !{!2079, !2078, !2080}
!2080 = !DILocation(line: 667, column: 33, scope: !2071)
!2081 = !DILocation(line: 674, column: 19, scope: !1780)
!2082 = !DILocation(line: 670, column: 41, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1804, file: !169, line: 670, column: 29)
!2084 = !DILocation(line: 670, column: 31, scope: !2083)
!2085 = !DILocation(line: 670, column: 29, scope: !1804)
!2086 = !DILocation(line: 672, column: 27, scope: !1804)
!2087 = !DILocation(line: 675, column: 26, scope: !1780)
!2088 = !DILocation(line: 675, column: 24, scope: !1780)
!2089 = !DILocation(line: 674, column: 19, scope: !1798)
!2090 = distinct !{!2090, !2049, !2091}
!2091 = !DILocation(line: 675, column: 44, scope: !1780)
!2092 = !DILocation(line: 676, column: 15, scope: !1781)
!2093 = !DILocation(line: 0, scope: !2044)
!2094 = !DILocation(line: 0, scope: !1780)
!2095 = !DILocation(line: 678, column: 40, scope: !1776)
!2096 = !DILocation(line: 680, column: 19, scope: !1810)
!2097 = !DILocation(line: 680, column: 45, scope: !1810)
!2098 = !DILocation(line: 680, column: 23, scope: !1810)
!2099 = !DILocation(line: 684, column: 33, scope: !1809)
!2100 = !DILocation(line: 684, column: 24, scope: !1809)
!2101 = !DILocation(line: 686, column: 17, scope: !1809)
!2102 = !DILocation(line: 0, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !169, line: 687, column: 19)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !169, line: 686, column: 17)
!2105 = distinct !DILexicalBlock(scope: !1809, file: !169, line: 686, column: 17)
!2106 = !DILocation(line: 0, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !169, line: 703, column: 21)
!2108 = !DILocation(line: 0, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !169, line: 696, column: 23)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !169, line: 695, column: 30)
!2111 = distinct !DILexicalBlock(scope: !2103, file: !169, line: 688, column: 25)
!2112 = !DILocation(line: 688, column: 43, scope: !2111)
!2113 = !DILocation(line: 690, column: 25, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !169, line: 690, column: 25)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !169, line: 689, column: 23)
!2116 = !DILocation(line: 690, column: 25, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2114, file: !169, line: 690, column: 25)
!2118 = !DILocation(line: 690, column: 25, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !169, line: 690, column: 25)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !169, line: 690, column: 25)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !169, line: 690, column: 25)
!2122 = !DILocation(line: 690, column: 25, scope: !2120)
!2123 = !DILocation(line: 690, column: 25, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !169, line: 690, column: 25)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !169, line: 690, column: 25)
!2126 = !DILocation(line: 690, column: 25, scope: !2125)
!2127 = !DILocation(line: 690, column: 25, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !169, line: 690, column: 25)
!2129 = distinct !DILexicalBlock(scope: !2121, file: !169, line: 690, column: 25)
!2130 = !DILocation(line: 690, column: 25, scope: !2129)
!2131 = !DILocation(line: 690, column: 25, scope: !2121)
!2132 = !DILocation(line: 690, column: 25, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !169, line: 690, column: 25)
!2134 = distinct !DILexicalBlock(scope: !2114, file: !169, line: 690, column: 25)
!2135 = !DILocation(line: 690, column: 25, scope: !2134)
!2136 = !DILocation(line: 691, column: 25, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !169, line: 691, column: 25)
!2138 = distinct !DILexicalBlock(scope: !2115, file: !169, line: 691, column: 25)
!2139 = !DILocation(line: 691, column: 25, scope: !2138)
!2140 = !DILocation(line: 692, column: 25, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !169, line: 692, column: 25)
!2142 = distinct !DILexicalBlock(scope: !2115, file: !169, line: 692, column: 25)
!2143 = !DILocation(line: 692, column: 25, scope: !2142)
!2144 = !DILocation(line: 693, column: 38, scope: !2115)
!2145 = !DILocation(line: 693, column: 33, scope: !2115)
!2146 = !DILocation(line: 694, column: 23, scope: !2115)
!2147 = !DILocation(line: 695, column: 30, scope: !2110)
!2148 = !DILocation(line: 695, column: 30, scope: !2111)
!2149 = !DILocation(line: 697, column: 25, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !169, line: 697, column: 25)
!2151 = distinct !DILexicalBlock(scope: !2109, file: !169, line: 697, column: 25)
!2152 = !DILocation(line: 697, column: 25, scope: !2151)
!2153 = !DILocation(line: 699, column: 23, scope: !2109)
!2154 = !DILocation(line: 0, scope: !2142)
!2155 = !DILocation(line: 0, scope: !2115)
!2156 = !DILocation(line: 0, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !1893, file: !169, line: 418, column: 9)
!2158 = !DILocation(line: 0, scope: !2114)
!2159 = !DILocation(line: 700, column: 35, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2103, file: !169, line: 700, column: 25)
!2161 = !DILocation(line: 700, column: 30, scope: !2160)
!2162 = !DILocation(line: 700, column: 25, scope: !2103)
!2163 = !DILocation(line: 702, column: 21, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !169, line: 702, column: 21)
!2165 = distinct !DILexicalBlock(scope: !2103, file: !169, line: 702, column: 21)
!2166 = !DILocation(line: 702, column: 21, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !169, line: 702, column: 21)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !169, line: 702, column: 21)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !169, line: 702, column: 21)
!2170 = !DILocation(line: 702, column: 21, scope: !2168)
!2171 = !DILocation(line: 702, column: 21, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !169, line: 702, column: 21)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !169, line: 702, column: 21)
!2174 = !DILocation(line: 702, column: 21, scope: !2173)
!2175 = !DILocation(line: 702, column: 21, scope: !2169)
!2176 = !DILocation(line: 0, scope: !2151)
!2177 = !DILocation(line: 703, column: 21, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2107, file: !169, line: 703, column: 21)
!2179 = !DILocation(line: 703, column: 21, scope: !2107)
!2180 = !DILocation(line: 704, column: 25, scope: !2103)
!2181 = !DILocation(line: 686, column: 17, scope: !2104)
!2182 = distinct !{!2182, !2183, !2184}
!2183 = !DILocation(line: 686, column: 17, scope: !2105)
!2184 = !DILocation(line: 705, column: 19, scope: !2105)
!2185 = !DILocation(line: 0, scope: !1770)
!2186 = !DILocation(line: 416, column: 30, scope: !1893)
!2187 = !DILocation(line: 712, column: 34, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !1768, file: !169, line: 712, column: 11)
!2189 = !DILocation(line: 714, column: 14, scope: !2188)
!2190 = !DILocation(line: 715, column: 14, scope: !2188)
!2191 = !DILocation(line: 715, column: 35, scope: !2188)
!2192 = !DILocation(line: 715, column: 17, scope: !2188)
!2193 = !DILocation(line: 715, column: 47, scope: !2188)
!2194 = !DILocation(line: 715, column: 65, scope: !2188)
!2195 = !DILocation(line: 716, column: 15, scope: !2188)
!2196 = !DILocation(line: 716, column: 11, scope: !2188)
!2197 = !DILocation(line: 712, column: 11, scope: !1768)
!2198 = !DILocation(line: 400, column: 10, scope: !1770)
!2199 = !DILocation(line: 0, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !169, line: 519, column: 13)
!2201 = distinct !DILexicalBlock(scope: !1777, file: !169, line: 518, column: 15)
!2202 = !DILocation(line: 720, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1768, file: !169, line: 720, column: 7)
!2204 = !DILocation(line: 720, column: 7, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2203, file: !169, line: 720, column: 7)
!2206 = !DILocation(line: 720, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !169, line: 720, column: 7)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !169, line: 720, column: 7)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !169, line: 720, column: 7)
!2210 = !DILocation(line: 720, column: 7, scope: !2208)
!2211 = !DILocation(line: 720, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !169, line: 720, column: 7)
!2213 = distinct !DILexicalBlock(scope: !2209, file: !169, line: 720, column: 7)
!2214 = !DILocation(line: 720, column: 7, scope: !2213)
!2215 = !DILocation(line: 720, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !169, line: 720, column: 7)
!2217 = distinct !DILexicalBlock(scope: !2209, file: !169, line: 720, column: 7)
!2218 = !DILocation(line: 720, column: 7, scope: !2217)
!2219 = !DILocation(line: 720, column: 7, scope: !2209)
!2220 = !DILocation(line: 720, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !169, line: 720, column: 7)
!2222 = distinct !DILexicalBlock(scope: !2203, file: !169, line: 720, column: 7)
!2223 = !DILocation(line: 720, column: 7, scope: !2222)
!2224 = !DILocation(line: 723, column: 7, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !169, line: 723, column: 7)
!2226 = distinct !DILexicalBlock(scope: !1768, file: !169, line: 723, column: 7)
!2227 = !DILocation(line: 424, column: 9, scope: !1768)
!2228 = !DILocation(line: 723, column: 7, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !169, line: 723, column: 7)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !169, line: 723, column: 7)
!2231 = distinct !DILexicalBlock(scope: !2225, file: !169, line: 723, column: 7)
!2232 = !DILocation(line: 723, column: 7, scope: !2230)
!2233 = !DILocation(line: 723, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !169, line: 723, column: 7)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !169, line: 723, column: 7)
!2236 = !DILocation(line: 723, column: 7, scope: !2235)
!2237 = !DILocation(line: 723, column: 7, scope: !2231)
!2238 = !DILocation(line: 724, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !169, line: 724, column: 7)
!2240 = distinct !DILexicalBlock(scope: !1768, file: !169, line: 724, column: 7)
!2241 = !DILocation(line: 724, column: 7, scope: !2240)
!2242 = !DILocation(line: 726, column: 13, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !1768, file: !169, line: 726, column: 11)
!2244 = !DILocation(line: 726, column: 11, scope: !1768)
!2245 = !DILocation(line: 728, column: 5, scope: !1769)
!2246 = !DILocation(line: 400, column: 75, scope: !1769)
!2247 = !DILocation(line: 400, column: 3, scope: !1769)
!2248 = distinct !{!2248, !1887, !2249}
!2249 = !DILocation(line: 728, column: 5, scope: !1770)
!2250 = !DILocation(line: 730, column: 11, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !1741, file: !169, line: 730, column: 7)
!2252 = !DILocation(line: 730, column: 16, scope: !2251)
!2253 = !DILocation(line: 738, column: 51, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !1741, file: !169, line: 738, column: 7)
!2255 = !DILocation(line: 739, column: 10, scope: !2254)
!2256 = !DILocation(line: 741, column: 11, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !169, line: 741, column: 11)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !169, line: 740, column: 5)
!2259 = !DILocation(line: 741, column: 11, scope: !2258)
!2260 = !DILocation(line: 742, column: 16, scope: !2257)
!2261 = !DILocation(line: 742, column: 9, scope: !2257)
!2262 = !DILocation(line: 746, column: 18, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2257, file: !169, line: 746, column: 16)
!2264 = !DILocation(line: 746, column: 32, scope: !2263)
!2265 = !DILocation(line: 746, column: 29, scope: !2263)
!2266 = !DILocation(line: 755, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !1741, file: !169, line: 755, column: 7)
!2268 = !DILocation(line: 755, column: 20, scope: !2267)
!2269 = !DILocation(line: 756, column: 12, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !169, line: 756, column: 5)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !169, line: 756, column: 5)
!2272 = !DILocation(line: 756, column: 5, scope: !2271)
!2273 = !DILocation(line: 757, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !169, line: 757, column: 7)
!2275 = distinct !DILexicalBlock(scope: !2270, file: !169, line: 757, column: 7)
!2276 = !DILocation(line: 757, column: 7, scope: !2275)
!2277 = !DILocation(line: 756, column: 39, scope: !2270)
!2278 = distinct !{!2278, !2272, !2279}
!2279 = !DILocation(line: 757, column: 7, scope: !2271)
!2280 = !DILocation(line: 759, column: 11, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !1741, file: !169, line: 759, column: 7)
!2282 = !DILocation(line: 759, column: 7, scope: !1741)
!2283 = !DILocation(line: 760, column: 5, scope: !2281)
!2284 = !DILocation(line: 760, column: 17, scope: !2281)
!2285 = !DILocation(line: 766, column: 21, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !1741, file: !169, line: 766, column: 7)
!2287 = !DILocation(line: 766, column: 54, scope: !2286)
!2288 = !DILocation(line: 766, column: 51, scope: !2286)
!2289 = !DILocation(line: 770, column: 42, scope: !1741)
!2290 = !DILocation(line: 768, column: 10, scope: !1741)
!2291 = !DILocation(line: 768, column: 3, scope: !1741)
!2292 = !DILocation(line: 772, column: 1, scope: !1741)
!2293 = distinct !DISubprogram(name: "gettext_quote", scope: !169, file: !169, line: 207, type: !2294, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!79, !79, !13}
!2296 = !{!2297, !2298, !2299, !2300}
!2297 = !DILocalVariable(name: "msgid", arg: 1, scope: !2293, file: !169, line: 207, type: !79)
!2298 = !DILocalVariable(name: "s", arg: 2, scope: !2293, file: !169, line: 207, type: !13)
!2299 = !DILocalVariable(name: "translation", scope: !2293, file: !169, line: 209, type: !79)
!2300 = !DILocalVariable(name: "locale_code", scope: !2293, file: !169, line: 210, type: !79)
!2301 = !DILocation(line: 207, column: 28, scope: !2293)
!2302 = !DILocation(line: 207, column: 54, scope: !2293)
!2303 = !DILocation(line: 209, column: 29, scope: !2293)
!2304 = !DILocation(line: 209, column: 15, scope: !2293)
!2305 = !DILocation(line: 212, column: 19, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2293, file: !169, line: 212, column: 7)
!2307 = !DILocation(line: 212, column: 7, scope: !2293)
!2308 = !DILocation(line: 233, column: 17, scope: !2293)
!2309 = !DILocation(line: 210, column: 15, scope: !2293)
!2310 = !DILocalVariable(name: "s1", arg: 1, scope: !2311, file: !2312, line: 160, type: !79)
!2311 = distinct !DISubprogram(name: "strcaseeq0", scope: !2312, file: !2312, line: 160, type: !2313, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2315)
!2312 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!62, !79, !79, !61, !61, !61, !61, !61, !61, !61, !61, !61}
!2315 = !{!2310, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2316 = !DILocalVariable(name: "s2", arg: 2, scope: !2311, file: !2312, line: 160, type: !79)
!2317 = !DILocalVariable(name: "s20", arg: 3, scope: !2311, file: !2312, line: 160, type: !61)
!2318 = !DILocalVariable(name: "s21", arg: 4, scope: !2311, file: !2312, line: 160, type: !61)
!2319 = !DILocalVariable(name: "s22", arg: 5, scope: !2311, file: !2312, line: 160, type: !61)
!2320 = !DILocalVariable(name: "s23", arg: 6, scope: !2311, file: !2312, line: 160, type: !61)
!2321 = !DILocalVariable(name: "s24", arg: 7, scope: !2311, file: !2312, line: 160, type: !61)
!2322 = !DILocalVariable(name: "s25", arg: 8, scope: !2311, file: !2312, line: 160, type: !61)
!2323 = !DILocalVariable(name: "s26", arg: 9, scope: !2311, file: !2312, line: 160, type: !61)
!2324 = !DILocalVariable(name: "s27", arg: 10, scope: !2311, file: !2312, line: 160, type: !61)
!2325 = !DILocalVariable(name: "s28", arg: 11, scope: !2311, file: !2312, line: 160, type: !61)
!2326 = !DILocation(line: 160, column: 25, scope: !2311, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 234, column: 7, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2293, file: !169, line: 234, column: 7)
!2329 = !DILocation(line: 160, column: 41, scope: !2311, inlinedAt: !2327)
!2330 = !DILocation(line: 160, column: 50, scope: !2311, inlinedAt: !2327)
!2331 = !DILocation(line: 160, column: 60, scope: !2311, inlinedAt: !2327)
!2332 = !DILocation(line: 160, column: 70, scope: !2311, inlinedAt: !2327)
!2333 = !DILocation(line: 160, column: 80, scope: !2311, inlinedAt: !2327)
!2334 = !DILocation(line: 160, column: 90, scope: !2311, inlinedAt: !2327)
!2335 = !DILocation(line: 160, column: 100, scope: !2311, inlinedAt: !2327)
!2336 = !DILocation(line: 160, column: 110, scope: !2311, inlinedAt: !2327)
!2337 = !DILocation(line: 160, column: 120, scope: !2311, inlinedAt: !2327)
!2338 = !DILocation(line: 160, column: 130, scope: !2311, inlinedAt: !2327)
!2339 = !DILocation(line: 162, column: 7, scope: !2340, inlinedAt: !2327)
!2340 = distinct !DILexicalBlock(scope: !2311, file: !2312, line: 162, column: 7)
!2341 = !DILocalVariable(name: "s1", arg: 1, scope: !2342, file: !2312, line: 146, type: !79)
!2342 = distinct !DISubprogram(name: "strcaseeq1", scope: !2312, file: !2312, line: 146, type: !2343, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!62, !79, !79, !61, !61, !61, !61, !61, !61, !61, !61}
!2345 = !{!2341, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354}
!2346 = !DILocalVariable(name: "s2", arg: 2, scope: !2342, file: !2312, line: 146, type: !79)
!2347 = !DILocalVariable(name: "s21", arg: 3, scope: !2342, file: !2312, line: 146, type: !61)
!2348 = !DILocalVariable(name: "s22", arg: 4, scope: !2342, file: !2312, line: 146, type: !61)
!2349 = !DILocalVariable(name: "s23", arg: 5, scope: !2342, file: !2312, line: 146, type: !61)
!2350 = !DILocalVariable(name: "s24", arg: 6, scope: !2342, file: !2312, line: 146, type: !61)
!2351 = !DILocalVariable(name: "s25", arg: 7, scope: !2342, file: !2312, line: 146, type: !61)
!2352 = !DILocalVariable(name: "s26", arg: 8, scope: !2342, file: !2312, line: 146, type: !61)
!2353 = !DILocalVariable(name: "s27", arg: 9, scope: !2342, file: !2312, line: 146, type: !61)
!2354 = !DILocalVariable(name: "s28", arg: 10, scope: !2342, file: !2312, line: 146, type: !61)
!2355 = !DILocation(line: 146, column: 25, scope: !2342, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 167, column: 16, scope: !2357, inlinedAt: !2327)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !2312, line: 164, column: 11)
!2358 = distinct !DILexicalBlock(scope: !2340, file: !2312, line: 163, column: 5)
!2359 = !DILocation(line: 146, column: 41, scope: !2342, inlinedAt: !2356)
!2360 = !DILocation(line: 146, column: 50, scope: !2342, inlinedAt: !2356)
!2361 = !DILocation(line: 146, column: 60, scope: !2342, inlinedAt: !2356)
!2362 = !DILocation(line: 146, column: 70, scope: !2342, inlinedAt: !2356)
!2363 = !DILocation(line: 146, column: 80, scope: !2342, inlinedAt: !2356)
!2364 = !DILocation(line: 146, column: 90, scope: !2342, inlinedAt: !2356)
!2365 = !DILocation(line: 146, column: 100, scope: !2342, inlinedAt: !2356)
!2366 = !DILocation(line: 146, column: 110, scope: !2342, inlinedAt: !2356)
!2367 = !DILocation(line: 146, column: 120, scope: !2342, inlinedAt: !2356)
!2368 = !DILocation(line: 148, column: 7, scope: !2369, inlinedAt: !2356)
!2369 = distinct !DILexicalBlock(scope: !2342, file: !2312, line: 148, column: 7)
!2370 = !DILocalVariable(name: "s1", arg: 1, scope: !2371, file: !2312, line: 132, type: !79)
!2371 = distinct !DISubprogram(name: "strcaseeq2", scope: !2312, file: !2312, line: 132, type: !2372, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!62, !79, !79, !61, !61, !61, !61, !61, !61, !61}
!2374 = !{!2370, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382}
!2375 = !DILocalVariable(name: "s2", arg: 2, scope: !2371, file: !2312, line: 132, type: !79)
!2376 = !DILocalVariable(name: "s22", arg: 3, scope: !2371, file: !2312, line: 132, type: !61)
!2377 = !DILocalVariable(name: "s23", arg: 4, scope: !2371, file: !2312, line: 132, type: !61)
!2378 = !DILocalVariable(name: "s24", arg: 5, scope: !2371, file: !2312, line: 132, type: !61)
!2379 = !DILocalVariable(name: "s25", arg: 6, scope: !2371, file: !2312, line: 132, type: !61)
!2380 = !DILocalVariable(name: "s26", arg: 7, scope: !2371, file: !2312, line: 132, type: !61)
!2381 = !DILocalVariable(name: "s27", arg: 8, scope: !2371, file: !2312, line: 132, type: !61)
!2382 = !DILocalVariable(name: "s28", arg: 9, scope: !2371, file: !2312, line: 132, type: !61)
!2383 = !DILocation(line: 132, column: 25, scope: !2371, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 153, column: 16, scope: !2385, inlinedAt: !2356)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !2312, line: 150, column: 11)
!2386 = distinct !DILexicalBlock(scope: !2369, file: !2312, line: 149, column: 5)
!2387 = !DILocation(line: 132, column: 41, scope: !2371, inlinedAt: !2384)
!2388 = !DILocation(line: 132, column: 50, scope: !2371, inlinedAt: !2384)
!2389 = !DILocation(line: 132, column: 60, scope: !2371, inlinedAt: !2384)
!2390 = !DILocation(line: 132, column: 70, scope: !2371, inlinedAt: !2384)
!2391 = !DILocation(line: 132, column: 80, scope: !2371, inlinedAt: !2384)
!2392 = !DILocation(line: 132, column: 90, scope: !2371, inlinedAt: !2384)
!2393 = !DILocation(line: 132, column: 100, scope: !2371, inlinedAt: !2384)
!2394 = !DILocation(line: 132, column: 110, scope: !2371, inlinedAt: !2384)
!2395 = !DILocation(line: 134, column: 7, scope: !2396, inlinedAt: !2384)
!2396 = distinct !DILexicalBlock(scope: !2371, file: !2312, line: 134, column: 7)
!2397 = !DILocalVariable(name: "s1", arg: 1, scope: !2398, file: !2312, line: 118, type: !79)
!2398 = distinct !DISubprogram(name: "strcaseeq3", scope: !2312, file: !2312, line: 118, type: !2399, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!62, !79, !79, !61, !61, !61, !61, !61, !61}
!2401 = !{!2397, !2402, !2403, !2404, !2405, !2406, !2407, !2408}
!2402 = !DILocalVariable(name: "s2", arg: 2, scope: !2398, file: !2312, line: 118, type: !79)
!2403 = !DILocalVariable(name: "s23", arg: 3, scope: !2398, file: !2312, line: 118, type: !61)
!2404 = !DILocalVariable(name: "s24", arg: 4, scope: !2398, file: !2312, line: 118, type: !61)
!2405 = !DILocalVariable(name: "s25", arg: 5, scope: !2398, file: !2312, line: 118, type: !61)
!2406 = !DILocalVariable(name: "s26", arg: 6, scope: !2398, file: !2312, line: 118, type: !61)
!2407 = !DILocalVariable(name: "s27", arg: 7, scope: !2398, file: !2312, line: 118, type: !61)
!2408 = !DILocalVariable(name: "s28", arg: 8, scope: !2398, file: !2312, line: 118, type: !61)
!2409 = !DILocation(line: 118, column: 25, scope: !2398, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 139, column: 16, scope: !2411, inlinedAt: !2384)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !2312, line: 136, column: 11)
!2412 = distinct !DILexicalBlock(scope: !2396, file: !2312, line: 135, column: 5)
!2413 = !DILocation(line: 118, column: 41, scope: !2398, inlinedAt: !2410)
!2414 = !DILocation(line: 118, column: 50, scope: !2398, inlinedAt: !2410)
!2415 = !DILocation(line: 118, column: 60, scope: !2398, inlinedAt: !2410)
!2416 = !DILocation(line: 118, column: 70, scope: !2398, inlinedAt: !2410)
!2417 = !DILocation(line: 118, column: 80, scope: !2398, inlinedAt: !2410)
!2418 = !DILocation(line: 118, column: 90, scope: !2398, inlinedAt: !2410)
!2419 = !DILocation(line: 118, column: 100, scope: !2398, inlinedAt: !2410)
!2420 = !DILocation(line: 120, column: 7, scope: !2421, inlinedAt: !2410)
!2421 = distinct !DILexicalBlock(scope: !2398, file: !2312, line: 120, column: 7)
!2422 = !DILocation(line: 120, column: 7, scope: !2398, inlinedAt: !2410)
!2423 = !DILocalVariable(name: "s1", arg: 1, scope: !2424, file: !2312, line: 104, type: !79)
!2424 = distinct !DISubprogram(name: "strcaseeq4", scope: !2312, file: !2312, line: 104, type: !2425, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!62, !79, !79, !61, !61, !61, !61, !61}
!2427 = !{!2423, !2428, !2429, !2430, !2431, !2432, !2433}
!2428 = !DILocalVariable(name: "s2", arg: 2, scope: !2424, file: !2312, line: 104, type: !79)
!2429 = !DILocalVariable(name: "s24", arg: 3, scope: !2424, file: !2312, line: 104, type: !61)
!2430 = !DILocalVariable(name: "s25", arg: 4, scope: !2424, file: !2312, line: 104, type: !61)
!2431 = !DILocalVariable(name: "s26", arg: 5, scope: !2424, file: !2312, line: 104, type: !61)
!2432 = !DILocalVariable(name: "s27", arg: 6, scope: !2424, file: !2312, line: 104, type: !61)
!2433 = !DILocalVariable(name: "s28", arg: 7, scope: !2424, file: !2312, line: 104, type: !61)
!2434 = !DILocation(line: 104, column: 25, scope: !2424, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 125, column: 16, scope: !2436, inlinedAt: !2410)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !2312, line: 122, column: 11)
!2437 = distinct !DILexicalBlock(scope: !2421, file: !2312, line: 121, column: 5)
!2438 = !DILocation(line: 104, column: 41, scope: !2424, inlinedAt: !2435)
!2439 = !DILocation(line: 104, column: 50, scope: !2424, inlinedAt: !2435)
!2440 = !DILocation(line: 104, column: 60, scope: !2424, inlinedAt: !2435)
!2441 = !DILocation(line: 104, column: 70, scope: !2424, inlinedAt: !2435)
!2442 = !DILocation(line: 104, column: 80, scope: !2424, inlinedAt: !2435)
!2443 = !DILocation(line: 104, column: 90, scope: !2424, inlinedAt: !2435)
!2444 = !DILocation(line: 106, column: 7, scope: !2445, inlinedAt: !2435)
!2445 = distinct !DILexicalBlock(scope: !2424, file: !2312, line: 106, column: 7)
!2446 = !DILocation(line: 106, column: 7, scope: !2424, inlinedAt: !2435)
!2447 = !DILocalVariable(name: "s1", arg: 1, scope: !2448, file: !2312, line: 90, type: !79)
!2448 = distinct !DISubprogram(name: "strcaseeq5", scope: !2312, file: !2312, line: 90, type: !2449, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!62, !79, !79, !61, !61, !61, !61}
!2451 = !{!2447, !2452, !2453, !2454, !2455, !2456}
!2452 = !DILocalVariable(name: "s2", arg: 2, scope: !2448, file: !2312, line: 90, type: !79)
!2453 = !DILocalVariable(name: "s25", arg: 3, scope: !2448, file: !2312, line: 90, type: !61)
!2454 = !DILocalVariable(name: "s26", arg: 4, scope: !2448, file: !2312, line: 90, type: !61)
!2455 = !DILocalVariable(name: "s27", arg: 5, scope: !2448, file: !2312, line: 90, type: !61)
!2456 = !DILocalVariable(name: "s28", arg: 6, scope: !2448, file: !2312, line: 90, type: !61)
!2457 = !DILocation(line: 90, column: 25, scope: !2448, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 111, column: 16, scope: !2459, inlinedAt: !2435)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !2312, line: 108, column: 11)
!2460 = distinct !DILexicalBlock(scope: !2445, file: !2312, line: 107, column: 5)
!2461 = !DILocation(line: 90, column: 41, scope: !2448, inlinedAt: !2458)
!2462 = !DILocation(line: 90, column: 50, scope: !2448, inlinedAt: !2458)
!2463 = !DILocation(line: 90, column: 60, scope: !2448, inlinedAt: !2458)
!2464 = !DILocation(line: 90, column: 70, scope: !2448, inlinedAt: !2458)
!2465 = !DILocation(line: 90, column: 80, scope: !2448, inlinedAt: !2458)
!2466 = !DILocation(line: 92, column: 7, scope: !2467, inlinedAt: !2458)
!2467 = distinct !DILexicalBlock(scope: !2448, file: !2312, line: 92, column: 7)
!2468 = !DILocation(line: 92, column: 7, scope: !2448, inlinedAt: !2458)
!2469 = !DILocation(line: 235, column: 12, scope: !2328)
!2470 = !DILocation(line: 235, column: 21, scope: !2328)
!2471 = !DILocation(line: 235, column: 5, scope: !2328)
!2472 = !DILocation(line: 146, column: 25, scope: !2342, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 167, column: 16, scope: !2357, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 236, column: 7, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2293, file: !169, line: 236, column: 7)
!2476 = !DILocation(line: 146, column: 41, scope: !2342, inlinedAt: !2473)
!2477 = !DILocation(line: 146, column: 50, scope: !2342, inlinedAt: !2473)
!2478 = !DILocation(line: 146, column: 60, scope: !2342, inlinedAt: !2473)
!2479 = !DILocation(line: 146, column: 70, scope: !2342, inlinedAt: !2473)
!2480 = !DILocation(line: 146, column: 80, scope: !2342, inlinedAt: !2473)
!2481 = !DILocation(line: 146, column: 90, scope: !2342, inlinedAt: !2473)
!2482 = !DILocation(line: 146, column: 100, scope: !2342, inlinedAt: !2473)
!2483 = !DILocation(line: 146, column: 110, scope: !2342, inlinedAt: !2473)
!2484 = !DILocation(line: 146, column: 120, scope: !2342, inlinedAt: !2473)
!2485 = !DILocation(line: 148, column: 7, scope: !2369, inlinedAt: !2473)
!2486 = !DILocation(line: 132, column: 25, scope: !2371, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 153, column: 16, scope: !2385, inlinedAt: !2473)
!2488 = !DILocation(line: 132, column: 41, scope: !2371, inlinedAt: !2487)
!2489 = !DILocation(line: 132, column: 50, scope: !2371, inlinedAt: !2487)
!2490 = !DILocation(line: 132, column: 60, scope: !2371, inlinedAt: !2487)
!2491 = !DILocation(line: 132, column: 70, scope: !2371, inlinedAt: !2487)
!2492 = !DILocation(line: 132, column: 80, scope: !2371, inlinedAt: !2487)
!2493 = !DILocation(line: 132, column: 90, scope: !2371, inlinedAt: !2487)
!2494 = !DILocation(line: 132, column: 100, scope: !2371, inlinedAt: !2487)
!2495 = !DILocation(line: 132, column: 110, scope: !2371, inlinedAt: !2487)
!2496 = !DILocation(line: 134, column: 7, scope: !2396, inlinedAt: !2487)
!2497 = !DILocation(line: 134, column: 7, scope: !2371, inlinedAt: !2487)
!2498 = !DILocation(line: 118, column: 25, scope: !2398, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 139, column: 16, scope: !2411, inlinedAt: !2487)
!2500 = !DILocation(line: 118, column: 41, scope: !2398, inlinedAt: !2499)
!2501 = !DILocation(line: 118, column: 50, scope: !2398, inlinedAt: !2499)
!2502 = !DILocation(line: 118, column: 60, scope: !2398, inlinedAt: !2499)
!2503 = !DILocation(line: 118, column: 70, scope: !2398, inlinedAt: !2499)
!2504 = !DILocation(line: 118, column: 80, scope: !2398, inlinedAt: !2499)
!2505 = !DILocation(line: 118, column: 90, scope: !2398, inlinedAt: !2499)
!2506 = !DILocation(line: 118, column: 100, scope: !2398, inlinedAt: !2499)
!2507 = !DILocation(line: 120, column: 7, scope: !2421, inlinedAt: !2499)
!2508 = !DILocation(line: 120, column: 7, scope: !2398, inlinedAt: !2499)
!2509 = !DILocation(line: 104, column: 25, scope: !2424, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 125, column: 16, scope: !2436, inlinedAt: !2499)
!2511 = !DILocation(line: 104, column: 41, scope: !2424, inlinedAt: !2510)
!2512 = !DILocation(line: 104, column: 50, scope: !2424, inlinedAt: !2510)
!2513 = !DILocation(line: 104, column: 60, scope: !2424, inlinedAt: !2510)
!2514 = !DILocation(line: 104, column: 70, scope: !2424, inlinedAt: !2510)
!2515 = !DILocation(line: 104, column: 80, scope: !2424, inlinedAt: !2510)
!2516 = !DILocation(line: 104, column: 90, scope: !2424, inlinedAt: !2510)
!2517 = !DILocation(line: 106, column: 7, scope: !2445, inlinedAt: !2510)
!2518 = !DILocation(line: 106, column: 7, scope: !2424, inlinedAt: !2510)
!2519 = !DILocation(line: 90, column: 25, scope: !2448, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 111, column: 16, scope: !2459, inlinedAt: !2510)
!2521 = !DILocation(line: 90, column: 41, scope: !2448, inlinedAt: !2520)
!2522 = !DILocation(line: 90, column: 50, scope: !2448, inlinedAt: !2520)
!2523 = !DILocation(line: 90, column: 60, scope: !2448, inlinedAt: !2520)
!2524 = !DILocation(line: 90, column: 70, scope: !2448, inlinedAt: !2520)
!2525 = !DILocation(line: 90, column: 80, scope: !2448, inlinedAt: !2520)
!2526 = !DILocation(line: 92, column: 7, scope: !2467, inlinedAt: !2520)
!2527 = !DILocation(line: 92, column: 7, scope: !2448, inlinedAt: !2520)
!2528 = !DILocalVariable(name: "s1", arg: 1, scope: !2529, file: !2312, line: 76, type: !79)
!2529 = distinct !DISubprogram(name: "strcaseeq6", scope: !2312, file: !2312, line: 76, type: !2530, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!62, !79, !79, !61, !61, !61}
!2532 = !{!2528, !2533, !2534, !2535, !2536}
!2533 = !DILocalVariable(name: "s2", arg: 2, scope: !2529, file: !2312, line: 76, type: !79)
!2534 = !DILocalVariable(name: "s26", arg: 3, scope: !2529, file: !2312, line: 76, type: !61)
!2535 = !DILocalVariable(name: "s27", arg: 4, scope: !2529, file: !2312, line: 76, type: !61)
!2536 = !DILocalVariable(name: "s28", arg: 5, scope: !2529, file: !2312, line: 76, type: !61)
!2537 = !DILocation(line: 76, column: 25, scope: !2529, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 97, column: 16, scope: !2539, inlinedAt: !2520)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !2312, line: 94, column: 11)
!2540 = distinct !DILexicalBlock(scope: !2467, file: !2312, line: 93, column: 5)
!2541 = !DILocation(line: 76, column: 41, scope: !2529, inlinedAt: !2538)
!2542 = !DILocation(line: 76, column: 50, scope: !2529, inlinedAt: !2538)
!2543 = !DILocation(line: 76, column: 60, scope: !2529, inlinedAt: !2538)
!2544 = !DILocation(line: 76, column: 70, scope: !2529, inlinedAt: !2538)
!2545 = !DILocation(line: 78, column: 7, scope: !2546, inlinedAt: !2538)
!2546 = distinct !DILexicalBlock(scope: !2529, file: !2312, line: 78, column: 7)
!2547 = !DILocation(line: 78, column: 7, scope: !2529, inlinedAt: !2538)
!2548 = !DILocalVariable(name: "s1", arg: 1, scope: !2549, file: !2312, line: 62, type: !79)
!2549 = distinct !DISubprogram(name: "strcaseeq7", scope: !2312, file: !2312, line: 62, type: !2550, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!62, !79, !79, !61, !61}
!2552 = !{!2548, !2553, !2554, !2555}
!2553 = !DILocalVariable(name: "s2", arg: 2, scope: !2549, file: !2312, line: 62, type: !79)
!2554 = !DILocalVariable(name: "s27", arg: 3, scope: !2549, file: !2312, line: 62, type: !61)
!2555 = !DILocalVariable(name: "s28", arg: 4, scope: !2549, file: !2312, line: 62, type: !61)
!2556 = !DILocation(line: 62, column: 25, scope: !2549, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 83, column: 16, scope: !2558, inlinedAt: !2538)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !2312, line: 80, column: 11)
!2559 = distinct !DILexicalBlock(scope: !2546, file: !2312, line: 79, column: 5)
!2560 = !DILocation(line: 62, column: 41, scope: !2549, inlinedAt: !2557)
!2561 = !DILocation(line: 62, column: 50, scope: !2549, inlinedAt: !2557)
!2562 = !DILocation(line: 62, column: 60, scope: !2549, inlinedAt: !2557)
!2563 = !DILocation(line: 64, column: 7, scope: !2564, inlinedAt: !2557)
!2564 = distinct !DILexicalBlock(scope: !2549, file: !2312, line: 64, column: 7)
!2565 = !DILocation(line: 236, column: 7, scope: !2293)
!2566 = !DILocation(line: 237, column: 12, scope: !2475)
!2567 = !DILocation(line: 237, column: 21, scope: !2475)
!2568 = !DILocation(line: 237, column: 5, scope: !2475)
!2569 = !DILocation(line: 239, column: 13, scope: !2293)
!2570 = !DILocation(line: 239, column: 11, scope: !2293)
!2571 = !DILocation(line: 239, column: 3, scope: !2293)
!2572 = !DILocation(line: 0, scope: !2293)
!2573 = !DILocation(line: 240, column: 1, scope: !2293)
!2574 = distinct !DISubprogram(name: "quotearg_alloc", scope: !169, file: !169, line: 799, type: !2575, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!60, !79, !34, !1613}
!2577 = !{!2578, !2579, !2580}
!2578 = !DILocalVariable(name: "arg", arg: 1, scope: !2574, file: !169, line: 799, type: !79)
!2579 = !DILocalVariable(name: "argsize", arg: 2, scope: !2574, file: !169, line: 799, type: !34)
!2580 = !DILocalVariable(name: "o", arg: 3, scope: !2574, file: !169, line: 800, type: !1613)
!2581 = !DILocation(line: 799, column: 29, scope: !2574)
!2582 = !DILocation(line: 799, column: 41, scope: !2574)
!2583 = !DILocation(line: 800, column: 47, scope: !2574)
!2584 = !DILocalVariable(name: "arg", arg: 1, scope: !2585, file: !169, line: 812, type: !79)
!2585 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !169, file: !169, line: 812, type: !2586, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!60, !79, !34, !33, !1613}
!2588 = !{!2584, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596}
!2589 = !DILocalVariable(name: "argsize", arg: 2, scope: !2585, file: !169, line: 812, type: !34)
!2590 = !DILocalVariable(name: "size", arg: 3, scope: !2585, file: !169, line: 812, type: !33)
!2591 = !DILocalVariable(name: "o", arg: 4, scope: !2585, file: !169, line: 813, type: !1613)
!2592 = !DILocalVariable(name: "p", scope: !2585, file: !169, line: 815, type: !1613)
!2593 = !DILocalVariable(name: "e", scope: !2585, file: !169, line: 816, type: !62)
!2594 = !DILocalVariable(name: "flags", scope: !2585, file: !169, line: 818, type: !62)
!2595 = !DILocalVariable(name: "bufsize", scope: !2585, file: !169, line: 819, type: !34)
!2596 = !DILocalVariable(name: "buf", scope: !2585, file: !169, line: 823, type: !60)
!2597 = !DILocation(line: 812, column: 33, scope: !2585, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 802, column: 10, scope: !2574)
!2599 = !DILocation(line: 812, column: 45, scope: !2585, inlinedAt: !2598)
!2600 = !DILocation(line: 812, column: 62, scope: !2585, inlinedAt: !2598)
!2601 = !DILocation(line: 813, column: 51, scope: !2585, inlinedAt: !2598)
!2602 = !DILocation(line: 815, column: 37, scope: !2585, inlinedAt: !2598)
!2603 = !DILocation(line: 815, column: 33, scope: !2585, inlinedAt: !2598)
!2604 = !DILocation(line: 816, column: 11, scope: !2585, inlinedAt: !2598)
!2605 = !DILocation(line: 816, column: 7, scope: !2585, inlinedAt: !2598)
!2606 = !DILocation(line: 818, column: 18, scope: !2585, inlinedAt: !2598)
!2607 = !DILocation(line: 818, column: 24, scope: !2585, inlinedAt: !2598)
!2608 = !DILocation(line: 818, column: 7, scope: !2585, inlinedAt: !2598)
!2609 = !DILocation(line: 819, column: 69, scope: !2585, inlinedAt: !2598)
!2610 = !DILocation(line: 820, column: 53, scope: !2585, inlinedAt: !2598)
!2611 = !DILocation(line: 821, column: 49, scope: !2585, inlinedAt: !2598)
!2612 = !DILocation(line: 822, column: 49, scope: !2585, inlinedAt: !2598)
!2613 = !DILocation(line: 819, column: 20, scope: !2585, inlinedAt: !2598)
!2614 = !DILocation(line: 822, column: 62, scope: !2585, inlinedAt: !2598)
!2615 = !DILocation(line: 819, column: 10, scope: !2585, inlinedAt: !2598)
!2616 = !DILocalVariable(name: "n", arg: 1, scope: !2617, file: !28, line: 216, type: !34)
!2617 = distinct !DISubprogram(name: "xcharalloc", scope: !28, file: !28, line: 216, type: !2618, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!60, !34}
!2620 = !{!2616}
!2621 = !DILocation(line: 216, column: 20, scope: !2617, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 823, column: 15, scope: !2585, inlinedAt: !2598)
!2623 = !DILocation(line: 218, column: 10, scope: !2617, inlinedAt: !2622)
!2624 = !DILocation(line: 823, column: 9, scope: !2585, inlinedAt: !2598)
!2625 = !DILocation(line: 824, column: 60, scope: !2585, inlinedAt: !2598)
!2626 = !DILocation(line: 826, column: 32, scope: !2585, inlinedAt: !2598)
!2627 = !DILocation(line: 826, column: 47, scope: !2585, inlinedAt: !2598)
!2628 = !DILocation(line: 824, column: 3, scope: !2585, inlinedAt: !2598)
!2629 = !DILocation(line: 827, column: 9, scope: !2585, inlinedAt: !2598)
!2630 = !DILocation(line: 802, column: 3, scope: !2574)
!2631 = !DILocation(line: 812, column: 33, scope: !2585)
!2632 = !DILocation(line: 812, column: 45, scope: !2585)
!2633 = !DILocation(line: 812, column: 62, scope: !2585)
!2634 = !DILocation(line: 813, column: 51, scope: !2585)
!2635 = !DILocation(line: 815, column: 37, scope: !2585)
!2636 = !DILocation(line: 815, column: 33, scope: !2585)
!2637 = !DILocation(line: 816, column: 11, scope: !2585)
!2638 = !DILocation(line: 816, column: 7, scope: !2585)
!2639 = !DILocation(line: 818, column: 18, scope: !2585)
!2640 = !DILocation(line: 818, column: 27, scope: !2585)
!2641 = !DILocation(line: 818, column: 24, scope: !2585)
!2642 = !DILocation(line: 818, column: 7, scope: !2585)
!2643 = !DILocation(line: 819, column: 69, scope: !2585)
!2644 = !DILocation(line: 820, column: 53, scope: !2585)
!2645 = !DILocation(line: 821, column: 49, scope: !2585)
!2646 = !DILocation(line: 822, column: 49, scope: !2585)
!2647 = !DILocation(line: 819, column: 20, scope: !2585)
!2648 = !DILocation(line: 822, column: 62, scope: !2585)
!2649 = !DILocation(line: 819, column: 10, scope: !2585)
!2650 = !DILocation(line: 216, column: 20, scope: !2617, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 823, column: 15, scope: !2585)
!2652 = !DILocation(line: 218, column: 10, scope: !2617, inlinedAt: !2651)
!2653 = !DILocation(line: 823, column: 9, scope: !2585)
!2654 = !DILocation(line: 824, column: 60, scope: !2585)
!2655 = !DILocation(line: 826, column: 32, scope: !2585)
!2656 = !DILocation(line: 826, column: 47, scope: !2585)
!2657 = !DILocation(line: 824, column: 3, scope: !2585)
!2658 = !DILocation(line: 827, column: 9, scope: !2585)
!2659 = !DILocation(line: 828, column: 7, scope: !2585)
!2660 = !DILocation(line: 829, column: 11, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2585, file: !169, line: 828, column: 7)
!2662 = !DILocation(line: 829, column: 5, scope: !2661)
!2663 = !DILocation(line: 830, column: 3, scope: !2585)
!2664 = distinct !DISubprogram(name: "quotearg_free", scope: !169, file: !169, line: 848, type: !690, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2665)
!2665 = !{!2666, !2667}
!2666 = !DILocalVariable(name: "sv", scope: !2664, file: !169, line: 850, type: !195)
!2667 = !DILocalVariable(name: "i", scope: !2664, file: !169, line: 851, type: !62)
!2668 = !DILocation(line: 850, column: 24, scope: !2664)
!2669 = !DILocation(line: 850, column: 19, scope: !2664)
!2670 = !DILocation(line: 851, column: 7, scope: !2664)
!2671 = !DILocation(line: 852, column: 19, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !169, line: 852, column: 3)
!2673 = distinct !DILexicalBlock(scope: !2664, file: !169, line: 852, column: 3)
!2674 = !DILocation(line: 852, column: 17, scope: !2672)
!2675 = !DILocation(line: 852, column: 3, scope: !2673)
!2676 = !DILocation(line: 853, column: 17, scope: !2672)
!2677 = !{!2678, !683, i64 8}
!2678 = !{!"slotvec", !770, i64 0, !683, i64 8}
!2679 = !DILocation(line: 853, column: 5, scope: !2672)
!2680 = !DILocation(line: 852, column: 28, scope: !2672)
!2681 = distinct !{!2681, !2675, !2682}
!2682 = !DILocation(line: 853, column: 20, scope: !2673)
!2683 = !DILocation(line: 854, column: 13, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2664, file: !169, line: 854, column: 7)
!2685 = !DILocation(line: 854, column: 17, scope: !2684)
!2686 = !DILocation(line: 854, column: 7, scope: !2664)
!2687 = !DILocation(line: 856, column: 7, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !169, line: 855, column: 5)
!2689 = !DILocation(line: 857, column: 21, scope: !2688)
!2690 = !{!2678, !770, i64 0}
!2691 = !DILocation(line: 858, column: 20, scope: !2688)
!2692 = !DILocation(line: 859, column: 5, scope: !2688)
!2693 = !DILocation(line: 860, column: 10, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2664, file: !169, line: 860, column: 7)
!2695 = !DILocation(line: 860, column: 7, scope: !2664)
!2696 = !DILocation(line: 862, column: 13, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2694, file: !169, line: 861, column: 5)
!2698 = !DILocation(line: 862, column: 7, scope: !2697)
!2699 = !DILocation(line: 863, column: 15, scope: !2697)
!2700 = !DILocation(line: 864, column: 5, scope: !2697)
!2701 = !DILocation(line: 865, column: 10, scope: !2664)
!2702 = !DILocation(line: 866, column: 1, scope: !2664)
!2703 = distinct !DISubprogram(name: "quotearg_n", scope: !169, file: !169, line: 931, type: !2704, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!60, !62, !79}
!2706 = !{!2707, !2708}
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !169, line: 931, type: !62)
!2708 = !DILocalVariable(name: "arg", arg: 2, scope: !2703, file: !169, line: 931, type: !79)
!2709 = !DILocation(line: 931, column: 17, scope: !2703)
!2710 = !DILocation(line: 931, column: 32, scope: !2703)
!2711 = !DILocation(line: 933, column: 10, scope: !2703)
!2712 = !DILocation(line: 933, column: 3, scope: !2703)
!2713 = distinct !DISubprogram(name: "quotearg_n_options", scope: !169, file: !169, line: 877, type: !2714, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!60, !62, !79, !34, !1613}
!2716 = !{!2717, !2718, !2719, !2720, !2721, !2722, !2723, !2726, !2727, !2729, !2730, !2731}
!2717 = !DILocalVariable(name: "n", arg: 1, scope: !2713, file: !169, line: 877, type: !62)
!2718 = !DILocalVariable(name: "arg", arg: 2, scope: !2713, file: !169, line: 877, type: !79)
!2719 = !DILocalVariable(name: "argsize", arg: 3, scope: !2713, file: !169, line: 877, type: !34)
!2720 = !DILocalVariable(name: "options", arg: 4, scope: !2713, file: !169, line: 878, type: !1613)
!2721 = !DILocalVariable(name: "e", scope: !2713, file: !169, line: 880, type: !62)
!2722 = !DILocalVariable(name: "sv", scope: !2713, file: !169, line: 882, type: !195)
!2723 = !DILocalVariable(name: "preallocated", scope: !2724, file: !169, line: 889, type: !76)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !169, line: 888, column: 5)
!2725 = distinct !DILexicalBlock(scope: !2713, file: !169, line: 887, column: 7)
!2726 = !DILocalVariable(name: "nmax", scope: !2724, file: !169, line: 890, type: !62)
!2727 = !DILocalVariable(name: "size", scope: !2728, file: !169, line: 903, type: !34)
!2728 = distinct !DILexicalBlock(scope: !2713, file: !169, line: 902, column: 3)
!2729 = !DILocalVariable(name: "val", scope: !2728, file: !169, line: 904, type: !60)
!2730 = !DILocalVariable(name: "flags", scope: !2728, file: !169, line: 906, type: !62)
!2731 = !DILocalVariable(name: "qsize", scope: !2728, file: !169, line: 907, type: !34)
!2732 = !DILocation(line: 877, column: 25, scope: !2713)
!2733 = !DILocation(line: 877, column: 40, scope: !2713)
!2734 = !DILocation(line: 877, column: 52, scope: !2713)
!2735 = !DILocation(line: 878, column: 51, scope: !2713)
!2736 = !DILocation(line: 880, column: 11, scope: !2713)
!2737 = !DILocation(line: 880, column: 7, scope: !2713)
!2738 = !DILocation(line: 882, column: 24, scope: !2713)
!2739 = !DILocation(line: 882, column: 19, scope: !2713)
!2740 = !DILocation(line: 884, column: 9, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2713, file: !169, line: 884, column: 7)
!2742 = !DILocation(line: 884, column: 7, scope: !2713)
!2743 = !DILocation(line: 885, column: 5, scope: !2741)
!2744 = !DILocation(line: 887, column: 7, scope: !2725)
!2745 = !DILocation(line: 887, column: 14, scope: !2725)
!2746 = !DILocation(line: 887, column: 7, scope: !2713)
!2747 = !DILocation(line: 889, column: 31, scope: !2724)
!2748 = !DILocation(line: 890, column: 11, scope: !2724)
!2749 = !DILocation(line: 892, column: 16, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2724, file: !169, line: 892, column: 11)
!2751 = !DILocation(line: 892, column: 11, scope: !2724)
!2752 = !DILocation(line: 893, column: 9, scope: !2750)
!2753 = !DILocation(line: 895, column: 32, scope: !2724)
!2754 = !DILocation(line: 895, column: 61, scope: !2724)
!2755 = !DILocation(line: 895, column: 58, scope: !2724)
!2756 = !DILocation(line: 895, column: 66, scope: !2724)
!2757 = !DILocation(line: 895, column: 22, scope: !2724)
!2758 = !DILocation(line: 895, column: 15, scope: !2724)
!2759 = !DILocation(line: 896, column: 11, scope: !2724)
!2760 = !DILocation(line: 897, column: 15, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2724, file: !169, line: 896, column: 11)
!2762 = !{i64 0, i64 8, !769, i64 8, i64 8, !682}
!2763 = !DILocation(line: 897, column: 9, scope: !2761)
!2764 = !DILocation(line: 898, column: 20, scope: !2724)
!2765 = !DILocation(line: 898, column: 18, scope: !2724)
!2766 = !DILocation(line: 898, column: 7, scope: !2724)
!2767 = !DILocation(line: 898, column: 38, scope: !2724)
!2768 = !DILocation(line: 898, column: 31, scope: !2724)
!2769 = !DILocation(line: 898, column: 48, scope: !2724)
!2770 = !DILocation(line: 899, column: 14, scope: !2724)
!2771 = !DILocation(line: 900, column: 5, scope: !2724)
!2772 = !DILocation(line: 0, scope: !2713)
!2773 = !DILocation(line: 903, column: 19, scope: !2728)
!2774 = !DILocation(line: 903, column: 25, scope: !2728)
!2775 = !DILocation(line: 903, column: 12, scope: !2728)
!2776 = !DILocation(line: 904, column: 23, scope: !2728)
!2777 = !DILocation(line: 904, column: 11, scope: !2728)
!2778 = !DILocation(line: 906, column: 26, scope: !2728)
!2779 = !DILocation(line: 906, column: 32, scope: !2728)
!2780 = !DILocation(line: 906, column: 9, scope: !2728)
!2781 = !DILocation(line: 908, column: 55, scope: !2728)
!2782 = !DILocation(line: 909, column: 46, scope: !2728)
!2783 = !DILocation(line: 910, column: 55, scope: !2728)
!2784 = !DILocation(line: 911, column: 55, scope: !2728)
!2785 = !DILocation(line: 907, column: 20, scope: !2728)
!2786 = !DILocation(line: 907, column: 12, scope: !2728)
!2787 = !DILocation(line: 913, column: 14, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2728, file: !169, line: 913, column: 9)
!2789 = !DILocation(line: 913, column: 9, scope: !2728)
!2790 = !DILocation(line: 915, column: 35, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !169, line: 914, column: 7)
!2792 = !DILocation(line: 915, column: 20, scope: !2791)
!2793 = !DILocation(line: 916, column: 17, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !169, line: 916, column: 13)
!2795 = !DILocation(line: 916, column: 13, scope: !2791)
!2796 = !DILocation(line: 917, column: 11, scope: !2794)
!2797 = !DILocation(line: 216, column: 20, scope: !2617, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 918, column: 27, scope: !2791)
!2799 = !DILocation(line: 218, column: 10, scope: !2617, inlinedAt: !2798)
!2800 = !DILocation(line: 918, column: 19, scope: !2791)
!2801 = !DILocation(line: 919, column: 69, scope: !2791)
!2802 = !DILocation(line: 921, column: 44, scope: !2791)
!2803 = !DILocation(line: 922, column: 44, scope: !2791)
!2804 = !DILocation(line: 919, column: 9, scope: !2791)
!2805 = !DILocation(line: 923, column: 7, scope: !2791)
!2806 = !DILocation(line: 0, scope: !2728)
!2807 = !DILocation(line: 925, column: 11, scope: !2728)
!2808 = !DILocation(line: 926, column: 5, scope: !2728)
!2809 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !169, file: !169, line: 937, type: !2810, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!60, !62, !79, !34}
!2812 = !{!2813, !2814, !2815}
!2813 = !DILocalVariable(name: "n", arg: 1, scope: !2809, file: !169, line: 937, type: !62)
!2814 = !DILocalVariable(name: "arg", arg: 2, scope: !2809, file: !169, line: 937, type: !79)
!2815 = !DILocalVariable(name: "argsize", arg: 3, scope: !2809, file: !169, line: 937, type: !34)
!2816 = !DILocation(line: 937, column: 21, scope: !2809)
!2817 = !DILocation(line: 937, column: 36, scope: !2809)
!2818 = !DILocation(line: 937, column: 48, scope: !2809)
!2819 = !DILocation(line: 939, column: 10, scope: !2809)
!2820 = !DILocation(line: 939, column: 3, scope: !2809)
!2821 = distinct !DISubprogram(name: "quotearg", scope: !169, file: !169, line: 943, type: !1323, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2822)
!2822 = !{!2823}
!2823 = !DILocalVariable(name: "arg", arg: 1, scope: !2821, file: !169, line: 943, type: !79)
!2824 = !DILocation(line: 943, column: 23, scope: !2821)
!2825 = !DILocation(line: 931, column: 17, scope: !2703, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 945, column: 10, scope: !2821)
!2827 = !DILocation(line: 931, column: 32, scope: !2703, inlinedAt: !2826)
!2828 = !DILocation(line: 933, column: 10, scope: !2703, inlinedAt: !2826)
!2829 = !DILocation(line: 945, column: 3, scope: !2821)
!2830 = distinct !DISubprogram(name: "quotearg_mem", scope: !169, file: !169, line: 949, type: !2831, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2833)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!60, !79, !34}
!2833 = !{!2834, !2835}
!2834 = !DILocalVariable(name: "arg", arg: 1, scope: !2830, file: !169, line: 949, type: !79)
!2835 = !DILocalVariable(name: "argsize", arg: 2, scope: !2830, file: !169, line: 949, type: !34)
!2836 = !DILocation(line: 949, column: 27, scope: !2830)
!2837 = !DILocation(line: 949, column: 39, scope: !2830)
!2838 = !DILocation(line: 937, column: 21, scope: !2809, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 951, column: 10, scope: !2830)
!2840 = !DILocation(line: 937, column: 36, scope: !2809, inlinedAt: !2839)
!2841 = !DILocation(line: 937, column: 48, scope: !2809, inlinedAt: !2839)
!2842 = !DILocation(line: 939, column: 10, scope: !2809, inlinedAt: !2839)
!2843 = !DILocation(line: 951, column: 3, scope: !2830)
!2844 = distinct !DISubprogram(name: "quotearg_n_style", scope: !169, file: !169, line: 955, type: !2845, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2847)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!60, !62, !13, !79}
!2847 = !{!2848, !2849, !2850, !2851}
!2848 = !DILocalVariable(name: "n", arg: 1, scope: !2844, file: !169, line: 955, type: !62)
!2849 = !DILocalVariable(name: "s", arg: 2, scope: !2844, file: !169, line: 955, type: !13)
!2850 = !DILocalVariable(name: "arg", arg: 3, scope: !2844, file: !169, line: 955, type: !79)
!2851 = !DILocalVariable(name: "o", scope: !2844, file: !169, line: 957, type: !1614)
!2852 = !DILocation(line: 955, column: 23, scope: !2844)
!2853 = !DILocation(line: 955, column: 45, scope: !2844)
!2854 = !DILocation(line: 955, column: 60, scope: !2844)
!2855 = !DILocation(line: 957, column: 3, scope: !2844)
!2856 = !DILocation(line: 957, column: 32, scope: !2844)
!2857 = !DILocalVariable(name: "style", arg: 1, scope: !2858, file: !169, line: 193, type: !13)
!2858 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !169, file: !169, line: 193, type: !2859, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!176, !13}
!2861 = !{!2857, !2862}
!2862 = !DILocalVariable(name: "o", scope: !2858, file: !169, line: 195, type: !176)
!2863 = !DILocation(line: 193, column: 48, scope: !2858, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 957, column: 36, scope: !2844)
!2865 = !DILocation(line: 195, column: 26, scope: !2858, inlinedAt: !2864)
!2866 = !{!2867}
!2867 = distinct !{!2867, !2868, !"quoting_options_from_style: argument 0"}
!2868 = distinct !{!2868, !"quoting_options_from_style"}
!2869 = !DILocation(line: 196, column: 13, scope: !2870, inlinedAt: !2864)
!2870 = distinct !DILexicalBlock(scope: !2858, file: !169, line: 196, column: 7)
!2871 = !DILocation(line: 196, column: 7, scope: !2858, inlinedAt: !2864)
!2872 = !DILocation(line: 197, column: 5, scope: !2870, inlinedAt: !2864)
!2873 = !DILocation(line: 198, column: 5, scope: !2858, inlinedAt: !2864)
!2874 = !DILocation(line: 198, column: 11, scope: !2858, inlinedAt: !2864)
!2875 = !DILocation(line: 958, column: 10, scope: !2844)
!2876 = !DILocation(line: 959, column: 1, scope: !2844)
!2877 = !DILocation(line: 958, column: 3, scope: !2844)
!2878 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !169, file: !169, line: 962, type: !2879, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!60, !62, !13, !79, !34}
!2881 = !{!2882, !2883, !2884, !2885, !2886}
!2882 = !DILocalVariable(name: "n", arg: 1, scope: !2878, file: !169, line: 962, type: !62)
!2883 = !DILocalVariable(name: "s", arg: 2, scope: !2878, file: !169, line: 962, type: !13)
!2884 = !DILocalVariable(name: "arg", arg: 3, scope: !2878, file: !169, line: 963, type: !79)
!2885 = !DILocalVariable(name: "argsize", arg: 4, scope: !2878, file: !169, line: 963, type: !34)
!2886 = !DILocalVariable(name: "o", scope: !2878, file: !169, line: 965, type: !1614)
!2887 = !DILocation(line: 962, column: 27, scope: !2878)
!2888 = !DILocation(line: 962, column: 49, scope: !2878)
!2889 = !DILocation(line: 963, column: 35, scope: !2878)
!2890 = !DILocation(line: 963, column: 47, scope: !2878)
!2891 = !DILocation(line: 965, column: 3, scope: !2878)
!2892 = !DILocation(line: 965, column: 32, scope: !2878)
!2893 = !DILocation(line: 193, column: 48, scope: !2858, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 965, column: 36, scope: !2878)
!2895 = !DILocation(line: 195, column: 26, scope: !2858, inlinedAt: !2894)
!2896 = !{!2897}
!2897 = distinct !{!2897, !2898, !"quoting_options_from_style: argument 0"}
!2898 = distinct !{!2898, !"quoting_options_from_style"}
!2899 = !DILocation(line: 196, column: 13, scope: !2870, inlinedAt: !2894)
!2900 = !DILocation(line: 196, column: 7, scope: !2858, inlinedAt: !2894)
!2901 = !DILocation(line: 197, column: 5, scope: !2870, inlinedAt: !2894)
!2902 = !DILocation(line: 198, column: 5, scope: !2858, inlinedAt: !2894)
!2903 = !DILocation(line: 198, column: 11, scope: !2858, inlinedAt: !2894)
!2904 = !DILocation(line: 966, column: 10, scope: !2878)
!2905 = !DILocation(line: 967, column: 1, scope: !2878)
!2906 = !DILocation(line: 966, column: 3, scope: !2878)
!2907 = distinct !DISubprogram(name: "quotearg_style", scope: !169, file: !169, line: 970, type: !2908, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2910)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!60, !13, !79}
!2910 = !{!2911, !2912}
!2911 = !DILocalVariable(name: "s", arg: 1, scope: !2907, file: !169, line: 970, type: !13)
!2912 = !DILocalVariable(name: "arg", arg: 2, scope: !2907, file: !169, line: 970, type: !79)
!2913 = !DILocation(line: 970, column: 36, scope: !2907)
!2914 = !DILocation(line: 970, column: 51, scope: !2907)
!2915 = !DILocation(line: 955, column: 23, scope: !2844, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 972, column: 10, scope: !2907)
!2917 = !DILocation(line: 955, column: 45, scope: !2844, inlinedAt: !2916)
!2918 = !DILocation(line: 955, column: 60, scope: !2844, inlinedAt: !2916)
!2919 = !DILocation(line: 957, column: 3, scope: !2844, inlinedAt: !2916)
!2920 = !DILocation(line: 957, column: 32, scope: !2844, inlinedAt: !2916)
!2921 = !DILocation(line: 193, column: 48, scope: !2858, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 957, column: 36, scope: !2844, inlinedAt: !2916)
!2923 = !DILocation(line: 195, column: 26, scope: !2858, inlinedAt: !2922)
!2924 = !{!2925}
!2925 = distinct !{!2925, !2926, !"quoting_options_from_style: argument 0"}
!2926 = distinct !{!2926, !"quoting_options_from_style"}
!2927 = !DILocation(line: 196, column: 13, scope: !2870, inlinedAt: !2922)
!2928 = !DILocation(line: 196, column: 7, scope: !2858, inlinedAt: !2922)
!2929 = !DILocation(line: 197, column: 5, scope: !2870, inlinedAt: !2922)
!2930 = !DILocation(line: 198, column: 5, scope: !2858, inlinedAt: !2922)
!2931 = !DILocation(line: 198, column: 11, scope: !2858, inlinedAt: !2922)
!2932 = !DILocation(line: 958, column: 10, scope: !2844, inlinedAt: !2916)
!2933 = !DILocation(line: 959, column: 1, scope: !2844, inlinedAt: !2916)
!2934 = !DILocation(line: 972, column: 3, scope: !2907)
!2935 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !169, file: !169, line: 976, type: !2936, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!60, !13, !79, !34}
!2938 = !{!2939, !2940, !2941}
!2939 = !DILocalVariable(name: "s", arg: 1, scope: !2935, file: !169, line: 976, type: !13)
!2940 = !DILocalVariable(name: "arg", arg: 2, scope: !2935, file: !169, line: 976, type: !79)
!2941 = !DILocalVariable(name: "argsize", arg: 3, scope: !2935, file: !169, line: 976, type: !34)
!2942 = !DILocation(line: 976, column: 40, scope: !2935)
!2943 = !DILocation(line: 976, column: 55, scope: !2935)
!2944 = !DILocation(line: 976, column: 67, scope: !2935)
!2945 = !DILocation(line: 962, column: 27, scope: !2878, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 978, column: 10, scope: !2935)
!2947 = !DILocation(line: 962, column: 49, scope: !2878, inlinedAt: !2946)
!2948 = !DILocation(line: 963, column: 35, scope: !2878, inlinedAt: !2946)
!2949 = !DILocation(line: 963, column: 47, scope: !2878, inlinedAt: !2946)
!2950 = !DILocation(line: 965, column: 3, scope: !2878, inlinedAt: !2946)
!2951 = !DILocation(line: 965, column: 32, scope: !2878, inlinedAt: !2946)
!2952 = !DILocation(line: 193, column: 48, scope: !2858, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 965, column: 36, scope: !2878, inlinedAt: !2946)
!2954 = !DILocation(line: 195, column: 26, scope: !2858, inlinedAt: !2953)
!2955 = !{!2956}
!2956 = distinct !{!2956, !2957, !"quoting_options_from_style: argument 0"}
!2957 = distinct !{!2957, !"quoting_options_from_style"}
!2958 = !DILocation(line: 196, column: 13, scope: !2870, inlinedAt: !2953)
!2959 = !DILocation(line: 196, column: 7, scope: !2858, inlinedAt: !2953)
!2960 = !DILocation(line: 197, column: 5, scope: !2870, inlinedAt: !2953)
!2961 = !DILocation(line: 198, column: 5, scope: !2858, inlinedAt: !2953)
!2962 = !DILocation(line: 198, column: 11, scope: !2858, inlinedAt: !2953)
!2963 = !DILocation(line: 966, column: 10, scope: !2878, inlinedAt: !2946)
!2964 = !DILocation(line: 967, column: 1, scope: !2878, inlinedAt: !2946)
!2965 = !DILocation(line: 978, column: 3, scope: !2935)
!2966 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !169, file: !169, line: 982, type: !2967, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!60, !79, !34, !61}
!2969 = !{!2970, !2971, !2972, !2973}
!2970 = !DILocalVariable(name: "arg", arg: 1, scope: !2966, file: !169, line: 982, type: !79)
!2971 = !DILocalVariable(name: "argsize", arg: 2, scope: !2966, file: !169, line: 982, type: !34)
!2972 = !DILocalVariable(name: "ch", arg: 3, scope: !2966, file: !169, line: 982, type: !61)
!2973 = !DILocalVariable(name: "options", scope: !2966, file: !169, line: 984, type: !176)
!2974 = !DILocation(line: 982, column: 32, scope: !2966)
!2975 = !DILocation(line: 982, column: 44, scope: !2966)
!2976 = !DILocation(line: 982, column: 58, scope: !2966)
!2977 = !DILocation(line: 984, column: 3, scope: !2966)
!2978 = !DILocation(line: 985, column: 13, scope: !2966)
!2979 = !{i64 0, i64 4, !831, i64 4, i64 4, !751, i64 8, i64 32, !831, i64 40, i64 8, !682, i64 48, i64 8, !682}
!2980 = !DILocation(line: 984, column: 26, scope: !2966)
!2981 = !DILocation(line: 152, column: 43, scope: !1635, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 986, column: 3, scope: !2966)
!2983 = !DILocation(line: 152, column: 51, scope: !1635, inlinedAt: !2982)
!2984 = !DILocation(line: 152, column: 58, scope: !1635, inlinedAt: !2982)
!2985 = !DILocation(line: 154, column: 17, scope: !1635, inlinedAt: !2982)
!2986 = !DILocation(line: 156, column: 62, scope: !1635, inlinedAt: !2982)
!2987 = !DILocation(line: 156, column: 57, scope: !1635, inlinedAt: !2982)
!2988 = !DILocation(line: 155, column: 17, scope: !1635, inlinedAt: !2982)
!2989 = !DILocation(line: 157, column: 15, scope: !1635, inlinedAt: !2982)
!2990 = !DILocation(line: 157, column: 7, scope: !1635, inlinedAt: !2982)
!2991 = !DILocation(line: 158, column: 12, scope: !1635, inlinedAt: !2982)
!2992 = !DILocation(line: 158, column: 15, scope: !1635, inlinedAt: !2982)
!2993 = !DILocation(line: 158, column: 25, scope: !1635, inlinedAt: !2982)
!2994 = !DILocation(line: 158, column: 7, scope: !1635, inlinedAt: !2982)
!2995 = !DILocation(line: 159, column: 18, scope: !1635, inlinedAt: !2982)
!2996 = !DILocation(line: 159, column: 23, scope: !1635, inlinedAt: !2982)
!2997 = !DILocation(line: 159, column: 6, scope: !1635, inlinedAt: !2982)
!2998 = !DILocation(line: 987, column: 10, scope: !2966)
!2999 = !DILocation(line: 988, column: 1, scope: !2966)
!3000 = !DILocation(line: 987, column: 3, scope: !2966)
!3001 = distinct !DISubprogram(name: "quotearg_char", scope: !169, file: !169, line: 991, type: !3002, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!60, !79, !61}
!3004 = !{!3005, !3006}
!3005 = !DILocalVariable(name: "arg", arg: 1, scope: !3001, file: !169, line: 991, type: !79)
!3006 = !DILocalVariable(name: "ch", arg: 2, scope: !3001, file: !169, line: 991, type: !61)
!3007 = !DILocation(line: 991, column: 28, scope: !3001)
!3008 = !DILocation(line: 991, column: 38, scope: !3001)
!3009 = !DILocation(line: 982, column: 32, scope: !2966, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 993, column: 10, scope: !3001)
!3011 = !DILocation(line: 982, column: 44, scope: !2966, inlinedAt: !3010)
!3012 = !DILocation(line: 982, column: 58, scope: !2966, inlinedAt: !3010)
!3013 = !DILocation(line: 984, column: 3, scope: !2966, inlinedAt: !3010)
!3014 = !DILocation(line: 985, column: 13, scope: !2966, inlinedAt: !3010)
!3015 = !DILocation(line: 984, column: 26, scope: !2966, inlinedAt: !3010)
!3016 = !DILocation(line: 152, column: 43, scope: !1635, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 986, column: 3, scope: !2966, inlinedAt: !3010)
!3018 = !DILocation(line: 152, column: 51, scope: !1635, inlinedAt: !3017)
!3019 = !DILocation(line: 152, column: 58, scope: !1635, inlinedAt: !3017)
!3020 = !DILocation(line: 154, column: 17, scope: !1635, inlinedAt: !3017)
!3021 = !DILocation(line: 156, column: 62, scope: !1635, inlinedAt: !3017)
!3022 = !DILocation(line: 156, column: 57, scope: !1635, inlinedAt: !3017)
!3023 = !DILocation(line: 155, column: 17, scope: !1635, inlinedAt: !3017)
!3024 = !DILocation(line: 157, column: 15, scope: !1635, inlinedAt: !3017)
!3025 = !DILocation(line: 157, column: 7, scope: !1635, inlinedAt: !3017)
!3026 = !DILocation(line: 158, column: 12, scope: !1635, inlinedAt: !3017)
!3027 = !DILocation(line: 158, column: 15, scope: !1635, inlinedAt: !3017)
!3028 = !DILocation(line: 158, column: 25, scope: !1635, inlinedAt: !3017)
!3029 = !DILocation(line: 158, column: 7, scope: !1635, inlinedAt: !3017)
!3030 = !DILocation(line: 159, column: 18, scope: !1635, inlinedAt: !3017)
!3031 = !DILocation(line: 159, column: 23, scope: !1635, inlinedAt: !3017)
!3032 = !DILocation(line: 159, column: 6, scope: !1635, inlinedAt: !3017)
!3033 = !DILocation(line: 987, column: 10, scope: !2966, inlinedAt: !3010)
!3034 = !DILocation(line: 988, column: 1, scope: !2966, inlinedAt: !3010)
!3035 = !DILocation(line: 993, column: 3, scope: !3001)
!3036 = distinct !DISubprogram(name: "quotearg_colon", scope: !169, file: !169, line: 997, type: !1323, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !3037)
!3037 = !{!3038}
!3038 = !DILocalVariable(name: "arg", arg: 1, scope: !3036, file: !169, line: 997, type: !79)
!3039 = !DILocation(line: 997, column: 29, scope: !3036)
!3040 = !DILocation(line: 991, column: 28, scope: !3001, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 999, column: 10, scope: !3036)
!3042 = !DILocation(line: 991, column: 38, scope: !3001, inlinedAt: !3041)
!3043 = !DILocation(line: 982, column: 32, scope: !2966, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 993, column: 10, scope: !3001, inlinedAt: !3041)
!3045 = !DILocation(line: 982, column: 44, scope: !2966, inlinedAt: !3044)
!3046 = !DILocation(line: 982, column: 58, scope: !2966, inlinedAt: !3044)
!3047 = !DILocation(line: 984, column: 3, scope: !2966, inlinedAt: !3044)
!3048 = !DILocation(line: 985, column: 13, scope: !2966, inlinedAt: !3044)
!3049 = !DILocation(line: 984, column: 26, scope: !2966, inlinedAt: !3044)
!3050 = !DILocation(line: 152, column: 43, scope: !1635, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 986, column: 3, scope: !2966, inlinedAt: !3044)
!3052 = !DILocation(line: 152, column: 51, scope: !1635, inlinedAt: !3051)
!3053 = !DILocation(line: 152, column: 58, scope: !1635, inlinedAt: !3051)
!3054 = !DILocation(line: 154, column: 17, scope: !1635, inlinedAt: !3051)
!3055 = !DILocation(line: 156, column: 57, scope: !1635, inlinedAt: !3051)
!3056 = !DILocation(line: 155, column: 17, scope: !1635, inlinedAt: !3051)
!3057 = !DILocation(line: 157, column: 7, scope: !1635, inlinedAt: !3051)
!3058 = !DILocation(line: 158, column: 12, scope: !1635, inlinedAt: !3051)
!3059 = !DILocation(line: 159, column: 6, scope: !1635, inlinedAt: !3051)
!3060 = !DILocation(line: 987, column: 10, scope: !2966, inlinedAt: !3044)
!3061 = !DILocation(line: 988, column: 1, scope: !2966, inlinedAt: !3044)
!3062 = !DILocation(line: 999, column: 3, scope: !3036)
!3063 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !169, file: !169, line: 1003, type: !2831, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !3064)
!3064 = !{!3065, !3066}
!3065 = !DILocalVariable(name: "arg", arg: 1, scope: !3063, file: !169, line: 1003, type: !79)
!3066 = !DILocalVariable(name: "argsize", arg: 2, scope: !3063, file: !169, line: 1003, type: !34)
!3067 = !DILocation(line: 1003, column: 33, scope: !3063)
!3068 = !DILocation(line: 1003, column: 45, scope: !3063)
!3069 = !DILocation(line: 982, column: 32, scope: !2966, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 1005, column: 10, scope: !3063)
!3071 = !DILocation(line: 982, column: 44, scope: !2966, inlinedAt: !3070)
!3072 = !DILocation(line: 982, column: 58, scope: !2966, inlinedAt: !3070)
!3073 = !DILocation(line: 984, column: 3, scope: !2966, inlinedAt: !3070)
!3074 = !DILocation(line: 985, column: 13, scope: !2966, inlinedAt: !3070)
!3075 = !DILocation(line: 984, column: 26, scope: !2966, inlinedAt: !3070)
!3076 = !DILocation(line: 152, column: 43, scope: !1635, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 986, column: 3, scope: !2966, inlinedAt: !3070)
!3078 = !DILocation(line: 152, column: 51, scope: !1635, inlinedAt: !3077)
!3079 = !DILocation(line: 152, column: 58, scope: !1635, inlinedAt: !3077)
!3080 = !DILocation(line: 154, column: 17, scope: !1635, inlinedAt: !3077)
!3081 = !DILocation(line: 156, column: 57, scope: !1635, inlinedAt: !3077)
!3082 = !DILocation(line: 155, column: 17, scope: !1635, inlinedAt: !3077)
!3083 = !DILocation(line: 157, column: 7, scope: !1635, inlinedAt: !3077)
!3084 = !DILocation(line: 158, column: 12, scope: !1635, inlinedAt: !3077)
!3085 = !DILocation(line: 159, column: 6, scope: !1635, inlinedAt: !3077)
!3086 = !DILocation(line: 987, column: 10, scope: !2966, inlinedAt: !3070)
!3087 = !DILocation(line: 988, column: 1, scope: !2966, inlinedAt: !3070)
!3088 = !DILocation(line: 1005, column: 3, scope: !3063)
!3089 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !169, file: !169, line: 1009, type: !2845, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !3090)
!3090 = !{!3091, !3092, !3093, !3094}
!3091 = !DILocalVariable(name: "n", arg: 1, scope: !3089, file: !169, line: 1009, type: !62)
!3092 = !DILocalVariable(name: "s", arg: 2, scope: !3089, file: !169, line: 1009, type: !13)
!3093 = !DILocalVariable(name: "arg", arg: 3, scope: !3089, file: !169, line: 1009, type: !79)
!3094 = !DILocalVariable(name: "options", scope: !3089, file: !169, line: 1011, type: !176)
!3095 = !DILocation(line: 195, column: 26, scope: !2858, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 1012, column: 13, scope: !3089)
!3097 = !DILocation(line: 1009, column: 29, scope: !3089)
!3098 = !DILocation(line: 1009, column: 51, scope: !3089)
!3099 = !DILocation(line: 1009, column: 66, scope: !3089)
!3100 = !DILocation(line: 1011, column: 3, scope: !3089)
!3101 = !DILocation(line: 1012, column: 13, scope: !3089)
!3102 = !DILocation(line: 193, column: 48, scope: !2858, inlinedAt: !3096)
!3103 = !{!3104}
!3104 = distinct !{!3104, !3105, !"quoting_options_from_style: argument 0"}
!3105 = distinct !{!3105, !"quoting_options_from_style"}
!3106 = !DILocation(line: 196, column: 13, scope: !2870, inlinedAt: !3096)
!3107 = !DILocation(line: 196, column: 7, scope: !2858, inlinedAt: !3096)
!3108 = !DILocation(line: 197, column: 5, scope: !2870, inlinedAt: !3096)
!3109 = !DILocation(line: 1011, column: 26, scope: !3089)
!3110 = !DILocation(line: 152, column: 43, scope: !1635, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 1013, column: 3, scope: !3089)
!3112 = !DILocation(line: 152, column: 51, scope: !1635, inlinedAt: !3111)
!3113 = !DILocation(line: 152, column: 58, scope: !1635, inlinedAt: !3111)
!3114 = !DILocation(line: 154, column: 17, scope: !1635, inlinedAt: !3111)
!3115 = !DILocation(line: 156, column: 57, scope: !1635, inlinedAt: !3111)
!3116 = !DILocation(line: 155, column: 17, scope: !1635, inlinedAt: !3111)
!3117 = !DILocation(line: 157, column: 7, scope: !1635, inlinedAt: !3111)
!3118 = !DILocation(line: 158, column: 12, scope: !1635, inlinedAt: !3111)
!3119 = !DILocation(line: 159, column: 6, scope: !1635, inlinedAt: !3111)
!3120 = !DILocation(line: 1014, column: 10, scope: !3089)
!3121 = !DILocation(line: 1015, column: 1, scope: !3089)
!3122 = !DILocation(line: 1014, column: 3, scope: !3089)
!3123 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !169, file: !169, line: 1018, type: !3124, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!60, !62, !79, !79, !79}
!3126 = !{!3127, !3128, !3129, !3130}
!3127 = !DILocalVariable(name: "n", arg: 1, scope: !3123, file: !169, line: 1018, type: !62)
!3128 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3123, file: !169, line: 1018, type: !79)
!3129 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3123, file: !169, line: 1019, type: !79)
!3130 = !DILocalVariable(name: "arg", arg: 4, scope: !3123, file: !169, line: 1019, type: !79)
!3131 = !DILocation(line: 1018, column: 24, scope: !3123)
!3132 = !DILocation(line: 1018, column: 39, scope: !3123)
!3133 = !DILocation(line: 1019, column: 32, scope: !3123)
!3134 = !DILocation(line: 1019, column: 57, scope: !3123)
!3135 = !DILocalVariable(name: "n", arg: 1, scope: !3136, file: !169, line: 1026, type: !62)
!3136 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !169, file: !169, line: 1026, type: !3137, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !3139)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!60, !62, !79, !79, !79, !34}
!3139 = !{!3135, !3140, !3141, !3142, !3143, !3144}
!3140 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3136, file: !169, line: 1026, type: !79)
!3141 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3136, file: !169, line: 1027, type: !79)
!3142 = !DILocalVariable(name: "arg", arg: 4, scope: !3136, file: !169, line: 1028, type: !79)
!3143 = !DILocalVariable(name: "argsize", arg: 5, scope: !3136, file: !169, line: 1028, type: !34)
!3144 = !DILocalVariable(name: "o", scope: !3136, file: !169, line: 1030, type: !176)
!3145 = !DILocation(line: 1026, column: 28, scope: !3136, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 1021, column: 10, scope: !3123)
!3147 = !DILocation(line: 1026, column: 43, scope: !3136, inlinedAt: !3146)
!3148 = !DILocation(line: 1027, column: 36, scope: !3136, inlinedAt: !3146)
!3149 = !DILocation(line: 1028, column: 36, scope: !3136, inlinedAt: !3146)
!3150 = !DILocation(line: 1028, column: 48, scope: !3136, inlinedAt: !3146)
!3151 = !DILocation(line: 1030, column: 3, scope: !3136, inlinedAt: !3146)
!3152 = !DILocation(line: 1030, column: 30, scope: !3136, inlinedAt: !3146)
!3153 = !DILocation(line: 1030, column: 26, scope: !3136, inlinedAt: !3146)
!3154 = !DILocation(line: 179, column: 45, scope: !1684, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 1031, column: 3, scope: !3136, inlinedAt: !3146)
!3156 = !DILocation(line: 180, column: 33, scope: !1684, inlinedAt: !3155)
!3157 = !DILocation(line: 180, column: 57, scope: !1684, inlinedAt: !3155)
!3158 = !DILocation(line: 184, column: 6, scope: !1684, inlinedAt: !3155)
!3159 = !DILocation(line: 184, column: 12, scope: !1684, inlinedAt: !3155)
!3160 = !DILocation(line: 185, column: 8, scope: !1700, inlinedAt: !3155)
!3161 = !DILocation(line: 185, column: 23, scope: !1700, inlinedAt: !3155)
!3162 = !DILocation(line: 185, column: 19, scope: !1700, inlinedAt: !3155)
!3163 = !DILocation(line: 186, column: 5, scope: !1700, inlinedAt: !3155)
!3164 = !DILocation(line: 187, column: 6, scope: !1684, inlinedAt: !3155)
!3165 = !DILocation(line: 187, column: 17, scope: !1684, inlinedAt: !3155)
!3166 = !DILocation(line: 188, column: 6, scope: !1684, inlinedAt: !3155)
!3167 = !DILocation(line: 188, column: 18, scope: !1684, inlinedAt: !3155)
!3168 = !DILocation(line: 1032, column: 10, scope: !3136, inlinedAt: !3146)
!3169 = !DILocation(line: 1033, column: 1, scope: !3136, inlinedAt: !3146)
!3170 = !DILocation(line: 1021, column: 3, scope: !3123)
!3171 = !DILocation(line: 1026, column: 28, scope: !3136)
!3172 = !DILocation(line: 1026, column: 43, scope: !3136)
!3173 = !DILocation(line: 1027, column: 36, scope: !3136)
!3174 = !DILocation(line: 1028, column: 36, scope: !3136)
!3175 = !DILocation(line: 1028, column: 48, scope: !3136)
!3176 = !DILocation(line: 1030, column: 3, scope: !3136)
!3177 = !DILocation(line: 1030, column: 30, scope: !3136)
!3178 = !DILocation(line: 1030, column: 26, scope: !3136)
!3179 = !DILocation(line: 179, column: 45, scope: !1684, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 1031, column: 3, scope: !3136)
!3181 = !DILocation(line: 180, column: 33, scope: !1684, inlinedAt: !3180)
!3182 = !DILocation(line: 180, column: 57, scope: !1684, inlinedAt: !3180)
!3183 = !DILocation(line: 184, column: 6, scope: !1684, inlinedAt: !3180)
!3184 = !DILocation(line: 184, column: 12, scope: !1684, inlinedAt: !3180)
!3185 = !DILocation(line: 185, column: 8, scope: !1700, inlinedAt: !3180)
!3186 = !DILocation(line: 185, column: 23, scope: !1700, inlinedAt: !3180)
!3187 = !DILocation(line: 185, column: 19, scope: !1700, inlinedAt: !3180)
!3188 = !DILocation(line: 186, column: 5, scope: !1700, inlinedAt: !3180)
!3189 = !DILocation(line: 187, column: 6, scope: !1684, inlinedAt: !3180)
!3190 = !DILocation(line: 187, column: 17, scope: !1684, inlinedAt: !3180)
!3191 = !DILocation(line: 188, column: 6, scope: !1684, inlinedAt: !3180)
!3192 = !DILocation(line: 188, column: 18, scope: !1684, inlinedAt: !3180)
!3193 = !DILocation(line: 1032, column: 10, scope: !3136)
!3194 = !DILocation(line: 1033, column: 1, scope: !3136)
!3195 = !DILocation(line: 1032, column: 3, scope: !3136)
!3196 = distinct !DISubprogram(name: "quotearg_custom", scope: !169, file: !169, line: 1036, type: !3197, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !3199)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!60, !79, !79, !79}
!3199 = !{!3200, !3201, !3202}
!3200 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3196, file: !169, line: 1036, type: !79)
!3201 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3196, file: !169, line: 1036, type: !79)
!3202 = !DILocalVariable(name: "arg", arg: 3, scope: !3196, file: !169, line: 1037, type: !79)
!3203 = !DILocation(line: 1036, column: 30, scope: !3196)
!3204 = !DILocation(line: 1036, column: 54, scope: !3196)
!3205 = !DILocation(line: 1037, column: 30, scope: !3196)
!3206 = !DILocation(line: 1018, column: 24, scope: !3123, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 1039, column: 10, scope: !3196)
!3208 = !DILocation(line: 1018, column: 39, scope: !3123, inlinedAt: !3207)
!3209 = !DILocation(line: 1019, column: 32, scope: !3123, inlinedAt: !3207)
!3210 = !DILocation(line: 1019, column: 57, scope: !3123, inlinedAt: !3207)
!3211 = !DILocation(line: 1026, column: 28, scope: !3136, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 1021, column: 10, scope: !3123, inlinedAt: !3207)
!3213 = !DILocation(line: 1026, column: 43, scope: !3136, inlinedAt: !3212)
!3214 = !DILocation(line: 1027, column: 36, scope: !3136, inlinedAt: !3212)
!3215 = !DILocation(line: 1028, column: 36, scope: !3136, inlinedAt: !3212)
!3216 = !DILocation(line: 1028, column: 48, scope: !3136, inlinedAt: !3212)
!3217 = !DILocation(line: 1030, column: 3, scope: !3136, inlinedAt: !3212)
!3218 = !DILocation(line: 1030, column: 30, scope: !3136, inlinedAt: !3212)
!3219 = !DILocation(line: 1030, column: 26, scope: !3136, inlinedAt: !3212)
!3220 = !DILocation(line: 179, column: 45, scope: !1684, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 1031, column: 3, scope: !3136, inlinedAt: !3212)
!3222 = !DILocation(line: 180, column: 33, scope: !1684, inlinedAt: !3221)
!3223 = !DILocation(line: 180, column: 57, scope: !1684, inlinedAt: !3221)
!3224 = !DILocation(line: 184, column: 6, scope: !1684, inlinedAt: !3221)
!3225 = !DILocation(line: 184, column: 12, scope: !1684, inlinedAt: !3221)
!3226 = !DILocation(line: 185, column: 8, scope: !1700, inlinedAt: !3221)
!3227 = !DILocation(line: 185, column: 23, scope: !1700, inlinedAt: !3221)
!3228 = !DILocation(line: 185, column: 19, scope: !1700, inlinedAt: !3221)
!3229 = !DILocation(line: 186, column: 5, scope: !1700, inlinedAt: !3221)
!3230 = !DILocation(line: 187, column: 6, scope: !1684, inlinedAt: !3221)
!3231 = !DILocation(line: 187, column: 17, scope: !1684, inlinedAt: !3221)
!3232 = !DILocation(line: 188, column: 6, scope: !1684, inlinedAt: !3221)
!3233 = !DILocation(line: 188, column: 18, scope: !1684, inlinedAt: !3221)
!3234 = !DILocation(line: 1032, column: 10, scope: !3136, inlinedAt: !3212)
!3235 = !DILocation(line: 1033, column: 1, scope: !3136, inlinedAt: !3212)
!3236 = !DILocation(line: 1039, column: 3, scope: !3196)
!3237 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !169, file: !169, line: 1043, type: !3238, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!60, !79, !79, !79, !34}
!3240 = !{!3241, !3242, !3243, !3244}
!3241 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3237, file: !169, line: 1043, type: !79)
!3242 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3237, file: !169, line: 1043, type: !79)
!3243 = !DILocalVariable(name: "arg", arg: 3, scope: !3237, file: !169, line: 1044, type: !79)
!3244 = !DILocalVariable(name: "argsize", arg: 4, scope: !3237, file: !169, line: 1044, type: !34)
!3245 = !DILocation(line: 1043, column: 34, scope: !3237)
!3246 = !DILocation(line: 1043, column: 58, scope: !3237)
!3247 = !DILocation(line: 1044, column: 34, scope: !3237)
!3248 = !DILocation(line: 1044, column: 46, scope: !3237)
!3249 = !DILocation(line: 1026, column: 28, scope: !3136, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 1046, column: 10, scope: !3237)
!3251 = !DILocation(line: 1026, column: 43, scope: !3136, inlinedAt: !3250)
!3252 = !DILocation(line: 1027, column: 36, scope: !3136, inlinedAt: !3250)
!3253 = !DILocation(line: 1028, column: 36, scope: !3136, inlinedAt: !3250)
!3254 = !DILocation(line: 1028, column: 48, scope: !3136, inlinedAt: !3250)
!3255 = !DILocation(line: 1030, column: 3, scope: !3136, inlinedAt: !3250)
!3256 = !DILocation(line: 1030, column: 30, scope: !3136, inlinedAt: !3250)
!3257 = !DILocation(line: 1030, column: 26, scope: !3136, inlinedAt: !3250)
!3258 = !DILocation(line: 179, column: 45, scope: !1684, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 1031, column: 3, scope: !3136, inlinedAt: !3250)
!3260 = !DILocation(line: 180, column: 33, scope: !1684, inlinedAt: !3259)
!3261 = !DILocation(line: 180, column: 57, scope: !1684, inlinedAt: !3259)
!3262 = !DILocation(line: 184, column: 6, scope: !1684, inlinedAt: !3259)
!3263 = !DILocation(line: 184, column: 12, scope: !1684, inlinedAt: !3259)
!3264 = !DILocation(line: 185, column: 8, scope: !1700, inlinedAt: !3259)
!3265 = !DILocation(line: 185, column: 23, scope: !1700, inlinedAt: !3259)
!3266 = !DILocation(line: 185, column: 19, scope: !1700, inlinedAt: !3259)
!3267 = !DILocation(line: 186, column: 5, scope: !1700, inlinedAt: !3259)
!3268 = !DILocation(line: 187, column: 6, scope: !1684, inlinedAt: !3259)
!3269 = !DILocation(line: 187, column: 17, scope: !1684, inlinedAt: !3259)
!3270 = !DILocation(line: 188, column: 6, scope: !1684, inlinedAt: !3259)
!3271 = !DILocation(line: 188, column: 18, scope: !1684, inlinedAt: !3259)
!3272 = !DILocation(line: 1032, column: 10, scope: !3136, inlinedAt: !3250)
!3273 = !DILocation(line: 1033, column: 1, scope: !3136, inlinedAt: !3250)
!3274 = !DILocation(line: 1046, column: 3, scope: !3237)
!3275 = distinct !DISubprogram(name: "quote_n_mem", scope: !169, file: !169, line: 1061, type: !3276, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!79, !62, !79, !34}
!3278 = !{!3279, !3280, !3281}
!3279 = !DILocalVariable(name: "n", arg: 1, scope: !3275, file: !169, line: 1061, type: !62)
!3280 = !DILocalVariable(name: "arg", arg: 2, scope: !3275, file: !169, line: 1061, type: !79)
!3281 = !DILocalVariable(name: "argsize", arg: 3, scope: !3275, file: !169, line: 1061, type: !34)
!3282 = !DILocation(line: 1061, column: 18, scope: !3275)
!3283 = !DILocation(line: 1061, column: 33, scope: !3275)
!3284 = !DILocation(line: 1061, column: 45, scope: !3275)
!3285 = !DILocation(line: 1063, column: 10, scope: !3275)
!3286 = !DILocation(line: 1063, column: 3, scope: !3275)
!3287 = distinct !DISubprogram(name: "quote_mem", scope: !169, file: !169, line: 1067, type: !3288, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!79, !79, !34}
!3290 = !{!3291, !3292}
!3291 = !DILocalVariable(name: "arg", arg: 1, scope: !3287, file: !169, line: 1067, type: !79)
!3292 = !DILocalVariable(name: "argsize", arg: 2, scope: !3287, file: !169, line: 1067, type: !34)
!3293 = !DILocation(line: 1067, column: 24, scope: !3287)
!3294 = !DILocation(line: 1067, column: 36, scope: !3287)
!3295 = !DILocation(line: 1061, column: 18, scope: !3275, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 1069, column: 10, scope: !3287)
!3297 = !DILocation(line: 1061, column: 33, scope: !3275, inlinedAt: !3296)
!3298 = !DILocation(line: 1061, column: 45, scope: !3275, inlinedAt: !3296)
!3299 = !DILocation(line: 1063, column: 10, scope: !3275, inlinedAt: !3296)
!3300 = !DILocation(line: 1069, column: 3, scope: !3287)
!3301 = distinct !DISubprogram(name: "quote_n", scope: !169, file: !169, line: 1073, type: !3302, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !3304)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!79, !62, !79}
!3304 = !{!3305, !3306}
!3305 = !DILocalVariable(name: "n", arg: 1, scope: !3301, file: !169, line: 1073, type: !62)
!3306 = !DILocalVariable(name: "arg", arg: 2, scope: !3301, file: !169, line: 1073, type: !79)
!3307 = !DILocation(line: 1073, column: 14, scope: !3301)
!3308 = !DILocation(line: 1073, column: 29, scope: !3301)
!3309 = !DILocation(line: 1061, column: 18, scope: !3275, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 1075, column: 10, scope: !3301)
!3311 = !DILocation(line: 1061, column: 33, scope: !3275, inlinedAt: !3310)
!3312 = !DILocation(line: 1061, column: 45, scope: !3275, inlinedAt: !3310)
!3313 = !DILocation(line: 1063, column: 10, scope: !3275, inlinedAt: !3310)
!3314 = !DILocation(line: 1075, column: 3, scope: !3301)
!3315 = distinct !DISubprogram(name: "quote", scope: !169, file: !169, line: 1079, type: !1334, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !3316)
!3316 = !{!3317}
!3317 = !DILocalVariable(name: "arg", arg: 1, scope: !3315, file: !169, line: 1079, type: !79)
!3318 = !DILocation(line: 1079, column: 20, scope: !3315)
!3319 = !DILocation(line: 1073, column: 14, scope: !3301, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 1081, column: 10, scope: !3315)
!3321 = !DILocation(line: 1073, column: 29, scope: !3301, inlinedAt: !3320)
!3322 = !DILocation(line: 1061, column: 18, scope: !3275, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 1075, column: 10, scope: !3301, inlinedAt: !3320)
!3324 = !DILocation(line: 1061, column: 33, scope: !3275, inlinedAt: !3323)
!3325 = !DILocation(line: 1061, column: 45, scope: !3275, inlinedAt: !3323)
!3326 = !DILocation(line: 1063, column: 10, scope: !3275, inlinedAt: !3323)
!3327 = !DILocation(line: 1081, column: 3, scope: !3315)
!3328 = distinct !DISubprogram(name: "version_etc_arn", scope: !223, file: !223, line: 62, type: !3329, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !3384)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !3331, !79, !79, !79, !3383, !34}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3333, line: 7, baseType: !3334)
!3333 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3335, line: 49, size: 1728, elements: !3336)
!3335 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3352, !3354, !3355, !3356, !3359, !3360, !3362, !3364, !3367, !3369, !3372, !3375, !3376, !3377, !3378, !3379}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3334, file: !3335, line: 51, baseType: !62, size: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3334, file: !3335, line: 54, baseType: !60, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3334, file: !3335, line: 55, baseType: !60, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3334, file: !3335, line: 56, baseType: !60, size: 64, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3334, file: !3335, line: 57, baseType: !60, size: 64, offset: 256)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3334, file: !3335, line: 58, baseType: !60, size: 64, offset: 320)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3334, file: !3335, line: 59, baseType: !60, size: 64, offset: 384)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3334, file: !3335, line: 60, baseType: !60, size: 64, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3334, file: !3335, line: 61, baseType: !60, size: 64, offset: 512)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3334, file: !3335, line: 64, baseType: !60, size: 64, offset: 576)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3334, file: !3335, line: 65, baseType: !60, size: 64, offset: 640)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3334, file: !3335, line: 66, baseType: !60, size: 64, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3334, file: !3335, line: 68, baseType: !3350, size: 64, offset: 768)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3335, line: 36, flags: DIFlagFwdDecl)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3334, file: !3335, line: 70, baseType: !3353, size: 64, offset: 832)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3334, file: !3335, line: 72, baseType: !62, size: 32, offset: 896)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3334, file: !3335, line: 73, baseType: !62, size: 32, offset: 928)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3334, file: !3335, line: 74, baseType: !3357, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !3358, line: 150, baseType: !1329)
!3358 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3334, file: !3335, line: 77, baseType: !63, size: 16, offset: 1024)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3334, file: !3335, line: 78, baseType: !3361, size: 8, offset: 1040)
!3361 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3334, file: !3335, line: 79, baseType: !3363, size: 8, offset: 1048)
!3363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 8, elements: !94)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3334, file: !3335, line: 81, baseType: !3365, size: 64, offset: 1088)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3335, line: 43, baseType: null)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3334, file: !3335, line: 89, baseType: !3368, size: 64, offset: 1152)
!3368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !3358, line: 151, baseType: !1329)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3334, file: !3335, line: 91, baseType: !3370, size: 64, offset: 1216)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3335, line: 37, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3334, file: !3335, line: 92, baseType: !3373, size: 64, offset: 1280)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3335, line: 38, flags: DIFlagFwdDecl)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3334, file: !3335, line: 93, baseType: !3353, size: 64, offset: 1344)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3334, file: !3335, line: 94, baseType: !32, size: 64, offset: 1408)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3334, file: !3335, line: 95, baseType: !34, size: 64, offset: 1472)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3334, file: !3335, line: 96, baseType: !62, size: 32, offset: 1536)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3334, file: !3335, line: 98, baseType: !3380, size: 160, offset: 1568)
!3380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, elements: !3381)
!3381 = !{!3382}
!3382 = !DISubrange(count: 20)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3390}
!3385 = !DILocalVariable(name: "stream", arg: 1, scope: !3328, file: !223, line: 62, type: !3331)
!3386 = !DILocalVariable(name: "command_name", arg: 2, scope: !3328, file: !223, line: 63, type: !79)
!3387 = !DILocalVariable(name: "package", arg: 3, scope: !3328, file: !223, line: 63, type: !79)
!3388 = !DILocalVariable(name: "version", arg: 4, scope: !3328, file: !223, line: 64, type: !79)
!3389 = !DILocalVariable(name: "authors", arg: 5, scope: !3328, file: !223, line: 65, type: !3383)
!3390 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3328, file: !223, line: 65, type: !34)
!3391 = !DILocation(line: 62, column: 24, scope: !3328)
!3392 = !DILocation(line: 63, column: 30, scope: !3328)
!3393 = !DILocation(line: 63, column: 56, scope: !3328)
!3394 = !DILocation(line: 64, column: 30, scope: !3328)
!3395 = !DILocation(line: 65, column: 39, scope: !3328)
!3396 = !DILocation(line: 65, column: 55, scope: !3328)
!3397 = !DILocation(line: 67, column: 7, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3328, file: !223, line: 67, column: 7)
!3399 = !DILocation(line: 67, column: 7, scope: !3328)
!3400 = !DILocation(line: 68, column: 5, scope: !3398)
!3401 = !DILocation(line: 70, column: 5, scope: !3398)
!3402 = !DILocation(line: 84, column: 3, scope: !3328)
!3403 = !DILocation(line: 86, column: 3, scope: !3328)
!3404 = !DILocation(line: 95, column: 3, scope: !3328)
!3405 = !DILocation(line: 99, column: 7, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3328, file: !223, line: 96, column: 5)
!3407 = !DILocation(line: 102, column: 7, scope: !3406)
!3408 = !DILocation(line: 103, column: 7, scope: !3406)
!3409 = !DILocation(line: 106, column: 7, scope: !3406)
!3410 = !DILocation(line: 107, column: 7, scope: !3406)
!3411 = !DILocation(line: 110, column: 7, scope: !3406)
!3412 = !DILocation(line: 112, column: 7, scope: !3406)
!3413 = !DILocation(line: 117, column: 7, scope: !3406)
!3414 = !DILocation(line: 119, column: 7, scope: !3406)
!3415 = !DILocation(line: 124, column: 7, scope: !3406)
!3416 = !DILocation(line: 126, column: 7, scope: !3406)
!3417 = !DILocation(line: 131, column: 7, scope: !3406)
!3418 = !DILocation(line: 134, column: 7, scope: !3406)
!3419 = !DILocation(line: 139, column: 7, scope: !3406)
!3420 = !DILocation(line: 142, column: 7, scope: !3406)
!3421 = !DILocation(line: 147, column: 7, scope: !3406)
!3422 = !DILocation(line: 151, column: 7, scope: !3406)
!3423 = !DILocation(line: 156, column: 7, scope: !3406)
!3424 = !DILocation(line: 160, column: 7, scope: !3406)
!3425 = !DILocation(line: 167, column: 7, scope: !3406)
!3426 = !DILocation(line: 171, column: 7, scope: !3406)
!3427 = !DILocation(line: 173, column: 1, scope: !3328)
!3428 = distinct !DISubprogram(name: "version_etc_ar", scope: !223, file: !223, line: 180, type: !3429, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !3331, !79, !79, !79, !3383}
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437}
!3432 = !DILocalVariable(name: "stream", arg: 1, scope: !3428, file: !223, line: 180, type: !3331)
!3433 = !DILocalVariable(name: "command_name", arg: 2, scope: !3428, file: !223, line: 181, type: !79)
!3434 = !DILocalVariable(name: "package", arg: 3, scope: !3428, file: !223, line: 181, type: !79)
!3435 = !DILocalVariable(name: "version", arg: 4, scope: !3428, file: !223, line: 182, type: !79)
!3436 = !DILocalVariable(name: "authors", arg: 5, scope: !3428, file: !223, line: 182, type: !3383)
!3437 = !DILocalVariable(name: "n_authors", scope: !3428, file: !223, line: 184, type: !34)
!3438 = !DILocation(line: 180, column: 23, scope: !3428)
!3439 = !DILocation(line: 181, column: 29, scope: !3428)
!3440 = !DILocation(line: 181, column: 55, scope: !3428)
!3441 = !DILocation(line: 182, column: 29, scope: !3428)
!3442 = !DILocation(line: 182, column: 59, scope: !3428)
!3443 = !DILocation(line: 184, column: 10, scope: !3428)
!3444 = !DILocation(line: 186, column: 8, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3428, file: !223, line: 186, column: 3)
!3446 = !DILocation(line: 0, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3445, file: !223, line: 186, column: 3)
!3448 = !DILocation(line: 186, column: 23, scope: !3447)
!3449 = !DILocation(line: 186, column: 3, scope: !3445)
!3450 = !DILocation(line: 186, column: 52, scope: !3447)
!3451 = distinct !{!3451, !3449, !3452}
!3452 = !DILocation(line: 187, column: 5, scope: !3445)
!3453 = !DILocation(line: 188, column: 3, scope: !3428)
!3454 = !DILocation(line: 189, column: 1, scope: !3428)
!3455 = distinct !DISubprogram(name: "version_etc_va", scope: !223, file: !223, line: 196, type: !3456, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !3465)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{null, !3331, !79, !79, !79, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !220, line: 189, size: 192, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3459, file: !220, line: 189, baseType: !7, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3459, file: !220, line: 189, baseType: !7, size: 32, offset: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3459, file: !220, line: 189, baseType: !32, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3459, file: !220, line: 189, baseType: !32, size: 64, offset: 128)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472}
!3466 = !DILocalVariable(name: "stream", arg: 1, scope: !3455, file: !223, line: 196, type: !3331)
!3467 = !DILocalVariable(name: "command_name", arg: 2, scope: !3455, file: !223, line: 197, type: !79)
!3468 = !DILocalVariable(name: "package", arg: 3, scope: !3455, file: !223, line: 197, type: !79)
!3469 = !DILocalVariable(name: "version", arg: 4, scope: !3455, file: !223, line: 198, type: !79)
!3470 = !DILocalVariable(name: "authors", arg: 5, scope: !3455, file: !223, line: 198, type: !3458)
!3471 = !DILocalVariable(name: "n_authors", scope: !3455, file: !223, line: 200, type: !34)
!3472 = !DILocalVariable(name: "authtab", scope: !3455, file: !223, line: 201, type: !3473)
!3473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 640, elements: !172)
!3474 = !DILocation(line: 196, column: 23, scope: !3455)
!3475 = !DILocation(line: 197, column: 29, scope: !3455)
!3476 = !DILocation(line: 197, column: 55, scope: !3455)
!3477 = !DILocation(line: 198, column: 29, scope: !3455)
!3478 = !DILocation(line: 198, column: 46, scope: !3455)
!3479 = !DILocation(line: 201, column: 3, scope: !3455)
!3480 = !DILocation(line: 201, column: 15, scope: !3455)
!3481 = !DILocation(line: 200, column: 10, scope: !3455)
!3482 = !DILocation(line: 205, column: 35, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !223, line: 203, column: 3)
!3484 = distinct !DILexicalBlock(scope: !3455, file: !223, line: 203, column: 3)
!3485 = !DILocation(line: 205, column: 14, scope: !3483)
!3486 = !DILocation(line: 205, column: 33, scope: !3483)
!3487 = !DILocation(line: 205, column: 67, scope: !3483)
!3488 = !DILocation(line: 203, column: 3, scope: !3484)
!3489 = !DILocation(line: 0, scope: !3483)
!3490 = !DILocation(line: 208, column: 3, scope: !3455)
!3491 = !DILocation(line: 210, column: 1, scope: !3455)
!3492 = distinct !DISubprogram(name: "version_etc", scope: !223, file: !223, line: 227, type: !3493, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !3495)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{null, !3331, !79, !79, !79, null}
!3495 = !{!3496, !3497, !3498, !3499, !3500}
!3496 = !DILocalVariable(name: "stream", arg: 1, scope: !3492, file: !223, line: 227, type: !3331)
!3497 = !DILocalVariable(name: "command_name", arg: 2, scope: !3492, file: !223, line: 228, type: !79)
!3498 = !DILocalVariable(name: "package", arg: 3, scope: !3492, file: !223, line: 228, type: !79)
!3499 = !DILocalVariable(name: "version", arg: 4, scope: !3492, file: !223, line: 229, type: !79)
!3500 = !DILocalVariable(name: "authors", scope: !3492, file: !223, line: 231, type: !3501)
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3502, line: 52, baseType: !3503)
!3502 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3504, line: 48, baseType: !3505)
!3504 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !220, line: 231, baseType: !3506)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3459, size: 192, elements: !94)
!3507 = !DILocation(line: 227, column: 20, scope: !3492)
!3508 = !DILocation(line: 228, column: 26, scope: !3492)
!3509 = !DILocation(line: 228, column: 52, scope: !3492)
!3510 = !DILocation(line: 229, column: 26, scope: !3492)
!3511 = !DILocation(line: 231, column: 3, scope: !3492)
!3512 = !DILocation(line: 231, column: 11, scope: !3492)
!3513 = !DILocation(line: 233, column: 3, scope: !3492)
!3514 = !DILocation(line: 234, column: 3, scope: !3492)
!3515 = !DILocation(line: 235, column: 3, scope: !3492)
!3516 = !DILocation(line: 236, column: 1, scope: !3492)
!3517 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !223, file: !223, line: 239, type: !690, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !131)
!3518 = !DILocation(line: 245, column: 3, scope: !3517)
!3519 = !DILocation(line: 251, column: 3, scope: !3517)
!3520 = !DILocation(line: 256, column: 3, scope: !3517)
!3521 = !DILocation(line: 258, column: 1, scope: !3517)
!3522 = distinct !DISubprogram(name: "xnmalloc", scope: !28, file: !28, line: 99, type: !3523, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3525)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!32, !34, !34}
!3525 = !{!3526, !3527}
!3526 = !DILocalVariable(name: "n", arg: 1, scope: !3522, file: !28, line: 99, type: !34)
!3527 = !DILocalVariable(name: "s", arg: 2, scope: !3522, file: !28, line: 99, type: !34)
!3528 = !DILocation(line: 99, column: 18, scope: !3522)
!3529 = !DILocation(line: 99, column: 28, scope: !3522)
!3530 = !DILocation(line: 101, column: 7, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3522, file: !28, line: 101, column: 7)
!3532 = !DILocation(line: 101, column: 7, scope: !3522)
!3533 = !DILocation(line: 102, column: 5, scope: !3531)
!3534 = !DILocation(line: 103, column: 21, scope: !3522)
!3535 = !DILocalVariable(name: "n", arg: 1, scope: !3536, file: !3537, line: 39, type: !34)
!3536 = distinct !DISubprogram(name: "xmalloc", scope: !3537, file: !3537, line: 39, type: !3538, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3540)
!3537 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!32, !34}
!3540 = !{!3535, !3541}
!3541 = !DILocalVariable(name: "p", scope: !3536, file: !3537, line: 41, type: !32)
!3542 = !DILocation(line: 39, column: 17, scope: !3536, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 103, column: 10, scope: !3522)
!3544 = !DILocation(line: 41, column: 13, scope: !3536, inlinedAt: !3543)
!3545 = !DILocation(line: 41, column: 9, scope: !3536, inlinedAt: !3543)
!3546 = !DILocation(line: 42, column: 8, scope: !3547, inlinedAt: !3543)
!3547 = distinct !DILexicalBlock(scope: !3536, file: !3537, line: 42, column: 7)
!3548 = !DILocation(line: 42, column: 15, scope: !3547, inlinedAt: !3543)
!3549 = !DILocation(line: 42, column: 10, scope: !3547, inlinedAt: !3543)
!3550 = !DILocation(line: 43, column: 5, scope: !3547, inlinedAt: !3543)
!3551 = !DILocation(line: 103, column: 3, scope: !3522)
!3552 = !DILocation(line: 39, column: 17, scope: !3536)
!3553 = !DILocation(line: 41, column: 13, scope: !3536)
!3554 = !DILocation(line: 41, column: 9, scope: !3536)
!3555 = !DILocation(line: 42, column: 8, scope: !3547)
!3556 = !DILocation(line: 42, column: 15, scope: !3547)
!3557 = !DILocation(line: 42, column: 10, scope: !3547)
!3558 = !DILocation(line: 43, column: 5, scope: !3547)
!3559 = !DILocation(line: 44, column: 3, scope: !3536)
!3560 = distinct !DISubprogram(name: "xnrealloc", scope: !28, file: !28, line: 112, type: !3561, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3563)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!32, !32, !34, !34}
!3563 = !{!3564, !3565, !3566}
!3564 = !DILocalVariable(name: "p", arg: 1, scope: !3560, file: !28, line: 112, type: !32)
!3565 = !DILocalVariable(name: "n", arg: 2, scope: !3560, file: !28, line: 112, type: !34)
!3566 = !DILocalVariable(name: "s", arg: 3, scope: !3560, file: !28, line: 112, type: !34)
!3567 = !DILocation(line: 112, column: 18, scope: !3560)
!3568 = !DILocation(line: 112, column: 28, scope: !3560)
!3569 = !DILocation(line: 112, column: 38, scope: !3560)
!3570 = !DILocation(line: 114, column: 7, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3560, file: !28, line: 114, column: 7)
!3572 = !DILocation(line: 114, column: 7, scope: !3560)
!3573 = !DILocation(line: 115, column: 5, scope: !3571)
!3574 = !DILocation(line: 116, column: 25, scope: !3560)
!3575 = !DILocalVariable(name: "p", arg: 1, scope: !3576, file: !3537, line: 51, type: !32)
!3576 = distinct !DISubprogram(name: "xrealloc", scope: !3537, file: !3537, line: 51, type: !3577, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3579)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!32, !32, !34}
!3579 = !{!3575, !3580}
!3580 = !DILocalVariable(name: "n", arg: 2, scope: !3576, file: !3537, line: 51, type: !34)
!3581 = !DILocation(line: 51, column: 17, scope: !3576, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 116, column: 10, scope: !3560)
!3583 = !DILocation(line: 51, column: 27, scope: !3576, inlinedAt: !3582)
!3584 = !DILocation(line: 53, column: 8, scope: !3585, inlinedAt: !3582)
!3585 = distinct !DILexicalBlock(scope: !3576, file: !3537, line: 53, column: 7)
!3586 = !DILocation(line: 53, column: 13, scope: !3585, inlinedAt: !3582)
!3587 = !DILocation(line: 53, column: 10, scope: !3585, inlinedAt: !3582)
!3588 = !DILocation(line: 57, column: 7, scope: !3589, inlinedAt: !3582)
!3589 = distinct !DILexicalBlock(scope: !3585, file: !3537, line: 54, column: 5)
!3590 = !DILocation(line: 58, column: 7, scope: !3589, inlinedAt: !3582)
!3591 = !DILocation(line: 61, column: 7, scope: !3576, inlinedAt: !3582)
!3592 = !DILocation(line: 62, column: 8, scope: !3593, inlinedAt: !3582)
!3593 = distinct !DILexicalBlock(scope: !3576, file: !3537, line: 62, column: 7)
!3594 = !DILocation(line: 62, column: 13, scope: !3593, inlinedAt: !3582)
!3595 = !DILocation(line: 62, column: 10, scope: !3593, inlinedAt: !3582)
!3596 = !DILocation(line: 63, column: 5, scope: !3593, inlinedAt: !3582)
!3597 = !DILocation(line: 0, scope: !3576, inlinedAt: !3582)
!3598 = !DILocation(line: 116, column: 3, scope: !3560)
!3599 = !DILocation(line: 51, column: 17, scope: !3576)
!3600 = !DILocation(line: 51, column: 27, scope: !3576)
!3601 = !DILocation(line: 53, column: 8, scope: !3585)
!3602 = !DILocation(line: 53, column: 13, scope: !3585)
!3603 = !DILocation(line: 53, column: 10, scope: !3585)
!3604 = !DILocation(line: 57, column: 7, scope: !3589)
!3605 = !DILocation(line: 58, column: 7, scope: !3589)
!3606 = !DILocation(line: 61, column: 7, scope: !3576)
!3607 = !DILocation(line: 62, column: 8, scope: !3593)
!3608 = !DILocation(line: 62, column: 13, scope: !3593)
!3609 = !DILocation(line: 62, column: 10, scope: !3593)
!3610 = !DILocation(line: 63, column: 5, scope: !3593)
!3611 = !DILocation(line: 0, scope: !3576)
!3612 = !DILocation(line: 65, column: 1, scope: !3576)
!3613 = !DILocation(line: 174, column: 19, scope: !231)
!3614 = !DILocation(line: 174, column: 30, scope: !231)
!3615 = !DILocation(line: 174, column: 41, scope: !231)
!3616 = !DILocation(line: 176, column: 14, scope: !231)
!3617 = !DILocation(line: 176, column: 10, scope: !231)
!3618 = !DILocation(line: 178, column: 9, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !231, file: !28, line: 178, column: 7)
!3620 = !DILocation(line: 178, column: 7, scope: !231)
!3621 = !DILocation(line: 180, column: 13, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !28, line: 180, column: 11)
!3623 = distinct !DILexicalBlock(scope: !3619, file: !28, line: 179, column: 5)
!3624 = !DILocation(line: 180, column: 11, scope: !3623)
!3625 = !DILocation(line: 188, column: 30, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3622, file: !28, line: 181, column: 9)
!3627 = !DILocation(line: 189, column: 16, scope: !3626)
!3628 = !DILocation(line: 189, column: 13, scope: !3626)
!3629 = !DILocation(line: 190, column: 9, scope: !3626)
!3630 = !DILocation(line: 0, scope: !3626)
!3631 = !DILocation(line: 191, column: 11, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3623, file: !28, line: 191, column: 11)
!3633 = !DILocation(line: 191, column: 11, scope: !3623)
!3634 = !DILocation(line: 206, column: 7, scope: !231)
!3635 = !DILocation(line: 207, column: 25, scope: !231)
!3636 = !DILocation(line: 51, column: 17, scope: !3576, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 207, column: 10, scope: !231)
!3638 = !DILocation(line: 51, column: 27, scope: !3576, inlinedAt: !3637)
!3639 = !DILocation(line: 53, column: 10, scope: !3585, inlinedAt: !3637)
!3640 = !DILocation(line: 192, column: 9, scope: !3632)
!3641 = !DILocation(line: 200, column: 69, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !28, line: 200, column: 11)
!3643 = distinct !DILexicalBlock(scope: !3619, file: !28, line: 195, column: 5)
!3644 = !DILocation(line: 201, column: 11, scope: !3642)
!3645 = !DILocation(line: 200, column: 11, scope: !3643)
!3646 = !DILocation(line: 202, column: 9, scope: !3642)
!3647 = !DILocation(line: 203, column: 14, scope: !3643)
!3648 = !DILocation(line: 203, column: 18, scope: !3643)
!3649 = !DILocation(line: 203, column: 9, scope: !3643)
!3650 = !DILocation(line: 53, column: 8, scope: !3585, inlinedAt: !3637)
!3651 = !DILocation(line: 57, column: 7, scope: !3589, inlinedAt: !3637)
!3652 = !DILocation(line: 58, column: 7, scope: !3589, inlinedAt: !3637)
!3653 = !DILocation(line: 61, column: 7, scope: !3576, inlinedAt: !3637)
!3654 = !DILocation(line: 62, column: 8, scope: !3593, inlinedAt: !3637)
!3655 = !DILocation(line: 62, column: 13, scope: !3593, inlinedAt: !3637)
!3656 = !DILocation(line: 62, column: 10, scope: !3593, inlinedAt: !3637)
!3657 = !DILocation(line: 63, column: 5, scope: !3593, inlinedAt: !3637)
!3658 = !DILocation(line: 0, scope: !3576, inlinedAt: !3637)
!3659 = !DILocation(line: 207, column: 3, scope: !231)
!3660 = distinct !DISubprogram(name: "xcharalloc", scope: !28, file: !28, line: 216, type: !2618, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3661)
!3661 = !{!3662}
!3662 = !DILocalVariable(name: "n", arg: 1, scope: !3660, file: !28, line: 216, type: !34)
!3663 = !DILocation(line: 216, column: 20, scope: !3660)
!3664 = !DILocation(line: 39, column: 17, scope: !3536, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 218, column: 10, scope: !3660)
!3666 = !DILocation(line: 41, column: 13, scope: !3536, inlinedAt: !3665)
!3667 = !DILocation(line: 41, column: 9, scope: !3536, inlinedAt: !3665)
!3668 = !DILocation(line: 42, column: 8, scope: !3547, inlinedAt: !3665)
!3669 = !DILocation(line: 42, column: 15, scope: !3547, inlinedAt: !3665)
!3670 = !DILocation(line: 42, column: 10, scope: !3547, inlinedAt: !3665)
!3671 = !DILocation(line: 43, column: 5, scope: !3547, inlinedAt: !3665)
!3672 = !DILocation(line: 218, column: 3, scope: !3660)
!3673 = distinct !DISubprogram(name: "x2realloc", scope: !3537, file: !3537, line: 74, type: !3674, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!32, !32, !33}
!3676 = !{!3677, !3678}
!3677 = !DILocalVariable(name: "p", arg: 1, scope: !3673, file: !3537, line: 74, type: !32)
!3678 = !DILocalVariable(name: "pn", arg: 2, scope: !3673, file: !3537, line: 74, type: !33)
!3679 = !DILocation(line: 74, column: 18, scope: !3673)
!3680 = !DILocation(line: 74, column: 29, scope: !3673)
!3681 = !DILocation(line: 174, column: 19, scope: !231, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 76, column: 10, scope: !3673)
!3683 = !DILocation(line: 174, column: 30, scope: !231, inlinedAt: !3682)
!3684 = !DILocation(line: 174, column: 41, scope: !231, inlinedAt: !3682)
!3685 = !DILocation(line: 176, column: 14, scope: !231, inlinedAt: !3682)
!3686 = !DILocation(line: 176, column: 10, scope: !231, inlinedAt: !3682)
!3687 = !DILocation(line: 178, column: 9, scope: !3619, inlinedAt: !3682)
!3688 = !DILocation(line: 178, column: 7, scope: !231, inlinedAt: !3682)
!3689 = !DILocation(line: 180, column: 13, scope: !3622, inlinedAt: !3682)
!3690 = !DILocation(line: 180, column: 11, scope: !3623, inlinedAt: !3682)
!3691 = !DILocation(line: 191, column: 11, scope: !3632, inlinedAt: !3682)
!3692 = !DILocation(line: 191, column: 11, scope: !3623, inlinedAt: !3682)
!3693 = !DILocation(line: 206, column: 7, scope: !231, inlinedAt: !3682)
!3694 = !DILocation(line: 51, column: 17, scope: !3576, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 207, column: 10, scope: !231, inlinedAt: !3682)
!3696 = !DILocation(line: 51, column: 27, scope: !3576, inlinedAt: !3695)
!3697 = !DILocation(line: 53, column: 10, scope: !3585, inlinedAt: !3695)
!3698 = !DILocation(line: 192, column: 9, scope: !3632, inlinedAt: !3682)
!3699 = !DILocation(line: 201, column: 11, scope: !3642, inlinedAt: !3682)
!3700 = !DILocation(line: 200, column: 11, scope: !3643, inlinedAt: !3682)
!3701 = !DILocation(line: 202, column: 9, scope: !3642, inlinedAt: !3682)
!3702 = !DILocation(line: 203, column: 14, scope: !3643, inlinedAt: !3682)
!3703 = !DILocation(line: 203, column: 18, scope: !3643, inlinedAt: !3682)
!3704 = !DILocation(line: 203, column: 9, scope: !3643, inlinedAt: !3682)
!3705 = !DILocation(line: 53, column: 8, scope: !3585, inlinedAt: !3695)
!3706 = !DILocation(line: 57, column: 7, scope: !3589, inlinedAt: !3695)
!3707 = !DILocation(line: 58, column: 7, scope: !3589, inlinedAt: !3695)
!3708 = !DILocation(line: 61, column: 7, scope: !3576, inlinedAt: !3695)
!3709 = !DILocation(line: 62, column: 8, scope: !3593, inlinedAt: !3695)
!3710 = !DILocation(line: 62, column: 13, scope: !3593, inlinedAt: !3695)
!3711 = !DILocation(line: 62, column: 10, scope: !3593, inlinedAt: !3695)
!3712 = !DILocation(line: 63, column: 5, scope: !3593, inlinedAt: !3695)
!3713 = !DILocation(line: 0, scope: !3576, inlinedAt: !3695)
!3714 = !DILocation(line: 76, column: 3, scope: !3673)
!3715 = distinct !DISubprogram(name: "xzalloc", scope: !3537, file: !3537, line: 84, type: !3538, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3716)
!3716 = !{!3717}
!3717 = !DILocalVariable(name: "s", arg: 1, scope: !3715, file: !3537, line: 84, type: !34)
!3718 = !DILocation(line: 84, column: 17, scope: !3715)
!3719 = !DILocation(line: 39, column: 17, scope: !3536, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 86, column: 18, scope: !3715)
!3721 = !DILocation(line: 41, column: 13, scope: !3536, inlinedAt: !3720)
!3722 = !DILocation(line: 41, column: 9, scope: !3536, inlinedAt: !3720)
!3723 = !DILocation(line: 42, column: 8, scope: !3547, inlinedAt: !3720)
!3724 = !DILocation(line: 42, column: 15, scope: !3547, inlinedAt: !3720)
!3725 = !DILocation(line: 42, column: 10, scope: !3547, inlinedAt: !3720)
!3726 = !DILocation(line: 43, column: 5, scope: !3547, inlinedAt: !3720)
!3727 = !DILocation(line: 86, column: 10, scope: !3715)
!3728 = !DILocation(line: 86, column: 3, scope: !3715)
!3729 = distinct !DISubprogram(name: "xcalloc", scope: !3537, file: !3537, line: 93, type: !3523, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3730)
!3730 = !{!3731, !3732, !3733}
!3731 = !DILocalVariable(name: "n", arg: 1, scope: !3729, file: !3537, line: 93, type: !34)
!3732 = !DILocalVariable(name: "s", arg: 2, scope: !3729, file: !3537, line: 93, type: !34)
!3733 = !DILocalVariable(name: "p", scope: !3729, file: !3537, line: 95, type: !32)
!3734 = !DILocation(line: 93, column: 17, scope: !3729)
!3735 = !DILocation(line: 93, column: 27, scope: !3729)
!3736 = !DILocation(line: 100, column: 7, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3729, file: !3537, line: 100, column: 7)
!3738 = !DILocation(line: 101, column: 7, scope: !3737)
!3739 = !DILocation(line: 101, column: 18, scope: !3737)
!3740 = !DILocation(line: 95, column: 9, scope: !3729)
!3741 = !DILocation(line: 101, column: 16, scope: !3737)
!3742 = !DILocation(line: 100, column: 7, scope: !3729)
!3743 = !DILocation(line: 102, column: 5, scope: !3737)
!3744 = !DILocation(line: 103, column: 3, scope: !3729)
!3745 = distinct !DISubprogram(name: "xmemdup", scope: !3537, file: !3537, line: 111, type: !3746, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3750)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!32, !3748, !34}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3750 = !{!3751, !3752}
!3751 = !DILocalVariable(name: "p", arg: 1, scope: !3745, file: !3537, line: 111, type: !3748)
!3752 = !DILocalVariable(name: "s", arg: 2, scope: !3745, file: !3537, line: 111, type: !34)
!3753 = !DILocation(line: 111, column: 22, scope: !3745)
!3754 = !DILocation(line: 111, column: 32, scope: !3745)
!3755 = !DILocation(line: 39, column: 17, scope: !3536, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 113, column: 18, scope: !3745)
!3757 = !DILocation(line: 41, column: 13, scope: !3536, inlinedAt: !3756)
!3758 = !DILocation(line: 41, column: 9, scope: !3536, inlinedAt: !3756)
!3759 = !DILocation(line: 42, column: 8, scope: !3547, inlinedAt: !3756)
!3760 = !DILocation(line: 42, column: 15, scope: !3547, inlinedAt: !3756)
!3761 = !DILocation(line: 42, column: 10, scope: !3547, inlinedAt: !3756)
!3762 = !DILocation(line: 43, column: 5, scope: !3547, inlinedAt: !3756)
!3763 = !DILocation(line: 113, column: 10, scope: !3745)
!3764 = !DILocation(line: 113, column: 3, scope: !3745)
!3765 = distinct !DISubprogram(name: "xstrdup", scope: !3537, file: !3537, line: 119, type: !1323, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3766)
!3766 = !{!3767}
!3767 = !DILocalVariable(name: "string", arg: 1, scope: !3765, file: !3537, line: 119, type: !79)
!3768 = !DILocation(line: 119, column: 22, scope: !3765)
!3769 = !DILocation(line: 121, column: 27, scope: !3765)
!3770 = !DILocation(line: 121, column: 43, scope: !3765)
!3771 = !DILocation(line: 111, column: 22, scope: !3745, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 121, column: 10, scope: !3765)
!3773 = !DILocation(line: 111, column: 32, scope: !3745, inlinedAt: !3772)
!3774 = !DILocation(line: 39, column: 17, scope: !3536, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 113, column: 18, scope: !3745, inlinedAt: !3772)
!3776 = !DILocation(line: 41, column: 13, scope: !3536, inlinedAt: !3775)
!3777 = !DILocation(line: 41, column: 9, scope: !3536, inlinedAt: !3775)
!3778 = !DILocation(line: 42, column: 8, scope: !3547, inlinedAt: !3775)
!3779 = !DILocation(line: 42, column: 15, scope: !3547, inlinedAt: !3775)
!3780 = !DILocation(line: 42, column: 10, scope: !3547, inlinedAt: !3775)
!3781 = !DILocation(line: 43, column: 5, scope: !3547, inlinedAt: !3775)
!3782 = !DILocation(line: 113, column: 10, scope: !3745, inlinedAt: !3772)
!3783 = !DILocation(line: 121, column: 3, scope: !3765)
!3784 = distinct !DISubprogram(name: "xalloc_die", scope: !3785, file: !3785, line: 32, type: !690, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !238, retainedNodes: !131)
!3785 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3786 = !DILocation(line: 34, column: 10, scope: !3784)
!3787 = !DILocation(line: 34, column: 33, scope: !3784)
!3788 = !DILocation(line: 34, column: 3, scope: !3784)
!3789 = !DILocation(line: 40, column: 3, scope: !3784)
!3790 = distinct !DISubprogram(name: "rpl_calloc", scope: !3791, file: !3791, line: 42, type: !3523, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !240, retainedNodes: !3792)
!3791 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3792 = !{!3793, !3794, !3795, !3796}
!3793 = !DILocalVariable(name: "n", arg: 1, scope: !3790, file: !3791, line: 42, type: !34)
!3794 = !DILocalVariable(name: "s", arg: 2, scope: !3790, file: !3791, line: 42, type: !34)
!3795 = !DILocalVariable(name: "result", scope: !3790, file: !3791, line: 44, type: !32)
!3796 = !DILocalVariable(name: "bytes", scope: !3797, file: !3791, line: 56, type: !34)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !3791, line: 53, column: 5)
!3798 = distinct !DILexicalBlock(scope: !3790, file: !3791, line: 47, column: 7)
!3799 = !DILocation(line: 42, column: 20, scope: !3790)
!3800 = !DILocation(line: 42, column: 30, scope: !3790)
!3801 = !DILocation(line: 47, column: 9, scope: !3798)
!3802 = !DILocation(line: 47, column: 19, scope: !3798)
!3803 = !DILocation(line: 47, column: 14, scope: !3798)
!3804 = !DILocation(line: 56, column: 24, scope: !3797)
!3805 = !DILocation(line: 56, column: 14, scope: !3797)
!3806 = !DILocation(line: 57, column: 17, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3797, file: !3791, line: 57, column: 11)
!3808 = !DILocation(line: 57, column: 21, scope: !3807)
!3809 = !DILocation(line: 57, column: 11, scope: !3797)
!3810 = !DILocation(line: 59, column: 11, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3807, file: !3791, line: 58, column: 9)
!3812 = !DILocation(line: 59, column: 17, scope: !3811)
!3813 = !DILocation(line: 65, column: 12, scope: !3790)
!3814 = !DILocation(line: 44, column: 9, scope: !3790)
!3815 = !DILocation(line: 72, column: 3, scope: !3790)
!3816 = !DILocation(line: 0, scope: !3811)
!3817 = !DILocation(line: 73, column: 1, scope: !3790)
!3818 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3819, file: !3819, line: 385, type: !3820, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !242, retainedNodes: !3834)
!3819 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!34, !3822, !79, !34, !3823}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1783, line: 6, baseType: !3825)
!3825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1785, line: 21, baseType: !3826)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1785, line: 13, size: 64, elements: !3827)
!3827 = !{!3828, !3829}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3826, file: !1785, line: 15, baseType: !62, size: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3826, file: !1785, line: 20, baseType: !3830, size: 32, offset: 32)
!3830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3826, file: !1785, line: 16, size: 32, elements: !3831)
!3831 = !{!3832, !3833}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3830, file: !1785, line: 18, baseType: !7, size: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3830, file: !1785, line: 19, baseType: !1794, size: 32)
!3834 = !{!3835, !3836, !3837, !3838, !3839, !3840, !3841}
!3835 = !DILocalVariable(name: "pwc", arg: 1, scope: !3818, file: !3819, line: 385, type: !3822)
!3836 = !DILocalVariable(name: "s", arg: 2, scope: !3818, file: !3819, line: 385, type: !79)
!3837 = !DILocalVariable(name: "n", arg: 3, scope: !3818, file: !3819, line: 385, type: !34)
!3838 = !DILocalVariable(name: "ps", arg: 4, scope: !3818, file: !3819, line: 385, type: !3823)
!3839 = !DILocalVariable(name: "ret", scope: !3818, file: !3819, line: 387, type: !34)
!3840 = !DILocalVariable(name: "wc", scope: !3818, file: !3819, line: 388, type: !1799)
!3841 = !DILocalVariable(name: "uc", scope: !3842, file: !3819, line: 449, type: !1643)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !3819, line: 448, column: 5)
!3843 = distinct !DILexicalBlock(scope: !3818, file: !3819, line: 447, column: 7)
!3844 = !DILocation(line: 385, column: 23, scope: !3818)
!3845 = !DILocation(line: 385, column: 40, scope: !3818)
!3846 = !DILocation(line: 385, column: 50, scope: !3818)
!3847 = !DILocation(line: 385, column: 64, scope: !3818)
!3848 = !DILocation(line: 388, column: 3, scope: !3818)
!3849 = !DILocation(line: 404, column: 9, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3818, file: !3819, line: 404, column: 7)
!3851 = !DILocation(line: 404, column: 7, scope: !3818)
!3852 = !DILocation(line: 439, column: 9, scope: !3818)
!3853 = !DILocation(line: 387, column: 10, scope: !3818)
!3854 = !DILocation(line: 447, column: 19, scope: !3843)
!3855 = !DILocation(line: 447, column: 31, scope: !3843)
!3856 = !DILocation(line: 447, column: 26, scope: !3843)
!3857 = !DILocation(line: 447, column: 41, scope: !3843)
!3858 = !DILocation(line: 447, column: 7, scope: !3818)
!3859 = !DILocation(line: 449, column: 26, scope: !3842)
!3860 = !DILocation(line: 449, column: 21, scope: !3842)
!3861 = !DILocation(line: 450, column: 14, scope: !3842)
!3862 = !DILocation(line: 450, column: 12, scope: !3842)
!3863 = !DILocation(line: 0, scope: !3842)
!3864 = !DILocation(line: 456, column: 1, scope: !3818)
!3865 = distinct !DISubprogram(name: "close_stream", scope: !3866, file: !3866, line: 56, type: !3867, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !3903)
!3866 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!62, !3869}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3333, line: 7, baseType: !3871)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3335, line: 49, size: 1728, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3871, file: !3335, line: 51, baseType: !62, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3871, file: !3335, line: 54, baseType: !60, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3871, file: !3335, line: 55, baseType: !60, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3871, file: !3335, line: 56, baseType: !60, size: 64, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3871, file: !3335, line: 57, baseType: !60, size: 64, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3871, file: !3335, line: 58, baseType: !60, size: 64, offset: 320)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3871, file: !3335, line: 59, baseType: !60, size: 64, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3871, file: !3335, line: 60, baseType: !60, size: 64, offset: 448)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3871, file: !3335, line: 61, baseType: !60, size: 64, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3871, file: !3335, line: 64, baseType: !60, size: 64, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3871, file: !3335, line: 65, baseType: !60, size: 64, offset: 640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3871, file: !3335, line: 66, baseType: !60, size: 64, offset: 704)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3871, file: !3335, line: 68, baseType: !3350, size: 64, offset: 768)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3871, file: !3335, line: 70, baseType: !3887, size: 64, offset: 832)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3871, file: !3335, line: 72, baseType: !62, size: 32, offset: 896)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3871, file: !3335, line: 73, baseType: !62, size: 32, offset: 928)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3871, file: !3335, line: 74, baseType: !3357, size: 64, offset: 960)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3871, file: !3335, line: 77, baseType: !63, size: 16, offset: 1024)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3871, file: !3335, line: 78, baseType: !3361, size: 8, offset: 1040)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3871, file: !3335, line: 79, baseType: !3363, size: 8, offset: 1048)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3871, file: !3335, line: 81, baseType: !3365, size: 64, offset: 1088)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3871, file: !3335, line: 89, baseType: !3368, size: 64, offset: 1152)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3871, file: !3335, line: 91, baseType: !3370, size: 64, offset: 1216)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3871, file: !3335, line: 92, baseType: !3373, size: 64, offset: 1280)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3871, file: !3335, line: 93, baseType: !3887, size: 64, offset: 1344)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3871, file: !3335, line: 94, baseType: !32, size: 64, offset: 1408)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3871, file: !3335, line: 95, baseType: !34, size: 64, offset: 1472)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3871, file: !3335, line: 96, baseType: !62, size: 32, offset: 1536)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3871, file: !3335, line: 98, baseType: !3380, size: 160, offset: 1568)
!3903 = !{!3904, !3905, !3907, !3908}
!3904 = !DILocalVariable(name: "stream", arg: 1, scope: !3865, file: !3866, line: 56, type: !3869)
!3905 = !DILocalVariable(name: "some_pending", scope: !3865, file: !3866, line: 58, type: !3906)
!3906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!3907 = !DILocalVariable(name: "prev_fail", scope: !3865, file: !3866, line: 59, type: !3906)
!3908 = !DILocalVariable(name: "fclose_fail", scope: !3865, file: !3866, line: 60, type: !3906)
!3909 = !DILocation(line: 56, column: 21, scope: !3865)
!3910 = !DILocation(line: 58, column: 30, scope: !3865)
!3911 = !DILocalVariable(name: "__stream", arg: 1, scope: !3912, file: !3913, line: 135, type: !3869)
!3912 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3913, file: !3913, line: 135, type: !3867, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !3914)
!3913 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3914 = !{!3911}
!3915 = !DILocation(line: 135, column: 1, scope: !3912, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 59, column: 27, scope: !3865)
!3917 = !DILocation(line: 137, column: 10, scope: !3912, inlinedAt: !3916)
!3918 = !{!3919, !752, i64 0}
!3919 = !{!"_IO_FILE", !752, i64 0, !683, i64 8, !683, i64 16, !683, i64 24, !683, i64 32, !683, i64 40, !683, i64 48, !683, i64 56, !683, i64 64, !683, i64 72, !683, i64 80, !683, i64 88, !683, i64 96, !683, i64 104, !752, i64 112, !752, i64 116, !770, i64 120, !833, i64 128, !684, i64 130, !684, i64 131, !683, i64 136, !770, i64 144, !683, i64 152, !683, i64 160, !683, i64 168, !683, i64 176, !770, i64 184, !752, i64 192, !684, i64 196}
!3920 = !DILocation(line: 59, column: 43, scope: !3865)
!3921 = !DILocation(line: 60, column: 29, scope: !3865)
!3922 = !DILocation(line: 60, column: 45, scope: !3865)
!3923 = !DILocation(line: 70, column: 17, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3865, file: !3866, line: 70, column: 7)
!3925 = !DILocation(line: 58, column: 50, scope: !3865)
!3926 = !DILocation(line: 70, column: 33, scope: !3924)
!3927 = !DILocation(line: 70, column: 53, scope: !3924)
!3928 = !DILocation(line: 70, column: 59, scope: !3924)
!3929 = !DILocation(line: 70, column: 7, scope: !3865)
!3930 = !DILocation(line: 72, column: 11, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3924, file: !3866, line: 71, column: 5)
!3932 = !DILocation(line: 73, column: 9, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3931, file: !3866, line: 72, column: 11)
!3934 = !DILocation(line: 73, column: 15, scope: !3933)
!3935 = !DILocation(line: 0, scope: !3865)
!3936 = !DILocation(line: 78, column: 1, scope: !3865)
!3937 = distinct !DISubprogram(name: "hard_locale", scope: !3938, file: !3938, line: 38, type: !1355, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !247, retainedNodes: !3939)
!3938 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3939 = !{!3940, !3941, !3942}
!3940 = !DILocalVariable(name: "category", arg: 1, scope: !3937, file: !3938, line: 38, type: !62)
!3941 = !DILocalVariable(name: "hard", scope: !3937, file: !3938, line: 40, type: !76)
!3942 = !DILocalVariable(name: "p", scope: !3937, file: !3938, line: 41, type: !79)
!3943 = !DILocation(line: 38, column: 18, scope: !3937)
!3944 = !DILocation(line: 40, column: 8, scope: !3937)
!3945 = !DILocation(line: 41, column: 19, scope: !3937)
!3946 = !DILocation(line: 41, column: 15, scope: !3937)
!3947 = !DILocation(line: 43, column: 7, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3937, file: !3938, line: 43, column: 7)
!3949 = !DILocation(line: 43, column: 7, scope: !3937)
!3950 = !DILocation(line: 47, column: 15, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !3938, line: 47, column: 15)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !3938, line: 46, column: 9)
!3953 = distinct !DILexicalBlock(scope: !3954, file: !3938, line: 45, column: 11)
!3954 = distinct !DILexicalBlock(scope: !3948, file: !3938, line: 44, column: 5)
!3955 = !DILocation(line: 47, column: 31, scope: !3951)
!3956 = !DILocation(line: 47, column: 36, scope: !3951)
!3957 = !DILocation(line: 47, column: 39, scope: !3951)
!3958 = !DILocation(line: 47, column: 59, scope: !3951)
!3959 = !DILocation(line: 47, column: 15, scope: !3952)
!3960 = !DILocation(line: 48, column: 13, scope: !3951)
!3961 = !DILocation(line: 71, column: 3, scope: !3937)
!3962 = distinct !DISubprogram(name: "locale_charset", scope: !3963, file: !3963, line: 687, type: !3964, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !249, retainedNodes: !3966)
!3963 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!79}
!3966 = !{!3967}
!3967 = !DILocalVariable(name: "codeset", scope: !3962, file: !3963, line: 689, type: !79)
!3968 = !DILocation(line: 696, column: 13, scope: !3962)
!3969 = !DILocation(line: 689, column: 15, scope: !3962)
!3970 = !DILocation(line: 754, column: 15, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3962, file: !3963, line: 754, column: 7)
!3972 = !DILocation(line: 754, column: 7, scope: !3962)
!3973 = !DILocation(line: 907, column: 13, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !3963, line: 907, column: 13)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !3963, line: 897, column: 7)
!3976 = distinct !DILexicalBlock(scope: !3962, file: !3963, line: 856, column: 3)
!3977 = !DILocation(line: 907, column: 24, scope: !3974)
!3978 = !DILocation(line: 907, column: 13, scope: !3975)
!3979 = !DILocation(line: 995, column: 3, scope: !3962)
!3980 = distinct !DISubprogram(name: "rpl_fclose", scope: !3981, file: !3981, line: 58, type: !3982, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !638, retainedNodes: !4018)
!3981 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!62, !3984}
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3333, line: 7, baseType: !3986)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3335, line: 49, size: 1728, elements: !3987)
!3987 = !{!3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3986, file: !3335, line: 51, baseType: !62, size: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3986, file: !3335, line: 54, baseType: !60, size: 64, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3986, file: !3335, line: 55, baseType: !60, size: 64, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3986, file: !3335, line: 56, baseType: !60, size: 64, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3986, file: !3335, line: 57, baseType: !60, size: 64, offset: 256)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3986, file: !3335, line: 58, baseType: !60, size: 64, offset: 320)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3986, file: !3335, line: 59, baseType: !60, size: 64, offset: 384)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3986, file: !3335, line: 60, baseType: !60, size: 64, offset: 448)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3986, file: !3335, line: 61, baseType: !60, size: 64, offset: 512)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3986, file: !3335, line: 64, baseType: !60, size: 64, offset: 576)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3986, file: !3335, line: 65, baseType: !60, size: 64, offset: 640)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3986, file: !3335, line: 66, baseType: !60, size: 64, offset: 704)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3986, file: !3335, line: 68, baseType: !3350, size: 64, offset: 768)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3986, file: !3335, line: 70, baseType: !4002, size: 64, offset: 832)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3986, file: !3335, line: 72, baseType: !62, size: 32, offset: 896)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3986, file: !3335, line: 73, baseType: !62, size: 32, offset: 928)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3986, file: !3335, line: 74, baseType: !3357, size: 64, offset: 960)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3986, file: !3335, line: 77, baseType: !63, size: 16, offset: 1024)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3986, file: !3335, line: 78, baseType: !3361, size: 8, offset: 1040)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3986, file: !3335, line: 79, baseType: !3363, size: 8, offset: 1048)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3986, file: !3335, line: 81, baseType: !3365, size: 64, offset: 1088)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3986, file: !3335, line: 89, baseType: !3368, size: 64, offset: 1152)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3986, file: !3335, line: 91, baseType: !3370, size: 64, offset: 1216)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3986, file: !3335, line: 92, baseType: !3373, size: 64, offset: 1280)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3986, file: !3335, line: 93, baseType: !4002, size: 64, offset: 1344)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3986, file: !3335, line: 94, baseType: !32, size: 64, offset: 1408)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3986, file: !3335, line: 95, baseType: !34, size: 64, offset: 1472)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3986, file: !3335, line: 96, baseType: !62, size: 32, offset: 1536)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3986, file: !3335, line: 98, baseType: !3380, size: 160, offset: 1568)
!4018 = !{!4019, !4020, !4021, !4022}
!4019 = !DILocalVariable(name: "fp", arg: 1, scope: !3980, file: !3981, line: 58, type: !3984)
!4020 = !DILocalVariable(name: "saved_errno", scope: !3980, file: !3981, line: 60, type: !62)
!4021 = !DILocalVariable(name: "fd", scope: !3980, file: !3981, line: 61, type: !62)
!4022 = !DILocalVariable(name: "result", scope: !3980, file: !3981, line: 62, type: !62)
!4023 = !DILocation(line: 58, column: 19, scope: !3980)
!4024 = !DILocation(line: 60, column: 7, scope: !3980)
!4025 = !DILocation(line: 62, column: 7, scope: !3980)
!4026 = !DILocation(line: 65, column: 8, scope: !3980)
!4027 = !DILocation(line: 61, column: 7, scope: !3980)
!4028 = !DILocation(line: 66, column: 10, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !3980, file: !3981, line: 66, column: 7)
!4030 = !DILocation(line: 66, column: 7, scope: !3980)
!4031 = !DILocation(line: 67, column: 12, scope: !4029)
!4032 = !DILocation(line: 67, column: 5, scope: !4029)
!4033 = !DILocation(line: 72, column: 9, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !3980, file: !3981, line: 72, column: 7)
!4035 = !DILocation(line: 72, column: 23, scope: !4034)
!4036 = !DILocation(line: 72, column: 33, scope: !4034)
!4037 = !DILocation(line: 72, column: 26, scope: !4034)
!4038 = !DILocation(line: 72, column: 59, scope: !4034)
!4039 = !DILocation(line: 73, column: 7, scope: !4034)
!4040 = !DILocation(line: 73, column: 10, scope: !4034)
!4041 = !DILocation(line: 72, column: 7, scope: !3980)
!4042 = !DILocation(line: 100, column: 12, scope: !3980)
!4043 = !DILocation(line: 105, column: 7, scope: !3980)
!4044 = !DILocation(line: 74, column: 19, scope: !4034)
!4045 = !DILocation(line: 105, column: 19, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !3980, file: !3981, line: 105, column: 7)
!4047 = !DILocation(line: 107, column: 13, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4046, file: !3981, line: 106, column: 5)
!4049 = !DILocation(line: 109, column: 5, scope: !4048)
!4050 = !DILocation(line: 0, scope: !3980)
!4051 = !DILocation(line: 112, column: 1, scope: !3980)
!4052 = distinct !DISubprogram(name: "rpl_fflush", scope: !4053, file: !4053, line: 129, type: !4054, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !640, retainedNodes: !4090)
!4053 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!62, !4056}
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3333, line: 7, baseType: !4058)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3335, line: 49, size: 1728, elements: !4059)
!4059 = !{!4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4058, file: !3335, line: 51, baseType: !62, size: 32)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4058, file: !3335, line: 54, baseType: !60, size: 64, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4058, file: !3335, line: 55, baseType: !60, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4058, file: !3335, line: 56, baseType: !60, size: 64, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4058, file: !3335, line: 57, baseType: !60, size: 64, offset: 256)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4058, file: !3335, line: 58, baseType: !60, size: 64, offset: 320)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4058, file: !3335, line: 59, baseType: !60, size: 64, offset: 384)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4058, file: !3335, line: 60, baseType: !60, size: 64, offset: 448)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4058, file: !3335, line: 61, baseType: !60, size: 64, offset: 512)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4058, file: !3335, line: 64, baseType: !60, size: 64, offset: 576)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4058, file: !3335, line: 65, baseType: !60, size: 64, offset: 640)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4058, file: !3335, line: 66, baseType: !60, size: 64, offset: 704)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4058, file: !3335, line: 68, baseType: !3350, size: 64, offset: 768)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4058, file: !3335, line: 70, baseType: !4074, size: 64, offset: 832)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4058, file: !3335, line: 72, baseType: !62, size: 32, offset: 896)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4058, file: !3335, line: 73, baseType: !62, size: 32, offset: 928)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4058, file: !3335, line: 74, baseType: !3357, size: 64, offset: 960)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4058, file: !3335, line: 77, baseType: !63, size: 16, offset: 1024)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4058, file: !3335, line: 78, baseType: !3361, size: 8, offset: 1040)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4058, file: !3335, line: 79, baseType: !3363, size: 8, offset: 1048)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4058, file: !3335, line: 81, baseType: !3365, size: 64, offset: 1088)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4058, file: !3335, line: 89, baseType: !3368, size: 64, offset: 1152)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4058, file: !3335, line: 91, baseType: !3370, size: 64, offset: 1216)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4058, file: !3335, line: 92, baseType: !3373, size: 64, offset: 1280)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4058, file: !3335, line: 93, baseType: !4074, size: 64, offset: 1344)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4058, file: !3335, line: 94, baseType: !32, size: 64, offset: 1408)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4058, file: !3335, line: 95, baseType: !34, size: 64, offset: 1472)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4058, file: !3335, line: 96, baseType: !62, size: 32, offset: 1536)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4058, file: !3335, line: 98, baseType: !3380, size: 160, offset: 1568)
!4090 = !{!4091}
!4091 = !DILocalVariable(name: "stream", arg: 1, scope: !4052, file: !4053, line: 129, type: !4056)
!4092 = !DILocation(line: 129, column: 19, scope: !4052)
!4093 = !DILocation(line: 150, column: 14, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4052, file: !4053, line: 150, column: 7)
!4095 = !DILocation(line: 150, column: 22, scope: !4094)
!4096 = !DILocation(line: 150, column: 27, scope: !4094)
!4097 = !DILocation(line: 150, column: 7, scope: !4052)
!4098 = !DILocation(line: 151, column: 12, scope: !4094)
!4099 = !DILocation(line: 151, column: 5, scope: !4094)
!4100 = !DILocalVariable(name: "fp", arg: 1, scope: !4101, file: !4053, line: 41, type: !4056)
!4101 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4053, file: !4053, line: 41, type: !4102, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !640, retainedNodes: !4104)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{null, !4056}
!4104 = !{!4100}
!4105 = !DILocation(line: 41, column: 48, scope: !4101, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 156, column: 3, scope: !4052)
!4107 = !DILocation(line: 43, column: 11, scope: !4108, inlinedAt: !4106)
!4108 = distinct !DILexicalBlock(scope: !4101, file: !4053, line: 43, column: 7)
!4109 = !DILocation(line: 43, column: 18, scope: !4108, inlinedAt: !4106)
!4110 = !DILocation(line: 43, column: 7, scope: !4101, inlinedAt: !4106)
!4111 = !DILocation(line: 45, column: 5, scope: !4108, inlinedAt: !4106)
!4112 = !DILocation(line: 158, column: 10, scope: !4052)
!4113 = !DILocation(line: 158, column: 3, scope: !4052)
!4114 = !DILocation(line: 0, scope: !4052)
!4115 = !DILocation(line: 232, column: 1, scope: !4052)
!4116 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4117, file: !4117, line: 28, type: !4118, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !642, retainedNodes: !4155)
!4117 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!62, !4120, !4154, !62}
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3333, line: 7, baseType: !4122)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3335, line: 49, size: 1728, elements: !4123)
!4123 = !{!4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4122, file: !3335, line: 51, baseType: !62, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4122, file: !3335, line: 54, baseType: !60, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4122, file: !3335, line: 55, baseType: !60, size: 64, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4122, file: !3335, line: 56, baseType: !60, size: 64, offset: 192)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4122, file: !3335, line: 57, baseType: !60, size: 64, offset: 256)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4122, file: !3335, line: 58, baseType: !60, size: 64, offset: 320)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4122, file: !3335, line: 59, baseType: !60, size: 64, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4122, file: !3335, line: 60, baseType: !60, size: 64, offset: 448)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4122, file: !3335, line: 61, baseType: !60, size: 64, offset: 512)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4122, file: !3335, line: 64, baseType: !60, size: 64, offset: 576)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4122, file: !3335, line: 65, baseType: !60, size: 64, offset: 640)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4122, file: !3335, line: 66, baseType: !60, size: 64, offset: 704)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4122, file: !3335, line: 68, baseType: !3350, size: 64, offset: 768)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4122, file: !3335, line: 70, baseType: !4138, size: 64, offset: 832)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4122, file: !3335, line: 72, baseType: !62, size: 32, offset: 896)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4122, file: !3335, line: 73, baseType: !62, size: 32, offset: 928)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4122, file: !3335, line: 74, baseType: !3357, size: 64, offset: 960)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4122, file: !3335, line: 77, baseType: !63, size: 16, offset: 1024)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4122, file: !3335, line: 78, baseType: !3361, size: 8, offset: 1040)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4122, file: !3335, line: 79, baseType: !3363, size: 8, offset: 1048)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4122, file: !3335, line: 81, baseType: !3365, size: 64, offset: 1088)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4122, file: !3335, line: 89, baseType: !3368, size: 64, offset: 1152)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4122, file: !3335, line: 91, baseType: !3370, size: 64, offset: 1216)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4122, file: !3335, line: 92, baseType: !3373, size: 64, offset: 1280)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4122, file: !3335, line: 93, baseType: !4138, size: 64, offset: 1344)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4122, file: !3335, line: 94, baseType: !32, size: 64, offset: 1408)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4122, file: !3335, line: 95, baseType: !34, size: 64, offset: 1472)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4122, file: !3335, line: 96, baseType: !62, size: 32, offset: 1536)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4122, file: !3335, line: 98, baseType: !3380, size: 160, offset: 1568)
!4154 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3502, line: 63, baseType: !3357)
!4155 = !{!4156, !4157, !4158, !4159}
!4156 = !DILocalVariable(name: "fp", arg: 1, scope: !4116, file: !4117, line: 28, type: !4120)
!4157 = !DILocalVariable(name: "offset", arg: 2, scope: !4116, file: !4117, line: 28, type: !4154)
!4158 = !DILocalVariable(name: "whence", arg: 3, scope: !4116, file: !4117, line: 28, type: !62)
!4159 = !DILocalVariable(name: "pos", scope: !4160, file: !4117, line: 117, type: !4154)
!4160 = distinct !DILexicalBlock(scope: !4161, file: !4117, line: 113, column: 5)
!4161 = distinct !DILexicalBlock(scope: !4116, file: !4117, line: 52, column: 7)
!4162 = !DILocation(line: 28, column: 15, scope: !4116)
!4163 = !DILocation(line: 28, column: 25, scope: !4116)
!4164 = !DILocation(line: 28, column: 37, scope: !4116)
!4165 = !DILocation(line: 52, column: 11, scope: !4161)
!4166 = !{!3919, !683, i64 16}
!4167 = !DILocation(line: 52, column: 31, scope: !4161)
!4168 = !{!3919, !683, i64 8}
!4169 = !DILocation(line: 52, column: 24, scope: !4161)
!4170 = !DILocation(line: 53, column: 7, scope: !4161)
!4171 = !DILocation(line: 53, column: 14, scope: !4161)
!4172 = !{!3919, !683, i64 40}
!4173 = !DILocation(line: 53, column: 35, scope: !4161)
!4174 = !{!3919, !683, i64 32}
!4175 = !DILocation(line: 53, column: 28, scope: !4161)
!4176 = !DILocation(line: 54, column: 7, scope: !4161)
!4177 = !DILocation(line: 54, column: 14, scope: !4161)
!4178 = !{!3919, !683, i64 72}
!4179 = !DILocation(line: 54, column: 28, scope: !4161)
!4180 = !DILocation(line: 52, column: 7, scope: !4116)
!4181 = !DILocation(line: 117, column: 26, scope: !4160)
!4182 = !DILocation(line: 117, column: 19, scope: !4160)
!4183 = !DILocation(line: 117, column: 13, scope: !4160)
!4184 = !DILocation(line: 118, column: 15, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4160, file: !4117, line: 118, column: 11)
!4186 = !DILocation(line: 118, column: 11, scope: !4160)
!4187 = !DILocation(line: 129, column: 11, scope: !4160)
!4188 = !DILocation(line: 129, column: 18, scope: !4160)
!4189 = !DILocation(line: 130, column: 11, scope: !4160)
!4190 = !DILocation(line: 130, column: 19, scope: !4160)
!4191 = !{!3919, !770, i64 144}
!4192 = !DILocation(line: 161, column: 7, scope: !4160)
!4193 = !DILocation(line: 163, column: 10, scope: !4116)
!4194 = !DILocation(line: 163, column: 3, scope: !4116)
!4195 = !DILocation(line: 0, scope: !4116)
!4196 = !DILocation(line: 164, column: 1, scope: !4116)
