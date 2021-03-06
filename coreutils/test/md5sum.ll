; ModuleID = 'coreutils-8.30/src/md5sum.bc'
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
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0APrint or check %s (%d-bit) checksums.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.36 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"\0A  -b, --binary         read in binary mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"  -c, --check          read %s sums from the FILEs and check them\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"      --tag            create a BSD-style checksum\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"  -t, --text           read in text mode (default)\0A\00", align 1
@.str.7 = private unnamed_addr constant [122 x i8] c"  -z, --zero           end each output line with NUL, not newline,\0A                       and disable file name escaping\0A\00", align 1
@.str.8 = private unnamed_addr constant [435 x i8] c"\0AThe following five options are useful only when verifying checksums:\0A      --ignore-missing  don't fail or report status for missing files\0A      --quiet          don't print OK for each successfully verified file\0A      --status         don't output anything, status code shows success\0A      --strict         exit non-zero for improperly formatted checksum lines\0A  -w, --warn           warn about improperly formatted checksum lines\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [297 x i8] c"\0AThe sums are computed as described in %s.  When checking, the input\0Ashould be a former output of this program.  The default mode is to print a\0Aline with checksum, a space, a character indicating input mode ('*' for binary,\0A' ' for text or where binary is insignificant), and name for each FILE.\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"RFC 1321\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.48 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"bctwz\00", align 1
@long_options = internal constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 132 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@status_only = internal unnamed_addr global i1 false, align 1, !dbg !208
@warn = internal unnamed_addr global i1 false, align 1, !dbg !209
@quiet = internal unnamed_addr global i1 false, align 1, !dbg !210
@ignore_missing = internal unnamed_addr global i1 false, align 1, !dbg !211
@strict = internal unnamed_addr global i1 false, align 1, !dbg !212
@delim = internal unnamed_addr global i1 false, align 1, !dbg !213
@.str.19 = private unnamed_addr constant [15 x i8] c"Ulrich Drepper\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Scott Miller\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"David Madore\00", align 1
@min_digest_line_length = internal unnamed_addr global i1 false, align 8, !dbg !214
@digest_hex_bytes = internal unnamed_addr global i1 false, align 8, !dbg !215
@.str.22 = private unnamed_addr constant [35 x i8] c"--tag does not support --text mode\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"the --zero option is not supported when verifying checksums\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"the --tag option is meaningless when verifying checksums\00", align 1
@.str.25 = private unnamed_addr constant [73 x i8] c"the --binary and --text options are meaningless when verifying checksums\00", align 1
@.str.26 = private unnamed_addr constant [72 x i8] c"the --ignore-missing option is meaningful only when verifying checksums\00", align 1
@.str.27 = private unnamed_addr constant [64 x i8] c"the --status option is meaningful only when verifying checksums\00", align 1
@.str.28 = private unnamed_addr constant [62 x i8] c"the --warn option is meaningful only when verifying checksums\00", align 1
@.str.29 = private unnamed_addr constant [63 x i8] c"the --quiet option is meaningful only when verifying checksums\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"the --strict option is meaningful only when verifying checksums\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.31 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !216
@.str.35 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.64 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"%s: too many checksum lines\00", align 1
@bsd_reversed = internal unnamed_addr global i32 -1, align 4, !dbg !194
@.str.67 = private unnamed_addr constant [47 x i8] c"%s: %lu: improperly formatted %s checksum line\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"FAILED open or read\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@digest_check.bin2hex = internal unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16, !dbg !88
@.str.70 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.74 = private unnamed_addr constant [42 x i8] c"WARNING: %lu line is improperly formatted\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"WARNING: %lu lines are improperly formatted\00", align 1
@.str.76 = private unnamed_addr constant [43 x i8] c"WARNING: %lu listed file could not be read\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"WARNING: %lu listed files could not be read\00", align 1
@.str.78 = private unnamed_addr constant [45 x i8] c"WARNING: %lu computed checksum did NOT match\00", align 1
@.str.79 = private unnamed_addr constant [46 x i8] c"WARNING: %lu computed checksums did NOT match\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"%s: no file was verified\00", align 1
@.str.73 = private unnamed_addr constant [50 x i8] c"%s: no properly formatted %s checksum lines found\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c") = \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"ignore-missing\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), align 8, !dbg !217
@.str.83 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !223
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !228
@.str.86 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.87 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fillbuf = internal unnamed_addr constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16, !dbg !231
@exit_failure = dso_local global i32 1, align 4, !dbg !243
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !250
@.str.101 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.103 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.111, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.113, i32 0, i32 0), i8* null], align 16, !dbg !257
@.str.104 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.105 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.106 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.107 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.108 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.109 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.110 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.111 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.112 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.113 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !269
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !276
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !288
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.117 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.118 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.119 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.120 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !295
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !302
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !290
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !304
@.str.127 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.128 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.129 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.130 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.131 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.132 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.133 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.134 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.135 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.136 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.137 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.138 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.139 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.140 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.143 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.144 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.145 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.146 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.147 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.148 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !310
@.str.1.159 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !319
@.str.177 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.178 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.182 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !798 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !803, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i32 %0, metadata !802, metadata !DIExpression()), !dbg !825
  %3 = icmp eq i32 %0, 0, !dbg !826
  br i1 %3, label %9, label %4, !dbg !827

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !828, !tbaa !830
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !828
  %7 = load i8*, i8** @program_name, align 8, !dbg !828, !tbaa !830
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !828
  br label %76, !dbg !828

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !834
  %11 = load i8*, i8** @program_name, align 8, !dbg !834, !tbaa !830
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 128) #10, !dbg !834
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !835
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !835, !tbaa !830
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14) #10, !dbg !835
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !840
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !840, !tbaa !830
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !840
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !842
  %20 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !842
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !843
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !843, !tbaa !830
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !843
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !844
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !844, !tbaa !830
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !844
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !846
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !846, !tbaa !830
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !846
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !847
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !847, !tbaa !830
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31), !dbg !847
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !848
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !848, !tbaa !830
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34), !dbg !848
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !849
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !849, !tbaa !830
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37), !dbg !849
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([297 x i8], [297 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !850
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !850
  %41 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !851
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %41) #10, !dbg !851
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %41, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !821
  %42 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !852
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !810, metadata !DIExpression()) #10, !dbg !853
  br label %43, !dbg !854

; <label>:43:                                     ; preds = %48, %9
  %44 = phi i8* [ %51, %48 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), %9 ]
  %45 = phi %struct.infomap* [ %49, %48 ], [ %42, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !810, metadata !DIExpression()) #10, !dbg !853
  %46 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %44) #14, !dbg !854
  %47 = icmp eq i32 %46, 0, !dbg !854
  br i1 %47, label %53, label %48, !dbg !855

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 1, !dbg !856
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !810, metadata !DIExpression()) #10, !dbg !853
  %50 = getelementptr inbounds %struct.infomap, %struct.infomap* %49, i64 0, i32 0, !dbg !857
  %51 = load i8*, i8** %50, align 8, !dbg !857, !tbaa !858
  %52 = icmp eq i8* %51, null, !dbg !860
  br i1 %52, label %53, label %43, !dbg !861, !llvm.loop !862

; <label>:53:                                     ; preds = %48, %43
  %54 = phi %struct.infomap* [ %49, %48 ], [ %45, %43 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %54, metadata !810, metadata !DIExpression()) #10, !dbg !853
  call void @llvm.dbg.value(metadata %struct.infomap* %54, metadata !810, metadata !DIExpression()) #10, !dbg !853
  %55 = getelementptr inbounds %struct.infomap, %struct.infomap* %54, i64 0, i32 1, !dbg !865
  %56 = load i8*, i8** %55, align 8, !dbg !865, !tbaa !867
  %57 = icmp eq i8* %56, null, !dbg !868
  %58 = select i1 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %56, !dbg !869
  call void @llvm.dbg.value(metadata i8* %58, metadata !809, metadata !DIExpression()) #10, !dbg !870
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !871
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0)) #10, !dbg !871
  %61 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !872
  call void @llvm.dbg.value(metadata i8* %61, metadata !817, metadata !DIExpression()) #10, !dbg !873
  %62 = icmp eq i8* %61, null, !dbg !874
  br i1 %62, label %69, label %63, !dbg !876

; <label>:63:                                     ; preds = %53
  %64 = tail call i32 @strncmp(i8* nonnull %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3) #14, !dbg !877
  %65 = icmp eq i32 %64, 0, !dbg !877
  br i1 %65, label %69, label %66, !dbg !878

; <label>:66:                                     ; preds = %63
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.48, i64 0, i64 0), i32 5) #10, !dbg !879
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !879
  br label %69, !dbg !881

; <label>:69:                                     ; preds = %53, %63, %66
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i64 0, i64 0), i32 5) #10, !dbg !882
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !882
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0), i32 5) #10, !dbg !883
  %73 = icmp eq i8* %58, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), !dbg !883
  %74 = select i1 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !883
  %75 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %72, i8* %58, i8* %74) #10, !dbg !883
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %41) #10, !dbg !884
  br label %76

; <label>:76:                                     ; preds = %69, %4
  tail call void @exit(i32 %0) #15, !dbg !885
  unreachable, !dbg !885
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !886 {
  %3 = alloca [20 x i8], align 16
  call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !158, metadata !DIExpression()), !dbg !916
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [20 x i8], align 16
  %8 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !891, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i8** %1, metadata !892, metadata !DIExpression()), !dbg !919
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0, !dbg !920
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %9) #10, !dbg !920
  call void @llvm.dbg.declare(metadata [20 x i8]* %7, metadata !893, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i8* %9, metadata !922, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i64 4, metadata !929, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i8* %9, metadata !930, metadata !DIExpression()), !dbg !935
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 3, !dbg !936
  call void @llvm.dbg.value(metadata i8* %10, metadata !931, metadata !DIExpression()), !dbg !937
  %11 = ptrtoint i8* %10 to i64, !dbg !938
  %12 = and i64 %11, 3, !dbg !939
  %13 = sub nsw i64 0, %12, !dbg !940
  %14 = getelementptr inbounds i8, i8* %10, i64 %13, !dbg !940
  call void @llvm.dbg.value(metadata i8* %14, metadata !894, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i8 0, metadata !895, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i8 1, metadata !897, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i32 -1, metadata !898, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8 0, metadata !899, metadata !DIExpression()), !dbg !945
  %15 = load i8*, i8** %1, align 8, !dbg !946, !tbaa !830
  call void @set_program_name(i8* %15) #10, !dbg !947
  %16 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !948
  %17 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !949
  %18 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !950
  %19 = call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !951
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !952, !tbaa !830
  %21 = call i32 @setvbuf(%struct._IO_FILE* %20, i8* null, i32 1, i64 0) #10, !dbg !953
  br label %22, !dbg !954

; <label>:22:                                     ; preds = %27, %2
  %23 = phi i32 [ -1, %2 ], [ %28, %27 ], !dbg !944
  %24 = phi i8 [ 0, %2 ], [ %29, %27 ], !dbg !945
  %25 = phi i8 [ 0, %2 ], [ %30, %27 ], !dbg !942
  call void @llvm.dbg.value(metadata i8 %25, metadata !895, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i8 %24, metadata !899, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i32 %23, metadata !898, metadata !DIExpression()), !dbg !944
  %26 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !955
  call void @llvm.dbg.value(metadata i32 %26, metadata !896, metadata !DIExpression()), !dbg !956
  switch i32 %26, label %44 [
    i32 -1, label %45
    i32 98, label %27
    i32 99, label %31
    i32 129, label %32
    i32 116, label %33
    i32 119, label %34
    i32 128, label %35
    i32 130, label %36
    i32 131, label %37
    i32 132, label %38
    i32 122, label %39
    i32 -130, label %40
    i32 -131, label %41
  ], !dbg !954

; <label>:27:                                     ; preds = %22, %39, %38, %37, %36, %35, %34, %33, %32, %31
  %28 = phi i32 [ %23, %39 ], [ 1, %38 ], [ %23, %37 ], [ %23, %36 ], [ %23, %35 ], [ %23, %34 ], [ 0, %33 ], [ %23, %32 ], [ %23, %31 ], [ 1, %22 ]
  %29 = phi i8 [ %24, %39 ], [ 1, %38 ], [ %24, %37 ], [ %24, %36 ], [ %24, %35 ], [ %24, %34 ], [ %24, %33 ], [ %24, %32 ], [ %24, %31 ], [ %24, %22 ]
  %30 = phi i8 [ %25, %39 ], [ %25, %38 ], [ %25, %37 ], [ %25, %36 ], [ %25, %35 ], [ %25, %34 ], [ %25, %33 ], [ %25, %32 ], [ 1, %31 ], [ %25, %22 ]
  br label %22, !dbg !942, !llvm.loop !957

; <label>:31:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !895, metadata !DIExpression()), !dbg !942
  br label %27, !dbg !959

; <label>:32:                                     ; preds = %22
  store i1 true, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %27, !dbg !961

; <label>:33:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, metadata !898, metadata !DIExpression()), !dbg !944
  br label %27, !dbg !962

; <label>:34:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 true, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %27, !dbg !963

; <label>:35:                                     ; preds = %22
  store i1 true, i1* @ignore_missing, align 1
  br label %27, !dbg !964

; <label>:36:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 true, i1* @quiet, align 1
  br label %27, !dbg !965

; <label>:37:                                     ; preds = %22
  store i1 true, i1* @strict, align 1
  br label %27, !dbg !966

; <label>:38:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !899, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i32 1, metadata !898, metadata !DIExpression()), !dbg !944
  br label %27, !dbg !967

; <label>:39:                                     ; preds = %22
  store i1 true, i1* @delim, align 1
  br label %27, !dbg !968

; <label>:40:                                     ; preds = %22
  call void @usage(i32 0) #16, !dbg !969
  unreachable, !dbg !969

; <label>:41:                                     ; preds = %22
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !970, !tbaa !830
  %43 = load i8*, i8** @Version, align 8, !dbg !970, !tbaa !830
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* null) #10, !dbg !970
  call void @exit(i32 0) #15, !dbg !970
  unreachable, !dbg !970

; <label>:44:                                     ; preds = %22
  call void @usage(i32 1) #16, !dbg !971
  unreachable, !dbg !971

; <label>:45:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %23, metadata !898, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8 %24, metadata !899, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i8 %25, metadata !895, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %23, metadata !898, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8 %24, metadata !899, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i8 %25, metadata !895, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %23, metadata !898, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8 %24, metadata !899, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i8 %25, metadata !895, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %23, metadata !898, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8 %24, metadata !899, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i8 %25, metadata !895, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %23, metadata !898, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8 %24, metadata !899, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i8 %25, metadata !895, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %23, metadata !898, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8 %24, metadata !899, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i8 %25, metadata !895, metadata !DIExpression()), !dbg !942
  store i1 true, i1* @min_digest_line_length, align 8
  store i1 true, i1* @digest_hex_bytes, align 8
  %46 = icmp ne i8 %24, 0, !dbg !972
  %47 = xor i1 %46, true, !dbg !974
  %48 = icmp ne i32 %23, 0, !dbg !975
  %49 = or i1 %48, %47, !dbg !974
  br i1 %49, label %52, label %50, !dbg !974

; <label>:50:                                     ; preds = %45
  %51 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !976
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51) #10, !dbg !978
  call void @usage(i32 1) #16, !dbg !979
  unreachable, !dbg !979

; <label>:52:                                     ; preds = %45
  %53 = load i1, i1* @delim, align 1
  %54 = xor i1 %53, true, !dbg !980
  %55 = icmp eq i8 %25, 0, !dbg !982
  %56 = or i1 %55, %54, !dbg !980
  br i1 %56, label %59, label %57, !dbg !980

; <label>:57:                                     ; preds = %52
  %58 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !983
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %58) #10, !dbg !985
  call void @usage(i32 1) #16, !dbg !986
  unreachable, !dbg !986

; <label>:59:                                     ; preds = %52
  %60 = or i1 %55, %47, !dbg !987
  br i1 %60, label %63, label %61, !dbg !987

; <label>:61:                                     ; preds = %59
  %62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !989
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %62) #10, !dbg !991
  call void @usage(i32 1) #16, !dbg !992
  unreachable, !dbg !992

; <label>:63:                                     ; preds = %59
  %64 = icmp slt i32 %23, 0, !dbg !993
  %65 = or i1 %64, %55, !dbg !995
  br i1 %65, label %68, label %66, !dbg !995

; <label>:66:                                     ; preds = %63
  %67 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !996
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #10, !dbg !998
  call void @usage(i32 1) #16, !dbg !999
  unreachable, !dbg !999

; <label>:68:                                     ; preds = %63
  %69 = load i1, i1* @ignore_missing, align 1
  %70 = and i1 %55, %69, !dbg !1000
  br i1 %70, label %71, label %73, !dbg !1000

; <label>:71:                                     ; preds = %68
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !1002
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #10, !dbg !1004
  call void @usage(i32 1) #16, !dbg !1005
  unreachable, !dbg !1005

; <label>:73:                                     ; preds = %68
  %74 = load i1, i1* @status_only, align 1
  %75 = and i1 %55, %74, !dbg !1006
  br i1 %75, label %76, label %78, !dbg !1006

; <label>:76:                                     ; preds = %73
  %77 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !1008
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %77) #10, !dbg !1010
  call void @usage(i32 1) #16, !dbg !1011
  unreachable, !dbg !1011

; <label>:78:                                     ; preds = %73
  %79 = load i1, i1* @warn, align 1
  %80 = and i1 %55, %79, !dbg !1012
  br i1 %80, label %81, label %83, !dbg !1012

; <label>:81:                                     ; preds = %78
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !1014
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82) #10, !dbg !1016
  call void @usage(i32 1) #16, !dbg !1017
  unreachable, !dbg !1017

; <label>:83:                                     ; preds = %78
  %84 = load i1, i1* @quiet, align 1
  %85 = and i1 %55, %84, !dbg !1018
  br i1 %85, label %86, label %88, !dbg !1018

; <label>:86:                                     ; preds = %83
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !1020
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %87) #10, !dbg !1022
  call void @usage(i32 1) #16, !dbg !1023
  unreachable, !dbg !1023

; <label>:88:                                     ; preds = %83
  %89 = load i1, i1* @strict, align 1
  %90 = icmp ne i8 %25, 0, !dbg !1024
  %91 = xor i1 %90, true, !dbg !1026
  %92 = and i1 %89, %91, !dbg !1027
  br i1 %92, label %93, label %95, !dbg !1028

; <label>:93:                                     ; preds = %88
  %94 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !1029
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %94) #10, !dbg !1031
  call void @usage(i32 1) #16, !dbg !1032
  unreachable, !dbg !1032

; <label>:95:                                     ; preds = %88
  %96 = icmp slt i32 %23, 1, !dbg !1033
  %97 = sext i32 %0 to i64, !dbg !1034
  %98 = getelementptr inbounds i8*, i8** %1, i64 %97, !dbg !1034
  call void @llvm.dbg.value(metadata i8** %98, metadata !901, metadata !DIExpression()), !dbg !1035
  %99 = load i32, i32* @optind, align 4, !dbg !1036, !tbaa !1038
  %100 = icmp eq i32 %99, %0, !dbg !1040
  br i1 %100, label %101, label %103, !dbg !1041

; <label>:101:                                    ; preds = %95
  %102 = getelementptr inbounds i8*, i8** %98, i64 1, !dbg !1042
  call void @llvm.dbg.value(metadata i8** %102, metadata !901, metadata !DIExpression()), !dbg !1035
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i8** %98, align 8, !dbg !1043, !tbaa !830
  br label %103, !dbg !1044

; <label>:103:                                    ; preds = %101, %95
  %104 = phi i8** [ %102, %101 ], [ %98, %95 ], !dbg !1045
  call void @llvm.dbg.value(metadata i8** %104, metadata !901, metadata !DIExpression()), !dbg !1035
  %105 = sext i32 %99 to i64, !dbg !1046
  %106 = getelementptr inbounds i8*, i8** %1, i64 %105, !dbg !1046
  call void @llvm.dbg.value(metadata i8** %106, metadata !902, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 1, metadata !897, metadata !DIExpression()), !dbg !943
  %107 = icmp ult i8** %106, %104, !dbg !1048
  br i1 %107, label %108, label %119, !dbg !1049

; <label>:108:                                    ; preds = %103
  %109 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %110 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 3
  %111 = ptrtoint i8* %110 to i64
  %112 = and i64 %111, 3
  %113 = sub nsw i64 0, %112
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = bitcast i8** %4 to i8*
  %116 = bitcast i64* %5 to i8*
  %117 = select i1 %96, i32 32, i32 42
  %118 = trunc i32 %117 to i8
  br label %122, !dbg !1049

; <label>:119:                                    ; preds = %668, %103
  %120 = phi i8 [ 1, %103 ], [ %669, %668 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8 %120, metadata !897, metadata !DIExpression()), !dbg !943
  %121 = load i1, i1* @have_read_stdin, align 1
  br i1 %121, label %672, label %680, !dbg !1051

; <label>:122:                                    ; preds = %108, %668
  %123 = phi i8** [ %106, %108 ], [ %670, %668 ]
  %124 = phi i8 [ 1, %108 ], [ %669, %668 ]
  call void @llvm.dbg.value(metadata i8** %123, metadata !902, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %124, metadata !897, metadata !DIExpression()), !dbg !943
  %125 = load i8*, i8** %123, align 8, !dbg !1053, !tbaa !830
  call void @llvm.dbg.value(metadata i8* %125, metadata !904, metadata !DIExpression()), !dbg !1054
  br i1 %90, label %126, label %572, !dbg !1055

; <label>:126:                                    ; preds = %122
  call void @llvm.dbg.value(metadata i8* %125, metadata !96, metadata !DIExpression()) #10, !dbg !1056
  call void @llvm.dbg.value(metadata i64 0, metadata !152, metadata !DIExpression()) #10, !dbg !1057
  call void @llvm.dbg.value(metadata i64 0, metadata !153, metadata !DIExpression()) #10, !dbg !1058
  call void @llvm.dbg.value(metadata i64 0, metadata !154, metadata !DIExpression()) #10, !dbg !1059
  call void @llvm.dbg.value(metadata i64 0, metadata !155, metadata !DIExpression()) #10, !dbg !1060
  call void @llvm.dbg.value(metadata i8 0, metadata !156, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8 0, metadata !157, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %109) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %109, metadata !922, metadata !DIExpression()) #10, !dbg !1064
  call void @llvm.dbg.value(metadata i64 4, metadata !929, metadata !DIExpression()) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i8* %109, metadata !930, metadata !DIExpression()) #10, !dbg !1067
  call void @llvm.dbg.value(metadata i8* %110, metadata !931, metadata !DIExpression()) #10, !dbg !1068
  call void @llvm.dbg.value(metadata i8* %114, metadata !160, metadata !DIExpression()) #10, !dbg !1069
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %115) #10, !dbg !1070
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %116) #10, !dbg !1071
  %127 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #14, !dbg !1072
  %128 = icmp eq i32 %127, 0, !dbg !1072
  br i1 %128, label %129, label %132, !dbg !1073

; <label>:129:                                    ; preds = %126
  store i1 true, i1* @have_read_stdin, align 1
  %130 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !1074
  call void @llvm.dbg.value(metadata i8* %130, metadata !96, metadata !DIExpression()) #10, !dbg !1056
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1077, !tbaa !830
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %131, metadata !97, metadata !DIExpression()) #10, !dbg !1078
  br label %139, !dbg !1079

; <label>:132:                                    ; preds = %126
  %133 = call %struct._IO_FILE* @fopen_safer(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #10, !dbg !1080
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, metadata !97, metadata !DIExpression()) #10, !dbg !1078
  %134 = icmp eq %struct._IO_FILE* %133, null, !dbg !1082
  br i1 %134, label %135, label %139, !dbg !1084

; <label>:135:                                    ; preds = %132
  %136 = tail call i32* @__errno_location() #17, !dbg !1085
  %137 = load i32, i32* %136, align 4, !dbg !1085, !tbaa !1038
  %138 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %125) #10, !dbg !1087
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %138) #10, !dbg !1088
  br label %568, !dbg !1089

; <label>:139:                                    ; preds = %132, %129
  %140 = phi %struct._IO_FILE* [ %131, %129 ], [ %133, %132 ], !dbg !1090
  %141 = phi i8* [ %130, %129 ], [ %125, %132 ]
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1056
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !97, metadata !DIExpression()) #10, !dbg !1078
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()) #10, !dbg !1091
  call void @llvm.dbg.value(metadata i8* null, metadata !162, metadata !DIExpression()) #10, !dbg !1092
  store i8* null, i8** %4, align 8, !dbg !1093, !tbaa !830
  call void @llvm.dbg.value(metadata i64 0, metadata !163, metadata !DIExpression()) #10, !dbg !1094
  store i64 0, i64* %5, align 8, !dbg !1095, !tbaa !1096
  %142 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %140, i64 0, i32 0
  br label %143, !dbg !1098

; <label>:143:                                    ; preds = %495, %139
  %144 = phi i8 [ 0, %139 ], [ %496, %495 ], !dbg !1062
  %145 = phi i64 [ 0, %139 ], [ %151, %495 ], !dbg !1099
  %146 = phi i8 [ 0, %139 ], [ %497, %495 ], !dbg !1061
  %147 = phi i64 [ 0, %139 ], [ %498, %495 ], !dbg !1060
  %148 = phi i64 [ 0, %139 ], [ %499, %495 ], !dbg !1059
  %149 = phi i64 [ 0, %139 ], [ %500, %495 ], !dbg !1058
  %150 = phi i64 [ 0, %139 ], [ %501, %495 ], !dbg !1057
  call void @llvm.dbg.value(metadata i64 %150, metadata !152, metadata !DIExpression()) #10, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %149, metadata !153, metadata !DIExpression()) #10, !dbg !1058
  call void @llvm.dbg.value(metadata i64 %148, metadata !154, metadata !DIExpression()) #10, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %147, metadata !155, metadata !DIExpression()) #10, !dbg !1060
  call void @llvm.dbg.value(metadata i8 %146, metadata !156, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i64 %145, metadata !161, metadata !DIExpression()) #10, !dbg !1091
  call void @llvm.dbg.value(metadata i8 %144, metadata !157, metadata !DIExpression()) #10, !dbg !1062
  %151 = add i64 %145, 1, !dbg !1100
  call void @llvm.dbg.value(metadata i64 %151, metadata !161, metadata !DIExpression()) #10, !dbg !1091
  %152 = icmp eq i64 %151, 0, !dbg !1101
  br i1 %152, label %153, label %156, !dbg !1103

; <label>:153:                                    ; preds = %143
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1056
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !1104
  %155 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #10, !dbg !1104
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %154, i8* %155) #10, !dbg !1104
  unreachable, !dbg !1104

; <label>:156:                                    ; preds = %143
  call void @llvm.dbg.value(metadata i8** %4, metadata !162, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1092
  call void @llvm.dbg.value(metadata i64* %5, metadata !163, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1094
  call void @llvm.dbg.value(metadata i8** %4, metadata !1105, metadata !DIExpression()) #10, !dbg !1113
  call void @llvm.dbg.value(metadata i64* %5, metadata !1111, metadata !DIExpression()) #10, !dbg !1115
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1112, metadata !DIExpression()) #10, !dbg !1116
  %157 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* %140) #10, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %157, metadata !169, metadata !DIExpression()) #10, !dbg !1118
  %158 = icmp slt i64 %157, 1, !dbg !1119
  br i1 %158, label %505, label %159, !dbg !1121

; <label>:159:                                    ; preds = %156
  %160 = load i8*, i8** %4, align 8, !dbg !1122, !tbaa !830
  call void @llvm.dbg.value(metadata i8* %160, metadata !162, metadata !DIExpression()) #10, !dbg !1092
  %161 = load i8, i8* %160, align 1, !dbg !1122, !tbaa !1124
  %162 = icmp eq i8 %161, 35, !dbg !1125
  br i1 %162, label %495, label %163, !dbg !1126

; <label>:163:                                    ; preds = %159
  %164 = add nsw i64 %157, -1, !dbg !1127
  %165 = getelementptr inbounds i8, i8* %160, i64 %164, !dbg !1129
  %166 = load i8, i8* %165, align 1, !dbg !1129, !tbaa !1124
  %167 = icmp eq i8 %166, 10, !dbg !1130
  br i1 %167, label %168, label %170, !dbg !1131

; <label>:168:                                    ; preds = %163
  call void @llvm.dbg.value(metadata i64 %164, metadata !169, metadata !DIExpression()) #10, !dbg !1118
  store i8 0, i8* %165, align 1, !dbg !1132, !tbaa !1124
  %169 = load i8*, i8** %4, align 8, !dbg !1133, !tbaa !830
  br label %170, !dbg !1134

; <label>:170:                                    ; preds = %168, %163
  %171 = phi i8* [ %169, %168 ], [ %160, %163 ], !dbg !1133
  %172 = phi i64 [ %164, %168 ], [ %157, %163 ], !dbg !1099
  call void @llvm.dbg.value(metadata i64 %172, metadata !169, metadata !DIExpression()) #10, !dbg !1118
  call void @llvm.dbg.value(metadata i8* %171, metadata !162, metadata !DIExpression()) #10, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %171, metadata !1135, metadata !DIExpression()) #10, !dbg !1148
  call void @llvm.dbg.value(metadata i64 %172, metadata !1141, metadata !DIExpression()) #10, !dbg !1150
  call void @llvm.dbg.value(metadata i8 0, metadata !1145, metadata !DIExpression()) #10, !dbg !1151
  call void @llvm.dbg.value(metadata i64 0, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  br label %173, !dbg !1153

; <label>:173:                                    ; preds = %177, %170
  %174 = phi i64 [ 0, %170 ], [ %178, %177 ], !dbg !1154
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  %175 = getelementptr inbounds i8, i8* %171, i64 %174, !dbg !1155
  %176 = load i8, i8* %175, align 1, !dbg !1155, !tbaa !1124
  switch i8 %176, label %181 [
    i8 32, label %177
    i8 9, label %177
    i8 92, label %179
  ], !dbg !1155

; <label>:177:                                    ; preds = %173, %173
  %178 = add i64 %174, 1, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %178, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  br label %173, !dbg !1153, !llvm.loop !1157

; <label>:179:                                    ; preds = %173
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %174, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  %180 = add i64 %174, 1, !dbg !1160
  call void @llvm.dbg.value(metadata i64 %180, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i8 1, metadata !1145, metadata !DIExpression()) #10, !dbg !1151
  br label %181, !dbg !1163

; <label>:181:                                    ; preds = %173, %179
  %182 = phi i64 [ %180, %179 ], [ %174, %173 ]
  %183 = phi i1 [ true, %179 ], [ false, %173 ]
  %184 = getelementptr inbounds i8, i8* %171, i64 %182, !dbg !1164
  call void @llvm.dbg.value(metadata i64 %182, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 3, metadata !1146, metadata !DIExpression()) #10, !dbg !1166
  %185 = call i32 @strncmp(i8* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 3) #14, !dbg !1164
  %186 = icmp eq i32 %185, 0, !dbg !1164
  br i1 %186, label %187, label %281, !dbg !1167

; <label>:187:                                    ; preds = %181
  %188 = add i64 %182, 3, !dbg !1168
  call void @llvm.dbg.value(metadata i64 %188, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  %189 = getelementptr inbounds i8, i8* %171, i64 %188, !dbg !1170
  %190 = load i8, i8* %189, align 1, !dbg !1170, !tbaa !1124
  %191 = icmp eq i8 %190, 32, !dbg !1172
  %192 = add i64 %182, 4, !dbg !1173
  %193 = select i1 %191, i64 %192, i64 %188, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %193, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  %194 = getelementptr inbounds i8, i8* %171, i64 %193, !dbg !1175
  %195 = load i8, i8* %194, align 1, !dbg !1175, !tbaa !1124
  %196 = icmp eq i8 %195, 40, !dbg !1177
  br i1 %196, label %197, label %381, !dbg !1178

; <label>:197:                                    ; preds = %187
  %198 = add i64 %193, 1, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %198, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  %199 = getelementptr inbounds i8, i8* %171, i64 %198, !dbg !1181
  %200 = sub i64 %172, %198, !dbg !1182
  call void @llvm.dbg.value(metadata i8* %199, metadata !1183, metadata !DIExpression()) #10, !dbg !1193
  call void @llvm.dbg.value(metadata i64 %200, metadata !1188, metadata !DIExpression()) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i1 %183, metadata !1191, metadata !DIExpression()) #10, !dbg !1196
  %201 = icmp eq i64 %200, 0, !dbg !1197
  br i1 %201, label %381, label %202, !dbg !1199

; <label>:202:                                    ; preds = %197, %206
  %203 = phi i64 [ %204, %206 ], [ %200, %197 ]
  %204 = add i64 %203, -1, !dbg !1200
  call void @llvm.dbg.value(metadata i64 %204, metadata !1192, metadata !DIExpression()) #10, !dbg !1201
  %205 = icmp eq i64 %204, 0, !dbg !1202
  br i1 %205, label %210, label %206, !dbg !1203

; <label>:206:                                    ; preds = %202
  %207 = getelementptr inbounds i8, i8* %199, i64 %204, !dbg !1204
  %208 = load i8, i8* %207, align 1, !dbg !1204, !tbaa !1124
  %209 = icmp eq i8 %208, 41, !dbg !1205
  br i1 %209, label %213, label %202, !dbg !1206, !llvm.loop !1207

; <label>:210:                                    ; preds = %202
  %211 = load i8, i8* %199, align 1, !dbg !1210, !tbaa !1124
  %212 = icmp eq i8 %211, 41, !dbg !1203
  br i1 %212, label %215, label %381, !dbg !1212

; <label>:213:                                    ; preds = %206
  %214 = getelementptr inbounds i8, i8* %199, i64 %204, !dbg !1204
  br label %215, !dbg !1213

; <label>:215:                                    ; preds = %213, %210
  %216 = phi i8* [ %199, %210 ], [ %214, %213 ]
  %217 = phi i1 [ true, %210 ], [ false, %213 ]
  br i1 %183, label %218, label %245, !dbg !1213

; <label>:218:                                    ; preds = %215
  call void @llvm.dbg.value(metadata i8* %199, metadata !1215, metadata !DIExpression()) #10, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %204, metadata !1220, metadata !DIExpression()) #10, !dbg !1226
  call void @llvm.dbg.value(metadata i8* %199, metadata !1221, metadata !DIExpression()) #10, !dbg !1227
  call void @llvm.dbg.value(metadata i64 0, metadata !1222, metadata !DIExpression()) #10, !dbg !1228
  br i1 %217, label %241, label %219, !dbg !1229

; <label>:219:                                    ; preds = %218
  %220 = add i64 %203, -2
  br label %221, !dbg !1229

; <label>:221:                                    ; preds = %235, %219
  %222 = phi i64 [ 0, %219 ], [ %239, %235 ]
  %223 = phi i8* [ %199, %219 ], [ %238, %235 ]
  call void @llvm.dbg.value(metadata i64 %222, metadata !1222, metadata !DIExpression()) #10, !dbg !1228
  call void @llvm.dbg.value(metadata i8* %223, metadata !1221, metadata !DIExpression()) #10, !dbg !1227
  %224 = getelementptr inbounds i8, i8* %199, i64 %222, !dbg !1230
  %225 = load i8, i8* %224, align 1, !dbg !1230, !tbaa !1124
  %226 = sext i8 %225 to i32, !dbg !1230
  switch i32 %226, label %235 [
    i32 92, label %227
    i32 0, label %381
  ], !dbg !1233

; <label>:227:                                    ; preds = %221
  %228 = icmp eq i64 %222, %220, !dbg !1234
  br i1 %228, label %381, label %229, !dbg !1237

; <label>:229:                                    ; preds = %227
  %230 = add i64 %222, 1, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %230, metadata !1222, metadata !DIExpression()) #10, !dbg !1228
  %231 = getelementptr inbounds i8, i8* %199, i64 %230, !dbg !1239
  %232 = load i8, i8* %231, align 1, !dbg !1239, !tbaa !1124
  %233 = sext i8 %232 to i32, !dbg !1239
  switch i32 %233, label %381 [
    i32 110, label %235
    i32 92, label %234
  ], !dbg !1240

; <label>:234:                                    ; preds = %229
  call void @llvm.dbg.value(metadata i8* %223, metadata !1221, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1227
  br label %235, !dbg !1241

; <label>:235:                                    ; preds = %221, %229, %234
  %236 = phi i8 [ 92, %234 ], [ 10, %229 ], [ %225, %221 ]
  %237 = phi i64 [ %230, %234 ], [ %230, %229 ], [ %222, %221 ], !dbg !1243
  store i8 %236, i8* %223, align 1, !dbg !1244, !tbaa !1124
  %238 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %237, metadata !1222, metadata !DIExpression()) #10, !dbg !1228
  %239 = add i64 %237, 1, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %239, metadata !1222, metadata !DIExpression()) #10, !dbg !1228
  call void @llvm.dbg.value(metadata i8* %238, metadata !1221, metadata !DIExpression()) #10, !dbg !1227
  %240 = icmp ult i64 %239, %204, !dbg !1247
  br i1 %240, label %221, label %241, !dbg !1229, !llvm.loop !1248

; <label>:241:                                    ; preds = %235, %218
  %242 = phi i8* [ %199, %218 ], [ %238, %235 ], !dbg !1243
  call void @llvm.dbg.value(metadata i8* %242, metadata !1221, metadata !DIExpression()) #10, !dbg !1227
  %243 = icmp ult i8* %242, %216, !dbg !1251
  br i1 %243, label %244, label %245, !dbg !1253

; <label>:244:                                    ; preds = %241
  store i8 0, i8* %242, align 1, !dbg !1254, !tbaa !1124
  br label %245, !dbg !1255

; <label>:245:                                    ; preds = %244, %241, %215
  call void @llvm.dbg.value(metadata i64 %203, metadata !1192, metadata !DIExpression()) #10, !dbg !1201
  store i8 0, i8* %216, align 1, !dbg !1256, !tbaa !1124
  br label %246, !dbg !1257

; <label>:246:                                    ; preds = %250, %245
  %247 = phi i64 [ %203, %245 ], [ %251, %250 ], !dbg !1200
  call void @llvm.dbg.value(metadata i64 %247, metadata !1192, metadata !DIExpression()) #10, !dbg !1201
  %248 = getelementptr inbounds i8, i8* %199, i64 %247, !dbg !1258
  %249 = load i8, i8* %248, align 1, !dbg !1258, !tbaa !1124
  switch i8 %249, label %381 [
    i8 32, label %250
    i8 9, label %250
    i8 61, label %252
  ], !dbg !1258

; <label>:250:                                    ; preds = %246, %246
  %251 = add i64 %247, 1, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %251, metadata !1192, metadata !DIExpression()) #10, !dbg !1201
  br label %246, !dbg !1257, !llvm.loop !1260

; <label>:252:                                    ; preds = %246, %257
  %253 = phi i64 [ %254, %257 ], [ %247, %246 ]
  %254 = add i64 %253, 1, !dbg !1200
  call void @llvm.dbg.value(metadata i64 %254, metadata !1192, metadata !DIExpression()) #10, !dbg !1201
  %255 = getelementptr inbounds i8, i8* %199, i64 %254, !dbg !1263
  %256 = load i8, i8* %255, align 1, !dbg !1263, !tbaa !1124
  switch i8 %256, label %258 [
    i8 32, label %257
    i8 9, label %257
  ], !dbg !1263

; <label>:257:                                    ; preds = %252, %252
  br label %252, !dbg !1200, !llvm.loop !1264

; <label>:258:                                    ; preds = %252
  %259 = getelementptr inbounds i8, i8* %199, i64 %254, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %255, metadata !1267, metadata !DIExpression()) #10, !dbg !1275
  call void @llvm.dbg.value(metadata i32 0, metadata !1273, metadata !DIExpression()) #10, !dbg !1277
  %260 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %260, label %261, label %372, !dbg !1278

; <label>:261:                                    ; preds = %258
  %262 = tail call i16** @__ctype_b_loc() #17, !dbg !1279
  %263 = load i16*, i16** %262, align 8, !tbaa !830
  br label %264, !dbg !1278

; <label>:264:                                    ; preds = %704, %261
  %265 = phi i8 [ %256, %261 ], [ %708, %704 ], !dbg !1279
  %266 = phi i32 [ 0, %261 ], [ %706, %704 ]
  %267 = phi i8* [ %259, %261 ], [ %705, %704 ]
  call void @llvm.dbg.value(metadata i32 %266, metadata !1273, metadata !DIExpression()) #10, !dbg !1277
  call void @llvm.dbg.value(metadata i8* %267, metadata !1267, metadata !DIExpression()) #10, !dbg !1275
  %268 = zext i8 %265 to i64, !dbg !1279
  %269 = getelementptr inbounds i16, i16* %263, i64 %268, !dbg !1279
  %270 = load i16, i16* %269, align 2, !dbg !1279, !tbaa !1283
  %271 = and i16 %270, 4096, !dbg !1279
  %272 = icmp eq i16 %271, 0, !dbg !1279
  br i1 %272, label %381, label %273, !dbg !1285

; <label>:273:                                    ; preds = %264
  %274 = getelementptr inbounds i8, i8* %267, i64 1, !dbg !1286
  call void @llvm.dbg.value(metadata i8* %274, metadata !1267, metadata !DIExpression()) #10, !dbg !1275
  %275 = load i8, i8* %274, align 1, !dbg !1200, !tbaa !1124
  call void @llvm.dbg.value(metadata i8* %274, metadata !1267, metadata !DIExpression()) #10, !dbg !1275
  %276 = zext i8 %275 to i64, !dbg !1279
  %277 = getelementptr inbounds i16, i16* %263, i64 %276, !dbg !1279
  %278 = load i16, i16* %277, align 2, !dbg !1279, !tbaa !1283
  %279 = and i16 %278, 4096, !dbg !1279
  %280 = icmp eq i16 %279, 0, !dbg !1279
  br i1 %280, label %381, label %704, !dbg !1285

; <label>:281:                                    ; preds = %181
  %282 = sub i64 %172, %182, !dbg !1287
  %283 = load i1, i1* @min_digest_line_length, align 8
  %284 = select i1 %283, i64 34, i64 0
  %285 = load i8, i8* %184, align 1, !dbg !1289, !tbaa !1124
  %286 = icmp eq i8 %285, 92, !dbg !1290
  %287 = zext i1 %286 to i64, !dbg !1291
  %288 = or i64 %284, %287, !dbg !1292
  %289 = icmp ult i64 %282, %288, !dbg !1293
  br i1 %289, label %381, label %290, !dbg !1294

; <label>:290:                                    ; preds = %281
  %291 = load i1, i1* @digest_hex_bytes, align 8
  %292 = select i1 %291, i64 32, i64 0
  %293 = add i64 %292, %182, !dbg !1295
  call void @llvm.dbg.value(metadata i64 %293, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  %294 = getelementptr inbounds i8, i8* %171, i64 %293, !dbg !1296
  %295 = load i8, i8* %294, align 1, !dbg !1296, !tbaa !1124
  switch i8 %295, label %381 [
    i8 32, label %296
    i8 9, label %296
  ], !dbg !1296

; <label>:296:                                    ; preds = %290, %290
  %297 = add i64 %293, 1, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %297, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  store i8 0, i8* %294, align 1, !dbg !1299, !tbaa !1124
  call void @llvm.dbg.value(metadata i8* %184, metadata !1267, metadata !DIExpression()) #10, !dbg !1300
  call void @llvm.dbg.value(metadata i32 0, metadata !1273, metadata !DIExpression()) #10, !dbg !1303
  br i1 %291, label %298, label %318, !dbg !1304

; <label>:298:                                    ; preds = %296
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1305
  %300 = load i16*, i16** %299, align 8, !tbaa !830
  br label %301, !dbg !1304

; <label>:301:                                    ; preds = %700, %298
  %302 = phi i32 [ 0, %298 ], [ %702, %700 ]
  %303 = phi i8* [ %184, %298 ], [ %701, %700 ]
  call void @llvm.dbg.value(metadata i32 %302, metadata !1273, metadata !DIExpression()) #10, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %303, metadata !1267, metadata !DIExpression()) #10, !dbg !1300
  %304 = load i8, i8* %303, align 1, !dbg !1305, !tbaa !1124
  %305 = zext i8 %304 to i64, !dbg !1305
  %306 = getelementptr inbounds i16, i16* %300, i64 %305, !dbg !1305
  %307 = load i16, i16* %306, align 2, !dbg !1305, !tbaa !1283
  %308 = and i16 %307, 4096, !dbg !1305
  %309 = icmp eq i16 %308, 0, !dbg !1305
  br i1 %309, label %381, label %310, !dbg !1306

; <label>:310:                                    ; preds = %301
  %311 = getelementptr inbounds i8, i8* %303, i64 1, !dbg !1307
  call void @llvm.dbg.value(metadata i8* %311, metadata !1267, metadata !DIExpression()) #10, !dbg !1300
  call void @llvm.dbg.value(metadata i8* %311, metadata !1267, metadata !DIExpression()) #10, !dbg !1300
  %312 = load i8, i8* %311, align 1, !dbg !1305, !tbaa !1124
  %313 = zext i8 %312 to i64, !dbg !1305
  %314 = getelementptr inbounds i16, i16* %300, i64 %313, !dbg !1305
  %315 = load i16, i16* %314, align 2, !dbg !1305, !tbaa !1283
  %316 = and i16 %315, 4096, !dbg !1305
  %317 = icmp eq i16 %316, 0, !dbg !1305
  br i1 %317, label %381, label %684, !dbg !1306

; <label>:318:                                    ; preds = %700, %296
  %319 = phi i8* [ %184, %296 ], [ %701, %700 ]
  call void @llvm.dbg.value(metadata i8* %319, metadata !1267, metadata !DIExpression()) #10, !dbg !1300
  %320 = load i8, i8* %319, align 1, !dbg !1308, !tbaa !1124
  %321 = icmp eq i8 %320, 0, !dbg !1309
  br i1 %321, label %322, label %381, !dbg !1310

; <label>:322:                                    ; preds = %318
  %323 = sub i64 %172, %297, !dbg !1311
  %324 = icmp eq i64 %323, 1, !dbg !1313
  br i1 %324, label %328, label %325, !dbg !1314

; <label>:325:                                    ; preds = %322
  %326 = getelementptr inbounds i8, i8* %171, i64 %297, !dbg !1315
  %327 = load i8, i8* %326, align 1, !dbg !1315, !tbaa !1124
  switch i8 %327, label %328 [
    i8 32, label %332
    i8 42, label %332
  ], !dbg !1316

; <label>:328:                                    ; preds = %325, %322
  %329 = load i32, i32* @bsd_reversed, align 4, !dbg !1317, !tbaa !1038
  %330 = icmp eq i32 %329, 0, !dbg !1320
  br i1 %330, label %381, label %331, !dbg !1321

; <label>:331:                                    ; preds = %328
  store i32 1, i32* @bsd_reversed, align 4, !dbg !1322, !tbaa !1038
  br label %337, !dbg !1323

; <label>:332:                                    ; preds = %325, %325
  %333 = load i32, i32* @bsd_reversed, align 4, !dbg !1324, !tbaa !1038
  %334 = icmp eq i32 %333, 1, !dbg !1326
  br i1 %334, label %337, label %335, !dbg !1327

; <label>:335:                                    ; preds = %332
  store i32 0, i32* @bsd_reversed, align 4, !dbg !1328, !tbaa !1038
  %336 = add i64 %293, 2, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %336, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  br label %337, !dbg !1331

; <label>:337:                                    ; preds = %335, %332, %331
  %338 = phi i64 [ %297, %331 ], [ %336, %335 ], [ %297, %332 ], !dbg !1154
  call void @llvm.dbg.value(metadata i64 %338, metadata !1147, metadata !DIExpression()) #10, !dbg !1152
  %339 = getelementptr inbounds i8, i8* %171, i64 %338, !dbg !1332
  br i1 %183, label %340, label %375, !dbg !1333

; <label>:340:                                    ; preds = %337
  %341 = sub i64 %172, %338, !dbg !1334
  call void @llvm.dbg.value(metadata i8* %339, metadata !1215, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %341, metadata !1220, metadata !DIExpression()) #10, !dbg !1338
  call void @llvm.dbg.value(metadata i8* %339, metadata !1221, metadata !DIExpression()) #10, !dbg !1339
  call void @llvm.dbg.value(metadata i64 0, metadata !1222, metadata !DIExpression()) #10, !dbg !1340
  %342 = icmp eq i64 %341, 0, !dbg !1341
  br i1 %342, label %365, label %343, !dbg !1342

; <label>:343:                                    ; preds = %340
  %344 = add i64 %341, -1
  br label %345, !dbg !1342

; <label>:345:                                    ; preds = %359, %343
  %346 = phi i64 [ 0, %343 ], [ %363, %359 ]
  %347 = phi i8* [ %339, %343 ], [ %362, %359 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1222, metadata !DIExpression()) #10, !dbg !1340
  call void @llvm.dbg.value(metadata i8* %347, metadata !1221, metadata !DIExpression()) #10, !dbg !1339
  %348 = getelementptr inbounds i8, i8* %339, i64 %346, !dbg !1343
  %349 = load i8, i8* %348, align 1, !dbg !1343, !tbaa !1124
  %350 = sext i8 %349 to i32, !dbg !1343
  switch i32 %350, label %359 [
    i32 92, label %351
    i32 0, label %381
  ], !dbg !1344

; <label>:351:                                    ; preds = %345
  %352 = icmp eq i64 %346, %344, !dbg !1345
  br i1 %352, label %381, label %353, !dbg !1346

; <label>:353:                                    ; preds = %351
  %354 = add i64 %346, 1, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %354, metadata !1222, metadata !DIExpression()) #10, !dbg !1340
  %355 = getelementptr inbounds i8, i8* %339, i64 %354, !dbg !1348
  %356 = load i8, i8* %355, align 1, !dbg !1348, !tbaa !1124
  %357 = sext i8 %356 to i32, !dbg !1348
  switch i32 %357, label %381 [
    i32 110, label %359
    i32 92, label %358
  ], !dbg !1349

; <label>:358:                                    ; preds = %353
  call void @llvm.dbg.value(metadata i8* %347, metadata !1221, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1339
  br label %359, !dbg !1350

; <label>:359:                                    ; preds = %345, %353, %358
  %360 = phi i8 [ 92, %358 ], [ 10, %353 ], [ %349, %345 ]
  %361 = phi i64 [ %354, %358 ], [ %354, %353 ], [ %346, %345 ], !dbg !1351
  store i8 %360, i8* %347, align 1, !dbg !1352, !tbaa !1124
  %362 = getelementptr inbounds i8, i8* %347, i64 1, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %361, metadata !1222, metadata !DIExpression()) #10, !dbg !1340
  %363 = add i64 %361, 1, !dbg !1354
  call void @llvm.dbg.value(metadata i64 %363, metadata !1222, metadata !DIExpression()) #10, !dbg !1340
  call void @llvm.dbg.value(metadata i8* %362, metadata !1221, metadata !DIExpression()) #10, !dbg !1339
  %364 = icmp ult i64 %363, %341, !dbg !1341
  br i1 %364, label %345, label %365, !dbg !1342, !llvm.loop !1248

; <label>:365:                                    ; preds = %359, %340
  %366 = phi i8* [ %339, %340 ], [ %362, %359 ], !dbg !1351
  call void @llvm.dbg.value(metadata i8* %366, metadata !1221, metadata !DIExpression()) #10, !dbg !1339
  %367 = getelementptr inbounds i8, i8* %171, i64 %172, !dbg !1355
  %368 = icmp ult i8* %366, %367, !dbg !1356
  br i1 %368, label %369, label %370, !dbg !1357

; <label>:369:                                    ; preds = %365
  store i8 0, i8* %366, align 1, !dbg !1358, !tbaa !1124
  br label %370, !dbg !1359

; <label>:370:                                    ; preds = %369, %365
  %371 = icmp eq i8* %339, null, !dbg !1360
  br i1 %371, label %381, label %375, !dbg !1361

; <label>:372:                                    ; preds = %704, %258
  %373 = phi i8 [ %256, %258 ], [ %708, %704 ], !dbg !1362
  %374 = icmp eq i8 %373, 0, !dbg !1363
  br i1 %374, label %375, label %381, !dbg !1361

; <label>:375:                                    ; preds = %372, %370, %337
  %376 = phi i8* [ %259, %372 ], [ %184, %370 ], [ %184, %337 ]
  %377 = phi i8* [ %199, %372 ], [ %339, %370 ], [ %339, %337 ]
  br i1 %128, label %378, label %389, !dbg !1364

; <label>:378:                                    ; preds = %375
  %379 = call i32 @strcmp(i8* %377, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #14, !dbg !1365
  %380 = icmp eq i32 %379, 0, !dbg !1365
  br i1 %380, label %381, label %389, !dbg !1366

; <label>:381:                                    ; preds = %301, %310, %684, %692, %353, %351, %345, %229, %227, %221, %246, %264, %273, %378, %372, %370, %328, %318, %290, %281, %210, %197, %187
  %382 = add i64 %150, 1, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %382, metadata !152, metadata !DIExpression()) #10, !dbg !1057
  %383 = load i1, i1* @warn, align 1
  br i1 %383, label %384, label %387, !dbg !1369

; <label>:384:                                    ; preds = %381
  %385 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i64 0, i64 0), i32 5) #10, !dbg !1370
  %386 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #10, !dbg !1373
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %385, i8* %386, i64 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1374
  br label %387, !dbg !1375

; <label>:387:                                    ; preds = %384, %381
  %388 = add i64 %149, 1, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %388, metadata !153, metadata !DIExpression()) #10, !dbg !1058
  br label %495, !dbg !1377

; <label>:389:                                    ; preds = %378, %375
  call void @llvm.dbg.value(metadata i8* %6, metadata !176, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1378
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #10, !dbg !1379
  %390 = load i1, i1* @status_only, align 1
  br i1 %390, label %394, label %391, !dbg !1380

; <label>:391:                                    ; preds = %389
  %392 = call i8* @strchr(i8* %377, i32 10) #14, !dbg !1381
  %393 = icmp ne i8* %392, null, !dbg !1380
  br label %394

; <label>:394:                                    ; preds = %391, %389
  %395 = phi i1 [ false, %389 ], [ %393, %391 ], !dbg !1382
  call void @llvm.dbg.value(metadata i8 1, metadata !156, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %6, metadata !176, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1378
  %396 = call fastcc zeroext i1 @digest_file(i8* %377, i8* nonnull %114, i8* nonnull %6) #10, !dbg !1383
  br i1 %396, label %415, label %397, !dbg !1384

; <label>:397:                                    ; preds = %394
  %398 = add i64 %147, 1, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %398, metadata !155, metadata !DIExpression()) #10, !dbg !1060
  %399 = load i1, i1* @status_only, align 1
  br i1 %399, label %491, label %400, !dbg !1387

; <label>:400:                                    ; preds = %397
  br i1 %395, label %401, label %412, !dbg !1388

; <label>:401:                                    ; preds = %400
  call void @llvm.dbg.value(metadata i32 92, metadata !1391, metadata !DIExpression()) #10, !dbg !1396
  %402 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1399, !tbaa !830
  %403 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %402, i64 0, i32 5, !dbg !1399
  %404 = load i8*, i8** %403, align 8, !dbg !1399, !tbaa !1400
  %405 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %402, i64 0, i32 6, !dbg !1399
  %406 = load i8*, i8** %405, align 8, !dbg !1399, !tbaa !1402
  %407 = icmp ult i8* %404, %406, !dbg !1399
  br i1 %407, label %410, label %408, !dbg !1399, !prof !1403

; <label>:408:                                    ; preds = %401
  %409 = call i32 @__overflow(%struct._IO_FILE* %402, i32 92) #10, !dbg !1399
  br label %412, !dbg !1399

; <label>:410:                                    ; preds = %401
  %411 = getelementptr inbounds i8, i8* %404, i64 1, !dbg !1399
  store i8* %411, i8** %403, align 8, !dbg !1399, !tbaa !1400
  store i8 92, i8* %404, align 1, !dbg !1399, !tbaa !1124
  br label %412, !dbg !1399

; <label>:412:                                    ; preds = %410, %408, %400
  call fastcc void @print_filename(i8* %377, i1 zeroext %395) #10, !dbg !1404
  %413 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0), i32 5) #10, !dbg !1405
  %414 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %413) #10, !dbg !1405
  br label %491, !dbg !1406

; <label>:415:                                    ; preds = %394
  %416 = load i1, i1* @ignore_missing, align 1
  %417 = xor i1 %416, true, !dbg !1407
  %418 = load i8, i8* %6, align 1, !dbg !1408
  %419 = icmp eq i8 %418, 0, !dbg !1408
  %420 = or i1 %419, %417, !dbg !1407
  br i1 %420, label %421, label %491, !dbg !1407

; <label>:421:                                    ; preds = %415
  %422 = load i1, i1* @digest_hex_bytes, align 8
  %423 = select i1 %422, i64 16, i64 0, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %423, metadata !178, metadata !DIExpression()) #10, !dbg !1410
  call void @llvm.dbg.value(metadata i64 0, metadata !182, metadata !DIExpression()) #10, !dbg !1411
  br i1 %422, label %424, label %460, !dbg !1412

; <label>:424:                                    ; preds = %421
  %425 = tail call i32** @__ctype_tolower_loc() #17, !dbg !1413
  %426 = load i32*, i32** %425, align 8, !tbaa !830
  br label %427, !dbg !1412

; <label>:427:                                    ; preds = %457, %424
  %428 = phi i64 [ 0, %424 ], [ %458, %457 ]
  call void @llvm.dbg.value(metadata i64 %428, metadata !182, metadata !DIExpression()) #10, !dbg !1411
  %429 = shl nuw i64 %428, 1, !dbg !1413
  %430 = getelementptr inbounds i8, i8* %376, i64 %429, !dbg !1413
  %431 = load i8, i8* %430, align 1, !dbg !1413, !tbaa !1124
  %432 = zext i8 %431 to i64, !dbg !1413
  %433 = getelementptr inbounds i32, i32* %426, i64 %432, !dbg !1413
  %434 = load i32, i32* %433, align 4, !dbg !1413, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %434, metadata !183, metadata !DIExpression()) #10, !dbg !1415
  %435 = getelementptr inbounds i8, i8* %114, i64 %428, !dbg !1416
  %436 = load i8, i8* %435, align 1, !dbg !1416, !tbaa !1124
  %437 = zext i8 %436 to i32, !dbg !1416
  %438 = lshr i32 %437, 4, !dbg !1417
  %439 = zext i32 %438 to i64, !dbg !1418
  %440 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %439, !dbg !1418
  %441 = load i8, i8* %440, align 1, !dbg !1418, !tbaa !1124
  %442 = sext i8 %441 to i32, !dbg !1418
  %443 = icmp eq i32 %434, %442, !dbg !1419
  br i1 %443, label %444, label %460, !dbg !1420

; <label>:444:                                    ; preds = %427
  %445 = or i64 %429, 1, !dbg !1421
  %446 = getelementptr inbounds i8, i8* %376, i64 %445, !dbg !1421
  %447 = load i8, i8* %446, align 1, !dbg !1421, !tbaa !1124
  %448 = zext i8 %447 to i64, !dbg !1421
  %449 = getelementptr inbounds i32, i32* %426, i64 %448, !dbg !1421
  %450 = load i32, i32* %449, align 4, !dbg !1421, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %450, metadata !189, metadata !DIExpression()) #10, !dbg !1423
  %451 = and i32 %437, 15, !dbg !1424
  %452 = zext i32 %451 to i64, !dbg !1425
  %453 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %452, !dbg !1425
  %454 = load i8, i8* %453, align 1, !dbg !1425, !tbaa !1124
  %455 = sext i8 %454 to i32, !dbg !1426
  %456 = icmp eq i32 %450, %455, !dbg !1427
  br i1 %456, label %457, label %460, !dbg !1428

; <label>:457:                                    ; preds = %444
  %458 = add nuw nsw i64 %428, 1, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %458, metadata !182, metadata !DIExpression()) #10, !dbg !1411
  %459 = icmp ult i64 %458, %423, !dbg !1430
  br i1 %459, label %427, label %460, !dbg !1412, !llvm.loop !1431

; <label>:460:                                    ; preds = %457, %444, %427, %421
  %461 = phi i64 [ 0, %421 ], [ %458, %457 ], [ %428, %427 ], [ %428, %444 ], !dbg !1434
  call void @llvm.dbg.value(metadata i64 %461, metadata !182, metadata !DIExpression()) #10, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %461, metadata !182, metadata !DIExpression()) #10, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %461, metadata !182, metadata !DIExpression()) #10, !dbg !1411
  %462 = icmp ne i64 %461, %423, !dbg !1435
  %463 = add i64 %148, 1, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %463, metadata !154, metadata !DIExpression()) #10, !dbg !1059
  %464 = select i1 %462, i8 %144, i8 1, !dbg !1438
  %465 = select i1 %462, i64 %463, i64 %148, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %465, metadata !154, metadata !DIExpression()) #10, !dbg !1059
  call void @llvm.dbg.value(metadata i8 %464, metadata !157, metadata !DIExpression()) #10, !dbg !1062
  %466 = load i1, i1* @status_only, align 1
  br i1 %466, label %491, label %467, !dbg !1439

; <label>:467:                                    ; preds = %460
  br i1 %462, label %470, label %468, !dbg !1440

; <label>:468:                                    ; preds = %467
  %469 = load i1, i1* @quiet, align 1
  br i1 %469, label %491, label %470, !dbg !1444

; <label>:470:                                    ; preds = %468, %467
  br i1 %395, label %471, label %482, !dbg !1445

; <label>:471:                                    ; preds = %470
  call void @llvm.dbg.value(metadata i32 92, metadata !1391, metadata !DIExpression()) #10, !dbg !1447
  %472 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1450, !tbaa !830
  %473 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %472, i64 0, i32 5, !dbg !1450
  %474 = load i8*, i8** %473, align 8, !dbg !1450, !tbaa !1400
  %475 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %472, i64 0, i32 6, !dbg !1450
  %476 = load i8*, i8** %475, align 8, !dbg !1450, !tbaa !1402
  %477 = icmp ult i8* %474, %476, !dbg !1450
  br i1 %477, label %480, label %478, !dbg !1450, !prof !1403

; <label>:478:                                    ; preds = %471
  %479 = call i32 @__overflow(%struct._IO_FILE* %472, i32 92) #10, !dbg !1450
  br label %482, !dbg !1450

; <label>:480:                                    ; preds = %471
  %481 = getelementptr inbounds i8, i8* %474, i64 1, !dbg !1450
  store i8* %481, i8** %473, align 8, !dbg !1450, !tbaa !1400
  store i8 92, i8* %474, align 1, !dbg !1450, !tbaa !1124
  br label %482, !dbg !1450

; <label>:482:                                    ; preds = %480, %478, %470
  call fastcc void @print_filename(i8* %377, i1 zeroext %395) #10, !dbg !1451
  br i1 %462, label %483, label %486, !dbg !1452

; <label>:483:                                    ; preds = %482
  %484 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i32 5) #10, !dbg !1453
  %485 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %484) #10, !dbg !1453
  br label %491, !dbg !1453

; <label>:486:                                    ; preds = %482
  %487 = load i1, i1* @quiet, align 1
  br i1 %487, label %491, label %488, !dbg !1455

; <label>:488:                                    ; preds = %486
  %489 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i32 5) #10, !dbg !1456
  %490 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %489) #10, !dbg !1456
  br label %491, !dbg !1456

; <label>:491:                                    ; preds = %488, %486, %483, %468, %460, %415, %412, %397
  %492 = phi i8 [ %144, %397 ], [ %144, %412 ], [ %144, %415 ], [ %144, %483 ], [ 1, %488 ], [ 1, %486 ], [ %464, %460 ], [ 1, %468 ], !dbg !1062
  %493 = phi i64 [ %398, %397 ], [ %398, %412 ], [ %147, %415 ], [ %147, %483 ], [ %147, %488 ], [ %147, %486 ], [ %147, %460 ], [ %147, %468 ], !dbg !1458
  %494 = phi i64 [ %148, %397 ], [ %148, %412 ], [ %148, %415 ], [ %463, %483 ], [ %148, %488 ], [ %148, %486 ], [ %465, %460 ], [ %148, %468 ], !dbg !1459
  call void @llvm.dbg.value(metadata i64 %494, metadata !154, metadata !DIExpression()) #10, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %493, metadata !155, metadata !DIExpression()) #10, !dbg !1060
  call void @llvm.dbg.value(metadata i8 %492, metadata !157, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %6, metadata !176, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1378
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #10, !dbg !1460
  br label %495

; <label>:495:                                    ; preds = %491, %387, %159
  %496 = phi i8 [ %492, %491 ], [ %144, %387 ], [ %144, %159 ]
  %497 = phi i8 [ 1, %491 ], [ %146, %387 ], [ %146, %159 ]
  %498 = phi i64 [ %493, %491 ], [ %147, %387 ], [ %147, %159 ]
  %499 = phi i64 [ %494, %491 ], [ %148, %387 ], [ %148, %159 ]
  %500 = phi i64 [ %149, %491 ], [ %388, %387 ], [ %149, %159 ]
  %501 = phi i64 [ %150, %491 ], [ %382, %387 ], [ %150, %159 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1461, metadata !DIExpression()) #10, !dbg !1466
  %502 = load i32, i32* %142, align 8, !dbg !1468, !tbaa !1469
  %503 = and i32 %502, 48, !dbg !1470
  %504 = icmp eq i32 %503, 0, !dbg !1470
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1471, metadata !DIExpression()) #10, !dbg !1474
  br i1 %504, label %143, label %505, !dbg !1470, !llvm.loop !1476

; <label>:505:                                    ; preds = %495, %156
  %506 = phi i64 [ %501, %495 ], [ %150, %156 ]
  %507 = phi i64 [ %500, %495 ], [ %149, %156 ]
  %508 = phi i64 [ %499, %495 ], [ %148, %156 ]
  %509 = phi i64 [ %498, %495 ], [ %147, %156 ]
  %510 = phi i8 [ %497, %495 ], [ %146, %156 ]
  %511 = phi i8 [ %496, %495 ], [ %144, %156 ]
  %512 = load i8*, i8** %4, align 8, !dbg !1479, !tbaa !830
  call void @llvm.dbg.value(metadata i8* %512, metadata !162, metadata !DIExpression()) #10, !dbg !1092
  call void @free(i8* %512) #10, !dbg !1480
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1471, metadata !DIExpression()) #10, !dbg !1481
  %513 = load i32, i32* %142, align 8, !dbg !1484, !tbaa !1469
  %514 = and i32 %513, 32, !dbg !1484
  %515 = icmp eq i32 %514, 0, !dbg !1485
  br i1 %515, label %519, label %516, !dbg !1486

; <label>:516:                                    ; preds = %505
  %517 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i64 0, i64 0), i32 5) #10, !dbg !1487
  %518 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #10, !dbg !1489
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %517, i8* %518) #10, !dbg !1490
  br label %568, !dbg !1491

; <label>:519:                                    ; preds = %505
  br i1 %128, label %527, label %520, !dbg !1492

; <label>:520:                                    ; preds = %519
  %521 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %140) #10, !dbg !1494
  %522 = icmp eq i32 %521, 0, !dbg !1495
  br i1 %522, label %527, label %523, !dbg !1496

; <label>:523:                                    ; preds = %520
  %524 = tail call i32* @__errno_location() #17, !dbg !1497
  %525 = load i32, i32* %524, align 4, !dbg !1497, !tbaa !1038
  %526 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #10, !dbg !1499
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %525, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %526) #10, !dbg !1500
  br label %568, !dbg !1501

; <label>:527:                                    ; preds = %520, %519
  %528 = and i8 %510, 1, !dbg !1502
  %529 = icmp eq i8 %528, 0, !dbg !1502
  br i1 %529, label %554, label %530, !dbg !1504

; <label>:530:                                    ; preds = %527
  %531 = load i1, i1* @status_only, align 1
  br i1 %531, label %532, label %534, !dbg !1505

; <label>:532:                                    ; preds = %530
  %533 = and i8 %511, 1, !dbg !1507
  br label %557, !dbg !1505

; <label>:534:                                    ; preds = %530
  %535 = icmp eq i64 %506, 0, !dbg !1508
  br i1 %535, label %538, label %536, !dbg !1512

; <label>:536:                                    ; preds = %534
  %537 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i64 0, i64 0), i64 %506, i32 5) #10, !dbg !1513
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %537, i64 %506) #10, !dbg !1514
  br label %538, !dbg !1514

; <label>:538:                                    ; preds = %536, %534
  %539 = icmp eq i64 %509, 0, !dbg !1515
  br i1 %539, label %542, label %540, !dbg !1517

; <label>:540:                                    ; preds = %538
  %541 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.77, i64 0, i64 0), i64 %509, i32 5) #10, !dbg !1518
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %541, i64 %509) #10, !dbg !1519
  br label %542, !dbg !1519

; <label>:542:                                    ; preds = %540, %538
  %543 = icmp eq i64 %508, 0, !dbg !1520
  br i1 %543, label %546, label %544, !dbg !1522

; <label>:544:                                    ; preds = %542
  %545 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.79, i64 0, i64 0), i64 %508, i32 5) #10, !dbg !1523
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %545, i64 %508) #10, !dbg !1524
  br label %546, !dbg !1524

; <label>:546:                                    ; preds = %544, %542
  %547 = load i1, i1* @ignore_missing, align 1
  %548 = and i8 %511, 1, !dbg !1525
  %549 = icmp eq i8 %548, 0, !dbg !1525
  %550 = and i1 %549, %547, !dbg !1527
  br i1 %550, label %551, label %557, !dbg !1527

; <label>:551:                                    ; preds = %546
  %552 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i64 0, i64 0), i32 5) #10, !dbg !1528
  %553 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #10, !dbg !1529
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %552, i8* %553) #10, !dbg !1530
  br label %568, !dbg !1531

; <label>:554:                                    ; preds = %527
  %555 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.73, i64 0, i64 0), i32 5) #10, !dbg !1532
  %556 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #10, !dbg !1534
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %555, i8* %556, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1535
  br label %568

; <label>:557:                                    ; preds = %546, %532
  %558 = phi i8 [ %533, %532 ], [ %548, %546 ], !dbg !1507
  %559 = icmp ne i8 %558, 0, !dbg !1507
  %560 = or i64 %509, %508, !dbg !1531
  %561 = icmp eq i64 %560, 0, !dbg !1531
  %562 = and i1 %561, %559, !dbg !1531
  br i1 %562, label %563, label %568, !dbg !1531

; <label>:563:                                    ; preds = %557
  %564 = load i1, i1* @strict, align 1
  %565 = icmp eq i64 %507, 0, !dbg !1536
  %566 = xor i1 %564, true, !dbg !1537
  %567 = or i1 %565, %566, !dbg !1537
  br label %568, !dbg !1537

; <label>:568:                                    ; preds = %135, %516, %523, %551, %554, %557, %563
  %569 = phi i1 [ false, %516 ], [ false, %523 ], [ false, %135 ], [ false, %557 ], [ false, %554 ], [ %567, %563 ], [ false, %551 ], !dbg !1538
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %116) #10, !dbg !1539
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %115) #10, !dbg !1539
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %109) #10, !dbg !1539
  %570 = zext i1 %569 to i8, !dbg !1540
  %571 = and i8 %124, %570, !dbg !1541
  call void @llvm.dbg.value(metadata i8 %571, metadata !897, metadata !DIExpression()), !dbg !943
  br label %668, !dbg !1542

; <label>:572:                                    ; preds = %122
  call void @llvm.dbg.value(metadata i8* %8, metadata !910, metadata !DIExpression(DW_OP_deref)), !dbg !1543
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #10, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %8, metadata !910, metadata !DIExpression(DW_OP_deref)), !dbg !1543
  %573 = call fastcc zeroext i1 @digest_file(i8* %125, i8* nonnull %14, i8* nonnull %8), !dbg !1545
  br i1 %573, label %574, label %666, !dbg !1546

; <label>:574:                                    ; preds = %572
  %575 = call i8* @strchr(i8* %125, i32 92) #14, !dbg !1547
  %576 = icmp eq i8* %575, null, !dbg !1547
  br i1 %576, label %577, label %580, !dbg !1548

; <label>:577:                                    ; preds = %574
  %578 = call i8* @strchr(i8* %125, i32 10) #14, !dbg !1549
  %579 = icmp eq i8* %578, null, !dbg !1549
  br i1 %579, label %583, label %580, !dbg !1550

; <label>:580:                                    ; preds = %577, %574
  %581 = load i1, i1* @delim, align 1
  %582 = xor i1 %581, true, !dbg !1551
  br label %583

; <label>:583:                                    ; preds = %577, %580
  %584 = phi i1 [ false, %577 ], [ %582, %580 ], !dbg !1552
  br i1 %46, label %585, label %604, !dbg !1553

; <label>:585:                                    ; preds = %583
  br i1 %584, label %586, label %597, !dbg !1554

; <label>:586:                                    ; preds = %585
  call void @llvm.dbg.value(metadata i32 92, metadata !1391, metadata !DIExpression()) #10, !dbg !1557
  %587 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1560, !tbaa !830
  %588 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %587, i64 0, i32 5, !dbg !1560
  %589 = load i8*, i8** %588, align 8, !dbg !1560, !tbaa !1400
  %590 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %587, i64 0, i32 6, !dbg !1560
  %591 = load i8*, i8** %590, align 8, !dbg !1560, !tbaa !1402
  %592 = icmp ult i8* %589, %591, !dbg !1560
  br i1 %592, label %595, label %593, !dbg !1560, !prof !1403

; <label>:593:                                    ; preds = %586
  %594 = call i32 @__overflow(%struct._IO_FILE* %587, i32 92) #10, !dbg !1560
  br label %597, !dbg !1560

; <label>:595:                                    ; preds = %586
  %596 = getelementptr inbounds i8, i8* %589, i64 1, !dbg !1560
  store i8* %596, i8** %588, align 8, !dbg !1560, !tbaa !1400
  store i8 92, i8* %589, align 1, !dbg !1560, !tbaa !1124
  br label %597, !dbg !1560

; <label>:597:                                    ; preds = %595, %593, %585
  %598 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1561, !tbaa !830
  %599 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %598), !dbg !1561
  %600 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1562, !tbaa !830
  %601 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), %struct._IO_FILE* %600), !dbg !1562
  call fastcc void @print_filename(i8* %125, i1 zeroext %584), !dbg !1563
  %602 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1564, !tbaa !830
  %603 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), %struct._IO_FILE* %602), !dbg !1564
  br label %616, !dbg !1565

; <label>:604:                                    ; preds = %583
  br i1 %584, label %605, label %616, !dbg !1567

; <label>:605:                                    ; preds = %604
  call void @llvm.dbg.value(metadata i32 92, metadata !1391, metadata !DIExpression()) #10, !dbg !1568
  %606 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1570, !tbaa !830
  %607 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %606, i64 0, i32 5, !dbg !1570
  %608 = load i8*, i8** %607, align 8, !dbg !1570, !tbaa !1400
  %609 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %606, i64 0, i32 6, !dbg !1570
  %610 = load i8*, i8** %609, align 8, !dbg !1570, !tbaa !1402
  %611 = icmp ult i8* %608, %610, !dbg !1570
  br i1 %611, label %614, label %612, !dbg !1570, !prof !1403

; <label>:612:                                    ; preds = %605
  %613 = call i32 @__overflow(%struct._IO_FILE* %606, i32 92) #10, !dbg !1570
  br label %616, !dbg !1570

; <label>:614:                                    ; preds = %605
  %615 = getelementptr inbounds i8, i8* %608, i64 1, !dbg !1570
  store i8* %615, i8** %607, align 8, !dbg !1570, !tbaa !1400
  store i8 92, i8* %608, align 1, !dbg !1570, !tbaa !1124
  br label %616, !dbg !1570

; <label>:616:                                    ; preds = %614, %612, %597, %604
  call void @llvm.dbg.value(metadata i64 0, metadata !914, metadata !DIExpression()), !dbg !1571
  %617 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %617, label %619, label %618, !dbg !1572

; <label>:618:                                    ; preds = %619, %616
  br i1 %46, label %652, label %629, !dbg !1573

; <label>:619:                                    ; preds = %616, %619
  %620 = phi i64 [ %625, %619 ], [ 0, %616 ]
  call void @llvm.dbg.value(metadata i64 %620, metadata !914, metadata !DIExpression()), !dbg !1571
  %621 = getelementptr inbounds i8, i8* %14, i64 %620, !dbg !1574
  %622 = load i8, i8* %621, align 1, !dbg !1574, !tbaa !1124
  %623 = zext i8 %622 to i32, !dbg !1574
  %624 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 %623) #10, !dbg !1574
  %625 = add nuw nsw i64 %620, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %625, metadata !914, metadata !DIExpression()), !dbg !1571
  %626 = load i1, i1* @digest_hex_bytes, align 8
  %627 = select i1 %626, i64 16, i64 0, !dbg !1577
  %628 = icmp ult i64 %625, %627, !dbg !1578
  br i1 %628, label %619, label %618, !dbg !1572, !llvm.loop !1579

; <label>:629:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i32 32, metadata !1391, metadata !DIExpression()) #10, !dbg !1581
  %630 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1585, !tbaa !830
  %631 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %630, i64 0, i32 5, !dbg !1585
  %632 = load i8*, i8** %631, align 8, !dbg !1585, !tbaa !1400
  %633 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %630, i64 0, i32 6, !dbg !1585
  %634 = load i8*, i8** %633, align 8, !dbg !1585, !tbaa !1402
  %635 = icmp ult i8* %632, %634, !dbg !1585
  br i1 %635, label %638, label %636, !dbg !1585, !prof !1403

; <label>:636:                                    ; preds = %629
  %637 = call i32 @__overflow(%struct._IO_FILE* %630, i32 32) #10, !dbg !1585
  br label %640, !dbg !1585

; <label>:638:                                    ; preds = %629
  %639 = getelementptr inbounds i8, i8* %632, i64 1, !dbg !1585
  store i8* %639, i8** %631, align 8, !dbg !1585, !tbaa !1400
  store i8 32, i8* %632, align 1, !dbg !1585, !tbaa !1124
  br label %640, !dbg !1585

; <label>:640:                                    ; preds = %636, %638
  call void @llvm.dbg.value(metadata i32 %117, metadata !1391, metadata !DIExpression()) #10, !dbg !1586
  %641 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1588, !tbaa !830
  %642 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %641, i64 0, i32 5, !dbg !1588
  %643 = load i8*, i8** %642, align 8, !dbg !1588, !tbaa !1400
  %644 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %641, i64 0, i32 6, !dbg !1588
  %645 = load i8*, i8** %644, align 8, !dbg !1588, !tbaa !1402
  %646 = icmp ult i8* %643, %645, !dbg !1588
  br i1 %646, label %649, label %647, !dbg !1588, !prof !1403

; <label>:647:                                    ; preds = %640
  %648 = call i32 @__overflow(%struct._IO_FILE* %641, i32 %117) #10, !dbg !1588
  br label %651, !dbg !1588

; <label>:649:                                    ; preds = %640
  %650 = getelementptr inbounds i8, i8* %643, i64 1, !dbg !1588
  store i8* %650, i8** %642, align 8, !dbg !1588, !tbaa !1400
  store i8 %118, i8* %643, align 1, !dbg !1588, !tbaa !1124
  br label %651, !dbg !1588

; <label>:651:                                    ; preds = %647, %649
  call fastcc void @print_filename(i8* %125, i1 zeroext %584), !dbg !1589
  br label %652, !dbg !1590

; <label>:652:                                    ; preds = %651, %618
  %653 = load i1, i1* @delim, align 1
  %654 = select i1 %653, i32 0, i32 10, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %654, metadata !1391, metadata !DIExpression()) #10, !dbg !1592
  %655 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1594, !tbaa !830
  %656 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %655, i64 0, i32 5, !dbg !1594
  %657 = load i8*, i8** %656, align 8, !dbg !1594, !tbaa !1400
  %658 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %655, i64 0, i32 6, !dbg !1594
  %659 = load i8*, i8** %658, align 8, !dbg !1594, !tbaa !1402
  %660 = icmp ult i8* %657, %659, !dbg !1594
  br i1 %660, label %663, label %661, !dbg !1594, !prof !1403

; <label>:661:                                    ; preds = %652
  %662 = call i32 @__overflow(%struct._IO_FILE* %655, i32 %654) #10, !dbg !1594
  br label %666, !dbg !1594

; <label>:663:                                    ; preds = %652
  %664 = trunc i32 %654 to i8, !dbg !1594
  %665 = getelementptr inbounds i8, i8* %657, i64 1, !dbg !1594
  store i8* %665, i8** %656, align 8, !dbg !1594, !tbaa !1400
  store i8 %664, i8* %657, align 1, !dbg !1594, !tbaa !1124
  br label %666, !dbg !1594

; <label>:666:                                    ; preds = %663, %661, %572
  %667 = phi i8 [ 0, %572 ], [ %124, %661 ], [ %124, %663 ], !dbg !1595
  call void @llvm.dbg.value(metadata i8 %667, metadata !897, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i8* %8, metadata !910, metadata !DIExpression(DW_OP_deref)), !dbg !1543
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #10, !dbg !1596
  br label %668

; <label>:668:                                    ; preds = %666, %568
  %669 = phi i8 [ %571, %568 ], [ %667, %666 ], !dbg !1045
  %670 = getelementptr inbounds i8*, i8** %123, i64 1, !dbg !1597
  call void @llvm.dbg.value(metadata i8** %670, metadata !902, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %669, metadata !897, metadata !DIExpression()), !dbg !943
  %671 = icmp ult i8** %670, %104, !dbg !1048
  br i1 %671, label %122, label %119, !dbg !1049, !llvm.loop !1598

; <label>:672:                                    ; preds = %119
  %673 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1600, !tbaa !830
  %674 = call i32 @rpl_fclose(%struct._IO_FILE* %673) #10, !dbg !1601
  %675 = icmp eq i32 %674, -1, !dbg !1602
  br i1 %675, label %676, label %680, !dbg !1603

; <label>:676:                                    ; preds = %672
  %677 = tail call i32* @__errno_location() #17, !dbg !1604
  %678 = load i32, i32* %677, align 4, !dbg !1604, !tbaa !1038
  %679 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !1604
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %678, i8* %679) #10, !dbg !1604
  unreachable, !dbg !1604

; <label>:680:                                    ; preds = %672, %119
  %681 = and i8 %120, 1, !dbg !1605
  %682 = xor i8 %681, 1, !dbg !1605
  %683 = zext i8 %682 to i32, !dbg !1605
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %9) #10, !dbg !1606
  ret i32 %683, !dbg !1606

; <label>:684:                                    ; preds = %310
  call void @llvm.dbg.value(metadata i32 %302, metadata !1273, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1303
  call void @llvm.dbg.value(metadata i32 %302, metadata !1273, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1303
  %685 = getelementptr inbounds i8, i8* %303, i64 2, !dbg !1307
  call void @llvm.dbg.value(metadata i8* %685, metadata !1267, metadata !DIExpression()) #10, !dbg !1300
  call void @llvm.dbg.value(metadata i8* %685, metadata !1267, metadata !DIExpression()) #10, !dbg !1300
  %686 = load i8, i8* %685, align 1, !dbg !1305, !tbaa !1124
  %687 = zext i8 %686 to i64, !dbg !1305
  %688 = getelementptr inbounds i16, i16* %300, i64 %687, !dbg !1305
  %689 = load i16, i16* %688, align 2, !dbg !1305, !tbaa !1283
  %690 = and i16 %689, 4096, !dbg !1305
  %691 = icmp eq i16 %690, 0, !dbg !1305
  br i1 %691, label %381, label %692, !dbg !1306

; <label>:692:                                    ; preds = %684
  call void @llvm.dbg.value(metadata i32 %302, metadata !1273, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #10, !dbg !1303
  call void @llvm.dbg.value(metadata i32 %302, metadata !1273, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #10, !dbg !1303
  %693 = getelementptr inbounds i8, i8* %303, i64 3, !dbg !1307
  call void @llvm.dbg.value(metadata i8* %693, metadata !1267, metadata !DIExpression()) #10, !dbg !1300
  call void @llvm.dbg.value(metadata i8* %693, metadata !1267, metadata !DIExpression()) #10, !dbg !1300
  %694 = load i8, i8* %693, align 1, !dbg !1305, !tbaa !1124
  %695 = zext i8 %694 to i64, !dbg !1305
  %696 = getelementptr inbounds i16, i16* %300, i64 %695, !dbg !1305
  %697 = load i16, i16* %696, align 2, !dbg !1305, !tbaa !1283
  %698 = and i16 %697, 4096, !dbg !1305
  %699 = icmp eq i16 %698, 0, !dbg !1305
  br i1 %699, label %381, label %700, !dbg !1306

; <label>:700:                                    ; preds = %692
  call void @llvm.dbg.value(metadata i32 %302, metadata !1273, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #10, !dbg !1303
  call void @llvm.dbg.value(metadata i32 %302, metadata !1273, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #10, !dbg !1303
  %701 = getelementptr inbounds i8, i8* %303, i64 4, !dbg !1307
  %702 = add nuw nsw i32 %302, 4, !dbg !1607
  call void @llvm.dbg.value(metadata i32 %702, metadata !1273, metadata !DIExpression()) #10, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %701, metadata !1267, metadata !DIExpression()) #10, !dbg !1300
  %703 = icmp ult i32 %702, 32, !dbg !1608
  br i1 %703, label %301, label %318, !dbg !1304, !llvm.loop !1609

; <label>:704:                                    ; preds = %273
  call void @llvm.dbg.value(metadata i32 %266, metadata !1273, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1277
  call void @llvm.dbg.value(metadata i32 %266, metadata !1273, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1277
  %705 = getelementptr inbounds i8, i8* %267, i64 2, !dbg !1286
  %706 = add nuw nsw i32 %266, 2, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %706, metadata !1273, metadata !DIExpression()) #10, !dbg !1277
  call void @llvm.dbg.value(metadata i8* %705, metadata !1267, metadata !DIExpression()) #10, !dbg !1275
  %707 = icmp ult i32 %706, 32, !dbg !1613
  %708 = load i8, i8* %705, align 1, !dbg !1200, !tbaa !1124
  br i1 %707, label %264, label %372, !dbg !1278, !llvm.loop !1609
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @digest_file(i8*, i8*, i8* nocapture) unnamed_addr #7 !dbg !1614 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1619, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i32* null, metadata !1620, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8* %1, metadata !1621, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8* %2, metadata !1622, metadata !DIExpression()), !dbg !1629
  %4 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #14, !dbg !1630
  %5 = icmp eq i32 %4, 0, !dbg !1630
  store i8 0, i8* %2, align 1, !dbg !1631, !tbaa !1632
  br i1 %5, label %6, label %8, !dbg !1634

; <label>:6:                                      ; preds = %3
  store i1 true, i1* @have_read_stdin, align 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1635, !tbaa !830
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1623, metadata !DIExpression()), !dbg !1638
  br label %21, !dbg !1639

; <label>:8:                                      ; preds = %3
  %9 = tail call %struct._IO_FILE* @fopen_safer(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #10, !dbg !1640
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %9, metadata !1623, metadata !DIExpression()), !dbg !1638
  %10 = icmp eq %struct._IO_FILE* %9, null, !dbg !1642
  br i1 %10, label %11, label %21, !dbg !1644

; <label>:11:                                     ; preds = %8
  %12 = load i1, i1* @ignore_missing, align 1
  %13 = tail call i32* @__errno_location() #17, !dbg !1645
  br i1 %12, label %14, label %18, !dbg !1647

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %13, align 4, !dbg !1649, !tbaa !1038
  %16 = icmp eq i32 %15, 2, !dbg !1650
  br i1 %16, label %17, label %18, !dbg !1651

; <label>:17:                                     ; preds = %14
  store i8 1, i8* %2, align 1, !dbg !1652, !tbaa !1632
  br label %41, !dbg !1654

; <label>:18:                                     ; preds = %11, %14
  %19 = load i32, i32* %13, align 4, !dbg !1655, !tbaa !1038
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1656
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %20) #10, !dbg !1657
  br label %41, !dbg !1658

; <label>:21:                                     ; preds = %8, %6
  %22 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ], !dbg !1659
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !1623, metadata !DIExpression()), !dbg !1638
  tail call void @fadvise(%struct._IO_FILE* %22, i32 2) #10, !dbg !1660
  %23 = tail call i32 @md5_stream(%struct._IO_FILE* %22, i8* %1) #10, !dbg !1661
  call void @llvm.dbg.value(metadata i32 %23, metadata !1624, metadata !DIExpression()), !dbg !1662
  %24 = icmp eq i32 %23, 0, !dbg !1663
  br i1 %24, label %33, label %25, !dbg !1665

; <label>:25:                                     ; preds = %21
  %26 = tail call i32* @__errno_location() #17, !dbg !1666
  %27 = load i32, i32* %26, align 4, !dbg !1666, !tbaa !1038
  %28 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1668
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %28) #10, !dbg !1669
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1670, !tbaa !830
  %30 = icmp eq %struct._IO_FILE* %22, %29, !dbg !1672
  br i1 %30, label %41, label %31, !dbg !1673

; <label>:31:                                     ; preds = %25
  %32 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #10, !dbg !1674
  br label %41, !dbg !1674

; <label>:33:                                     ; preds = %21
  br i1 %5, label %41, label %34, !dbg !1675

; <label>:34:                                     ; preds = %33
  %35 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #10, !dbg !1677
  %36 = icmp eq i32 %35, 0, !dbg !1678
  br i1 %36, label %41, label %37, !dbg !1679

; <label>:37:                                     ; preds = %34
  %38 = tail call i32* @__errno_location() #17, !dbg !1680
  %39 = load i32, i32* %38, align 4, !dbg !1680, !tbaa !1038
  %40 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1682
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %40) #10, !dbg !1683
  br label %41, !dbg !1684

; <label>:41:                                     ; preds = %33, %34, %31, %25, %37, %18, %17
  %42 = phi i1 [ false, %37 ], [ true, %17 ], [ false, %18 ], [ false, %25 ], [ false, %31 ], [ true, %34 ], [ true, %33 ], !dbg !1645
  ret i1 %42, !dbg !1685
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_filename(i8* nocapture readonly, i1 zeroext) unnamed_addr #7 !dbg !1686 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1690, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i1 %1, metadata !1691, metadata !DIExpression()), !dbg !1693
  br i1 %1, label %3, label %6, !dbg !1694

; <label>:3:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1690, metadata !DIExpression()), !dbg !1692
  %4 = load i8, i8* %0, align 1, !dbg !1695, !tbaa !1124
  %5 = icmp eq i8 %4, 0, !dbg !1696
  br i1 %5, label %35, label %9, !dbg !1696

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1697, !tbaa !830
  %8 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %7), !dbg !1697
  br label %35, !dbg !1700

; <label>:9:                                      ; preds = %3, %31
  %10 = phi i8 [ %33, %31 ], [ %4, %3 ]
  %11 = phi i8* [ %32, %31 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !1690, metadata !DIExpression()), !dbg !1692
  %12 = sext i8 %10 to i32, !dbg !1701
  switch i32 %12, label %19 [
    i32 10, label %13
    i32 92, label %16
  ], !dbg !1703

; <label>:13:                                     ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1704, !tbaa !830
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), %struct._IO_FILE* %14), !dbg !1704
  br label %31, !dbg !1706

; <label>:16:                                     ; preds = %9
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1707, !tbaa !830
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), %struct._IO_FILE* %17), !dbg !1707
  br label %31, !dbg !1708

; <label>:19:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i32 %12, metadata !1391, metadata !DIExpression()) #10, !dbg !1709
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1711, !tbaa !830
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i64 0, i32 5, !dbg !1711
  %22 = load i8*, i8** %21, align 8, !dbg !1711, !tbaa !1400
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i64 0, i32 6, !dbg !1711
  %24 = load i8*, i8** %23, align 8, !dbg !1711, !tbaa !1402
  %25 = icmp ult i8* %22, %24, !dbg !1711
  br i1 %25, label %29, label %26, !dbg !1711, !prof !1403

; <label>:26:                                     ; preds = %19
  %27 = and i32 %12, 255, !dbg !1711
  %28 = tail call i32 @__overflow(%struct._IO_FILE* %20, i32 %27) #10, !dbg !1711
  br label %31, !dbg !1711

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1711
  store i8* %30, i8** %21, align 8, !dbg !1711, !tbaa !1400
  store i8 %10, i8* %22, align 1, !dbg !1711, !tbaa !1124
  br label %31, !dbg !1711

; <label>:31:                                     ; preds = %29, %26, %16, %13
  %32 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1712
  call void @llvm.dbg.value(metadata i8* %32, metadata !1690, metadata !DIExpression()), !dbg !1692
  %33 = load i8, i8* %32, align 1, !dbg !1695, !tbaa !1124
  %34 = icmp eq i8 %33, 0, !dbg !1696
  br i1 %34, label %35, label %9, !dbg !1696, !llvm.loop !1713

; <label>:35:                                     ; preds = %31, %3, %6
  ret void, !dbg !1715
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1716 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1718, metadata !DIExpression()), !dbg !1719
  store i8* %0, i8** @file_name, align 8, !dbg !1720, !tbaa !830
  ret void, !dbg !1721
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1722 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1726, metadata !DIExpression()), !dbg !1727
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1728, !tbaa !1632
  ret void, !dbg !1729
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1730 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1735, !tbaa !830
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1736
  %3 = icmp eq i32 %2, 0, !dbg !1737
  br i1 %3, label %22, label %4, !dbg !1738

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1739, !tbaa !1632, !range !1740
  %6 = icmp eq i8 %5, 0, !dbg !1739
  br i1 %6, label %11, label %7, !dbg !1741

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1742
  %9 = load i32, i32* %8, align 4, !dbg !1742, !tbaa !1038
  %10 = icmp eq i32 %9, 32, !dbg !1743
  br i1 %10, label %22, label %11, !dbg !1744

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i32 5) #10, !dbg !1745
  call void @llvm.dbg.value(metadata i8* %12, metadata !1732, metadata !DIExpression()), !dbg !1746
  %13 = load i8*, i8** @file_name, align 8, !dbg !1747, !tbaa !830
  %14 = icmp eq i8* %13, null, !dbg !1747
  %15 = tail call i32* @__errno_location() #17, !dbg !1749
  %16 = load i32, i32* %15, align 4, !dbg !1749, !tbaa !1038
  br i1 %14, label %19, label %17, !dbg !1750

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1751
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.87, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1752
  br label %20, !dbg !1752

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.88, i64 0, i64 0), i8* %12) #10, !dbg !1753
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1754, !tbaa !1038
  tail call void @_exit(i32 %21) #15, !dbg !1755
  unreachable, !dbg !1755

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1756, !tbaa !830
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1758
  %25 = icmp eq i32 %24, 0, !dbg !1759
  br i1 %25, label %28, label %26, !dbg !1760

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1761, !tbaa !1038
  tail call void @_exit(i32 %27) #15, !dbg !1762
  unreachable, !dbg !1762

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1763
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @md5_init_ctx(%struct.md5_ctx* nocapture) local_unnamed_addr #7 !dbg !1764 {
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, metadata !1788, metadata !DIExpression()), !dbg !1789
  %2 = bitcast %struct.md5_ctx* %0 to <4 x i32>*, !dbg !1790
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %2, align 4, !dbg !1790, !tbaa !1038
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1, !dbg !1791
  store i32 0, i32* %3, align 4, !dbg !1792, !tbaa !1038
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 0, !dbg !1793
  store i32 0, i32* %4, align 4, !dbg !1794, !tbaa !1038
  %5 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 5, !dbg !1795
  store i32 0, i32* %5, align 4, !dbg !1796, !tbaa !1797
  ret void, !dbg !1799
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @md5_read_ctx(%struct.md5_ctx* nocapture readonly, i8* returned) local_unnamed_addr #7 !dbg !1800 {
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, metadata !1806, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8* %1, metadata !1807, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %1, metadata !1808, metadata !DIExpression()), !dbg !1811
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 0, !dbg !1812
  %4 = load i32, i32* %3, align 4, !dbg !1812, !tbaa !1813
  call void @llvm.dbg.value(metadata i8* %1, metadata !1814, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i32 %4, metadata !1819, metadata !DIExpression()), !dbg !1822
  %5 = bitcast i8* %1 to i32*, !dbg !1823
  store i32 %4, i32* %5, align 1, !dbg !1823
  %6 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1824
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 1, !dbg !1825
  %8 = load i32, i32* %7, align 4, !dbg !1825, !tbaa !1826
  call void @llvm.dbg.value(metadata i8* %6, metadata !1814, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 %8, metadata !1819, metadata !DIExpression()), !dbg !1829
  %9 = bitcast i8* %6 to i32*, !dbg !1830
  store i32 %8, i32* %9, align 1, !dbg !1830
  %10 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1831
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 2, !dbg !1832
  %12 = load i32, i32* %11, align 4, !dbg !1832, !tbaa !1833
  call void @llvm.dbg.value(metadata i8* %10, metadata !1814, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i32 %12, metadata !1819, metadata !DIExpression()), !dbg !1836
  %13 = bitcast i8* %10 to i32*, !dbg !1837
  store i32 %12, i32* %13, align 1, !dbg !1837
  %14 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1838
  %15 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 3, !dbg !1839
  %16 = load i32, i32* %15, align 4, !dbg !1839, !tbaa !1840
  call void @llvm.dbg.value(metadata i8* %14, metadata !1814, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i32 %16, metadata !1819, metadata !DIExpression()), !dbg !1843
  %17 = bitcast i8* %14 to i32*, !dbg !1844
  store i32 %16, i32* %17, align 1, !dbg !1844
  ret i8* %1, !dbg !1845
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @md5_finish_ctx(%struct.md5_ctx*, i8* returned) local_unnamed_addr #7 !dbg !1846 {
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, metadata !1850, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8* %1, metadata !1851, metadata !DIExpression()), !dbg !1855
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 5, !dbg !1856
  %4 = load i32, i32* %3, align 4, !dbg !1856, !tbaa !1797
  call void @llvm.dbg.value(metadata i32 %4, metadata !1852, metadata !DIExpression()), !dbg !1857
  %5 = icmp ult i32 %4, 56, !dbg !1858
  %6 = select i1 %5, i64 16, i64 32, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %6, metadata !1853, metadata !DIExpression()), !dbg !1860
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 0, !dbg !1861
  %8 = load i32, i32* %7, align 4, !dbg !1862, !tbaa !1038
  %9 = add i32 %8, %4, !dbg !1862
  store i32 %9, i32* %7, align 4, !dbg !1862, !tbaa !1038
  %10 = icmp ult i32 %9, %4, !dbg !1863
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1, !dbg !1865
  br i1 %10, label %12, label %15, !dbg !1866

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %11, align 4, !dbg !1867, !tbaa !1038
  %14 = add i32 %13, 1, !dbg !1867
  store i32 %14, i32* %11, align 4, !dbg !1867, !tbaa !1038
  br label %15, !dbg !1867

; <label>:15:                                     ; preds = %2, %12
  %16 = shl i32 %9, 3, !dbg !1868
  %17 = add nsw i64 %6, -2, !dbg !1869
  %18 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 %17, !dbg !1870
  store i32 %16, i32* %18, align 4, !dbg !1871, !tbaa !1038
  %19 = load i32, i32* %11, align 4, !dbg !1872, !tbaa !1038
  %20 = shl i32 %19, 3, !dbg !1872
  %21 = lshr i32 %9, 29, !dbg !1872
  %22 = or i32 %20, %21, !dbg !1872
  %23 = add nsw i64 %6, -1, !dbg !1873
  %24 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 %23, !dbg !1874
  store i32 %22, i32* %24, align 4, !dbg !1875, !tbaa !1038
  %25 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 0, !dbg !1876
  %26 = bitcast i32* %25 to i8*, !dbg !1876
  %27 = zext i32 %4 to i64, !dbg !1876
  %28 = getelementptr inbounds i8, i8* %26, i64 %27, !dbg !1876
  %29 = shl nsw i64 %17, 2, !dbg !1877
  %30 = sub nsw i64 %29, %27, !dbg !1878
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 16 getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), i64 %30, i1 false), !dbg !1879
  %31 = shl nuw nsw i64 %6, 2, !dbg !1880
  tail call void @md5_process_block(i8* nonnull %26, i64 %31, %struct.md5_ctx* nonnull %0) #10, !dbg !1881
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, metadata !1806, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8* %1, metadata !1807, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8* %1, metadata !1808, metadata !DIExpression()), !dbg !1885
  %32 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 0, !dbg !1886
  %33 = load i32, i32* %32, align 4, !dbg !1886, !tbaa !1813
  call void @llvm.dbg.value(metadata i8* %1, metadata !1814, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i32 %33, metadata !1819, metadata !DIExpression()), !dbg !1889
  %34 = bitcast i8* %1 to i32*, !dbg !1890
  store i32 %33, i32* %34, align 1, !dbg !1890
  %35 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1891
  %36 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 1, !dbg !1892
  %37 = load i32, i32* %36, align 4, !dbg !1892, !tbaa !1826
  call void @llvm.dbg.value(metadata i8* %35, metadata !1814, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %37, metadata !1819, metadata !DIExpression()), !dbg !1895
  %38 = bitcast i8* %35 to i32*, !dbg !1896
  store i32 %37, i32* %38, align 1, !dbg !1896
  %39 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1897
  %40 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 2, !dbg !1898
  %41 = load i32, i32* %40, align 4, !dbg !1898, !tbaa !1833
  call void @llvm.dbg.value(metadata i8* %39, metadata !1814, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 %41, metadata !1819, metadata !DIExpression()), !dbg !1901
  %42 = bitcast i8* %39 to i32*, !dbg !1902
  store i32 %41, i32* %42, align 1, !dbg !1902
  %43 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1903
  %44 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 3, !dbg !1904
  %45 = load i32, i32* %44, align 4, !dbg !1904, !tbaa !1840
  call void @llvm.dbg.value(metadata i8* %43, metadata !1814, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i32 %45, metadata !1819, metadata !DIExpression()), !dbg !1907
  %46 = bitcast i8* %43 to i32*, !dbg !1908
  store i32 %45, i32* %46, align 1, !dbg !1908
  ret i8* %1, !dbg !1909
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @md5_process_block(i8* readonly, i64, %struct.md5_ctx* nocapture) local_unnamed_addr #7 !dbg !1910 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1914, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %1, metadata !1915, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %2, metadata !1916, metadata !DIExpression()), !dbg !1938
  %4 = bitcast i8* %0 to i32*, !dbg !1939
  call void @llvm.dbg.value(metadata i32* %4, metadata !1919, metadata !DIExpression()), !dbg !1940
  %5 = lshr i64 %1, 2, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %5, metadata !1922, metadata !DIExpression()), !dbg !1942
  %6 = getelementptr inbounds i32, i32* %4, i64 %5, !dbg !1943
  call void @llvm.dbg.value(metadata i32* %6, metadata !1923, metadata !DIExpression()), !dbg !1944
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 0, !dbg !1945
  %8 = load i32, i32* %7, align 4, !dbg !1945, !tbaa !1813
  call void @llvm.dbg.value(metadata i32 %8, metadata !1924, metadata !DIExpression()), !dbg !1946
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 1, !dbg !1947
  %10 = load i32, i32* %9, align 4, !dbg !1947, !tbaa !1826
  call void @llvm.dbg.value(metadata i32 %10, metadata !1925, metadata !DIExpression()), !dbg !1948
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 2, !dbg !1949
  %12 = load i32, i32* %11, align 4, !dbg !1949, !tbaa !1833
  call void @llvm.dbg.value(metadata i32 %12, metadata !1926, metadata !DIExpression()), !dbg !1950
  %13 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 3, !dbg !1951
  %14 = load i32, i32* %13, align 4, !dbg !1951, !tbaa !1840
  call void @llvm.dbg.value(metadata i32 %14, metadata !1927, metadata !DIExpression()), !dbg !1952
  %15 = trunc i64 %1 to i32, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %15, metadata !1928, metadata !DIExpression()), !dbg !1954
  %16 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 4, i64 0, !dbg !1955
  %17 = load i32, i32* %16, align 4, !dbg !1956, !tbaa !1038
  %18 = add i32 %17, %15, !dbg !1956
  store i32 %18, i32* %16, align 4, !dbg !1956, !tbaa !1038
  %19 = lshr i64 %1, 32, !dbg !1957
  %20 = icmp ult i32 %18, %15, !dbg !1958
  %21 = zext i1 %20 to i64, !dbg !1959
  %22 = add nuw nsw i64 %19, %21, !dbg !1960
  %23 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 4, i64 1, !dbg !1961
  %24 = load i32, i32* %23, align 4, !dbg !1962, !tbaa !1038
  %25 = trunc i64 %22 to i32, !dbg !1962
  %26 = add i32 %24, %25, !dbg !1962
  store i32 %26, i32* %23, align 4, !dbg !1962, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* %4, metadata !1919, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i32 %8, metadata !1924, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i32 %10, metadata !1925, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 %12, metadata !1926, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i32 %14, metadata !1927, metadata !DIExpression()), !dbg !1952
  %27 = icmp ugt i32* %6, %4, !dbg !1963
  br i1 %27, label %28, label %694, !dbg !1964

; <label>:28:                                     ; preds = %3, %28
  %29 = phi i32* [ %221, %28 ], [ %4, %3 ]
  %30 = phi i32 [ %688, %28 ], [ %8, %3 ]
  %31 = phi i32 [ %690, %28 ], [ %10, %3 ]
  %32 = phi i32 [ %691, %28 ], [ %12, %3 ]
  %33 = phi i32 [ %692, %28 ], [ %14, %3 ]
  call void @llvm.dbg.value(metadata i32* %29, metadata !1919, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i32 %30, metadata !1924, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i32 %31, metadata !1925, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 %32, metadata !1926, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i32 %33, metadata !1927, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %30, metadata !1932, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 %31, metadata !1933, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i32 %32, metadata !1934, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i32 %33, metadata !1935, metadata !DIExpression()), !dbg !1969
  %34 = xor i32 %32, %33, !dbg !1970
  %35 = and i32 %31, %34, !dbg !1970
  %36 = xor i32 %35, %33, !dbg !1970
  %37 = load i32, i32* %29, align 4, !dbg !1970, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %37, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1972
  %38 = add i32 %30, -680876936, !dbg !1970
  %39 = add i32 %38, %36, !dbg !1970
  %40 = add i32 %39, %37, !dbg !1970
  call void @llvm.dbg.value(metadata i32 %40, metadata !1924, metadata !DIExpression()), !dbg !1946
  %41 = getelementptr inbounds i32, i32* %29, i64 1, !dbg !1970
  call void @llvm.dbg.value(metadata i32* %41, metadata !1919, metadata !DIExpression()), !dbg !1940
  %42 = shl i32 %40, 7, !dbg !1970
  %43 = lshr i32 %40, 25, !dbg !1970
  %44 = or i32 %42, %43, !dbg !1970
  call void @llvm.dbg.value(metadata i32 %44, metadata !1924, metadata !DIExpression()), !dbg !1946
  %45 = add i32 %44, %31, !dbg !1970
  call void @llvm.dbg.value(metadata i32 %45, metadata !1924, metadata !DIExpression()), !dbg !1946
  %46 = xor i32 %31, %32, !dbg !1973
  %47 = and i32 %45, %46, !dbg !1973
  %48 = xor i32 %47, %32, !dbg !1973
  %49 = load i32, i32* %41, align 4, !dbg !1973, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %49, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1972
  %50 = add i32 %33, -389564586, !dbg !1973
  %51 = add i32 %50, %49, !dbg !1973
  %52 = add i32 %51, %48, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %52, metadata !1927, metadata !DIExpression()), !dbg !1952
  %53 = getelementptr inbounds i32, i32* %29, i64 2, !dbg !1973
  call void @llvm.dbg.value(metadata i32* %53, metadata !1919, metadata !DIExpression()), !dbg !1940
  %54 = shl i32 %52, 12, !dbg !1973
  %55 = lshr i32 %52, 20, !dbg !1973
  %56 = or i32 %54, %55, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %56, metadata !1927, metadata !DIExpression()), !dbg !1952
  %57 = add i32 %56, %45, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %57, metadata !1927, metadata !DIExpression()), !dbg !1952
  %58 = xor i32 %45, %31, !dbg !1975
  %59 = and i32 %57, %58, !dbg !1975
  %60 = xor i32 %59, %31, !dbg !1975
  %61 = load i32, i32* %53, align 4, !dbg !1975, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %61, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1972
  %62 = add i32 %32, 606105819, !dbg !1975
  %63 = add i32 %62, %61, !dbg !1975
  %64 = add i32 %63, %60, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %64, metadata !1926, metadata !DIExpression()), !dbg !1950
  %65 = getelementptr inbounds i32, i32* %29, i64 3, !dbg !1975
  call void @llvm.dbg.value(metadata i32* %65, metadata !1919, metadata !DIExpression()), !dbg !1940
  %66 = shl i32 %64, 17, !dbg !1975
  %67 = lshr i32 %64, 15, !dbg !1975
  %68 = or i32 %66, %67, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %68, metadata !1926, metadata !DIExpression()), !dbg !1950
  %69 = add i32 %68, %57, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %69, metadata !1926, metadata !DIExpression()), !dbg !1950
  %70 = xor i32 %57, %45, !dbg !1977
  %71 = and i32 %69, %70, !dbg !1977
  %72 = xor i32 %71, %45, !dbg !1977
  %73 = load i32, i32* %65, align 4, !dbg !1977, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %73, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1972
  %74 = add i32 %31, -1044525330, !dbg !1977
  %75 = add i32 %74, %73, !dbg !1977
  %76 = add i32 %75, %72, !dbg !1977
  call void @llvm.dbg.value(metadata i32 %76, metadata !1925, metadata !DIExpression()), !dbg !1948
  %77 = getelementptr inbounds i32, i32* %29, i64 4, !dbg !1977
  call void @llvm.dbg.value(metadata i32* %77, metadata !1919, metadata !DIExpression()), !dbg !1940
  %78 = shl i32 %76, 22, !dbg !1977
  %79 = lshr i32 %76, 10, !dbg !1977
  %80 = or i32 %78, %79, !dbg !1977
  call void @llvm.dbg.value(metadata i32 %80, metadata !1925, metadata !DIExpression()), !dbg !1948
  %81 = add i32 %80, %69, !dbg !1977
  call void @llvm.dbg.value(metadata i32 %81, metadata !1925, metadata !DIExpression()), !dbg !1948
  %82 = xor i32 %69, %57, !dbg !1979
  %83 = and i32 %81, %82, !dbg !1979
  %84 = xor i32 %83, %57, !dbg !1979
  %85 = load i32, i32* %77, align 4, !dbg !1979, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %85, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1972
  %86 = add i32 %85, -176418897, !dbg !1979
  %87 = add i32 %86, %45, !dbg !1979
  %88 = add i32 %87, %84, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %88, metadata !1924, metadata !DIExpression()), !dbg !1946
  %89 = getelementptr inbounds i32, i32* %29, i64 5, !dbg !1979
  call void @llvm.dbg.value(metadata i32* %89, metadata !1919, metadata !DIExpression()), !dbg !1940
  %90 = shl i32 %88, 7, !dbg !1979
  %91 = lshr i32 %88, 25, !dbg !1979
  %92 = or i32 %90, %91, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %92, metadata !1924, metadata !DIExpression()), !dbg !1946
  %93 = add i32 %92, %81, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %93, metadata !1924, metadata !DIExpression()), !dbg !1946
  %94 = xor i32 %81, %69, !dbg !1981
  %95 = and i32 %93, %94, !dbg !1981
  %96 = xor i32 %95, %69, !dbg !1981
  %97 = load i32, i32* %89, align 4, !dbg !1981, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %97, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1972
  %98 = add i32 %97, 1200080426, !dbg !1981
  %99 = add i32 %98, %57, !dbg !1981
  %100 = add i32 %99, %96, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %100, metadata !1927, metadata !DIExpression()), !dbg !1952
  %101 = getelementptr inbounds i32, i32* %29, i64 6, !dbg !1981
  call void @llvm.dbg.value(metadata i32* %101, metadata !1919, metadata !DIExpression()), !dbg !1940
  %102 = shl i32 %100, 12, !dbg !1981
  %103 = lshr i32 %100, 20, !dbg !1981
  %104 = or i32 %102, %103, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %104, metadata !1927, metadata !DIExpression()), !dbg !1952
  %105 = add i32 %104, %93, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %105, metadata !1927, metadata !DIExpression()), !dbg !1952
  %106 = xor i32 %93, %81, !dbg !1983
  %107 = and i32 %105, %106, !dbg !1983
  %108 = xor i32 %107, %81, !dbg !1983
  %109 = load i32, i32* %101, align 4, !dbg !1983, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %109, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1972
  %110 = add i32 %109, -1473231341, !dbg !1983
  %111 = add i32 %110, %69, !dbg !1983
  %112 = add i32 %111, %108, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %112, metadata !1926, metadata !DIExpression()), !dbg !1950
  %113 = getelementptr inbounds i32, i32* %29, i64 7, !dbg !1983
  call void @llvm.dbg.value(metadata i32* %113, metadata !1919, metadata !DIExpression()), !dbg !1940
  %114 = shl i32 %112, 17, !dbg !1983
  %115 = lshr i32 %112, 15, !dbg !1983
  %116 = or i32 %114, %115, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %116, metadata !1926, metadata !DIExpression()), !dbg !1950
  %117 = add i32 %116, %105, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %117, metadata !1926, metadata !DIExpression()), !dbg !1950
  %118 = xor i32 %105, %93, !dbg !1985
  %119 = and i32 %117, %118, !dbg !1985
  %120 = xor i32 %119, %93, !dbg !1985
  %121 = load i32, i32* %113, align 4, !dbg !1985, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %121, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1972
  %122 = add i32 %121, -45705983, !dbg !1985
  %123 = add i32 %122, %81, !dbg !1985
  %124 = add i32 %123, %120, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %124, metadata !1925, metadata !DIExpression()), !dbg !1948
  %125 = getelementptr inbounds i32, i32* %29, i64 8, !dbg !1985
  call void @llvm.dbg.value(metadata i32* %125, metadata !1919, metadata !DIExpression()), !dbg !1940
  %126 = shl i32 %124, 22, !dbg !1985
  %127 = lshr i32 %124, 10, !dbg !1985
  %128 = or i32 %126, %127, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %128, metadata !1925, metadata !DIExpression()), !dbg !1948
  %129 = add i32 %128, %117, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %129, metadata !1925, metadata !DIExpression()), !dbg !1948
  %130 = xor i32 %117, %105, !dbg !1987
  %131 = and i32 %129, %130, !dbg !1987
  %132 = xor i32 %131, %105, !dbg !1987
  %133 = load i32, i32* %125, align 4, !dbg !1987, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %133, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !1972
  %134 = add i32 %133, 1770035416, !dbg !1987
  %135 = add i32 %134, %93, !dbg !1987
  %136 = add i32 %135, %132, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %136, metadata !1924, metadata !DIExpression()), !dbg !1946
  %137 = getelementptr inbounds i32, i32* %29, i64 9, !dbg !1987
  call void @llvm.dbg.value(metadata i32* %137, metadata !1919, metadata !DIExpression()), !dbg !1940
  %138 = shl i32 %136, 7, !dbg !1987
  %139 = lshr i32 %136, 25, !dbg !1987
  %140 = or i32 %138, %139, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %140, metadata !1924, metadata !DIExpression()), !dbg !1946
  %141 = add i32 %140, %129, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %141, metadata !1924, metadata !DIExpression()), !dbg !1946
  %142 = xor i32 %129, %117, !dbg !1989
  %143 = and i32 %141, %142, !dbg !1989
  %144 = xor i32 %143, %117, !dbg !1989
  %145 = load i32, i32* %137, align 4, !dbg !1989, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %145, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !1972
  %146 = add i32 %145, -1958414417, !dbg !1989
  %147 = add i32 %146, %105, !dbg !1989
  %148 = add i32 %147, %144, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %148, metadata !1927, metadata !DIExpression()), !dbg !1952
  %149 = getelementptr inbounds i32, i32* %29, i64 10, !dbg !1989
  call void @llvm.dbg.value(metadata i32* %149, metadata !1919, metadata !DIExpression()), !dbg !1940
  %150 = shl i32 %148, 12, !dbg !1989
  %151 = lshr i32 %148, 20, !dbg !1989
  %152 = or i32 %150, %151, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %152, metadata !1927, metadata !DIExpression()), !dbg !1952
  %153 = add i32 %152, %141, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %153, metadata !1927, metadata !DIExpression()), !dbg !1952
  %154 = xor i32 %141, %129, !dbg !1991
  %155 = and i32 %153, %154, !dbg !1991
  %156 = xor i32 %155, %129, !dbg !1991
  %157 = load i32, i32* %149, align 4, !dbg !1991, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %157, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !1972
  %158 = add i32 %157, -42063, !dbg !1991
  %159 = add i32 %158, %117, !dbg !1991
  %160 = add i32 %159, %156, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %160, metadata !1926, metadata !DIExpression()), !dbg !1950
  %161 = getelementptr inbounds i32, i32* %29, i64 11, !dbg !1991
  call void @llvm.dbg.value(metadata i32* %161, metadata !1919, metadata !DIExpression()), !dbg !1940
  %162 = shl i32 %160, 17, !dbg !1991
  %163 = lshr i32 %160, 15, !dbg !1991
  %164 = or i32 %162, %163, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %164, metadata !1926, metadata !DIExpression()), !dbg !1950
  %165 = add i32 %164, %153, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %165, metadata !1926, metadata !DIExpression()), !dbg !1950
  %166 = xor i32 %153, %141, !dbg !1993
  %167 = and i32 %165, %166, !dbg !1993
  %168 = xor i32 %167, %141, !dbg !1993
  %169 = load i32, i32* %161, align 4, !dbg !1993, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %169, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !1972
  %170 = add i32 %169, -1990404162, !dbg !1993
  %171 = add i32 %170, %129, !dbg !1993
  %172 = add i32 %171, %168, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %172, metadata !1925, metadata !DIExpression()), !dbg !1948
  %173 = getelementptr inbounds i32, i32* %29, i64 12, !dbg !1993
  call void @llvm.dbg.value(metadata i32* %173, metadata !1919, metadata !DIExpression()), !dbg !1940
  %174 = shl i32 %172, 22, !dbg !1993
  %175 = lshr i32 %172, 10, !dbg !1993
  %176 = or i32 %174, %175, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %176, metadata !1925, metadata !DIExpression()), !dbg !1948
  %177 = add i32 %176, %165, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %177, metadata !1925, metadata !DIExpression()), !dbg !1948
  %178 = xor i32 %165, %153, !dbg !1995
  %179 = and i32 %177, %178, !dbg !1995
  %180 = xor i32 %179, %153, !dbg !1995
  %181 = load i32, i32* %173, align 4, !dbg !1995, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %181, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !1972
  %182 = add i32 %181, 1804603682, !dbg !1995
  %183 = add i32 %182, %141, !dbg !1995
  %184 = add i32 %183, %180, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %184, metadata !1924, metadata !DIExpression()), !dbg !1946
  %185 = getelementptr inbounds i32, i32* %29, i64 13, !dbg !1995
  call void @llvm.dbg.value(metadata i32* %185, metadata !1919, metadata !DIExpression()), !dbg !1940
  %186 = shl i32 %184, 7, !dbg !1995
  %187 = lshr i32 %184, 25, !dbg !1995
  %188 = or i32 %186, %187, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %188, metadata !1924, metadata !DIExpression()), !dbg !1946
  %189 = add i32 %188, %177, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %189, metadata !1924, metadata !DIExpression()), !dbg !1946
  %190 = xor i32 %177, %165, !dbg !1997
  %191 = and i32 %189, %190, !dbg !1997
  %192 = xor i32 %191, %165, !dbg !1997
  %193 = load i32, i32* %185, align 4, !dbg !1997, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %193, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !1972
  %194 = add i32 %193, -40341101, !dbg !1997
  %195 = add i32 %194, %153, !dbg !1997
  %196 = add i32 %195, %192, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %196, metadata !1927, metadata !DIExpression()), !dbg !1952
  %197 = getelementptr inbounds i32, i32* %29, i64 14, !dbg !1997
  call void @llvm.dbg.value(metadata i32* %197, metadata !1919, metadata !DIExpression()), !dbg !1940
  %198 = shl i32 %196, 12, !dbg !1997
  %199 = lshr i32 %196, 20, !dbg !1997
  %200 = or i32 %198, %199, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %200, metadata !1927, metadata !DIExpression()), !dbg !1952
  %201 = add i32 %200, %189, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %201, metadata !1927, metadata !DIExpression()), !dbg !1952
  %202 = xor i32 %189, %177, !dbg !1999
  %203 = and i32 %201, %202, !dbg !1999
  %204 = xor i32 %203, %177, !dbg !1999
  %205 = load i32, i32* %197, align 4, !dbg !1999, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %205, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)), !dbg !1972
  %206 = add i32 %205, -1502002290, !dbg !1999
  %207 = add i32 %206, %165, !dbg !1999
  %208 = add i32 %207, %204, !dbg !1999
  call void @llvm.dbg.value(metadata i32 %208, metadata !1926, metadata !DIExpression()), !dbg !1950
  %209 = getelementptr inbounds i32, i32* %29, i64 15, !dbg !1999
  call void @llvm.dbg.value(metadata i32* %209, metadata !1919, metadata !DIExpression()), !dbg !1940
  %210 = shl i32 %208, 17, !dbg !1999
  %211 = lshr i32 %208, 15, !dbg !1999
  %212 = or i32 %210, %211, !dbg !1999
  call void @llvm.dbg.value(metadata i32 %212, metadata !1926, metadata !DIExpression()), !dbg !1950
  %213 = add i32 %212, %201, !dbg !1999
  call void @llvm.dbg.value(metadata i32 %213, metadata !1926, metadata !DIExpression()), !dbg !1950
  %214 = xor i32 %201, %189, !dbg !2001
  %215 = and i32 %213, %214, !dbg !2001
  %216 = xor i32 %215, %189, !dbg !2001
  %217 = load i32, i32* %209, align 4, !dbg !2001, !tbaa !1038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1929, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %217, metadata !1917, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !1972
  %218 = add i32 %217, 1236535329, !dbg !2001
  %219 = add i32 %218, %177, !dbg !2001
  %220 = add i32 %219, %216, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %220, metadata !1925, metadata !DIExpression()), !dbg !1948
  %221 = getelementptr inbounds i32, i32* %29, i64 16, !dbg !2001
  %222 = shl i32 %220, 22, !dbg !2001
  %223 = lshr i32 %220, 10, !dbg !2001
  %224 = or i32 %222, %223, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %224, metadata !1925, metadata !DIExpression()), !dbg !1948
  %225 = add i32 %224, %213, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %225, metadata !1925, metadata !DIExpression()), !dbg !1948
  %226 = xor i32 %225, %213, !dbg !2003
  %227 = and i32 %226, %201, !dbg !2003
  %228 = xor i32 %227, %213, !dbg !2003
  %229 = add i32 %49, -165796510, !dbg !2003
  %230 = add i32 %229, %189, !dbg !2003
  %231 = add i32 %230, %228, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %231, metadata !1924, metadata !DIExpression()), !dbg !1946
  %232 = shl i32 %231, 5, !dbg !2003
  %233 = lshr i32 %231, 27, !dbg !2003
  %234 = or i32 %232, %233, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %234, metadata !1924, metadata !DIExpression()), !dbg !1946
  %235 = add i32 %234, %225, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %235, metadata !1924, metadata !DIExpression()), !dbg !1946
  %236 = xor i32 %235, %225, !dbg !2005
  %237 = and i32 %236, %213, !dbg !2005
  %238 = xor i32 %237, %225, !dbg !2005
  %239 = add i32 %109, -1069501632, !dbg !2005
  %240 = add i32 %239, %201, !dbg !2005
  %241 = add i32 %240, %238, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %241, metadata !1927, metadata !DIExpression()), !dbg !1952
  %242 = shl i32 %241, 9, !dbg !2005
  %243 = lshr i32 %241, 23, !dbg !2005
  %244 = or i32 %242, %243, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %244, metadata !1927, metadata !DIExpression()), !dbg !1952
  %245 = add i32 %244, %235, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %245, metadata !1927, metadata !DIExpression()), !dbg !1952
  %246 = xor i32 %245, %235, !dbg !2007
  %247 = and i32 %246, %225, !dbg !2007
  %248 = xor i32 %247, %235, !dbg !2007
  %249 = add i32 %169, 643717713, !dbg !2007
  %250 = add i32 %249, %213, !dbg !2007
  %251 = add i32 %250, %248, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %251, metadata !1926, metadata !DIExpression()), !dbg !1950
  %252 = shl i32 %251, 14, !dbg !2007
  %253 = lshr i32 %251, 18, !dbg !2007
  %254 = or i32 %252, %253, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %254, metadata !1926, metadata !DIExpression()), !dbg !1950
  %255 = add i32 %254, %245, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %255, metadata !1926, metadata !DIExpression()), !dbg !1950
  %256 = xor i32 %255, %245, !dbg !2009
  %257 = and i32 %256, %235, !dbg !2009
  %258 = xor i32 %257, %245, !dbg !2009
  %259 = add i32 %37, -373897302, !dbg !2009
  %260 = add i32 %259, %225, !dbg !2009
  %261 = add i32 %260, %258, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %261, metadata !1925, metadata !DIExpression()), !dbg !1948
  %262 = shl i32 %261, 20, !dbg !2009
  %263 = lshr i32 %261, 12, !dbg !2009
  %264 = or i32 %262, %263, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %264, metadata !1925, metadata !DIExpression()), !dbg !1948
  %265 = add i32 %264, %255, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %265, metadata !1925, metadata !DIExpression()), !dbg !1948
  %266 = xor i32 %265, %255, !dbg !2011
  %267 = and i32 %266, %245, !dbg !2011
  %268 = xor i32 %267, %255, !dbg !2011
  %269 = add i32 %97, -701558691, !dbg !2011
  %270 = add i32 %269, %235, !dbg !2011
  %271 = add i32 %270, %268, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %271, metadata !1924, metadata !DIExpression()), !dbg !1946
  %272 = shl i32 %271, 5, !dbg !2011
  %273 = lshr i32 %271, 27, !dbg !2011
  %274 = or i32 %272, %273, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %274, metadata !1924, metadata !DIExpression()), !dbg !1946
  %275 = add i32 %274, %265, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %275, metadata !1924, metadata !DIExpression()), !dbg !1946
  %276 = xor i32 %275, %265, !dbg !2013
  %277 = and i32 %276, %255, !dbg !2013
  %278 = xor i32 %277, %265, !dbg !2013
  %279 = add i32 %157, 38016083, !dbg !2013
  %280 = add i32 %279, %245, !dbg !2013
  %281 = add i32 %280, %278, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %281, metadata !1927, metadata !DIExpression()), !dbg !1952
  %282 = shl i32 %281, 9, !dbg !2013
  %283 = lshr i32 %281, 23, !dbg !2013
  %284 = or i32 %282, %283, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %284, metadata !1927, metadata !DIExpression()), !dbg !1952
  %285 = add i32 %284, %275, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %285, metadata !1927, metadata !DIExpression()), !dbg !1952
  %286 = xor i32 %285, %275, !dbg !2015
  %287 = and i32 %286, %265, !dbg !2015
  %288 = xor i32 %287, %275, !dbg !2015
  %289 = add i32 %217, -660478335, !dbg !2015
  %290 = add i32 %289, %255, !dbg !2015
  %291 = add i32 %290, %288, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %291, metadata !1926, metadata !DIExpression()), !dbg !1950
  %292 = shl i32 %291, 14, !dbg !2015
  %293 = lshr i32 %291, 18, !dbg !2015
  %294 = or i32 %292, %293, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %294, metadata !1926, metadata !DIExpression()), !dbg !1950
  %295 = add i32 %294, %285, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %295, metadata !1926, metadata !DIExpression()), !dbg !1950
  %296 = xor i32 %295, %285, !dbg !2017
  %297 = and i32 %296, %275, !dbg !2017
  %298 = xor i32 %297, %285, !dbg !2017
  %299 = add i32 %85, -405537848, !dbg !2017
  %300 = add i32 %299, %265, !dbg !2017
  %301 = add i32 %300, %298, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %301, metadata !1925, metadata !DIExpression()), !dbg !1948
  %302 = shl i32 %301, 20, !dbg !2017
  %303 = lshr i32 %301, 12, !dbg !2017
  %304 = or i32 %302, %303, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %304, metadata !1925, metadata !DIExpression()), !dbg !1948
  %305 = add i32 %304, %295, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %305, metadata !1925, metadata !DIExpression()), !dbg !1948
  %306 = xor i32 %305, %295, !dbg !2019
  %307 = and i32 %306, %285, !dbg !2019
  %308 = xor i32 %307, %295, !dbg !2019
  %309 = add i32 %145, 568446438, !dbg !2019
  %310 = add i32 %309, %275, !dbg !2019
  %311 = add i32 %310, %308, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %311, metadata !1924, metadata !DIExpression()), !dbg !1946
  %312 = shl i32 %311, 5, !dbg !2019
  %313 = lshr i32 %311, 27, !dbg !2019
  %314 = or i32 %312, %313, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %314, metadata !1924, metadata !DIExpression()), !dbg !1946
  %315 = add i32 %314, %305, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %315, metadata !1924, metadata !DIExpression()), !dbg !1946
  %316 = xor i32 %315, %305, !dbg !2021
  %317 = and i32 %316, %295, !dbg !2021
  %318 = xor i32 %317, %305, !dbg !2021
  %319 = add i32 %205, -1019803690, !dbg !2021
  %320 = add i32 %319, %285, !dbg !2021
  %321 = add i32 %320, %318, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %321, metadata !1927, metadata !DIExpression()), !dbg !1952
  %322 = shl i32 %321, 9, !dbg !2021
  %323 = lshr i32 %321, 23, !dbg !2021
  %324 = or i32 %322, %323, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %324, metadata !1927, metadata !DIExpression()), !dbg !1952
  %325 = add i32 %324, %315, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %325, metadata !1927, metadata !DIExpression()), !dbg !1952
  %326 = xor i32 %325, %315, !dbg !2023
  %327 = and i32 %326, %305, !dbg !2023
  %328 = xor i32 %327, %315, !dbg !2023
  %329 = add i32 %73, -187363961, !dbg !2023
  %330 = add i32 %329, %295, !dbg !2023
  %331 = add i32 %330, %328, !dbg !2023
  call void @llvm.dbg.value(metadata i32 %331, metadata !1926, metadata !DIExpression()), !dbg !1950
  %332 = shl i32 %331, 14, !dbg !2023
  %333 = lshr i32 %331, 18, !dbg !2023
  %334 = or i32 %332, %333, !dbg !2023
  call void @llvm.dbg.value(metadata i32 %334, metadata !1926, metadata !DIExpression()), !dbg !1950
  %335 = add i32 %334, %325, !dbg !2023
  call void @llvm.dbg.value(metadata i32 %335, metadata !1926, metadata !DIExpression()), !dbg !1950
  %336 = xor i32 %335, %325, !dbg !2025
  %337 = and i32 %336, %315, !dbg !2025
  %338 = xor i32 %337, %325, !dbg !2025
  %339 = add i32 %133, 1163531501, !dbg !2025
  %340 = add i32 %339, %305, !dbg !2025
  %341 = add i32 %340, %338, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %341, metadata !1925, metadata !DIExpression()), !dbg !1948
  %342 = shl i32 %341, 20, !dbg !2025
  %343 = lshr i32 %341, 12, !dbg !2025
  %344 = or i32 %342, %343, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %344, metadata !1925, metadata !DIExpression()), !dbg !1948
  %345 = add i32 %344, %335, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %345, metadata !1925, metadata !DIExpression()), !dbg !1948
  %346 = xor i32 %345, %335, !dbg !2027
  %347 = and i32 %346, %325, !dbg !2027
  %348 = xor i32 %347, %335, !dbg !2027
  %349 = add i32 %193, -1444681467, !dbg !2027
  %350 = add i32 %349, %315, !dbg !2027
  %351 = add i32 %350, %348, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %351, metadata !1924, metadata !DIExpression()), !dbg !1946
  %352 = shl i32 %351, 5, !dbg !2027
  %353 = lshr i32 %351, 27, !dbg !2027
  %354 = or i32 %352, %353, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %354, metadata !1924, metadata !DIExpression()), !dbg !1946
  %355 = add i32 %354, %345, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %355, metadata !1924, metadata !DIExpression()), !dbg !1946
  %356 = xor i32 %355, %345, !dbg !2029
  %357 = and i32 %356, %335, !dbg !2029
  %358 = xor i32 %357, %345, !dbg !2029
  %359 = add i32 %61, -51403784, !dbg !2029
  %360 = add i32 %359, %325, !dbg !2029
  %361 = add i32 %360, %358, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %361, metadata !1927, metadata !DIExpression()), !dbg !1952
  %362 = shl i32 %361, 9, !dbg !2029
  %363 = lshr i32 %361, 23, !dbg !2029
  %364 = or i32 %362, %363, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %364, metadata !1927, metadata !DIExpression()), !dbg !1952
  %365 = add i32 %364, %355, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %365, metadata !1927, metadata !DIExpression()), !dbg !1952
  %366 = xor i32 %365, %355, !dbg !2031
  %367 = and i32 %366, %345, !dbg !2031
  %368 = xor i32 %367, %355, !dbg !2031
  %369 = add i32 %121, 1735328473, !dbg !2031
  %370 = add i32 %369, %335, !dbg !2031
  %371 = add i32 %370, %368, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %371, metadata !1926, metadata !DIExpression()), !dbg !1950
  %372 = shl i32 %371, 14, !dbg !2031
  %373 = lshr i32 %371, 18, !dbg !2031
  %374 = or i32 %372, %373, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %374, metadata !1926, metadata !DIExpression()), !dbg !1950
  %375 = add i32 %374, %365, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %375, metadata !1926, metadata !DIExpression()), !dbg !1950
  %376 = xor i32 %375, %365, !dbg !2033
  %377 = and i32 %376, %355, !dbg !2033
  %378 = xor i32 %377, %365, !dbg !2033
  %379 = add i32 %181, -1926607734, !dbg !2033
  %380 = add i32 %379, %345, !dbg !2033
  %381 = add i32 %380, %378, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %381, metadata !1925, metadata !DIExpression()), !dbg !1948
  %382 = shl i32 %381, 20, !dbg !2033
  %383 = lshr i32 %381, 12, !dbg !2033
  %384 = or i32 %382, %383, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %384, metadata !1925, metadata !DIExpression()), !dbg !1948
  %385 = add i32 %384, %375, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %385, metadata !1925, metadata !DIExpression()), !dbg !1948
  %386 = xor i32 %376, %385, !dbg !2035
  %387 = add i32 %97, -378558, !dbg !2035
  %388 = add i32 %387, %355, !dbg !2035
  %389 = add i32 %388, %386, !dbg !2035
  call void @llvm.dbg.value(metadata i32 %389, metadata !1924, metadata !DIExpression()), !dbg !1946
  %390 = shl i32 %389, 4, !dbg !2035
  %391 = lshr i32 %389, 28, !dbg !2035
  %392 = or i32 %390, %391, !dbg !2035
  call void @llvm.dbg.value(metadata i32 %392, metadata !1924, metadata !DIExpression()), !dbg !1946
  %393 = add i32 %392, %385, !dbg !2035
  call void @llvm.dbg.value(metadata i32 %393, metadata !1924, metadata !DIExpression()), !dbg !1946
  %394 = xor i32 %385, %375, !dbg !2037
  %395 = xor i32 %394, %393, !dbg !2037
  %396 = add i32 %133, -2022574463, !dbg !2037
  %397 = add i32 %396, %365, !dbg !2037
  %398 = add i32 %397, %395, !dbg !2037
  call void @llvm.dbg.value(metadata i32 %398, metadata !1927, metadata !DIExpression()), !dbg !1952
  %399 = shl i32 %398, 11, !dbg !2037
  %400 = lshr i32 %398, 21, !dbg !2037
  %401 = or i32 %399, %400, !dbg !2037
  call void @llvm.dbg.value(metadata i32 %401, metadata !1927, metadata !DIExpression()), !dbg !1952
  %402 = add i32 %401, %393, !dbg !2037
  call void @llvm.dbg.value(metadata i32 %402, metadata !1927, metadata !DIExpression()), !dbg !1952
  %403 = xor i32 %393, %385, !dbg !2039
  %404 = xor i32 %403, %402, !dbg !2039
  %405 = add i32 %169, 1839030562, !dbg !2039
  %406 = add i32 %405, %375, !dbg !2039
  %407 = add i32 %406, %404, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %407, metadata !1926, metadata !DIExpression()), !dbg !1950
  %408 = shl i32 %407, 16, !dbg !2039
  %409 = lshr i32 %407, 16, !dbg !2039
  %410 = or i32 %408, %409, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %410, metadata !1926, metadata !DIExpression()), !dbg !1950
  %411 = add i32 %410, %402, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %411, metadata !1926, metadata !DIExpression()), !dbg !1950
  %412 = xor i32 %402, %393, !dbg !2041
  %413 = xor i32 %412, %411, !dbg !2041
  %414 = add i32 %205, -35309556, !dbg !2041
  %415 = add i32 %414, %385, !dbg !2041
  %416 = add i32 %415, %413, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %416, metadata !1925, metadata !DIExpression()), !dbg !1948
  %417 = shl i32 %416, 23, !dbg !2041
  %418 = lshr i32 %416, 9, !dbg !2041
  %419 = or i32 %417, %418, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %419, metadata !1925, metadata !DIExpression()), !dbg !1948
  %420 = add i32 %419, %411, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %420, metadata !1925, metadata !DIExpression()), !dbg !1948
  %421 = xor i32 %411, %402, !dbg !2043
  %422 = xor i32 %421, %420, !dbg !2043
  %423 = add i32 %49, -1530992060, !dbg !2043
  %424 = add i32 %423, %393, !dbg !2043
  %425 = add i32 %424, %422, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %425, metadata !1924, metadata !DIExpression()), !dbg !1946
  %426 = shl i32 %425, 4, !dbg !2043
  %427 = lshr i32 %425, 28, !dbg !2043
  %428 = or i32 %426, %427, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %428, metadata !1924, metadata !DIExpression()), !dbg !1946
  %429 = add i32 %428, %420, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %429, metadata !1924, metadata !DIExpression()), !dbg !1946
  %430 = xor i32 %420, %411, !dbg !2045
  %431 = xor i32 %430, %429, !dbg !2045
  %432 = add i32 %85, 1272893353, !dbg !2045
  %433 = add i32 %432, %402, !dbg !2045
  %434 = add i32 %433, %431, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %434, metadata !1927, metadata !DIExpression()), !dbg !1952
  %435 = shl i32 %434, 11, !dbg !2045
  %436 = lshr i32 %434, 21, !dbg !2045
  %437 = or i32 %435, %436, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %437, metadata !1927, metadata !DIExpression()), !dbg !1952
  %438 = add i32 %437, %429, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %438, metadata !1927, metadata !DIExpression()), !dbg !1952
  %439 = xor i32 %429, %420, !dbg !2047
  %440 = xor i32 %439, %438, !dbg !2047
  %441 = add i32 %121, -155497632, !dbg !2047
  %442 = add i32 %441, %411, !dbg !2047
  %443 = add i32 %442, %440, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %443, metadata !1926, metadata !DIExpression()), !dbg !1950
  %444 = shl i32 %443, 16, !dbg !2047
  %445 = lshr i32 %443, 16, !dbg !2047
  %446 = or i32 %444, %445, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %446, metadata !1926, metadata !DIExpression()), !dbg !1950
  %447 = add i32 %446, %438, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %447, metadata !1926, metadata !DIExpression()), !dbg !1950
  %448 = xor i32 %438, %429, !dbg !2049
  %449 = xor i32 %448, %447, !dbg !2049
  %450 = add i32 %157, -1094730640, !dbg !2049
  %451 = add i32 %450, %420, !dbg !2049
  %452 = add i32 %451, %449, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %452, metadata !1925, metadata !DIExpression()), !dbg !1948
  %453 = shl i32 %452, 23, !dbg !2049
  %454 = lshr i32 %452, 9, !dbg !2049
  %455 = or i32 %453, %454, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %455, metadata !1925, metadata !DIExpression()), !dbg !1948
  %456 = add i32 %455, %447, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %456, metadata !1925, metadata !DIExpression()), !dbg !1948
  %457 = xor i32 %447, %438, !dbg !2051
  %458 = xor i32 %457, %456, !dbg !2051
  %459 = add i32 %193, 681279174, !dbg !2051
  %460 = add i32 %459, %429, !dbg !2051
  %461 = add i32 %460, %458, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %461, metadata !1924, metadata !DIExpression()), !dbg !1946
  %462 = shl i32 %461, 4, !dbg !2051
  %463 = lshr i32 %461, 28, !dbg !2051
  %464 = or i32 %462, %463, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %464, metadata !1924, metadata !DIExpression()), !dbg !1946
  %465 = add i32 %464, %456, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %465, metadata !1924, metadata !DIExpression()), !dbg !1946
  %466 = xor i32 %456, %447, !dbg !2053
  %467 = xor i32 %466, %465, !dbg !2053
  %468 = add i32 %37, -358537222, !dbg !2053
  %469 = add i32 %468, %438, !dbg !2053
  %470 = add i32 %469, %467, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %470, metadata !1927, metadata !DIExpression()), !dbg !1952
  %471 = shl i32 %470, 11, !dbg !2053
  %472 = lshr i32 %470, 21, !dbg !2053
  %473 = or i32 %471, %472, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %473, metadata !1927, metadata !DIExpression()), !dbg !1952
  %474 = add i32 %473, %465, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %474, metadata !1927, metadata !DIExpression()), !dbg !1952
  %475 = xor i32 %465, %456, !dbg !2055
  %476 = xor i32 %475, %474, !dbg !2055
  %477 = add i32 %73, -722521979, !dbg !2055
  %478 = add i32 %477, %447, !dbg !2055
  %479 = add i32 %478, %476, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %479, metadata !1926, metadata !DIExpression()), !dbg !1950
  %480 = shl i32 %479, 16, !dbg !2055
  %481 = lshr i32 %479, 16, !dbg !2055
  %482 = or i32 %480, %481, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %482, metadata !1926, metadata !DIExpression()), !dbg !1950
  %483 = add i32 %482, %474, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %483, metadata !1926, metadata !DIExpression()), !dbg !1950
  %484 = xor i32 %474, %465, !dbg !2057
  %485 = xor i32 %484, %483, !dbg !2057
  %486 = add i32 %109, 76029189, !dbg !2057
  %487 = add i32 %486, %456, !dbg !2057
  %488 = add i32 %487, %485, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %488, metadata !1925, metadata !DIExpression()), !dbg !1948
  %489 = shl i32 %488, 23, !dbg !2057
  %490 = lshr i32 %488, 9, !dbg !2057
  %491 = or i32 %489, %490, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %491, metadata !1925, metadata !DIExpression()), !dbg !1948
  %492 = add i32 %491, %483, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %492, metadata !1925, metadata !DIExpression()), !dbg !1948
  %493 = xor i32 %483, %474, !dbg !2059
  %494 = xor i32 %493, %492, !dbg !2059
  %495 = add i32 %145, -640364487, !dbg !2059
  %496 = add i32 %495, %465, !dbg !2059
  %497 = add i32 %496, %494, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %497, metadata !1924, metadata !DIExpression()), !dbg !1946
  %498 = shl i32 %497, 4, !dbg !2059
  %499 = lshr i32 %497, 28, !dbg !2059
  %500 = or i32 %498, %499, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %500, metadata !1924, metadata !DIExpression()), !dbg !1946
  %501 = add i32 %500, %492, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %501, metadata !1924, metadata !DIExpression()), !dbg !1946
  %502 = xor i32 %492, %483, !dbg !2061
  %503 = xor i32 %502, %501, !dbg !2061
  %504 = add i32 %181, -421815835, !dbg !2061
  %505 = add i32 %504, %474, !dbg !2061
  %506 = add i32 %505, %503, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %506, metadata !1927, metadata !DIExpression()), !dbg !1952
  %507 = shl i32 %506, 11, !dbg !2061
  %508 = lshr i32 %506, 21, !dbg !2061
  %509 = or i32 %507, %508, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %509, metadata !1927, metadata !DIExpression()), !dbg !1952
  %510 = add i32 %509, %501, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %510, metadata !1927, metadata !DIExpression()), !dbg !1952
  %511 = xor i32 %501, %492, !dbg !2063
  %512 = xor i32 %511, %510, !dbg !2063
  %513 = add i32 %217, 530742520, !dbg !2063
  %514 = add i32 %513, %483, !dbg !2063
  %515 = add i32 %514, %512, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %515, metadata !1926, metadata !DIExpression()), !dbg !1950
  %516 = shl i32 %515, 16, !dbg !2063
  %517 = lshr i32 %515, 16, !dbg !2063
  %518 = or i32 %516, %517, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %518, metadata !1926, metadata !DIExpression()), !dbg !1950
  %519 = add i32 %518, %510, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %519, metadata !1926, metadata !DIExpression()), !dbg !1950
  %520 = xor i32 %510, %501, !dbg !2065
  %521 = xor i32 %520, %519, !dbg !2065
  %522 = add i32 %61, -995338651, !dbg !2065
  %523 = add i32 %522, %492, !dbg !2065
  %524 = add i32 %523, %521, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %524, metadata !1925, metadata !DIExpression()), !dbg !1948
  %525 = shl i32 %524, 23, !dbg !2065
  %526 = lshr i32 %524, 9, !dbg !2065
  %527 = or i32 %525, %526, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %527, metadata !1925, metadata !DIExpression()), !dbg !1948
  %528 = add i32 %527, %519, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %528, metadata !1925, metadata !DIExpression()), !dbg !1948
  %529 = xor i32 %510, -1, !dbg !2067
  %530 = or i32 %528, %529, !dbg !2067
  %531 = xor i32 %530, %519, !dbg !2067
  %532 = add i32 %37, -198630844, !dbg !2067
  %533 = add i32 %532, %501, !dbg !2067
  %534 = add i32 %533, %531, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %534, metadata !1924, metadata !DIExpression()), !dbg !1946
  %535 = shl i32 %534, 6, !dbg !2067
  %536 = lshr i32 %534, 26, !dbg !2067
  %537 = or i32 %535, %536, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %537, metadata !1924, metadata !DIExpression()), !dbg !1946
  %538 = add i32 %537, %528, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %538, metadata !1924, metadata !DIExpression()), !dbg !1946
  %539 = xor i32 %519, -1, !dbg !2069
  %540 = or i32 %538, %539, !dbg !2069
  %541 = xor i32 %540, %528, !dbg !2069
  %542 = add i32 %121, 1126891415, !dbg !2069
  %543 = add i32 %542, %510, !dbg !2069
  %544 = add i32 %543, %541, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %544, metadata !1927, metadata !DIExpression()), !dbg !1952
  %545 = shl i32 %544, 10, !dbg !2069
  %546 = lshr i32 %544, 22, !dbg !2069
  %547 = or i32 %545, %546, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %547, metadata !1927, metadata !DIExpression()), !dbg !1952
  %548 = add i32 %547, %538, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %548, metadata !1927, metadata !DIExpression()), !dbg !1952
  %549 = xor i32 %528, -1, !dbg !2071
  %550 = or i32 %548, %549, !dbg !2071
  %551 = xor i32 %550, %538, !dbg !2071
  %552 = add i32 %205, -1416354905, !dbg !2071
  %553 = add i32 %552, %519, !dbg !2071
  %554 = add i32 %553, %551, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %554, metadata !1926, metadata !DIExpression()), !dbg !1950
  %555 = shl i32 %554, 15, !dbg !2071
  %556 = lshr i32 %554, 17, !dbg !2071
  %557 = or i32 %555, %556, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %557, metadata !1926, metadata !DIExpression()), !dbg !1950
  %558 = add i32 %557, %548, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %558, metadata !1926, metadata !DIExpression()), !dbg !1950
  %559 = xor i32 %538, -1, !dbg !2073
  %560 = or i32 %558, %559, !dbg !2073
  %561 = xor i32 %560, %548, !dbg !2073
  %562 = add i32 %97, -57434055, !dbg !2073
  %563 = add i32 %562, %528, !dbg !2073
  %564 = add i32 %563, %561, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %564, metadata !1925, metadata !DIExpression()), !dbg !1948
  %565 = shl i32 %564, 21, !dbg !2073
  %566 = lshr i32 %564, 11, !dbg !2073
  %567 = or i32 %565, %566, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %567, metadata !1925, metadata !DIExpression()), !dbg !1948
  %568 = add i32 %567, %558, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %568, metadata !1925, metadata !DIExpression()), !dbg !1948
  %569 = xor i32 %548, -1, !dbg !2075
  %570 = or i32 %568, %569, !dbg !2075
  %571 = xor i32 %570, %558, !dbg !2075
  %572 = add i32 %181, 1700485571, !dbg !2075
  %573 = add i32 %572, %538, !dbg !2075
  %574 = add i32 %573, %571, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %574, metadata !1924, metadata !DIExpression()), !dbg !1946
  %575 = shl i32 %574, 6, !dbg !2075
  %576 = lshr i32 %574, 26, !dbg !2075
  %577 = or i32 %575, %576, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %577, metadata !1924, metadata !DIExpression()), !dbg !1946
  %578 = add i32 %577, %568, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %578, metadata !1924, metadata !DIExpression()), !dbg !1946
  %579 = xor i32 %558, -1, !dbg !2077
  %580 = or i32 %578, %579, !dbg !2077
  %581 = xor i32 %580, %568, !dbg !2077
  %582 = add i32 %73, -1894986606, !dbg !2077
  %583 = add i32 %582, %548, !dbg !2077
  %584 = add i32 %583, %581, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %584, metadata !1927, metadata !DIExpression()), !dbg !1952
  %585 = shl i32 %584, 10, !dbg !2077
  %586 = lshr i32 %584, 22, !dbg !2077
  %587 = or i32 %585, %586, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %587, metadata !1927, metadata !DIExpression()), !dbg !1952
  %588 = add i32 %587, %578, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %588, metadata !1927, metadata !DIExpression()), !dbg !1952
  %589 = xor i32 %568, -1, !dbg !2079
  %590 = or i32 %588, %589, !dbg !2079
  %591 = xor i32 %590, %578, !dbg !2079
  %592 = add i32 %157, -1051523, !dbg !2079
  %593 = add i32 %592, %558, !dbg !2079
  %594 = add i32 %593, %591, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %594, metadata !1926, metadata !DIExpression()), !dbg !1950
  %595 = shl i32 %594, 15, !dbg !2079
  %596 = lshr i32 %594, 17, !dbg !2079
  %597 = or i32 %595, %596, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %597, metadata !1926, metadata !DIExpression()), !dbg !1950
  %598 = add i32 %597, %588, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %598, metadata !1926, metadata !DIExpression()), !dbg !1950
  %599 = xor i32 %578, -1, !dbg !2081
  %600 = or i32 %598, %599, !dbg !2081
  %601 = xor i32 %600, %588, !dbg !2081
  %602 = add i32 %49, -2054922799, !dbg !2081
  %603 = add i32 %602, %568, !dbg !2081
  %604 = add i32 %603, %601, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %604, metadata !1925, metadata !DIExpression()), !dbg !1948
  %605 = shl i32 %604, 21, !dbg !2081
  %606 = lshr i32 %604, 11, !dbg !2081
  %607 = or i32 %605, %606, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %607, metadata !1925, metadata !DIExpression()), !dbg !1948
  %608 = add i32 %607, %598, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %608, metadata !1925, metadata !DIExpression()), !dbg !1948
  %609 = xor i32 %588, -1, !dbg !2083
  %610 = or i32 %608, %609, !dbg !2083
  %611 = xor i32 %610, %598, !dbg !2083
  %612 = add i32 %133, 1873313359, !dbg !2083
  %613 = add i32 %612, %578, !dbg !2083
  %614 = add i32 %613, %611, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %614, metadata !1924, metadata !DIExpression()), !dbg !1946
  %615 = shl i32 %614, 6, !dbg !2083
  %616 = lshr i32 %614, 26, !dbg !2083
  %617 = or i32 %615, %616, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %617, metadata !1924, metadata !DIExpression()), !dbg !1946
  %618 = add i32 %617, %608, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %618, metadata !1924, metadata !DIExpression()), !dbg !1946
  %619 = xor i32 %598, -1, !dbg !2085
  %620 = or i32 %618, %619, !dbg !2085
  %621 = xor i32 %620, %608, !dbg !2085
  %622 = add i32 %217, -30611744, !dbg !2085
  %623 = add i32 %622, %588, !dbg !2085
  %624 = add i32 %623, %621, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %624, metadata !1927, metadata !DIExpression()), !dbg !1952
  %625 = shl i32 %624, 10, !dbg !2085
  %626 = lshr i32 %624, 22, !dbg !2085
  %627 = or i32 %625, %626, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %627, metadata !1927, metadata !DIExpression()), !dbg !1952
  %628 = add i32 %627, %618, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %628, metadata !1927, metadata !DIExpression()), !dbg !1952
  %629 = xor i32 %608, -1, !dbg !2087
  %630 = or i32 %628, %629, !dbg !2087
  %631 = xor i32 %630, %618, !dbg !2087
  %632 = add i32 %109, -1560198380, !dbg !2087
  %633 = add i32 %632, %598, !dbg !2087
  %634 = add i32 %633, %631, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %634, metadata !1926, metadata !DIExpression()), !dbg !1950
  %635 = shl i32 %634, 15, !dbg !2087
  %636 = lshr i32 %634, 17, !dbg !2087
  %637 = or i32 %635, %636, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %637, metadata !1926, metadata !DIExpression()), !dbg !1950
  %638 = add i32 %637, %628, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %638, metadata !1926, metadata !DIExpression()), !dbg !1950
  %639 = xor i32 %618, -1, !dbg !2089
  %640 = or i32 %638, %639, !dbg !2089
  %641 = xor i32 %640, %628, !dbg !2089
  %642 = add i32 %193, 1309151649, !dbg !2089
  %643 = add i32 %642, %608, !dbg !2089
  %644 = add i32 %643, %641, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %644, metadata !1925, metadata !DIExpression()), !dbg !1948
  %645 = shl i32 %644, 21, !dbg !2089
  %646 = lshr i32 %644, 11, !dbg !2089
  %647 = or i32 %645, %646, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %647, metadata !1925, metadata !DIExpression()), !dbg !1948
  %648 = add i32 %647, %638, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %648, metadata !1925, metadata !DIExpression()), !dbg !1948
  %649 = xor i32 %628, -1, !dbg !2091
  %650 = or i32 %648, %649, !dbg !2091
  %651 = xor i32 %650, %638, !dbg !2091
  %652 = add i32 %85, -145523070, !dbg !2091
  %653 = add i32 %652, %618, !dbg !2091
  %654 = add i32 %653, %651, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %654, metadata !1924, metadata !DIExpression()), !dbg !1946
  %655 = shl i32 %654, 6, !dbg !2091
  %656 = lshr i32 %654, 26, !dbg !2091
  %657 = or i32 %655, %656, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %657, metadata !1924, metadata !DIExpression()), !dbg !1946
  %658 = add i32 %657, %648, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %658, metadata !1924, metadata !DIExpression()), !dbg !1946
  %659 = xor i32 %638, -1, !dbg !2093
  %660 = or i32 %658, %659, !dbg !2093
  %661 = xor i32 %660, %648, !dbg !2093
  %662 = add i32 %169, -1120210379, !dbg !2093
  %663 = add i32 %662, %628, !dbg !2093
  %664 = add i32 %663, %661, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %664, metadata !1927, metadata !DIExpression()), !dbg !1952
  %665 = shl i32 %664, 10, !dbg !2093
  %666 = lshr i32 %664, 22, !dbg !2093
  %667 = or i32 %665, %666, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %667, metadata !1927, metadata !DIExpression()), !dbg !1952
  %668 = add i32 %667, %658, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %668, metadata !1927, metadata !DIExpression()), !dbg !1952
  %669 = xor i32 %648, -1, !dbg !2095
  %670 = or i32 %668, %669, !dbg !2095
  %671 = xor i32 %670, %658, !dbg !2095
  %672 = add i32 %61, 718787259, !dbg !2095
  %673 = add i32 %672, %638, !dbg !2095
  %674 = add i32 %673, %671, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %674, metadata !1926, metadata !DIExpression()), !dbg !1950
  %675 = shl i32 %674, 15, !dbg !2095
  %676 = lshr i32 %674, 17, !dbg !2095
  %677 = or i32 %675, %676, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %677, metadata !1926, metadata !DIExpression()), !dbg !1950
  %678 = add i32 %677, %668, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %678, metadata !1926, metadata !DIExpression()), !dbg !1950
  %679 = xor i32 %658, -1, !dbg !2097
  %680 = or i32 %678, %679, !dbg !2097
  %681 = xor i32 %680, %668, !dbg !2097
  %682 = add i32 %145, -343485551, !dbg !2097
  %683 = add i32 %682, %648, !dbg !2097
  %684 = add i32 %683, %681, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %684, metadata !1925, metadata !DIExpression()), !dbg !1948
  %685 = shl i32 %684, 21, !dbg !2097
  %686 = lshr i32 %684, 11, !dbg !2097
  %687 = or i32 %685, %686, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %687, metadata !1925, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 undef, metadata !1925, metadata !DIExpression()), !dbg !1948
  %688 = add i32 %658, %30, !dbg !2099
  %689 = add i32 %678, %31, !dbg !2097
  %690 = add i32 %689, %687, !dbg !2100
  %691 = add i32 %678, %32, !dbg !2101
  %692 = add i32 %668, %33, !dbg !2102
  call void @llvm.dbg.value(metadata i32* %221, metadata !1919, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i32 %688, metadata !1924, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i32 %690, metadata !1925, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 %691, metadata !1926, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i32 %692, metadata !1927, metadata !DIExpression()), !dbg !1952
  %693 = icmp ult i32* %221, %6, !dbg !1963
  br i1 %693, label %28, label %694, !dbg !1964, !llvm.loop !2103

; <label>:694:                                    ; preds = %28, %3
  %695 = phi i32 [ %14, %3 ], [ %692, %28 ], !dbg !2105
  %696 = phi i32 [ %12, %3 ], [ %691, %28 ], !dbg !2105
  %697 = phi i32 [ %10, %3 ], [ %690, %28 ], !dbg !2105
  %698 = phi i32 [ %8, %3 ], [ %688, %28 ], !dbg !2105
  call void @llvm.dbg.value(metadata i32 %695, metadata !1927, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i32 %696, metadata !1926, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i32 %697, metadata !1925, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 %698, metadata !1924, metadata !DIExpression()), !dbg !1946
  store i32 %698, i32* %7, align 4, !dbg !2106, !tbaa !1813
  store i32 %697, i32* %9, align 4, !dbg !2107, !tbaa !1826
  store i32 %696, i32* %11, align 4, !dbg !2108, !tbaa !1833
  store i32 %695, i32* %13, align 4, !dbg !2109, !tbaa !1840
  ret void, !dbg !2110
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @md5_stream(%struct._IO_FILE* nocapture, i8* nocapture) local_unnamed_addr #7 !dbg !2111 {
  %3 = alloca %struct.md5_ctx, align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2149, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8* %1, metadata !2150, metadata !DIExpression()), !dbg !2157
  %4 = tail call noalias i8* @malloc(i64 32840) #10, !dbg !2158
  call void @llvm.dbg.value(metadata i8* %4, metadata !2151, metadata !DIExpression()), !dbg !2159
  %5 = icmp eq i8* %4, null, !dbg !2160
  br i1 %5, label %70, label %6, !dbg !2162

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.md5_ctx* %3 to i8*, !dbg !2163
  call void @llvm.lifetime.start.p0i8(i64 156, i8* nonnull %7) #10, !dbg !2163
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, metadata !2152, metadata !DIExpression(DW_OP_deref)), !dbg !2164
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, metadata !1788, metadata !DIExpression()), !dbg !2165
  %8 = bitcast %struct.md5_ctx* %3 to <4 x i32>*, !dbg !2167
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %8, align 16, !dbg !2167, !tbaa !1038
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 4, i64 1, !dbg !2168
  store i32 0, i32* %9, align 4, !dbg !2169, !tbaa !1038
  %10 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 4, i64 0, !dbg !2170
  store i32 0, i32* %10, align 16, !dbg !2171, !tbaa !1038
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 5, !dbg !2172
  store i32 0, i32* %11, align 8, !dbg !2173, !tbaa !1797
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %13, !dbg !2174

; <label>:13:                                     ; preds = %26, %6
  %14 = phi i64 [ 0, %6 ], [ %27, %26 ], !dbg !2175
  call void @llvm.dbg.value(metadata i64 %14, metadata !2153, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2178, metadata !DIExpression()), !dbg !2183
  %15 = load i32, i32* %12, align 8, !dbg !2186, !tbaa !1469
  %16 = and i32 %15, 16, !dbg !2186
  %17 = icmp eq i32 %16, 0, !dbg !2187
  br i1 %17, label %18, label %34, !dbg !2188

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds i8, i8* %4, i64 %14, !dbg !2189
  %20 = sub i64 32768, %14, !dbg !2189
  %21 = tail call i64 @fread_unlocked(i8* nonnull %19, i64 1, i64 %20, %struct._IO_FILE* nonnull %0), !dbg !2189
  call void @llvm.dbg.value(metadata i64 %21, metadata !2154, metadata !DIExpression()), !dbg !2190
  %22 = add i64 %21, %14, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %22, metadata !2153, metadata !DIExpression()), !dbg !2177
  %23 = icmp eq i64 %22, 32768, !dbg !2192
  br i1 %23, label %33, label %24, !dbg !2194

; <label>:24:                                     ; preds = %18
  %25 = icmp eq i64 %21, 0, !dbg !2195
  br i1 %25, label %28, label %26, !dbg !2197

; <label>:26:                                     ; preds = %24, %33
  %27 = phi i64 [ %22, %24 ], [ 0, %33 ]
  br label %13, !dbg !2177, !llvm.loop !2198

; <label>:28:                                     ; preds = %24
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2201, metadata !DIExpression()), !dbg !2204
  %29 = load i32, i32* %12, align 8, !dbg !2208, !tbaa !1469
  %30 = and i32 %29, 32, !dbg !2208
  %31 = icmp eq i32 %30, 0, !dbg !2209
  br i1 %31, label %34, label %32, !dbg !2210

; <label>:32:                                     ; preds = %28
  tail call void @free(i8* %4) #10, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %22, metadata !2153, metadata !DIExpression()), !dbg !2177
  br label %68

; <label>:33:                                     ; preds = %18
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, metadata !2152, metadata !DIExpression(DW_OP_deref)), !dbg !2164
  call void @md5_process_block(i8* nonnull %4, i64 32768, %struct.md5_ctx* nonnull %3) #10, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %22, metadata !2153, metadata !DIExpression()), !dbg !2177
  br label %26

; <label>:34:                                     ; preds = %13, %28
  %35 = phi i64 [ %22, %28 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !2153, metadata !DIExpression()), !dbg !2177
  %36 = icmp eq i64 %35, 0, !dbg !2214
  br i1 %36, label %38, label %37, !dbg !2216

; <label>:37:                                     ; preds = %34
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, metadata !2152, metadata !DIExpression(DW_OP_deref)), !dbg !2164
  call void @md5_process_bytes(i8* nonnull %4, i64 %35, %struct.md5_ctx* nonnull %3) #10, !dbg !2217
  br label %38, !dbg !2217

; <label>:38:                                     ; preds = %34, %37
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, metadata !2152, metadata !DIExpression(DW_OP_deref)), !dbg !2164
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, metadata !1850, metadata !DIExpression()) #10, !dbg !2218
  call void @llvm.dbg.value(metadata i8* %1, metadata !1851, metadata !DIExpression()) #10, !dbg !2220
  %39 = load i32, i32* %11, align 8, !dbg !2221, !tbaa !1797
  call void @llvm.dbg.value(metadata i32 %39, metadata !1852, metadata !DIExpression()) #10, !dbg !2222
  %40 = icmp ult i32 %39, 56, !dbg !2223
  %41 = select i1 %40, i64 16, i64 32, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %41, metadata !1853, metadata !DIExpression()) #10, !dbg !2225
  %42 = load i32, i32* %10, align 16, !dbg !2226, !tbaa !1038
  %43 = add i32 %42, %39, !dbg !2226
  store i32 %43, i32* %10, align 16, !dbg !2226, !tbaa !1038
  %44 = icmp ult i32 %43, %39, !dbg !2227
  br i1 %44, label %45, label %48, !dbg !2228

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %9, align 4, !dbg !2229, !tbaa !1038
  %47 = add i32 %46, 1, !dbg !2229
  store i32 %47, i32* %9, align 4, !dbg !2229, !tbaa !1038
  br label %48, !dbg !2229

; <label>:48:                                     ; preds = %38, %45
  %49 = shl i32 %43, 3, !dbg !2230
  %50 = add nsw i64 %41, -2, !dbg !2231
  %51 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 6, i64 %50, !dbg !2232
  store i32 %49, i32* %51, align 4, !dbg !2233, !tbaa !1038
  %52 = load i32, i32* %9, align 4, !dbg !2234, !tbaa !1038
  %53 = shl i32 %52, 3, !dbg !2234
  %54 = lshr i32 %43, 29, !dbg !2234
  %55 = or i32 %53, %54, !dbg !2234
  %56 = add nsw i64 %41, -1, !dbg !2235
  %57 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 6, i64 %56, !dbg !2236
  store i32 %55, i32* %57, align 4, !dbg !2237, !tbaa !1038
  %58 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 6, i64 0, !dbg !2238
  %59 = bitcast i32* %58 to i8*, !dbg !2238
  %60 = zext i32 %39 to i64, !dbg !2238
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !2238
  %62 = shl nsw i64 %50, 2, !dbg !2239
  %63 = sub nsw i64 %62, %60, !dbg !2240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %61, i8* align 16 getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), i64 %63, i1 false) #10, !dbg !2241
  %64 = shl nuw nsw i64 %41, 2, !dbg !2242
  call void @md5_process_block(i8* nonnull %59, i64 %64, %struct.md5_ctx* nonnull %3) #10, !dbg !2243
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, metadata !1806, metadata !DIExpression()) #10, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %1, metadata !1807, metadata !DIExpression()) #10, !dbg !2246
  call void @llvm.dbg.value(metadata i8* %1, metadata !1808, metadata !DIExpression()) #10, !dbg !2247
  call void @llvm.dbg.value(metadata i8* %1, metadata !1814, metadata !DIExpression()) #10, !dbg !2248
  call void @llvm.dbg.value(metadata i32 undef, metadata !1819, metadata !DIExpression()) #10, !dbg !2250
  call void @llvm.dbg.value(metadata i8* %1, metadata !1814, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #10, !dbg !2251
  call void @llvm.dbg.value(metadata i32 undef, metadata !1819, metadata !DIExpression()) #10, !dbg !2253
  call void @llvm.dbg.value(metadata i8* %1, metadata !1814, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #10, !dbg !2254
  call void @llvm.dbg.value(metadata i32 undef, metadata !1819, metadata !DIExpression()) #10, !dbg !2256
  %65 = bitcast %struct.md5_ctx* %3 to <4 x i32>*, !dbg !2257
  %66 = load <4 x i32>, <4 x i32>* %65, align 16, !dbg !2257, !tbaa !1038
  call void @llvm.dbg.value(metadata i8* %1, metadata !1814, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)) #10, !dbg !2258
  call void @llvm.dbg.value(metadata i32 undef, metadata !1819, metadata !DIExpression()) #10, !dbg !2260
  %67 = bitcast i8* %1 to <4 x i32>*, !dbg !2261
  store <4 x i32> %66, <4 x i32>* %67, align 1, !dbg !2261
  call void @free(i8* %4) #10, !dbg !2262
  br label %68, !dbg !2263

; <label>:68:                                     ; preds = %32, %48
  %69 = phi i32 [ 0, %48 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0i8(i64 156, i8* nonnull %7) #10, !dbg !2264
  br label %70

; <label>:70:                                     ; preds = %68, %2
  %71 = phi i32 [ %69, %68 ], [ 1, %2 ]
  ret i32 %71, !dbg !2264
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @md5_process_bytes(i8*, i64, %struct.md5_ctx*) local_unnamed_addr #7 !dbg !2265 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2267, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %1, metadata !2268, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %2, metadata !2269, metadata !DIExpression()), !dbg !2279
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 5, !dbg !2280
  %5 = load i32, i32* %4, align 4, !dbg !2280, !tbaa !1797
  %6 = icmp eq i32 %5, 0, !dbg !2281
  br i1 %6, label %30, label %7, !dbg !2282

; <label>:7:                                      ; preds = %3
  %8 = zext i32 %5 to i64, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %8, metadata !2270, metadata !DIExpression()), !dbg !2284
  %9 = sub nsw i64 128, %8, !dbg !2285
  %10 = icmp ugt i64 %9, %1, !dbg !2286
  %11 = select i1 %10, i64 %1, i64 %9, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %11, metadata !2273, metadata !DIExpression()), !dbg !2288
  %12 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 0, !dbg !2289
  %13 = bitcast i32* %12 to i8*, !dbg !2289
  %14 = getelementptr inbounds i8, i8* %13, i64 %8, !dbg !2289
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 %0, i64 %11, i1 false), !dbg !2290
  %15 = trunc i64 %11 to i32, !dbg !2291
  %16 = add i32 %5, %15, !dbg !2291
  store i32 %16, i32* %4, align 4, !dbg !2291, !tbaa !1797
  %17 = icmp ugt i32 %16, 64, !dbg !2292
  br i1 %17, label %18, label %27, !dbg !2294

; <label>:18:                                     ; preds = %7
  %19 = and i32 %16, -64, !dbg !2295
  %20 = zext i32 %19 to i64, !dbg !2297
  tail call void @md5_process_block(i8* nonnull %13, i64 %20, %struct.md5_ctx* nonnull %2) #10, !dbg !2298
  %21 = load i32, i32* %4, align 4, !dbg !2299, !tbaa !1797
  %22 = and i32 %21, 63, !dbg !2299
  store i32 %22, i32* %4, align 4, !dbg !2299, !tbaa !1797
  %23 = add i64 %11, %8, !dbg !2300
  %24 = and i64 %23, -64, !dbg !2301
  %25 = getelementptr inbounds i8, i8* %13, i64 %24, !dbg !2302
  %26 = zext i32 %22 to i64, !dbg !2303
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* align 1 %25, i64 %26, i1 false), !dbg !2304
  br label %27, !dbg !2305

; <label>:27:                                     ; preds = %18, %7
  %28 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2306
  call void @llvm.dbg.value(metadata i8* %28, metadata !2267, metadata !DIExpression()), !dbg !2277
  %29 = sub i64 %1, %11, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %29, metadata !2268, metadata !DIExpression()), !dbg !2278
  br label %30, !dbg !2308

; <label>:30:                                     ; preds = %3, %27
  %31 = phi i64 [ %29, %27 ], [ %1, %3 ]
  %32 = phi i8* [ %28, %27 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %32, metadata !2267, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %31, metadata !2268, metadata !DIExpression()), !dbg !2278
  %33 = icmp ugt i64 %31, 63, !dbg !2309
  br i1 %33, label %34, label %57, !dbg !2311

; <label>:34:                                     ; preds = %30
  %35 = ptrtoint i8* %32 to i64, !dbg !2312
  %36 = and i64 %35, 3, !dbg !2312
  %37 = icmp eq i64 %36, 0, !dbg !2312
  br i1 %37, label %53, label %38, !dbg !2315

; <label>:38:                                     ; preds = %34
  call void @llvm.dbg.value(metadata i8* %32, metadata !2267, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %31, metadata !2268, metadata !DIExpression()), !dbg !2278
  %39 = icmp ugt i64 %31, 64, !dbg !2316
  br i1 %39, label %40, label %64, !dbg !2317

; <label>:40:                                     ; preds = %38
  %41 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 0
  %42 = bitcast i32* %41 to i8*
  %43 = add i64 %31, -65, !dbg !2317
  %44 = and i64 %43, -64, !dbg !2317
  %45 = add i64 %44, 64, !dbg !2317
  %46 = add i64 %31, -64, !dbg !2317
  br label %47, !dbg !2317

; <label>:47:                                     ; preds = %40, %47
  %48 = phi i8* [ %32, %40 ], [ %50, %47 ]
  %49 = phi i64 [ %31, %40 ], [ %51, %47 ]
  call void @llvm.dbg.value(metadata i8* %48, metadata !2267, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %49, metadata !2268, metadata !DIExpression()), !dbg !2278
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %42, i8* align 1 %48, i64 64, i1 false), !dbg !2318
  tail call void @md5_process_block(i8* nonnull %42, i64 64, %struct.md5_ctx* nonnull %2) #10, !dbg !2320
  %50 = getelementptr inbounds i8, i8* %48, i64 64, !dbg !2321
  %51 = add i64 %49, -64, !dbg !2322
  call void @llvm.dbg.value(metadata i8* %50, metadata !2267, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %51, metadata !2268, metadata !DIExpression()), !dbg !2278
  %52 = icmp ugt i64 %51, 64, !dbg !2316
  br i1 %52, label %47, label %61, !dbg !2317, !llvm.loop !2323

; <label>:53:                                     ; preds = %34
  %54 = and i64 %31, -64, !dbg !2325
  tail call void @md5_process_block(i8* %32, i64 %54, %struct.md5_ctx* nonnull %2) #10, !dbg !2327
  %55 = getelementptr inbounds i8, i8* %32, i64 %54, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %55, metadata !2267, metadata !DIExpression()), !dbg !2277
  %56 = and i64 %31, 63, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %56, metadata !2268, metadata !DIExpression()), !dbg !2278
  br label %57

; <label>:57:                                     ; preds = %53, %30
  %58 = phi i64 [ %56, %53 ], [ %31, %30 ], !dbg !2330
  %59 = phi i8* [ %55, %53 ], [ %32, %30 ], !dbg !2330
  call void @llvm.dbg.value(metadata i8* %59, metadata !2267, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %58, metadata !2268, metadata !DIExpression()), !dbg !2278
  %60 = icmp eq i64 %58, 0, !dbg !2331
  br i1 %60, label %81, label %64, !dbg !2332

; <label>:61:                                     ; preds = %47
  %62 = getelementptr i8, i8* %32, i64 %45, !dbg !2317
  %63 = sub i64 %46, %44, !dbg !2317
  br label %64, !dbg !2333

; <label>:64:                                     ; preds = %61, %38, %57
  %65 = phi i8* [ %59, %57 ], [ %32, %38 ], [ %62, %61 ]
  %66 = phi i64 [ %58, %57 ], [ 64, %38 ], [ %63, %61 ]
  %67 = load i32, i32* %4, align 4, !dbg !2333, !tbaa !1797
  %68 = zext i32 %67 to i64, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %68, metadata !2274, metadata !DIExpression()), !dbg !2335
  %69 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, !dbg !2336
  %70 = bitcast [32 x i32]* %69 to i8*, !dbg !2337
  %71 = getelementptr inbounds i8, i8* %70, i64 %68, !dbg !2337
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %71, i8* align 1 %65, i64 %66, i1 false), !dbg !2338
  %72 = add i64 %66, %68, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %72, metadata !2274, metadata !DIExpression()), !dbg !2335
  %73 = icmp ugt i64 %72, 63, !dbg !2340
  br i1 %73, label %74, label %78, !dbg !2342

; <label>:74:                                     ; preds = %64
  tail call void @md5_process_block(i8* nonnull %70, i64 64, %struct.md5_ctx* nonnull %2) #10, !dbg !2343
  %75 = add i64 %72, -64, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %75, metadata !2274, metadata !DIExpression()), !dbg !2335
  %76 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 16, !dbg !2346
  %77 = bitcast i32* %76 to i8*, !dbg !2347
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %70, i8* nonnull align 4 %77, i64 %75, i1 false), !dbg !2347
  br label %78, !dbg !2348

; <label>:78:                                     ; preds = %74, %64
  %79 = phi i64 [ %75, %74 ], [ %72, %64 ], !dbg !2349
  call void @llvm.dbg.value(metadata i64 %79, metadata !2274, metadata !DIExpression()), !dbg !2335
  %80 = trunc i64 %79 to i32, !dbg !2350
  store i32 %80, i32* %4, align 4, !dbg !2351, !tbaa !1797
  br label %81, !dbg !2352

; <label>:81:                                     ; preds = %57, %78
  ret void, !dbg !2353
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @md5_buffer(i8*, i64, i8* returned) local_unnamed_addr #7 !dbg !2354 {
  %4 = alloca %struct.md5_ctx, align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !2358, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %1, metadata !2359, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8* %2, metadata !2360, metadata !DIExpression()), !dbg !2364
  %5 = bitcast %struct.md5_ctx* %4 to i8*, !dbg !2365
  call void @llvm.lifetime.start.p0i8(i64 156, i8* nonnull %5) #10, !dbg !2365
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, metadata !2361, metadata !DIExpression(DW_OP_deref)), !dbg !2366
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, metadata !1788, metadata !DIExpression()), !dbg !2367
  %6 = bitcast %struct.md5_ctx* %4 to <4 x i32>*, !dbg !2369
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %6, align 16, !dbg !2369, !tbaa !1038
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 4, i64 1, !dbg !2370
  store i32 0, i32* %7, align 4, !dbg !2371, !tbaa !1038
  %8 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 4, i64 0, !dbg !2372
  store i32 0, i32* %8, align 16, !dbg !2373, !tbaa !1038
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 5, !dbg !2374
  store i32 0, i32* %9, align 8, !dbg !2375, !tbaa !1797
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, metadata !2361, metadata !DIExpression(DW_OP_deref)), !dbg !2366
  call void @md5_process_bytes(i8* %0, i64 %1, %struct.md5_ctx* nonnull %4) #10, !dbg !2376
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, metadata !2361, metadata !DIExpression(DW_OP_deref)), !dbg !2366
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, metadata !1850, metadata !DIExpression()) #10, !dbg !2377
  call void @llvm.dbg.value(metadata i8* %2, metadata !1851, metadata !DIExpression()) #10, !dbg !2379
  %10 = load i32, i32* %9, align 8, !dbg !2380, !tbaa !1797
  call void @llvm.dbg.value(metadata i32 %10, metadata !1852, metadata !DIExpression()) #10, !dbg !2381
  %11 = icmp ult i32 %10, 56, !dbg !2382
  %12 = select i1 %11, i64 16, i64 32, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %12, metadata !1853, metadata !DIExpression()) #10, !dbg !2384
  %13 = load i32, i32* %8, align 16, !dbg !2385, !tbaa !1038
  %14 = add i32 %13, %10, !dbg !2385
  store i32 %14, i32* %8, align 16, !dbg !2385, !tbaa !1038
  %15 = icmp ult i32 %14, %10, !dbg !2386
  br i1 %15, label %16, label %19, !dbg !2387

; <label>:16:                                     ; preds = %3
  %17 = load i32, i32* %7, align 4, !dbg !2388, !tbaa !1038
  %18 = add i32 %17, 1, !dbg !2388
  store i32 %18, i32* %7, align 4, !dbg !2388, !tbaa !1038
  br label %19, !dbg !2388

; <label>:19:                                     ; preds = %3, %16
  %20 = shl i32 %14, 3, !dbg !2389
  %21 = add nsw i64 %12, -2, !dbg !2390
  %22 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 6, i64 %21, !dbg !2391
  store i32 %20, i32* %22, align 4, !dbg !2392, !tbaa !1038
  %23 = load i32, i32* %7, align 4, !dbg !2393, !tbaa !1038
  %24 = shl i32 %23, 3, !dbg !2393
  %25 = lshr i32 %14, 29, !dbg !2393
  %26 = or i32 %24, %25, !dbg !2393
  %27 = add nsw i64 %12, -1, !dbg !2394
  %28 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 6, i64 %27, !dbg !2395
  store i32 %26, i32* %28, align 4, !dbg !2396, !tbaa !1038
  %29 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 6, i64 0, !dbg !2397
  %30 = bitcast i32* %29 to i8*, !dbg !2397
  %31 = zext i32 %10 to i64, !dbg !2397
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !2397
  %33 = shl nsw i64 %21, 2, !dbg !2398
  %34 = sub nsw i64 %33, %31, !dbg !2399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 16 getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), i64 %34, i1 false) #10, !dbg !2400
  %35 = shl nuw nsw i64 %12, 2, !dbg !2401
  call void @md5_process_block(i8* nonnull %30, i64 %35, %struct.md5_ctx* nonnull %4) #10, !dbg !2402
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, metadata !1806, metadata !DIExpression()) #10, !dbg !2403
  call void @llvm.dbg.value(metadata i8* %2, metadata !1807, metadata !DIExpression()) #10, !dbg !2405
  call void @llvm.dbg.value(metadata i8* %2, metadata !1808, metadata !DIExpression()) #10, !dbg !2406
  call void @llvm.dbg.value(metadata i8* %2, metadata !1814, metadata !DIExpression()) #10, !dbg !2407
  call void @llvm.dbg.value(metadata i32 undef, metadata !1819, metadata !DIExpression()) #10, !dbg !2409
  call void @llvm.dbg.value(metadata i8* %2, metadata !1814, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #10, !dbg !2410
  call void @llvm.dbg.value(metadata i32 undef, metadata !1819, metadata !DIExpression()) #10, !dbg !2412
  call void @llvm.dbg.value(metadata i8* %2, metadata !1814, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #10, !dbg !2413
  call void @llvm.dbg.value(metadata i32 undef, metadata !1819, metadata !DIExpression()) #10, !dbg !2415
  %36 = bitcast %struct.md5_ctx* %4 to <4 x i32>*, !dbg !2416
  %37 = load <4 x i32>, <4 x i32>* %36, align 16, !dbg !2416, !tbaa !1038
  call void @llvm.dbg.value(metadata i8* %2, metadata !1814, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)) #10, !dbg !2417
  call void @llvm.dbg.value(metadata i32 undef, metadata !1819, metadata !DIExpression()) #10, !dbg !2419
  %38 = bitcast i8* %2 to <4 x i32>*, !dbg !2420
  store <4 x i32> %37, <4 x i32>* %38, align 1, !dbg !2420
  call void @llvm.lifetime.end.p0i8(i64 156, i8* nonnull %5) #10, !dbg !2421
  ret i8* %2, !dbg !2422
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !2423 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2431, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i64 %1, metadata !2432, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 %2, metadata !2433, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 %3, metadata !2434, metadata !DIExpression()), !dbg !2440
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !2441
  call void @llvm.dbg.value(metadata i32 %5, metadata !2435, metadata !DIExpression()), !dbg !2441
  ret void, !dbg !2442
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !2443 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2481, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i32 %1, metadata !2482, metadata !DIExpression()), !dbg !2484
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2485
  br i1 %3, label %7, label %4, !dbg !2487

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !2488
  call void @llvm.dbg.value(metadata i32 %5, metadata !2431, metadata !DIExpression()) #10, !dbg !2489
  call void @llvm.dbg.value(metadata i64 0, metadata !2432, metadata !DIExpression()) #10, !dbg !2491
  call void @llvm.dbg.value(metadata i64 0, metadata !2433, metadata !DIExpression()) #10, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %1, metadata !2434, metadata !DIExpression()) #10, !dbg !2493
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %6, metadata !2435, metadata !DIExpression()) #10, !dbg !2494
  br label %7, !dbg !2495

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2496
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #7 !dbg !2497 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2536, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %1, metadata !2537, metadata !DIExpression()), !dbg !2552
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !2553
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !2538, metadata !DIExpression()), !dbg !2554
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2555
  br i1 %4, label %25, label %5, !dbg !2556

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #10, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %6, metadata !2539, metadata !DIExpression()), !dbg !2558
  %7 = icmp ult i32 %6, 3, !dbg !2559
  br i1 %7, label %8, label %25, !dbg !2559

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #10, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %9, metadata !2542, metadata !DIExpression()), !dbg !2561
  %10 = icmp slt i32 %9, 0, !dbg !2562
  br i1 %10, label %11, label %15, !dbg !2563

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #17, !dbg !2564
  %13 = load i32, i32* %12, align 4, !dbg !2564, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %13, metadata !2545, metadata !DIExpression()), !dbg !2565
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !2566
  store i32 %13, i32* %12, align 4, !dbg !2567, !tbaa !1038
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !2568
  %17 = icmp eq i32 %16, 0, !dbg !2569
  br i1 %17, label %18, label %21, !dbg !2570

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #10, !dbg !2571
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !2538, metadata !DIExpression()), !dbg !2554
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !2572
  br i1 %20, label %21, label %25, !dbg !2573

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #17, !dbg !2574
  %23 = load i32, i32* %22, align 4, !dbg !2574, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %23, metadata !2548, metadata !DIExpression()), !dbg !2575
  %24 = tail call i32 @close(i32 %9) #10, !dbg !2576
  store i32 %23, i32* %22, align 4, !dbg !2577, !tbaa !1038
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !2578
  ret %struct._IO_FILE* %26, !dbg !2579
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !2580 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2582, metadata !DIExpression()), !dbg !2585
  %2 = icmp eq i8* %0, null, !dbg !2586
  br i1 %2, label %3, label %6, !dbg !2588

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2589, !tbaa !830
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.101, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2591
  tail call void @abort() #15, !dbg !2592
  unreachable, !dbg !2592

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2593
  call void @llvm.dbg.value(metadata i8* %7, metadata !2583, metadata !DIExpression()), !dbg !2594
  %8 = icmp eq i8* %7, null, !dbg !2595
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2596
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2597
  call void @llvm.dbg.value(metadata i8* %10, metadata !2584, metadata !DIExpression()), !dbg !2598
  %11 = ptrtoint i8* %10 to i64, !dbg !2599
  %12 = ptrtoint i8* %0 to i64, !dbg !2599
  %13 = sub i64 %11, %12, !dbg !2599
  %14 = icmp sgt i64 %13, 6, !dbg !2601
  br i1 %14, label %15, label %24, !dbg !2602

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2603
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.102, i64 0, i64 0), i64 7) #14, !dbg !2604
  %18 = icmp eq i32 %17, 0, !dbg !2605
  br i1 %18, label %19, label %24, !dbg !2606

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2582, metadata !DIExpression()), !dbg !2585
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i64 3) #14, !dbg !2607
  %21 = icmp eq i32 %20, 0, !dbg !2610
  br i1 %21, label %22, label %24, !dbg !2611

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %23, metadata !2582, metadata !DIExpression()), !dbg !2585
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2614, !tbaa !830
  br label %24, !dbg !2615

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2582, metadata !DIExpression()), !dbg !2585
  store i8* %25, i8** @program_name, align 8, !dbg !2616, !tbaa !830
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2617, !tbaa !830
  ret void, !dbg !2618
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !2619 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2624, metadata !DIExpression()), !dbg !2627
  %2 = tail call i32* @__errno_location() #17, !dbg !2628
  %3 = load i32, i32* %2, align 4, !dbg !2628, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %3, metadata !2625, metadata !DIExpression()), !dbg !2629
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2630
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2630
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2630
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2631
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2631
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2626, metadata !DIExpression()), !dbg !2632
  store i32 %3, i32* %2, align 4, !dbg !2633, !tbaa !1038
  ret %struct.quoting_options* %8, !dbg !2634
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !2635 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2641, metadata !DIExpression()), !dbg !2642
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2643
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2643
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2644
  %5 = load i32, i32* %4, align 8, !dbg !2644, !tbaa !2645
  ret i32 %5, !dbg !2647
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2648 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2652, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i32 %1, metadata !2653, metadata !DIExpression()), !dbg !2655
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2656
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2656
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2657
  store i32 %1, i32* %5, align 8, !dbg !2658, !tbaa !2645
  ret void, !dbg !2659
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !2660 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2664, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 %1, metadata !2665, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i32 %2, metadata !2666, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 %1, metadata !2667, metadata !DIExpression()), !dbg !2675
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2676
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2676
  %6 = lshr i8 %1, 5, !dbg !2677
  %7 = zext i8 %6 to i64, !dbg !2677
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2678
  call void @llvm.dbg.value(metadata i32* %8, metadata !2668, metadata !DIExpression()), !dbg !2679
  %9 = and i8 %1, 31, !dbg !2680
  %10 = zext i8 %9 to i32, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %10, metadata !2670, metadata !DIExpression()), !dbg !2681
  %11 = load i32, i32* %8, align 4, !dbg !2682, !tbaa !1038
  %12 = lshr i32 %11, %10, !dbg !2683
  %13 = and i32 %12, 1, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %13, metadata !2671, metadata !DIExpression()), !dbg !2685
  %14 = and i32 %2, 1, !dbg !2686
  %15 = xor i32 %13, %14, !dbg !2687
  %16 = shl i32 %15, %10, !dbg !2688
  %17 = xor i32 %16, %11, !dbg !2689
  store i32 %17, i32* %8, align 4, !dbg !2689, !tbaa !1038
  ret i32 %13, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2691 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2695, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 %1, metadata !2696, metadata !DIExpression()), !dbg !2699
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2700
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2695, metadata !DIExpression()), !dbg !2698
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2703
  %6 = load i32, i32* %5, align 4, !dbg !2703, !tbaa !2704
  call void @llvm.dbg.value(metadata i32 %6, metadata !2697, metadata !DIExpression()), !dbg !2705
  store i32 %1, i32* %5, align 4, !dbg !2706, !tbaa !2704
  ret i32 %6, !dbg !2707
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !2708 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2712, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8* %1, metadata !2713, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8* %2, metadata !2714, metadata !DIExpression()), !dbg !2717
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2718
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2720
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2712, metadata !DIExpression()), !dbg !2715
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2721
  store i32 10, i32* %6, align 8, !dbg !2722, !tbaa !2645
  %7 = icmp ne i8* %1, null, !dbg !2723
  %8 = icmp ne i8* %2, null, !dbg !2725
  %9 = and i1 %7, %8, !dbg !2726
  br i1 %9, label %11, label %10, !dbg !2726

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2727
  unreachable, !dbg !2727

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2728
  store i8* %1, i8** %12, align 8, !dbg !2729, !tbaa !2730
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2731
  store i8* %2, i8** %13, align 8, !dbg !2732, !tbaa !2733
  ret void, !dbg !2734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2735 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2739, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %1, metadata !2740, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %2, metadata !2741, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %3, metadata !2742, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2743, metadata !DIExpression()), !dbg !2751
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2752
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2744, metadata !DIExpression()), !dbg !2753
  %8 = tail call i32* @__errno_location() #17, !dbg !2754
  %9 = load i32, i32* %8, align 4, !dbg !2754, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %9, metadata !2745, metadata !DIExpression()), !dbg !2755
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2756
  %11 = load i32, i32* %10, align 8, !dbg !2756, !tbaa !2645
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2757
  %13 = load i32, i32* %12, align 4, !dbg !2757, !tbaa !2704
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2758
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2759
  %16 = load i8*, i8** %15, align 8, !dbg !2759, !tbaa !2730
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2760
  %18 = load i8*, i8** %17, align 8, !dbg !2760, !tbaa !2733
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %19, metadata !2746, metadata !DIExpression()), !dbg !2762
  store i32 %9, i32* %8, align 4, !dbg !2763, !tbaa !1038
  ret i64 %19, !dbg !2764
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2765 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2771, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 %1, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %2, metadata !2773, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i64 %3, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 %4, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 %5, metadata !2776, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32* %6, metadata !2777, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8* %7, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %8, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 0, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 0, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8* null, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 0, metadata !2784, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8 0, metadata !2785, metadata !DIExpression()), !dbg !2848
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2849
  %14 = icmp eq i64 %13, 1, !dbg !2850
  %15 = lshr i32 %5, 1, !dbg !2851
  %16 = trunc i32 %15 to i8, !dbg !2851
  %17 = and i8 %16, 1, !dbg !2851
  call void @llvm.dbg.value(metadata i8 %17, metadata !2787, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8 0, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 0, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 1, metadata !2790, metadata !DIExpression()), !dbg !2854
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2855

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2845
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2846
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2847
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2848
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2856
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2852
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2853
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2854
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 %39, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8 %38, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %37, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %36, metadata !2787, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i64 %35, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 %34, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %33, metadata !2784, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* %32, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %31, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 0, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %30, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %29, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 %28, metadata !2775, metadata !DIExpression()), !dbg !2839
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
  ], !dbg !2858

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8 1, metadata !2787, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8 %36, metadata !2787, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 5, metadata !2775, metadata !DIExpression()), !dbg !2839
  br label %93, !dbg !2859

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2787, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 5, metadata !2775, metadata !DIExpression()), !dbg !2839
  %43 = and i8 %36, 1, !dbg !2860
  %44 = icmp eq i8 %43, 0, !dbg !2860
  br i1 %44, label %45, label %93, !dbg !2859

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2862
  br i1 %46, label %93, label %47, !dbg !2865

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2862, !tbaa !1124
  br label %93, !dbg !2862

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.114, i64 0, i64 0), i32 %28), !dbg !2866
  call void @llvm.dbg.value(metadata i8* %49, metadata !2778, metadata !DIExpression()), !dbg !2842
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), i32 %28), !dbg !2870
  call void @llvm.dbg.value(metadata i8* %50, metadata !2779, metadata !DIExpression()), !dbg !2843
  br label %51, !dbg !2871

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %52, metadata !2778, metadata !DIExpression()), !dbg !2842
  %54 = and i8 %36, 1, !dbg !2872
  %55 = icmp eq i8 %54, 0, !dbg !2872
  br i1 %55, label %56, label %71, !dbg !2874

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 0, metadata !2781, metadata !DIExpression()), !dbg !2844
  %57 = load i8, i8* %52, align 1, !dbg !2875, !tbaa !1124
  %58 = icmp eq i8 %57, 0, !dbg !2878
  br i1 %58, label %71, label %59, !dbg !2878

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %62, metadata !2781, metadata !DIExpression()), !dbg !2844
  %63 = icmp ult i64 %62, %40, !dbg !2879
  br i1 %63, label %64, label %66, !dbg !2882

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2879
  store i8 %60, i8* %65, align 1, !dbg !2879, !tbaa !1124
  br label %66, !dbg !2879

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2882
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2883
  call void @llvm.dbg.value(metadata i8* %68, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %67, metadata !2781, metadata !DIExpression()), !dbg !2844
  %69 = load i8, i8* %68, align 1, !dbg !2875, !tbaa !1124
  %70 = icmp eq i8 %69, 0, !dbg !2878
  br i1 %70, label %71, label %59, !dbg !2878, !llvm.loop !2884

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2844
  call void @llvm.dbg.value(metadata i64 %72, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8 1, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8* %53, metadata !2783, metadata !DIExpression()), !dbg !2846
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2886
  call void @llvm.dbg.value(metadata i64 %73, metadata !2784, metadata !DIExpression()), !dbg !2847
  br label %93, !dbg !2887

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2785, metadata !DIExpression()), !dbg !2848
  br label %75, !dbg !2888

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2856
  call void @llvm.dbg.value(metadata i8 %76, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 1, metadata !2787, metadata !DIExpression()), !dbg !2851
  br label %77, !dbg !2889

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2848
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2856
  call void @llvm.dbg.value(metadata i8 %79, metadata !2787, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8 %78, metadata !2785, metadata !DIExpression()), !dbg !2848
  %80 = and i8 %79, 1, !dbg !2890
  %81 = icmp eq i8 %80, 0, !dbg !2890
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2892
  br label %83, !dbg !2892

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2893
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2851
  call void @llvm.dbg.value(metadata i8 %85, metadata !2787, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8 %84, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 2, metadata !2775, metadata !DIExpression()), !dbg !2839
  %86 = and i8 %85, 1, !dbg !2894
  %87 = icmp eq i8 %86, 0, !dbg !2894
  br i1 %87, label %88, label %93, !dbg !2896

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2897
  br i1 %89, label %93, label %90, !dbg !2900

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2897, !tbaa !1124
  br label %93, !dbg !2897

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2787, metadata !DIExpression()), !dbg !2851
  br label %93, !dbg !2901

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2902
  unreachable, !dbg !2902

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2844
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %41 ], !dbg !2856
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2856
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2856
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2903
  call void @llvm.dbg.value(metadata i8 %101, metadata !2787, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8 %100, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %99, metadata !2784, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %97, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 %94, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 0, metadata !2780, metadata !DIExpression()), !dbg !2904
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
  br label %121, !dbg !2905

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2906
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2844
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2845
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2852
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2853
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2854
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %125, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %122, metadata !2780, metadata !DIExpression()), !dbg !2904
  %130 = icmp eq i64 %125, -1, !dbg !2907
  br i1 %130, label %131, label %135, !dbg !2908

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2909
  %133 = load i8, i8* %132, align 1, !dbg !2909, !tbaa !1124
  %134 = icmp eq i8 %133, 0, !dbg !2910
  br i1 %134, label %617, label %137, !dbg !2911

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2912
  br i1 %136, label %617, label %137, !dbg !2911

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2796, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 0, metadata !2797, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 0, metadata !2798, metadata !DIExpression()), !dbg !2915
  br i1 %107, label %138, label %153, !dbg !2916

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2918
  %140 = and i1 %108, %130, !dbg !2919
  br i1 %140, label %141, label %143, !dbg !2919

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %142, metadata !2774, metadata !DIExpression()), !dbg !2838
  br label %143, !dbg !2921

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2774, metadata !DIExpression()), !dbg !2838
  %145 = icmp ugt i64 %139, %144, !dbg !2922
  br i1 %145, label %153, label %146, !dbg !2923

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2924
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2925
  %149 = icmp ne i32 %148, 0, !dbg !2926
  %150 = or i1 %149, %110, !dbg !2927
  %151 = xor i1 %149, true, !dbg !2927
  %152 = zext i1 %151 to i8, !dbg !2927
  br i1 %150, label %153, label %661, !dbg !2927

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2928
  call void @llvm.dbg.value(metadata i8 %155, metadata !2796, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 %154, metadata !2774, metadata !DIExpression()), !dbg !2838
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2929
  %157 = load i8, i8* %156, align 1, !dbg !2929, !tbaa !1124
  call void @llvm.dbg.value(metadata i8 %157, metadata !2791, metadata !DIExpression()), !dbg !2930
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
  ], !dbg !2931

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2932

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2933

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2797, metadata !DIExpression()), !dbg !2914
  %161 = and i8 %126, 1, !dbg !2937
  %162 = icmp eq i8 %161, 0, !dbg !2937
  %163 = and i1 %114, %162, !dbg !2937
  br i1 %163, label %164, label %180, !dbg !2937

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2939
  br i1 %165, label %166, label %168, !dbg !2943

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2939
  store i8 39, i8* %167, align 1, !dbg !2939, !tbaa !1124
  br label %168, !dbg !2939

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %169, metadata !2781, metadata !DIExpression()), !dbg !2844
  %170 = icmp ult i64 %169, %129, !dbg !2944
  br i1 %170, label %171, label %173, !dbg !2947

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2944
  store i8 36, i8* %172, align 1, !dbg !2944, !tbaa !1124
  br label %173, !dbg !2944

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2947
  call void @llvm.dbg.value(metadata i64 %174, metadata !2781, metadata !DIExpression()), !dbg !2844
  %175 = icmp ult i64 %174, %129, !dbg !2948
  br i1 %175, label %176, label %178, !dbg !2951

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2948
  store i8 39, i8* %177, align 1, !dbg !2948, !tbaa !1124
  br label %178, !dbg !2948

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2951
  call void @llvm.dbg.value(metadata i64 %179, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8 1, metadata !2788, metadata !DIExpression()), !dbg !2852
  br label %180, !dbg !2952

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2903
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2903
  call void @llvm.dbg.value(metadata i8 %182, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %181, metadata !2781, metadata !DIExpression()), !dbg !2844
  %183 = icmp ult i64 %181, %129, !dbg !2953
  br i1 %183, label %184, label %186, !dbg !2956

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2953
  store i8 92, i8* %185, align 1, !dbg !2953, !tbaa !1124
  br label %186, !dbg !2953

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %187, metadata !2781, metadata !DIExpression()), !dbg !2844
  br i1 %104, label %188, label %478, !dbg !2957

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2959
  %190 = icmp ult i64 %189, %154, !dbg !2960
  br i1 %190, label %191, label %467, !dbg !2961

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2962
  %193 = load i8, i8* %192, align 1, !dbg !2962, !tbaa !1124
  %194 = add i8 %193, -48, !dbg !2963
  %195 = icmp ult i8 %194, 10, !dbg !2963
  br i1 %195, label %196, label %467, !dbg !2963

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2964
  br i1 %197, label %198, label %200, !dbg !2968

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2964
  store i8 48, i8* %199, align 1, !dbg !2964, !tbaa !1124
  br label %200, !dbg !2964

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2968
  call void @llvm.dbg.value(metadata i64 %201, metadata !2781, metadata !DIExpression()), !dbg !2844
  %202 = icmp ult i64 %201, %129, !dbg !2969
  br i1 %202, label %203, label %205, !dbg !2972

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2969
  store i8 48, i8* %204, align 1, !dbg !2969, !tbaa !1124
  br label %205, !dbg !2969

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %206, metadata !2781, metadata !DIExpression()), !dbg !2844
  br label %467, !dbg !2973

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2974

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2975

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2976

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2978

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2980
  %213 = icmp ult i64 %212, %154, !dbg !2981
  br i1 %213, label %214, label %467, !dbg !2982

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2983
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2984
  %217 = load i8, i8* %216, align 1, !dbg !2984, !tbaa !1124
  %218 = icmp eq i8 %217, 63, !dbg !2985
  br i1 %218, label %219, label %467, !dbg !2986

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2987
  %221 = load i8, i8* %220, align 1, !dbg !2987, !tbaa !1124
  %222 = sext i8 %221 to i32, !dbg !2987
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
  ], !dbg !2988

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2989

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2791, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %212, metadata !2780, metadata !DIExpression()), !dbg !2904
  %225 = icmp ult i64 %123, %129, !dbg !2991
  br i1 %225, label %226, label %228, !dbg !2994

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2991
  store i8 63, i8* %227, align 1, !dbg !2991, !tbaa !1124
  br label %228, !dbg !2991

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %229, metadata !2781, metadata !DIExpression()), !dbg !2844
  %230 = icmp ult i64 %229, %129, !dbg !2995
  br i1 %230, label %231, label %233, !dbg !2998

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2995
  store i8 34, i8* %232, align 1, !dbg !2995, !tbaa !1124
  br label %233, !dbg !2995

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %234, metadata !2781, metadata !DIExpression()), !dbg !2844
  %235 = icmp ult i64 %234, %129, !dbg !2999
  br i1 %235, label %236, label %238, !dbg !3002

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2999
  store i8 34, i8* %237, align 1, !dbg !2999, !tbaa !1124
  br label %238, !dbg !2999

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !3002
  call void @llvm.dbg.value(metadata i64 %239, metadata !2781, metadata !DIExpression()), !dbg !2844
  %240 = icmp ult i64 %239, %129, !dbg !3003
  br i1 %240, label %241, label %243, !dbg !3006

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !3003
  store i8 63, i8* %242, align 1, !dbg !3003, !tbaa !1124
  br label %243, !dbg !3003

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !3006
  call void @llvm.dbg.value(metadata i64 %244, metadata !2781, metadata !DIExpression()), !dbg !2844
  br label %467, !dbg !3007

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2795, metadata !DIExpression()), !dbg !3008
  br label %255, !dbg !3009

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2795, metadata !DIExpression()), !dbg !3008
  br label %255, !dbg !3010

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2795, metadata !DIExpression()), !dbg !3008
  br label %253, !dbg !3011

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2795, metadata !DIExpression()), !dbg !3008
  br label %253, !dbg !3012

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2795, metadata !DIExpression()), !dbg !3008
  br label %255, !dbg !3013

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2795, metadata !DIExpression()), !dbg !3008
  br i1 %114, label %251, label %252, !dbg !3014

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !3015

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !3018

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !3020
  call void @llvm.dbg.value(metadata i8 %254, metadata !2795, metadata !DIExpression()), !dbg !3008
  br i1 %113, label %255, label %661, !dbg !3021

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !3020
  call void @llvm.dbg.value(metadata i8 %256, metadata !2795, metadata !DIExpression()), !dbg !3008
  br i1 %103, label %524, label %478, !dbg !3023

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !3024
  br i1 %258, label %259, label %264, !dbg !3026

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !3027, !tbaa !1124
  %261 = icmp ne i8 %260, 0, !dbg !3028
  %262 = icmp ne i64 %122, 0, !dbg !3029
  %263 = or i1 %262, %261, !dbg !3031
  br i1 %263, label %467, label %270, !dbg !3031

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !3032
  %266 = icmp ne i64 %122, 0, !dbg !3029
  %267 = or i1 %266, %265, !dbg !3026
  br i1 %267, label %467, label %270, !dbg !3026

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !3029
  br i1 %269, label %270, label %467, !dbg !3033

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2798, metadata !DIExpression()), !dbg !2915
  br label %271, !dbg !3034

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !3020
  call void @llvm.dbg.value(metadata i8 %272, metadata !2798, metadata !DIExpression()), !dbg !2915
  br i1 %113, label %467, label %661, !dbg !3035

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 1, metadata !2798, metadata !DIExpression()), !dbg !2915
  br i1 %114, label %274, label %467, !dbg !3037

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !3038

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !3041
  %277 = icmp ne i64 %124, 0, !dbg !3043
  %278 = or i1 %277, %276, !dbg !3044
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !3044
  %280 = select i1 %278, i64 %129, i64 0, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %280, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %279, metadata !2782, metadata !DIExpression()), !dbg !2845
  %281 = icmp ult i64 %123, %280, !dbg !3045
  br i1 %281, label %282, label %284, !dbg !3048

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3045
  store i8 39, i8* %283, align 1, !dbg !3045, !tbaa !1124
  br label %284, !dbg !3045

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %285, metadata !2781, metadata !DIExpression()), !dbg !2844
  %286 = icmp ult i64 %285, %280, !dbg !3049
  br i1 %286, label %287, label %289, !dbg !3052

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !3049
  store i8 92, i8* %288, align 1, !dbg !3049, !tbaa !1124
  br label %289, !dbg !3049

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !3052
  call void @llvm.dbg.value(metadata i64 %290, metadata !2781, metadata !DIExpression()), !dbg !2844
  %291 = icmp ult i64 %290, %280, !dbg !3053
  br i1 %291, label %292, label %294, !dbg !3056

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !3053
  store i8 39, i8* %293, align 1, !dbg !3053, !tbaa !1124
  br label %294, !dbg !3053

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %295, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8 0, metadata !2788, metadata !DIExpression()), !dbg !2852
  br label %467, !dbg !3057

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !3058

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2799, metadata !DIExpression()), !dbg !3059
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !3060
  %299 = load i16*, i16** %298, align 8, !dbg !3060, !tbaa !830
  %300 = zext i8 %157 to i64, !dbg !3060
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !3060
  %302 = load i16, i16* %301, align 2, !dbg !3060, !tbaa !1283
  %303 = lshr i16 %302, 14, !dbg !3062
  %304 = trunc i16 %303 to i8, !dbg !3062
  %305 = and i8 %304, 1, !dbg !3062
  call void @llvm.dbg.value(metadata i8 %305, metadata !2802, metadata !DIExpression()), !dbg !3063
  br label %359, !dbg !3064

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !3065
  store i64 0, i64* %10, align 8, !dbg !3066
  call void @llvm.dbg.value(metadata i64 0, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 1, metadata !2802, metadata !DIExpression()), !dbg !3063
  %307 = icmp eq i64 %154, -1, !dbg !3067
  br i1 %307, label %308, label %310, !dbg !3069

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %309, metadata !2774, metadata !DIExpression()), !dbg !2838
  br label %310, !dbg !3071

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !3072
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  br label %312, !dbg !3073

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !3074
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !3075
  call void @llvm.dbg.value(metadata i8 %314, metadata !2802, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %313, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !3076
  %315 = add i64 %313, %122, !dbg !3077
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !3078
  %317 = sub i64 %311, %315, !dbg !3079
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2803, metadata !DIExpression(DW_OP_deref)), !dbg !3080
  call void @llvm.dbg.value(metadata i32* %12, metadata !2821, metadata !DIExpression(DW_OP_deref)), !dbg !3081
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %318, metadata !2824, metadata !DIExpression()), !dbg !3083
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !3084

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %313, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %313, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %313, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %313, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %313, metadata !2799, metadata !DIExpression()), !dbg !3059
  %320 = icmp ugt i64 %311, %315, !dbg !3085
  br i1 %320, label %321, label %344, !dbg !3087

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2799, metadata !DIExpression()), !dbg !3059
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !3088
  %325 = load i8, i8* %324, align 1, !dbg !3088, !tbaa !1124
  %326 = icmp eq i8 %325, 0, !dbg !3087
  br i1 %326, label %344, label %327, !dbg !3089

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !3090
  call void @llvm.dbg.value(metadata i64 %328, metadata !2799, metadata !DIExpression()), !dbg !3059
  %329 = add i64 %328, %122, !dbg !3091
  %330 = icmp ult i64 %329, %311, !dbg !3085
  br i1 %330, label %321, label %344, !dbg !3087, !llvm.loop !3092

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !3093
  %333 = and i1 %116, %332, !dbg !3096
  call void @llvm.dbg.value(metadata i64 1, metadata !2825, metadata !DIExpression()), !dbg !3097
  br i1 %333, label %334, label %347, !dbg !3096

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2825, metadata !DIExpression()), !dbg !3097
  %336 = add i64 %335, %315, !dbg !3098
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !3099
  %338 = load i8, i8* %337, align 1, !dbg !3099, !tbaa !1124
  %339 = sext i8 %338 to i32, !dbg !3099
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !3100

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %341, metadata !2825, metadata !DIExpression()), !dbg !3097
  %342 = icmp ult i64 %341, %318, !dbg !3093
  br i1 %342, label %334, label %347, !dbg !3102, !llvm.loop !3103

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 %314, metadata !2802, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %313, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 %314, metadata !2802, metadata !DIExpression()), !dbg !3063
  br label %344, !dbg !3105

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2802, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %352, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !3105
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !3106, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %348, metadata !2821, metadata !DIExpression()), !dbg !3081
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !3108
  %350 = icmp eq i32 %349, 0, !dbg !3108
  %351 = select i1 %350, i8 0, i8 %314, !dbg !3109
  call void @llvm.dbg.value(metadata i8 %351, metadata !2802, metadata !DIExpression()), !dbg !3063
  %352 = add i64 %318, %313, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %352, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 %351, metadata !2802, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %352, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !3105
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2803, metadata !DIExpression(DW_OP_deref)), !dbg !3080
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !3111
  %354 = icmp eq i32 %353, 0, !dbg !3112
  br i1 %354, label %312, label %355, !dbg !3113, !llvm.loop !3114

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !3116
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 2, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 2, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 2, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 2, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 2, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 %100, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 %100, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 %100, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 %100, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 %100, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 %94, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 %94, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 %94, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 %94, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 %94, metadata !2775, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 %100, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 %100, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 %100, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 %100, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 %100, metadata !2785, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %311, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 %351, metadata !2802, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %352, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !3105
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !3116
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !3117
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !3118
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !3118
  call void @llvm.dbg.value(metadata i8 %362, metadata !2802, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %361, metadata !2799, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %360, metadata !2774, metadata !DIExpression()), !dbg !2838
  %363 = and i8 %362, 1, !dbg !3119
  %364 = icmp ne i8 %363, 0, !dbg !3119
  call void @llvm.dbg.value(metadata i8 %363, metadata !2798, metadata !DIExpression()), !dbg !2915
  %365 = icmp ult i64 %361, 2, !dbg !3120
  %366 = or i1 %364, %115, !dbg !3121
  %367 = and i1 %365, %366, !dbg !3122
  br i1 %367, label %467, label %368, !dbg !3122

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %369, metadata !2832, metadata !DIExpression()), !dbg !3124
  br label %370, !dbg !3125

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !3126
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !3130
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2852
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !3126
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !3132
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2914
  call void @llvm.dbg.value(metadata i8 %376, metadata !2797, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 %375, metadata !2796, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 %374, metadata !2791, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %373, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %372, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %371, metadata !2780, metadata !DIExpression()), !dbg !2904
  br i1 %366, label %423, label %377, !dbg !3136

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !3137

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2797, metadata !DIExpression()), !dbg !2914
  %379 = and i8 %373, 1, !dbg !3140
  %380 = icmp eq i8 %379, 0, !dbg !3140
  %381 = and i1 %114, %380, !dbg !3140
  br i1 %381, label %382, label %398, !dbg !3140

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !3142
  br i1 %383, label %384, label %386, !dbg !3146

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !3142
  store i8 39, i8* %385, align 1, !dbg !3142, !tbaa !1124
  br label %386, !dbg !3142

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %387, metadata !2781, metadata !DIExpression()), !dbg !2844
  %388 = icmp ult i64 %387, %129, !dbg !3147
  br i1 %388, label %389, label %391, !dbg !3150

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !3147
  store i8 36, i8* %390, align 1, !dbg !3147, !tbaa !1124
  br label %391, !dbg !3147

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %392, metadata !2781, metadata !DIExpression()), !dbg !2844
  %393 = icmp ult i64 %392, %129, !dbg !3151
  br i1 %393, label %394, label %396, !dbg !3154

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !3151
  store i8 39, i8* %395, align 1, !dbg !3151, !tbaa !1124
  br label %396, !dbg !3151

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %397, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8 1, metadata !2788, metadata !DIExpression()), !dbg !2852
  br label %398, !dbg !3155

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2903
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2903
  call void @llvm.dbg.value(metadata i8 %400, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %399, metadata !2781, metadata !DIExpression()), !dbg !2844
  %401 = icmp ult i64 %399, %129, !dbg !3156
  br i1 %401, label %402, label %404, !dbg !3159

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !3156
  store i8 92, i8* %403, align 1, !dbg !3156, !tbaa !1124
  br label %404, !dbg !3156

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %405, metadata !2781, metadata !DIExpression()), !dbg !2844
  %406 = icmp ult i64 %405, %129, !dbg !3160
  br i1 %406, label %407, label %411, !dbg !3163

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !3160
  %409 = or i8 %408, 48, !dbg !3160
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !3160
  store i8 %409, i8* %410, align 1, !dbg !3160, !tbaa !1124
  br label %411, !dbg !3160

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %412, metadata !2781, metadata !DIExpression()), !dbg !2844
  %413 = icmp ult i64 %412, %129, !dbg !3164
  br i1 %413, label %414, label %419, !dbg !3167

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !3164
  %416 = and i8 %415, 7, !dbg !3164
  %417 = or i8 %416, 48, !dbg !3164
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !3164
  store i8 %417, i8* %418, align 1, !dbg !3164, !tbaa !1124
  br label %419, !dbg !3164

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %420, metadata !2781, metadata !DIExpression()), !dbg !2844
  %421 = and i8 %374, 7, !dbg !3168
  %422 = or i8 %421, 48, !dbg !3169
  call void @llvm.dbg.value(metadata i8 %422, metadata !2791, metadata !DIExpression()), !dbg !2930
  br label %432, !dbg !3170

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !3171
  %425 = icmp eq i8 %424, 0, !dbg !3171
  br i1 %425, label %432, label %426, !dbg !3172

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !3173
  br i1 %427, label %428, label %430, !dbg !3176

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !3173
  store i8 92, i8* %429, align 1, !dbg !3173, !tbaa !1124
  br label %430, !dbg !3173

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %431, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8 0, metadata !2796, metadata !DIExpression()), !dbg !2913
  br label %432, !dbg !3177

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !3178
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2852
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !3179
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !3180
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !3182
  call void @llvm.dbg.value(metadata i8 %437, metadata !2797, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 %436, metadata !2796, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 %435, metadata !2791, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %434, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %433, metadata !2781, metadata !DIExpression()), !dbg !2844
  %438 = add i64 %371, 1, !dbg !3183
  %439 = icmp ugt i64 %369, %438, !dbg !3185
  br i1 %439, label %440, label %562, !dbg !3186

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !3187
  %442 = icmp ne i8 %441, 0, !dbg !3187
  %443 = and i8 %437, 1, !dbg !3187
  %444 = icmp eq i8 %443, 0, !dbg !3187
  %445 = and i1 %442, %444, !dbg !3187
  br i1 %445, label %446, label %457, !dbg !3187

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !3190
  br i1 %447, label %448, label %450, !dbg !3194

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !3190
  store i8 39, i8* %449, align 1, !dbg !3190, !tbaa !1124
  br label %450, !dbg !3190

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %451, metadata !2781, metadata !DIExpression()), !dbg !2844
  %452 = icmp ult i64 %451, %129, !dbg !3195
  br i1 %452, label %453, label %455, !dbg !3198

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !3195
  store i8 39, i8* %454, align 1, !dbg !3195, !tbaa !1124
  br label %455, !dbg !3195

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %456, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8 0, metadata !2788, metadata !DIExpression()), !dbg !2852
  br label %457, !dbg !3199

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !3200
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2903
  call void @llvm.dbg.value(metadata i8 %459, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %458, metadata !2781, metadata !DIExpression()), !dbg !2844
  %460 = icmp ult i64 %458, %129, !dbg !3201
  br i1 %460, label %461, label %463, !dbg !3203

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !3201
  store i8 %435, i8* %462, align 1, !dbg !3201, !tbaa !1124
  br label %463, !dbg !3201

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %464, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %438, metadata !2780, metadata !DIExpression()), !dbg !2904
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !3204
  %466 = load i8, i8* %465, align 1, !dbg !3204, !tbaa !1124
  call void @llvm.dbg.value(metadata i8 %466, metadata !2791, metadata !DIExpression()), !dbg !2930
  br label %370, !dbg !3205, !llvm.loop !3206

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !3209
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2903
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2845
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !3210
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2903
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2903
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2928
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2928
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2928
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 %476, metadata !2798, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8 %475, metadata !2797, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 %155, metadata !2796, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 %474, metadata !2791, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %473, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %472, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %471, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %470, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %469, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %468, metadata !2780, metadata !DIExpression()), !dbg !2904
  br i1 %105, label %489, label %478, !dbg !3211

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
  br i1 %112, label %490, label %512, !dbg !3213

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !3214

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
  %501 = lshr i8 %494, 5, !dbg !3215
  %502 = zext i8 %501 to i64, !dbg !3215
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !3216
  %504 = load i32, i32* %503, align 4, !dbg !3216, !tbaa !1038
  %505 = and i8 %494, 31, !dbg !3217
  %506 = zext i8 %505 to i32, !dbg !3217
  %507 = shl i32 1, %506, !dbg !3218
  %508 = and i32 %504, %507, !dbg !3218
  %509 = icmp eq i32 %508, 0, !dbg !3218
  %510 = icmp eq i8 %155, 0, !dbg !3219
  %511 = and i1 %510, %509, !dbg !3220
  br i1 %511, label %562, label %524, !dbg !3220

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
  %523 = icmp eq i8 %155, 0, !dbg !3219
  br i1 %523, label %562, label %524, !dbg !3221

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !3222
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2903
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2845
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !3210
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2852
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2853
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !3223
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2928
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 %532, metadata !2798, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8 %531, metadata !2791, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %530, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %529, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %528, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %527, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %526, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %525, metadata !2780, metadata !DIExpression()), !dbg !2904
  br i1 %110, label %534, label %661, !dbg !3226

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2797, metadata !DIExpression()), !dbg !2914
  %535 = and i8 %529, 1, !dbg !3228
  %536 = icmp eq i8 %535, 0, !dbg !3228
  %537 = and i1 %114, %536, !dbg !3228
  br i1 %537, label %538, label %554, !dbg !3228

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !3230
  br i1 %539, label %540, label %542, !dbg !3234

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !3230
  store i8 39, i8* %541, align 1, !dbg !3230, !tbaa !1124
  br label %542, !dbg !3230

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %543, metadata !2781, metadata !DIExpression()), !dbg !2844
  %544 = icmp ult i64 %543, %533, !dbg !3235
  br i1 %544, label %545, label %547, !dbg !3238

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !3235
  store i8 36, i8* %546, align 1, !dbg !3235, !tbaa !1124
  br label %547, !dbg !3235

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !3238
  call void @llvm.dbg.value(metadata i64 %548, metadata !2781, metadata !DIExpression()), !dbg !2844
  %549 = icmp ult i64 %548, %533, !dbg !3239
  br i1 %549, label %550, label %552, !dbg !3242

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !3239
  store i8 39, i8* %551, align 1, !dbg !3239, !tbaa !1124
  br label %552, !dbg !3239

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %553, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8 1, metadata !2788, metadata !DIExpression()), !dbg !2852
  br label %554, !dbg !3243

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !3200
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2903
  call void @llvm.dbg.value(metadata i8 %556, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %555, metadata !2781, metadata !DIExpression()), !dbg !2844
  %557 = icmp ult i64 %555, %533, !dbg !3244
  br i1 %557, label %558, label %560, !dbg !3247

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !3244
  store i8 92, i8* %559, align 1, !dbg !3244, !tbaa !1124
  br label %560, !dbg !3244

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !3247
  call void @llvm.dbg.value(metadata i64 %561, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %572, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 %571, metadata !2798, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8 %570, metadata !2797, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 %569, metadata !2791, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %568, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %567, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %566, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %565, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %564, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %563, metadata !2780, metadata !DIExpression()), !dbg !2904
  br label %589, !dbg !3248

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !3222
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2903
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2845
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !3210
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2852
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2853
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !3251
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2928
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2928
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 %571, metadata !2798, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8 %570, metadata !2797, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 %569, metadata !2791, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %568, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %567, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %566, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %565, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %564, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %563, metadata !2780, metadata !DIExpression()), !dbg !2904
  %573 = and i8 %567, 1, !dbg !3248
  %574 = icmp ne i8 %573, 0, !dbg !3248
  %575 = and i8 %570, 1, !dbg !3248
  %576 = icmp eq i8 %575, 0, !dbg !3248
  %577 = and i1 %574, %576, !dbg !3248
  br i1 %577, label %578, label %589, !dbg !3248

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !3252
  br i1 %579, label %580, label %582, !dbg !3256

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3252
  store i8 39, i8* %581, align 1, !dbg !3252, !tbaa !1124
  br label %582, !dbg !3252

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %583, metadata !2781, metadata !DIExpression()), !dbg !2844
  %584 = icmp ult i64 %583, %572, !dbg !3257
  br i1 %584, label %585, label %587, !dbg !3260

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !3257
  store i8 39, i8* %586, align 1, !dbg !3257, !tbaa !1124
  br label %587, !dbg !3257

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !3260
  call void @llvm.dbg.value(metadata i64 %588, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8 0, metadata !2788, metadata !DIExpression()), !dbg !2852
  br label %589, !dbg !3261

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !3200
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2903
  call void @llvm.dbg.value(metadata i8 %598, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %597, metadata !2781, metadata !DIExpression()), !dbg !2844
  %599 = icmp ult i64 %597, %590, !dbg !3262
  br i1 %599, label %600, label %602, !dbg !3265

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !3262
  store i8 %592, i8* %601, align 1, !dbg !3262, !tbaa !1124
  br label %602, !dbg !3262

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %603, metadata !2781, metadata !DIExpression()), !dbg !2844
  %604 = and i8 %591, 1, !dbg !3266
  %605 = icmp eq i8 %604, 0, !dbg !3266
  %606 = select i1 %605, i8 0, i8 %128, !dbg !3268
  call void @llvm.dbg.value(metadata i8 %606, metadata !2790, metadata !DIExpression()), !dbg !2854
  br label %607, !dbg !3269

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !3222
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2903
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2845
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !3210
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2852
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2903
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2854
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 %614, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8 %613, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %612, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %611, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %610, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %609, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %608, metadata !2780, metadata !DIExpression()), !dbg !2904
  %616 = add i64 %608, 1, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %616, metadata !2780, metadata !DIExpression()), !dbg !2904
  br label %121, !dbg !3271, !llvm.loop !3272

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %618, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %618, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %125, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %125, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %126, metadata !2788, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %127, metadata !2789, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8 %128, metadata !2790, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  %619 = icmp eq i64 %123, 0, !dbg !3274
  %620 = and i1 %114, %619, !dbg !3276
  %621 = xor i1 %620, true, !dbg !3276
  %622 = or i1 %110, %621, !dbg !3276
  br i1 %622, label %623, label %661, !dbg !3276

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !3277
  %625 = xor i1 %624, true, !dbg !3277
  %626 = and i8 %127, 1, !dbg !3279
  %627 = icmp eq i8 %626, 0, !dbg !3279
  %628 = or i1 %627, %625, !dbg !3277
  br i1 %628, label %638, label %629, !dbg !3277

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !3280
  %631 = icmp eq i8 %630, 0, !dbg !3280
  br i1 %631, label %634, label %632, !dbg !3283

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %618, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %618, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %618, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %618, metadata !2774, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %95, metadata !2778, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %96, metadata !2779, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %124, metadata !2782, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %125, metadata !2774, metadata !DIExpression()), !dbg !2838
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !3284
  br label %671, !dbg !3285

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !3286
  %636 = icmp ne i64 %124, 0, !dbg !3288
  %637 = and i1 %636, %635, !dbg !3289
  br i1 %637, label %27, label %638, !dbg !3289

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %129, metadata !2772, metadata !DIExpression()), !dbg !2836
  %639 = icmp ne i8* %98, null, !dbg !3290
  %640 = and i1 %639, %110, !dbg !3292
  br i1 %640, label %641, label %656, !dbg !3292

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %123, metadata !2781, metadata !DIExpression()), !dbg !2844
  %642 = load i8, i8* %98, align 1, !dbg !3293, !tbaa !1124
  %643 = icmp eq i8 %642, 0, !dbg !3296
  br i1 %643, label %656, label %644, !dbg !3296

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %647, metadata !2781, metadata !DIExpression()), !dbg !2844
  %648 = icmp ult i64 %647, %129, !dbg !3297
  br i1 %648, label %649, label %651, !dbg !3300

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !3297
  store i8 %645, i8* %650, align 1, !dbg !3297, !tbaa !1124
  br label %651, !dbg !3297

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !3300
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !3301
  call void @llvm.dbg.value(metadata i8* %653, metadata !2783, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %652, metadata !2781, metadata !DIExpression()), !dbg !2844
  %654 = load i8, i8* %653, align 1, !dbg !3293, !tbaa !1124
  %655 = icmp eq i8 %654, 0, !dbg !3296
  br i1 %655, label %656, label %644, !dbg !3296, !llvm.loop !3302

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2844
  call void @llvm.dbg.value(metadata i64 %657, metadata !2781, metadata !DIExpression()), !dbg !2844
  %658 = icmp ult i64 %657, %129, !dbg !3304
  br i1 %658, label %659, label %671, !dbg !3306

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !3307
  store i8 0, i8* %660, align 1, !dbg !3308, !tbaa !1124
  br label %671, !dbg !3307

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %663, metadata !2774, metadata !DIExpression()), !dbg !2838
  %665 = icmp ne i32 %662, 2, !dbg !3309
  %666 = icmp eq i8 %102, 0, !dbg !3311
  %667 = or i1 %665, %666, !dbg !3312
  call void @llvm.dbg.value(metadata i32 4, metadata !2775, metadata !DIExpression()), !dbg !2839
  %668 = select i1 %667, i32 %662, i32 4, !dbg !3312
  call void @llvm.dbg.value(metadata i32 %668, metadata !2775, metadata !DIExpression()), !dbg !2839
  %669 = and i32 %5, -3, !dbg !3313
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !3314
  br label %671, !dbg !3315

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !3316
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !3317 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3321, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 %1, metadata !3322, metadata !DIExpression()), !dbg !3326
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %3, metadata !3323, metadata !DIExpression()), !dbg !3328
  %4 = icmp eq i8* %3, %0, !dbg !3329
  br i1 %4, label %5, label %71, !dbg !3331

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !3332
  call void @llvm.dbg.value(metadata i8* %6, metadata !3324, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8* %6, metadata !3334, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8* null, metadata !3340, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8 85, metadata !3341, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8 84, metadata !3342, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8 70, metadata !3343, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 45, metadata !3344, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8 56, metadata !3345, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 0, metadata !3346, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i8 0, metadata !3347, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 0, metadata !3348, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8 0, metadata !3349, metadata !DIExpression()), !dbg !3362
  %7 = load i8, i8* %6, align 1, !dbg !3363, !tbaa !1124
  %8 = and i8 %7, -33, !dbg !3363
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3363

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3365, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i8* null, metadata !3370, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8 84, metadata !3371, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8 70, metadata !3372, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8 45, metadata !3373, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8 56, metadata !3374, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i8 0, metadata !3375, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i8 0, metadata !3376, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8 0, metadata !3377, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i8 0, metadata !3378, metadata !DIExpression()), !dbg !3391
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3392
  %11 = load i8, i8* %10, align 1, !dbg !3392, !tbaa !1124
  %12 = and i8 %11, -33, !dbg !3392
  %13 = icmp eq i8 %12, 84, !dbg !3392
  br i1 %13, label %14, label %68, !dbg !3392

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3394, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i8* null, metadata !3399, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i8 70, metadata !3400, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8 45, metadata !3401, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i8 56, metadata !3402, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8 0, metadata !3403, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i8 0, metadata !3404, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8 0, metadata !3405, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8 0, metadata !3406, metadata !DIExpression()), !dbg !3418
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3419
  %16 = load i8, i8* %15, align 1, !dbg !3419, !tbaa !1124
  %17 = and i8 %16, -33, !dbg !3419
  %18 = icmp eq i8 %17, 70, !dbg !3419
  br i1 %18, label %19, label %68, !dbg !3419

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3421, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i8* null, metadata !3426, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8 45, metadata !3427, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8 56, metadata !3428, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i8 0, metadata !3429, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8 0, metadata !3430, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i8 0, metadata !3431, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8 0, metadata !3432, metadata !DIExpression()), !dbg !3443
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3444
  %21 = load i8, i8* %20, align 1, !dbg !3444, !tbaa !1124
  %22 = icmp eq i8 %21, 45, !dbg !3444
  br i1 %22, label %23, label %68, !dbg !3446

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3447, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i8* null, metadata !3452, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8 56, metadata !3453, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8 0, metadata !3454, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8 0, metadata !3455, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i8 0, metadata !3456, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8 0, metadata !3457, metadata !DIExpression()), !dbg !3467
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3468
  %25 = load i8, i8* %24, align 1, !dbg !3468, !tbaa !1124
  %26 = icmp eq i8 %25, 56, !dbg !3468
  br i1 %26, label %27, label %68, !dbg !3470

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3471, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8* null, metadata !3476, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8 0, metadata !3477, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 0, metadata !3478, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8 0, metadata !3479, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i8 0, metadata !3480, metadata !DIExpression()), !dbg !3489
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3490
  %29 = load i8, i8* %28, align 1, !dbg !3490, !tbaa !1124
  %30 = icmp eq i8 %29, 0, !dbg !3490
  br i1 %30, label %31, label %68, !dbg !3492

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3493, !tbaa !1124
  %33 = icmp eq i8 %32, 96, !dbg !3494
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.117, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.118, i64 0, i64 0), !dbg !3493
  br label %71, !dbg !3495

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3365, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8* null, metadata !3370, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i8 66, metadata !3371, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8 49, metadata !3372, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i8 56, metadata !3373, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i8 48, metadata !3374, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 51, metadata !3375, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 48, metadata !3376, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i8 0, metadata !3377, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i8 0, metadata !3378, metadata !DIExpression()), !dbg !3508
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3509
  %37 = load i8, i8* %36, align 1, !dbg !3509, !tbaa !1124
  %38 = and i8 %37, -33, !dbg !3509
  %39 = icmp eq i8 %38, 66, !dbg !3509
  br i1 %39, label %40, label %68, !dbg !3509

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3394, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8* null, metadata !3399, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i8 49, metadata !3400, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i8 56, metadata !3401, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8 48, metadata !3402, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8 51, metadata !3403, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i8 48, metadata !3404, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i8 0, metadata !3405, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8 0, metadata !3406, metadata !DIExpression()), !dbg !3519
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3520
  %42 = load i8, i8* %41, align 1, !dbg !3520, !tbaa !1124
  %43 = icmp eq i8 %42, 49, !dbg !3520
  br i1 %43, label %44, label %68, !dbg !3521

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3421, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8* null, metadata !3426, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 56, metadata !3427, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8 48, metadata !3428, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i8 51, metadata !3429, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i8 48, metadata !3430, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i8 0, metadata !3431, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i8 0, metadata !3432, metadata !DIExpression()), !dbg !3530
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3531
  %46 = load i8, i8* %45, align 1, !dbg !3531, !tbaa !1124
  %47 = icmp eq i8 %46, 56, !dbg !3531
  br i1 %47, label %48, label %68, !dbg !3532

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3447, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8* null, metadata !3452, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8 48, metadata !3453, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i8 51, metadata !3454, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8 48, metadata !3455, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8 0, metadata !3456, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8 0, metadata !3457, metadata !DIExpression()), !dbg !3540
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3541
  %50 = load i8, i8* %49, align 1, !dbg !3541, !tbaa !1124
  %51 = icmp eq i8 %50, 48, !dbg !3541
  br i1 %51, label %52, label %68, !dbg !3542

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3471, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i8* null, metadata !3476, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 51, metadata !3477, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i8 48, metadata !3478, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8 0, metadata !3479, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i8 0, metadata !3480, metadata !DIExpression()), !dbg !3549
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3550
  %54 = load i8, i8* %53, align 1, !dbg !3550, !tbaa !1124
  %55 = icmp eq i8 %54, 51, !dbg !3550
  br i1 %55, label %56, label %68, !dbg !3551

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3552, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i8* null, metadata !3557, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i8 48, metadata !3558, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8 0, metadata !3559, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i8 0, metadata !3560, metadata !DIExpression()), !dbg !3568
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3569
  %58 = load i8, i8* %57, align 1, !dbg !3569, !tbaa !1124
  %59 = icmp eq i8 %58, 48, !dbg !3569
  br i1 %59, label %60, label %68, !dbg !3571

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3572, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i8* null, metadata !3577, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i8 0, metadata !3578, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i8 0, metadata !3579, metadata !DIExpression()), !dbg !3586
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3587
  %62 = load i8, i8* %61, align 1, !dbg !3587, !tbaa !1124
  %63 = icmp eq i8 %62, 0, !dbg !3587
  br i1 %63, label %64, label %68, !dbg !3589

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3590, !tbaa !1124
  %66 = icmp eq i8 %65, 96, !dbg !3591
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.119, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.120, i64 0, i64 0), !dbg !3590
  br label %71, !dbg !3592

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3593
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), !dbg !3594
  br label %71, !dbg !3595

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3596
  ret i8* %72, !dbg !3597
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3598 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3602, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %1, metadata !3603, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3604, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i8* %0, metadata !3608, metadata !DIExpression()) #10, !dbg !3621
  call void @llvm.dbg.value(metadata i64 %1, metadata !3613, metadata !DIExpression()) #10, !dbg !3623
  call void @llvm.dbg.value(metadata i64* null, metadata !3614, metadata !DIExpression()) #10, !dbg !3624
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3615, metadata !DIExpression()) #10, !dbg !3625
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3626
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3626
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3616, metadata !DIExpression()) #10, !dbg !3627
  %6 = tail call i32* @__errno_location() #17, !dbg !3628
  %7 = load i32, i32* %6, align 4, !dbg !3628, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %7, metadata !3617, metadata !DIExpression()) #10, !dbg !3629
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3630
  %9 = load i32, i32* %8, align 4, !dbg !3630, !tbaa !2704
  %10 = or i32 %9, 1, !dbg !3631
  call void @llvm.dbg.value(metadata i32 %10, metadata !3618, metadata !DIExpression()) #10, !dbg !3632
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3633
  %12 = load i32, i32* %11, align 8, !dbg !3633, !tbaa !2645
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3634
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3635
  %15 = load i8*, i8** %14, align 8, !dbg !3635, !tbaa !2730
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3636
  %17 = load i8*, i8** %16, align 8, !dbg !3636, !tbaa !2733
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !3637
  %19 = add i64 %18, 1, !dbg !3638
  call void @llvm.dbg.value(metadata i64 %19, metadata !3619, metadata !DIExpression()) #10, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %19, metadata !3640, metadata !DIExpression()) #10, !dbg !3645
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3647
  call void @llvm.dbg.value(metadata i8* %20, metadata !3620, metadata !DIExpression()) #10, !dbg !3648
  %21 = load i32, i32* %11, align 8, !dbg !3649, !tbaa !2645
  %22 = load i8*, i8** %14, align 8, !dbg !3650, !tbaa !2730
  %23 = load i8*, i8** %16, align 8, !dbg !3651, !tbaa !2733
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !3652
  store i32 %7, i32* %6, align 4, !dbg !3653, !tbaa !1038
  ret i8* %20, !dbg !3654
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3609 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3608, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %1, metadata !3613, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64* %2, metadata !3614, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3615, metadata !DIExpression()), !dbg !3658
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3659
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3659
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3616, metadata !DIExpression()), !dbg !3660
  %7 = tail call i32* @__errno_location() #17, !dbg !3661
  %8 = load i32, i32* %7, align 4, !dbg !3661, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %8, metadata !3617, metadata !DIExpression()), !dbg !3662
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3663
  %10 = load i32, i32* %9, align 4, !dbg !3663, !tbaa !2704
  %11 = icmp ne i64* %2, null, !dbg !3664
  %12 = xor i1 %11, true, !dbg !3664
  %13 = zext i1 %12 to i32, !dbg !3664
  %14 = or i32 %10, %13, !dbg !3665
  call void @llvm.dbg.value(metadata i32 %14, metadata !3618, metadata !DIExpression()), !dbg !3666
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3667
  %16 = load i32, i32* %15, align 8, !dbg !3667, !tbaa !2645
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3668
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3669
  %19 = load i8*, i8** %18, align 8, !dbg !3669, !tbaa !2730
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3670
  %21 = load i8*, i8** %20, align 8, !dbg !3670, !tbaa !2733
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3671
  %23 = add i64 %22, 1, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %23, metadata !3619, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %23, metadata !3640, metadata !DIExpression()) #10, !dbg !3674
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %24, metadata !3620, metadata !DIExpression()), !dbg !3677
  %25 = load i32, i32* %15, align 8, !dbg !3678, !tbaa !2645
  %26 = load i8*, i8** %18, align 8, !dbg !3679, !tbaa !2730
  %27 = load i8*, i8** %20, align 8, !dbg !3680, !tbaa !2733
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3681
  store i32 %8, i32* %7, align 4, !dbg !3682, !tbaa !1038
  br i1 %11, label %29, label %30, !dbg !3683

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3684, !tbaa !1096
  br label %30, !dbg !3686

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3687
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !3688 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3692, !tbaa !830
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3690, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i32 1, metadata !3691, metadata !DIExpression()), !dbg !3694
  %2 = load i32, i32* @nslots, align 4, !dbg !3695, !tbaa !1038
  %3 = icmp sgt i32 %2, 1, !dbg !3698
  br i1 %3, label %4, label %12, !dbg !3699

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3691, metadata !DIExpression()), !dbg !3694
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3700
  %7 = load i8*, i8** %6, align 8, !dbg !3700, !tbaa !3701
  tail call void @free(i8* %7) #10, !dbg !3703
  %8 = add nuw nsw i64 %5, 1, !dbg !3704
  call void @llvm.dbg.value(metadata i32 undef, metadata !3691, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3694
  %9 = load i32, i32* @nslots, align 4, !dbg !3695, !tbaa !1038
  %10 = sext i32 %9 to i64, !dbg !3698
  %11 = icmp slt i64 %8, %10, !dbg !3698
  br i1 %11, label %4, label %12, !dbg !3699, !llvm.loop !3705

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3707
  %14 = load i8*, i8** %13, align 8, !dbg !3707, !tbaa !3701
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3709
  br i1 %15, label %17, label %16, !dbg !3710

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !3711
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3713, !tbaa !3714
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3715, !tbaa !3701
  br label %17, !dbg !3716

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3717
  br i1 %18, label %21, label %19, !dbg !3719

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3720
  tail call void @free(i8* %20) #10, !dbg !3722
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3723, !tbaa !830
  br label %21, !dbg !3724

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3725, !tbaa !1038
  ret void, !dbg !3726
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !3727 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3731, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i8* %1, metadata !3732, metadata !DIExpression()), !dbg !3734
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3735
  ret i8* %3, !dbg !3736
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3741, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i8* %1, metadata !3742, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %2, metadata !3743, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3744, metadata !DIExpression()), !dbg !3759
  %5 = tail call i32* @__errno_location() #17, !dbg !3760
  %6 = load i32, i32* %5, align 4, !dbg !3760, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %6, metadata !3745, metadata !DIExpression()), !dbg !3761
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3762, !tbaa !830
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3746, metadata !DIExpression()), !dbg !3763
  %8 = icmp slt i32 %0, 0, !dbg !3764
  br i1 %8, label %9, label %10, !dbg !3766

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3767
  unreachable, !dbg !3767

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3768, !tbaa !1038
  %12 = icmp sgt i32 %11, %0, !dbg !3769
  br i1 %12, label %34, label %13, !dbg !3770

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3771
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3750, metadata !DIExpression()), !dbg !3772
  %15 = icmp eq i32 %0, 2147483647, !dbg !3773
  br i1 %15, label %16, label %17, !dbg !3775

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3776
  unreachable, !dbg !3776

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3777
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3777
  %20 = add nsw i32 %0, 1, !dbg !3778
  %21 = sext i32 %20 to i64, !dbg !3779
  %22 = shl nsw i64 %21, 4, !dbg !3780
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3781
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3781
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3746, metadata !DIExpression()), !dbg !3763
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3782, !tbaa !830
  br i1 %14, label %25, label %26, !dbg !3783

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3784, !tbaa.struct !3786
  br label %26, !dbg !3787

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3788, !tbaa !1038
  %28 = sext i32 %27 to i64, !dbg !3789
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3789
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3790
  %31 = sub nsw i32 %20, %27, !dbg !3791
  %32 = sext i32 %31 to i64, !dbg !3792
  %33 = shl nsw i64 %32, 4, !dbg !3793
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3790
  store i32 %20, i32* @nslots, align 4, !dbg !3794, !tbaa !1038
  br label %34, !dbg !3795

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3796
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3746, metadata !DIExpression()), !dbg !3763
  %36 = sext i32 %0 to i64, !dbg !3797
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3798
  %38 = load i64, i64* %37, align 8, !dbg !3798, !tbaa !3714
  call void @llvm.dbg.value(metadata i64 %38, metadata !3751, metadata !DIExpression()), !dbg !3799
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3800
  %40 = load i8*, i8** %39, align 8, !dbg !3800, !tbaa !3701
  call void @llvm.dbg.value(metadata i8* %40, metadata !3753, metadata !DIExpression()), !dbg !3801
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3802
  %42 = load i32, i32* %41, align 4, !dbg !3802, !tbaa !2704
  %43 = or i32 %42, 1, !dbg !3803
  call void @llvm.dbg.value(metadata i32 %43, metadata !3754, metadata !DIExpression()), !dbg !3804
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3805
  %45 = load i32, i32* %44, align 8, !dbg !3805, !tbaa !2645
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3806
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3807
  %48 = load i8*, i8** %47, align 8, !dbg !3807, !tbaa !2730
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3808
  %50 = load i8*, i8** %49, align 8, !dbg !3808, !tbaa !2733
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %51, metadata !3755, metadata !DIExpression()), !dbg !3810
  %52 = icmp ugt i64 %38, %51, !dbg !3811
  br i1 %52, label %63, label %53, !dbg !3813

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3814
  call void @llvm.dbg.value(metadata i64 %54, metadata !3751, metadata !DIExpression()), !dbg !3799
  store i64 %54, i64* %37, align 8, !dbg !3816, !tbaa !3714
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3817
  br i1 %55, label %57, label %56, !dbg !3819

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3820
  br label %57, !dbg !3820

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3640, metadata !DIExpression()) #10, !dbg !3821
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %58, metadata !3753, metadata !DIExpression()), !dbg !3801
  store i8* %58, i8** %39, align 8, !dbg !3824, !tbaa !3701
  %59 = load i32, i32* %44, align 8, !dbg !3825, !tbaa !2645
  %60 = load i8*, i8** %47, align 8, !dbg !3826, !tbaa !2730
  %61 = load i8*, i8** %49, align 8, !dbg !3827, !tbaa !2733
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3828
  br label %63, !dbg !3829

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3830
  call void @llvm.dbg.value(metadata i8* %64, metadata !3753, metadata !DIExpression()), !dbg !3801
  store i32 %6, i32* %5, align 4, !dbg !3831, !tbaa !1038
  ret i8* %64, !dbg !3832
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3837, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i8* %1, metadata !3838, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i64 %2, metadata !3839, metadata !DIExpression()), !dbg !3842
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3843
  ret i8* %4, !dbg !3844
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3845 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3849, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i32 0, metadata !3731, metadata !DIExpression()) #10, !dbg !3851
  call void @llvm.dbg.value(metadata i8* %0, metadata !3732, metadata !DIExpression()) #10, !dbg !3853
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3854
  ret i8* %2, !dbg !3855
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3856 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3860, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %1, metadata !3861, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i32 0, metadata !3837, metadata !DIExpression()) #10, !dbg !3864
  call void @llvm.dbg.value(metadata i8* %0, metadata !3838, metadata !DIExpression()) #10, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %1, metadata !3839, metadata !DIExpression()) #10, !dbg !3867
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3868
  ret i8* %3, !dbg !3869
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3870 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3874, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 %1, metadata !3875, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i8* %2, metadata !3876, metadata !DIExpression()), !dbg !3880
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3881
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3881
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3877, metadata !DIExpression(DW_OP_deref)), !dbg !3882
  call void @llvm.dbg.value(metadata i32 %1, metadata !3883, metadata !DIExpression()) #10, !dbg !3889
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !3891, !alias.scope !3892
  %6 = icmp eq i32 %1, 10, !dbg !3895
  br i1 %6, label %7, label %8, !dbg !3897

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3898, !noalias !3892
  unreachable, !dbg !3898

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3899
  store i32 %1, i32* %9, align 8, !dbg !3900, !tbaa !2645, !alias.scope !3892
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3877, metadata !DIExpression(DW_OP_deref)), !dbg !3882
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3888, metadata !DIExpression(DW_OP_deref)), !dbg !3891
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3901
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3902
  ret i8* %10, !dbg !3903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3904 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3908, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i32 %1, metadata !3909, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8* %2, metadata !3910, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 %3, metadata !3911, metadata !DIExpression()), !dbg !3916
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3917
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3917
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3912, metadata !DIExpression(DW_OP_deref)), !dbg !3918
  call void @llvm.dbg.value(metadata i32 %1, metadata !3883, metadata !DIExpression()) #10, !dbg !3919
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !3921, !alias.scope !3922
  %7 = icmp eq i32 %1, 10, !dbg !3925
  br i1 %7, label %8, label %9, !dbg !3926

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3927, !noalias !3922
  unreachable, !dbg !3927

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3928
  store i32 %1, i32* %10, align 8, !dbg !3929, !tbaa !2645, !alias.scope !3922
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3912, metadata !DIExpression(DW_OP_deref)), !dbg !3918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3888, metadata !DIExpression(DW_OP_deref)), !dbg !3921
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3930
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3931
  ret i8* %11, !dbg !3932
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3933 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3937, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i8* %1, metadata !3938, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 0, metadata !3874, metadata !DIExpression()) #10, !dbg !3941
  call void @llvm.dbg.value(metadata i32 %0, metadata !3875, metadata !DIExpression()) #10, !dbg !3943
  call void @llvm.dbg.value(metadata i8* %1, metadata !3876, metadata !DIExpression()) #10, !dbg !3944
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3945
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3945
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3877, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %0, metadata !3883, metadata !DIExpression()) #10, !dbg !3947
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !3949, !alias.scope !3950
  %5 = icmp eq i32 %0, 10, !dbg !3953
  br i1 %5, label %6, label %7, !dbg !3954

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3955, !noalias !3950
  unreachable, !dbg !3955

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3956
  store i32 %0, i32* %8, align 8, !dbg !3957, !tbaa !2645, !alias.scope !3950
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3877, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3946
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3888, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3949
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3958
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3959
  ret i8* %9, !dbg !3960
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3961 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3965, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i8* %1, metadata !3966, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i64 %2, metadata !3967, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()) #10, !dbg !3971
  call void @llvm.dbg.value(metadata i32 %0, metadata !3909, metadata !DIExpression()) #10, !dbg !3973
  call void @llvm.dbg.value(metadata i8* %1, metadata !3910, metadata !DIExpression()) #10, !dbg !3974
  call void @llvm.dbg.value(metadata i64 %2, metadata !3911, metadata !DIExpression()) #10, !dbg !3975
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3976
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3976
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3912, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3977
  call void @llvm.dbg.value(metadata i32 %0, metadata !3883, metadata !DIExpression()) #10, !dbg !3978
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !3980, !alias.scope !3981
  %6 = icmp eq i32 %0, 10, !dbg !3984
  br i1 %6, label %7, label %8, !dbg !3985

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3986, !noalias !3981
  unreachable, !dbg !3986

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3987
  store i32 %0, i32* %9, align 8, !dbg !3988, !tbaa !2645, !alias.scope !3981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3912, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3977
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3888, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3980
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !3989
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3990
  ret i8* %10, !dbg !3991
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3992 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3996, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 %1, metadata !3997, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i8 %2, metadata !3998, metadata !DIExpression()), !dbg !4002
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4003
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4003
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4004, !tbaa.struct !4005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3999, metadata !DIExpression(DW_OP_deref)), !dbg !4006
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2664, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i8 %2, metadata !2665, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 1, metadata !2666, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8 %2, metadata !2667, metadata !DIExpression()), !dbg !4011
  %6 = lshr i8 %2, 5, !dbg !4012
  %7 = zext i8 %6 to i64, !dbg !4012
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4013
  call void @llvm.dbg.value(metadata i32* %8, metadata !2668, metadata !DIExpression()), !dbg !4014
  %9 = and i8 %2, 31, !dbg !4015
  %10 = zext i8 %9 to i32, !dbg !4015
  call void @llvm.dbg.value(metadata i32 %10, metadata !2670, metadata !DIExpression()), !dbg !4016
  %11 = load i32, i32* %8, align 4, !dbg !4017, !tbaa !1038
  %12 = lshr i32 %11, %10, !dbg !4018
  %13 = and i32 %12, 1, !dbg !4019
  call void @llvm.dbg.value(metadata i32 %13, metadata !2671, metadata !DIExpression()), !dbg !4020
  %14 = xor i32 %13, 1, !dbg !4021
  %15 = shl i32 %14, %10, !dbg !4022
  %16 = xor i32 %15, %11, !dbg !4023
  store i32 %16, i32* %8, align 4, !dbg !4023, !tbaa !1038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3999, metadata !DIExpression(DW_OP_deref)), !dbg !4006
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4024
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4025
  ret i8* %17, !dbg !4026
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !4027 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4031, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i8 %1, metadata !4032, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i8* %0, metadata !3996, metadata !DIExpression()) #10, !dbg !4035
  call void @llvm.dbg.value(metadata i64 -1, metadata !3997, metadata !DIExpression()) #10, !dbg !4037
  call void @llvm.dbg.value(metadata i8 %1, metadata !3998, metadata !DIExpression()) #10, !dbg !4038
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4039
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !4039
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !4040, !tbaa.struct !4005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3999, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2664, metadata !DIExpression()) #10, !dbg !4042
  call void @llvm.dbg.value(metadata i8 %1, metadata !2665, metadata !DIExpression()) #10, !dbg !4044
  call void @llvm.dbg.value(metadata i32 1, metadata !2666, metadata !DIExpression()) #10, !dbg !4045
  call void @llvm.dbg.value(metadata i8 %1, metadata !2667, metadata !DIExpression()) #10, !dbg !4046
  %5 = lshr i8 %1, 5, !dbg !4047
  %6 = zext i8 %5 to i64, !dbg !4047
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4048
  call void @llvm.dbg.value(metadata i32* %7, metadata !2668, metadata !DIExpression()) #10, !dbg !4049
  %8 = and i8 %1, 31, !dbg !4050
  %9 = zext i8 %8 to i32, !dbg !4050
  call void @llvm.dbg.value(metadata i32 %9, metadata !2670, metadata !DIExpression()) #10, !dbg !4051
  %10 = load i32, i32* %7, align 4, !dbg !4052, !tbaa !1038
  %11 = lshr i32 %10, %9, !dbg !4053
  %12 = and i32 %11, 1, !dbg !4054
  call void @llvm.dbg.value(metadata i32 %12, metadata !2671, metadata !DIExpression()) #10, !dbg !4055
  %13 = xor i32 %12, 1, !dbg !4056
  %14 = shl i32 %13, %9, !dbg !4057
  %15 = xor i32 %14, %10, !dbg !4058
  store i32 %15, i32* %7, align 4, !dbg !4058, !tbaa !1038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3999, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4041
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !4059
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !4060
  ret i8* %16, !dbg !4061
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !4062 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4064, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i8* %0, metadata !4031, metadata !DIExpression()) #10, !dbg !4066
  call void @llvm.dbg.value(metadata i8 58, metadata !4032, metadata !DIExpression()) #10, !dbg !4068
  call void @llvm.dbg.value(metadata i8* %0, metadata !3996, metadata !DIExpression()) #10, !dbg !4069
  call void @llvm.dbg.value(metadata i64 -1, metadata !3997, metadata !DIExpression()) #10, !dbg !4071
  call void @llvm.dbg.value(metadata i8 58, metadata !3998, metadata !DIExpression()) #10, !dbg !4072
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4073
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !4073
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !4074, !tbaa.struct !4005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3999, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2664, metadata !DIExpression()) #10, !dbg !4076
  call void @llvm.dbg.value(metadata i8 58, metadata !2665, metadata !DIExpression()) #10, !dbg !4078
  call void @llvm.dbg.value(metadata i32 1, metadata !2666, metadata !DIExpression()) #10, !dbg !4079
  call void @llvm.dbg.value(metadata i8 58, metadata !2667, metadata !DIExpression()) #10, !dbg !4080
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4081
  call void @llvm.dbg.value(metadata i32* %4, metadata !2668, metadata !DIExpression()) #10, !dbg !4082
  call void @llvm.dbg.value(metadata i32 26, metadata !2670, metadata !DIExpression()) #10, !dbg !4083
  %5 = load i32, i32* %4, align 4, !dbg !4084, !tbaa !1038
  %6 = or i32 %5, 67108864, !dbg !4085
  store i32 %6, i32* %4, align 4, !dbg !4085, !tbaa !1038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3999, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4075
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !4086
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !4087
  ret i8* %7, !dbg !4088
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !4089 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4091, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %1, metadata !4092, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i8* %0, metadata !3996, metadata !DIExpression()) #10, !dbg !4095
  call void @llvm.dbg.value(metadata i64 %1, metadata !3997, metadata !DIExpression()) #10, !dbg !4097
  call void @llvm.dbg.value(metadata i8 58, metadata !3998, metadata !DIExpression()) #10, !dbg !4098
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4099
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !4099
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !4100, !tbaa.struct !4005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3999, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4101
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2664, metadata !DIExpression()) #10, !dbg !4102
  call void @llvm.dbg.value(metadata i8 58, metadata !2665, metadata !DIExpression()) #10, !dbg !4104
  call void @llvm.dbg.value(metadata i32 1, metadata !2666, metadata !DIExpression()) #10, !dbg !4105
  call void @llvm.dbg.value(metadata i8 58, metadata !2667, metadata !DIExpression()) #10, !dbg !4106
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4107
  call void @llvm.dbg.value(metadata i32* %5, metadata !2668, metadata !DIExpression()) #10, !dbg !4108
  call void @llvm.dbg.value(metadata i32 26, metadata !2670, metadata !DIExpression()) #10, !dbg !4109
  %6 = load i32, i32* %5, align 4, !dbg !4110, !tbaa !1038
  %7 = or i32 %6, 67108864, !dbg !4111
  store i32 %7, i32* %5, align 4, !dbg !4111, !tbaa !1038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3999, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4101
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !4112
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !4113
  ret i8* %8, !dbg !4114
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !4115 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3888, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4121
  call void @llvm.dbg.value(metadata i32 %0, metadata !4117, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i32 %1, metadata !4118, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i8* %2, metadata !4119, metadata !DIExpression()), !dbg !4125
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4126
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4126
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4127
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !4127
  call void @llvm.dbg.value(metadata i32 %1, metadata !3883, metadata !DIExpression()) #10, !dbg !4128
  call void @llvm.dbg.value(metadata i32 0, metadata !3888, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4121
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !4121, !alias.scope !4129
  %8 = icmp eq i32 %1, 10, !dbg !4132
  br i1 %8, label %9, label %10, !dbg !4133

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !4134, !noalias !4129
  unreachable, !dbg !4134

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3888, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4121
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4127
  store i32 %1, i32* %11, align 8, !dbg !4127
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4127
  %13 = bitcast i32* %12 to i8*, !dbg !4127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !4127
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !4127
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4120, metadata !DIExpression(DW_OP_deref)), !dbg !4135
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2664, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i8 58, metadata !2665, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 1, metadata !2666, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i8 58, metadata !2667, metadata !DIExpression()), !dbg !4140
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !4141
  call void @llvm.dbg.value(metadata i32* %14, metadata !2668, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i32 26, metadata !2670, metadata !DIExpression()), !dbg !4143
  %15 = load i32, i32* %14, align 4, !dbg !4144, !tbaa !1038
  %16 = or i32 %15, 67108864, !dbg !4145
  store i32 %16, i32* %14, align 4, !dbg !4145, !tbaa !1038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4120, metadata !DIExpression(DW_OP_deref)), !dbg !4135
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4146
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4147
  ret i8* %17, !dbg !4148
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !4149 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4153, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i8* %1, metadata !4154, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i8* %2, metadata !4155, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i8* %3, metadata !4156, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata i32 %0, metadata !4161, metadata !DIExpression()) #10, !dbg !4171
  call void @llvm.dbg.value(metadata i8* %1, metadata !4166, metadata !DIExpression()) #10, !dbg !4173
  call void @llvm.dbg.value(metadata i8* %2, metadata !4167, metadata !DIExpression()) #10, !dbg !4174
  call void @llvm.dbg.value(metadata i8* %3, metadata !4168, metadata !DIExpression()) #10, !dbg !4175
  call void @llvm.dbg.value(metadata i64 -1, metadata !4169, metadata !DIExpression()) #10, !dbg !4176
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4177
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !4178, !tbaa.struct !4005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4170, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4179
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2712, metadata !DIExpression()) #10, !dbg !4180
  call void @llvm.dbg.value(metadata i8* %1, metadata !2713, metadata !DIExpression()) #10, !dbg !4182
  call void @llvm.dbg.value(metadata i8* %2, metadata !2714, metadata !DIExpression()) #10, !dbg !4183
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2712, metadata !DIExpression()) #10, !dbg !4180
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4184
  store i32 10, i32* %7, align 8, !dbg !4185, !tbaa !2645
  %8 = icmp ne i8* %1, null, !dbg !4186
  %9 = icmp ne i8* %2, null, !dbg !4187
  %10 = and i1 %8, %9, !dbg !4188
  br i1 %10, label %12, label %11, !dbg !4188

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4189
  unreachable, !dbg !4189

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4190
  store i8* %1, i8** %13, align 8, !dbg !4191, !tbaa !2730
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4192
  store i8* %2, i8** %14, align 8, !dbg !4193, !tbaa !2733
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4170, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4179
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !4194
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4195
  ret i8* %15, !dbg !4196
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !4162 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4161, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i8* %1, metadata !4166, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.value(metadata i8* %2, metadata !4167, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i8* %3, metadata !4168, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64 %4, metadata !4169, metadata !DIExpression()), !dbg !4201
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4202
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !4202
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4203, !tbaa.struct !4005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !4170, metadata !DIExpression(DW_OP_deref)), !dbg !4204
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2712, metadata !DIExpression()) #10, !dbg !4205
  call void @llvm.dbg.value(metadata i8* %1, metadata !2713, metadata !DIExpression()) #10, !dbg !4207
  call void @llvm.dbg.value(metadata i8* %2, metadata !2714, metadata !DIExpression()) #10, !dbg !4208
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2712, metadata !DIExpression()) #10, !dbg !4205
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4209
  store i32 10, i32* %8, align 8, !dbg !4210, !tbaa !2645
  %9 = icmp ne i8* %1, null, !dbg !4211
  %10 = icmp ne i8* %2, null, !dbg !4212
  %11 = and i1 %9, %10, !dbg !4213
  br i1 %11, label %13, label %12, !dbg !4213

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !4214
  unreachable, !dbg !4214

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4215
  store i8* %1, i8** %14, align 8, !dbg !4216, !tbaa !2730
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4217
  store i8* %2, i8** %15, align 8, !dbg !4218, !tbaa !2733
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !4170, metadata !DIExpression(DW_OP_deref)), !dbg !4204
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4219
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !4220
  ret i8* %16, !dbg !4221
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !4222 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4226, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i8* %1, metadata !4227, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i8* %2, metadata !4228, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i32 0, metadata !4153, metadata !DIExpression()) #10, !dbg !4232
  call void @llvm.dbg.value(metadata i8* %0, metadata !4154, metadata !DIExpression()) #10, !dbg !4234
  call void @llvm.dbg.value(metadata i8* %1, metadata !4155, metadata !DIExpression()) #10, !dbg !4235
  call void @llvm.dbg.value(metadata i8* %2, metadata !4156, metadata !DIExpression()) #10, !dbg !4236
  call void @llvm.dbg.value(metadata i32 0, metadata !4161, metadata !DIExpression()) #10, !dbg !4237
  call void @llvm.dbg.value(metadata i8* %0, metadata !4166, metadata !DIExpression()) #10, !dbg !4239
  call void @llvm.dbg.value(metadata i8* %1, metadata !4167, metadata !DIExpression()) #10, !dbg !4240
  call void @llvm.dbg.value(metadata i8* %2, metadata !4168, metadata !DIExpression()) #10, !dbg !4241
  call void @llvm.dbg.value(metadata i64 -1, metadata !4169, metadata !DIExpression()) #10, !dbg !4242
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4243
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4243
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !4244, !tbaa.struct !4005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4170, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4245
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2712, metadata !DIExpression()) #10, !dbg !4246
  call void @llvm.dbg.value(metadata i8* %0, metadata !2713, metadata !DIExpression()) #10, !dbg !4248
  call void @llvm.dbg.value(metadata i8* %1, metadata !2714, metadata !DIExpression()) #10, !dbg !4249
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2712, metadata !DIExpression()) #10, !dbg !4246
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4250
  store i32 10, i32* %6, align 8, !dbg !4251, !tbaa !2645
  %7 = icmp ne i8* %0, null, !dbg !4252
  %8 = icmp ne i8* %1, null, !dbg !4253
  %9 = and i1 %7, %8, !dbg !4254
  br i1 %9, label %11, label %10, !dbg !4254

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !4255
  unreachable, !dbg !4255

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4256
  store i8* %0, i8** %12, align 8, !dbg !4257, !tbaa !2730
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4258
  store i8* %1, i8** %13, align 8, !dbg !4259, !tbaa !2733
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4170, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4245
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4260
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4261
  ret i8* %14, !dbg !4262
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !4263 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4267, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i8* %1, metadata !4268, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i8* %2, metadata !4269, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %3, metadata !4270, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 0, metadata !4161, metadata !DIExpression()) #10, !dbg !4275
  call void @llvm.dbg.value(metadata i8* %0, metadata !4166, metadata !DIExpression()) #10, !dbg !4277
  call void @llvm.dbg.value(metadata i8* %1, metadata !4167, metadata !DIExpression()) #10, !dbg !4278
  call void @llvm.dbg.value(metadata i8* %2, metadata !4168, metadata !DIExpression()) #10, !dbg !4279
  call void @llvm.dbg.value(metadata i64 %3, metadata !4169, metadata !DIExpression()) #10, !dbg !4280
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4281
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4281
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !4282, !tbaa.struct !4005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4170, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4283
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2712, metadata !DIExpression()) #10, !dbg !4284
  call void @llvm.dbg.value(metadata i8* %0, metadata !2713, metadata !DIExpression()) #10, !dbg !4286
  call void @llvm.dbg.value(metadata i8* %1, metadata !2714, metadata !DIExpression()) #10, !dbg !4287
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2712, metadata !DIExpression()) #10, !dbg !4284
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4288
  store i32 10, i32* %7, align 8, !dbg !4289, !tbaa !2645
  %8 = icmp ne i8* %0, null, !dbg !4290
  %9 = icmp ne i8* %1, null, !dbg !4291
  %10 = and i1 %8, %9, !dbg !4292
  br i1 %10, label %12, label %11, !dbg !4292

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4293
  unreachable, !dbg !4293

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4294
  store i8* %0, i8** %13, align 8, !dbg !4295, !tbaa !2730
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4296
  store i8* %1, i8** %14, align 8, !dbg !4297, !tbaa !2733
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4170, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4283
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !4298
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4299
  ret i8* %15, !dbg !4300
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !4301 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4305, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i8* %1, metadata !4306, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i64 %2, metadata !4307, metadata !DIExpression()), !dbg !4310
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4311
  ret i8* %4, !dbg !4312
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !4313 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4317, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %1, metadata !4318, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 0, metadata !4305, metadata !DIExpression()) #10, !dbg !4321
  call void @llvm.dbg.value(metadata i8* %0, metadata !4306, metadata !DIExpression()) #10, !dbg !4323
  call void @llvm.dbg.value(metadata i64 %1, metadata !4307, metadata !DIExpression()) #10, !dbg !4324
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4325
  ret i8* %3, !dbg !4326
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !4327 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4331, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i8* %1, metadata !4332, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 %0, metadata !4305, metadata !DIExpression()) #10, !dbg !4335
  call void @llvm.dbg.value(metadata i8* %1, metadata !4306, metadata !DIExpression()) #10, !dbg !4337
  call void @llvm.dbg.value(metadata i64 -1, metadata !4307, metadata !DIExpression()) #10, !dbg !4338
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4339
  ret i8* %3, !dbg !4340
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !4341 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4345, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 0, metadata !4331, metadata !DIExpression()) #10, !dbg !4347
  call void @llvm.dbg.value(metadata i8* %0, metadata !4332, metadata !DIExpression()) #10, !dbg !4349
  call void @llvm.dbg.value(metadata i32 0, metadata !4305, metadata !DIExpression()) #10, !dbg !4350
  call void @llvm.dbg.value(metadata i8* %0, metadata !4306, metadata !DIExpression()) #10, !dbg !4352
  call void @llvm.dbg.value(metadata i64 -1, metadata !4307, metadata !DIExpression()) #10, !dbg !4353
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4354
  ret i8* %2, !dbg !4355
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32) local_unnamed_addr #7 !dbg !4356 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4359, metadata !DIExpression()), !dbg !4360
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10, !dbg !4361
  ret i32 %2, !dbg !4362
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !4363 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4402, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i8* %1, metadata !4403, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i8* %2, metadata !4404, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i8* %3, metadata !4405, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i8** %4, metadata !4406, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i64 %5, metadata !4407, metadata !DIExpression()), !dbg !4413
  %7 = icmp eq i8* %1, null, !dbg !4414
  br i1 %7, label %10, label %8, !dbg !4416

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !4417
  br label %12, !dbg !4417

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.128, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !4418
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.129, i64 0, i64 0), i32 5) #10, !dbg !4419
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !4419
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.130, i64 0, i64 0), i32 5) #10, !dbg !4420
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !4420
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
  ], !dbg !4421

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4422
  unreachable, !dbg !4422

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.131, i64 0, i64 0), i32 5) #10, !dbg !4424
  %20 = load i8*, i8** %4, align 8, !dbg !4424, !tbaa !830
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !4424
  br label %146, !dbg !4425

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.132, i64 0, i64 0), i32 5) #10, !dbg !4426
  %24 = load i8*, i8** %4, align 8, !dbg !4426, !tbaa !830
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4426
  %26 = load i8*, i8** %25, align 8, !dbg !4426, !tbaa !830
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !4426
  br label %146, !dbg !4427

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.133, i64 0, i64 0), i32 5) #10, !dbg !4428
  %30 = load i8*, i8** %4, align 8, !dbg !4428, !tbaa !830
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4428
  %32 = load i8*, i8** %31, align 8, !dbg !4428, !tbaa !830
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4428
  %34 = load i8*, i8** %33, align 8, !dbg !4428, !tbaa !830
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !4428
  br label %146, !dbg !4429

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.134, i64 0, i64 0), i32 5) #10, !dbg !4430
  %38 = load i8*, i8** %4, align 8, !dbg !4430, !tbaa !830
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4430
  %40 = load i8*, i8** %39, align 8, !dbg !4430, !tbaa !830
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4430
  %42 = load i8*, i8** %41, align 8, !dbg !4430, !tbaa !830
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4430
  %44 = load i8*, i8** %43, align 8, !dbg !4430, !tbaa !830
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !4430
  br label %146, !dbg !4431

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.135, i64 0, i64 0), i32 5) #10, !dbg !4432
  %48 = load i8*, i8** %4, align 8, !dbg !4432, !tbaa !830
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4432
  %50 = load i8*, i8** %49, align 8, !dbg !4432, !tbaa !830
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4432
  %52 = load i8*, i8** %51, align 8, !dbg !4432, !tbaa !830
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4432
  %54 = load i8*, i8** %53, align 8, !dbg !4432, !tbaa !830
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4432
  %56 = load i8*, i8** %55, align 8, !dbg !4432, !tbaa !830
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !4432
  br label %146, !dbg !4433

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.136, i64 0, i64 0), i32 5) #10, !dbg !4434
  %60 = load i8*, i8** %4, align 8, !dbg !4434, !tbaa !830
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4434
  %62 = load i8*, i8** %61, align 8, !dbg !4434, !tbaa !830
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4434
  %64 = load i8*, i8** %63, align 8, !dbg !4434, !tbaa !830
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4434
  %66 = load i8*, i8** %65, align 8, !dbg !4434, !tbaa !830
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4434
  %68 = load i8*, i8** %67, align 8, !dbg !4434, !tbaa !830
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4434
  %70 = load i8*, i8** %69, align 8, !dbg !4434, !tbaa !830
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !4434
  br label %146, !dbg !4435

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.137, i64 0, i64 0), i32 5) #10, !dbg !4436
  %74 = load i8*, i8** %4, align 8, !dbg !4436, !tbaa !830
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4436
  %76 = load i8*, i8** %75, align 8, !dbg !4436, !tbaa !830
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4436
  %78 = load i8*, i8** %77, align 8, !dbg !4436, !tbaa !830
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4436
  %80 = load i8*, i8** %79, align 8, !dbg !4436, !tbaa !830
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4436
  %82 = load i8*, i8** %81, align 8, !dbg !4436, !tbaa !830
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4436
  %84 = load i8*, i8** %83, align 8, !dbg !4436, !tbaa !830
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4436
  %86 = load i8*, i8** %85, align 8, !dbg !4436, !tbaa !830
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !4436
  br label %146, !dbg !4437

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.138, i64 0, i64 0), i32 5) #10, !dbg !4438
  %90 = load i8*, i8** %4, align 8, !dbg !4438, !tbaa !830
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4438
  %92 = load i8*, i8** %91, align 8, !dbg !4438, !tbaa !830
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4438
  %94 = load i8*, i8** %93, align 8, !dbg !4438, !tbaa !830
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4438
  %96 = load i8*, i8** %95, align 8, !dbg !4438, !tbaa !830
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4438
  %98 = load i8*, i8** %97, align 8, !dbg !4438, !tbaa !830
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4438
  %100 = load i8*, i8** %99, align 8, !dbg !4438, !tbaa !830
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4438
  %102 = load i8*, i8** %101, align 8, !dbg !4438, !tbaa !830
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4438
  %104 = load i8*, i8** %103, align 8, !dbg !4438, !tbaa !830
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !4438
  br label %146, !dbg !4439

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.139, i64 0, i64 0), i32 5) #10, !dbg !4440
  %108 = load i8*, i8** %4, align 8, !dbg !4440, !tbaa !830
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4440
  %110 = load i8*, i8** %109, align 8, !dbg !4440, !tbaa !830
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4440
  %112 = load i8*, i8** %111, align 8, !dbg !4440, !tbaa !830
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4440
  %114 = load i8*, i8** %113, align 8, !dbg !4440, !tbaa !830
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4440
  %116 = load i8*, i8** %115, align 8, !dbg !4440, !tbaa !830
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4440
  %118 = load i8*, i8** %117, align 8, !dbg !4440, !tbaa !830
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4440
  %120 = load i8*, i8** %119, align 8, !dbg !4440, !tbaa !830
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4440
  %122 = load i8*, i8** %121, align 8, !dbg !4440, !tbaa !830
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4440
  %124 = load i8*, i8** %123, align 8, !dbg !4440, !tbaa !830
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !4440
  br label %146, !dbg !4441

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.140, i64 0, i64 0), i32 5) #10, !dbg !4442
  %128 = load i8*, i8** %4, align 8, !dbg !4442, !tbaa !830
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4442
  %130 = load i8*, i8** %129, align 8, !dbg !4442, !tbaa !830
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4442
  %132 = load i8*, i8** %131, align 8, !dbg !4442, !tbaa !830
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4442
  %134 = load i8*, i8** %133, align 8, !dbg !4442, !tbaa !830
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4442
  %136 = load i8*, i8** %135, align 8, !dbg !4442, !tbaa !830
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4442
  %138 = load i8*, i8** %137, align 8, !dbg !4442, !tbaa !830
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4442
  %140 = load i8*, i8** %139, align 8, !dbg !4442, !tbaa !830
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4442
  %142 = load i8*, i8** %141, align 8, !dbg !4442, !tbaa !830
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4442
  %144 = load i8*, i8** %143, align 8, !dbg !4442, !tbaa !830
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !4442
  br label %146, !dbg !4443

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4444
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !4445 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4449, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i8* %1, metadata !4450, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i8* %2, metadata !4451, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i8* %3, metadata !4452, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i8** %4, metadata !4453, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 0, metadata !4454, metadata !DIExpression()), !dbg !4460
  br label %6, !dbg !4461

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4463
  call void @llvm.dbg.value(metadata i64 %7, metadata !4454, metadata !DIExpression()), !dbg !4460
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4465
  %9 = load i8*, i8** %8, align 8, !dbg !4465, !tbaa !830
  %10 = icmp eq i8* %9, null, !dbg !4466
  %11 = add i64 %7, 1, !dbg !4467
  call void @llvm.dbg.value(metadata i64 %11, metadata !4454, metadata !DIExpression()), !dbg !4460
  br i1 %10, label %12, label %6, !dbg !4466, !llvm.loop !4468

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4454, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i64 %7, metadata !4454, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i64 %7, metadata !4454, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i64 %7, metadata !4454, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i64 %7, metadata !4454, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i64 %7, metadata !4454, metadata !DIExpression()), !dbg !4460
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4470
  ret void, !dbg !4471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !4472 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4483, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i8* %1, metadata !4484, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i8* %2, metadata !4485, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i8* %3, metadata !4486, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4487, metadata !DIExpression()), !dbg !4495
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4496
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !4496
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4489, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 0, metadata !4488, metadata !DIExpression()), !dbg !4498
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !4488, metadata !DIExpression()), !dbg !4498
  %11 = load i32, i32* %8, align 8, !dbg !4499
  %12 = icmp ult i32 %11, 41, !dbg !4499
  br i1 %12, label %13, label %18, !dbg !4499

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4499
  %15 = sext i32 %11 to i64, !dbg !4499
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4499
  %17 = add i32 %11, 8, !dbg !4499
  store i32 %17, i32* %8, align 8, !dbg !4499
  br label %21, !dbg !4499

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4499
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4499
  store i8* %20, i8** %10, align 8, !dbg !4499
  br label %21, !dbg !4499

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4499
  %25 = load i8*, i8** %24, align 8, !dbg !4499
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4502
  store i8* %25, i8** %26, align 16, !dbg !4503, !tbaa !830
  %27 = icmp eq i8* %25, null, !dbg !4504
  br i1 %27, label %30, label %28, !dbg !4505

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4488, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 1, metadata !4488, metadata !DIExpression()), !dbg !4498
  %29 = icmp ult i32 %22, 41, !dbg !4499
  br i1 %29, label %35, label %32, !dbg !4499

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4506
  call void @llvm.dbg.value(metadata i64 %31, metadata !4488, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 %31, metadata !4488, metadata !DIExpression()), !dbg !4498
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4507
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !4508
  ret void, !dbg !4508

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4499
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4499
  store i8* %34, i8** %10, align 8, !dbg !4499
  br label %40, !dbg !4499

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4499
  %37 = sext i32 %22 to i64, !dbg !4499
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4499
  %39 = add i32 %22, 8, !dbg !4499
  store i32 %39, i32* %8, align 8, !dbg !4499
  br label %40, !dbg !4499

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4499
  %44 = load i8*, i8** %43, align 8, !dbg !4499
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4502
  store i8* %44, i8** %45, align 8, !dbg !4503, !tbaa !830
  %46 = icmp eq i8* %44, null, !dbg !4504
  br i1 %46, label %30, label %47, !dbg !4505

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4488, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 2, metadata !4488, metadata !DIExpression()), !dbg !4498
  %48 = icmp ult i32 %41, 41, !dbg !4499
  br i1 %48, label %52, label %49, !dbg !4499

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4499
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4499
  store i8* %51, i8** %10, align 8, !dbg !4499
  br label %57, !dbg !4499

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4499
  %54 = sext i32 %41 to i64, !dbg !4499
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4499
  %56 = add i32 %41, 8, !dbg !4499
  store i32 %56, i32* %8, align 8, !dbg !4499
  br label %57, !dbg !4499

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4499
  %61 = load i8*, i8** %60, align 8, !dbg !4499
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4502
  store i8* %61, i8** %62, align 16, !dbg !4503, !tbaa !830
  %63 = icmp eq i8* %61, null, !dbg !4504
  br i1 %63, label %30, label %64, !dbg !4505

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4488, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 3, metadata !4488, metadata !DIExpression()), !dbg !4498
  %65 = icmp ult i32 %58, 41, !dbg !4499
  br i1 %65, label %69, label %66, !dbg !4499

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4499
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4499
  store i8* %68, i8** %10, align 8, !dbg !4499
  br label %74, !dbg !4499

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4499
  %71 = sext i32 %58 to i64, !dbg !4499
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4499
  %73 = add i32 %58, 8, !dbg !4499
  store i32 %73, i32* %8, align 8, !dbg !4499
  br label %74, !dbg !4499

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4499
  %78 = load i8*, i8** %77, align 8, !dbg !4499
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4502
  store i8* %78, i8** %79, align 8, !dbg !4503, !tbaa !830
  %80 = icmp eq i8* %78, null, !dbg !4504
  br i1 %80, label %30, label %81, !dbg !4505

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4488, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 4, metadata !4488, metadata !DIExpression()), !dbg !4498
  %82 = icmp ult i32 %75, 41, !dbg !4499
  br i1 %82, label %86, label %83, !dbg !4499

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4499
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4499
  store i8* %85, i8** %10, align 8, !dbg !4499
  br label %91, !dbg !4499

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4499
  %88 = sext i32 %75 to i64, !dbg !4499
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4499
  %90 = add i32 %75, 8, !dbg !4499
  store i32 %90, i32* %8, align 8, !dbg !4499
  br label %91, !dbg !4499

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4499
  %95 = load i8*, i8** %94, align 8, !dbg !4499
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4502
  store i8* %95, i8** %96, align 16, !dbg !4503, !tbaa !830
  %97 = icmp eq i8* %95, null, !dbg !4504
  br i1 %97, label %30, label %98, !dbg !4505

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4488, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 5, metadata !4488, metadata !DIExpression()), !dbg !4498
  %99 = icmp ult i32 %92, 41, !dbg !4499
  br i1 %99, label %103, label %100, !dbg !4499

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4499
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4499
  store i8* %102, i8** %10, align 8, !dbg !4499
  br label %108, !dbg !4499

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4499
  %105 = sext i32 %92 to i64, !dbg !4499
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4499
  %107 = add i32 %92, 8, !dbg !4499
  store i32 %107, i32* %8, align 8, !dbg !4499
  br label %108, !dbg !4499

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4499
  %111 = load i8*, i8** %110, align 8, !dbg !4499
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4502
  store i8* %111, i8** %112, align 8, !dbg !4503, !tbaa !830
  %113 = icmp eq i8* %111, null, !dbg !4504
  br i1 %113, label %30, label %114, !dbg !4505

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4488, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 6, metadata !4488, metadata !DIExpression()), !dbg !4498
  %115 = load i8*, i8** %10, align 8, !dbg !4499
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4499
  store i8* %116, i8** %10, align 8, !dbg !4499
  %117 = bitcast i8* %115 to i8**, !dbg !4499
  %118 = load i8*, i8** %117, align 8, !dbg !4499
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4502
  store i8* %118, i8** %119, align 16, !dbg !4503, !tbaa !830
  %120 = icmp eq i8* %118, null, !dbg !4504
  br i1 %120, label %30, label %121, !dbg !4505

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4488, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 7, metadata !4488, metadata !DIExpression()), !dbg !4498
  %122 = load i8*, i8** %10, align 8, !dbg !4499
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4499
  store i8* %123, i8** %10, align 8, !dbg !4499
  %124 = bitcast i8* %122 to i8**, !dbg !4499
  %125 = load i8*, i8** %124, align 8, !dbg !4499
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4502
  store i8* %125, i8** %126, align 8, !dbg !4503, !tbaa !830
  %127 = icmp eq i8* %125, null, !dbg !4504
  br i1 %127, label %30, label %128, !dbg !4505

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4488, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 8, metadata !4488, metadata !DIExpression()), !dbg !4498
  %129 = load i8*, i8** %10, align 8, !dbg !4499
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4499
  store i8* %130, i8** %10, align 8, !dbg !4499
  %131 = bitcast i8* %129 to i8**, !dbg !4499
  %132 = load i8*, i8** %131, align 8, !dbg !4499
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4502
  store i8* %132, i8** %133, align 16, !dbg !4503, !tbaa !830
  %134 = icmp eq i8* %132, null, !dbg !4504
  br i1 %134, label %30, label %135, !dbg !4505

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4488, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 9, metadata !4488, metadata !DIExpression()), !dbg !4498
  %136 = load i8*, i8** %10, align 8, !dbg !4499
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4499
  store i8* %137, i8** %10, align 8, !dbg !4499
  %138 = bitcast i8* %136 to i8**, !dbg !4499
  %139 = load i8*, i8** %138, align 8, !dbg !4499
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4502
  store i8* %139, i8** %140, align 8, !dbg !4503, !tbaa !830
  %141 = icmp eq i8* %139, null, !dbg !4504
  %142 = select i1 %141, i64 9, i64 10, !dbg !4505
  br label %30, !dbg !4505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !4509 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4513, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i8* %1, metadata !4514, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i8* %2, metadata !4515, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i8* %3, metadata !4516, metadata !DIExpression()), !dbg !4525
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4526
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !4526
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4517, metadata !DIExpression()), !dbg !4527
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4528
  call void @llvm.va_start(i8* nonnull %6), !dbg !4528
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4529
  call void @llvm.va_end(i8* nonnull %6), !dbg !4530
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !4531
  ret void, !dbg !4531
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !4532 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.143, i64 0, i64 0), i32 5) #10, !dbg !4533
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.144, i64 0, i64 0)) #10, !dbg !4533
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.145, i64 0, i64 0), i32 5) #10, !dbg !4534
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.146, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.147, i64 0, i64 0)) #10, !dbg !4534
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.148, i64 0, i64 0), i32 5) #10, !dbg !4535
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4535, !tbaa !830
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !4535
  ret void, !dbg !4536
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4537 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4541, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %1, metadata !4542, metadata !DIExpression()), !dbg !4544
  %3 = udiv i64 9223372036854775807, %1, !dbg !4545
  %4 = icmp ult i64 %3, %0, !dbg !4545
  br i1 %4, label %5, label %6, !dbg !4547

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4548
  unreachable, !dbg !4548

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4549
  call void @llvm.dbg.value(metadata i64 %7, metadata !4550, metadata !DIExpression()) #10, !dbg !4557
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4559
  call void @llvm.dbg.value(metadata i8* %8, metadata !4556, metadata !DIExpression()) #10, !dbg !4560
  %9 = icmp eq i8* %8, null, !dbg !4561
  %10 = icmp ne i64 %7, 0, !dbg !4563
  %11 = and i1 %10, %9, !dbg !4564
  br i1 %11, label %12, label %13, !dbg !4564

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4565
  unreachable, !dbg !4565

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4566
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !4551 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4550, metadata !DIExpression()), !dbg !4567
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4568
  call void @llvm.dbg.value(metadata i8* %2, metadata !4556, metadata !DIExpression()), !dbg !4569
  %3 = icmp eq i8* %2, null, !dbg !4570
  %4 = icmp ne i64 %0, 0, !dbg !4571
  %5 = and i1 %4, %3, !dbg !4572
  br i1 %5, label %6, label %7, !dbg !4572

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4573
  unreachable, !dbg !4573

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4574
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4575 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4579, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i64 %1, metadata !4580, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 %2, metadata !4581, metadata !DIExpression()), !dbg !4584
  %4 = udiv i64 9223372036854775807, %2, !dbg !4585
  %5 = icmp ult i64 %4, %1, !dbg !4585
  br i1 %5, label %6, label %7, !dbg !4587

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4588
  unreachable, !dbg !4588

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4589
  call void @llvm.dbg.value(metadata i8* %0, metadata !4590, metadata !DIExpression()) #10, !dbg !4596
  call void @llvm.dbg.value(metadata i64 %8, metadata !4595, metadata !DIExpression()) #10, !dbg !4598
  %9 = icmp eq i64 %8, 0, !dbg !4599
  %10 = icmp ne i8* %0, null, !dbg !4601
  %11 = and i1 %10, %9, !dbg !4602
  br i1 %11, label %12, label %13, !dbg !4602

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4603
  br label %19, !dbg !4605

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4606
  call void @llvm.dbg.value(metadata i8* %14, metadata !4590, metadata !DIExpression()) #10, !dbg !4596
  %15 = icmp eq i8* %14, null, !dbg !4607
  %16 = icmp ne i64 %8, 0, !dbg !4609
  %17 = and i1 %16, %15, !dbg !4610
  br i1 %17, label %18, label %19, !dbg !4610

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4611
  unreachable, !dbg !4611

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4612
  ret i8* %20, !dbg !4613
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !4591 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4590, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i64 %1, metadata !4595, metadata !DIExpression()), !dbg !4615
  %3 = icmp eq i64 %1, 0, !dbg !4616
  %4 = icmp ne i8* %0, null, !dbg !4617
  %5 = and i1 %4, %3, !dbg !4618
  br i1 %5, label %6, label %7, !dbg !4618

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4619
  br label %13, !dbg !4620

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4621
  call void @llvm.dbg.value(metadata i8* %8, metadata !4590, metadata !DIExpression()), !dbg !4614
  %9 = icmp eq i8* %8, null, !dbg !4622
  %10 = icmp ne i64 %1, 0, !dbg !4623
  %11 = and i1 %10, %9, !dbg !4624
  br i1 %11, label %12, label %13, !dbg !4624

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4625
  unreachable, !dbg !4625

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4626
  ret i8* %14, !dbg !4627
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !374 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !379, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64* %1, metadata !380, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 %2, metadata !381, metadata !DIExpression()), !dbg !4630
  %4 = load i64, i64* %1, align 8, !dbg !4631, !tbaa !1096
  call void @llvm.dbg.value(metadata i64 %4, metadata !382, metadata !DIExpression()), !dbg !4632
  %5 = icmp eq i8* %0, null, !dbg !4633
  br i1 %5, label %6, label %20, !dbg !4635

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4636
  br i1 %7, label %8, label %13, !dbg !4639

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %9, metadata !382, metadata !DIExpression()), !dbg !4632
  %10 = icmp ugt i64 %2, 128, !dbg !4642
  %11 = zext i1 %10 to i64, !dbg !4642
  %12 = add nuw nsw i64 %9, %11, !dbg !4643
  call void @llvm.dbg.value(metadata i64 %12, metadata !382, metadata !DIExpression()), !dbg !4632
  br label %13, !dbg !4644

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4645
  call void @llvm.dbg.value(metadata i64 %14, metadata !382, metadata !DIExpression()), !dbg !4632
  %15 = udiv i64 9223372036854775807, %2, !dbg !4646
  %16 = icmp ult i64 %15, %14, !dbg !4646
  br i1 %16, label %19, label %17, !dbg !4648

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !382, metadata !DIExpression()), !dbg !4632
  store i64 %14, i64* %1, align 8, !dbg !4649, !tbaa !1096
  %18 = mul i64 %14, %2, !dbg !4650
  call void @llvm.dbg.value(metadata i8* %0, metadata !4590, metadata !DIExpression()) #10, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %28, metadata !4595, metadata !DIExpression()) #10, !dbg !4653
  br label %31, !dbg !4654

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4655
  unreachable, !dbg !4655

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4656
  %22 = icmp ugt i64 %21, %4, !dbg !4659
  br i1 %22, label %24, label %23, !dbg !4660

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !4661
  unreachable, !dbg !4661

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4662
  %26 = add i64 %4, 1, !dbg !4663
  %27 = add i64 %26, %25, !dbg !4664
  call void @llvm.dbg.value(metadata i64 %27, metadata !382, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i64 %27, metadata !382, metadata !DIExpression()), !dbg !4632
  store i64 %27, i64* %1, align 8, !dbg !4649, !tbaa !1096
  %28 = mul i64 %27, %2, !dbg !4650
  call void @llvm.dbg.value(metadata i8* %0, metadata !4590, metadata !DIExpression()) #10, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %28, metadata !4595, metadata !DIExpression()) #10, !dbg !4653
  %29 = icmp eq i64 %28, 0, !dbg !4665
  br i1 %29, label %30, label %31, !dbg !4654

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !4666
  br label %38, !dbg !4667

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !4668
  call void @llvm.dbg.value(metadata i8* %33, metadata !4590, metadata !DIExpression()) #10, !dbg !4651
  %34 = icmp eq i8* %33, null, !dbg !4669
  %35 = icmp ne i64 %32, 0, !dbg !4670
  %36 = and i1 %35, %34, !dbg !4671
  br i1 %36, label %37, label %38, !dbg !4671

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !4672
  unreachable, !dbg !4672

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4673
  ret i8* %39, !dbg !4674
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4675 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4677, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata i64 %0, metadata !4550, metadata !DIExpression()) #10, !dbg !4679
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4681
  call void @llvm.dbg.value(metadata i8* %2, metadata !4556, metadata !DIExpression()) #10, !dbg !4682
  %3 = icmp eq i8* %2, null, !dbg !4683
  %4 = icmp ne i64 %0, 0, !dbg !4684
  %5 = and i1 %4, %3, !dbg !4685
  br i1 %5, label %6, label %7, !dbg !4685

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4686
  unreachable, !dbg !4686

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4687
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4688 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4692, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i64* %1, metadata !4693, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.value(metadata i8* %0, metadata !379, metadata !DIExpression()) #10, !dbg !4696
  call void @llvm.dbg.value(metadata i64* %1, metadata !380, metadata !DIExpression()) #10, !dbg !4698
  call void @llvm.dbg.value(metadata i64 1, metadata !381, metadata !DIExpression()) #10, !dbg !4699
  %3 = load i64, i64* %1, align 8, !dbg !4700, !tbaa !1096
  call void @llvm.dbg.value(metadata i64 %3, metadata !382, metadata !DIExpression()) #10, !dbg !4701
  %4 = icmp eq i8* %0, null, !dbg !4702
  br i1 %4, label %5, label %12, !dbg !4703

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4704
  br i1 %6, label %9, label %7, !dbg !4705

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !382, metadata !DIExpression()) #10, !dbg !4701
  %8 = icmp slt i64 %3, 0, !dbg !4706
  br i1 %8, label %11, label %9, !dbg !4707

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !382, metadata !DIExpression()) #10, !dbg !4701
  store i64 %10, i64* %1, align 8, !dbg !4708, !tbaa !1096
  call void @llvm.dbg.value(metadata i8* %0, metadata !4590, metadata !DIExpression()) #10, !dbg !4709
  call void @llvm.dbg.value(metadata i64 %18, metadata !4595, metadata !DIExpression()) #10, !dbg !4711
  br label %21, !dbg !4712

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4713
  unreachable, !dbg !4713

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4714
  br i1 %13, label %15, label %14, !dbg !4715

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !4716
  unreachable, !dbg !4716

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4717
  %17 = add i64 %3, 1, !dbg !4718
  %18 = add i64 %17, %16, !dbg !4719
  call void @llvm.dbg.value(metadata i64 %18, metadata !382, metadata !DIExpression()) #10, !dbg !4701
  call void @llvm.dbg.value(metadata i64 %18, metadata !382, metadata !DIExpression()) #10, !dbg !4701
  store i64 %18, i64* %1, align 8, !dbg !4708, !tbaa !1096
  call void @llvm.dbg.value(metadata i8* %0, metadata !4590, metadata !DIExpression()) #10, !dbg !4709
  call void @llvm.dbg.value(metadata i64 %18, metadata !4595, metadata !DIExpression()) #10, !dbg !4711
  %19 = icmp eq i64 %18, 0, !dbg !4720
  br i1 %19, label %20, label %21, !dbg !4712

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !4721
  br label %28, !dbg !4722

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !4723
  call void @llvm.dbg.value(metadata i8* %23, metadata !4590, metadata !DIExpression()) #10, !dbg !4709
  %24 = icmp eq i8* %23, null, !dbg !4724
  %25 = icmp ne i64 %22, 0, !dbg !4725
  %26 = and i1 %25, %24, !dbg !4726
  br i1 %26, label %27, label %28, !dbg !4726

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !4727
  unreachable, !dbg !4727

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4728
  ret i8* %29, !dbg !4729
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4730 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4732, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i64 %0, metadata !4550, metadata !DIExpression()) #10, !dbg !4734
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4736
  call void @llvm.dbg.value(metadata i8* %2, metadata !4556, metadata !DIExpression()) #10, !dbg !4737
  %3 = icmp eq i8* %2, null, !dbg !4738
  %4 = icmp ne i64 %0, 0, !dbg !4739
  %5 = and i1 %4, %3, !dbg !4740
  br i1 %5, label %6, label %7, !dbg !4740

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4741
  unreachable, !dbg !4741

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4742
  ret i8* %2, !dbg !4743
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4744 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4746, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i64 %1, metadata !4747, metadata !DIExpression()), !dbg !4750
  %3 = udiv i64 9223372036854775807, %1, !dbg !4751
  %4 = icmp ult i64 %3, %0, !dbg !4751
  br i1 %4, label %8, label %5, !dbg !4753

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4754
  call void @llvm.dbg.value(metadata i8* %6, metadata !4748, metadata !DIExpression()), !dbg !4755
  %7 = icmp eq i8* %6, null, !dbg !4756
  br i1 %7, label %8, label %9, !dbg !4757

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4758
  unreachable, !dbg !4758

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4759
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4760 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4762, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i64 %1, metadata !4763, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %1, metadata !4550, metadata !DIExpression()) #10, !dbg !4766
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4768
  call void @llvm.dbg.value(metadata i8* %3, metadata !4556, metadata !DIExpression()) #10, !dbg !4769
  %4 = icmp eq i8* %3, null, !dbg !4770
  %5 = icmp ne i64 %1, 0, !dbg !4771
  %6 = and i1 %5, %4, !dbg !4772
  br i1 %6, label %7, label %8, !dbg !4772

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4773
  unreachable, !dbg !4773

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4774
  ret i8* %3, !dbg !4775
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4776 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4778, metadata !DIExpression()), !dbg !4779
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4780
  %3 = add i64 %2, 1, !dbg !4781
  call void @llvm.dbg.value(metadata i8* %0, metadata !4762, metadata !DIExpression()) #10, !dbg !4782
  call void @llvm.dbg.value(metadata i64 %3, metadata !4763, metadata !DIExpression()) #10, !dbg !4784
  call void @llvm.dbg.value(metadata i64 %3, metadata !4550, metadata !DIExpression()) #10, !dbg !4785
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4787
  call void @llvm.dbg.value(metadata i8* %4, metadata !4556, metadata !DIExpression()) #10, !dbg !4788
  %5 = icmp eq i8* %4, null, !dbg !4789
  %6 = icmp ne i64 %3, 0, !dbg !4790
  %7 = and i1 %6, %5, !dbg !4791
  br i1 %7, label %8, label %9, !dbg !4791

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4792
  unreachable, !dbg !4792

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !4793
  ret i8* %4, !dbg !4794
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4795 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4797, !tbaa !1038
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.159, i64 0, i64 0), i32 5) #10, !dbg !4798
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* %2) #10, !dbg !4799
  tail call void @abort() #15, !dbg !4800
  unreachable, !dbg !4800
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4801 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4804, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.value(metadata i64 %1, metadata !4805, metadata !DIExpression()), !dbg !4811
  %3 = icmp eq i64 %0, 0, !dbg !4812
  %4 = icmp eq i64 %1, 0, !dbg !4813
  %5 = or i1 %3, %4, !dbg !4814
  br i1 %5, label %12, label %6, !dbg !4814

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4815
  call void @llvm.dbg.value(metadata i64 %7, metadata !4807, metadata !DIExpression()), !dbg !4816
  %8 = udiv i64 %7, %1, !dbg !4817
  %9 = icmp eq i64 %8, %0, !dbg !4819
  br i1 %9, label %12, label %10, !dbg !4820

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4821
  store i32 12, i32* %11, align 4, !dbg !4823, !tbaa !1038
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4804, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.value(metadata i64 %13, metadata !4805, metadata !DIExpression()), !dbg !4811
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4824
  call void @llvm.dbg.value(metadata i8* %15, metadata !4806, metadata !DIExpression()), !dbg !4825
  br label %16, !dbg !4826

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4827
  ret i8* %17, !dbg !4828
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4829 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4868, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i32 0, metadata !4869, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.value(metadata i32 0, metadata !4871, metadata !DIExpression()), !dbg !4874
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4875
  call void @llvm.dbg.value(metadata i32 %2, metadata !4870, metadata !DIExpression()), !dbg !4876
  %3 = icmp slt i32 %2, 0, !dbg !4877
  br i1 %3, label %4, label %6, !dbg !4879

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4880
  br label %24, !dbg !4881

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4882
  %8 = icmp eq i32 %7, 0, !dbg !4882
  br i1 %8, label %13, label %9, !dbg !4884

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4885
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4886
  %12 = icmp eq i64 %11, -1, !dbg !4887
  br i1 %12, label %16, label %13, !dbg !4888

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4889
  %15 = icmp eq i32 %14, 0, !dbg !4889
  br i1 %15, label %16, label %18, !dbg !4890

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4869, metadata !DIExpression()), !dbg !4873
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4891
  call void @llvm.dbg.value(metadata i32 %21, metadata !4871, metadata !DIExpression()), !dbg !4874
  br label %24, !dbg !4892

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4893
  %20 = load i32, i32* %19, align 4, !dbg !4893, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %20, metadata !4869, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.value(metadata i32 %20, metadata !4869, metadata !DIExpression()), !dbg !4873
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4891
  call void @llvm.dbg.value(metadata i32 %21, metadata !4871, metadata !DIExpression()), !dbg !4874
  %22 = icmp eq i32 %20, 0, !dbg !4894
  br i1 %22, label %24, label %23, !dbg !4892

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4896, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 -1, metadata !4871, metadata !DIExpression()), !dbg !4874
  br label %24, !dbg !4898

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4899
  ret i32 %25, !dbg !4900
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #7 !dbg !321 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !329, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 %1, metadata !330, metadata !DIExpression()), !dbg !4902
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4903
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #10, !dbg !4903
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !331, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 -1, metadata !342, metadata !DIExpression()), !dbg !4905
  call void @llvm.va_start(i8* nonnull %4), !dbg !4906
  %5 = icmp eq i32 %1, 1030, !dbg !4907
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4908
  %7 = load i32, i32* %6, align 16, !dbg !4908
  %8 = icmp ult i32 %7, 41, !dbg !4908
  br i1 %5, label %9, label %58, !dbg !4907

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !4909

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4909
  %12 = load i8*, i8** %11, align 16, !dbg !4909
  %13 = sext i32 %7 to i64, !dbg !4909
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !4909
  %15 = add i32 %7, 8, !dbg !4909
  store i32 %15, i32* %6, align 16, !dbg !4909
  br label %20, !dbg !4909

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4909
  %18 = load i8*, i8** %17, align 8, !dbg !4909
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !4909
  store i8* %19, i8** %17, align 8, !dbg !4909
  br label %20, !dbg !4909

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !4909
  %23 = load i32, i32* %22, align 4, !dbg !4909
  call void @llvm.dbg.value(metadata i32 %23, metadata !343, metadata !DIExpression()), !dbg !4910
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4911, !tbaa !1038
  %25 = icmp sgt i32 %24, -1, !dbg !4913
  br i1 %25, label %26, label %38, !dbg !4914

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10, !dbg !4915
  call void @llvm.dbg.value(metadata i32 %27, metadata !342, metadata !DIExpression()), !dbg !4905
  %28 = icmp sgt i32 %27, -1, !dbg !4917
  br i1 %28, label %33, label %29, !dbg !4919

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !4920
  %31 = load i32, i32* %30, align 4, !dbg !4920, !tbaa !1038
  %32 = icmp eq i32 %31, 22, !dbg !4921
  br i1 %32, label %34, label %33, !dbg !4922

; <label>:33:                                     ; preds = %26, %29
  store i32 1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4923, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %44, metadata !342, metadata !DIExpression()), !dbg !4905
  br label %74, !dbg !4925

; <label>:34:                                     ; preds = %29
  %35 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4926
  call void @llvm.dbg.value(metadata i32 %35, metadata !342, metadata !DIExpression()), !dbg !4905
  %36 = icmp slt i32 %35, 0, !dbg !4928
  br i1 %36, label %74, label %37, !dbg !4930

; <label>:37:                                     ; preds = %34
  store i32 -1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4931, !tbaa !1038
  br label %42

; <label>:38:                                     ; preds = %20
  %39 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4932
  call void @llvm.dbg.value(metadata i32 %39, metadata !342, metadata !DIExpression()), !dbg !4905
  %40 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4933
  %41 = icmp eq i32 %40, -1
  br label %42

; <label>:42:                                     ; preds = %37, %38
  %43 = phi i1 [ true, %37 ], [ %41, %38 ]
  %44 = phi i32 [ %35, %37 ], [ %39, %38 ], !dbg !4934
  call void @llvm.dbg.value(metadata i32 %44, metadata !342, metadata !DIExpression()), !dbg !4905
  %45 = icmp sgt i32 %44, -1, !dbg !4935
  %46 = and i1 %45, %43, !dbg !4925
  br i1 %46, label %47, label %74, !dbg !4925

; <label>:47:                                     ; preds = %42
  %48 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10, !dbg !4936
  call void @llvm.dbg.value(metadata i32 %48, metadata !346, metadata !DIExpression()), !dbg !4937
  %49 = icmp slt i32 %48, 0, !dbg !4938
  br i1 %49, label %54, label %50, !dbg !4939

; <label>:50:                                     ; preds = %47
  %51 = or i32 %48, 1, !dbg !4940
  %52 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %51) #10, !dbg !4941
  %53 = icmp eq i32 %52, -1, !dbg !4942
  br i1 %53, label %54, label %74, !dbg !4943

; <label>:54:                                     ; preds = %50, %47
  %55 = tail call i32* @__errno_location() #17, !dbg !4944
  %56 = load i32, i32* %55, align 4, !dbg !4944, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %56, metadata !349, metadata !DIExpression()), !dbg !4945
  %57 = call i32 @close(i32 %44) #10, !dbg !4946
  store i32 %56, i32* %55, align 4, !dbg !4947, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 -1, metadata !342, metadata !DIExpression()), !dbg !4905
  br label %74, !dbg !4948

; <label>:58:                                     ; preds = %2
  br i1 %8, label %59, label %65, !dbg !4949

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4949
  %61 = load i8*, i8** %60, align 16, !dbg !4949
  %62 = sext i32 %7 to i64, !dbg !4949
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !4949
  %64 = add i32 %7, 8, !dbg !4949
  store i32 %64, i32* %6, align 16, !dbg !4949
  br label %69, !dbg !4949

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4949
  %67 = load i8*, i8** %66, align 8, !dbg !4949
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4949
  store i8* %68, i8** %66, align 8, !dbg !4949
  br label %69, !dbg !4949

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8* [ %63, %59 ], [ %67, %65 ]
  %71 = bitcast i8* %70 to i8**, !dbg !4949
  %72 = load i8*, i8** %71, align 8, !dbg !4949
  call void @llvm.dbg.value(metadata i8* %72, metadata !352, metadata !DIExpression()), !dbg !4950
  %73 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %72) #10, !dbg !4951
  call void @llvm.dbg.value(metadata i32 %73, metadata !342, metadata !DIExpression()), !dbg !4905
  br label %74

; <label>:74:                                     ; preds = %33, %34, %50, %54, %42, %69
  %75 = phi i32 [ %73, %69 ], [ %35, %34 ], [ %44, %42 ], [ -1, %54 ], [ %44, %50 ], [ %27, %33 ], !dbg !4908
  call void @llvm.dbg.value(metadata i32 %75, metadata !342, metadata !DIExpression()), !dbg !4905
  call void @llvm.va_end(i8* nonnull %4), !dbg !4952
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #10, !dbg !4953
  ret i32 %75, !dbg !4954
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4955 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4994, metadata !DIExpression()), !dbg !4995
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4996
  br i1 %2, label %6, label %3, !dbg !4998

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4999
  %5 = icmp eq i32 %4, 0, !dbg !4999
  br i1 %5, label %6, label %8, !dbg !5000

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5001
  br label %17, !dbg !5002

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5003, metadata !DIExpression()) #10, !dbg !5008
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5010
  %10 = load i32, i32* %9, align 8, !dbg !5010, !tbaa !1469
  %11 = and i32 %10, 256, !dbg !5012
  %12 = icmp eq i32 %11, 0, !dbg !5012
  br i1 %12, label %15, label %13, !dbg !5013

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5014
  br label %15, !dbg !5014

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5015
  br label %17, !dbg !5016

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !5017
  ret i32 %18, !dbg !5018
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !5019 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5058, metadata !DIExpression()), !dbg !5064
  call void @llvm.dbg.value(metadata i64 %1, metadata !5059, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i32 %2, metadata !5060, metadata !DIExpression()), !dbg !5066
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5067
  %5 = load i8*, i8** %4, align 8, !dbg !5067, !tbaa !5068
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5069
  %7 = load i8*, i8** %6, align 8, !dbg !5069, !tbaa !5070
  %8 = icmp eq i8* %5, %7, !dbg !5071
  br i1 %8, label %9, label %28, !dbg !5072

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5073
  %11 = load i8*, i8** %10, align 8, !dbg !5073, !tbaa !1400
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5074
  %13 = load i8*, i8** %12, align 8, !dbg !5074, !tbaa !5075
  %14 = icmp eq i8* %11, %13, !dbg !5076
  br i1 %14, label %15, label %28, !dbg !5077

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5078
  %17 = load i8*, i8** %16, align 8, !dbg !5078, !tbaa !5079
  %18 = icmp eq i8* %17, null, !dbg !5080
  br i1 %18, label %19, label %28, !dbg !5081

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5082
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5083
  call void @llvm.dbg.value(metadata i64 %21, metadata !5061, metadata !DIExpression()), !dbg !5084
  %22 = icmp eq i64 %21, -1, !dbg !5085
  br i1 %22, label %30, label %23, !dbg !5087

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5088
  %25 = load i32, i32* %24, align 8, !dbg !5089, !tbaa !1469
  %26 = and i32 %25, -17, !dbg !5089
  store i32 %26, i32* %24, align 8, !dbg !5089, !tbaa !1469
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5090
  store i64 %21, i64* %27, align 8, !dbg !5091, !tbaa !5092
  br label %30, !dbg !5093

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5094
  br label %30, !dbg !5095

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5096
  ret i32 %31, !dbg !5097
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !5098 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !5115, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.value(metadata i8* %1, metadata !5116, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata i64 %2, metadata !5117, metadata !DIExpression()), !dbg !5126
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !5118, metadata !DIExpression()), !dbg !5127
  %6 = bitcast i32* %5 to i8*, !dbg !5128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !5128
  %7 = icmp eq i32* %0, null, !dbg !5129
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5131
  call void @llvm.dbg.value(metadata i32* %8, metadata !5115, metadata !DIExpression()), !dbg !5124
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !5132
  call void @llvm.dbg.value(metadata i64 %9, metadata !5119, metadata !DIExpression()), !dbg !5133
  %10 = icmp ugt i64 %9, -3, !dbg !5134
  %11 = icmp ne i64 %2, 0, !dbg !5135
  %12 = and i1 %11, %10, !dbg !5136
  br i1 %12, label %13, label %18, !dbg !5136

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !5137
  br i1 %14, label %18, label %15, !dbg !5138

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5139, !tbaa !1124
  call void @llvm.dbg.value(metadata i8 %16, metadata !5121, metadata !DIExpression()), !dbg !5140
  %17 = zext i8 %16 to i32, !dbg !5141
  store i32 %17, i32* %8, align 4, !dbg !5142, !tbaa !1038
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !5143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !5144
  ret i64 %19, !dbg !5144
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !5145 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5184, metadata !DIExpression()), !dbg !5189
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !5190
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5191, metadata !DIExpression()), !dbg !5194
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5196
  %4 = load i32, i32* %3, align 8, !dbg !5196, !tbaa !1469
  %5 = and i32 %4, 32, !dbg !5196
  %6 = icmp eq i32 %5, 0, !dbg !5197
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !5198
  %8 = icmp ne i32 %7, 0, !dbg !5199
  br i1 %6, label %9, label %19, !dbg !5200

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5202
  %11 = xor i1 %8, true, !dbg !5203
  %12 = or i1 %10, %11, !dbg !5203
  %13 = sext i1 %8 to i32, !dbg !5203
  br i1 %12, label %22, label %14, !dbg !5203

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !5204
  %16 = load i32, i32* %15, align 4, !dbg !5204, !tbaa !1038
  %17 = icmp ne i32 %16, 9, !dbg !5205
  %18 = sext i1 %17 to i32, !dbg !5206
  br label %22, !dbg !5206

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5207

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !5209
  store i32 0, i32* %21, align 4, !dbg !5211, !tbaa !1038
  br label %22, !dbg !5209

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !5212
  ret i32 %23, !dbg !5213
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !5214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5219, metadata !DIExpression()), !dbg !5222
  call void @llvm.dbg.value(metadata i8 1, metadata !5220, metadata !DIExpression()), !dbg !5223
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !5224
  call void @llvm.dbg.value(metadata i8* %2, metadata !5221, metadata !DIExpression()), !dbg !5225
  %3 = icmp eq i8* %2, null, !dbg !5226
  br i1 %3, label %11, label %4, !dbg !5228

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i64 0, i64 0)) #14, !dbg !5229
  %6 = icmp eq i32 %5, 0, !dbg !5234
  br i1 %6, label %10, label %7, !dbg !5235

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.178, i64 0, i64 0)) #14, !dbg !5236
  %9 = icmp eq i32 %8, 0, !dbg !5237
  br i1 %9, label %10, label %11, !dbg !5238

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !5220, metadata !DIExpression()), !dbg !5223
  br label %11, !dbg !5239

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !5240
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !5241 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !5247
  call void @llvm.dbg.value(metadata i8* %1, metadata !5246, metadata !DIExpression()), !dbg !5248
  %2 = icmp eq i8* %1, null, !dbg !5249
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.181, i64 0, i64 0), i8* %1, !dbg !5251
  call void @llvm.dbg.value(metadata i8* %3, metadata !5246, metadata !DIExpression()), !dbg !5248
  %4 = load i8, i8* %3, align 1, !dbg !5252, !tbaa !1124
  %5 = icmp eq i8 %4, 0, !dbg !5256
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.182, i64 0, i64 0), i8* %3, !dbg !5257
  call void @llvm.dbg.value(metadata i8* %6, metadata !5246, metadata !DIExpression()), !dbg !5248
  ret i8* %6, !dbg !5258
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

!llvm.dbg.cu = !{!2, !219, !225, !233, !245, !354, !357, !252, !259, !359, !361, !312, !369, !386, !388, !390, !325, !392, !394, !396, !399, !401, !403}
!llvm.ident = !{!792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792}
!llvm.module.flags = !{!793, !794, !795, !796, !797}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 202, type: !196, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !58, globals: !68)
!3 = !DIFile(filename: "src/md5sum.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20, !35, !49}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!23 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !37, file: !36, line: 187, baseType: !7, size: 32, elements: !47)
!36 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!37 = distinct !DISubprogram(name: "select_plural", scope: !36, file: !36, line: 183, type: !38, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !45)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !41}
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !42, line: 102, baseType: !43)
!42 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !44, line: 72, baseType: !40)
!44 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!45 = !{!46}
!46 = !DILocalVariable(name: "n", arg: 1, scope: !37, file: !36, line: 183, type: !41)
!47 = !{!48}
!48 = !DIEnumerator(name: "PLURAL_REDUCER", value: 1000000, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 45, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!51 = !{!52, !53, !54, !55, !56, !57}
!52 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!55 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!58 = !{!59, !61, !62, !64, !65, !67, !66}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 62, baseType: !40)
!63 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !{!69, !72, !74, !0, !76, !78, !80, !82, !84, !86, !88, !194}
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 131, type: !71, isLocal: true, isDefinition: true)
!71 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "min_digest_line_length", scope: !2, file: !3, line: 134, type: !62, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "digest_hex_bytes", scope: !2, file: !3, line: 137, type: !62, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "status_only", scope: !2, file: !3, line: 141, type: !71, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "warn", scope: !2, file: !3, line: 145, type: !71, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "quiet", scope: !2, file: !3, line: 151, type: !71, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "ignore_missing", scope: !2, file: !3, line: 148, type: !71, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "strict", scope: !2, file: !3, line: 155, type: !71, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 161, type: !66, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "bin2hex", scope: !90, file: !3, line: 730, type: !191, isLocal: true, isDefinition: true)
!90 = distinct !DISubprogram(name: "digest_check", scope: !3, file: !3, line: 652, type: !91, isLocal: true, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !95)
!91 = !DISubroutineType(types: !92)
!92 = !{!71, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!95 = !{!96, !97, !152, !153, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !165, !167, !168, !169, !173, !176, !177, !178, !182, !183, !189}
!96 = !DILocalVariable(name: "checkfile_name", arg: 1, scope: !90, file: !3, line: 652, type: !93)
!97 = !DILocalVariable(name: "checkfile_stream", scope: !90, file: !3, line: 654, type: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !101)
!100 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !103)
!102 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !119, !121, !122, !123, !126, !127, !129, !133, !136, !138, !141, !144, !145, !146, !147, !148}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !101, file: !102, line: 51, baseType: !64, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !101, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !101, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !101, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !101, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !101, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !101, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !101, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !101, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !101, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !101, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !101, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !101, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !102, line: 36, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !101, file: !102, line: 70, baseType: !120, size: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !101, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !101, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !101, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 150, baseType: !125)
!125 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !101, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !101, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!128 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !101, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 8, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 1)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !101, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !102, line: 43, baseType: null)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !101, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 151, baseType: !125)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !101, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !102, line: 37, flags: DIFlagFwdDecl)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !101, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !102, line: 38, flags: DIFlagFwdDecl)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !101, file: !102, line: 93, baseType: !120, size: 64, offset: 1344)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !101, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !101, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !101, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !101, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 160, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 20)
!152 = !DILocalVariable(name: "n_misformatted_lines", scope: !90, file: !3, line: 655, type: !41)
!153 = !DILocalVariable(name: "n_improperly_formatted_lines", scope: !90, file: !3, line: 656, type: !41)
!154 = !DILocalVariable(name: "n_mismatched_checksums", scope: !90, file: !3, line: 657, type: !41)
!155 = !DILocalVariable(name: "n_open_or_read_failures", scope: !90, file: !3, line: 658, type: !41)
!156 = !DILocalVariable(name: "properly_formatted_lines", scope: !90, file: !3, line: 659, type: !71)
!157 = !DILocalVariable(name: "matched_checksums", scope: !90, file: !3, line: 660, type: !71)
!158 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !90, file: !3, line: 661, type: !159)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 160, elements: !150)
!160 = !DILocalVariable(name: "bin_buffer", scope: !90, file: !3, line: 663, type: !65)
!161 = !DILocalVariable(name: "line_number", scope: !90, file: !3, line: 664, type: !41)
!162 = !DILocalVariable(name: "line", scope: !90, file: !3, line: 665, type: !59)
!163 = !DILocalVariable(name: "line_chars_allocated", scope: !90, file: !3, line: 666, type: !62)
!164 = !DILocalVariable(name: "is_stdin", scope: !90, file: !3, line: 667, type: !71)
!165 = !DILocalVariable(name: "filename", scope: !166, file: !3, line: 690, type: !59)
!166 = distinct !DILexicalBlock(scope: !90, file: !3, line: 689, column: 5)
!167 = !DILocalVariable(name: "binary", scope: !166, file: !3, line: 691, type: !64)
!168 = !DILocalVariable(name: "hex_digest", scope: !166, file: !3, line: 692, type: !65)
!169 = !DILocalVariable(name: "line_length", scope: !166, file: !3, line: 693, type: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !171, line: 108, baseType: !172)
!171 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !44, line: 191, baseType: !125)
!173 = !DILocalVariable(name: "ok", scope: !174, file: !3, line: 734, type: !71)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 729, column: 9)
!175 = distinct !DILexicalBlock(scope: !166, file: !3, line: 712, column: 11)
!176 = !DILocalVariable(name: "missing", scope: !174, file: !3, line: 735, type: !71)
!177 = !DILocalVariable(name: "needs_escape", scope: !174, file: !3, line: 738, type: !71)
!178 = !DILocalVariable(name: "digest_bin_bytes", scope: !179, file: !3, line: 762, type: !62)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 761, column: 13)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 755, column: 20)
!181 = distinct !DILexicalBlock(scope: !174, file: !3, line: 744, column: 15)
!182 = !DILocalVariable(name: "cnt", scope: !179, file: !3, line: 763, type: !62)
!183 = !DILocalVariable(name: "__res", scope: !184, file: !3, line: 769, type: !64)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 769, column: 23)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 769, column: 23)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 768, column: 17)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 767, column: 15)
!188 = distinct !DILexicalBlock(scope: !179, file: !3, line: 767, column: 15)
!189 = !DILocalVariable(name: "__res", scope: !190, file: !3, line: 771, type: !64)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 771, column: 27)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 16)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "bsd_reversed", scope: !2, file: !3, line: 158, type: !64, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 3328, elements: !206)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !199, line: 50, size: 256, elements: !200)
!199 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!200 = !{!201, !202, !203, !205}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !199, line: 52, baseType: !93, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !198, file: !199, line: 55, baseType: !64, size: 32, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !198, file: !199, line: 56, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !198, file: !199, line: 57, baseType: !64, size: 32, offset: 192)
!206 = !{!207}
!207 = !DISubrange(count: 13)
!208 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!209 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!210 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!211 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!212 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!213 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!214 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 34, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!215 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 32, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!216 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "Version", scope: !219, file: !220, line: 2, type: !93, isLocal: false, isDefinition: true)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, globals: !222)
!220 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!221 = !{}
!222 = !{!217}
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "file_name", scope: !225, file: !230, line: 46, type: !93, isLocal: true, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, globals: !227)
!226 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!227 = !{!223, !228}
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !225, file: !230, line: 56, type: !71, isLocal: true, isDefinition: true)
!230 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "fillbuf", scope: !233, file: !238, line: 70, type: !239, isLocal: true, isDefinition: true)
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !235, globals: !237)
!234 = !DIFile(filename: "./lib/md5.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!235 = !{!59, !93, !236}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !42, line: 90, baseType: !40)
!237 = !{!231}
!238 = !DIFile(filename: "lib/md5.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 512, elements: !241)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!241 = !{!242}
!242 = !DISubrange(count: 64)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "exit_failure", scope: !245, file: !248, line: 24, type: !249, isLocal: false, isDefinition: true)
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, globals: !247)
!246 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!247 = !{!243}
!248 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!249 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "program_name", scope: !252, file: !256, line: 33, type: !93, isLocal: false, isDefinition: true)
!252 = distinct !DICompileUnit(language: DW_LANG_C99, file: !253, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !254, globals: !255)
!253 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!254 = !{!61, !59}
!255 = !{!250}
!256 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !259, file: !271, line: 85, type: !306, isLocal: false, isDefinition: true)
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !261, retainedTypes: !267, globals: !268)
!260 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!261 = !{!5, !262, !20}
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !263)
!263 = !{!264, !265, !266}
!264 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!265 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!266 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!267 = !{!64, !67, !62, !59}
!268 = !{!257, !269, !276, !288, !290, !295, !302, !304}
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !259, file: !271, line: 101, type: !272, isLocal: false, isDefinition: true)
!271 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 320, elements: !274)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!274 = !{!275}
!275 = !DISubrange(count: 10)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !259, file: !271, line: 1052, type: !278, isLocal: false, isDefinition: true)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !271, line: 65, size: 448, elements: !279)
!279 = !{!280, !281, !282, !286, !287}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !278, file: !271, line: 68, baseType: !5, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !271, line: 71, baseType: !64, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !278, file: !271, line: 75, baseType: !283, size: 256, offset: 64)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 8)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !278, file: !271, line: 78, baseType: !93, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !278, file: !271, line: 81, baseType: !93, size: 64, offset: 384)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !259, file: !271, line: 116, type: !278, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "slot0", scope: !259, file: !271, line: 842, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2048, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 256)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "slotvec", scope: !259, file: !271, line: 845, type: !297, isLocal: true, isDefinition: true)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !271, line: 834, size: 128, elements: !299)
!299 = !{!300, !301}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !298, file: !271, line: 836, baseType: !62, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !298, file: !271, line: 837, baseType: !59, size: 64, offset: 64)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "nslots", scope: !259, file: !271, line: 843, type: !64, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "slotvec0", scope: !259, file: !271, line: 844, type: !298, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 704, elements: !308)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!308 = !{!309}
!309 = !DISubrange(count: 11)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !312, file: !315, line: 26, type: !316, isLocal: false, isDefinition: true)
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, globals: !314)
!313 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!314 = !{!310}
!315 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 376, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 47)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !321, file: !322, line: 339, type: !64, isLocal: true, isDefinition: true)
!321 = distinct !DISubprogram(name: "rpl_fcntl", scope: !322, file: !322, line: 276, type: !323, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !325, retainedNodes: !328)
!322 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!323 = !DISubroutineType(types: !324)
!324 = !{!64, !64, !64, null}
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, globals: !327)
!326 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!327 = !{!319}
!328 = !{!329, !330, !331, !342, !343, !346, !349, !352}
!329 = !DILocalVariable(name: "fd", arg: 1, scope: !321, file: !322, line: 276, type: !64)
!330 = !DILocalVariable(name: "action", arg: 2, scope: !321, file: !322, line: 276, type: !64)
!331 = !DILocalVariable(name: "arg", scope: !321, file: !322, line: 278, type: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !333, line: 30, baseType: !334)
!333 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !326, line: 278, baseType: !335)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 192, elements: !131)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !326, line: 278, size: 192, elements: !337)
!337 = !{!338, !339, !340, !341}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !336, file: !326, line: 278, baseType: !7, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !336, file: !326, line: 278, baseType: !7, size: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !336, file: !326, line: 278, baseType: !61, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !336, file: !326, line: 278, baseType: !61, size: 64, offset: 128)
!342 = !DILocalVariable(name: "result", scope: !321, file: !322, line: 279, type: !64)
!343 = !DILocalVariable(name: "target", scope: !344, file: !322, line: 326, type: !64)
!344 = distinct !DILexicalBlock(scope: !345, file: !322, line: 325, column: 7)
!345 = distinct !DILexicalBlock(scope: !321, file: !322, line: 282, column: 5)
!346 = !DILocalVariable(name: "flags", scope: !347, file: !322, line: 363, type: !64)
!347 = distinct !DILexicalBlock(scope: !348, file: !322, line: 362, column: 11)
!348 = distinct !DILexicalBlock(scope: !344, file: !322, line: 361, column: 13)
!349 = !DILocalVariable(name: "saved_errno", scope: !350, file: !322, line: 366, type: !64)
!350 = distinct !DILexicalBlock(scope: !351, file: !322, line: 365, column: 15)
!351 = distinct !DILexicalBlock(scope: !347, file: !322, line: 364, column: 17)
!352 = !DILocalVariable(name: "p", scope: !353, file: !322, line: 408, type: !61)
!353 = distinct !DILexicalBlock(scope: !345, file: !322, line: 406, column: 7)
!354 = distinct !DICompileUnit(language: DW_LANG_C99, file: !355, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !356)
!355 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!356 = !{!49}
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221)
!358 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!359 = distinct !DICompileUnit(language: DW_LANG_C99, file: !360, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221)
!360 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!361 = distinct !DICompileUnit(language: DW_LANG_C99, file: !362, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !363, retainedTypes: !368)
!362 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!363 = !{!364}
!364 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !365, line: 41, baseType: !7, size: 32, elements: !366)
!365 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!366 = !{!367}
!367 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!368 = !{!61}
!369 = distinct !DICompileUnit(language: DW_LANG_C99, file: !370, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !371, retainedTypes: !385)
!370 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!371 = !{!372}
!372 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !374, file: !373, line: 186, baseType: !7, size: 32, elements: !383)
!373 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!374 = distinct !DISubprogram(name: "x2nrealloc", scope: !373, file: !373, line: 174, type: !375, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !369, retainedNodes: !378)
!375 = !DISubroutineType(types: !376)
!376 = !{!61, !61, !377, !62}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!378 = !{!379, !380, !381, !382}
!379 = !DILocalVariable(name: "p", arg: 1, scope: !374, file: !373, line: 174, type: !61)
!380 = !DILocalVariable(name: "pn", arg: 2, scope: !374, file: !373, line: 174, type: !377)
!381 = !DILocalVariable(name: "s", arg: 3, scope: !374, file: !373, line: 174, type: !62)
!382 = !DILocalVariable(name: "n", scope: !374, file: !373, line: 176, type: !62)
!383 = !{!384}
!384 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!385 = !{!62, !59, !61}
!386 = distinct !DICompileUnit(language: DW_LANG_C99, file: !387, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221)
!387 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!388 = distinct !DICompileUnit(language: DW_LANG_C99, file: !389, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !368)
!389 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!390 = distinct !DICompileUnit(language: DW_LANG_C99, file: !391, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221)
!391 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!392 = distinct !DICompileUnit(language: DW_LANG_C99, file: !393, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !368)
!393 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!394 = distinct !DICompileUnit(language: DW_LANG_C99, file: !395, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !368)
!395 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !398)
!397 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!398 = !{!62}
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221)
!400 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221)
!402 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!403 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !405, retainedTypes: !368)
!404 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!405 = !{!406}
!406 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !407, line: 41, baseType: !7, size: 32, elements: !408)
!407 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791}
!409 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!410 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!411 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!412 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!413 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!414 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!415 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!416 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!417 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!418 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!419 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!420 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!421 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!422 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!423 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!424 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!425 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!426 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!427 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!428 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!429 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!430 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!431 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!432 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!433 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!434 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!435 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!436 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!437 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!438 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!439 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!440 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!441 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!442 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!443 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!444 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!445 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!446 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!447 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!448 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!449 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!450 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!451 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!452 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!453 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!454 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!455 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!456 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!457 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!458 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!517 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!520 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!521 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!522 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!523 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!524 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!525 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!526 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!527 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!528 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!529 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!530 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!531 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!604 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!677 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!678 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!679 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!680 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!681 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!682 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!683 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!684 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!685 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!686 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!687 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!688 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!689 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!690 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!691 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!693 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!694 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!695 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!696 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!697 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!698 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!724 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!725 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!726 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!727 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!728 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!733 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!734 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!735 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!736 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!792 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!793 = !{i32 2, !"Dwarf Version", i32 4}
!794 = !{i32 2, !"Debug Info Version", i32 3}
!795 = !{i32 1, !"wchar_size", i32 4}
!796 = !{i32 7, !"PIC Level", i32 2}
!797 = !{i32 7, !"PIE Level", i32 2}
!798 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 223, type: !799, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !801)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !64}
!801 = !{!802}
!802 = !DILocalVariable(name: "status", arg: 1, scope: !798, file: !3, line: 223, type: !64)
!803 = !DILocalVariable(name: "infomap", scope: !804, file: !36, line: 632, type: !818)
!804 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !36, file: !36, line: 630, type: !805, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !93}
!807 = !{!808, !803, !809, !810, !817}
!808 = !DILocalVariable(name: "program", arg: 1, scope: !804, file: !36, line: 630, type: !93)
!809 = !DILocalVariable(name: "node", scope: !804, file: !36, line: 642, type: !93)
!810 = !DILocalVariable(name: "map_prog", scope: !804, file: !36, line: 643, type: !811)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !804, file: !36, line: 632, size: 128, elements: !814)
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !813, file: !36, line: 632, baseType: !93, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !813, file: !36, line: 632, baseType: !93, size: 64, offset: 64)
!817 = !DILocalVariable(name: "lc_messages", scope: !804, file: !36, line: 655, type: !93)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 896, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 7)
!821 = !DILocation(line: 632, column: 67, scope: !804, inlinedAt: !822)
!822 = distinct !DILocation(line: 292, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 228, column: 5)
!824 = distinct !DILexicalBlock(scope: !798, file: !3, line: 225, column: 7)
!825 = !DILocation(line: 223, column: 12, scope: !798)
!826 = !DILocation(line: 225, column: 14, scope: !824)
!827 = !DILocation(line: 225, column: 7, scope: !798)
!828 = !DILocation(line: 226, column: 5, scope: !829)
!829 = distinct !DILexicalBlock(scope: !824, file: !3, line: 226, column: 5)
!830 = !{!831, !831, i64 0}
!831 = !{!"any pointer", !832, i64 0}
!832 = !{!"omnipotent char", !833, i64 0}
!833 = !{!"Simple C/C++ TBAA"}
!834 = !DILocation(line: 229, column: 7, scope: !823)
!835 = !DILocation(line: 580, column: 3, scope: !836, inlinedAt: !839)
!836 = distinct !DISubprogram(name: "emit_stdin_note", scope: !36, file: !36, line: 578, type: !837, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !221)
!837 = !DISubroutineType(types: !838)
!838 = !{null}
!839 = distinct !DILocation(line: 237, column: 7, scope: !823)
!840 = !DILocation(line: 244, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !823, file: !3, line: 238, column: 11)
!842 = !DILocation(line: 249, column: 7, scope: !823)
!843 = !DILocation(line: 258, column: 7, scope: !823)
!844 = !DILocation(line: 266, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !823, file: !3, line: 261, column: 11)
!846 = !DILocation(line: 269, column: 7, scope: !823)
!847 = !DILocation(line: 273, column: 7, scope: !823)
!848 = !DILocation(line: 283, column: 7, scope: !823)
!849 = !DILocation(line: 284, column: 7, scope: !823)
!850 = !DILocation(line: 285, column: 7, scope: !823)
!851 = !DILocation(line: 632, column: 3, scope: !804, inlinedAt: !822)
!852 = !DILocation(line: 643, column: 36, scope: !804, inlinedAt: !822)
!853 = !DILocation(line: 643, column: 25, scope: !804, inlinedAt: !822)
!854 = !DILocation(line: 645, column: 33, scope: !804, inlinedAt: !822)
!855 = !DILocation(line: 645, column: 3, scope: !804, inlinedAt: !822)
!856 = !DILocation(line: 646, column: 13, scope: !804, inlinedAt: !822)
!857 = !DILocation(line: 645, column: 20, scope: !804, inlinedAt: !822)
!858 = !{!859, !831, i64 0}
!859 = !{!"infomap", !831, i64 0, !831, i64 8}
!860 = !DILocation(line: 645, column: 10, scope: !804, inlinedAt: !822)
!861 = !DILocation(line: 645, column: 28, scope: !804, inlinedAt: !822)
!862 = distinct !{!862, !863, !864}
!863 = !DILocation(line: 645, column: 3, scope: !804)
!864 = !DILocation(line: 646, column: 13, scope: !804)
!865 = !DILocation(line: 648, column: 17, scope: !866, inlinedAt: !822)
!866 = distinct !DILexicalBlock(scope: !804, file: !36, line: 648, column: 7)
!867 = !{!859, !831, i64 8}
!868 = !DILocation(line: 648, column: 7, scope: !866, inlinedAt: !822)
!869 = !DILocation(line: 648, column: 7, scope: !804, inlinedAt: !822)
!870 = !DILocation(line: 642, column: 15, scope: !804, inlinedAt: !822)
!871 = !DILocation(line: 651, column: 3, scope: !804, inlinedAt: !822)
!872 = !DILocation(line: 655, column: 29, scope: !804, inlinedAt: !822)
!873 = !DILocation(line: 655, column: 15, scope: !804, inlinedAt: !822)
!874 = !DILocation(line: 656, column: 7, scope: !875, inlinedAt: !822)
!875 = distinct !DILexicalBlock(scope: !804, file: !36, line: 656, column: 7)
!876 = !DILocation(line: 656, column: 19, scope: !875, inlinedAt: !822)
!877 = !DILocation(line: 656, column: 22, scope: !875, inlinedAt: !822)
!878 = !DILocation(line: 656, column: 7, scope: !804, inlinedAt: !822)
!879 = !DILocation(line: 662, column: 7, scope: !880, inlinedAt: !822)
!880 = distinct !DILexicalBlock(scope: !875, file: !36, line: 657, column: 5)
!881 = !DILocation(line: 664, column: 5, scope: !880, inlinedAt: !822)
!882 = !DILocation(line: 665, column: 3, scope: !804, inlinedAt: !822)
!883 = !DILocation(line: 667, column: 3, scope: !804, inlinedAt: !822)
!884 = !DILocation(line: 669, column: 1, scope: !804, inlinedAt: !822)
!885 = !DILocation(line: 295, column: 3, scope: !798)
!886 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 861, type: !887, isLocal: false, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !890)
!887 = !DISubroutineType(types: !888)
!888 = !{!64, !64, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!890 = !{!891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !904, !907, !910, !911, !914}
!891 = !DILocalVariable(name: "argc", arg: 1, scope: !886, file: !3, line: 861, type: !64)
!892 = !DILocalVariable(name: "argv", arg: 2, scope: !886, file: !3, line: 861, type: !889)
!893 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !886, file: !3, line: 863, type: !159)
!894 = !DILocalVariable(name: "bin_buffer", scope: !886, file: !3, line: 865, type: !65)
!895 = !DILocalVariable(name: "do_check", scope: !886, file: !3, line: 866, type: !71)
!896 = !DILocalVariable(name: "opt", scope: !886, file: !3, line: 867, type: !64)
!897 = !DILocalVariable(name: "ok", scope: !886, file: !3, line: 868, type: !71)
!898 = !DILocalVariable(name: "binary", scope: !886, file: !3, line: 869, type: !64)
!899 = !DILocalVariable(name: "prefix_tag", scope: !886, file: !3, line: 870, type: !71)
!900 = !DILocalVariable(name: "short_opts", scope: !886, file: !3, line: 889, type: !93)
!901 = !DILocalVariable(name: "operand_lim", scope: !886, file: !3, line: 1038, type: !889)
!902 = !DILocalVariable(name: "operandp", scope: !903, file: !3, line: 1042, type: !889)
!903 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1042, column: 3)
!904 = !DILocalVariable(name: "file", scope: !905, file: !3, line: 1044, type: !59)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 1043, column: 5)
!906 = distinct !DILexicalBlock(scope: !903, file: !3, line: 1042, column: 3)
!907 = !DILocalVariable(name: "file_is_binary", scope: !908, file: !3, line: 1050, type: !64)
!908 = distinct !DILexicalBlock(scope: !909, file: !3, line: 1049, column: 9)
!909 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1046, column: 11)
!910 = !DILocalVariable(name: "missing", scope: !908, file: !3, line: 1051, type: !71)
!911 = !DILocalVariable(name: "needs_escape", scope: !912, file: !3, line: 1064, type: !71)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 1056, column: 13)
!913 = distinct !DILexicalBlock(scope: !908, file: !3, line: 1053, column: 15)
!914 = !DILocalVariable(name: "i", scope: !915, file: !3, line: 1089, type: !62)
!915 = distinct !DILexicalBlock(scope: !912, file: !3, line: 1089, column: 15)
!916 = !DILocation(line: 661, column: 17, scope: !90, inlinedAt: !917)
!917 = distinct !DILocation(line: 1047, column: 15, scope: !909)
!918 = !DILocation(line: 861, column: 11, scope: !886)
!919 = !DILocation(line: 861, column: 24, scope: !886)
!920 = !DILocation(line: 863, column: 3, scope: !886)
!921 = !DILocation(line: 863, column: 17, scope: !886)
!922 = !DILocalVariable(name: "ptr", arg: 1, scope: !923, file: !36, line: 498, type: !926)
!923 = distinct !DISubprogram(name: "ptr_align", scope: !36, file: !36, line: 498, type: !924, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !928)
!924 = !DISubroutineType(types: !925)
!925 = !{!61, !926, !62}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!928 = !{!922, !929, !930, !931}
!929 = !DILocalVariable(name: "alignment", arg: 2, scope: !923, file: !36, line: 498, type: !62)
!930 = !DILocalVariable(name: "p0", scope: !923, file: !36, line: 500, type: !93)
!931 = !DILocalVariable(name: "p1", scope: !923, file: !36, line: 501, type: !93)
!932 = !DILocation(line: 498, column: 24, scope: !923, inlinedAt: !933)
!933 = distinct !DILocation(line: 865, column: 31, scope: !886)
!934 = !DILocation(line: 498, column: 36, scope: !923, inlinedAt: !933)
!935 = !DILocation(line: 500, column: 15, scope: !923, inlinedAt: !933)
!936 = !DILocation(line: 501, column: 35, scope: !923, inlinedAt: !933)
!937 = !DILocation(line: 501, column: 15, scope: !923, inlinedAt: !933)
!938 = !DILocation(line: 502, column: 25, scope: !923, inlinedAt: !933)
!939 = !DILocation(line: 502, column: 37, scope: !923, inlinedAt: !933)
!940 = !DILocation(line: 502, column: 23, scope: !923, inlinedAt: !933)
!941 = !DILocation(line: 865, column: 18, scope: !886)
!942 = !DILocation(line: 866, column: 8, scope: !886)
!943 = !DILocation(line: 868, column: 8, scope: !886)
!944 = !DILocation(line: 869, column: 7, scope: !886)
!945 = !DILocation(line: 870, column: 8, scope: !886)
!946 = !DILocation(line: 874, column: 21, scope: !886)
!947 = !DILocation(line: 874, column: 3, scope: !886)
!948 = !DILocation(line: 875, column: 3, scope: !886)
!949 = !DILocation(line: 876, column: 3, scope: !886)
!950 = !DILocation(line: 877, column: 3, scope: !886)
!951 = !DILocation(line: 879, column: 3, scope: !886)
!952 = !DILocation(line: 883, column: 12, scope: !886)
!953 = !DILocation(line: 883, column: 3, scope: !886)
!954 = !DILocation(line: 892, column: 3, scope: !886)
!955 = !DILocation(line: 892, column: 17, scope: !886)
!956 = !DILocation(line: 867, column: 7, scope: !886)
!957 = distinct !{!957, !954, !958}
!958 = !DILocation(line: 948, column: 7, scope: !886)
!959 = !DILocation(line: 912, column: 9, scope: !960)
!960 = distinct !DILexicalBlock(scope: !886, file: !3, line: 894, column: 7)
!961 = !DILocation(line: 917, column: 9, scope: !960)
!962 = !DILocation(line: 920, column: 9, scope: !960)
!963 = !DILocation(line: 925, column: 9, scope: !960)
!964 = !DILocation(line: 928, column: 9, scope: !960)
!965 = !DILocation(line: 933, column: 9, scope: !960)
!966 = !DILocation(line: 936, column: 9, scope: !960)
!967 = !DILocation(line: 940, column: 9, scope: !960)
!968 = !DILocation(line: 943, column: 9, scope: !960)
!969 = !DILocation(line: 944, column: 7, scope: !960)
!970 = !DILocation(line: 945, column: 7, scope: !960)
!971 = !DILocation(line: 947, column: 9, scope: !960)
!972 = !DILocation(line: 967, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !886, file: !3, line: 967, column: 7)
!974 = !DILocation(line: 967, column: 18, scope: !973)
!975 = !DILocation(line: 967, column: 22, scope: !973)
!976 = !DILocation(line: 974, column: 19, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !3, line: 968, column: 4)
!978 = !DILocation(line: 974, column: 6, scope: !977)
!979 = !DILocation(line: 975, column: 6, scope: !977)
!980 = !DILocation(line: 978, column: 21, scope: !981)
!981 = distinct !DILexicalBlock(scope: !886, file: !3, line: 978, column: 7)
!982 = !DILocation(line: 978, column: 24, scope: !981)
!983 = !DILocation(line: 980, column: 20, scope: !984)
!984 = distinct !DILexicalBlock(scope: !981, file: !3, line: 979, column: 5)
!985 = !DILocation(line: 980, column: 7, scope: !984)
!986 = !DILocation(line: 982, column: 7, scope: !984)
!987 = !DILocation(line: 985, column: 18, scope: !988)
!988 = distinct !DILexicalBlock(scope: !886, file: !3, line: 985, column: 7)
!989 = !DILocation(line: 987, column: 20, scope: !990)
!990 = distinct !DILexicalBlock(scope: !988, file: !3, line: 986, column: 5)
!991 = !DILocation(line: 987, column: 7, scope: !990)
!992 = !DILocation(line: 989, column: 7, scope: !990)
!993 = !DILocation(line: 992, column: 9, scope: !994)
!994 = distinct !DILexicalBlock(scope: !886, file: !3, line: 992, column: 7)
!995 = !DILocation(line: 992, column: 19, scope: !994)
!996 = !DILocation(line: 994, column: 20, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !3, line: 993, column: 5)
!998 = !DILocation(line: 994, column: 7, scope: !997)
!999 = !DILocation(line: 996, column: 7, scope: !997)
!1000 = !DILocation(line: 999, column: 22, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !886, file: !3, line: 999, column: 7)
!1002 = !DILocation(line: 1002, column: 14, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 1000, column: 5)
!1004 = !DILocation(line: 1001, column: 7, scope: !1003)
!1005 = !DILocation(line: 1004, column: 7, scope: !1003)
!1006 = !DILocation(line: 1007, column: 19, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1007, column: 7)
!1008 = !DILocation(line: 1010, column: 8, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 1008, column: 5)
!1010 = !DILocation(line: 1009, column: 7, scope: !1009)
!1011 = !DILocation(line: 1011, column: 7, scope: !1009)
!1012 = !DILocation(line: 1014, column: 12, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1014, column: 7)
!1014 = !DILocation(line: 1017, column: 8, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 1015, column: 5)
!1016 = !DILocation(line: 1016, column: 7, scope: !1015)
!1017 = !DILocation(line: 1018, column: 7, scope: !1015)
!1018 = !DILocation(line: 1021, column: 13, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1021, column: 7)
!1020 = !DILocation(line: 1024, column: 8, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 1022, column: 5)
!1022 = !DILocation(line: 1023, column: 7, scope: !1021)
!1023 = !DILocation(line: 1025, column: 7, scope: !1021)
!1024 = !DILocation(line: 1028, column: 17, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1028, column: 7)
!1026 = !DILocation(line: 1028, column: 16, scope: !1025)
!1027 = !DILocation(line: 1028, column: 14, scope: !1025)
!1028 = !DILocation(line: 1028, column: 7, scope: !886)
!1029 = !DILocation(line: 1031, column: 9, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 1029, column: 4)
!1031 = !DILocation(line: 1030, column: 6, scope: !1030)
!1032 = !DILocation(line: 1032, column: 6, scope: !1030)
!1033 = !DILocation(line: 1035, column: 7, scope: !886)
!1034 = !DILocation(line: 1038, column: 29, scope: !886)
!1035 = !DILocation(line: 1038, column: 10, scope: !886)
!1036 = !DILocation(line: 1039, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1039, column: 7)
!1038 = !{!1039, !1039, i64 0}
!1039 = !{!"int", !832, i64 0}
!1040 = !DILocation(line: 1039, column: 14, scope: !1037)
!1041 = !DILocation(line: 1039, column: 7, scope: !886)
!1042 = !DILocation(line: 1040, column: 17, scope: !1037)
!1043 = !DILocation(line: 1040, column: 20, scope: !1037)
!1044 = !DILocation(line: 1040, column: 5, scope: !1037)
!1045 = !DILocation(line: 0, scope: !886)
!1046 = !DILocation(line: 1042, column: 31, scope: !903)
!1047 = !DILocation(line: 1042, column: 15, scope: !903)
!1048 = !DILocation(line: 1042, column: 50, scope: !906)
!1049 = !DILocation(line: 1042, column: 3, scope: !903)
!1050 = !DILocation(line: 0, scope: !909)
!1051 = !DILocation(line: 1106, column: 23, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1106, column: 7)
!1053 = !DILocation(line: 1044, column: 20, scope: !905)
!1054 = !DILocation(line: 1044, column: 13, scope: !905)
!1055 = !DILocation(line: 1046, column: 11, scope: !905)
!1056 = !DILocation(line: 652, column: 27, scope: !90, inlinedAt: !917)
!1057 = !DILocation(line: 655, column: 13, scope: !90, inlinedAt: !917)
!1058 = !DILocation(line: 656, column: 13, scope: !90, inlinedAt: !917)
!1059 = !DILocation(line: 657, column: 13, scope: !90, inlinedAt: !917)
!1060 = !DILocation(line: 658, column: 13, scope: !90, inlinedAt: !917)
!1061 = !DILocation(line: 659, column: 8, scope: !90, inlinedAt: !917)
!1062 = !DILocation(line: 660, column: 8, scope: !90, inlinedAt: !917)
!1063 = !DILocation(line: 661, column: 3, scope: !90, inlinedAt: !917)
!1064 = !DILocation(line: 498, column: 24, scope: !923, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 663, column: 31, scope: !90, inlinedAt: !917)
!1066 = !DILocation(line: 498, column: 36, scope: !923, inlinedAt: !1065)
!1067 = !DILocation(line: 500, column: 15, scope: !923, inlinedAt: !1065)
!1068 = !DILocation(line: 501, column: 15, scope: !923, inlinedAt: !1065)
!1069 = !DILocation(line: 663, column: 18, scope: !90, inlinedAt: !917)
!1070 = !DILocation(line: 665, column: 3, scope: !90, inlinedAt: !917)
!1071 = !DILocation(line: 666, column: 3, scope: !90, inlinedAt: !917)
!1072 = !DILocation(line: 667, column: 19, scope: !90, inlinedAt: !917)
!1073 = !DILocation(line: 669, column: 7, scope: !90, inlinedAt: !917)
!1074 = !DILocation(line: 672, column: 24, scope: !1075, inlinedAt: !917)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 670, column: 5)
!1076 = distinct !DILexicalBlock(scope: !90, file: !3, line: 669, column: 7)
!1077 = !DILocation(line: 673, column: 26, scope: !1075, inlinedAt: !917)
!1078 = !DILocation(line: 654, column: 9, scope: !90, inlinedAt: !917)
!1079 = !DILocation(line: 674, column: 5, scope: !1075, inlinedAt: !917)
!1080 = !DILocation(line: 677, column: 26, scope: !1081, inlinedAt: !917)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 676, column: 5)
!1082 = !DILocation(line: 678, column: 28, scope: !1083, inlinedAt: !917)
!1083 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 678, column: 11)
!1084 = !DILocation(line: 678, column: 11, scope: !1081, inlinedAt: !917)
!1085 = !DILocation(line: 680, column: 21, scope: !1086, inlinedAt: !917)
!1086 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 679, column: 9)
!1087 = !DILocation(line: 680, column: 34, scope: !1086, inlinedAt: !917)
!1088 = !DILocation(line: 680, column: 11, scope: !1086, inlinedAt: !917)
!1089 = !DILocation(line: 681, column: 11, scope: !1086, inlinedAt: !917)
!1090 = !DILocation(line: 0, scope: !1081, inlinedAt: !917)
!1091 = !DILocation(line: 664, column: 13, scope: !90, inlinedAt: !917)
!1092 = !DILocation(line: 665, column: 9, scope: !90, inlinedAt: !917)
!1093 = !DILocation(line: 686, column: 8, scope: !90, inlinedAt: !917)
!1094 = !DILocation(line: 666, column: 10, scope: !90, inlinedAt: !917)
!1095 = !DILocation(line: 687, column: 24, scope: !90, inlinedAt: !917)
!1096 = !{!1097, !1097, i64 0}
!1097 = !{!"long", !832, i64 0}
!1098 = !DILocation(line: 688, column: 3, scope: !90, inlinedAt: !917)
!1099 = !DILocation(line: 0, scope: !166, inlinedAt: !917)
!1100 = !DILocation(line: 695, column: 7, scope: !166, inlinedAt: !917)
!1101 = !DILocation(line: 696, column: 23, scope: !1102, inlinedAt: !917)
!1102 = distinct !DILexicalBlock(scope: !166, file: !3, line: 696, column: 11)
!1103 = !DILocation(line: 696, column: 11, scope: !166, inlinedAt: !917)
!1104 = !DILocation(line: 697, column: 9, scope: !1102, inlinedAt: !917)
!1105 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1106, file: !1107, line: 118, type: !889)
!1106 = distinct !DISubprogram(name: "getline", scope: !1107, file: !1107, line: 118, type: !1108, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1110)
!1107 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!172, !889, !377, !98}
!1110 = !{!1105, !1111, !1112}
!1111 = !DILocalVariable(name: "__n", arg: 2, scope: !1106, file: !1107, line: 118, type: !377)
!1112 = !DILocalVariable(name: "__stream", arg: 3, scope: !1106, file: !1107, line: 118, type: !98)
!1113 = !DILocation(line: 118, column: 17, scope: !1106, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 700, column: 21, scope: !166, inlinedAt: !917)
!1115 = !DILocation(line: 118, column: 36, scope: !1106, inlinedAt: !1114)
!1116 = !DILocation(line: 118, column: 47, scope: !1106, inlinedAt: !1114)
!1117 = !DILocation(line: 120, column: 10, scope: !1106, inlinedAt: !1114)
!1118 = !DILocation(line: 693, column: 15, scope: !166, inlinedAt: !917)
!1119 = !DILocation(line: 701, column: 23, scope: !1120, inlinedAt: !917)
!1120 = distinct !DILexicalBlock(scope: !166, file: !3, line: 701, column: 11)
!1121 = !DILocation(line: 701, column: 11, scope: !166, inlinedAt: !917)
!1122 = !DILocation(line: 705, column: 11, scope: !1123, inlinedAt: !917)
!1123 = distinct !DILexicalBlock(scope: !166, file: !3, line: 705, column: 11)
!1124 = !{!832, !832, i64 0}
!1125 = !DILocation(line: 705, column: 19, scope: !1123, inlinedAt: !917)
!1126 = !DILocation(line: 705, column: 11, scope: !166, inlinedAt: !917)
!1127 = !DILocation(line: 709, column: 28, scope: !1128, inlinedAt: !917)
!1128 = distinct !DILexicalBlock(scope: !166, file: !3, line: 709, column: 11)
!1129 = !DILocation(line: 709, column: 11, scope: !1128, inlinedAt: !917)
!1130 = !DILocation(line: 709, column: 33, scope: !1128, inlinedAt: !917)
!1131 = !DILocation(line: 709, column: 11, scope: !166, inlinedAt: !917)
!1132 = !DILocation(line: 710, column: 29, scope: !1128, inlinedAt: !917)
!1133 = !DILocation(line: 712, column: 23, scope: !175, inlinedAt: !917)
!1134 = !DILocation(line: 710, column: 9, scope: !1128, inlinedAt: !917)
!1135 = !DILocalVariable(name: "s", arg: 1, scope: !1136, file: !3, line: 416, type: !59)
!1136 = distinct !DISubprogram(name: "split_3", scope: !3, file: !3, line: 416, type: !1137, isLocal: true, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1140)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!71, !59, !62, !1139, !204, !889}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1140 = !{!1135, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1141 = !DILocalVariable(name: "s_len", arg: 2, scope: !1136, file: !3, line: 416, type: !62)
!1142 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1136, file: !3, line: 417, type: !1139)
!1143 = !DILocalVariable(name: "binary", arg: 4, scope: !1136, file: !3, line: 417, type: !204)
!1144 = !DILocalVariable(name: "file_name", arg: 5, scope: !1136, file: !3, line: 417, type: !889)
!1145 = !DILocalVariable(name: "escaped_filename", scope: !1136, file: !3, line: 419, type: !71)
!1146 = !DILocalVariable(name: "algo_name_len", scope: !1136, file: !3, line: 420, type: !62)
!1147 = !DILocalVariable(name: "i", scope: !1136, file: !3, line: 422, type: !62)
!1148 = !DILocation(line: 416, column: 16, scope: !1136, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 712, column: 14, scope: !175, inlinedAt: !917)
!1150 = !DILocation(line: 416, column: 26, scope: !1136, inlinedAt: !1149)
!1151 = !DILocation(line: 419, column: 8, scope: !1136, inlinedAt: !1149)
!1152 = !DILocation(line: 422, column: 10, scope: !1136, inlinedAt: !1149)
!1153 = !DILocation(line: 423, column: 3, scope: !1136, inlinedAt: !1149)
!1154 = !DILocation(line: 0, scope: !1136, inlinedAt: !1149)
!1155 = !DILocation(line: 423, column: 10, scope: !1136, inlinedAt: !1149)
!1156 = !DILocation(line: 424, column: 5, scope: !1136, inlinedAt: !1149)
!1157 = distinct !{!1157, !1158, !1159}
!1158 = !DILocation(line: 423, column: 3, scope: !1136)
!1159 = !DILocation(line: 424, column: 7, scope: !1136)
!1160 = !DILocation(line: 428, column: 7, scope: !1161, inlinedAt: !1149)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 427, column: 5)
!1162 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 426, column: 7)
!1163 = !DILocation(line: 430, column: 5, scope: !1161, inlinedAt: !1149)
!1164 = !DILocation(line: 435, column: 7, scope: !1165, inlinedAt: !1149)
!1165 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 435, column: 7)
!1166 = !DILocation(line: 420, column: 10, scope: !1136, inlinedAt: !1149)
!1167 = !DILocation(line: 435, column: 7, scope: !1136, inlinedAt: !1149)
!1168 = !DILocation(line: 437, column: 9, scope: !1169, inlinedAt: !1149)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 436, column: 5)
!1170 = !DILocation(line: 473, column: 11, scope: !1171, inlinedAt: !1149)
!1171 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 473, column: 11)
!1172 = !DILocation(line: 473, column: 16, scope: !1171, inlinedAt: !1149)
!1173 = !DILocation(line: 474, column: 9, scope: !1171, inlinedAt: !1149)
!1174 = !DILocation(line: 473, column: 11, scope: !1169, inlinedAt: !1149)
!1175 = !DILocation(line: 475, column: 11, scope: !1176, inlinedAt: !1149)
!1176 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 475, column: 11)
!1177 = !DILocation(line: 475, column: 16, scope: !1176, inlinedAt: !1149)
!1178 = !DILocation(line: 475, column: 11, scope: !1169, inlinedAt: !1149)
!1179 = !DILocation(line: 477, column: 11, scope: !1180, inlinedAt: !1149)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 476, column: 9)
!1181 = !DILocation(line: 479, column: 33, scope: !1180, inlinedAt: !1149)
!1182 = !DILocation(line: 479, column: 44, scope: !1180, inlinedAt: !1149)
!1183 = !DILocalVariable(name: "s", arg: 1, scope: !1184, file: !3, line: 372, type: !59)
!1184 = distinct !DISubprogram(name: "bsd_split_3", scope: !3, file: !3, line: 372, type: !1185, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1187)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!71, !59, !62, !1139, !889, !71}
!1187 = !{!1183, !1188, !1189, !1190, !1191, !1192}
!1188 = !DILocalVariable(name: "s_len", arg: 2, scope: !1184, file: !3, line: 372, type: !62)
!1189 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1184, file: !3, line: 372, type: !1139)
!1190 = !DILocalVariable(name: "file_name", arg: 4, scope: !1184, file: !3, line: 373, type: !889)
!1191 = !DILocalVariable(name: "escaped_filename", arg: 5, scope: !1184, file: !3, line: 373, type: !71)
!1192 = !DILocalVariable(name: "i", scope: !1184, file: !3, line: 375, type: !62)
!1193 = !DILocation(line: 372, column: 20, scope: !1184, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 479, column: 18, scope: !1180, inlinedAt: !1149)
!1195 = !DILocation(line: 372, column: 30, scope: !1184, inlinedAt: !1194)
!1196 = !DILocation(line: 373, column: 37, scope: !1184, inlinedAt: !1194)
!1197 = !DILocation(line: 377, column: 13, scope: !1198, inlinedAt: !1194)
!1198 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 377, column: 7)
!1199 = !DILocation(line: 377, column: 7, scope: !1184, inlinedAt: !1194)
!1200 = !DILocation(line: 0, scope: !1184, inlinedAt: !1194)
!1201 = !DILocation(line: 375, column: 10, scope: !1184, inlinedAt: !1194)
!1202 = !DILocation(line: 382, column: 10, scope: !1184, inlinedAt: !1194)
!1203 = !DILocation(line: 382, column: 12, scope: !1184, inlinedAt: !1194)
!1204 = !DILocation(line: 382, column: 15, scope: !1184, inlinedAt: !1194)
!1205 = !DILocation(line: 382, column: 20, scope: !1184, inlinedAt: !1194)
!1206 = !DILocation(line: 382, column: 3, scope: !1184, inlinedAt: !1194)
!1207 = distinct !{!1207, !1208, !1209}
!1208 = !DILocation(line: 382, column: 3, scope: !1184)
!1209 = !DILocation(line: 383, column: 6, scope: !1184)
!1210 = !DILocation(line: 385, column: 7, scope: !1211, inlinedAt: !1194)
!1211 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 385, column: 7)
!1212 = !DILocation(line: 385, column: 7, scope: !1184, inlinedAt: !1194)
!1213 = !DILocation(line: 390, column: 24, scope: !1214, inlinedAt: !1194)
!1214 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 390, column: 7)
!1215 = !DILocalVariable(name: "s", arg: 1, scope: !1216, file: !3, line: 309, type: !59)
!1216 = distinct !DISubprogram(name: "filename_unescape", scope: !3, file: !3, line: 309, type: !1217, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1219)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!59, !59, !62}
!1219 = !{!1215, !1220, !1221, !1222}
!1220 = !DILocalVariable(name: "s_len", arg: 2, scope: !1216, file: !3, line: 309, type: !62)
!1221 = !DILocalVariable(name: "dst", scope: !1216, file: !3, line: 311, type: !59)
!1222 = !DILocalVariable(name: "i", scope: !1223, file: !3, line: 313, type: !62)
!1223 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 313, column: 3)
!1224 = !DILocation(line: 309, column: 26, scope: !1216, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 390, column: 27, scope: !1214, inlinedAt: !1194)
!1226 = !DILocation(line: 309, column: 36, scope: !1216, inlinedAt: !1225)
!1227 = !DILocation(line: 311, column: 9, scope: !1216, inlinedAt: !1225)
!1228 = !DILocation(line: 313, column: 15, scope: !1223, inlinedAt: !1225)
!1229 = !DILocation(line: 313, column: 3, scope: !1223, inlinedAt: !1225)
!1230 = !DILocation(line: 315, column: 15, scope: !1231, inlinedAt: !1225)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 314, column: 5)
!1232 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 313, column: 3)
!1233 = !DILocation(line: 315, column: 7, scope: !1231, inlinedAt: !1225)
!1234 = !DILocation(line: 318, column: 17, scope: !1235, inlinedAt: !1225)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 318, column: 15)
!1236 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 316, column: 9)
!1237 = !DILocation(line: 318, column: 15, scope: !1236, inlinedAt: !1225)
!1238 = !DILocation(line: 323, column: 11, scope: !1236, inlinedAt: !1225)
!1239 = !DILocation(line: 324, column: 19, scope: !1236, inlinedAt: !1225)
!1240 = !DILocation(line: 324, column: 11, scope: !1236, inlinedAt: !1225)
!1241 = !DILocation(line: 331, column: 15, scope: !1242, inlinedAt: !1225)
!1242 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 325, column: 13)
!1243 = !DILocation(line: 0, scope: !1236, inlinedAt: !1225)
!1244 = !DILocation(line: 0, scope: !1180, inlinedAt: !1149)
!1245 = !DILocation(line: 0, scope: !1242, inlinedAt: !1225)
!1246 = !DILocation(line: 313, column: 34, scope: !1232, inlinedAt: !1225)
!1247 = !DILocation(line: 313, column: 24, scope: !1232, inlinedAt: !1225)
!1248 = distinct !{!1248, !1249, !1250}
!1249 = !DILocation(line: 313, column: 3, scope: !1223)
!1250 = !DILocation(line: 346, column: 5, scope: !1223)
!1251 = !DILocation(line: 347, column: 11, scope: !1252, inlinedAt: !1225)
!1252 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 347, column: 7)
!1253 = !DILocation(line: 347, column: 7, scope: !1216, inlinedAt: !1225)
!1254 = !DILocation(line: 348, column: 10, scope: !1252, inlinedAt: !1225)
!1255 = !DILocation(line: 348, column: 5, scope: !1252, inlinedAt: !1225)
!1256 = !DILocation(line: 393, column: 10, scope: !1184, inlinedAt: !1194)
!1257 = !DILocation(line: 395, column: 3, scope: !1184, inlinedAt: !1194)
!1258 = !DILocation(line: 395, column: 10, scope: !1184, inlinedAt: !1194)
!1259 = !DILocation(line: 396, column: 6, scope: !1184, inlinedAt: !1194)
!1260 = distinct !{!1260, !1261, !1262}
!1261 = !DILocation(line: 395, column: 3, scope: !1184)
!1262 = !DILocation(line: 396, column: 6, scope: !1184)
!1263 = !DILocation(line: 403, column: 10, scope: !1184, inlinedAt: !1194)
!1264 = distinct !{!1264, !1265, !1266}
!1265 = !DILocation(line: 403, column: 3, scope: !1184)
!1266 = !DILocation(line: 404, column: 6, scope: !1184)
!1267 = !DILocalVariable(name: "s", arg: 1, scope: !1268, file: !3, line: 356, type: !1271)
!1268 = distinct !DISubprogram(name: "hex_digits", scope: !3, file: !3, line: 356, type: !1269, isLocal: true, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1272)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!71, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!1272 = !{!1267, !1273}
!1273 = !DILocalVariable(name: "i", scope: !1274, file: !3, line: 358, type: !7)
!1274 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 358, column: 3)
!1275 = !DILocation(line: 356, column: 34, scope: !1268, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 408, column: 10, scope: !1184, inlinedAt: !1194)
!1277 = !DILocation(line: 358, column: 21, scope: !1274, inlinedAt: !1276)
!1278 = !DILocation(line: 358, column: 3, scope: !1274, inlinedAt: !1276)
!1279 = !DILocation(line: 360, column: 12, scope: !1280, inlinedAt: !1276)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 360, column: 11)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 359, column: 5)
!1282 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 358, column: 3)
!1283 = !{!1284, !1284, i64 0}
!1284 = !{!"short", !832, i64 0}
!1285 = !DILocation(line: 360, column: 11, scope: !1281, inlinedAt: !1276)
!1286 = !DILocation(line: 362, column: 7, scope: !1281, inlinedAt: !1276)
!1287 = !DILocation(line: 489, column: 13, scope: !1288, inlinedAt: !1149)
!1288 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 489, column: 7)
!1289 = !DILocation(line: 489, column: 45, scope: !1288, inlinedAt: !1149)
!1290 = !DILocation(line: 489, column: 50, scope: !1288, inlinedAt: !1149)
!1291 = !DILocation(line: 489, column: 44, scope: !1288, inlinedAt: !1149)
!1292 = !DILocation(line: 489, column: 42, scope: !1288, inlinedAt: !1149)
!1293 = !DILocation(line: 489, column: 17, scope: !1288, inlinedAt: !1149)
!1294 = !DILocation(line: 489, column: 7, scope: !1136, inlinedAt: !1149)
!1295 = !DILocation(line: 509, column: 5, scope: !1136, inlinedAt: !1149)
!1296 = !DILocation(line: 510, column: 8, scope: !1297, inlinedAt: !1149)
!1297 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 510, column: 7)
!1298 = !DILocation(line: 513, column: 6, scope: !1136, inlinedAt: !1149)
!1299 = !DILocation(line: 513, column: 10, scope: !1136, inlinedAt: !1149)
!1300 = !DILocation(line: 356, column: 34, scope: !1268, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 515, column: 9, scope: !1302, inlinedAt: !1149)
!1302 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 515, column: 7)
!1303 = !DILocation(line: 358, column: 21, scope: !1274, inlinedAt: !1301)
!1304 = !DILocation(line: 358, column: 3, scope: !1274, inlinedAt: !1301)
!1305 = !DILocation(line: 360, column: 12, scope: !1280, inlinedAt: !1301)
!1306 = !DILocation(line: 360, column: 11, scope: !1281, inlinedAt: !1301)
!1307 = !DILocation(line: 362, column: 7, scope: !1281, inlinedAt: !1301)
!1308 = !DILocation(line: 364, column: 10, scope: !1268, inlinedAt: !1301)
!1309 = !DILocation(line: 364, column: 13, scope: !1268, inlinedAt: !1301)
!1310 = !DILocation(line: 515, column: 7, scope: !1136, inlinedAt: !1149)
!1311 = !DILocation(line: 519, column: 14, scope: !1312, inlinedAt: !1149)
!1312 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 519, column: 7)
!1313 = !DILocation(line: 519, column: 18, scope: !1312, inlinedAt: !1149)
!1314 = !DILocation(line: 519, column: 24, scope: !1312, inlinedAt: !1149)
!1315 = !DILocation(line: 519, column: 28, scope: !1312, inlinedAt: !1149)
!1316 = !DILocation(line: 519, column: 40, scope: !1312, inlinedAt: !1149)
!1317 = !DILocation(line: 527, column: 11, scope: !1318, inlinedAt: !1149)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 527, column: 11)
!1319 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 520, column: 5)
!1320 = !DILocation(line: 527, column: 24, scope: !1318, inlinedAt: !1149)
!1321 = !DILocation(line: 527, column: 11, scope: !1319, inlinedAt: !1149)
!1322 = !DILocation(line: 529, column: 20, scope: !1319, inlinedAt: !1149)
!1323 = !DILocation(line: 530, column: 5, scope: !1319, inlinedAt: !1149)
!1324 = !DILocation(line: 531, column: 12, scope: !1325, inlinedAt: !1149)
!1325 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 531, column: 12)
!1326 = !DILocation(line: 531, column: 25, scope: !1325, inlinedAt: !1149)
!1327 = !DILocation(line: 531, column: 12, scope: !1312, inlinedAt: !1149)
!1328 = !DILocation(line: 533, column: 20, scope: !1329, inlinedAt: !1149)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 532, column: 5)
!1330 = !DILocation(line: 534, column: 21, scope: !1329, inlinedAt: !1149)
!1331 = !DILocation(line: 535, column: 5, scope: !1329, inlinedAt: !1149)
!1332 = !DILocation(line: 539, column: 17, scope: !1136, inlinedAt: !1149)
!1333 = !DILocation(line: 541, column: 7, scope: !1136, inlinedAt: !1149)
!1334 = !DILocation(line: 542, column: 44, scope: !1335, inlinedAt: !1149)
!1335 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 541, column: 7)
!1336 = !DILocation(line: 309, column: 26, scope: !1216, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 542, column: 12, scope: !1335, inlinedAt: !1149)
!1338 = !DILocation(line: 309, column: 36, scope: !1216, inlinedAt: !1337)
!1339 = !DILocation(line: 311, column: 9, scope: !1216, inlinedAt: !1337)
!1340 = !DILocation(line: 313, column: 15, scope: !1223, inlinedAt: !1337)
!1341 = !DILocation(line: 313, column: 24, scope: !1232, inlinedAt: !1337)
!1342 = !DILocation(line: 313, column: 3, scope: !1223, inlinedAt: !1337)
!1343 = !DILocation(line: 315, column: 15, scope: !1231, inlinedAt: !1337)
!1344 = !DILocation(line: 315, column: 7, scope: !1231, inlinedAt: !1337)
!1345 = !DILocation(line: 318, column: 17, scope: !1235, inlinedAt: !1337)
!1346 = !DILocation(line: 318, column: 15, scope: !1236, inlinedAt: !1337)
!1347 = !DILocation(line: 323, column: 11, scope: !1236, inlinedAt: !1337)
!1348 = !DILocation(line: 324, column: 19, scope: !1236, inlinedAt: !1337)
!1349 = !DILocation(line: 324, column: 11, scope: !1236, inlinedAt: !1337)
!1350 = !DILocation(line: 331, column: 15, scope: !1242, inlinedAt: !1337)
!1351 = !DILocation(line: 0, scope: !1236, inlinedAt: !1337)
!1352 = !DILocation(line: 0, scope: !175, inlinedAt: !917)
!1353 = !DILocation(line: 0, scope: !1242, inlinedAt: !1337)
!1354 = !DILocation(line: 313, column: 34, scope: !1232, inlinedAt: !1337)
!1355 = !DILocation(line: 347, column: 15, scope: !1252, inlinedAt: !1337)
!1356 = !DILocation(line: 347, column: 11, scope: !1252, inlinedAt: !1337)
!1357 = !DILocation(line: 347, column: 7, scope: !1216, inlinedAt: !1337)
!1358 = !DILocation(line: 348, column: 10, scope: !1252, inlinedAt: !1337)
!1359 = !DILocation(line: 348, column: 5, scope: !1252, inlinedAt: !1337)
!1360 = !DILocation(line: 542, column: 49, scope: !1335, inlinedAt: !1149)
!1361 = !DILocation(line: 713, column: 14, scope: !175, inlinedAt: !917)
!1362 = !DILocation(line: 364, column: 10, scope: !1268, inlinedAt: !1276)
!1363 = !DILocation(line: 364, column: 13, scope: !1268, inlinedAt: !1276)
!1364 = !DILocation(line: 713, column: 29, scope: !175, inlinedAt: !917)
!1365 = !DILocation(line: 713, column: 32, scope: !175, inlinedAt: !917)
!1366 = !DILocation(line: 712, column: 11, scope: !166, inlinedAt: !917)
!1367 = !DILocation(line: 715, column: 11, scope: !1368, inlinedAt: !917)
!1368 = distinct !DILexicalBlock(scope: !175, file: !3, line: 714, column: 9)
!1369 = !DILocation(line: 717, column: 15, scope: !1368, inlinedAt: !917)
!1370 = !DILocation(line: 720, column: 22, scope: !1371, inlinedAt: !917)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 718, column: 13)
!1372 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 717, column: 15)
!1373 = !DILocation(line: 722, column: 22, scope: !1371, inlinedAt: !917)
!1374 = !DILocation(line: 719, column: 15, scope: !1371, inlinedAt: !917)
!1375 = !DILocation(line: 724, column: 13, scope: !1371, inlinedAt: !917)
!1376 = !DILocation(line: 726, column: 11, scope: !1368, inlinedAt: !917)
!1377 = !DILocation(line: 727, column: 9, scope: !1368, inlinedAt: !917)
!1378 = !DILocation(line: 735, column: 16, scope: !174, inlinedAt: !917)
!1379 = !DILocation(line: 735, column: 11, scope: !174, inlinedAt: !917)
!1380 = !DILocation(line: 738, column: 45, scope: !174, inlinedAt: !917)
!1381 = !DILocation(line: 738, column: 48, scope: !174, inlinedAt: !917)
!1382 = !DILocation(line: 0, scope: !174, inlinedAt: !917)
!1383 = !DILocation(line: 742, column: 16, scope: !174, inlinedAt: !917)
!1384 = !DILocation(line: 744, column: 15, scope: !174, inlinedAt: !917)
!1385 = !DILocation(line: 746, column: 15, scope: !1386, inlinedAt: !917)
!1386 = distinct !DILexicalBlock(scope: !181, file: !3, line: 745, column: 13)
!1387 = !DILocation(line: 747, column: 19, scope: !1386, inlinedAt: !917)
!1388 = !DILocation(line: 749, column: 23, scope: !1389, inlinedAt: !917)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 748, column: 17)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 747, column: 19)
!1391 = !DILocalVariable(name: "__c", arg: 1, scope: !1392, file: !1107, line: 108, type: !64)
!1392 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1107, file: !1107, line: 108, type: !1393, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!64, !64}
!1395 = !{!1391}
!1396 = !DILocation(line: 108, column: 23, scope: !1392, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 750, column: 21, scope: !1398, inlinedAt: !917)
!1398 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 749, column: 23)
!1399 = !DILocation(line: 110, column: 10, scope: !1392, inlinedAt: !1397)
!1400 = !{!1401, !831, i64 40}
!1401 = !{!"_IO_FILE", !1039, i64 0, !831, i64 8, !831, i64 16, !831, i64 24, !831, i64 32, !831, i64 40, !831, i64 48, !831, i64 56, !831, i64 64, !831, i64 72, !831, i64 80, !831, i64 88, !831, i64 96, !831, i64 104, !1039, i64 112, !1039, i64 116, !1097, i64 120, !1284, i64 128, !832, i64 130, !832, i64 131, !831, i64 136, !1097, i64 144, !831, i64 152, !831, i64 160, !831, i64 168, !831, i64 176, !1097, i64 184, !1039, i64 192, !832, i64 196}
!1402 = !{!1401, !831, i64 48}
!1403 = !{!"branch_weights", i32 2000, i32 1}
!1404 = !DILocation(line: 751, column: 19, scope: !1389, inlinedAt: !917)
!1405 = !DILocation(line: 752, column: 19, scope: !1389, inlinedAt: !917)
!1406 = !DILocation(line: 753, column: 17, scope: !1389, inlinedAt: !917)
!1407 = !DILocation(line: 755, column: 35, scope: !180, inlinedAt: !917)
!1408 = !DILocation(line: 755, column: 38, scope: !180, inlinedAt: !917)
!1409 = !DILocation(line: 762, column: 58, scope: !179, inlinedAt: !917)
!1410 = !DILocation(line: 762, column: 22, scope: !179, inlinedAt: !917)
!1411 = !DILocation(line: 763, column: 22, scope: !179, inlinedAt: !917)
!1412 = !DILocation(line: 767, column: 15, scope: !188, inlinedAt: !917)
!1413 = !DILocation(line: 769, column: 23, scope: !1414, inlinedAt: !917)
!1414 = distinct !DILexicalBlock(scope: !184, file: !3, line: 769, column: 23)
!1415 = !DILocation(line: 769, column: 23, scope: !184, inlinedAt: !917)
!1416 = !DILocation(line: 770, column: 34, scope: !185, inlinedAt: !917)
!1417 = !DILocation(line: 770, column: 50, scope: !185, inlinedAt: !917)
!1418 = !DILocation(line: 770, column: 26, scope: !185, inlinedAt: !917)
!1419 = !DILocation(line: 770, column: 23, scope: !185, inlinedAt: !917)
!1420 = !DILocation(line: 771, column: 23, scope: !185, inlinedAt: !917)
!1421 = !DILocation(line: 771, column: 27, scope: !1422, inlinedAt: !917)
!1422 = distinct !DILexicalBlock(scope: !190, file: !3, line: 771, column: 27)
!1423 = !DILocation(line: 771, column: 27, scope: !190, inlinedAt: !917)
!1424 = !DILocation(line: 772, column: 55, scope: !185, inlinedAt: !917)
!1425 = !DILocation(line: 772, column: 31, scope: !185, inlinedAt: !917)
!1426 = !DILocation(line: 772, column: 30, scope: !185, inlinedAt: !917)
!1427 = !DILocation(line: 772, column: 27, scope: !185, inlinedAt: !917)
!1428 = !DILocation(line: 769, column: 23, scope: !186, inlinedAt: !917)
!1429 = !DILocation(line: 767, column: 53, scope: !187, inlinedAt: !917)
!1430 = !DILocation(line: 767, column: 33, scope: !187, inlinedAt: !917)
!1431 = distinct !{!1431, !1432, !1433}
!1432 = !DILocation(line: 767, column: 15, scope: !188)
!1433 = !DILocation(line: 774, column: 17, scope: !188)
!1434 = !DILocation(line: 0, scope: !187, inlinedAt: !917)
!1435 = !DILocation(line: 775, column: 23, scope: !1436, inlinedAt: !917)
!1436 = distinct !DILexicalBlock(scope: !179, file: !3, line: 775, column: 19)
!1437 = !DILocation(line: 776, column: 17, scope: !1436, inlinedAt: !917)
!1438 = !DILocation(line: 775, column: 19, scope: !179, inlinedAt: !917)
!1439 = !DILocation(line: 780, column: 19, scope: !179, inlinedAt: !917)
!1440 = !DILocation(line: 782, column: 47, scope: !1441, inlinedAt: !917)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 782, column: 23)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 781, column: 17)
!1443 = distinct !DILexicalBlock(scope: !179, file: !3, line: 780, column: 19)
!1444 = !DILocation(line: 782, column: 23, scope: !1442, inlinedAt: !917)
!1445 = !DILocation(line: 784, column: 27, scope: !1446, inlinedAt: !917)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 783, column: 21)
!1447 = !DILocation(line: 108, column: 23, scope: !1392, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 785, column: 25, scope: !1449, inlinedAt: !917)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 784, column: 27)
!1450 = !DILocation(line: 110, column: 10, scope: !1392, inlinedAt: !1448)
!1451 = !DILocation(line: 786, column: 23, scope: !1446, inlinedAt: !917)
!1452 = !DILocation(line: 789, column: 23, scope: !1442, inlinedAt: !917)
!1453 = !DILocation(line: 790, column: 21, scope: !1454, inlinedAt: !917)
!1454 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 789, column: 23)
!1455 = !DILocation(line: 791, column: 28, scope: !1454, inlinedAt: !917)
!1456 = !DILocation(line: 792, column: 21, scope: !1457, inlinedAt: !917)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 791, column: 28)
!1458 = !DILocation(line: 0, scope: !1386, inlinedAt: !917)
!1459 = !DILocation(line: 0, scope: !90, inlinedAt: !917)
!1460 = !DILocation(line: 795, column: 9, scope: !175, inlinedAt: !917)
!1461 = !DILocalVariable(name: "__stream", arg: 1, scope: !1462, file: !1107, line: 128, type: !98)
!1462 = distinct !DISubprogram(name: "feof_unlocked", scope: !1107, file: !1107, line: 128, type: !1463, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1465)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!64, !98}
!1465 = !{!1461}
!1466 = !DILocation(line: 128, column: 1, scope: !1462, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 797, column: 11, scope: !90, inlinedAt: !917)
!1468 = !DILocation(line: 130, column: 10, scope: !1462, inlinedAt: !1467)
!1469 = !{!1401, !1039, i64 0}
!1470 = !DILocation(line: 797, column: 35, scope: !90, inlinedAt: !917)
!1471 = !DILocalVariable(name: "__stream", arg: 1, scope: !1472, file: !1107, line: 135, type: !98)
!1472 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1107, file: !1107, line: 135, type: !1463, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1473)
!1473 = !{!1471}
!1474 = !DILocation(line: 135, column: 1, scope: !1472, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 797, column: 39, scope: !90, inlinedAt: !917)
!1476 = distinct !{!1476, !1477, !1478}
!1477 = !DILocation(line: 688, column: 3, scope: !90)
!1478 = !DILocation(line: 797, column: 64, scope: !90)
!1479 = !DILocation(line: 799, column: 9, scope: !90, inlinedAt: !917)
!1480 = !DILocation(line: 799, column: 3, scope: !90, inlinedAt: !917)
!1481 = !DILocation(line: 135, column: 1, scope: !1472, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 801, column: 7, scope: !1483, inlinedAt: !917)
!1483 = distinct !DILexicalBlock(scope: !90, file: !3, line: 801, column: 7)
!1484 = !DILocation(line: 137, column: 10, scope: !1472, inlinedAt: !1482)
!1485 = !DILocation(line: 801, column: 7, scope: !1483, inlinedAt: !917)
!1486 = !DILocation(line: 801, column: 7, scope: !90, inlinedAt: !917)
!1487 = !DILocation(line: 803, column: 20, scope: !1488, inlinedAt: !917)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 802, column: 5)
!1489 = !DILocation(line: 803, column: 41, scope: !1488, inlinedAt: !917)
!1490 = !DILocation(line: 803, column: 7, scope: !1488, inlinedAt: !917)
!1491 = !DILocation(line: 804, column: 7, scope: !1488, inlinedAt: !917)
!1492 = !DILocation(line: 807, column: 17, scope: !1493, inlinedAt: !917)
!1493 = distinct !DILexicalBlock(scope: !90, file: !3, line: 807, column: 7)
!1494 = !DILocation(line: 807, column: 20, scope: !1493, inlinedAt: !917)
!1495 = !DILocation(line: 807, column: 46, scope: !1493, inlinedAt: !917)
!1496 = !DILocation(line: 807, column: 7, scope: !90, inlinedAt: !917)
!1497 = !DILocation(line: 809, column: 17, scope: !1498, inlinedAt: !917)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 808, column: 5)
!1499 = !DILocation(line: 809, column: 30, scope: !1498, inlinedAt: !917)
!1500 = !DILocation(line: 809, column: 7, scope: !1498, inlinedAt: !917)
!1501 = !DILocation(line: 810, column: 7, scope: !1498, inlinedAt: !917)
!1502 = !DILocation(line: 813, column: 9, scope: !1503, inlinedAt: !917)
!1503 = distinct !DILexicalBlock(scope: !90, file: !3, line: 813, column: 7)
!1504 = !DILocation(line: 813, column: 7, scope: !90, inlinedAt: !917)
!1505 = !DILocation(line: 821, column: 11, scope: !1506, inlinedAt: !917)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 820, column: 5)
!1507 = !DILocation(line: 854, column: 14, scope: !90, inlinedAt: !917)
!1508 = !DILocation(line: 823, column: 36, scope: !1509, inlinedAt: !917)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 823, column: 15)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 822, column: 9)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 821, column: 11)
!1512 = !DILocation(line: 823, column: 15, scope: !1510, inlinedAt: !917)
!1513 = !DILocation(line: 825, column: 21, scope: !1509, inlinedAt: !917)
!1514 = !DILocation(line: 824, column: 13, scope: !1509, inlinedAt: !917)
!1515 = !DILocation(line: 831, column: 39, scope: !1516, inlinedAt: !917)
!1516 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 831, column: 15)
!1517 = !DILocation(line: 831, column: 15, scope: !1510, inlinedAt: !917)
!1518 = !DILocation(line: 833, column: 21, scope: !1516, inlinedAt: !917)
!1519 = !DILocation(line: 832, column: 13, scope: !1516, inlinedAt: !917)
!1520 = !DILocation(line: 839, column: 38, scope: !1521, inlinedAt: !917)
!1521 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 839, column: 15)
!1522 = !DILocation(line: 839, column: 15, scope: !1510, inlinedAt: !917)
!1523 = !DILocation(line: 841, column: 21, scope: !1521, inlinedAt: !917)
!1524 = !DILocation(line: 840, column: 13, scope: !1521, inlinedAt: !917)
!1525 = !DILocation(line: 847, column: 35, scope: !1526, inlinedAt: !917)
!1526 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 847, column: 15)
!1527 = !DILocation(line: 847, column: 30, scope: !1526, inlinedAt: !917)
!1528 = !DILocation(line: 848, column: 26, scope: !1526, inlinedAt: !917)
!1529 = !DILocation(line: 849, column: 20, scope: !1526, inlinedAt: !917)
!1530 = !DILocation(line: 848, column: 13, scope: !1526, inlinedAt: !917)
!1531 = !DILocation(line: 855, column: 11, scope: !90, inlinedAt: !917)
!1532 = !DILocation(line: 816, column: 20, scope: !1533, inlinedAt: !917)
!1533 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 814, column: 5)
!1534 = !DILocation(line: 817, column: 14, scope: !1533, inlinedAt: !917)
!1535 = !DILocation(line: 816, column: 7, scope: !1533, inlinedAt: !917)
!1536 = !DILocation(line: 857, column: 55, scope: !90, inlinedAt: !917)
!1537 = !DILocation(line: 857, column: 23, scope: !90, inlinedAt: !917)
!1538 = !DILocation(line: 0, scope: !1086, inlinedAt: !917)
!1539 = !DILocation(line: 858, column: 1, scope: !90, inlinedAt: !917)
!1540 = !DILocation(line: 1047, column: 15, scope: !909)
!1541 = !DILocation(line: 1047, column: 12, scope: !909)
!1542 = !DILocation(line: 1047, column: 9, scope: !909)
!1543 = !DILocation(line: 1051, column: 16, scope: !908)
!1544 = !DILocation(line: 1051, column: 11, scope: !908)
!1545 = !DILocation(line: 1053, column: 17, scope: !913)
!1546 = !DILocation(line: 1053, column: 15, scope: !908)
!1547 = !DILocation(line: 1064, column: 36, scope: !912)
!1548 = !DILocation(line: 1064, column: 56, scope: !912)
!1549 = !DILocation(line: 1064, column: 59, scope: !912)
!1550 = !DILocation(line: 1065, column: 35, scope: !912)
!1551 = !DILocation(line: 1065, column: 44, scope: !912)
!1552 = !DILocation(line: 0, scope: !912)
!1553 = !DILocation(line: 1067, column: 19, scope: !912)
!1554 = !DILocation(line: 1069, column: 23, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 1068, column: 17)
!1556 = distinct !DILexicalBlock(scope: !912, file: !3, line: 1067, column: 19)
!1557 = !DILocation(line: 108, column: 23, scope: !1392, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 1070, column: 21, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 1069, column: 23)
!1560 = !DILocation(line: 110, column: 10, scope: !1392, inlinedAt: !1558)
!1561 = !DILocation(line: 1077, column: 19, scope: !1555)
!1562 = !DILocation(line: 1079, column: 19, scope: !1555)
!1563 = !DILocation(line: 1080, column: 19, scope: !1555)
!1564 = !DILocation(line: 1081, column: 19, scope: !1555)
!1565 = !DILocation(line: 1086, column: 31, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !912, file: !3, line: 1086, column: 19)
!1567 = !DILocation(line: 1086, column: 19, scope: !912)
!1568 = !DILocation(line: 108, column: 23, scope: !1392, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 1087, column: 17, scope: !1566)
!1570 = !DILocation(line: 110, column: 10, scope: !1392, inlinedAt: !1569)
!1571 = !DILocation(line: 1089, column: 27, scope: !915)
!1572 = !DILocation(line: 1089, column: 15, scope: !915)
!1573 = !DILocation(line: 1092, column: 19, scope: !912)
!1574 = !DILocation(line: 1090, column: 17, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !915, file: !3, line: 1089, column: 15)
!1576 = !DILocation(line: 1089, column: 62, scope: !1575)
!1577 = !DILocation(line: 1089, column: 56, scope: !1575)
!1578 = !DILocation(line: 1089, column: 36, scope: !1575)
!1579 = distinct !{!1579, !1572, !1580}
!1580 = !DILocation(line: 1090, column: 17, scope: !915)
!1581 = !DILocation(line: 108, column: 23, scope: !1392, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 1094, column: 19, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 1093, column: 17)
!1584 = distinct !DILexicalBlock(scope: !912, file: !3, line: 1092, column: 19)
!1585 = !DILocation(line: 110, column: 10, scope: !1392, inlinedAt: !1582)
!1586 = !DILocation(line: 108, column: 23, scope: !1392, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 1096, column: 19, scope: !1583)
!1588 = !DILocation(line: 110, column: 10, scope: !1392, inlinedAt: !1587)
!1589 = !DILocation(line: 1098, column: 19, scope: !1583)
!1590 = !DILocation(line: 1099, column: 17, scope: !1583)
!1591 = !DILocation(line: 1101, column: 15, scope: !912)
!1592 = !DILocation(line: 108, column: 23, scope: !1392, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 1101, column: 15, scope: !912)
!1594 = !DILocation(line: 110, column: 10, scope: !1392, inlinedAt: !1593)
!1595 = !DILocation(line: 0, scope: !913)
!1596 = !DILocation(line: 1103, column: 9, scope: !909)
!1597 = !DILocation(line: 1042, column: 73, scope: !906)
!1598 = distinct !{!1598, !1049, !1599}
!1599 = !DILocation(line: 1104, column: 5, scope: !903)
!1600 = !DILocation(line: 1106, column: 34, scope: !1052)
!1601 = !DILocation(line: 1106, column: 26, scope: !1052)
!1602 = !DILocation(line: 1106, column: 41, scope: !1052)
!1603 = !DILocation(line: 1106, column: 7, scope: !886)
!1604 = !DILocation(line: 1107, column: 5, scope: !1052)
!1605 = !DILocation(line: 1109, column: 10, scope: !886)
!1606 = !DILocation(line: 1110, column: 1, scope: !886)
!1607 = !DILocation(line: 358, column: 51, scope: !1282, inlinedAt: !1301)
!1608 = !DILocation(line: 358, column: 30, scope: !1282, inlinedAt: !1301)
!1609 = distinct !{!1609, !1610, !1611}
!1610 = !DILocation(line: 358, column: 3, scope: !1274)
!1611 = !DILocation(line: 363, column: 5, scope: !1274)
!1612 = !DILocation(line: 358, column: 51, scope: !1282, inlinedAt: !1276)
!1613 = !DILocation(line: 358, column: 30, scope: !1282, inlinedAt: !1276)
!1614 = distinct !DISubprogram(name: "digest_file", scope: !3, file: !3, line: 591, type: !1615, isLocal: true, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1618)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!71, !93, !204, !65, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624, !1625}
!1619 = !DILocalVariable(name: "filename", arg: 1, scope: !1614, file: !3, line: 591, type: !93)
!1620 = !DILocalVariable(name: "binary", arg: 2, scope: !1614, file: !3, line: 591, type: !204)
!1621 = !DILocalVariable(name: "bin_result", arg: 3, scope: !1614, file: !3, line: 591, type: !65)
!1622 = !DILocalVariable(name: "missing", arg: 4, scope: !1614, file: !3, line: 592, type: !1617)
!1623 = !DILocalVariable(name: "fp", scope: !1614, file: !3, line: 594, type: !98)
!1624 = !DILocalVariable(name: "err", scope: !1614, file: !3, line: 595, type: !64)
!1625 = !DILocalVariable(name: "is_stdin", scope: !1614, file: !3, line: 596, type: !71)
!1626 = !DILocation(line: 591, column: 26, scope: !1614)
!1627 = !DILocation(line: 591, column: 41, scope: !1614)
!1628 = !DILocation(line: 591, column: 64, scope: !1614)
!1629 = !DILocation(line: 592, column: 20, scope: !1614)
!1630 = !DILocation(line: 596, column: 19, scope: !1614)
!1631 = !DILocation(line: 598, column: 12, scope: !1614)
!1632 = !{!1633, !1633, i64 0}
!1633 = !{!"_Bool", !832, i64 0}
!1634 = !DILocation(line: 600, column: 7, scope: !1614)
!1635 = !DILocation(line: 603, column: 12, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 601, column: 5)
!1637 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 600, column: 7)
!1638 = !DILocation(line: 594, column: 9, scope: !1614)
!1639 = !DILocation(line: 611, column: 5, scope: !1636)
!1640 = !DILocation(line: 614, column: 12, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 613, column: 5)
!1642 = !DILocation(line: 615, column: 14, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 615, column: 11)
!1644 = !DILocation(line: 615, column: 11, scope: !1641)
!1645 = !DILocation(line: 0, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 616, column: 9)
!1647 = !DILocation(line: 617, column: 30, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 617, column: 15)
!1649 = !DILocation(line: 617, column: 33, scope: !1648)
!1650 = !DILocation(line: 617, column: 39, scope: !1648)
!1651 = !DILocation(line: 617, column: 15, scope: !1646)
!1652 = !DILocation(line: 619, column: 24, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 618, column: 13)
!1654 = !DILocation(line: 620, column: 15, scope: !1653)
!1655 = !DILocation(line: 622, column: 21, scope: !1646)
!1656 = !DILocation(line: 622, column: 34, scope: !1646)
!1657 = !DILocation(line: 622, column: 11, scope: !1646)
!1658 = !DILocation(line: 623, column: 11, scope: !1646)
!1659 = !DILocation(line: 0, scope: !1641)
!1660 = !DILocation(line: 627, column: 3, scope: !1614)
!1661 = !DILocation(line: 632, column: 9, scope: !1614)
!1662 = !DILocation(line: 595, column: 7, scope: !1614)
!1663 = !DILocation(line: 634, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 634, column: 7)
!1665 = !DILocation(line: 634, column: 7, scope: !1614)
!1666 = !DILocation(line: 636, column: 17, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 635, column: 5)
!1668 = !DILocation(line: 636, column: 30, scope: !1667)
!1669 = !DILocation(line: 636, column: 7, scope: !1667)
!1670 = !DILocation(line: 637, column: 17, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 637, column: 11)
!1672 = !DILocation(line: 637, column: 14, scope: !1671)
!1673 = !DILocation(line: 637, column: 11, scope: !1667)
!1674 = !DILocation(line: 638, column: 9, scope: !1671)
!1675 = !DILocation(line: 642, column: 17, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 642, column: 7)
!1677 = !DILocation(line: 642, column: 20, scope: !1676)
!1678 = !DILocation(line: 642, column: 32, scope: !1676)
!1679 = !DILocation(line: 642, column: 7, scope: !1614)
!1680 = !DILocation(line: 644, column: 17, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 643, column: 5)
!1682 = !DILocation(line: 644, column: 30, scope: !1681)
!1683 = !DILocation(line: 644, column: 7, scope: !1681)
!1684 = !DILocation(line: 645, column: 7, scope: !1681)
!1685 = !DILocation(line: 649, column: 1, scope: !1614)
!1686 = distinct !DISubprogram(name: "print_filename", scope: !3, file: !3, line: 550, type: !1687, isLocal: true, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !93, !71}
!1689 = !{!1690, !1691}
!1690 = !DILocalVariable(name: "file", arg: 1, scope: !1686, file: !3, line: 550, type: !93)
!1691 = !DILocalVariable(name: "escape", arg: 2, scope: !1686, file: !3, line: 550, type: !71)
!1692 = !DILocation(line: 550, column: 29, scope: !1686)
!1693 = !DILocation(line: 550, column: 40, scope: !1686)
!1694 = !DILocation(line: 552, column: 7, scope: !1686)
!1695 = !DILocation(line: 558, column: 10, scope: !1686)
!1696 = !DILocation(line: 558, column: 3, scope: !1686)
!1697 = !DILocation(line: 554, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 553, column: 5)
!1699 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 552, column: 7)
!1700 = !DILocation(line: 555, column: 7, scope: !1698)
!1701 = !DILocation(line: 560, column: 15, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 559, column: 5)
!1703 = !DILocation(line: 560, column: 7, scope: !1702)
!1704 = !DILocation(line: 563, column: 11, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 561, column: 9)
!1706 = !DILocation(line: 564, column: 11, scope: !1705)
!1707 = !DILocation(line: 567, column: 11, scope: !1705)
!1708 = !DILocation(line: 568, column: 11, scope: !1705)
!1709 = !DILocation(line: 108, column: 23, scope: !1392, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 571, column: 11, scope: !1705)
!1711 = !DILocation(line: 110, column: 10, scope: !1392, inlinedAt: !1710)
!1712 = !DILocation(line: 574, column: 11, scope: !1702)
!1713 = distinct !{!1713, !1696, !1714}
!1714 = !DILocation(line: 575, column: 5, scope: !1686)
!1715 = !DILocation(line: 576, column: 1, scope: !1686)
!1716 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !230, file: !230, line: 51, type: !805, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !1717)
!1717 = !{!1718}
!1718 = !DILocalVariable(name: "file", arg: 1, scope: !1716, file: !230, line: 51, type: !93)
!1719 = !DILocation(line: 51, column: 41, scope: !1716)
!1720 = !DILocation(line: 53, column: 13, scope: !1716)
!1721 = !DILocation(line: 54, column: 1, scope: !1716)
!1722 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !230, file: !230, line: 88, type: !1723, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !1725)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !71}
!1725 = !{!1726}
!1726 = !DILocalVariable(name: "ignore", arg: 1, scope: !1722, file: !230, line: 88, type: !71)
!1727 = !DILocation(line: 88, column: 37, scope: !1722)
!1728 = !DILocation(line: 90, column: 16, scope: !1722)
!1729 = !DILocation(line: 91, column: 1, scope: !1722)
!1730 = distinct !DISubprogram(name: "close_stdout", scope: !230, file: !230, line: 117, type: !837, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !1731)
!1731 = !{!1732}
!1732 = !DILocalVariable(name: "write_error", scope: !1733, file: !230, line: 122, type: !93)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !230, line: 121, column: 5)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !230, line: 119, column: 7)
!1735 = !DILocation(line: 119, column: 21, scope: !1734)
!1736 = !DILocation(line: 119, column: 7, scope: !1734)
!1737 = !DILocation(line: 119, column: 29, scope: !1734)
!1738 = !DILocation(line: 120, column: 7, scope: !1734)
!1739 = !DILocation(line: 120, column: 12, scope: !1734)
!1740 = !{i8 0, i8 2}
!1741 = !DILocation(line: 120, column: 25, scope: !1734)
!1742 = !DILocation(line: 120, column: 28, scope: !1734)
!1743 = !DILocation(line: 120, column: 34, scope: !1734)
!1744 = !DILocation(line: 119, column: 7, scope: !1730)
!1745 = !DILocation(line: 122, column: 33, scope: !1733)
!1746 = !DILocation(line: 122, column: 19, scope: !1733)
!1747 = !DILocation(line: 123, column: 11, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1733, file: !230, line: 123, column: 11)
!1749 = !DILocation(line: 0, scope: !1748)
!1750 = !DILocation(line: 123, column: 11, scope: !1733)
!1751 = !DILocation(line: 124, column: 36, scope: !1748)
!1752 = !DILocation(line: 124, column: 9, scope: !1748)
!1753 = !DILocation(line: 127, column: 9, scope: !1748)
!1754 = !DILocation(line: 129, column: 14, scope: !1733)
!1755 = !DILocation(line: 129, column: 7, scope: !1733)
!1756 = !DILocation(line: 134, column: 42, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1730, file: !230, line: 134, column: 7)
!1758 = !DILocation(line: 134, column: 28, scope: !1757)
!1759 = !DILocation(line: 134, column: 50, scope: !1757)
!1760 = !DILocation(line: 134, column: 7, scope: !1730)
!1761 = !DILocation(line: 135, column: 12, scope: !1757)
!1762 = !DILocation(line: 135, column: 5, scope: !1757)
!1763 = !DILocation(line: 136, column: 1, scope: !1730)
!1764 = distinct !DISubprogram(name: "md5_init_ctx", scope: !238, file: !238, line: 76, type: !1765, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !1787)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{null, !1767}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "md5_ctx", file: !1769, line: 69, size: 1248, elements: !1770)
!1769 = !DIFile(filename: "./lib/md5.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1770 = !{!1771, !1775, !1776, !1777, !1778, !1782, !1783}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1768, file: !1769, line: 71, baseType: !1772, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1773, line: 26, baseType: !1774)
!1773 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !44, line: 41, baseType: !7)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1768, file: !1769, line: 72, baseType: !1772, size: 32, offset: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1768, file: !1769, line: 73, baseType: !1772, size: 32, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !1768, file: !1769, line: 74, baseType: !1772, size: 32, offset: 96)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1768, file: !1769, line: 76, baseType: !1779, size: 64, offset: 128)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1772, size: 64, elements: !1780)
!1780 = !{!1781}
!1781 = !DISubrange(count: 2)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1768, file: !1769, line: 77, baseType: !1772, size: 32, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1768, file: !1769, line: 78, baseType: !1784, size: 1024, offset: 224)
!1784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1772, size: 1024, elements: !1785)
!1785 = !{!1786}
!1786 = !DISubrange(count: 32)
!1787 = !{!1788}
!1788 = !DILocalVariable(name: "ctx", arg: 1, scope: !1764, file: !238, line: 76, type: !1767)
!1789 = !DILocation(line: 76, column: 31, scope: !1764)
!1790 = !DILocation(line: 78, column: 10, scope: !1764)
!1791 = !DILocation(line: 83, column: 19, scope: !1764)
!1792 = !DILocation(line: 83, column: 33, scope: !1764)
!1793 = !DILocation(line: 83, column: 3, scope: !1764)
!1794 = !DILocation(line: 83, column: 17, scope: !1764)
!1795 = !DILocation(line: 84, column: 8, scope: !1764)
!1796 = !DILocation(line: 84, column: 15, scope: !1764)
!1797 = !{!1798, !1039, i64 24}
!1798 = !{!"md5_ctx", !1039, i64 0, !1039, i64 4, !1039, i64 8, !1039, i64 12, !832, i64 16, !1039, i64 24, !832, i64 28}
!1799 = !DILocation(line: 85, column: 1, scope: !1764)
!1800 = distinct !DISubprogram(name: "md5_read_ctx", scope: !238, file: !238, line: 99, type: !1801, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !1805)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!61, !1803, !61}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1768)
!1805 = !{!1806, !1807, !1808}
!1806 = !DILocalVariable(name: "ctx", arg: 1, scope: !1800, file: !238, line: 99, type: !1803)
!1807 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1800, file: !238, line: 99, type: !61)
!1808 = !DILocalVariable(name: "r", scope: !1800, file: !238, line: 101, type: !59)
!1809 = !DILocation(line: 99, column: 37, scope: !1800)
!1810 = !DILocation(line: 99, column: 48, scope: !1800)
!1811 = !DILocation(line: 101, column: 9, scope: !1800)
!1812 = !DILocation(line: 102, column: 38, scope: !1800)
!1813 = !{!1798, !1039, i64 0}
!1814 = !DILocalVariable(name: "cp", arg: 1, scope: !1815, file: !238, line: 91, type: !59)
!1815 = distinct !DISubprogram(name: "set_uint32", scope: !238, file: !238, line: 91, type: !1816, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !1818)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{null, !59, !1772}
!1818 = !{!1814, !1819}
!1819 = !DILocalVariable(name: "v", arg: 2, scope: !1815, file: !238, line: 91, type: !1772)
!1820 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 102, column: 3, scope: !1800)
!1822 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !1821)
!1823 = !DILocation(line: 93, column: 3, scope: !1815, inlinedAt: !1821)
!1824 = !DILocation(line: 103, column: 17, scope: !1800)
!1825 = !DILocation(line: 103, column: 38, scope: !1800)
!1826 = !{!1798, !1039, i64 4}
!1827 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 103, column: 3, scope: !1800)
!1829 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !1828)
!1830 = !DILocation(line: 93, column: 3, scope: !1815, inlinedAt: !1828)
!1831 = !DILocation(line: 104, column: 17, scope: !1800)
!1832 = !DILocation(line: 104, column: 38, scope: !1800)
!1833 = !{!1798, !1039, i64 8}
!1834 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 104, column: 3, scope: !1800)
!1836 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !1835)
!1837 = !DILocation(line: 93, column: 3, scope: !1815, inlinedAt: !1835)
!1838 = !DILocation(line: 105, column: 17, scope: !1800)
!1839 = !DILocation(line: 105, column: 38, scope: !1800)
!1840 = !{!1798, !1039, i64 12}
!1841 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 105, column: 3, scope: !1800)
!1843 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !1842)
!1844 = !DILocation(line: 93, column: 3, scope: !1815, inlinedAt: !1842)
!1845 = !DILocation(line: 107, column: 3, scope: !1800)
!1846 = distinct !DISubprogram(name: "md5_finish_ctx", scope: !238, file: !238, line: 113, type: !1847, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!61, !1767, !61}
!1849 = !{!1850, !1851, !1852, !1853}
!1850 = !DILocalVariable(name: "ctx", arg: 1, scope: !1846, file: !238, line: 113, type: !1767)
!1851 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1846, file: !238, line: 113, type: !61)
!1852 = !DILocalVariable(name: "bytes", scope: !1846, file: !238, line: 116, type: !1772)
!1853 = !DILocalVariable(name: "size", scope: !1846, file: !238, line: 117, type: !62)
!1854 = !DILocation(line: 113, column: 33, scope: !1846)
!1855 = !DILocation(line: 113, column: 44, scope: !1846)
!1856 = !DILocation(line: 116, column: 25, scope: !1846)
!1857 = !DILocation(line: 116, column: 12, scope: !1846)
!1858 = !DILocation(line: 117, column: 24, scope: !1846)
!1859 = !DILocation(line: 117, column: 17, scope: !1846)
!1860 = !DILocation(line: 117, column: 10, scope: !1846)
!1861 = !DILocation(line: 120, column: 3, scope: !1846)
!1862 = !DILocation(line: 120, column: 17, scope: !1846)
!1863 = !DILocation(line: 121, column: 21, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1846, file: !238, line: 121, column: 7)
!1865 = !DILocation(line: 0, scope: !1846)
!1866 = !DILocation(line: 121, column: 7, scope: !1846)
!1867 = !DILocation(line: 122, column: 5, scope: !1864)
!1868 = !DILocation(line: 125, column: 27, scope: !1846)
!1869 = !DILocation(line: 125, column: 20, scope: !1846)
!1870 = !DILocation(line: 125, column: 3, scope: !1846)
!1871 = !DILocation(line: 125, column: 25, scope: !1846)
!1872 = !DILocation(line: 126, column: 27, scope: !1846)
!1873 = !DILocation(line: 126, column: 20, scope: !1846)
!1874 = !DILocation(line: 126, column: 3, scope: !1846)
!1875 = !DILocation(line: 126, column: 25, scope: !1846)
!1876 = !DILocation(line: 128, column: 12, scope: !1846)
!1877 = !DILocation(line: 128, column: 63, scope: !1846)
!1878 = !DILocation(line: 128, column: 67, scope: !1846)
!1879 = !DILocation(line: 128, column: 3, scope: !1846)
!1880 = !DILocation(line: 131, column: 40, scope: !1846)
!1881 = !DILocation(line: 131, column: 3, scope: !1846)
!1882 = !DILocation(line: 99, column: 37, scope: !1800, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 133, column: 10, scope: !1846)
!1884 = !DILocation(line: 99, column: 48, scope: !1800, inlinedAt: !1883)
!1885 = !DILocation(line: 101, column: 9, scope: !1800, inlinedAt: !1883)
!1886 = !DILocation(line: 102, column: 38, scope: !1800, inlinedAt: !1883)
!1887 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 102, column: 3, scope: !1800, inlinedAt: !1883)
!1889 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !1888)
!1890 = !DILocation(line: 93, column: 3, scope: !1815, inlinedAt: !1888)
!1891 = !DILocation(line: 103, column: 17, scope: !1800, inlinedAt: !1883)
!1892 = !DILocation(line: 103, column: 38, scope: !1800, inlinedAt: !1883)
!1893 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 103, column: 3, scope: !1800, inlinedAt: !1883)
!1895 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !1894)
!1896 = !DILocation(line: 93, column: 3, scope: !1815, inlinedAt: !1894)
!1897 = !DILocation(line: 104, column: 17, scope: !1800, inlinedAt: !1883)
!1898 = !DILocation(line: 104, column: 38, scope: !1800, inlinedAt: !1883)
!1899 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 104, column: 3, scope: !1800, inlinedAt: !1883)
!1901 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !1900)
!1902 = !DILocation(line: 93, column: 3, scope: !1815, inlinedAt: !1900)
!1903 = !DILocation(line: 105, column: 17, scope: !1800, inlinedAt: !1883)
!1904 = !DILocation(line: 105, column: 38, scope: !1800, inlinedAt: !1883)
!1905 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 105, column: 3, scope: !1800, inlinedAt: !1883)
!1907 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !1906)
!1908 = !DILocation(line: 93, column: 3, scope: !1815, inlinedAt: !1906)
!1909 = !DILocation(line: 133, column: 3, scope: !1846)
!1910 = distinct !DISubprogram(name: "md5_process_block", scope: !238, file: !238, line: 325, type: !1911, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !926, !62, !1767}
!1913 = !{!1914, !1915, !1916, !1917, !1919, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1932, !1933, !1934, !1935}
!1914 = !DILocalVariable(name: "buffer", arg: 1, scope: !1910, file: !238, line: 325, type: !926)
!1915 = !DILocalVariable(name: "len", arg: 2, scope: !1910, file: !238, line: 325, type: !62)
!1916 = !DILocalVariable(name: "ctx", arg: 3, scope: !1910, file: !238, line: 325, type: !1767)
!1917 = !DILocalVariable(name: "correct_words", scope: !1910, file: !238, line: 327, type: !1918)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1772, size: 512, elements: !192)
!1919 = !DILocalVariable(name: "words", scope: !1910, file: !238, line: 328, type: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1772)
!1922 = !DILocalVariable(name: "nwords", scope: !1910, file: !238, line: 329, type: !62)
!1923 = !DILocalVariable(name: "endp", scope: !1910, file: !238, line: 330, type: !1920)
!1924 = !DILocalVariable(name: "A", scope: !1910, file: !238, line: 331, type: !1772)
!1925 = !DILocalVariable(name: "B", scope: !1910, file: !238, line: 332, type: !1772)
!1926 = !DILocalVariable(name: "C", scope: !1910, file: !238, line: 333, type: !1772)
!1927 = !DILocalVariable(name: "D", scope: !1910, file: !238, line: 334, type: !1772)
!1928 = !DILocalVariable(name: "lolen", scope: !1910, file: !238, line: 335, type: !1772)
!1929 = !DILocalVariable(name: "cwp", scope: !1930, file: !238, line: 347, type: !1931)
!1930 = distinct !DILexicalBlock(scope: !1910, file: !238, line: 346, column: 5)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1932 = !DILocalVariable(name: "A_save", scope: !1930, file: !238, line: 348, type: !1772)
!1933 = !DILocalVariable(name: "B_save", scope: !1930, file: !238, line: 349, type: !1772)
!1934 = !DILocalVariable(name: "C_save", scope: !1930, file: !238, line: 350, type: !1772)
!1935 = !DILocalVariable(name: "D_save", scope: !1930, file: !238, line: 351, type: !1772)
!1936 = !DILocation(line: 325, column: 32, scope: !1910)
!1937 = !DILocation(line: 325, column: 47, scope: !1910)
!1938 = !DILocation(line: 325, column: 68, scope: !1910)
!1939 = !DILocation(line: 328, column: 27, scope: !1910)
!1940 = !DILocation(line: 328, column: 19, scope: !1910)
!1941 = !DILocation(line: 329, column: 23, scope: !1910)
!1942 = !DILocation(line: 329, column: 10, scope: !1910)
!1943 = !DILocation(line: 330, column: 32, scope: !1910)
!1944 = !DILocation(line: 330, column: 19, scope: !1910)
!1945 = !DILocation(line: 331, column: 21, scope: !1910)
!1946 = !DILocation(line: 331, column: 12, scope: !1910)
!1947 = !DILocation(line: 332, column: 21, scope: !1910)
!1948 = !DILocation(line: 332, column: 12, scope: !1910)
!1949 = !DILocation(line: 333, column: 21, scope: !1910)
!1950 = !DILocation(line: 333, column: 12, scope: !1910)
!1951 = !DILocation(line: 334, column: 21, scope: !1910)
!1952 = !DILocation(line: 334, column: 12, scope: !1910)
!1953 = !DILocation(line: 335, column: 20, scope: !1910)
!1954 = !DILocation(line: 335, column: 12, scope: !1910)
!1955 = !DILocation(line: 340, column: 3, scope: !1910)
!1956 = !DILocation(line: 340, column: 17, scope: !1910)
!1957 = !DILocation(line: 341, column: 25, scope: !1910)
!1958 = !DILocation(line: 341, column: 54, scope: !1910)
!1959 = !DILocation(line: 341, column: 39, scope: !1910)
!1960 = !DILocation(line: 341, column: 37, scope: !1910)
!1961 = !DILocation(line: 341, column: 3, scope: !1910)
!1962 = !DILocation(line: 341, column: 17, scope: !1910)
!1963 = !DILocation(line: 345, column: 16, scope: !1910)
!1964 = !DILocation(line: 345, column: 3, scope: !1910)
!1965 = !DILocation(line: 347, column: 17, scope: !1930)
!1966 = !DILocation(line: 348, column: 16, scope: !1930)
!1967 = !DILocation(line: 349, column: 16, scope: !1930)
!1968 = !DILocation(line: 350, column: 16, scope: !1930)
!1969 = !DILocation(line: 351, column: 16, scope: !1930)
!1970 = !DILocation(line: 385, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 385, column: 7)
!1972 = !DILocation(line: 327, column: 12, scope: !1910)
!1973 = !DILocation(line: 386, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 386, column: 7)
!1975 = !DILocation(line: 387, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 387, column: 7)
!1977 = !DILocation(line: 388, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 388, column: 7)
!1979 = !DILocation(line: 389, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 389, column: 7)
!1981 = !DILocation(line: 390, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 390, column: 7)
!1983 = !DILocation(line: 391, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 391, column: 7)
!1985 = !DILocation(line: 392, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 392, column: 7)
!1987 = !DILocation(line: 393, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 393, column: 7)
!1989 = !DILocation(line: 394, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 394, column: 7)
!1991 = !DILocation(line: 395, column: 7, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 395, column: 7)
!1993 = !DILocation(line: 396, column: 7, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 396, column: 7)
!1995 = !DILocation(line: 397, column: 7, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 397, column: 7)
!1997 = !DILocation(line: 398, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 398, column: 7)
!1999 = !DILocation(line: 399, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 399, column: 7)
!2001 = !DILocation(line: 400, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 400, column: 7)
!2003 = !DILocation(line: 416, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 416, column: 7)
!2005 = !DILocation(line: 417, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 417, column: 7)
!2007 = !DILocation(line: 418, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 418, column: 7)
!2009 = !DILocation(line: 419, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 419, column: 7)
!2011 = !DILocation(line: 420, column: 7, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 420, column: 7)
!2013 = !DILocation(line: 421, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 421, column: 7)
!2015 = !DILocation(line: 422, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 422, column: 7)
!2017 = !DILocation(line: 423, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 423, column: 7)
!2019 = !DILocation(line: 424, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 424, column: 7)
!2021 = !DILocation(line: 425, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 425, column: 7)
!2023 = !DILocation(line: 426, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 426, column: 7)
!2025 = !DILocation(line: 427, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 427, column: 7)
!2027 = !DILocation(line: 428, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 428, column: 7)
!2029 = !DILocation(line: 429, column: 7, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 429, column: 7)
!2031 = !DILocation(line: 430, column: 7, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 430, column: 7)
!2033 = !DILocation(line: 431, column: 7, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 431, column: 7)
!2035 = !DILocation(line: 434, column: 7, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 434, column: 7)
!2037 = !DILocation(line: 435, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 435, column: 7)
!2039 = !DILocation(line: 436, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 436, column: 7)
!2041 = !DILocation(line: 437, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 437, column: 7)
!2043 = !DILocation(line: 438, column: 7, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 438, column: 7)
!2045 = !DILocation(line: 439, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 439, column: 7)
!2047 = !DILocation(line: 440, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 440, column: 7)
!2049 = !DILocation(line: 441, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 441, column: 7)
!2051 = !DILocation(line: 442, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 442, column: 7)
!2053 = !DILocation(line: 443, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 443, column: 7)
!2055 = !DILocation(line: 444, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 444, column: 7)
!2057 = !DILocation(line: 445, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 445, column: 7)
!2059 = !DILocation(line: 446, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 446, column: 7)
!2061 = !DILocation(line: 447, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 447, column: 7)
!2063 = !DILocation(line: 448, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 448, column: 7)
!2065 = !DILocation(line: 449, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 449, column: 7)
!2067 = !DILocation(line: 452, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 452, column: 7)
!2069 = !DILocation(line: 453, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 453, column: 7)
!2071 = !DILocation(line: 454, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 454, column: 7)
!2073 = !DILocation(line: 455, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 455, column: 7)
!2075 = !DILocation(line: 456, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 456, column: 7)
!2077 = !DILocation(line: 457, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 457, column: 7)
!2079 = !DILocation(line: 458, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 458, column: 7)
!2081 = !DILocation(line: 459, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 459, column: 7)
!2083 = !DILocation(line: 460, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 460, column: 7)
!2085 = !DILocation(line: 461, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 461, column: 7)
!2087 = !DILocation(line: 462, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 462, column: 7)
!2089 = !DILocation(line: 463, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 463, column: 7)
!2091 = !DILocation(line: 464, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 464, column: 7)
!2093 = !DILocation(line: 465, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 465, column: 7)
!2095 = !DILocation(line: 466, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 466, column: 7)
!2097 = !DILocation(line: 467, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1930, file: !238, line: 467, column: 7)
!2099 = !DILocation(line: 470, column: 9, scope: !1930)
!2100 = !DILocation(line: 471, column: 9, scope: !1930)
!2101 = !DILocation(line: 472, column: 9, scope: !1930)
!2102 = !DILocation(line: 473, column: 9, scope: !1930)
!2103 = distinct !{!2103, !1964, !2104}
!2104 = !DILocation(line: 474, column: 5, scope: !1910)
!2105 = !DILocation(line: 0, scope: !1930)
!2106 = !DILocation(line: 477, column: 10, scope: !1910)
!2107 = !DILocation(line: 478, column: 10, scope: !1910)
!2108 = !DILocation(line: 479, column: 10, scope: !1910)
!2109 = !DILocation(line: 480, column: 10, scope: !1910)
!2110 = !DILocation(line: 481, column: 1, scope: !1910)
!2111 = distinct !DISubprogram(name: "md5_stream", scope: !238, file: !238, line: 145, type: !2112, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !2148)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!64, !2114, !61}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2116)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2116, file: !102, line: 51, baseType: !64, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2116, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2116, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2116, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2116, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2116, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2116, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2116, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2116, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2116, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2116, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2116, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2116, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2116, file: !102, line: 70, baseType: !2132, size: 64, offset: 832)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2116, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2116, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2116, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2116, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2116, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2116, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2116, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2116, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2116, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2116, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2116, file: !102, line: 93, baseType: !2132, size: 64, offset: 1344)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2116, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2116, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2116, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2116, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!2148 = !{!2149, !2150, !2151, !2152, !2153, !2154}
!2149 = !DILocalVariable(name: "stream", arg: 1, scope: !2111, file: !238, line: 145, type: !2114)
!2150 = !DILocalVariable(name: "resblock", arg: 2, scope: !2111, file: !238, line: 145, type: !61)
!2151 = !DILocalVariable(name: "buffer", scope: !2111, file: !238, line: 153, type: !59)
!2152 = !DILocalVariable(name: "ctx", scope: !2111, file: !238, line: 157, type: !1768)
!2153 = !DILocalVariable(name: "sum", scope: !2111, file: !238, line: 159, type: !62)
!2154 = !DILocalVariable(name: "n", scope: !2155, file: !238, line: 167, type: !62)
!2155 = distinct !DILexicalBlock(scope: !2111, file: !238, line: 163, column: 5)
!2156 = !DILocation(line: 145, column: 19, scope: !2111)
!2157 = !DILocation(line: 145, column: 33, scope: !2111)
!2158 = !DILocation(line: 153, column: 18, scope: !2111)
!2159 = !DILocation(line: 153, column: 9, scope: !2111)
!2160 = !DILocation(line: 154, column: 8, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2111, file: !238, line: 154, column: 7)
!2162 = !DILocation(line: 154, column: 7, scope: !2111)
!2163 = !DILocation(line: 157, column: 3, scope: !2111)
!2164 = !DILocation(line: 157, column: 18, scope: !2111)
!2165 = !DILocation(line: 76, column: 31, scope: !1764, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 158, column: 3, scope: !2111)
!2167 = !DILocation(line: 78, column: 10, scope: !1764, inlinedAt: !2166)
!2168 = !DILocation(line: 83, column: 19, scope: !1764, inlinedAt: !2166)
!2169 = !DILocation(line: 83, column: 33, scope: !1764, inlinedAt: !2166)
!2170 = !DILocation(line: 83, column: 3, scope: !1764, inlinedAt: !2166)
!2171 = !DILocation(line: 83, column: 17, scope: !1764, inlinedAt: !2166)
!2172 = !DILocation(line: 84, column: 8, scope: !1764, inlinedAt: !2166)
!2173 = !DILocation(line: 84, column: 15, scope: !1764, inlinedAt: !2166)
!2174 = !DILocation(line: 162, column: 3, scope: !2111)
!2175 = !DILocation(line: 0, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2155, file: !238, line: 172, column: 9)
!2177 = !DILocation(line: 159, column: 10, scope: !2111)
!2178 = !DILocalVariable(name: "__stream", arg: 1, scope: !2179, file: !1107, line: 128, type: !2114)
!2179 = distinct !DISubprogram(name: "feof_unlocked", scope: !1107, file: !1107, line: 128, type: !2180, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!64, !2114}
!2182 = !{!2178}
!2183 = !DILocation(line: 128, column: 1, scope: !2179, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 178, column: 15, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2176, file: !238, line: 178, column: 15)
!2186 = !DILocation(line: 130, column: 10, scope: !2179, inlinedAt: !2184)
!2187 = !DILocation(line: 178, column: 15, scope: !2185)
!2188 = !DILocation(line: 178, column: 15, scope: !2176)
!2189 = !DILocation(line: 181, column: 15, scope: !2176)
!2190 = !DILocation(line: 167, column: 14, scope: !2155)
!2191 = !DILocation(line: 183, column: 15, scope: !2176)
!2192 = !DILocation(line: 185, column: 19, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2176, file: !238, line: 185, column: 15)
!2194 = !DILocation(line: 185, column: 15, scope: !2176)
!2195 = !DILocation(line: 188, column: 17, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2176, file: !238, line: 188, column: 15)
!2197 = !DILocation(line: 188, column: 15, scope: !2176)
!2198 = distinct !{!2198, !2199, !2200}
!2199 = !DILocation(line: 171, column: 7, scope: !2155)
!2200 = !DILocation(line: 200, column: 9, scope: !2155)
!2201 = !DILocalVariable(name: "__stream", arg: 1, scope: !2202, file: !1107, line: 135, type: !2114)
!2202 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1107, file: !1107, line: 135, type: !2180, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !2203)
!2203 = !{!2201}
!2204 = !DILocation(line: 135, column: 1, scope: !2202, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 193, column: 19, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !238, line: 193, column: 19)
!2207 = distinct !DILexicalBlock(scope: !2196, file: !238, line: 189, column: 13)
!2208 = !DILocation(line: 137, column: 10, scope: !2202, inlinedAt: !2205)
!2209 = !DILocation(line: 193, column: 19, scope: !2206)
!2210 = !DILocation(line: 193, column: 19, scope: !2207)
!2211 = !DILocation(line: 195, column: 19, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2206, file: !238, line: 194, column: 17)
!2213 = !DILocation(line: 205, column: 7, scope: !2155)
!2214 = !DILocation(line: 211, column: 11, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2111, file: !238, line: 211, column: 7)
!2216 = !DILocation(line: 211, column: 7, scope: !2111)
!2217 = !DILocation(line: 212, column: 5, scope: !2215)
!2218 = !DILocation(line: 113, column: 33, scope: !1846, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 215, column: 3, scope: !2111)
!2220 = !DILocation(line: 113, column: 44, scope: !1846, inlinedAt: !2219)
!2221 = !DILocation(line: 116, column: 25, scope: !1846, inlinedAt: !2219)
!2222 = !DILocation(line: 116, column: 12, scope: !1846, inlinedAt: !2219)
!2223 = !DILocation(line: 117, column: 24, scope: !1846, inlinedAt: !2219)
!2224 = !DILocation(line: 117, column: 17, scope: !1846, inlinedAt: !2219)
!2225 = !DILocation(line: 117, column: 10, scope: !1846, inlinedAt: !2219)
!2226 = !DILocation(line: 120, column: 17, scope: !1846, inlinedAt: !2219)
!2227 = !DILocation(line: 121, column: 21, scope: !1864, inlinedAt: !2219)
!2228 = !DILocation(line: 121, column: 7, scope: !1846, inlinedAt: !2219)
!2229 = !DILocation(line: 122, column: 5, scope: !1864, inlinedAt: !2219)
!2230 = !DILocation(line: 125, column: 27, scope: !1846, inlinedAt: !2219)
!2231 = !DILocation(line: 125, column: 20, scope: !1846, inlinedAt: !2219)
!2232 = !DILocation(line: 125, column: 3, scope: !1846, inlinedAt: !2219)
!2233 = !DILocation(line: 125, column: 25, scope: !1846, inlinedAt: !2219)
!2234 = !DILocation(line: 126, column: 27, scope: !1846, inlinedAt: !2219)
!2235 = !DILocation(line: 126, column: 20, scope: !1846, inlinedAt: !2219)
!2236 = !DILocation(line: 126, column: 3, scope: !1846, inlinedAt: !2219)
!2237 = !DILocation(line: 126, column: 25, scope: !1846, inlinedAt: !2219)
!2238 = !DILocation(line: 128, column: 12, scope: !1846, inlinedAt: !2219)
!2239 = !DILocation(line: 128, column: 63, scope: !1846, inlinedAt: !2219)
!2240 = !DILocation(line: 128, column: 67, scope: !1846, inlinedAt: !2219)
!2241 = !DILocation(line: 128, column: 3, scope: !1846, inlinedAt: !2219)
!2242 = !DILocation(line: 131, column: 40, scope: !1846, inlinedAt: !2219)
!2243 = !DILocation(line: 131, column: 3, scope: !1846, inlinedAt: !2219)
!2244 = !DILocation(line: 99, column: 37, scope: !1800, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 133, column: 10, scope: !1846, inlinedAt: !2219)
!2246 = !DILocation(line: 99, column: 48, scope: !1800, inlinedAt: !2245)
!2247 = !DILocation(line: 101, column: 9, scope: !1800, inlinedAt: !2245)
!2248 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 102, column: 3, scope: !1800, inlinedAt: !2245)
!2250 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !2249)
!2251 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 103, column: 3, scope: !1800, inlinedAt: !2245)
!2253 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !2252)
!2254 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 104, column: 3, scope: !1800, inlinedAt: !2245)
!2256 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !2255)
!2257 = !DILocation(line: 102, column: 38, scope: !1800, inlinedAt: !2245)
!2258 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 105, column: 3, scope: !1800, inlinedAt: !2245)
!2260 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !2259)
!2261 = !DILocation(line: 93, column: 3, scope: !1815, inlinedAt: !2249)
!2262 = !DILocation(line: 216, column: 3, scope: !2111)
!2263 = !DILocation(line: 217, column: 3, scope: !2111)
!2264 = !DILocation(line: 218, column: 1, scope: !2111)
!2265 = distinct !DISubprogram(name: "md5_process_bytes", scope: !238, file: !238, line: 243, type: !1911, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !2266)
!2266 = !{!2267, !2268, !2269, !2270, !2273, !2274}
!2267 = !DILocalVariable(name: "buffer", arg: 1, scope: !2265, file: !238, line: 243, type: !926)
!2268 = !DILocalVariable(name: "len", arg: 2, scope: !2265, file: !238, line: 243, type: !62)
!2269 = !DILocalVariable(name: "ctx", arg: 3, scope: !2265, file: !238, line: 243, type: !1767)
!2270 = !DILocalVariable(name: "left_over", scope: !2271, file: !238, line: 249, type: !62)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !238, line: 248, column: 5)
!2272 = distinct !DILexicalBlock(scope: !2265, file: !238, line: 247, column: 7)
!2273 = !DILocalVariable(name: "add", scope: !2271, file: !238, line: 250, type: !62)
!2274 = !DILocalVariable(name: "left_over", scope: !2275, file: !238, line: 295, type: !62)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !238, line: 294, column: 5)
!2276 = distinct !DILexicalBlock(scope: !2265, file: !238, line: 293, column: 7)
!2277 = !DILocation(line: 243, column: 32, scope: !2265)
!2278 = !DILocation(line: 243, column: 47, scope: !2265)
!2279 = !DILocation(line: 243, column: 68, scope: !2265)
!2280 = !DILocation(line: 247, column: 12, scope: !2272)
!2281 = !DILocation(line: 247, column: 19, scope: !2272)
!2282 = !DILocation(line: 247, column: 7, scope: !2265)
!2283 = !DILocation(line: 249, column: 26, scope: !2271)
!2284 = !DILocation(line: 249, column: 14, scope: !2271)
!2285 = !DILocation(line: 250, column: 24, scope: !2271)
!2286 = !DILocation(line: 250, column: 36, scope: !2271)
!2287 = !DILocation(line: 250, column: 20, scope: !2271)
!2288 = !DILocation(line: 250, column: 14, scope: !2271)
!2289 = !DILocation(line: 252, column: 16, scope: !2271)
!2290 = !DILocation(line: 252, column: 7, scope: !2271)
!2291 = !DILocation(line: 253, column: 19, scope: !2271)
!2292 = !DILocation(line: 255, column: 23, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2271, file: !238, line: 255, column: 11)
!2294 = !DILocation(line: 255, column: 11, scope: !2271)
!2295 = !DILocation(line: 257, column: 55, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2293, file: !238, line: 256, column: 9)
!2297 = !DILocation(line: 257, column: 43, scope: !2296)
!2298 = !DILocation(line: 257, column: 11, scope: !2296)
!2299 = !DILocation(line: 259, column: 23, scope: !2296)
!2300 = !DILocation(line: 263, column: 54, scope: !2296)
!2301 = !DILocation(line: 263, column: 61, scope: !2296)
!2302 = !DILocation(line: 263, column: 20, scope: !2296)
!2303 = !DILocation(line: 264, column: 19, scope: !2296)
!2304 = !DILocation(line: 262, column: 11, scope: !2296)
!2305 = !DILocation(line: 265, column: 9, scope: !2296)
!2306 = !DILocation(line: 267, column: 38, scope: !2271)
!2307 = !DILocation(line: 268, column: 11, scope: !2271)
!2308 = !DILocation(line: 269, column: 5, scope: !2271)
!2309 = !DILocation(line: 272, column: 11, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2265, file: !238, line: 272, column: 7)
!2311 = !DILocation(line: 272, column: 7, scope: !2265)
!2312 = !DILocation(line: 276, column: 11, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !238, line: 276, column: 11)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !238, line: 273, column: 5)
!2315 = !DILocation(line: 276, column: 11, scope: !2314)
!2316 = !DILocation(line: 277, column: 20, scope: !2313)
!2317 = !DILocation(line: 277, column: 9, scope: !2313)
!2318 = !DILocation(line: 279, column: 32, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2313, file: !238, line: 278, column: 11)
!2320 = !DILocation(line: 279, column: 13, scope: !2319)
!2321 = !DILocation(line: 280, column: 44, scope: !2319)
!2322 = !DILocation(line: 281, column: 17, scope: !2319)
!2323 = distinct !{!2323, !2317, !2324}
!2324 = !DILocation(line: 282, column: 11, scope: !2313)
!2325 = !DILocation(line: 286, column: 42, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2313, file: !238, line: 285, column: 9)
!2327 = !DILocation(line: 286, column: 11, scope: !2326)
!2328 = !DILocation(line: 287, column: 42, scope: !2326)
!2329 = !DILocation(line: 288, column: 15, scope: !2326)
!2330 = !DILocation(line: 0, scope: !2271)
!2331 = !DILocation(line: 293, column: 11, scope: !2276)
!2332 = !DILocation(line: 293, column: 7, scope: !2265)
!2333 = !DILocation(line: 295, column: 31, scope: !2275)
!2334 = !DILocation(line: 295, column: 26, scope: !2275)
!2335 = !DILocation(line: 295, column: 14, scope: !2275)
!2336 = !DILocation(line: 297, column: 31, scope: !2275)
!2337 = !DILocation(line: 297, column: 16, scope: !2275)
!2338 = !DILocation(line: 297, column: 7, scope: !2275)
!2339 = !DILocation(line: 298, column: 17, scope: !2275)
!2340 = !DILocation(line: 299, column: 21, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2275, file: !238, line: 299, column: 11)
!2342 = !DILocation(line: 299, column: 11, scope: !2275)
!2343 = !DILocation(line: 301, column: 11, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2341, file: !238, line: 300, column: 9)
!2345 = !DILocation(line: 302, column: 21, scope: !2344)
!2346 = !DILocation(line: 305, column: 33, scope: !2344)
!2347 = !DILocation(line: 305, column: 11, scope: !2344)
!2348 = !DILocation(line: 306, column: 9, scope: !2344)
!2349 = !DILocation(line: 0, scope: !2275)
!2350 = !DILocation(line: 307, column: 21, scope: !2275)
!2351 = !DILocation(line: 307, column: 19, scope: !2275)
!2352 = !DILocation(line: 308, column: 5, scope: !2275)
!2353 = !DILocation(line: 309, column: 1, scope: !2265)
!2354 = distinct !DISubprogram(name: "md5_buffer", scope: !238, file: !238, line: 227, type: !2355, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!61, !93, !62, !61}
!2357 = !{!2358, !2359, !2360, !2361}
!2358 = !DILocalVariable(name: "buffer", arg: 1, scope: !2354, file: !238, line: 227, type: !93)
!2359 = !DILocalVariable(name: "len", arg: 2, scope: !2354, file: !238, line: 227, type: !62)
!2360 = !DILocalVariable(name: "resblock", arg: 3, scope: !2354, file: !238, line: 227, type: !61)
!2361 = !DILocalVariable(name: "ctx", scope: !2354, file: !238, line: 229, type: !1768)
!2362 = !DILocation(line: 227, column: 25, scope: !2354)
!2363 = !DILocation(line: 227, column: 40, scope: !2354)
!2364 = !DILocation(line: 227, column: 51, scope: !2354)
!2365 = !DILocation(line: 229, column: 3, scope: !2354)
!2366 = !DILocation(line: 229, column: 18, scope: !2354)
!2367 = !DILocation(line: 76, column: 31, scope: !1764, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 232, column: 3, scope: !2354)
!2369 = !DILocation(line: 78, column: 10, scope: !1764, inlinedAt: !2368)
!2370 = !DILocation(line: 83, column: 19, scope: !1764, inlinedAt: !2368)
!2371 = !DILocation(line: 83, column: 33, scope: !1764, inlinedAt: !2368)
!2372 = !DILocation(line: 83, column: 3, scope: !1764, inlinedAt: !2368)
!2373 = !DILocation(line: 83, column: 17, scope: !1764, inlinedAt: !2368)
!2374 = !DILocation(line: 84, column: 8, scope: !1764, inlinedAt: !2368)
!2375 = !DILocation(line: 84, column: 15, scope: !1764, inlinedAt: !2368)
!2376 = !DILocation(line: 235, column: 3, scope: !2354)
!2377 = !DILocation(line: 113, column: 33, scope: !1846, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 238, column: 10, scope: !2354)
!2379 = !DILocation(line: 113, column: 44, scope: !1846, inlinedAt: !2378)
!2380 = !DILocation(line: 116, column: 25, scope: !1846, inlinedAt: !2378)
!2381 = !DILocation(line: 116, column: 12, scope: !1846, inlinedAt: !2378)
!2382 = !DILocation(line: 117, column: 24, scope: !1846, inlinedAt: !2378)
!2383 = !DILocation(line: 117, column: 17, scope: !1846, inlinedAt: !2378)
!2384 = !DILocation(line: 117, column: 10, scope: !1846, inlinedAt: !2378)
!2385 = !DILocation(line: 120, column: 17, scope: !1846, inlinedAt: !2378)
!2386 = !DILocation(line: 121, column: 21, scope: !1864, inlinedAt: !2378)
!2387 = !DILocation(line: 121, column: 7, scope: !1846, inlinedAt: !2378)
!2388 = !DILocation(line: 122, column: 5, scope: !1864, inlinedAt: !2378)
!2389 = !DILocation(line: 125, column: 27, scope: !1846, inlinedAt: !2378)
!2390 = !DILocation(line: 125, column: 20, scope: !1846, inlinedAt: !2378)
!2391 = !DILocation(line: 125, column: 3, scope: !1846, inlinedAt: !2378)
!2392 = !DILocation(line: 125, column: 25, scope: !1846, inlinedAt: !2378)
!2393 = !DILocation(line: 126, column: 27, scope: !1846, inlinedAt: !2378)
!2394 = !DILocation(line: 126, column: 20, scope: !1846, inlinedAt: !2378)
!2395 = !DILocation(line: 126, column: 3, scope: !1846, inlinedAt: !2378)
!2396 = !DILocation(line: 126, column: 25, scope: !1846, inlinedAt: !2378)
!2397 = !DILocation(line: 128, column: 12, scope: !1846, inlinedAt: !2378)
!2398 = !DILocation(line: 128, column: 63, scope: !1846, inlinedAt: !2378)
!2399 = !DILocation(line: 128, column: 67, scope: !1846, inlinedAt: !2378)
!2400 = !DILocation(line: 128, column: 3, scope: !1846, inlinedAt: !2378)
!2401 = !DILocation(line: 131, column: 40, scope: !1846, inlinedAt: !2378)
!2402 = !DILocation(line: 131, column: 3, scope: !1846, inlinedAt: !2378)
!2403 = !DILocation(line: 99, column: 37, scope: !1800, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 133, column: 10, scope: !1846, inlinedAt: !2378)
!2405 = !DILocation(line: 99, column: 48, scope: !1800, inlinedAt: !2404)
!2406 = !DILocation(line: 101, column: 9, scope: !1800, inlinedAt: !2404)
!2407 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 102, column: 3, scope: !1800, inlinedAt: !2404)
!2409 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !2408)
!2410 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 103, column: 3, scope: !1800, inlinedAt: !2404)
!2412 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !2411)
!2413 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 104, column: 3, scope: !1800, inlinedAt: !2404)
!2415 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !2414)
!2416 = !DILocation(line: 102, column: 38, scope: !1800, inlinedAt: !2404)
!2417 = !DILocation(line: 91, column: 19, scope: !1815, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 105, column: 3, scope: !1800, inlinedAt: !2404)
!2419 = !DILocation(line: 91, column: 32, scope: !1815, inlinedAt: !2418)
!2420 = !DILocation(line: 93, column: 3, scope: !1815, inlinedAt: !2408)
!2421 = !DILocation(line: 239, column: 1, scope: !2354)
!2422 = !DILocation(line: 238, column: 3, scope: !2354)
!2423 = distinct !DISubprogram(name: "fdadvise", scope: !2424, file: !2424, line: 31, type: !2425, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !354, retainedNodes: !2430)
!2424 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2425 = !DISubroutineType(types: !2426)
!2426 = !{null, !64, !2427, !2427, !2429}
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2428, line: 63, baseType: !124)
!2428 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !50, line: 52, baseType: !49)
!2430 = !{!2431, !2432, !2433, !2434, !2435}
!2431 = !DILocalVariable(name: "fd", arg: 1, scope: !2423, file: !2424, line: 31, type: !64)
!2432 = !DILocalVariable(name: "offset", arg: 2, scope: !2423, file: !2424, line: 31, type: !2427)
!2433 = !DILocalVariable(name: "len", arg: 3, scope: !2423, file: !2424, line: 31, type: !2427)
!2434 = !DILocalVariable(name: "advice", arg: 4, scope: !2423, file: !2424, line: 31, type: !2429)
!2435 = !DILocalVariable(name: "__x", scope: !2436, file: !2424, line: 34, type: !64)
!2436 = distinct !DILexicalBlock(scope: !2423, file: !2424, line: 34, column: 3)
!2437 = !DILocation(line: 31, column: 15, scope: !2423)
!2438 = !DILocation(line: 31, column: 25, scope: !2423)
!2439 = !DILocation(line: 31, column: 39, scope: !2423)
!2440 = !DILocation(line: 31, column: 54, scope: !2423)
!2441 = !DILocation(line: 34, column: 3, scope: !2436)
!2442 = !DILocation(line: 36, column: 1, scope: !2423)
!2443 = distinct !DISubprogram(name: "fadvise", scope: !2424, file: !2424, line: 39, type: !2444, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !354, retainedNodes: !2480)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !2446, !2429}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2448)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2448, file: !102, line: 51, baseType: !64, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2448, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2448, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2448, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2448, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2448, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2448, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2448, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2448, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2448, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2448, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2448, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2448, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2448, file: !102, line: 70, baseType: !2464, size: 64, offset: 832)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2448, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2448, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2448, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2448, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2448, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2448, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2448, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2448, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2448, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2448, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2448, file: !102, line: 93, baseType: !2464, size: 64, offset: 1344)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2448, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2448, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2448, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2448, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!2480 = !{!2481, !2482}
!2481 = !DILocalVariable(name: "fp", arg: 1, scope: !2443, file: !2424, line: 39, type: !2446)
!2482 = !DILocalVariable(name: "advice", arg: 2, scope: !2443, file: !2424, line: 39, type: !2429)
!2483 = !DILocation(line: 39, column: 16, scope: !2443)
!2484 = !DILocation(line: 39, column: 30, scope: !2443)
!2485 = !DILocation(line: 41, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2443, file: !2424, line: 41, column: 7)
!2487 = !DILocation(line: 41, column: 7, scope: !2443)
!2488 = !DILocation(line: 42, column: 15, scope: !2486)
!2489 = !DILocation(line: 31, column: 15, scope: !2423, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 42, column: 5, scope: !2486)
!2491 = !DILocation(line: 31, column: 25, scope: !2423, inlinedAt: !2490)
!2492 = !DILocation(line: 31, column: 39, scope: !2423, inlinedAt: !2490)
!2493 = !DILocation(line: 31, column: 54, scope: !2423, inlinedAt: !2490)
!2494 = !DILocation(line: 34, column: 3, scope: !2436, inlinedAt: !2490)
!2495 = !DILocation(line: 42, column: 5, scope: !2486)
!2496 = !DILocation(line: 43, column: 1, scope: !2443)
!2497 = distinct !DISubprogram(name: "fopen_safer", scope: !2498, file: !2498, line: 31, type: !2499, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !357, retainedNodes: !2535)
!2498 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!2501, !93, !93}
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2504)
!2504 = !{!2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2503, file: !102, line: 51, baseType: !64, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2503, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2503, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2503, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2503, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2503, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2503, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2503, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2503, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2503, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2503, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2503, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2503, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2503, file: !102, line: 70, baseType: !2519, size: 64, offset: 832)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2503, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2503, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2503, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2503, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2503, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2503, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2503, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2503, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2503, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2503, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2503, file: !102, line: 93, baseType: !2519, size: 64, offset: 1344)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2503, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2503, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2503, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2503, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!2535 = !{!2536, !2537, !2538, !2539, !2542, !2545, !2548}
!2536 = !DILocalVariable(name: "file", arg: 1, scope: !2497, file: !2498, line: 31, type: !93)
!2537 = !DILocalVariable(name: "mode", arg: 2, scope: !2497, file: !2498, line: 31, type: !93)
!2538 = !DILocalVariable(name: "fp", scope: !2497, file: !2498, line: 33, type: !2501)
!2539 = !DILocalVariable(name: "fd", scope: !2540, file: !2498, line: 37, type: !64)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !2498, line: 36, column: 5)
!2541 = distinct !DILexicalBlock(scope: !2497, file: !2498, line: 35, column: 7)
!2542 = !DILocalVariable(name: "f", scope: !2543, file: !2498, line: 41, type: !64)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !2498, line: 40, column: 9)
!2544 = distinct !DILexicalBlock(scope: !2540, file: !2498, line: 39, column: 11)
!2545 = !DILocalVariable(name: "e", scope: !2546, file: !2498, line: 45, type: !64)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !2498, line: 44, column: 13)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !2498, line: 43, column: 15)
!2548 = !DILocalVariable(name: "e", scope: !2549, file: !2498, line: 54, type: !64)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !2498, line: 53, column: 13)
!2550 = distinct !DILexicalBlock(scope: !2543, file: !2498, line: 51, column: 15)
!2551 = !DILocation(line: 31, column: 26, scope: !2497)
!2552 = !DILocation(line: 31, column: 44, scope: !2497)
!2553 = !DILocation(line: 33, column: 14, scope: !2497)
!2554 = !DILocation(line: 33, column: 9, scope: !2497)
!2555 = !DILocation(line: 35, column: 7, scope: !2541)
!2556 = !DILocation(line: 35, column: 7, scope: !2497)
!2557 = !DILocation(line: 37, column: 16, scope: !2540)
!2558 = !DILocation(line: 37, column: 11, scope: !2540)
!2559 = !DILocation(line: 39, column: 19, scope: !2544)
!2560 = !DILocation(line: 41, column: 19, scope: !2543)
!2561 = !DILocation(line: 41, column: 15, scope: !2543)
!2562 = !DILocation(line: 43, column: 17, scope: !2547)
!2563 = !DILocation(line: 43, column: 15, scope: !2543)
!2564 = !DILocation(line: 45, column: 23, scope: !2546)
!2565 = !DILocation(line: 45, column: 19, scope: !2546)
!2566 = !DILocation(line: 46, column: 15, scope: !2546)
!2567 = !DILocation(line: 47, column: 21, scope: !2546)
!2568 = !DILocation(line: 51, column: 15, scope: !2550)
!2569 = !DILocation(line: 51, column: 27, scope: !2550)
!2570 = !DILocation(line: 52, column: 15, scope: !2550)
!2571 = !DILocation(line: 52, column: 26, scope: !2550)
!2572 = !DILocation(line: 52, column: 24, scope: !2550)
!2573 = !DILocation(line: 51, column: 15, scope: !2543)
!2574 = !DILocation(line: 54, column: 23, scope: !2549)
!2575 = !DILocation(line: 54, column: 19, scope: !2549)
!2576 = !DILocation(line: 55, column: 15, scope: !2549)
!2577 = !DILocation(line: 56, column: 21, scope: !2549)
!2578 = !DILocation(line: 0, scope: !2546)
!2579 = !DILocation(line: 63, column: 1, scope: !2497)
!2580 = distinct !DISubprogram(name: "set_program_name", scope: !256, file: !256, line: 39, type: !805, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !252, retainedNodes: !2581)
!2581 = !{!2582, !2583, !2584}
!2582 = !DILocalVariable(name: "argv0", arg: 1, scope: !2580, file: !256, line: 39, type: !93)
!2583 = !DILocalVariable(name: "slash", scope: !2580, file: !256, line: 46, type: !93)
!2584 = !DILocalVariable(name: "base", scope: !2580, file: !256, line: 47, type: !93)
!2585 = !DILocation(line: 39, column: 31, scope: !2580)
!2586 = !DILocation(line: 51, column: 13, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2580, file: !256, line: 51, column: 7)
!2588 = !DILocation(line: 51, column: 7, scope: !2580)
!2589 = !DILocation(line: 55, column: 14, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2587, file: !256, line: 52, column: 5)
!2591 = !DILocation(line: 54, column: 7, scope: !2590)
!2592 = !DILocation(line: 56, column: 7, scope: !2590)
!2593 = !DILocation(line: 59, column: 11, scope: !2580)
!2594 = !DILocation(line: 46, column: 15, scope: !2580)
!2595 = !DILocation(line: 60, column: 17, scope: !2580)
!2596 = !DILocation(line: 60, column: 33, scope: !2580)
!2597 = !DILocation(line: 60, column: 11, scope: !2580)
!2598 = !DILocation(line: 47, column: 15, scope: !2580)
!2599 = !DILocation(line: 61, column: 12, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2580, file: !256, line: 61, column: 7)
!2601 = !DILocation(line: 61, column: 20, scope: !2600)
!2602 = !DILocation(line: 61, column: 25, scope: !2600)
!2603 = !DILocation(line: 61, column: 42, scope: !2600)
!2604 = !DILocation(line: 61, column: 28, scope: !2600)
!2605 = !DILocation(line: 61, column: 61, scope: !2600)
!2606 = !DILocation(line: 61, column: 7, scope: !2580)
!2607 = !DILocation(line: 64, column: 11, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !256, line: 64, column: 11)
!2609 = distinct !DILexicalBlock(scope: !2600, file: !256, line: 62, column: 5)
!2610 = !DILocation(line: 64, column: 36, scope: !2608)
!2611 = !DILocation(line: 64, column: 11, scope: !2609)
!2612 = !DILocation(line: 66, column: 24, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2608, file: !256, line: 65, column: 9)
!2614 = !DILocation(line: 70, column: 41, scope: !2613)
!2615 = !DILocation(line: 72, column: 9, scope: !2613)
!2616 = !DILocation(line: 84, column: 16, scope: !2580)
!2617 = !DILocation(line: 90, column: 27, scope: !2580)
!2618 = !DILocation(line: 92, column: 1, scope: !2580)
!2619 = distinct !DISubprogram(name: "clone_quoting_options", scope: !271, file: !271, line: 122, type: !2620, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !2623)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!2622, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!2623 = !{!2624, !2625, !2626}
!2624 = !DILocalVariable(name: "o", arg: 1, scope: !2619, file: !271, line: 122, type: !2622)
!2625 = !DILocalVariable(name: "e", scope: !2619, file: !271, line: 124, type: !64)
!2626 = !DILocalVariable(name: "p", scope: !2619, file: !271, line: 125, type: !2622)
!2627 = !DILocation(line: 122, column: 48, scope: !2619)
!2628 = !DILocation(line: 124, column: 11, scope: !2619)
!2629 = !DILocation(line: 124, column: 7, scope: !2619)
!2630 = !DILocation(line: 125, column: 40, scope: !2619)
!2631 = !DILocation(line: 125, column: 31, scope: !2619)
!2632 = !DILocation(line: 125, column: 27, scope: !2619)
!2633 = !DILocation(line: 127, column: 9, scope: !2619)
!2634 = !DILocation(line: 128, column: 3, scope: !2619)
!2635 = distinct !DISubprogram(name: "get_quoting_style", scope: !271, file: !271, line: 133, type: !2636, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !2640)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!5, !2638}
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!2640 = !{!2641}
!2641 = !DILocalVariable(name: "o", arg: 1, scope: !2635, file: !271, line: 133, type: !2638)
!2642 = !DILocation(line: 133, column: 50, scope: !2635)
!2643 = !DILocation(line: 135, column: 11, scope: !2635)
!2644 = !DILocation(line: 135, column: 46, scope: !2635)
!2645 = !{!2646, !832, i64 0}
!2646 = !{!"quoting_options", !832, i64 0, !1039, i64 4, !832, i64 8, !831, i64 40, !831, i64 48}
!2647 = !DILocation(line: 135, column: 3, scope: !2635)
!2648 = distinct !DISubprogram(name: "set_quoting_style", scope: !271, file: !271, line: 141, type: !2649, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !2651)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{null, !2622, !5}
!2651 = !{!2652, !2653}
!2652 = !DILocalVariable(name: "o", arg: 1, scope: !2648, file: !271, line: 141, type: !2622)
!2653 = !DILocalVariable(name: "s", arg: 2, scope: !2648, file: !271, line: 141, type: !5)
!2654 = !DILocation(line: 141, column: 44, scope: !2648)
!2655 = !DILocation(line: 141, column: 66, scope: !2648)
!2656 = !DILocation(line: 143, column: 4, scope: !2648)
!2657 = !DILocation(line: 143, column: 39, scope: !2648)
!2658 = !DILocation(line: 143, column: 45, scope: !2648)
!2659 = !DILocation(line: 144, column: 1, scope: !2648)
!2660 = distinct !DISubprogram(name: "set_char_quoting", scope: !271, file: !271, line: 152, type: !2661, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!64, !2622, !60, !64}
!2663 = !{!2664, !2665, !2666, !2667, !2668, !2670, !2671}
!2664 = !DILocalVariable(name: "o", arg: 1, scope: !2660, file: !271, line: 152, type: !2622)
!2665 = !DILocalVariable(name: "c", arg: 2, scope: !2660, file: !271, line: 152, type: !60)
!2666 = !DILocalVariable(name: "i", arg: 3, scope: !2660, file: !271, line: 152, type: !64)
!2667 = !DILocalVariable(name: "uc", scope: !2660, file: !271, line: 154, type: !66)
!2668 = !DILocalVariable(name: "p", scope: !2660, file: !271, line: 155, type: !2669)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2670 = !DILocalVariable(name: "shift", scope: !2660, file: !271, line: 157, type: !64)
!2671 = !DILocalVariable(name: "r", scope: !2660, file: !271, line: 158, type: !64)
!2672 = !DILocation(line: 152, column: 43, scope: !2660)
!2673 = !DILocation(line: 152, column: 51, scope: !2660)
!2674 = !DILocation(line: 152, column: 58, scope: !2660)
!2675 = !DILocation(line: 154, column: 17, scope: !2660)
!2676 = !DILocation(line: 156, column: 6, scope: !2660)
!2677 = !DILocation(line: 156, column: 62, scope: !2660)
!2678 = !DILocation(line: 156, column: 57, scope: !2660)
!2679 = !DILocation(line: 155, column: 17, scope: !2660)
!2680 = !DILocation(line: 157, column: 15, scope: !2660)
!2681 = !DILocation(line: 157, column: 7, scope: !2660)
!2682 = !DILocation(line: 158, column: 12, scope: !2660)
!2683 = !DILocation(line: 158, column: 15, scope: !2660)
!2684 = !DILocation(line: 158, column: 25, scope: !2660)
!2685 = !DILocation(line: 158, column: 7, scope: !2660)
!2686 = !DILocation(line: 159, column: 13, scope: !2660)
!2687 = !DILocation(line: 159, column: 18, scope: !2660)
!2688 = !DILocation(line: 159, column: 23, scope: !2660)
!2689 = !DILocation(line: 159, column: 6, scope: !2660)
!2690 = !DILocation(line: 160, column: 3, scope: !2660)
!2691 = distinct !DISubprogram(name: "set_quoting_flags", scope: !271, file: !271, line: 168, type: !2692, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!64, !2622, !64}
!2694 = !{!2695, !2696, !2697}
!2695 = !DILocalVariable(name: "o", arg: 1, scope: !2691, file: !271, line: 168, type: !2622)
!2696 = !DILocalVariable(name: "i", arg: 2, scope: !2691, file: !271, line: 168, type: !64)
!2697 = !DILocalVariable(name: "r", scope: !2691, file: !271, line: 170, type: !64)
!2698 = !DILocation(line: 168, column: 44, scope: !2691)
!2699 = !DILocation(line: 168, column: 51, scope: !2691)
!2700 = !DILocation(line: 171, column: 8, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2691, file: !271, line: 171, column: 7)
!2702 = !DILocation(line: 171, column: 7, scope: !2691)
!2703 = !DILocation(line: 173, column: 10, scope: !2691)
!2704 = !{!2646, !1039, i64 4}
!2705 = !DILocation(line: 170, column: 7, scope: !2691)
!2706 = !DILocation(line: 174, column: 12, scope: !2691)
!2707 = !DILocation(line: 175, column: 3, scope: !2691)
!2708 = distinct !DISubprogram(name: "set_custom_quoting", scope: !271, file: !271, line: 179, type: !2709, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{null, !2622, !93, !93}
!2711 = !{!2712, !2713, !2714}
!2712 = !DILocalVariable(name: "o", arg: 1, scope: !2708, file: !271, line: 179, type: !2622)
!2713 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2708, file: !271, line: 180, type: !93)
!2714 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2708, file: !271, line: 180, type: !93)
!2715 = !DILocation(line: 179, column: 45, scope: !2708)
!2716 = !DILocation(line: 180, column: 33, scope: !2708)
!2717 = !DILocation(line: 180, column: 57, scope: !2708)
!2718 = !DILocation(line: 182, column: 8, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2708, file: !271, line: 182, column: 7)
!2720 = !DILocation(line: 182, column: 7, scope: !2708)
!2721 = !DILocation(line: 184, column: 6, scope: !2708)
!2722 = !DILocation(line: 184, column: 12, scope: !2708)
!2723 = !DILocation(line: 185, column: 8, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2708, file: !271, line: 185, column: 7)
!2725 = !DILocation(line: 185, column: 23, scope: !2724)
!2726 = !DILocation(line: 185, column: 19, scope: !2724)
!2727 = !DILocation(line: 186, column: 5, scope: !2724)
!2728 = !DILocation(line: 187, column: 6, scope: !2708)
!2729 = !DILocation(line: 187, column: 17, scope: !2708)
!2730 = !{!2646, !831, i64 40}
!2731 = !DILocation(line: 188, column: 6, scope: !2708)
!2732 = !DILocation(line: 188, column: 18, scope: !2708)
!2733 = !{!2646, !831, i64 48}
!2734 = !DILocation(line: 189, column: 1, scope: !2708)
!2735 = distinct !DISubprogram(name: "quotearg_buffer", scope: !271, file: !271, line: 784, type: !2736, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!62, !59, !62, !93, !62, !2638}
!2738 = !{!2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746}
!2739 = !DILocalVariable(name: "buffer", arg: 1, scope: !2735, file: !271, line: 784, type: !59)
!2740 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2735, file: !271, line: 784, type: !62)
!2741 = !DILocalVariable(name: "arg", arg: 3, scope: !2735, file: !271, line: 785, type: !93)
!2742 = !DILocalVariable(name: "argsize", arg: 4, scope: !2735, file: !271, line: 785, type: !62)
!2743 = !DILocalVariable(name: "o", arg: 5, scope: !2735, file: !271, line: 786, type: !2638)
!2744 = !DILocalVariable(name: "p", scope: !2735, file: !271, line: 788, type: !2638)
!2745 = !DILocalVariable(name: "e", scope: !2735, file: !271, line: 789, type: !64)
!2746 = !DILocalVariable(name: "r", scope: !2735, file: !271, line: 790, type: !62)
!2747 = !DILocation(line: 784, column: 24, scope: !2735)
!2748 = !DILocation(line: 784, column: 39, scope: !2735)
!2749 = !DILocation(line: 785, column: 30, scope: !2735)
!2750 = !DILocation(line: 785, column: 42, scope: !2735)
!2751 = !DILocation(line: 786, column: 48, scope: !2735)
!2752 = !DILocation(line: 788, column: 37, scope: !2735)
!2753 = !DILocation(line: 788, column: 33, scope: !2735)
!2754 = !DILocation(line: 789, column: 11, scope: !2735)
!2755 = !DILocation(line: 789, column: 7, scope: !2735)
!2756 = !DILocation(line: 791, column: 43, scope: !2735)
!2757 = !DILocation(line: 791, column: 53, scope: !2735)
!2758 = !DILocation(line: 791, column: 60, scope: !2735)
!2759 = !DILocation(line: 792, column: 43, scope: !2735)
!2760 = !DILocation(line: 792, column: 58, scope: !2735)
!2761 = !DILocation(line: 790, column: 14, scope: !2735)
!2762 = !DILocation(line: 790, column: 10, scope: !2735)
!2763 = !DILocation(line: 793, column: 9, scope: !2735)
!2764 = !DILocation(line: 794, column: 3, scope: !2735)
!2765 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !271, file: !271, line: 256, type: !2766, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !2770)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!62, !59, !62, !93, !62, !5, !64, !2768, !93, !93}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2770 = !{!2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2795, !2796, !2797, !2798, !2799, !2802, !2803, !2821, !2824, !2825, !2832}
!2771 = !DILocalVariable(name: "buffer", arg: 1, scope: !2765, file: !271, line: 256, type: !59)
!2772 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2765, file: !271, line: 256, type: !62)
!2773 = !DILocalVariable(name: "arg", arg: 3, scope: !2765, file: !271, line: 257, type: !93)
!2774 = !DILocalVariable(name: "argsize", arg: 4, scope: !2765, file: !271, line: 257, type: !62)
!2775 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2765, file: !271, line: 258, type: !5)
!2776 = !DILocalVariable(name: "flags", arg: 6, scope: !2765, file: !271, line: 258, type: !64)
!2777 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2765, file: !271, line: 259, type: !2768)
!2778 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2765, file: !271, line: 260, type: !93)
!2779 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2765, file: !271, line: 261, type: !93)
!2780 = !DILocalVariable(name: "i", scope: !2765, file: !271, line: 263, type: !62)
!2781 = !DILocalVariable(name: "len", scope: !2765, file: !271, line: 264, type: !62)
!2782 = !DILocalVariable(name: "orig_buffersize", scope: !2765, file: !271, line: 265, type: !62)
!2783 = !DILocalVariable(name: "quote_string", scope: !2765, file: !271, line: 266, type: !93)
!2784 = !DILocalVariable(name: "quote_string_len", scope: !2765, file: !271, line: 267, type: !62)
!2785 = !DILocalVariable(name: "backslash_escapes", scope: !2765, file: !271, line: 268, type: !71)
!2786 = !DILocalVariable(name: "unibyte_locale", scope: !2765, file: !271, line: 269, type: !71)
!2787 = !DILocalVariable(name: "elide_outer_quotes", scope: !2765, file: !271, line: 270, type: !71)
!2788 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2765, file: !271, line: 271, type: !71)
!2789 = !DILocalVariable(name: "encountered_single_quote", scope: !2765, file: !271, line: 272, type: !71)
!2790 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2765, file: !271, line: 273, type: !71)
!2791 = !DILocalVariable(name: "c", scope: !2792, file: !271, line: 402, type: !66)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !271, line: 401, column: 5)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !271, line: 400, column: 3)
!2794 = distinct !DILexicalBlock(scope: !2765, file: !271, line: 400, column: 3)
!2795 = !DILocalVariable(name: "esc", scope: !2792, file: !271, line: 403, type: !66)
!2796 = !DILocalVariable(name: "is_right_quote", scope: !2792, file: !271, line: 404, type: !71)
!2797 = !DILocalVariable(name: "escaping", scope: !2792, file: !271, line: 405, type: !71)
!2798 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2792, file: !271, line: 406, type: !71)
!2799 = !DILocalVariable(name: "m", scope: !2800, file: !271, line: 610, type: !62)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !271, line: 608, column: 11)
!2801 = distinct !DILexicalBlock(scope: !2792, file: !271, line: 426, column: 9)
!2802 = !DILocalVariable(name: "printable", scope: !2800, file: !271, line: 612, type: !71)
!2803 = !DILocalVariable(name: "mbstate", scope: !2804, file: !271, line: 621, type: !2806)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !271, line: 620, column: 15)
!2805 = distinct !DILexicalBlock(scope: !2800, file: !271, line: 614, column: 17)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2807, line: 6, baseType: !2808)
!2807 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2809, line: 21, baseType: !2810)
!2809 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2809, line: 13, size: 64, elements: !2811)
!2811 = !{!2812, !2813}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2810, file: !2809, line: 15, baseType: !64, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2810, file: !2809, line: 20, baseType: !2814, size: 32, offset: 32)
!2814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2810, file: !2809, line: 16, size: 32, elements: !2815)
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2814, file: !2809, line: 18, baseType: !7, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2814, file: !2809, line: 19, baseType: !2818, size: 32)
!2818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, elements: !2819)
!2819 = !{!2820}
!2820 = !DISubrange(count: 4)
!2821 = !DILocalVariable(name: "w", scope: !2822, file: !271, line: 631, type: !2823)
!2822 = distinct !DILexicalBlock(scope: !2804, file: !271, line: 630, column: 19)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !63, line: 90, baseType: !64)
!2824 = !DILocalVariable(name: "bytes", scope: !2822, file: !271, line: 632, type: !62)
!2825 = !DILocalVariable(name: "j", scope: !2826, file: !271, line: 657, type: !62)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !271, line: 656, column: 27)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !271, line: 654, column: 29)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !271, line: 649, column: 23)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !271, line: 641, column: 30)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !271, line: 636, column: 30)
!2831 = distinct !DILexicalBlock(scope: !2822, file: !271, line: 634, column: 25)
!2832 = !DILocalVariable(name: "ilim", scope: !2833, file: !271, line: 684, type: !62)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !271, line: 681, column: 15)
!2834 = distinct !DILexicalBlock(scope: !2800, file: !271, line: 680, column: 17)
!2835 = !DILocation(line: 256, column: 33, scope: !2765)
!2836 = !DILocation(line: 256, column: 48, scope: !2765)
!2837 = !DILocation(line: 257, column: 39, scope: !2765)
!2838 = !DILocation(line: 257, column: 51, scope: !2765)
!2839 = !DILocation(line: 258, column: 46, scope: !2765)
!2840 = !DILocation(line: 258, column: 65, scope: !2765)
!2841 = !DILocation(line: 259, column: 47, scope: !2765)
!2842 = !DILocation(line: 260, column: 39, scope: !2765)
!2843 = !DILocation(line: 261, column: 39, scope: !2765)
!2844 = !DILocation(line: 264, column: 10, scope: !2765)
!2845 = !DILocation(line: 265, column: 10, scope: !2765)
!2846 = !DILocation(line: 266, column: 15, scope: !2765)
!2847 = !DILocation(line: 267, column: 10, scope: !2765)
!2848 = !DILocation(line: 268, column: 8, scope: !2765)
!2849 = !DILocation(line: 269, column: 25, scope: !2765)
!2850 = !DILocation(line: 269, column: 36, scope: !2765)
!2851 = !DILocation(line: 270, column: 8, scope: !2765)
!2852 = !DILocation(line: 271, column: 8, scope: !2765)
!2853 = !DILocation(line: 272, column: 8, scope: !2765)
!2854 = !DILocation(line: 273, column: 8, scope: !2765)
!2855 = !DILocation(line: 273, column: 3, scope: !2765)
!2856 = !DILocation(line: 0, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2765, file: !271, line: 317, column: 5)
!2858 = !DILocation(line: 316, column: 3, scope: !2765)
!2859 = !DILocation(line: 323, column: 11, scope: !2857)
!2860 = !DILocation(line: 323, column: 12, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2857, file: !271, line: 323, column: 11)
!2862 = !DILocation(line: 324, column: 9, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !271, line: 324, column: 9)
!2864 = distinct !DILexicalBlock(scope: !2861, file: !271, line: 324, column: 9)
!2865 = !DILocation(line: 324, column: 9, scope: !2864)
!2866 = !DILocation(line: 362, column: 26, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !271, line: 340, column: 11)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !271, line: 339, column: 13)
!2869 = distinct !DILexicalBlock(scope: !2857, file: !271, line: 338, column: 7)
!2870 = !DILocation(line: 363, column: 27, scope: !2867)
!2871 = !DILocation(line: 364, column: 11, scope: !2867)
!2872 = !DILocation(line: 365, column: 14, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2869, file: !271, line: 365, column: 13)
!2874 = !DILocation(line: 365, column: 13, scope: !2869)
!2875 = !DILocation(line: 366, column: 43, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !271, line: 366, column: 11)
!2877 = distinct !DILexicalBlock(scope: !2873, file: !271, line: 366, column: 11)
!2878 = !DILocation(line: 366, column: 11, scope: !2877)
!2879 = !DILocation(line: 367, column: 13, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !271, line: 367, column: 13)
!2881 = distinct !DILexicalBlock(scope: !2876, file: !271, line: 367, column: 13)
!2882 = !DILocation(line: 367, column: 13, scope: !2881)
!2883 = !DILocation(line: 366, column: 70, scope: !2876)
!2884 = distinct !{!2884, !2878, !2885}
!2885 = !DILocation(line: 367, column: 13, scope: !2877)
!2886 = !DILocation(line: 370, column: 28, scope: !2869)
!2887 = !DILocation(line: 372, column: 7, scope: !2857)
!2888 = !DILocation(line: 376, column: 7, scope: !2857)
!2889 = !DILocation(line: 379, column: 7, scope: !2857)
!2890 = !DILocation(line: 381, column: 12, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2857, file: !271, line: 381, column: 11)
!2892 = !DILocation(line: 381, column: 11, scope: !2857)
!2893 = !DILocation(line: 0, scope: !2891)
!2894 = !DILocation(line: 386, column: 12, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2857, file: !271, line: 386, column: 11)
!2896 = !DILocation(line: 386, column: 11, scope: !2857)
!2897 = !DILocation(line: 387, column: 9, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !271, line: 387, column: 9)
!2899 = distinct !DILexicalBlock(scope: !2895, file: !271, line: 387, column: 9)
!2900 = !DILocation(line: 387, column: 9, scope: !2899)
!2901 = !DILocation(line: 394, column: 7, scope: !2857)
!2902 = !DILocation(line: 397, column: 7, scope: !2857)
!2903 = !DILocation(line: 0, scope: !2765)
!2904 = !DILocation(line: 263, column: 10, scope: !2765)
!2905 = !DILocation(line: 400, column: 8, scope: !2794)
!2906 = !DILocation(line: 0, scope: !2793)
!2907 = !DILocation(line: 400, column: 27, scope: !2793)
!2908 = !DILocation(line: 400, column: 19, scope: !2793)
!2909 = !DILocation(line: 400, column: 41, scope: !2793)
!2910 = !DILocation(line: 400, column: 48, scope: !2793)
!2911 = !DILocation(line: 400, column: 3, scope: !2794)
!2912 = !DILocation(line: 400, column: 60, scope: !2793)
!2913 = !DILocation(line: 404, column: 12, scope: !2792)
!2914 = !DILocation(line: 405, column: 12, scope: !2792)
!2915 = !DILocation(line: 406, column: 12, scope: !2792)
!2916 = !DILocation(line: 409, column: 11, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2792, file: !271, line: 408, column: 11)
!2918 = !DILocation(line: 411, column: 17, scope: !2917)
!2919 = !DILocation(line: 412, column: 39, scope: !2917)
!2920 = !DILocation(line: 416, column: 32, scope: !2917)
!2921 = !DILocation(line: 412, column: 19, scope: !2917)
!2922 = !DILocation(line: 412, column: 15, scope: !2917)
!2923 = !DILocation(line: 417, column: 11, scope: !2917)
!2924 = !DILocation(line: 417, column: 26, scope: !2917)
!2925 = !DILocation(line: 417, column: 14, scope: !2917)
!2926 = !DILocation(line: 417, column: 63, scope: !2917)
!2927 = !DILocation(line: 408, column: 11, scope: !2792)
!2928 = !DILocation(line: 0, scope: !2792)
!2929 = !DILocation(line: 424, column: 11, scope: !2792)
!2930 = !DILocation(line: 402, column: 21, scope: !2792)
!2931 = !DILocation(line: 425, column: 7, scope: !2792)
!2932 = !DILocation(line: 428, column: 15, scope: !2801)
!2933 = !DILocation(line: 430, column: 15, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !271, line: 430, column: 15)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !271, line: 429, column: 13)
!2936 = distinct !DILexicalBlock(scope: !2801, file: !271, line: 428, column: 15)
!2937 = !DILocation(line: 430, column: 15, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2934, file: !271, line: 430, column: 15)
!2939 = !DILocation(line: 430, column: 15, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !271, line: 430, column: 15)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !271, line: 430, column: 15)
!2942 = distinct !DILexicalBlock(scope: !2938, file: !271, line: 430, column: 15)
!2943 = !DILocation(line: 430, column: 15, scope: !2941)
!2944 = !DILocation(line: 430, column: 15, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !271, line: 430, column: 15)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !271, line: 430, column: 15)
!2947 = !DILocation(line: 430, column: 15, scope: !2946)
!2948 = !DILocation(line: 430, column: 15, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !271, line: 430, column: 15)
!2950 = distinct !DILexicalBlock(scope: !2942, file: !271, line: 430, column: 15)
!2951 = !DILocation(line: 430, column: 15, scope: !2950)
!2952 = !DILocation(line: 430, column: 15, scope: !2942)
!2953 = !DILocation(line: 430, column: 15, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !271, line: 430, column: 15)
!2955 = distinct !DILexicalBlock(scope: !2934, file: !271, line: 430, column: 15)
!2956 = !DILocation(line: 430, column: 15, scope: !2955)
!2957 = !DILocation(line: 438, column: 19, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2935, file: !271, line: 437, column: 19)
!2959 = !DILocation(line: 438, column: 24, scope: !2958)
!2960 = !DILocation(line: 438, column: 28, scope: !2958)
!2961 = !DILocation(line: 438, column: 38, scope: !2958)
!2962 = !DILocation(line: 438, column: 48, scope: !2958)
!2963 = !DILocation(line: 438, column: 59, scope: !2958)
!2964 = !DILocation(line: 440, column: 19, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !271, line: 440, column: 19)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !271, line: 440, column: 19)
!2967 = distinct !DILexicalBlock(scope: !2958, file: !271, line: 439, column: 17)
!2968 = !DILocation(line: 440, column: 19, scope: !2966)
!2969 = !DILocation(line: 441, column: 19, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !271, line: 441, column: 19)
!2971 = distinct !DILexicalBlock(scope: !2967, file: !271, line: 441, column: 19)
!2972 = !DILocation(line: 441, column: 19, scope: !2971)
!2973 = !DILocation(line: 442, column: 17, scope: !2967)
!2974 = !DILocation(line: 449, column: 20, scope: !2936)
!2975 = !DILocation(line: 454, column: 11, scope: !2801)
!2976 = !DILocation(line: 457, column: 19, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2801, file: !271, line: 455, column: 13)
!2978 = !DILocation(line: 463, column: 19, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2977, file: !271, line: 462, column: 19)
!2980 = !DILocation(line: 463, column: 24, scope: !2979)
!2981 = !DILocation(line: 463, column: 28, scope: !2979)
!2982 = !DILocation(line: 463, column: 38, scope: !2979)
!2983 = !DILocation(line: 463, column: 47, scope: !2979)
!2984 = !DILocation(line: 463, column: 41, scope: !2979)
!2985 = !DILocation(line: 463, column: 52, scope: !2979)
!2986 = !DILocation(line: 462, column: 19, scope: !2977)
!2987 = !DILocation(line: 464, column: 25, scope: !2979)
!2988 = !DILocation(line: 464, column: 17, scope: !2979)
!2989 = !DILocation(line: 471, column: 25, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2979, file: !271, line: 465, column: 19)
!2991 = !DILocation(line: 475, column: 21, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !271, line: 475, column: 21)
!2993 = distinct !DILexicalBlock(scope: !2990, file: !271, line: 475, column: 21)
!2994 = !DILocation(line: 475, column: 21, scope: !2993)
!2995 = !DILocation(line: 476, column: 21, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !271, line: 476, column: 21)
!2997 = distinct !DILexicalBlock(scope: !2990, file: !271, line: 476, column: 21)
!2998 = !DILocation(line: 476, column: 21, scope: !2997)
!2999 = !DILocation(line: 477, column: 21, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !271, line: 477, column: 21)
!3001 = distinct !DILexicalBlock(scope: !2990, file: !271, line: 477, column: 21)
!3002 = !DILocation(line: 477, column: 21, scope: !3001)
!3003 = !DILocation(line: 478, column: 21, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !271, line: 478, column: 21)
!3005 = distinct !DILexicalBlock(scope: !2990, file: !271, line: 478, column: 21)
!3006 = !DILocation(line: 478, column: 21, scope: !3005)
!3007 = !DILocation(line: 479, column: 21, scope: !2990)
!3008 = !DILocation(line: 403, column: 21, scope: !2792)
!3009 = !DILocation(line: 492, column: 31, scope: !2801)
!3010 = !DILocation(line: 493, column: 31, scope: !2801)
!3011 = !DILocation(line: 495, column: 31, scope: !2801)
!3012 = !DILocation(line: 496, column: 31, scope: !2801)
!3013 = !DILocation(line: 497, column: 31, scope: !2801)
!3014 = !DILocation(line: 500, column: 15, scope: !2801)
!3015 = !DILocation(line: 502, column: 19, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !271, line: 501, column: 13)
!3017 = distinct !DILexicalBlock(scope: !2801, file: !271, line: 500, column: 15)
!3018 = !DILocation(line: 509, column: 33, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2801, file: !271, line: 509, column: 15)
!3020 = !DILocation(line: 0, scope: !2801)
!3021 = !DILocation(line: 514, column: 15, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2801, file: !271, line: 513, column: 15)
!3023 = !DILocation(line: 518, column: 15, scope: !2801)
!3024 = !DILocation(line: 526, column: 26, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2801, file: !271, line: 526, column: 15)
!3026 = !DILocation(line: 526, column: 15, scope: !2801)
!3027 = !DILocation(line: 526, column: 40, scope: !3025)
!3028 = !DILocation(line: 526, column: 47, scope: !3025)
!3029 = !DILocation(line: 530, column: 17, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2801, file: !271, line: 530, column: 15)
!3031 = !DILocation(line: 526, column: 18, scope: !3025)
!3032 = !DILocation(line: 526, column: 65, scope: !3025)
!3033 = !DILocation(line: 530, column: 15, scope: !2801)
!3034 = !DILocation(line: 535, column: 11, scope: !2801)
!3035 = !DILocation(line: 549, column: 15, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2801, file: !271, line: 548, column: 15)
!3037 = !DILocation(line: 556, column: 15, scope: !2801)
!3038 = !DILocation(line: 558, column: 19, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !271, line: 557, column: 13)
!3040 = distinct !DILexicalBlock(scope: !2801, file: !271, line: 556, column: 15)
!3041 = !DILocation(line: 561, column: 19, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3039, file: !271, line: 561, column: 19)
!3043 = !DILocation(line: 561, column: 35, scope: !3042)
!3044 = !DILocation(line: 561, column: 30, scope: !3042)
!3045 = !DILocation(line: 570, column: 15, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !271, line: 570, column: 15)
!3047 = distinct !DILexicalBlock(scope: !3039, file: !271, line: 570, column: 15)
!3048 = !DILocation(line: 570, column: 15, scope: !3047)
!3049 = !DILocation(line: 571, column: 15, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !271, line: 571, column: 15)
!3051 = distinct !DILexicalBlock(scope: !3039, file: !271, line: 571, column: 15)
!3052 = !DILocation(line: 571, column: 15, scope: !3051)
!3053 = !DILocation(line: 572, column: 15, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !271, line: 572, column: 15)
!3055 = distinct !DILexicalBlock(scope: !3039, file: !271, line: 572, column: 15)
!3056 = !DILocation(line: 572, column: 15, scope: !3055)
!3057 = !DILocation(line: 574, column: 13, scope: !3039)
!3058 = !DILocation(line: 614, column: 17, scope: !2800)
!3059 = !DILocation(line: 610, column: 20, scope: !2800)
!3060 = !DILocation(line: 617, column: 29, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !2805, file: !271, line: 615, column: 15)
!3062 = !DILocation(line: 617, column: 27, scope: !3061)
!3063 = !DILocation(line: 612, column: 18, scope: !2800)
!3064 = !DILocation(line: 618, column: 15, scope: !3061)
!3065 = !DILocation(line: 621, column: 17, scope: !2804)
!3066 = !DILocation(line: 622, column: 17, scope: !2804)
!3067 = !DILocation(line: 626, column: 29, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !2804, file: !271, line: 626, column: 21)
!3069 = !DILocation(line: 626, column: 21, scope: !2804)
!3070 = !DILocation(line: 627, column: 29, scope: !3068)
!3071 = !DILocation(line: 627, column: 19, scope: !3068)
!3072 = !DILocation(line: 0, scope: !2917)
!3073 = !DILocation(line: 629, column: 17, scope: !2804)
!3074 = !DILocation(line: 624, column: 19, scope: !2804)
!3075 = !DILocation(line: 625, column: 27, scope: !2804)
!3076 = !DILocation(line: 631, column: 21, scope: !2822)
!3077 = !DILocation(line: 632, column: 56, scope: !2822)
!3078 = !DILocation(line: 632, column: 50, scope: !2822)
!3079 = !DILocation(line: 633, column: 53, scope: !2822)
!3080 = !DILocation(line: 621, column: 27, scope: !2804)
!3081 = !DILocation(line: 631, column: 29, scope: !2822)
!3082 = !DILocation(line: 632, column: 36, scope: !2822)
!3083 = !DILocation(line: 632, column: 28, scope: !2822)
!3084 = !DILocation(line: 634, column: 25, scope: !2822)
!3085 = !DILocation(line: 644, column: 38, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !2829, file: !271, line: 642, column: 23)
!3087 = !DILocation(line: 644, column: 48, scope: !3086)
!3088 = !DILocation(line: 644, column: 51, scope: !3086)
!3089 = !DILocation(line: 644, column: 25, scope: !3086)
!3090 = !DILocation(line: 645, column: 28, scope: !3086)
!3091 = !DILocation(line: 644, column: 34, scope: !3086)
!3092 = distinct !{!3092, !3089, !3090}
!3093 = !DILocation(line: 658, column: 43, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !271, line: 658, column: 29)
!3095 = distinct !DILexicalBlock(scope: !2826, file: !271, line: 658, column: 29)
!3096 = !DILocation(line: 655, column: 29, scope: !2827)
!3097 = !DILocation(line: 657, column: 36, scope: !2826)
!3098 = !DILocation(line: 659, column: 49, scope: !3094)
!3099 = !DILocation(line: 659, column: 39, scope: !3094)
!3100 = !DILocation(line: 659, column: 31, scope: !3094)
!3101 = !DILocation(line: 658, column: 53, scope: !3094)
!3102 = !DILocation(line: 658, column: 29, scope: !3095)
!3103 = distinct !{!3103, !3102, !3104}
!3104 = !DILocation(line: 667, column: 33, scope: !3095)
!3105 = !DILocation(line: 674, column: 19, scope: !2804)
!3106 = !DILocation(line: 670, column: 41, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2828, file: !271, line: 670, column: 29)
!3108 = !DILocation(line: 670, column: 31, scope: !3107)
!3109 = !DILocation(line: 670, column: 29, scope: !2828)
!3110 = !DILocation(line: 672, column: 27, scope: !2828)
!3111 = !DILocation(line: 675, column: 26, scope: !2804)
!3112 = !DILocation(line: 675, column: 24, scope: !2804)
!3113 = !DILocation(line: 674, column: 19, scope: !2822)
!3114 = distinct !{!3114, !3073, !3115}
!3115 = !DILocation(line: 675, column: 44, scope: !2804)
!3116 = !DILocation(line: 676, column: 15, scope: !2805)
!3117 = !DILocation(line: 0, scope: !3068)
!3118 = !DILocation(line: 0, scope: !2804)
!3119 = !DILocation(line: 678, column: 40, scope: !2800)
!3120 = !DILocation(line: 680, column: 19, scope: !2834)
!3121 = !DILocation(line: 680, column: 45, scope: !2834)
!3122 = !DILocation(line: 680, column: 23, scope: !2834)
!3123 = !DILocation(line: 684, column: 33, scope: !2833)
!3124 = !DILocation(line: 684, column: 24, scope: !2833)
!3125 = !DILocation(line: 686, column: 17, scope: !2833)
!3126 = !DILocation(line: 0, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !271, line: 687, column: 19)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !271, line: 686, column: 17)
!3129 = distinct !DILexicalBlock(scope: !2833, file: !271, line: 686, column: 17)
!3130 = !DILocation(line: 0, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3127, file: !271, line: 703, column: 21)
!3132 = !DILocation(line: 0, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !271, line: 696, column: 23)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !271, line: 695, column: 30)
!3135 = distinct !DILexicalBlock(scope: !3127, file: !271, line: 688, column: 25)
!3136 = !DILocation(line: 688, column: 43, scope: !3135)
!3137 = !DILocation(line: 690, column: 25, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !271, line: 690, column: 25)
!3139 = distinct !DILexicalBlock(scope: !3135, file: !271, line: 689, column: 23)
!3140 = !DILocation(line: 690, column: 25, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3138, file: !271, line: 690, column: 25)
!3142 = !DILocation(line: 690, column: 25, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !271, line: 690, column: 25)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !271, line: 690, column: 25)
!3145 = distinct !DILexicalBlock(scope: !3141, file: !271, line: 690, column: 25)
!3146 = !DILocation(line: 690, column: 25, scope: !3144)
!3147 = !DILocation(line: 690, column: 25, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !271, line: 690, column: 25)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !271, line: 690, column: 25)
!3150 = !DILocation(line: 690, column: 25, scope: !3149)
!3151 = !DILocation(line: 690, column: 25, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !271, line: 690, column: 25)
!3153 = distinct !DILexicalBlock(scope: !3145, file: !271, line: 690, column: 25)
!3154 = !DILocation(line: 690, column: 25, scope: !3153)
!3155 = !DILocation(line: 690, column: 25, scope: !3145)
!3156 = !DILocation(line: 690, column: 25, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !271, line: 690, column: 25)
!3158 = distinct !DILexicalBlock(scope: !3138, file: !271, line: 690, column: 25)
!3159 = !DILocation(line: 690, column: 25, scope: !3158)
!3160 = !DILocation(line: 691, column: 25, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !271, line: 691, column: 25)
!3162 = distinct !DILexicalBlock(scope: !3139, file: !271, line: 691, column: 25)
!3163 = !DILocation(line: 691, column: 25, scope: !3162)
!3164 = !DILocation(line: 692, column: 25, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !271, line: 692, column: 25)
!3166 = distinct !DILexicalBlock(scope: !3139, file: !271, line: 692, column: 25)
!3167 = !DILocation(line: 692, column: 25, scope: !3166)
!3168 = !DILocation(line: 693, column: 38, scope: !3139)
!3169 = !DILocation(line: 693, column: 33, scope: !3139)
!3170 = !DILocation(line: 694, column: 23, scope: !3139)
!3171 = !DILocation(line: 695, column: 30, scope: !3134)
!3172 = !DILocation(line: 695, column: 30, scope: !3135)
!3173 = !DILocation(line: 697, column: 25, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !271, line: 697, column: 25)
!3175 = distinct !DILexicalBlock(scope: !3133, file: !271, line: 697, column: 25)
!3176 = !DILocation(line: 697, column: 25, scope: !3175)
!3177 = !DILocation(line: 699, column: 23, scope: !3133)
!3178 = !DILocation(line: 0, scope: !3166)
!3179 = !DILocation(line: 0, scope: !3139)
!3180 = !DILocation(line: 0, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !2917, file: !271, line: 418, column: 9)
!3182 = !DILocation(line: 0, scope: !3138)
!3183 = !DILocation(line: 700, column: 35, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3127, file: !271, line: 700, column: 25)
!3185 = !DILocation(line: 700, column: 30, scope: !3184)
!3186 = !DILocation(line: 700, column: 25, scope: !3127)
!3187 = !DILocation(line: 702, column: 21, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !271, line: 702, column: 21)
!3189 = distinct !DILexicalBlock(scope: !3127, file: !271, line: 702, column: 21)
!3190 = !DILocation(line: 702, column: 21, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !271, line: 702, column: 21)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !271, line: 702, column: 21)
!3193 = distinct !DILexicalBlock(scope: !3188, file: !271, line: 702, column: 21)
!3194 = !DILocation(line: 702, column: 21, scope: !3192)
!3195 = !DILocation(line: 702, column: 21, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !271, line: 702, column: 21)
!3197 = distinct !DILexicalBlock(scope: !3193, file: !271, line: 702, column: 21)
!3198 = !DILocation(line: 702, column: 21, scope: !3197)
!3199 = !DILocation(line: 702, column: 21, scope: !3193)
!3200 = !DILocation(line: 0, scope: !3175)
!3201 = !DILocation(line: 703, column: 21, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3131, file: !271, line: 703, column: 21)
!3203 = !DILocation(line: 703, column: 21, scope: !3131)
!3204 = !DILocation(line: 704, column: 25, scope: !3127)
!3205 = !DILocation(line: 686, column: 17, scope: !3128)
!3206 = distinct !{!3206, !3207, !3208}
!3207 = !DILocation(line: 686, column: 17, scope: !3129)
!3208 = !DILocation(line: 705, column: 19, scope: !3129)
!3209 = !DILocation(line: 0, scope: !2794)
!3210 = !DILocation(line: 416, column: 30, scope: !2917)
!3211 = !DILocation(line: 712, column: 34, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !2792, file: !271, line: 712, column: 11)
!3213 = !DILocation(line: 714, column: 14, scope: !3212)
!3214 = !DILocation(line: 715, column: 14, scope: !3212)
!3215 = !DILocation(line: 715, column: 35, scope: !3212)
!3216 = !DILocation(line: 715, column: 17, scope: !3212)
!3217 = !DILocation(line: 715, column: 47, scope: !3212)
!3218 = !DILocation(line: 715, column: 65, scope: !3212)
!3219 = !DILocation(line: 716, column: 15, scope: !3212)
!3220 = !DILocation(line: 716, column: 11, scope: !3212)
!3221 = !DILocation(line: 712, column: 11, scope: !2792)
!3222 = !DILocation(line: 400, column: 10, scope: !2794)
!3223 = !DILocation(line: 0, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !271, line: 519, column: 13)
!3225 = distinct !DILexicalBlock(scope: !2801, file: !271, line: 518, column: 15)
!3226 = !DILocation(line: 720, column: 7, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !2792, file: !271, line: 720, column: 7)
!3228 = !DILocation(line: 720, column: 7, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3227, file: !271, line: 720, column: 7)
!3230 = !DILocation(line: 720, column: 7, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !271, line: 720, column: 7)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !271, line: 720, column: 7)
!3233 = distinct !DILexicalBlock(scope: !3229, file: !271, line: 720, column: 7)
!3234 = !DILocation(line: 720, column: 7, scope: !3232)
!3235 = !DILocation(line: 720, column: 7, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !271, line: 720, column: 7)
!3237 = distinct !DILexicalBlock(scope: !3233, file: !271, line: 720, column: 7)
!3238 = !DILocation(line: 720, column: 7, scope: !3237)
!3239 = !DILocation(line: 720, column: 7, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !271, line: 720, column: 7)
!3241 = distinct !DILexicalBlock(scope: !3233, file: !271, line: 720, column: 7)
!3242 = !DILocation(line: 720, column: 7, scope: !3241)
!3243 = !DILocation(line: 720, column: 7, scope: !3233)
!3244 = !DILocation(line: 720, column: 7, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !271, line: 720, column: 7)
!3246 = distinct !DILexicalBlock(scope: !3227, file: !271, line: 720, column: 7)
!3247 = !DILocation(line: 720, column: 7, scope: !3246)
!3248 = !DILocation(line: 723, column: 7, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !271, line: 723, column: 7)
!3250 = distinct !DILexicalBlock(scope: !2792, file: !271, line: 723, column: 7)
!3251 = !DILocation(line: 424, column: 9, scope: !2792)
!3252 = !DILocation(line: 723, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !271, line: 723, column: 7)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !271, line: 723, column: 7)
!3255 = distinct !DILexicalBlock(scope: !3249, file: !271, line: 723, column: 7)
!3256 = !DILocation(line: 723, column: 7, scope: !3254)
!3257 = !DILocation(line: 723, column: 7, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !271, line: 723, column: 7)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !271, line: 723, column: 7)
!3260 = !DILocation(line: 723, column: 7, scope: !3259)
!3261 = !DILocation(line: 723, column: 7, scope: !3255)
!3262 = !DILocation(line: 724, column: 7, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !271, line: 724, column: 7)
!3264 = distinct !DILexicalBlock(scope: !2792, file: !271, line: 724, column: 7)
!3265 = !DILocation(line: 724, column: 7, scope: !3264)
!3266 = !DILocation(line: 726, column: 13, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !2792, file: !271, line: 726, column: 11)
!3268 = !DILocation(line: 726, column: 11, scope: !2792)
!3269 = !DILocation(line: 728, column: 5, scope: !2793)
!3270 = !DILocation(line: 400, column: 75, scope: !2793)
!3271 = !DILocation(line: 400, column: 3, scope: !2793)
!3272 = distinct !{!3272, !2911, !3273}
!3273 = !DILocation(line: 728, column: 5, scope: !2794)
!3274 = !DILocation(line: 730, column: 11, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !2765, file: !271, line: 730, column: 7)
!3276 = !DILocation(line: 730, column: 16, scope: !3275)
!3277 = !DILocation(line: 738, column: 51, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !2765, file: !271, line: 738, column: 7)
!3279 = !DILocation(line: 739, column: 10, scope: !3278)
!3280 = !DILocation(line: 741, column: 11, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !271, line: 741, column: 11)
!3282 = distinct !DILexicalBlock(scope: !3278, file: !271, line: 740, column: 5)
!3283 = !DILocation(line: 741, column: 11, scope: !3282)
!3284 = !DILocation(line: 742, column: 16, scope: !3281)
!3285 = !DILocation(line: 742, column: 9, scope: !3281)
!3286 = !DILocation(line: 746, column: 18, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3281, file: !271, line: 746, column: 16)
!3288 = !DILocation(line: 746, column: 32, scope: !3287)
!3289 = !DILocation(line: 746, column: 29, scope: !3287)
!3290 = !DILocation(line: 755, column: 7, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !2765, file: !271, line: 755, column: 7)
!3292 = !DILocation(line: 755, column: 20, scope: !3291)
!3293 = !DILocation(line: 756, column: 12, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !271, line: 756, column: 5)
!3295 = distinct !DILexicalBlock(scope: !3291, file: !271, line: 756, column: 5)
!3296 = !DILocation(line: 756, column: 5, scope: !3295)
!3297 = !DILocation(line: 757, column: 7, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !271, line: 757, column: 7)
!3299 = distinct !DILexicalBlock(scope: !3294, file: !271, line: 757, column: 7)
!3300 = !DILocation(line: 757, column: 7, scope: !3299)
!3301 = !DILocation(line: 756, column: 39, scope: !3294)
!3302 = distinct !{!3302, !3296, !3303}
!3303 = !DILocation(line: 757, column: 7, scope: !3295)
!3304 = !DILocation(line: 759, column: 11, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !2765, file: !271, line: 759, column: 7)
!3306 = !DILocation(line: 759, column: 7, scope: !2765)
!3307 = !DILocation(line: 760, column: 5, scope: !3305)
!3308 = !DILocation(line: 760, column: 17, scope: !3305)
!3309 = !DILocation(line: 766, column: 21, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !2765, file: !271, line: 766, column: 7)
!3311 = !DILocation(line: 766, column: 54, scope: !3310)
!3312 = !DILocation(line: 766, column: 51, scope: !3310)
!3313 = !DILocation(line: 770, column: 42, scope: !2765)
!3314 = !DILocation(line: 768, column: 10, scope: !2765)
!3315 = !DILocation(line: 768, column: 3, scope: !2765)
!3316 = !DILocation(line: 772, column: 1, scope: !2765)
!3317 = distinct !DISubprogram(name: "gettext_quote", scope: !271, file: !271, line: 207, type: !3318, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!93, !93, !5}
!3320 = !{!3321, !3322, !3323, !3324}
!3321 = !DILocalVariable(name: "msgid", arg: 1, scope: !3317, file: !271, line: 207, type: !93)
!3322 = !DILocalVariable(name: "s", arg: 2, scope: !3317, file: !271, line: 207, type: !5)
!3323 = !DILocalVariable(name: "translation", scope: !3317, file: !271, line: 209, type: !93)
!3324 = !DILocalVariable(name: "locale_code", scope: !3317, file: !271, line: 210, type: !93)
!3325 = !DILocation(line: 207, column: 28, scope: !3317)
!3326 = !DILocation(line: 207, column: 54, scope: !3317)
!3327 = !DILocation(line: 209, column: 29, scope: !3317)
!3328 = !DILocation(line: 209, column: 15, scope: !3317)
!3329 = !DILocation(line: 212, column: 19, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3317, file: !271, line: 212, column: 7)
!3331 = !DILocation(line: 212, column: 7, scope: !3317)
!3332 = !DILocation(line: 233, column: 17, scope: !3317)
!3333 = !DILocation(line: 210, column: 15, scope: !3317)
!3334 = !DILocalVariable(name: "s1", arg: 1, scope: !3335, file: !3336, line: 160, type: !93)
!3335 = distinct !DISubprogram(name: "strcaseeq0", scope: !3336, file: !3336, line: 160, type: !3337, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3339)
!3336 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60, !60, !60, !60}
!3339 = !{!3334, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349}
!3340 = !DILocalVariable(name: "s2", arg: 2, scope: !3335, file: !3336, line: 160, type: !93)
!3341 = !DILocalVariable(name: "s20", arg: 3, scope: !3335, file: !3336, line: 160, type: !60)
!3342 = !DILocalVariable(name: "s21", arg: 4, scope: !3335, file: !3336, line: 160, type: !60)
!3343 = !DILocalVariable(name: "s22", arg: 5, scope: !3335, file: !3336, line: 160, type: !60)
!3344 = !DILocalVariable(name: "s23", arg: 6, scope: !3335, file: !3336, line: 160, type: !60)
!3345 = !DILocalVariable(name: "s24", arg: 7, scope: !3335, file: !3336, line: 160, type: !60)
!3346 = !DILocalVariable(name: "s25", arg: 8, scope: !3335, file: !3336, line: 160, type: !60)
!3347 = !DILocalVariable(name: "s26", arg: 9, scope: !3335, file: !3336, line: 160, type: !60)
!3348 = !DILocalVariable(name: "s27", arg: 10, scope: !3335, file: !3336, line: 160, type: !60)
!3349 = !DILocalVariable(name: "s28", arg: 11, scope: !3335, file: !3336, line: 160, type: !60)
!3350 = !DILocation(line: 160, column: 25, scope: !3335, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 234, column: 7, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3317, file: !271, line: 234, column: 7)
!3353 = !DILocation(line: 160, column: 41, scope: !3335, inlinedAt: !3351)
!3354 = !DILocation(line: 160, column: 50, scope: !3335, inlinedAt: !3351)
!3355 = !DILocation(line: 160, column: 60, scope: !3335, inlinedAt: !3351)
!3356 = !DILocation(line: 160, column: 70, scope: !3335, inlinedAt: !3351)
!3357 = !DILocation(line: 160, column: 80, scope: !3335, inlinedAt: !3351)
!3358 = !DILocation(line: 160, column: 90, scope: !3335, inlinedAt: !3351)
!3359 = !DILocation(line: 160, column: 100, scope: !3335, inlinedAt: !3351)
!3360 = !DILocation(line: 160, column: 110, scope: !3335, inlinedAt: !3351)
!3361 = !DILocation(line: 160, column: 120, scope: !3335, inlinedAt: !3351)
!3362 = !DILocation(line: 160, column: 130, scope: !3335, inlinedAt: !3351)
!3363 = !DILocation(line: 162, column: 7, scope: !3364, inlinedAt: !3351)
!3364 = distinct !DILexicalBlock(scope: !3335, file: !3336, line: 162, column: 7)
!3365 = !DILocalVariable(name: "s1", arg: 1, scope: !3366, file: !3336, line: 146, type: !93)
!3366 = distinct !DISubprogram(name: "strcaseeq1", scope: !3336, file: !3336, line: 146, type: !3367, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60, !60, !60}
!3369 = !{!3365, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378}
!3370 = !DILocalVariable(name: "s2", arg: 2, scope: !3366, file: !3336, line: 146, type: !93)
!3371 = !DILocalVariable(name: "s21", arg: 3, scope: !3366, file: !3336, line: 146, type: !60)
!3372 = !DILocalVariable(name: "s22", arg: 4, scope: !3366, file: !3336, line: 146, type: !60)
!3373 = !DILocalVariable(name: "s23", arg: 5, scope: !3366, file: !3336, line: 146, type: !60)
!3374 = !DILocalVariable(name: "s24", arg: 6, scope: !3366, file: !3336, line: 146, type: !60)
!3375 = !DILocalVariable(name: "s25", arg: 7, scope: !3366, file: !3336, line: 146, type: !60)
!3376 = !DILocalVariable(name: "s26", arg: 8, scope: !3366, file: !3336, line: 146, type: !60)
!3377 = !DILocalVariable(name: "s27", arg: 9, scope: !3366, file: !3336, line: 146, type: !60)
!3378 = !DILocalVariable(name: "s28", arg: 10, scope: !3366, file: !3336, line: 146, type: !60)
!3379 = !DILocation(line: 146, column: 25, scope: !3366, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 167, column: 16, scope: !3381, inlinedAt: !3351)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !3336, line: 164, column: 11)
!3382 = distinct !DILexicalBlock(scope: !3364, file: !3336, line: 163, column: 5)
!3383 = !DILocation(line: 146, column: 41, scope: !3366, inlinedAt: !3380)
!3384 = !DILocation(line: 146, column: 50, scope: !3366, inlinedAt: !3380)
!3385 = !DILocation(line: 146, column: 60, scope: !3366, inlinedAt: !3380)
!3386 = !DILocation(line: 146, column: 70, scope: !3366, inlinedAt: !3380)
!3387 = !DILocation(line: 146, column: 80, scope: !3366, inlinedAt: !3380)
!3388 = !DILocation(line: 146, column: 90, scope: !3366, inlinedAt: !3380)
!3389 = !DILocation(line: 146, column: 100, scope: !3366, inlinedAt: !3380)
!3390 = !DILocation(line: 146, column: 110, scope: !3366, inlinedAt: !3380)
!3391 = !DILocation(line: 146, column: 120, scope: !3366, inlinedAt: !3380)
!3392 = !DILocation(line: 148, column: 7, scope: !3393, inlinedAt: !3380)
!3393 = distinct !DILexicalBlock(scope: !3366, file: !3336, line: 148, column: 7)
!3394 = !DILocalVariable(name: "s1", arg: 1, scope: !3395, file: !3336, line: 132, type: !93)
!3395 = distinct !DISubprogram(name: "strcaseeq2", scope: !3336, file: !3336, line: 132, type: !3396, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60, !60}
!3398 = !{!3394, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406}
!3399 = !DILocalVariable(name: "s2", arg: 2, scope: !3395, file: !3336, line: 132, type: !93)
!3400 = !DILocalVariable(name: "s22", arg: 3, scope: !3395, file: !3336, line: 132, type: !60)
!3401 = !DILocalVariable(name: "s23", arg: 4, scope: !3395, file: !3336, line: 132, type: !60)
!3402 = !DILocalVariable(name: "s24", arg: 5, scope: !3395, file: !3336, line: 132, type: !60)
!3403 = !DILocalVariable(name: "s25", arg: 6, scope: !3395, file: !3336, line: 132, type: !60)
!3404 = !DILocalVariable(name: "s26", arg: 7, scope: !3395, file: !3336, line: 132, type: !60)
!3405 = !DILocalVariable(name: "s27", arg: 8, scope: !3395, file: !3336, line: 132, type: !60)
!3406 = !DILocalVariable(name: "s28", arg: 9, scope: !3395, file: !3336, line: 132, type: !60)
!3407 = !DILocation(line: 132, column: 25, scope: !3395, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 153, column: 16, scope: !3409, inlinedAt: !3380)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !3336, line: 150, column: 11)
!3410 = distinct !DILexicalBlock(scope: !3393, file: !3336, line: 149, column: 5)
!3411 = !DILocation(line: 132, column: 41, scope: !3395, inlinedAt: !3408)
!3412 = !DILocation(line: 132, column: 50, scope: !3395, inlinedAt: !3408)
!3413 = !DILocation(line: 132, column: 60, scope: !3395, inlinedAt: !3408)
!3414 = !DILocation(line: 132, column: 70, scope: !3395, inlinedAt: !3408)
!3415 = !DILocation(line: 132, column: 80, scope: !3395, inlinedAt: !3408)
!3416 = !DILocation(line: 132, column: 90, scope: !3395, inlinedAt: !3408)
!3417 = !DILocation(line: 132, column: 100, scope: !3395, inlinedAt: !3408)
!3418 = !DILocation(line: 132, column: 110, scope: !3395, inlinedAt: !3408)
!3419 = !DILocation(line: 134, column: 7, scope: !3420, inlinedAt: !3408)
!3420 = distinct !DILexicalBlock(scope: !3395, file: !3336, line: 134, column: 7)
!3421 = !DILocalVariable(name: "s1", arg: 1, scope: !3422, file: !3336, line: 118, type: !93)
!3422 = distinct !DISubprogram(name: "strcaseeq3", scope: !3336, file: !3336, line: 118, type: !3423, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3425)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60}
!3425 = !{!3421, !3426, !3427, !3428, !3429, !3430, !3431, !3432}
!3426 = !DILocalVariable(name: "s2", arg: 2, scope: !3422, file: !3336, line: 118, type: !93)
!3427 = !DILocalVariable(name: "s23", arg: 3, scope: !3422, file: !3336, line: 118, type: !60)
!3428 = !DILocalVariable(name: "s24", arg: 4, scope: !3422, file: !3336, line: 118, type: !60)
!3429 = !DILocalVariable(name: "s25", arg: 5, scope: !3422, file: !3336, line: 118, type: !60)
!3430 = !DILocalVariable(name: "s26", arg: 6, scope: !3422, file: !3336, line: 118, type: !60)
!3431 = !DILocalVariable(name: "s27", arg: 7, scope: !3422, file: !3336, line: 118, type: !60)
!3432 = !DILocalVariable(name: "s28", arg: 8, scope: !3422, file: !3336, line: 118, type: !60)
!3433 = !DILocation(line: 118, column: 25, scope: !3422, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 139, column: 16, scope: !3435, inlinedAt: !3408)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !3336, line: 136, column: 11)
!3436 = distinct !DILexicalBlock(scope: !3420, file: !3336, line: 135, column: 5)
!3437 = !DILocation(line: 118, column: 41, scope: !3422, inlinedAt: !3434)
!3438 = !DILocation(line: 118, column: 50, scope: !3422, inlinedAt: !3434)
!3439 = !DILocation(line: 118, column: 60, scope: !3422, inlinedAt: !3434)
!3440 = !DILocation(line: 118, column: 70, scope: !3422, inlinedAt: !3434)
!3441 = !DILocation(line: 118, column: 80, scope: !3422, inlinedAt: !3434)
!3442 = !DILocation(line: 118, column: 90, scope: !3422, inlinedAt: !3434)
!3443 = !DILocation(line: 118, column: 100, scope: !3422, inlinedAt: !3434)
!3444 = !DILocation(line: 120, column: 7, scope: !3445, inlinedAt: !3434)
!3445 = distinct !DILexicalBlock(scope: !3422, file: !3336, line: 120, column: 7)
!3446 = !DILocation(line: 120, column: 7, scope: !3422, inlinedAt: !3434)
!3447 = !DILocalVariable(name: "s1", arg: 1, scope: !3448, file: !3336, line: 104, type: !93)
!3448 = distinct !DISubprogram(name: "strcaseeq4", scope: !3336, file: !3336, line: 104, type: !3449, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!64, !93, !93, !60, !60, !60, !60, !60}
!3451 = !{!3447, !3452, !3453, !3454, !3455, !3456, !3457}
!3452 = !DILocalVariable(name: "s2", arg: 2, scope: !3448, file: !3336, line: 104, type: !93)
!3453 = !DILocalVariable(name: "s24", arg: 3, scope: !3448, file: !3336, line: 104, type: !60)
!3454 = !DILocalVariable(name: "s25", arg: 4, scope: !3448, file: !3336, line: 104, type: !60)
!3455 = !DILocalVariable(name: "s26", arg: 5, scope: !3448, file: !3336, line: 104, type: !60)
!3456 = !DILocalVariable(name: "s27", arg: 6, scope: !3448, file: !3336, line: 104, type: !60)
!3457 = !DILocalVariable(name: "s28", arg: 7, scope: !3448, file: !3336, line: 104, type: !60)
!3458 = !DILocation(line: 104, column: 25, scope: !3448, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 125, column: 16, scope: !3460, inlinedAt: !3434)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !3336, line: 122, column: 11)
!3461 = distinct !DILexicalBlock(scope: !3445, file: !3336, line: 121, column: 5)
!3462 = !DILocation(line: 104, column: 41, scope: !3448, inlinedAt: !3459)
!3463 = !DILocation(line: 104, column: 50, scope: !3448, inlinedAt: !3459)
!3464 = !DILocation(line: 104, column: 60, scope: !3448, inlinedAt: !3459)
!3465 = !DILocation(line: 104, column: 70, scope: !3448, inlinedAt: !3459)
!3466 = !DILocation(line: 104, column: 80, scope: !3448, inlinedAt: !3459)
!3467 = !DILocation(line: 104, column: 90, scope: !3448, inlinedAt: !3459)
!3468 = !DILocation(line: 106, column: 7, scope: !3469, inlinedAt: !3459)
!3469 = distinct !DILexicalBlock(scope: !3448, file: !3336, line: 106, column: 7)
!3470 = !DILocation(line: 106, column: 7, scope: !3448, inlinedAt: !3459)
!3471 = !DILocalVariable(name: "s1", arg: 1, scope: !3472, file: !3336, line: 90, type: !93)
!3472 = distinct !DISubprogram(name: "strcaseeq5", scope: !3336, file: !3336, line: 90, type: !3473, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!64, !93, !93, !60, !60, !60, !60}
!3475 = !{!3471, !3476, !3477, !3478, !3479, !3480}
!3476 = !DILocalVariable(name: "s2", arg: 2, scope: !3472, file: !3336, line: 90, type: !93)
!3477 = !DILocalVariable(name: "s25", arg: 3, scope: !3472, file: !3336, line: 90, type: !60)
!3478 = !DILocalVariable(name: "s26", arg: 4, scope: !3472, file: !3336, line: 90, type: !60)
!3479 = !DILocalVariable(name: "s27", arg: 5, scope: !3472, file: !3336, line: 90, type: !60)
!3480 = !DILocalVariable(name: "s28", arg: 6, scope: !3472, file: !3336, line: 90, type: !60)
!3481 = !DILocation(line: 90, column: 25, scope: !3472, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 111, column: 16, scope: !3483, inlinedAt: !3459)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !3336, line: 108, column: 11)
!3484 = distinct !DILexicalBlock(scope: !3469, file: !3336, line: 107, column: 5)
!3485 = !DILocation(line: 90, column: 41, scope: !3472, inlinedAt: !3482)
!3486 = !DILocation(line: 90, column: 50, scope: !3472, inlinedAt: !3482)
!3487 = !DILocation(line: 90, column: 60, scope: !3472, inlinedAt: !3482)
!3488 = !DILocation(line: 90, column: 70, scope: !3472, inlinedAt: !3482)
!3489 = !DILocation(line: 90, column: 80, scope: !3472, inlinedAt: !3482)
!3490 = !DILocation(line: 92, column: 7, scope: !3491, inlinedAt: !3482)
!3491 = distinct !DILexicalBlock(scope: !3472, file: !3336, line: 92, column: 7)
!3492 = !DILocation(line: 92, column: 7, scope: !3472, inlinedAt: !3482)
!3493 = !DILocation(line: 235, column: 12, scope: !3352)
!3494 = !DILocation(line: 235, column: 21, scope: !3352)
!3495 = !DILocation(line: 235, column: 5, scope: !3352)
!3496 = !DILocation(line: 146, column: 25, scope: !3366, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 167, column: 16, scope: !3381, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 236, column: 7, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3317, file: !271, line: 236, column: 7)
!3500 = !DILocation(line: 146, column: 41, scope: !3366, inlinedAt: !3497)
!3501 = !DILocation(line: 146, column: 50, scope: !3366, inlinedAt: !3497)
!3502 = !DILocation(line: 146, column: 60, scope: !3366, inlinedAt: !3497)
!3503 = !DILocation(line: 146, column: 70, scope: !3366, inlinedAt: !3497)
!3504 = !DILocation(line: 146, column: 80, scope: !3366, inlinedAt: !3497)
!3505 = !DILocation(line: 146, column: 90, scope: !3366, inlinedAt: !3497)
!3506 = !DILocation(line: 146, column: 100, scope: !3366, inlinedAt: !3497)
!3507 = !DILocation(line: 146, column: 110, scope: !3366, inlinedAt: !3497)
!3508 = !DILocation(line: 146, column: 120, scope: !3366, inlinedAt: !3497)
!3509 = !DILocation(line: 148, column: 7, scope: !3393, inlinedAt: !3497)
!3510 = !DILocation(line: 132, column: 25, scope: !3395, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 153, column: 16, scope: !3409, inlinedAt: !3497)
!3512 = !DILocation(line: 132, column: 41, scope: !3395, inlinedAt: !3511)
!3513 = !DILocation(line: 132, column: 50, scope: !3395, inlinedAt: !3511)
!3514 = !DILocation(line: 132, column: 60, scope: !3395, inlinedAt: !3511)
!3515 = !DILocation(line: 132, column: 70, scope: !3395, inlinedAt: !3511)
!3516 = !DILocation(line: 132, column: 80, scope: !3395, inlinedAt: !3511)
!3517 = !DILocation(line: 132, column: 90, scope: !3395, inlinedAt: !3511)
!3518 = !DILocation(line: 132, column: 100, scope: !3395, inlinedAt: !3511)
!3519 = !DILocation(line: 132, column: 110, scope: !3395, inlinedAt: !3511)
!3520 = !DILocation(line: 134, column: 7, scope: !3420, inlinedAt: !3511)
!3521 = !DILocation(line: 134, column: 7, scope: !3395, inlinedAt: !3511)
!3522 = !DILocation(line: 118, column: 25, scope: !3422, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 139, column: 16, scope: !3435, inlinedAt: !3511)
!3524 = !DILocation(line: 118, column: 41, scope: !3422, inlinedAt: !3523)
!3525 = !DILocation(line: 118, column: 50, scope: !3422, inlinedAt: !3523)
!3526 = !DILocation(line: 118, column: 60, scope: !3422, inlinedAt: !3523)
!3527 = !DILocation(line: 118, column: 70, scope: !3422, inlinedAt: !3523)
!3528 = !DILocation(line: 118, column: 80, scope: !3422, inlinedAt: !3523)
!3529 = !DILocation(line: 118, column: 90, scope: !3422, inlinedAt: !3523)
!3530 = !DILocation(line: 118, column: 100, scope: !3422, inlinedAt: !3523)
!3531 = !DILocation(line: 120, column: 7, scope: !3445, inlinedAt: !3523)
!3532 = !DILocation(line: 120, column: 7, scope: !3422, inlinedAt: !3523)
!3533 = !DILocation(line: 104, column: 25, scope: !3448, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 125, column: 16, scope: !3460, inlinedAt: !3523)
!3535 = !DILocation(line: 104, column: 41, scope: !3448, inlinedAt: !3534)
!3536 = !DILocation(line: 104, column: 50, scope: !3448, inlinedAt: !3534)
!3537 = !DILocation(line: 104, column: 60, scope: !3448, inlinedAt: !3534)
!3538 = !DILocation(line: 104, column: 70, scope: !3448, inlinedAt: !3534)
!3539 = !DILocation(line: 104, column: 80, scope: !3448, inlinedAt: !3534)
!3540 = !DILocation(line: 104, column: 90, scope: !3448, inlinedAt: !3534)
!3541 = !DILocation(line: 106, column: 7, scope: !3469, inlinedAt: !3534)
!3542 = !DILocation(line: 106, column: 7, scope: !3448, inlinedAt: !3534)
!3543 = !DILocation(line: 90, column: 25, scope: !3472, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 111, column: 16, scope: !3483, inlinedAt: !3534)
!3545 = !DILocation(line: 90, column: 41, scope: !3472, inlinedAt: !3544)
!3546 = !DILocation(line: 90, column: 50, scope: !3472, inlinedAt: !3544)
!3547 = !DILocation(line: 90, column: 60, scope: !3472, inlinedAt: !3544)
!3548 = !DILocation(line: 90, column: 70, scope: !3472, inlinedAt: !3544)
!3549 = !DILocation(line: 90, column: 80, scope: !3472, inlinedAt: !3544)
!3550 = !DILocation(line: 92, column: 7, scope: !3491, inlinedAt: !3544)
!3551 = !DILocation(line: 92, column: 7, scope: !3472, inlinedAt: !3544)
!3552 = !DILocalVariable(name: "s1", arg: 1, scope: !3553, file: !3336, line: 76, type: !93)
!3553 = distinct !DISubprogram(name: "strcaseeq6", scope: !3336, file: !3336, line: 76, type: !3554, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!64, !93, !93, !60, !60, !60}
!3556 = !{!3552, !3557, !3558, !3559, !3560}
!3557 = !DILocalVariable(name: "s2", arg: 2, scope: !3553, file: !3336, line: 76, type: !93)
!3558 = !DILocalVariable(name: "s26", arg: 3, scope: !3553, file: !3336, line: 76, type: !60)
!3559 = !DILocalVariable(name: "s27", arg: 4, scope: !3553, file: !3336, line: 76, type: !60)
!3560 = !DILocalVariable(name: "s28", arg: 5, scope: !3553, file: !3336, line: 76, type: !60)
!3561 = !DILocation(line: 76, column: 25, scope: !3553, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 97, column: 16, scope: !3563, inlinedAt: !3544)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !3336, line: 94, column: 11)
!3564 = distinct !DILexicalBlock(scope: !3491, file: !3336, line: 93, column: 5)
!3565 = !DILocation(line: 76, column: 41, scope: !3553, inlinedAt: !3562)
!3566 = !DILocation(line: 76, column: 50, scope: !3553, inlinedAt: !3562)
!3567 = !DILocation(line: 76, column: 60, scope: !3553, inlinedAt: !3562)
!3568 = !DILocation(line: 76, column: 70, scope: !3553, inlinedAt: !3562)
!3569 = !DILocation(line: 78, column: 7, scope: !3570, inlinedAt: !3562)
!3570 = distinct !DILexicalBlock(scope: !3553, file: !3336, line: 78, column: 7)
!3571 = !DILocation(line: 78, column: 7, scope: !3553, inlinedAt: !3562)
!3572 = !DILocalVariable(name: "s1", arg: 1, scope: !3573, file: !3336, line: 62, type: !93)
!3573 = distinct !DISubprogram(name: "strcaseeq7", scope: !3336, file: !3336, line: 62, type: !3574, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3576)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!64, !93, !93, !60, !60}
!3576 = !{!3572, !3577, !3578, !3579}
!3577 = !DILocalVariable(name: "s2", arg: 2, scope: !3573, file: !3336, line: 62, type: !93)
!3578 = !DILocalVariable(name: "s27", arg: 3, scope: !3573, file: !3336, line: 62, type: !60)
!3579 = !DILocalVariable(name: "s28", arg: 4, scope: !3573, file: !3336, line: 62, type: !60)
!3580 = !DILocation(line: 62, column: 25, scope: !3573, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 83, column: 16, scope: !3582, inlinedAt: !3562)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !3336, line: 80, column: 11)
!3583 = distinct !DILexicalBlock(scope: !3570, file: !3336, line: 79, column: 5)
!3584 = !DILocation(line: 62, column: 41, scope: !3573, inlinedAt: !3581)
!3585 = !DILocation(line: 62, column: 50, scope: !3573, inlinedAt: !3581)
!3586 = !DILocation(line: 62, column: 60, scope: !3573, inlinedAt: !3581)
!3587 = !DILocation(line: 64, column: 7, scope: !3588, inlinedAt: !3581)
!3588 = distinct !DILexicalBlock(scope: !3573, file: !3336, line: 64, column: 7)
!3589 = !DILocation(line: 236, column: 7, scope: !3317)
!3590 = !DILocation(line: 237, column: 12, scope: !3499)
!3591 = !DILocation(line: 237, column: 21, scope: !3499)
!3592 = !DILocation(line: 237, column: 5, scope: !3499)
!3593 = !DILocation(line: 239, column: 13, scope: !3317)
!3594 = !DILocation(line: 239, column: 11, scope: !3317)
!3595 = !DILocation(line: 239, column: 3, scope: !3317)
!3596 = !DILocation(line: 0, scope: !3317)
!3597 = !DILocation(line: 240, column: 1, scope: !3317)
!3598 = distinct !DISubprogram(name: "quotearg_alloc", scope: !271, file: !271, line: 799, type: !3599, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3601)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!59, !93, !62, !2638}
!3601 = !{!3602, !3603, !3604}
!3602 = !DILocalVariable(name: "arg", arg: 1, scope: !3598, file: !271, line: 799, type: !93)
!3603 = !DILocalVariable(name: "argsize", arg: 2, scope: !3598, file: !271, line: 799, type: !62)
!3604 = !DILocalVariable(name: "o", arg: 3, scope: !3598, file: !271, line: 800, type: !2638)
!3605 = !DILocation(line: 799, column: 29, scope: !3598)
!3606 = !DILocation(line: 799, column: 41, scope: !3598)
!3607 = !DILocation(line: 800, column: 47, scope: !3598)
!3608 = !DILocalVariable(name: "arg", arg: 1, scope: !3609, file: !271, line: 812, type: !93)
!3609 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !271, file: !271, line: 812, type: !3610, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!59, !93, !62, !377, !2638}
!3612 = !{!3608, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620}
!3613 = !DILocalVariable(name: "argsize", arg: 2, scope: !3609, file: !271, line: 812, type: !62)
!3614 = !DILocalVariable(name: "size", arg: 3, scope: !3609, file: !271, line: 812, type: !377)
!3615 = !DILocalVariable(name: "o", arg: 4, scope: !3609, file: !271, line: 813, type: !2638)
!3616 = !DILocalVariable(name: "p", scope: !3609, file: !271, line: 815, type: !2638)
!3617 = !DILocalVariable(name: "e", scope: !3609, file: !271, line: 816, type: !64)
!3618 = !DILocalVariable(name: "flags", scope: !3609, file: !271, line: 818, type: !64)
!3619 = !DILocalVariable(name: "bufsize", scope: !3609, file: !271, line: 819, type: !62)
!3620 = !DILocalVariable(name: "buf", scope: !3609, file: !271, line: 823, type: !59)
!3621 = !DILocation(line: 812, column: 33, scope: !3609, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 802, column: 10, scope: !3598)
!3623 = !DILocation(line: 812, column: 45, scope: !3609, inlinedAt: !3622)
!3624 = !DILocation(line: 812, column: 62, scope: !3609, inlinedAt: !3622)
!3625 = !DILocation(line: 813, column: 51, scope: !3609, inlinedAt: !3622)
!3626 = !DILocation(line: 815, column: 37, scope: !3609, inlinedAt: !3622)
!3627 = !DILocation(line: 815, column: 33, scope: !3609, inlinedAt: !3622)
!3628 = !DILocation(line: 816, column: 11, scope: !3609, inlinedAt: !3622)
!3629 = !DILocation(line: 816, column: 7, scope: !3609, inlinedAt: !3622)
!3630 = !DILocation(line: 818, column: 18, scope: !3609, inlinedAt: !3622)
!3631 = !DILocation(line: 818, column: 24, scope: !3609, inlinedAt: !3622)
!3632 = !DILocation(line: 818, column: 7, scope: !3609, inlinedAt: !3622)
!3633 = !DILocation(line: 819, column: 69, scope: !3609, inlinedAt: !3622)
!3634 = !DILocation(line: 820, column: 53, scope: !3609, inlinedAt: !3622)
!3635 = !DILocation(line: 821, column: 49, scope: !3609, inlinedAt: !3622)
!3636 = !DILocation(line: 822, column: 49, scope: !3609, inlinedAt: !3622)
!3637 = !DILocation(line: 819, column: 20, scope: !3609, inlinedAt: !3622)
!3638 = !DILocation(line: 822, column: 62, scope: !3609, inlinedAt: !3622)
!3639 = !DILocation(line: 819, column: 10, scope: !3609, inlinedAt: !3622)
!3640 = !DILocalVariable(name: "n", arg: 1, scope: !3641, file: !373, line: 216, type: !62)
!3641 = distinct !DISubprogram(name: "xcharalloc", scope: !373, file: !373, line: 216, type: !3642, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3644)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!59, !62}
!3644 = !{!3640}
!3645 = !DILocation(line: 216, column: 20, scope: !3641, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 823, column: 15, scope: !3609, inlinedAt: !3622)
!3647 = !DILocation(line: 218, column: 10, scope: !3641, inlinedAt: !3646)
!3648 = !DILocation(line: 823, column: 9, scope: !3609, inlinedAt: !3622)
!3649 = !DILocation(line: 824, column: 60, scope: !3609, inlinedAt: !3622)
!3650 = !DILocation(line: 826, column: 32, scope: !3609, inlinedAt: !3622)
!3651 = !DILocation(line: 826, column: 47, scope: !3609, inlinedAt: !3622)
!3652 = !DILocation(line: 824, column: 3, scope: !3609, inlinedAt: !3622)
!3653 = !DILocation(line: 827, column: 9, scope: !3609, inlinedAt: !3622)
!3654 = !DILocation(line: 802, column: 3, scope: !3598)
!3655 = !DILocation(line: 812, column: 33, scope: !3609)
!3656 = !DILocation(line: 812, column: 45, scope: !3609)
!3657 = !DILocation(line: 812, column: 62, scope: !3609)
!3658 = !DILocation(line: 813, column: 51, scope: !3609)
!3659 = !DILocation(line: 815, column: 37, scope: !3609)
!3660 = !DILocation(line: 815, column: 33, scope: !3609)
!3661 = !DILocation(line: 816, column: 11, scope: !3609)
!3662 = !DILocation(line: 816, column: 7, scope: !3609)
!3663 = !DILocation(line: 818, column: 18, scope: !3609)
!3664 = !DILocation(line: 818, column: 27, scope: !3609)
!3665 = !DILocation(line: 818, column: 24, scope: !3609)
!3666 = !DILocation(line: 818, column: 7, scope: !3609)
!3667 = !DILocation(line: 819, column: 69, scope: !3609)
!3668 = !DILocation(line: 820, column: 53, scope: !3609)
!3669 = !DILocation(line: 821, column: 49, scope: !3609)
!3670 = !DILocation(line: 822, column: 49, scope: !3609)
!3671 = !DILocation(line: 819, column: 20, scope: !3609)
!3672 = !DILocation(line: 822, column: 62, scope: !3609)
!3673 = !DILocation(line: 819, column: 10, scope: !3609)
!3674 = !DILocation(line: 216, column: 20, scope: !3641, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 823, column: 15, scope: !3609)
!3676 = !DILocation(line: 218, column: 10, scope: !3641, inlinedAt: !3675)
!3677 = !DILocation(line: 823, column: 9, scope: !3609)
!3678 = !DILocation(line: 824, column: 60, scope: !3609)
!3679 = !DILocation(line: 826, column: 32, scope: !3609)
!3680 = !DILocation(line: 826, column: 47, scope: !3609)
!3681 = !DILocation(line: 824, column: 3, scope: !3609)
!3682 = !DILocation(line: 827, column: 9, scope: !3609)
!3683 = !DILocation(line: 828, column: 7, scope: !3609)
!3684 = !DILocation(line: 829, column: 11, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3609, file: !271, line: 828, column: 7)
!3686 = !DILocation(line: 829, column: 5, scope: !3685)
!3687 = !DILocation(line: 830, column: 3, scope: !3609)
!3688 = distinct !DISubprogram(name: "quotearg_free", scope: !271, file: !271, line: 848, type: !837, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3689)
!3689 = !{!3690, !3691}
!3690 = !DILocalVariable(name: "sv", scope: !3688, file: !271, line: 850, type: !297)
!3691 = !DILocalVariable(name: "i", scope: !3688, file: !271, line: 851, type: !64)
!3692 = !DILocation(line: 850, column: 24, scope: !3688)
!3693 = !DILocation(line: 850, column: 19, scope: !3688)
!3694 = !DILocation(line: 851, column: 7, scope: !3688)
!3695 = !DILocation(line: 852, column: 19, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !271, line: 852, column: 3)
!3697 = distinct !DILexicalBlock(scope: !3688, file: !271, line: 852, column: 3)
!3698 = !DILocation(line: 852, column: 17, scope: !3696)
!3699 = !DILocation(line: 852, column: 3, scope: !3697)
!3700 = !DILocation(line: 853, column: 17, scope: !3696)
!3701 = !{!3702, !831, i64 8}
!3702 = !{!"slotvec", !1097, i64 0, !831, i64 8}
!3703 = !DILocation(line: 853, column: 5, scope: !3696)
!3704 = !DILocation(line: 852, column: 28, scope: !3696)
!3705 = distinct !{!3705, !3699, !3706}
!3706 = !DILocation(line: 853, column: 20, scope: !3697)
!3707 = !DILocation(line: 854, column: 13, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3688, file: !271, line: 854, column: 7)
!3709 = !DILocation(line: 854, column: 17, scope: !3708)
!3710 = !DILocation(line: 854, column: 7, scope: !3688)
!3711 = !DILocation(line: 856, column: 7, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3708, file: !271, line: 855, column: 5)
!3713 = !DILocation(line: 857, column: 21, scope: !3712)
!3714 = !{!3702, !1097, i64 0}
!3715 = !DILocation(line: 858, column: 20, scope: !3712)
!3716 = !DILocation(line: 859, column: 5, scope: !3712)
!3717 = !DILocation(line: 860, column: 10, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3688, file: !271, line: 860, column: 7)
!3719 = !DILocation(line: 860, column: 7, scope: !3688)
!3720 = !DILocation(line: 862, column: 13, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3718, file: !271, line: 861, column: 5)
!3722 = !DILocation(line: 862, column: 7, scope: !3721)
!3723 = !DILocation(line: 863, column: 15, scope: !3721)
!3724 = !DILocation(line: 864, column: 5, scope: !3721)
!3725 = !DILocation(line: 865, column: 10, scope: !3688)
!3726 = !DILocation(line: 866, column: 1, scope: !3688)
!3727 = distinct !DISubprogram(name: "quotearg_n", scope: !271, file: !271, line: 931, type: !3728, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!59, !64, !93}
!3730 = !{!3731, !3732}
!3731 = !DILocalVariable(name: "n", arg: 1, scope: !3727, file: !271, line: 931, type: !64)
!3732 = !DILocalVariable(name: "arg", arg: 2, scope: !3727, file: !271, line: 931, type: !93)
!3733 = !DILocation(line: 931, column: 17, scope: !3727)
!3734 = !DILocation(line: 931, column: 32, scope: !3727)
!3735 = !DILocation(line: 933, column: 10, scope: !3727)
!3736 = !DILocation(line: 933, column: 3, scope: !3727)
!3737 = distinct !DISubprogram(name: "quotearg_n_options", scope: !271, file: !271, line: 877, type: !3738, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3740)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!59, !64, !93, !62, !2638}
!3740 = !{!3741, !3742, !3743, !3744, !3745, !3746, !3747, !3750, !3751, !3753, !3754, !3755}
!3741 = !DILocalVariable(name: "n", arg: 1, scope: !3737, file: !271, line: 877, type: !64)
!3742 = !DILocalVariable(name: "arg", arg: 2, scope: !3737, file: !271, line: 877, type: !93)
!3743 = !DILocalVariable(name: "argsize", arg: 3, scope: !3737, file: !271, line: 877, type: !62)
!3744 = !DILocalVariable(name: "options", arg: 4, scope: !3737, file: !271, line: 878, type: !2638)
!3745 = !DILocalVariable(name: "e", scope: !3737, file: !271, line: 880, type: !64)
!3746 = !DILocalVariable(name: "sv", scope: !3737, file: !271, line: 882, type: !297)
!3747 = !DILocalVariable(name: "preallocated", scope: !3748, file: !271, line: 889, type: !71)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !271, line: 888, column: 5)
!3749 = distinct !DILexicalBlock(scope: !3737, file: !271, line: 887, column: 7)
!3750 = !DILocalVariable(name: "nmax", scope: !3748, file: !271, line: 890, type: !64)
!3751 = !DILocalVariable(name: "size", scope: !3752, file: !271, line: 903, type: !62)
!3752 = distinct !DILexicalBlock(scope: !3737, file: !271, line: 902, column: 3)
!3753 = !DILocalVariable(name: "val", scope: !3752, file: !271, line: 904, type: !59)
!3754 = !DILocalVariable(name: "flags", scope: !3752, file: !271, line: 906, type: !64)
!3755 = !DILocalVariable(name: "qsize", scope: !3752, file: !271, line: 907, type: !62)
!3756 = !DILocation(line: 877, column: 25, scope: !3737)
!3757 = !DILocation(line: 877, column: 40, scope: !3737)
!3758 = !DILocation(line: 877, column: 52, scope: !3737)
!3759 = !DILocation(line: 878, column: 51, scope: !3737)
!3760 = !DILocation(line: 880, column: 11, scope: !3737)
!3761 = !DILocation(line: 880, column: 7, scope: !3737)
!3762 = !DILocation(line: 882, column: 24, scope: !3737)
!3763 = !DILocation(line: 882, column: 19, scope: !3737)
!3764 = !DILocation(line: 884, column: 9, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3737, file: !271, line: 884, column: 7)
!3766 = !DILocation(line: 884, column: 7, scope: !3737)
!3767 = !DILocation(line: 885, column: 5, scope: !3765)
!3768 = !DILocation(line: 887, column: 7, scope: !3749)
!3769 = !DILocation(line: 887, column: 14, scope: !3749)
!3770 = !DILocation(line: 887, column: 7, scope: !3737)
!3771 = !DILocation(line: 889, column: 31, scope: !3748)
!3772 = !DILocation(line: 890, column: 11, scope: !3748)
!3773 = !DILocation(line: 892, column: 16, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3748, file: !271, line: 892, column: 11)
!3775 = !DILocation(line: 892, column: 11, scope: !3748)
!3776 = !DILocation(line: 893, column: 9, scope: !3774)
!3777 = !DILocation(line: 895, column: 32, scope: !3748)
!3778 = !DILocation(line: 895, column: 61, scope: !3748)
!3779 = !DILocation(line: 895, column: 58, scope: !3748)
!3780 = !DILocation(line: 895, column: 66, scope: !3748)
!3781 = !DILocation(line: 895, column: 22, scope: !3748)
!3782 = !DILocation(line: 895, column: 15, scope: !3748)
!3783 = !DILocation(line: 896, column: 11, scope: !3748)
!3784 = !DILocation(line: 897, column: 15, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3748, file: !271, line: 896, column: 11)
!3786 = !{i64 0, i64 8, !1096, i64 8, i64 8, !830}
!3787 = !DILocation(line: 897, column: 9, scope: !3785)
!3788 = !DILocation(line: 898, column: 20, scope: !3748)
!3789 = !DILocation(line: 898, column: 18, scope: !3748)
!3790 = !DILocation(line: 898, column: 7, scope: !3748)
!3791 = !DILocation(line: 898, column: 38, scope: !3748)
!3792 = !DILocation(line: 898, column: 31, scope: !3748)
!3793 = !DILocation(line: 898, column: 48, scope: !3748)
!3794 = !DILocation(line: 899, column: 14, scope: !3748)
!3795 = !DILocation(line: 900, column: 5, scope: !3748)
!3796 = !DILocation(line: 0, scope: !3737)
!3797 = !DILocation(line: 903, column: 19, scope: !3752)
!3798 = !DILocation(line: 903, column: 25, scope: !3752)
!3799 = !DILocation(line: 903, column: 12, scope: !3752)
!3800 = !DILocation(line: 904, column: 23, scope: !3752)
!3801 = !DILocation(line: 904, column: 11, scope: !3752)
!3802 = !DILocation(line: 906, column: 26, scope: !3752)
!3803 = !DILocation(line: 906, column: 32, scope: !3752)
!3804 = !DILocation(line: 906, column: 9, scope: !3752)
!3805 = !DILocation(line: 908, column: 55, scope: !3752)
!3806 = !DILocation(line: 909, column: 46, scope: !3752)
!3807 = !DILocation(line: 910, column: 55, scope: !3752)
!3808 = !DILocation(line: 911, column: 55, scope: !3752)
!3809 = !DILocation(line: 907, column: 20, scope: !3752)
!3810 = !DILocation(line: 907, column: 12, scope: !3752)
!3811 = !DILocation(line: 913, column: 14, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3752, file: !271, line: 913, column: 9)
!3813 = !DILocation(line: 913, column: 9, scope: !3752)
!3814 = !DILocation(line: 915, column: 35, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !271, line: 914, column: 7)
!3816 = !DILocation(line: 915, column: 20, scope: !3815)
!3817 = !DILocation(line: 916, column: 17, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3815, file: !271, line: 916, column: 13)
!3819 = !DILocation(line: 916, column: 13, scope: !3815)
!3820 = !DILocation(line: 917, column: 11, scope: !3818)
!3821 = !DILocation(line: 216, column: 20, scope: !3641, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 918, column: 27, scope: !3815)
!3823 = !DILocation(line: 218, column: 10, scope: !3641, inlinedAt: !3822)
!3824 = !DILocation(line: 918, column: 19, scope: !3815)
!3825 = !DILocation(line: 919, column: 69, scope: !3815)
!3826 = !DILocation(line: 921, column: 44, scope: !3815)
!3827 = !DILocation(line: 922, column: 44, scope: !3815)
!3828 = !DILocation(line: 919, column: 9, scope: !3815)
!3829 = !DILocation(line: 923, column: 7, scope: !3815)
!3830 = !DILocation(line: 0, scope: !3752)
!3831 = !DILocation(line: 925, column: 11, scope: !3752)
!3832 = !DILocation(line: 926, column: 5, scope: !3752)
!3833 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !271, file: !271, line: 937, type: !3834, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!59, !64, !93, !62}
!3836 = !{!3837, !3838, !3839}
!3837 = !DILocalVariable(name: "n", arg: 1, scope: !3833, file: !271, line: 937, type: !64)
!3838 = !DILocalVariable(name: "arg", arg: 2, scope: !3833, file: !271, line: 937, type: !93)
!3839 = !DILocalVariable(name: "argsize", arg: 3, scope: !3833, file: !271, line: 937, type: !62)
!3840 = !DILocation(line: 937, column: 21, scope: !3833)
!3841 = !DILocation(line: 937, column: 36, scope: !3833)
!3842 = !DILocation(line: 937, column: 48, scope: !3833)
!3843 = !DILocation(line: 939, column: 10, scope: !3833)
!3844 = !DILocation(line: 939, column: 3, scope: !3833)
!3845 = distinct !DISubprogram(name: "quotearg", scope: !271, file: !271, line: 943, type: !3846, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3848)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!59, !93}
!3848 = !{!3849}
!3849 = !DILocalVariable(name: "arg", arg: 1, scope: !3845, file: !271, line: 943, type: !93)
!3850 = !DILocation(line: 943, column: 23, scope: !3845)
!3851 = !DILocation(line: 931, column: 17, scope: !3727, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 945, column: 10, scope: !3845)
!3853 = !DILocation(line: 931, column: 32, scope: !3727, inlinedAt: !3852)
!3854 = !DILocation(line: 933, column: 10, scope: !3727, inlinedAt: !3852)
!3855 = !DILocation(line: 945, column: 3, scope: !3845)
!3856 = distinct !DISubprogram(name: "quotearg_mem", scope: !271, file: !271, line: 949, type: !3857, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!59, !93, !62}
!3859 = !{!3860, !3861}
!3860 = !DILocalVariable(name: "arg", arg: 1, scope: !3856, file: !271, line: 949, type: !93)
!3861 = !DILocalVariable(name: "argsize", arg: 2, scope: !3856, file: !271, line: 949, type: !62)
!3862 = !DILocation(line: 949, column: 27, scope: !3856)
!3863 = !DILocation(line: 949, column: 39, scope: !3856)
!3864 = !DILocation(line: 937, column: 21, scope: !3833, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 951, column: 10, scope: !3856)
!3866 = !DILocation(line: 937, column: 36, scope: !3833, inlinedAt: !3865)
!3867 = !DILocation(line: 937, column: 48, scope: !3833, inlinedAt: !3865)
!3868 = !DILocation(line: 939, column: 10, scope: !3833, inlinedAt: !3865)
!3869 = !DILocation(line: 951, column: 3, scope: !3856)
!3870 = distinct !DISubprogram(name: "quotearg_n_style", scope: !271, file: !271, line: 955, type: !3871, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!59, !64, !5, !93}
!3873 = !{!3874, !3875, !3876, !3877}
!3874 = !DILocalVariable(name: "n", arg: 1, scope: !3870, file: !271, line: 955, type: !64)
!3875 = !DILocalVariable(name: "s", arg: 2, scope: !3870, file: !271, line: 955, type: !5)
!3876 = !DILocalVariable(name: "arg", arg: 3, scope: !3870, file: !271, line: 955, type: !93)
!3877 = !DILocalVariable(name: "o", scope: !3870, file: !271, line: 957, type: !2639)
!3878 = !DILocation(line: 955, column: 23, scope: !3870)
!3879 = !DILocation(line: 955, column: 45, scope: !3870)
!3880 = !DILocation(line: 955, column: 60, scope: !3870)
!3881 = !DILocation(line: 957, column: 3, scope: !3870)
!3882 = !DILocation(line: 957, column: 32, scope: !3870)
!3883 = !DILocalVariable(name: "style", arg: 1, scope: !3884, file: !271, line: 193, type: !5)
!3884 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !271, file: !271, line: 193, type: !3885, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!278, !5}
!3887 = !{!3883, !3888}
!3888 = !DILocalVariable(name: "o", scope: !3884, file: !271, line: 195, type: !278)
!3889 = !DILocation(line: 193, column: 48, scope: !3884, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 957, column: 36, scope: !3870)
!3891 = !DILocation(line: 195, column: 26, scope: !3884, inlinedAt: !3890)
!3892 = !{!3893}
!3893 = distinct !{!3893, !3894, !"quoting_options_from_style: argument 0"}
!3894 = distinct !{!3894, !"quoting_options_from_style"}
!3895 = !DILocation(line: 196, column: 13, scope: !3896, inlinedAt: !3890)
!3896 = distinct !DILexicalBlock(scope: !3884, file: !271, line: 196, column: 7)
!3897 = !DILocation(line: 196, column: 7, scope: !3884, inlinedAt: !3890)
!3898 = !DILocation(line: 197, column: 5, scope: !3896, inlinedAt: !3890)
!3899 = !DILocation(line: 198, column: 5, scope: !3884, inlinedAt: !3890)
!3900 = !DILocation(line: 198, column: 11, scope: !3884, inlinedAt: !3890)
!3901 = !DILocation(line: 958, column: 10, scope: !3870)
!3902 = !DILocation(line: 959, column: 1, scope: !3870)
!3903 = !DILocation(line: 958, column: 3, scope: !3870)
!3904 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !271, file: !271, line: 962, type: !3905, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!59, !64, !5, !93, !62}
!3907 = !{!3908, !3909, !3910, !3911, !3912}
!3908 = !DILocalVariable(name: "n", arg: 1, scope: !3904, file: !271, line: 962, type: !64)
!3909 = !DILocalVariable(name: "s", arg: 2, scope: !3904, file: !271, line: 962, type: !5)
!3910 = !DILocalVariable(name: "arg", arg: 3, scope: !3904, file: !271, line: 963, type: !93)
!3911 = !DILocalVariable(name: "argsize", arg: 4, scope: !3904, file: !271, line: 963, type: !62)
!3912 = !DILocalVariable(name: "o", scope: !3904, file: !271, line: 965, type: !2639)
!3913 = !DILocation(line: 962, column: 27, scope: !3904)
!3914 = !DILocation(line: 962, column: 49, scope: !3904)
!3915 = !DILocation(line: 963, column: 35, scope: !3904)
!3916 = !DILocation(line: 963, column: 47, scope: !3904)
!3917 = !DILocation(line: 965, column: 3, scope: !3904)
!3918 = !DILocation(line: 965, column: 32, scope: !3904)
!3919 = !DILocation(line: 193, column: 48, scope: !3884, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 965, column: 36, scope: !3904)
!3921 = !DILocation(line: 195, column: 26, scope: !3884, inlinedAt: !3920)
!3922 = !{!3923}
!3923 = distinct !{!3923, !3924, !"quoting_options_from_style: argument 0"}
!3924 = distinct !{!3924, !"quoting_options_from_style"}
!3925 = !DILocation(line: 196, column: 13, scope: !3896, inlinedAt: !3920)
!3926 = !DILocation(line: 196, column: 7, scope: !3884, inlinedAt: !3920)
!3927 = !DILocation(line: 197, column: 5, scope: !3896, inlinedAt: !3920)
!3928 = !DILocation(line: 198, column: 5, scope: !3884, inlinedAt: !3920)
!3929 = !DILocation(line: 198, column: 11, scope: !3884, inlinedAt: !3920)
!3930 = !DILocation(line: 966, column: 10, scope: !3904)
!3931 = !DILocation(line: 967, column: 1, scope: !3904)
!3932 = !DILocation(line: 966, column: 3, scope: !3904)
!3933 = distinct !DISubprogram(name: "quotearg_style", scope: !271, file: !271, line: 970, type: !3934, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!59, !5, !93}
!3936 = !{!3937, !3938}
!3937 = !DILocalVariable(name: "s", arg: 1, scope: !3933, file: !271, line: 970, type: !5)
!3938 = !DILocalVariable(name: "arg", arg: 2, scope: !3933, file: !271, line: 970, type: !93)
!3939 = !DILocation(line: 970, column: 36, scope: !3933)
!3940 = !DILocation(line: 970, column: 51, scope: !3933)
!3941 = !DILocation(line: 955, column: 23, scope: !3870, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 972, column: 10, scope: !3933)
!3943 = !DILocation(line: 955, column: 45, scope: !3870, inlinedAt: !3942)
!3944 = !DILocation(line: 955, column: 60, scope: !3870, inlinedAt: !3942)
!3945 = !DILocation(line: 957, column: 3, scope: !3870, inlinedAt: !3942)
!3946 = !DILocation(line: 957, column: 32, scope: !3870, inlinedAt: !3942)
!3947 = !DILocation(line: 193, column: 48, scope: !3884, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 957, column: 36, scope: !3870, inlinedAt: !3942)
!3949 = !DILocation(line: 195, column: 26, scope: !3884, inlinedAt: !3948)
!3950 = !{!3951}
!3951 = distinct !{!3951, !3952, !"quoting_options_from_style: argument 0"}
!3952 = distinct !{!3952, !"quoting_options_from_style"}
!3953 = !DILocation(line: 196, column: 13, scope: !3896, inlinedAt: !3948)
!3954 = !DILocation(line: 196, column: 7, scope: !3884, inlinedAt: !3948)
!3955 = !DILocation(line: 197, column: 5, scope: !3896, inlinedAt: !3948)
!3956 = !DILocation(line: 198, column: 5, scope: !3884, inlinedAt: !3948)
!3957 = !DILocation(line: 198, column: 11, scope: !3884, inlinedAt: !3948)
!3958 = !DILocation(line: 958, column: 10, scope: !3870, inlinedAt: !3942)
!3959 = !DILocation(line: 959, column: 1, scope: !3870, inlinedAt: !3942)
!3960 = !DILocation(line: 972, column: 3, scope: !3933)
!3961 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !271, file: !271, line: 976, type: !3962, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!59, !5, !93, !62}
!3964 = !{!3965, !3966, !3967}
!3965 = !DILocalVariable(name: "s", arg: 1, scope: !3961, file: !271, line: 976, type: !5)
!3966 = !DILocalVariable(name: "arg", arg: 2, scope: !3961, file: !271, line: 976, type: !93)
!3967 = !DILocalVariable(name: "argsize", arg: 3, scope: !3961, file: !271, line: 976, type: !62)
!3968 = !DILocation(line: 976, column: 40, scope: !3961)
!3969 = !DILocation(line: 976, column: 55, scope: !3961)
!3970 = !DILocation(line: 976, column: 67, scope: !3961)
!3971 = !DILocation(line: 962, column: 27, scope: !3904, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 978, column: 10, scope: !3961)
!3973 = !DILocation(line: 962, column: 49, scope: !3904, inlinedAt: !3972)
!3974 = !DILocation(line: 963, column: 35, scope: !3904, inlinedAt: !3972)
!3975 = !DILocation(line: 963, column: 47, scope: !3904, inlinedAt: !3972)
!3976 = !DILocation(line: 965, column: 3, scope: !3904, inlinedAt: !3972)
!3977 = !DILocation(line: 965, column: 32, scope: !3904, inlinedAt: !3972)
!3978 = !DILocation(line: 193, column: 48, scope: !3884, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 965, column: 36, scope: !3904, inlinedAt: !3972)
!3980 = !DILocation(line: 195, column: 26, scope: !3884, inlinedAt: !3979)
!3981 = !{!3982}
!3982 = distinct !{!3982, !3983, !"quoting_options_from_style: argument 0"}
!3983 = distinct !{!3983, !"quoting_options_from_style"}
!3984 = !DILocation(line: 196, column: 13, scope: !3896, inlinedAt: !3979)
!3985 = !DILocation(line: 196, column: 7, scope: !3884, inlinedAt: !3979)
!3986 = !DILocation(line: 197, column: 5, scope: !3896, inlinedAt: !3979)
!3987 = !DILocation(line: 198, column: 5, scope: !3884, inlinedAt: !3979)
!3988 = !DILocation(line: 198, column: 11, scope: !3884, inlinedAt: !3979)
!3989 = !DILocation(line: 966, column: 10, scope: !3904, inlinedAt: !3972)
!3990 = !DILocation(line: 967, column: 1, scope: !3904, inlinedAt: !3972)
!3991 = !DILocation(line: 978, column: 3, scope: !3961)
!3992 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !271, file: !271, line: 982, type: !3993, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!59, !93, !62, !60}
!3995 = !{!3996, !3997, !3998, !3999}
!3996 = !DILocalVariable(name: "arg", arg: 1, scope: !3992, file: !271, line: 982, type: !93)
!3997 = !DILocalVariable(name: "argsize", arg: 2, scope: !3992, file: !271, line: 982, type: !62)
!3998 = !DILocalVariable(name: "ch", arg: 3, scope: !3992, file: !271, line: 982, type: !60)
!3999 = !DILocalVariable(name: "options", scope: !3992, file: !271, line: 984, type: !278)
!4000 = !DILocation(line: 982, column: 32, scope: !3992)
!4001 = !DILocation(line: 982, column: 44, scope: !3992)
!4002 = !DILocation(line: 982, column: 58, scope: !3992)
!4003 = !DILocation(line: 984, column: 3, scope: !3992)
!4004 = !DILocation(line: 985, column: 13, scope: !3992)
!4005 = !{i64 0, i64 4, !1124, i64 4, i64 4, !1038, i64 8, i64 32, !1124, i64 40, i64 8, !830, i64 48, i64 8, !830}
!4006 = !DILocation(line: 984, column: 26, scope: !3992)
!4007 = !DILocation(line: 152, column: 43, scope: !2660, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 986, column: 3, scope: !3992)
!4009 = !DILocation(line: 152, column: 51, scope: !2660, inlinedAt: !4008)
!4010 = !DILocation(line: 152, column: 58, scope: !2660, inlinedAt: !4008)
!4011 = !DILocation(line: 154, column: 17, scope: !2660, inlinedAt: !4008)
!4012 = !DILocation(line: 156, column: 62, scope: !2660, inlinedAt: !4008)
!4013 = !DILocation(line: 156, column: 57, scope: !2660, inlinedAt: !4008)
!4014 = !DILocation(line: 155, column: 17, scope: !2660, inlinedAt: !4008)
!4015 = !DILocation(line: 157, column: 15, scope: !2660, inlinedAt: !4008)
!4016 = !DILocation(line: 157, column: 7, scope: !2660, inlinedAt: !4008)
!4017 = !DILocation(line: 158, column: 12, scope: !2660, inlinedAt: !4008)
!4018 = !DILocation(line: 158, column: 15, scope: !2660, inlinedAt: !4008)
!4019 = !DILocation(line: 158, column: 25, scope: !2660, inlinedAt: !4008)
!4020 = !DILocation(line: 158, column: 7, scope: !2660, inlinedAt: !4008)
!4021 = !DILocation(line: 159, column: 18, scope: !2660, inlinedAt: !4008)
!4022 = !DILocation(line: 159, column: 23, scope: !2660, inlinedAt: !4008)
!4023 = !DILocation(line: 159, column: 6, scope: !2660, inlinedAt: !4008)
!4024 = !DILocation(line: 987, column: 10, scope: !3992)
!4025 = !DILocation(line: 988, column: 1, scope: !3992)
!4026 = !DILocation(line: 987, column: 3, scope: !3992)
!4027 = distinct !DISubprogram(name: "quotearg_char", scope: !271, file: !271, line: 991, type: !4028, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !4030)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!59, !93, !60}
!4030 = !{!4031, !4032}
!4031 = !DILocalVariable(name: "arg", arg: 1, scope: !4027, file: !271, line: 991, type: !93)
!4032 = !DILocalVariable(name: "ch", arg: 2, scope: !4027, file: !271, line: 991, type: !60)
!4033 = !DILocation(line: 991, column: 28, scope: !4027)
!4034 = !DILocation(line: 991, column: 38, scope: !4027)
!4035 = !DILocation(line: 982, column: 32, scope: !3992, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 993, column: 10, scope: !4027)
!4037 = !DILocation(line: 982, column: 44, scope: !3992, inlinedAt: !4036)
!4038 = !DILocation(line: 982, column: 58, scope: !3992, inlinedAt: !4036)
!4039 = !DILocation(line: 984, column: 3, scope: !3992, inlinedAt: !4036)
!4040 = !DILocation(line: 985, column: 13, scope: !3992, inlinedAt: !4036)
!4041 = !DILocation(line: 984, column: 26, scope: !3992, inlinedAt: !4036)
!4042 = !DILocation(line: 152, column: 43, scope: !2660, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 986, column: 3, scope: !3992, inlinedAt: !4036)
!4044 = !DILocation(line: 152, column: 51, scope: !2660, inlinedAt: !4043)
!4045 = !DILocation(line: 152, column: 58, scope: !2660, inlinedAt: !4043)
!4046 = !DILocation(line: 154, column: 17, scope: !2660, inlinedAt: !4043)
!4047 = !DILocation(line: 156, column: 62, scope: !2660, inlinedAt: !4043)
!4048 = !DILocation(line: 156, column: 57, scope: !2660, inlinedAt: !4043)
!4049 = !DILocation(line: 155, column: 17, scope: !2660, inlinedAt: !4043)
!4050 = !DILocation(line: 157, column: 15, scope: !2660, inlinedAt: !4043)
!4051 = !DILocation(line: 157, column: 7, scope: !2660, inlinedAt: !4043)
!4052 = !DILocation(line: 158, column: 12, scope: !2660, inlinedAt: !4043)
!4053 = !DILocation(line: 158, column: 15, scope: !2660, inlinedAt: !4043)
!4054 = !DILocation(line: 158, column: 25, scope: !2660, inlinedAt: !4043)
!4055 = !DILocation(line: 158, column: 7, scope: !2660, inlinedAt: !4043)
!4056 = !DILocation(line: 159, column: 18, scope: !2660, inlinedAt: !4043)
!4057 = !DILocation(line: 159, column: 23, scope: !2660, inlinedAt: !4043)
!4058 = !DILocation(line: 159, column: 6, scope: !2660, inlinedAt: !4043)
!4059 = !DILocation(line: 987, column: 10, scope: !3992, inlinedAt: !4036)
!4060 = !DILocation(line: 988, column: 1, scope: !3992, inlinedAt: !4036)
!4061 = !DILocation(line: 993, column: 3, scope: !4027)
!4062 = distinct !DISubprogram(name: "quotearg_colon", scope: !271, file: !271, line: 997, type: !3846, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !4063)
!4063 = !{!4064}
!4064 = !DILocalVariable(name: "arg", arg: 1, scope: !4062, file: !271, line: 997, type: !93)
!4065 = !DILocation(line: 997, column: 29, scope: !4062)
!4066 = !DILocation(line: 991, column: 28, scope: !4027, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 999, column: 10, scope: !4062)
!4068 = !DILocation(line: 991, column: 38, scope: !4027, inlinedAt: !4067)
!4069 = !DILocation(line: 982, column: 32, scope: !3992, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 993, column: 10, scope: !4027, inlinedAt: !4067)
!4071 = !DILocation(line: 982, column: 44, scope: !3992, inlinedAt: !4070)
!4072 = !DILocation(line: 982, column: 58, scope: !3992, inlinedAt: !4070)
!4073 = !DILocation(line: 984, column: 3, scope: !3992, inlinedAt: !4070)
!4074 = !DILocation(line: 985, column: 13, scope: !3992, inlinedAt: !4070)
!4075 = !DILocation(line: 984, column: 26, scope: !3992, inlinedAt: !4070)
!4076 = !DILocation(line: 152, column: 43, scope: !2660, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 986, column: 3, scope: !3992, inlinedAt: !4070)
!4078 = !DILocation(line: 152, column: 51, scope: !2660, inlinedAt: !4077)
!4079 = !DILocation(line: 152, column: 58, scope: !2660, inlinedAt: !4077)
!4080 = !DILocation(line: 154, column: 17, scope: !2660, inlinedAt: !4077)
!4081 = !DILocation(line: 156, column: 57, scope: !2660, inlinedAt: !4077)
!4082 = !DILocation(line: 155, column: 17, scope: !2660, inlinedAt: !4077)
!4083 = !DILocation(line: 157, column: 7, scope: !2660, inlinedAt: !4077)
!4084 = !DILocation(line: 158, column: 12, scope: !2660, inlinedAt: !4077)
!4085 = !DILocation(line: 159, column: 6, scope: !2660, inlinedAt: !4077)
!4086 = !DILocation(line: 987, column: 10, scope: !3992, inlinedAt: !4070)
!4087 = !DILocation(line: 988, column: 1, scope: !3992, inlinedAt: !4070)
!4088 = !DILocation(line: 999, column: 3, scope: !4062)
!4089 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !271, file: !271, line: 1003, type: !3857, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !4090)
!4090 = !{!4091, !4092}
!4091 = !DILocalVariable(name: "arg", arg: 1, scope: !4089, file: !271, line: 1003, type: !93)
!4092 = !DILocalVariable(name: "argsize", arg: 2, scope: !4089, file: !271, line: 1003, type: !62)
!4093 = !DILocation(line: 1003, column: 33, scope: !4089)
!4094 = !DILocation(line: 1003, column: 45, scope: !4089)
!4095 = !DILocation(line: 982, column: 32, scope: !3992, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 1005, column: 10, scope: !4089)
!4097 = !DILocation(line: 982, column: 44, scope: !3992, inlinedAt: !4096)
!4098 = !DILocation(line: 982, column: 58, scope: !3992, inlinedAt: !4096)
!4099 = !DILocation(line: 984, column: 3, scope: !3992, inlinedAt: !4096)
!4100 = !DILocation(line: 985, column: 13, scope: !3992, inlinedAt: !4096)
!4101 = !DILocation(line: 984, column: 26, scope: !3992, inlinedAt: !4096)
!4102 = !DILocation(line: 152, column: 43, scope: !2660, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 986, column: 3, scope: !3992, inlinedAt: !4096)
!4104 = !DILocation(line: 152, column: 51, scope: !2660, inlinedAt: !4103)
!4105 = !DILocation(line: 152, column: 58, scope: !2660, inlinedAt: !4103)
!4106 = !DILocation(line: 154, column: 17, scope: !2660, inlinedAt: !4103)
!4107 = !DILocation(line: 156, column: 57, scope: !2660, inlinedAt: !4103)
!4108 = !DILocation(line: 155, column: 17, scope: !2660, inlinedAt: !4103)
!4109 = !DILocation(line: 157, column: 7, scope: !2660, inlinedAt: !4103)
!4110 = !DILocation(line: 158, column: 12, scope: !2660, inlinedAt: !4103)
!4111 = !DILocation(line: 159, column: 6, scope: !2660, inlinedAt: !4103)
!4112 = !DILocation(line: 987, column: 10, scope: !3992, inlinedAt: !4096)
!4113 = !DILocation(line: 988, column: 1, scope: !3992, inlinedAt: !4096)
!4114 = !DILocation(line: 1005, column: 3, scope: !4089)
!4115 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !271, file: !271, line: 1009, type: !3871, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !4116)
!4116 = !{!4117, !4118, !4119, !4120}
!4117 = !DILocalVariable(name: "n", arg: 1, scope: !4115, file: !271, line: 1009, type: !64)
!4118 = !DILocalVariable(name: "s", arg: 2, scope: !4115, file: !271, line: 1009, type: !5)
!4119 = !DILocalVariable(name: "arg", arg: 3, scope: !4115, file: !271, line: 1009, type: !93)
!4120 = !DILocalVariable(name: "options", scope: !4115, file: !271, line: 1011, type: !278)
!4121 = !DILocation(line: 195, column: 26, scope: !3884, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 1012, column: 13, scope: !4115)
!4123 = !DILocation(line: 1009, column: 29, scope: !4115)
!4124 = !DILocation(line: 1009, column: 51, scope: !4115)
!4125 = !DILocation(line: 1009, column: 66, scope: !4115)
!4126 = !DILocation(line: 1011, column: 3, scope: !4115)
!4127 = !DILocation(line: 1012, column: 13, scope: !4115)
!4128 = !DILocation(line: 193, column: 48, scope: !3884, inlinedAt: !4122)
!4129 = !{!4130}
!4130 = distinct !{!4130, !4131, !"quoting_options_from_style: argument 0"}
!4131 = distinct !{!4131, !"quoting_options_from_style"}
!4132 = !DILocation(line: 196, column: 13, scope: !3896, inlinedAt: !4122)
!4133 = !DILocation(line: 196, column: 7, scope: !3884, inlinedAt: !4122)
!4134 = !DILocation(line: 197, column: 5, scope: !3896, inlinedAt: !4122)
!4135 = !DILocation(line: 1011, column: 26, scope: !4115)
!4136 = !DILocation(line: 152, column: 43, scope: !2660, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 1013, column: 3, scope: !4115)
!4138 = !DILocation(line: 152, column: 51, scope: !2660, inlinedAt: !4137)
!4139 = !DILocation(line: 152, column: 58, scope: !2660, inlinedAt: !4137)
!4140 = !DILocation(line: 154, column: 17, scope: !2660, inlinedAt: !4137)
!4141 = !DILocation(line: 156, column: 57, scope: !2660, inlinedAt: !4137)
!4142 = !DILocation(line: 155, column: 17, scope: !2660, inlinedAt: !4137)
!4143 = !DILocation(line: 157, column: 7, scope: !2660, inlinedAt: !4137)
!4144 = !DILocation(line: 158, column: 12, scope: !2660, inlinedAt: !4137)
!4145 = !DILocation(line: 159, column: 6, scope: !2660, inlinedAt: !4137)
!4146 = !DILocation(line: 1014, column: 10, scope: !4115)
!4147 = !DILocation(line: 1015, column: 1, scope: !4115)
!4148 = !DILocation(line: 1014, column: 3, scope: !4115)
!4149 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !271, file: !271, line: 1018, type: !4150, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !4152)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!59, !64, !93, !93, !93}
!4152 = !{!4153, !4154, !4155, !4156}
!4153 = !DILocalVariable(name: "n", arg: 1, scope: !4149, file: !271, line: 1018, type: !64)
!4154 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4149, file: !271, line: 1018, type: !93)
!4155 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4149, file: !271, line: 1019, type: !93)
!4156 = !DILocalVariable(name: "arg", arg: 4, scope: !4149, file: !271, line: 1019, type: !93)
!4157 = !DILocation(line: 1018, column: 24, scope: !4149)
!4158 = !DILocation(line: 1018, column: 39, scope: !4149)
!4159 = !DILocation(line: 1019, column: 32, scope: !4149)
!4160 = !DILocation(line: 1019, column: 57, scope: !4149)
!4161 = !DILocalVariable(name: "n", arg: 1, scope: !4162, file: !271, line: 1026, type: !64)
!4162 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !271, file: !271, line: 1026, type: !4163, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!59, !64, !93, !93, !93, !62}
!4165 = !{!4161, !4166, !4167, !4168, !4169, !4170}
!4166 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4162, file: !271, line: 1026, type: !93)
!4167 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4162, file: !271, line: 1027, type: !93)
!4168 = !DILocalVariable(name: "arg", arg: 4, scope: !4162, file: !271, line: 1028, type: !93)
!4169 = !DILocalVariable(name: "argsize", arg: 5, scope: !4162, file: !271, line: 1028, type: !62)
!4170 = !DILocalVariable(name: "o", scope: !4162, file: !271, line: 1030, type: !278)
!4171 = !DILocation(line: 1026, column: 28, scope: !4162, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 1021, column: 10, scope: !4149)
!4173 = !DILocation(line: 1026, column: 43, scope: !4162, inlinedAt: !4172)
!4174 = !DILocation(line: 1027, column: 36, scope: !4162, inlinedAt: !4172)
!4175 = !DILocation(line: 1028, column: 36, scope: !4162, inlinedAt: !4172)
!4176 = !DILocation(line: 1028, column: 48, scope: !4162, inlinedAt: !4172)
!4177 = !DILocation(line: 1030, column: 3, scope: !4162, inlinedAt: !4172)
!4178 = !DILocation(line: 1030, column: 30, scope: !4162, inlinedAt: !4172)
!4179 = !DILocation(line: 1030, column: 26, scope: !4162, inlinedAt: !4172)
!4180 = !DILocation(line: 179, column: 45, scope: !2708, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 1031, column: 3, scope: !4162, inlinedAt: !4172)
!4182 = !DILocation(line: 180, column: 33, scope: !2708, inlinedAt: !4181)
!4183 = !DILocation(line: 180, column: 57, scope: !2708, inlinedAt: !4181)
!4184 = !DILocation(line: 184, column: 6, scope: !2708, inlinedAt: !4181)
!4185 = !DILocation(line: 184, column: 12, scope: !2708, inlinedAt: !4181)
!4186 = !DILocation(line: 185, column: 8, scope: !2724, inlinedAt: !4181)
!4187 = !DILocation(line: 185, column: 23, scope: !2724, inlinedAt: !4181)
!4188 = !DILocation(line: 185, column: 19, scope: !2724, inlinedAt: !4181)
!4189 = !DILocation(line: 186, column: 5, scope: !2724, inlinedAt: !4181)
!4190 = !DILocation(line: 187, column: 6, scope: !2708, inlinedAt: !4181)
!4191 = !DILocation(line: 187, column: 17, scope: !2708, inlinedAt: !4181)
!4192 = !DILocation(line: 188, column: 6, scope: !2708, inlinedAt: !4181)
!4193 = !DILocation(line: 188, column: 18, scope: !2708, inlinedAt: !4181)
!4194 = !DILocation(line: 1032, column: 10, scope: !4162, inlinedAt: !4172)
!4195 = !DILocation(line: 1033, column: 1, scope: !4162, inlinedAt: !4172)
!4196 = !DILocation(line: 1021, column: 3, scope: !4149)
!4197 = !DILocation(line: 1026, column: 28, scope: !4162)
!4198 = !DILocation(line: 1026, column: 43, scope: !4162)
!4199 = !DILocation(line: 1027, column: 36, scope: !4162)
!4200 = !DILocation(line: 1028, column: 36, scope: !4162)
!4201 = !DILocation(line: 1028, column: 48, scope: !4162)
!4202 = !DILocation(line: 1030, column: 3, scope: !4162)
!4203 = !DILocation(line: 1030, column: 30, scope: !4162)
!4204 = !DILocation(line: 1030, column: 26, scope: !4162)
!4205 = !DILocation(line: 179, column: 45, scope: !2708, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 1031, column: 3, scope: !4162)
!4207 = !DILocation(line: 180, column: 33, scope: !2708, inlinedAt: !4206)
!4208 = !DILocation(line: 180, column: 57, scope: !2708, inlinedAt: !4206)
!4209 = !DILocation(line: 184, column: 6, scope: !2708, inlinedAt: !4206)
!4210 = !DILocation(line: 184, column: 12, scope: !2708, inlinedAt: !4206)
!4211 = !DILocation(line: 185, column: 8, scope: !2724, inlinedAt: !4206)
!4212 = !DILocation(line: 185, column: 23, scope: !2724, inlinedAt: !4206)
!4213 = !DILocation(line: 185, column: 19, scope: !2724, inlinedAt: !4206)
!4214 = !DILocation(line: 186, column: 5, scope: !2724, inlinedAt: !4206)
!4215 = !DILocation(line: 187, column: 6, scope: !2708, inlinedAt: !4206)
!4216 = !DILocation(line: 187, column: 17, scope: !2708, inlinedAt: !4206)
!4217 = !DILocation(line: 188, column: 6, scope: !2708, inlinedAt: !4206)
!4218 = !DILocation(line: 188, column: 18, scope: !2708, inlinedAt: !4206)
!4219 = !DILocation(line: 1032, column: 10, scope: !4162)
!4220 = !DILocation(line: 1033, column: 1, scope: !4162)
!4221 = !DILocation(line: 1032, column: 3, scope: !4162)
!4222 = distinct !DISubprogram(name: "quotearg_custom", scope: !271, file: !271, line: 1036, type: !4223, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!59, !93, !93, !93}
!4225 = !{!4226, !4227, !4228}
!4226 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4222, file: !271, line: 1036, type: !93)
!4227 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4222, file: !271, line: 1036, type: !93)
!4228 = !DILocalVariable(name: "arg", arg: 3, scope: !4222, file: !271, line: 1037, type: !93)
!4229 = !DILocation(line: 1036, column: 30, scope: !4222)
!4230 = !DILocation(line: 1036, column: 54, scope: !4222)
!4231 = !DILocation(line: 1037, column: 30, scope: !4222)
!4232 = !DILocation(line: 1018, column: 24, scope: !4149, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 1039, column: 10, scope: !4222)
!4234 = !DILocation(line: 1018, column: 39, scope: !4149, inlinedAt: !4233)
!4235 = !DILocation(line: 1019, column: 32, scope: !4149, inlinedAt: !4233)
!4236 = !DILocation(line: 1019, column: 57, scope: !4149, inlinedAt: !4233)
!4237 = !DILocation(line: 1026, column: 28, scope: !4162, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 1021, column: 10, scope: !4149, inlinedAt: !4233)
!4239 = !DILocation(line: 1026, column: 43, scope: !4162, inlinedAt: !4238)
!4240 = !DILocation(line: 1027, column: 36, scope: !4162, inlinedAt: !4238)
!4241 = !DILocation(line: 1028, column: 36, scope: !4162, inlinedAt: !4238)
!4242 = !DILocation(line: 1028, column: 48, scope: !4162, inlinedAt: !4238)
!4243 = !DILocation(line: 1030, column: 3, scope: !4162, inlinedAt: !4238)
!4244 = !DILocation(line: 1030, column: 30, scope: !4162, inlinedAt: !4238)
!4245 = !DILocation(line: 1030, column: 26, scope: !4162, inlinedAt: !4238)
!4246 = !DILocation(line: 179, column: 45, scope: !2708, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 1031, column: 3, scope: !4162, inlinedAt: !4238)
!4248 = !DILocation(line: 180, column: 33, scope: !2708, inlinedAt: !4247)
!4249 = !DILocation(line: 180, column: 57, scope: !2708, inlinedAt: !4247)
!4250 = !DILocation(line: 184, column: 6, scope: !2708, inlinedAt: !4247)
!4251 = !DILocation(line: 184, column: 12, scope: !2708, inlinedAt: !4247)
!4252 = !DILocation(line: 185, column: 8, scope: !2724, inlinedAt: !4247)
!4253 = !DILocation(line: 185, column: 23, scope: !2724, inlinedAt: !4247)
!4254 = !DILocation(line: 185, column: 19, scope: !2724, inlinedAt: !4247)
!4255 = !DILocation(line: 186, column: 5, scope: !2724, inlinedAt: !4247)
!4256 = !DILocation(line: 187, column: 6, scope: !2708, inlinedAt: !4247)
!4257 = !DILocation(line: 187, column: 17, scope: !2708, inlinedAt: !4247)
!4258 = !DILocation(line: 188, column: 6, scope: !2708, inlinedAt: !4247)
!4259 = !DILocation(line: 188, column: 18, scope: !2708, inlinedAt: !4247)
!4260 = !DILocation(line: 1032, column: 10, scope: !4162, inlinedAt: !4238)
!4261 = !DILocation(line: 1033, column: 1, scope: !4162, inlinedAt: !4238)
!4262 = !DILocation(line: 1039, column: 3, scope: !4222)
!4263 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !271, file: !271, line: 1043, type: !4264, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !4266)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!59, !93, !93, !93, !62}
!4266 = !{!4267, !4268, !4269, !4270}
!4267 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4263, file: !271, line: 1043, type: !93)
!4268 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4263, file: !271, line: 1043, type: !93)
!4269 = !DILocalVariable(name: "arg", arg: 3, scope: !4263, file: !271, line: 1044, type: !93)
!4270 = !DILocalVariable(name: "argsize", arg: 4, scope: !4263, file: !271, line: 1044, type: !62)
!4271 = !DILocation(line: 1043, column: 34, scope: !4263)
!4272 = !DILocation(line: 1043, column: 58, scope: !4263)
!4273 = !DILocation(line: 1044, column: 34, scope: !4263)
!4274 = !DILocation(line: 1044, column: 46, scope: !4263)
!4275 = !DILocation(line: 1026, column: 28, scope: !4162, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 1046, column: 10, scope: !4263)
!4277 = !DILocation(line: 1026, column: 43, scope: !4162, inlinedAt: !4276)
!4278 = !DILocation(line: 1027, column: 36, scope: !4162, inlinedAt: !4276)
!4279 = !DILocation(line: 1028, column: 36, scope: !4162, inlinedAt: !4276)
!4280 = !DILocation(line: 1028, column: 48, scope: !4162, inlinedAt: !4276)
!4281 = !DILocation(line: 1030, column: 3, scope: !4162, inlinedAt: !4276)
!4282 = !DILocation(line: 1030, column: 30, scope: !4162, inlinedAt: !4276)
!4283 = !DILocation(line: 1030, column: 26, scope: !4162, inlinedAt: !4276)
!4284 = !DILocation(line: 179, column: 45, scope: !2708, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 1031, column: 3, scope: !4162, inlinedAt: !4276)
!4286 = !DILocation(line: 180, column: 33, scope: !2708, inlinedAt: !4285)
!4287 = !DILocation(line: 180, column: 57, scope: !2708, inlinedAt: !4285)
!4288 = !DILocation(line: 184, column: 6, scope: !2708, inlinedAt: !4285)
!4289 = !DILocation(line: 184, column: 12, scope: !2708, inlinedAt: !4285)
!4290 = !DILocation(line: 185, column: 8, scope: !2724, inlinedAt: !4285)
!4291 = !DILocation(line: 185, column: 23, scope: !2724, inlinedAt: !4285)
!4292 = !DILocation(line: 185, column: 19, scope: !2724, inlinedAt: !4285)
!4293 = !DILocation(line: 186, column: 5, scope: !2724, inlinedAt: !4285)
!4294 = !DILocation(line: 187, column: 6, scope: !2708, inlinedAt: !4285)
!4295 = !DILocation(line: 187, column: 17, scope: !2708, inlinedAt: !4285)
!4296 = !DILocation(line: 188, column: 6, scope: !2708, inlinedAt: !4285)
!4297 = !DILocation(line: 188, column: 18, scope: !2708, inlinedAt: !4285)
!4298 = !DILocation(line: 1032, column: 10, scope: !4162, inlinedAt: !4276)
!4299 = !DILocation(line: 1033, column: 1, scope: !4162, inlinedAt: !4276)
!4300 = !DILocation(line: 1046, column: 3, scope: !4263)
!4301 = distinct !DISubprogram(name: "quote_n_mem", scope: !271, file: !271, line: 1061, type: !4302, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!93, !64, !93, !62}
!4304 = !{!4305, !4306, !4307}
!4305 = !DILocalVariable(name: "n", arg: 1, scope: !4301, file: !271, line: 1061, type: !64)
!4306 = !DILocalVariable(name: "arg", arg: 2, scope: !4301, file: !271, line: 1061, type: !93)
!4307 = !DILocalVariable(name: "argsize", arg: 3, scope: !4301, file: !271, line: 1061, type: !62)
!4308 = !DILocation(line: 1061, column: 18, scope: !4301)
!4309 = !DILocation(line: 1061, column: 33, scope: !4301)
!4310 = !DILocation(line: 1061, column: 45, scope: !4301)
!4311 = !DILocation(line: 1063, column: 10, scope: !4301)
!4312 = !DILocation(line: 1063, column: 3, scope: !4301)
!4313 = distinct !DISubprogram(name: "quote_mem", scope: !271, file: !271, line: 1067, type: !4314, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !4316)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!93, !93, !62}
!4316 = !{!4317, !4318}
!4317 = !DILocalVariable(name: "arg", arg: 1, scope: !4313, file: !271, line: 1067, type: !93)
!4318 = !DILocalVariable(name: "argsize", arg: 2, scope: !4313, file: !271, line: 1067, type: !62)
!4319 = !DILocation(line: 1067, column: 24, scope: !4313)
!4320 = !DILocation(line: 1067, column: 36, scope: !4313)
!4321 = !DILocation(line: 1061, column: 18, scope: !4301, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 1069, column: 10, scope: !4313)
!4323 = !DILocation(line: 1061, column: 33, scope: !4301, inlinedAt: !4322)
!4324 = !DILocation(line: 1061, column: 45, scope: !4301, inlinedAt: !4322)
!4325 = !DILocation(line: 1063, column: 10, scope: !4301, inlinedAt: !4322)
!4326 = !DILocation(line: 1069, column: 3, scope: !4313)
!4327 = distinct !DISubprogram(name: "quote_n", scope: !271, file: !271, line: 1073, type: !4328, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !4330)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!93, !64, !93}
!4330 = !{!4331, !4332}
!4331 = !DILocalVariable(name: "n", arg: 1, scope: !4327, file: !271, line: 1073, type: !64)
!4332 = !DILocalVariable(name: "arg", arg: 2, scope: !4327, file: !271, line: 1073, type: !93)
!4333 = !DILocation(line: 1073, column: 14, scope: !4327)
!4334 = !DILocation(line: 1073, column: 29, scope: !4327)
!4335 = !DILocation(line: 1061, column: 18, scope: !4301, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 1075, column: 10, scope: !4327)
!4337 = !DILocation(line: 1061, column: 33, scope: !4301, inlinedAt: !4336)
!4338 = !DILocation(line: 1061, column: 45, scope: !4301, inlinedAt: !4336)
!4339 = !DILocation(line: 1063, column: 10, scope: !4301, inlinedAt: !4336)
!4340 = !DILocation(line: 1075, column: 3, scope: !4327)
!4341 = distinct !DISubprogram(name: "quote", scope: !271, file: !271, line: 1079, type: !4342, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !4344)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!93, !93}
!4344 = !{!4345}
!4345 = !DILocalVariable(name: "arg", arg: 1, scope: !4341, file: !271, line: 1079, type: !93)
!4346 = !DILocation(line: 1079, column: 20, scope: !4341)
!4347 = !DILocation(line: 1073, column: 14, scope: !4327, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 1081, column: 10, scope: !4341)
!4349 = !DILocation(line: 1073, column: 29, scope: !4327, inlinedAt: !4348)
!4350 = !DILocation(line: 1061, column: 18, scope: !4301, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 1075, column: 10, scope: !4327, inlinedAt: !4348)
!4352 = !DILocation(line: 1061, column: 33, scope: !4301, inlinedAt: !4351)
!4353 = !DILocation(line: 1061, column: 45, scope: !4301, inlinedAt: !4351)
!4354 = !DILocation(line: 1063, column: 10, scope: !4301, inlinedAt: !4351)
!4355 = !DILocation(line: 1081, column: 3, scope: !4341)
!4356 = distinct !DISubprogram(name: "dup_safer", scope: !4357, file: !4357, line: 31, type: !1393, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !359, retainedNodes: !4358)
!4357 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4358 = !{!4359}
!4359 = !DILocalVariable(name: "fd", arg: 1, scope: !4356, file: !4357, line: 31, type: !64)
!4360 = !DILocation(line: 31, column: 16, scope: !4356)
!4361 = !DILocation(line: 33, column: 10, scope: !4356)
!4362 = !DILocation(line: 33, column: 3, scope: !4356)
!4363 = distinct !DISubprogram(name: "version_etc_arn", scope: !365, file: !365, line: 62, type: !4364, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !361, retainedNodes: !4401)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{null, !4366, !93, !93, !93, !4400, !62}
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4368)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4369)
!4369 = !{!4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4368, file: !102, line: 51, baseType: !64, size: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4368, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4368, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4368, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4368, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4368, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4368, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4368, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4368, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4368, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4368, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4368, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4368, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4368, file: !102, line: 70, baseType: !4384, size: 64, offset: 832)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4368, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4368, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4368, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4368, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4368, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4368, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4368, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4368, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4368, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4368, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4368, file: !102, line: 93, baseType: !4384, size: 64, offset: 1344)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4368, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4368, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4368, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4368, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4407}
!4402 = !DILocalVariable(name: "stream", arg: 1, scope: !4363, file: !365, line: 62, type: !4366)
!4403 = !DILocalVariable(name: "command_name", arg: 2, scope: !4363, file: !365, line: 63, type: !93)
!4404 = !DILocalVariable(name: "package", arg: 3, scope: !4363, file: !365, line: 63, type: !93)
!4405 = !DILocalVariable(name: "version", arg: 4, scope: !4363, file: !365, line: 64, type: !93)
!4406 = !DILocalVariable(name: "authors", arg: 5, scope: !4363, file: !365, line: 65, type: !4400)
!4407 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4363, file: !365, line: 65, type: !62)
!4408 = !DILocation(line: 62, column: 24, scope: !4363)
!4409 = !DILocation(line: 63, column: 30, scope: !4363)
!4410 = !DILocation(line: 63, column: 56, scope: !4363)
!4411 = !DILocation(line: 64, column: 30, scope: !4363)
!4412 = !DILocation(line: 65, column: 39, scope: !4363)
!4413 = !DILocation(line: 65, column: 55, scope: !4363)
!4414 = !DILocation(line: 67, column: 7, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4363, file: !365, line: 67, column: 7)
!4416 = !DILocation(line: 67, column: 7, scope: !4363)
!4417 = !DILocation(line: 68, column: 5, scope: !4415)
!4418 = !DILocation(line: 70, column: 5, scope: !4415)
!4419 = !DILocation(line: 84, column: 3, scope: !4363)
!4420 = !DILocation(line: 86, column: 3, scope: !4363)
!4421 = !DILocation(line: 95, column: 3, scope: !4363)
!4422 = !DILocation(line: 99, column: 7, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4363, file: !365, line: 96, column: 5)
!4424 = !DILocation(line: 102, column: 7, scope: !4423)
!4425 = !DILocation(line: 103, column: 7, scope: !4423)
!4426 = !DILocation(line: 106, column: 7, scope: !4423)
!4427 = !DILocation(line: 107, column: 7, scope: !4423)
!4428 = !DILocation(line: 110, column: 7, scope: !4423)
!4429 = !DILocation(line: 112, column: 7, scope: !4423)
!4430 = !DILocation(line: 117, column: 7, scope: !4423)
!4431 = !DILocation(line: 119, column: 7, scope: !4423)
!4432 = !DILocation(line: 124, column: 7, scope: !4423)
!4433 = !DILocation(line: 126, column: 7, scope: !4423)
!4434 = !DILocation(line: 131, column: 7, scope: !4423)
!4435 = !DILocation(line: 134, column: 7, scope: !4423)
!4436 = !DILocation(line: 139, column: 7, scope: !4423)
!4437 = !DILocation(line: 142, column: 7, scope: !4423)
!4438 = !DILocation(line: 147, column: 7, scope: !4423)
!4439 = !DILocation(line: 151, column: 7, scope: !4423)
!4440 = !DILocation(line: 156, column: 7, scope: !4423)
!4441 = !DILocation(line: 160, column: 7, scope: !4423)
!4442 = !DILocation(line: 167, column: 7, scope: !4423)
!4443 = !DILocation(line: 171, column: 7, scope: !4423)
!4444 = !DILocation(line: 173, column: 1, scope: !4363)
!4445 = distinct !DISubprogram(name: "version_etc_ar", scope: !365, file: !365, line: 180, type: !4446, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !361, retainedNodes: !4448)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{null, !4366, !93, !93, !93, !4400}
!4448 = !{!4449, !4450, !4451, !4452, !4453, !4454}
!4449 = !DILocalVariable(name: "stream", arg: 1, scope: !4445, file: !365, line: 180, type: !4366)
!4450 = !DILocalVariable(name: "command_name", arg: 2, scope: !4445, file: !365, line: 181, type: !93)
!4451 = !DILocalVariable(name: "package", arg: 3, scope: !4445, file: !365, line: 181, type: !93)
!4452 = !DILocalVariable(name: "version", arg: 4, scope: !4445, file: !365, line: 182, type: !93)
!4453 = !DILocalVariable(name: "authors", arg: 5, scope: !4445, file: !365, line: 182, type: !4400)
!4454 = !DILocalVariable(name: "n_authors", scope: !4445, file: !365, line: 184, type: !62)
!4455 = !DILocation(line: 180, column: 23, scope: !4445)
!4456 = !DILocation(line: 181, column: 29, scope: !4445)
!4457 = !DILocation(line: 181, column: 55, scope: !4445)
!4458 = !DILocation(line: 182, column: 29, scope: !4445)
!4459 = !DILocation(line: 182, column: 59, scope: !4445)
!4460 = !DILocation(line: 184, column: 10, scope: !4445)
!4461 = !DILocation(line: 186, column: 8, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4445, file: !365, line: 186, column: 3)
!4463 = !DILocation(line: 0, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4462, file: !365, line: 186, column: 3)
!4465 = !DILocation(line: 186, column: 23, scope: !4464)
!4466 = !DILocation(line: 186, column: 3, scope: !4462)
!4467 = !DILocation(line: 186, column: 52, scope: !4464)
!4468 = distinct !{!4468, !4466, !4469}
!4469 = !DILocation(line: 187, column: 5, scope: !4462)
!4470 = !DILocation(line: 188, column: 3, scope: !4445)
!4471 = !DILocation(line: 189, column: 1, scope: !4445)
!4472 = distinct !DISubprogram(name: "version_etc_va", scope: !365, file: !365, line: 196, type: !4473, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !361, retainedNodes: !4482)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{null, !4366, !93, !93, !93, !4475}
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !362, line: 189, size: 192, elements: !4477)
!4477 = !{!4478, !4479, !4480, !4481}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4476, file: !362, line: 189, baseType: !7, size: 32)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4476, file: !362, line: 189, baseType: !7, size: 32, offset: 32)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4476, file: !362, line: 189, baseType: !61, size: 64, offset: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4476, file: !362, line: 189, baseType: !61, size: 64, offset: 128)
!4482 = !{!4483, !4484, !4485, !4486, !4487, !4488, !4489}
!4483 = !DILocalVariable(name: "stream", arg: 1, scope: !4472, file: !365, line: 196, type: !4366)
!4484 = !DILocalVariable(name: "command_name", arg: 2, scope: !4472, file: !365, line: 197, type: !93)
!4485 = !DILocalVariable(name: "package", arg: 3, scope: !4472, file: !365, line: 197, type: !93)
!4486 = !DILocalVariable(name: "version", arg: 4, scope: !4472, file: !365, line: 198, type: !93)
!4487 = !DILocalVariable(name: "authors", arg: 5, scope: !4472, file: !365, line: 198, type: !4475)
!4488 = !DILocalVariable(name: "n_authors", scope: !4472, file: !365, line: 200, type: !62)
!4489 = !DILocalVariable(name: "authtab", scope: !4472, file: !365, line: 201, type: !4490)
!4490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 640, elements: !274)
!4491 = !DILocation(line: 196, column: 23, scope: !4472)
!4492 = !DILocation(line: 197, column: 29, scope: !4472)
!4493 = !DILocation(line: 197, column: 55, scope: !4472)
!4494 = !DILocation(line: 198, column: 29, scope: !4472)
!4495 = !DILocation(line: 198, column: 46, scope: !4472)
!4496 = !DILocation(line: 201, column: 3, scope: !4472)
!4497 = !DILocation(line: 201, column: 15, scope: !4472)
!4498 = !DILocation(line: 200, column: 10, scope: !4472)
!4499 = !DILocation(line: 205, column: 35, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4501, file: !365, line: 203, column: 3)
!4501 = distinct !DILexicalBlock(scope: !4472, file: !365, line: 203, column: 3)
!4502 = !DILocation(line: 205, column: 14, scope: !4500)
!4503 = !DILocation(line: 205, column: 33, scope: !4500)
!4504 = !DILocation(line: 205, column: 67, scope: !4500)
!4505 = !DILocation(line: 203, column: 3, scope: !4501)
!4506 = !DILocation(line: 0, scope: !4500)
!4507 = !DILocation(line: 208, column: 3, scope: !4472)
!4508 = !DILocation(line: 210, column: 1, scope: !4472)
!4509 = distinct !DISubprogram(name: "version_etc", scope: !365, file: !365, line: 227, type: !4510, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !361, retainedNodes: !4512)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{null, !4366, !93, !93, !93, null}
!4512 = !{!4513, !4514, !4515, !4516, !4517}
!4513 = !DILocalVariable(name: "stream", arg: 1, scope: !4509, file: !365, line: 227, type: !4366)
!4514 = !DILocalVariable(name: "command_name", arg: 2, scope: !4509, file: !365, line: 228, type: !93)
!4515 = !DILocalVariable(name: "package", arg: 3, scope: !4509, file: !365, line: 228, type: !93)
!4516 = !DILocalVariable(name: "version", arg: 4, scope: !4509, file: !365, line: 229, type: !93)
!4517 = !DILocalVariable(name: "authors", scope: !4509, file: !365, line: 231, type: !4518)
!4518 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2428, line: 52, baseType: !4519)
!4519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !333, line: 48, baseType: !4520)
!4520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !362, line: 231, baseType: !4521)
!4521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4476, size: 192, elements: !131)
!4522 = !DILocation(line: 227, column: 20, scope: !4509)
!4523 = !DILocation(line: 228, column: 26, scope: !4509)
!4524 = !DILocation(line: 228, column: 52, scope: !4509)
!4525 = !DILocation(line: 229, column: 26, scope: !4509)
!4526 = !DILocation(line: 231, column: 3, scope: !4509)
!4527 = !DILocation(line: 231, column: 11, scope: !4509)
!4528 = !DILocation(line: 233, column: 3, scope: !4509)
!4529 = !DILocation(line: 234, column: 3, scope: !4509)
!4530 = !DILocation(line: 235, column: 3, scope: !4509)
!4531 = !DILocation(line: 236, column: 1, scope: !4509)
!4532 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !365, file: !365, line: 239, type: !837, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !361, retainedNodes: !221)
!4533 = !DILocation(line: 245, column: 3, scope: !4532)
!4534 = !DILocation(line: 251, column: 3, scope: !4532)
!4535 = !DILocation(line: 256, column: 3, scope: !4532)
!4536 = !DILocation(line: 258, column: 1, scope: !4532)
!4537 = distinct !DISubprogram(name: "xnmalloc", scope: !373, file: !373, line: 99, type: !4538, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !369, retainedNodes: !4540)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!61, !62, !62}
!4540 = !{!4541, !4542}
!4541 = !DILocalVariable(name: "n", arg: 1, scope: !4537, file: !373, line: 99, type: !62)
!4542 = !DILocalVariable(name: "s", arg: 2, scope: !4537, file: !373, line: 99, type: !62)
!4543 = !DILocation(line: 99, column: 18, scope: !4537)
!4544 = !DILocation(line: 99, column: 28, scope: !4537)
!4545 = !DILocation(line: 101, column: 7, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4537, file: !373, line: 101, column: 7)
!4547 = !DILocation(line: 101, column: 7, scope: !4537)
!4548 = !DILocation(line: 102, column: 5, scope: !4546)
!4549 = !DILocation(line: 103, column: 21, scope: !4537)
!4550 = !DILocalVariable(name: "n", arg: 1, scope: !4551, file: !4552, line: 39, type: !62)
!4551 = distinct !DISubprogram(name: "xmalloc", scope: !4552, file: !4552, line: 39, type: !4553, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !369, retainedNodes: !4555)
!4552 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!61, !62}
!4555 = !{!4550, !4556}
!4556 = !DILocalVariable(name: "p", scope: !4551, file: !4552, line: 41, type: !61)
!4557 = !DILocation(line: 39, column: 17, scope: !4551, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 103, column: 10, scope: !4537)
!4559 = !DILocation(line: 41, column: 13, scope: !4551, inlinedAt: !4558)
!4560 = !DILocation(line: 41, column: 9, scope: !4551, inlinedAt: !4558)
!4561 = !DILocation(line: 42, column: 8, scope: !4562, inlinedAt: !4558)
!4562 = distinct !DILexicalBlock(scope: !4551, file: !4552, line: 42, column: 7)
!4563 = !DILocation(line: 42, column: 15, scope: !4562, inlinedAt: !4558)
!4564 = !DILocation(line: 42, column: 10, scope: !4562, inlinedAt: !4558)
!4565 = !DILocation(line: 43, column: 5, scope: !4562, inlinedAt: !4558)
!4566 = !DILocation(line: 103, column: 3, scope: !4537)
!4567 = !DILocation(line: 39, column: 17, scope: !4551)
!4568 = !DILocation(line: 41, column: 13, scope: !4551)
!4569 = !DILocation(line: 41, column: 9, scope: !4551)
!4570 = !DILocation(line: 42, column: 8, scope: !4562)
!4571 = !DILocation(line: 42, column: 15, scope: !4562)
!4572 = !DILocation(line: 42, column: 10, scope: !4562)
!4573 = !DILocation(line: 43, column: 5, scope: !4562)
!4574 = !DILocation(line: 44, column: 3, scope: !4551)
!4575 = distinct !DISubprogram(name: "xnrealloc", scope: !373, file: !373, line: 112, type: !4576, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !369, retainedNodes: !4578)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!61, !61, !62, !62}
!4578 = !{!4579, !4580, !4581}
!4579 = !DILocalVariable(name: "p", arg: 1, scope: !4575, file: !373, line: 112, type: !61)
!4580 = !DILocalVariable(name: "n", arg: 2, scope: !4575, file: !373, line: 112, type: !62)
!4581 = !DILocalVariable(name: "s", arg: 3, scope: !4575, file: !373, line: 112, type: !62)
!4582 = !DILocation(line: 112, column: 18, scope: !4575)
!4583 = !DILocation(line: 112, column: 28, scope: !4575)
!4584 = !DILocation(line: 112, column: 38, scope: !4575)
!4585 = !DILocation(line: 114, column: 7, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4575, file: !373, line: 114, column: 7)
!4587 = !DILocation(line: 114, column: 7, scope: !4575)
!4588 = !DILocation(line: 115, column: 5, scope: !4586)
!4589 = !DILocation(line: 116, column: 25, scope: !4575)
!4590 = !DILocalVariable(name: "p", arg: 1, scope: !4591, file: !4552, line: 51, type: !61)
!4591 = distinct !DISubprogram(name: "xrealloc", scope: !4552, file: !4552, line: 51, type: !4592, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !369, retainedNodes: !4594)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!61, !61, !62}
!4594 = !{!4590, !4595}
!4595 = !DILocalVariable(name: "n", arg: 2, scope: !4591, file: !4552, line: 51, type: !62)
!4596 = !DILocation(line: 51, column: 17, scope: !4591, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 116, column: 10, scope: !4575)
!4598 = !DILocation(line: 51, column: 27, scope: !4591, inlinedAt: !4597)
!4599 = !DILocation(line: 53, column: 8, scope: !4600, inlinedAt: !4597)
!4600 = distinct !DILexicalBlock(scope: !4591, file: !4552, line: 53, column: 7)
!4601 = !DILocation(line: 53, column: 13, scope: !4600, inlinedAt: !4597)
!4602 = !DILocation(line: 53, column: 10, scope: !4600, inlinedAt: !4597)
!4603 = !DILocation(line: 57, column: 7, scope: !4604, inlinedAt: !4597)
!4604 = distinct !DILexicalBlock(scope: !4600, file: !4552, line: 54, column: 5)
!4605 = !DILocation(line: 58, column: 7, scope: !4604, inlinedAt: !4597)
!4606 = !DILocation(line: 61, column: 7, scope: !4591, inlinedAt: !4597)
!4607 = !DILocation(line: 62, column: 8, scope: !4608, inlinedAt: !4597)
!4608 = distinct !DILexicalBlock(scope: !4591, file: !4552, line: 62, column: 7)
!4609 = !DILocation(line: 62, column: 13, scope: !4608, inlinedAt: !4597)
!4610 = !DILocation(line: 62, column: 10, scope: !4608, inlinedAt: !4597)
!4611 = !DILocation(line: 63, column: 5, scope: !4608, inlinedAt: !4597)
!4612 = !DILocation(line: 0, scope: !4591, inlinedAt: !4597)
!4613 = !DILocation(line: 116, column: 3, scope: !4575)
!4614 = !DILocation(line: 51, column: 17, scope: !4591)
!4615 = !DILocation(line: 51, column: 27, scope: !4591)
!4616 = !DILocation(line: 53, column: 8, scope: !4600)
!4617 = !DILocation(line: 53, column: 13, scope: !4600)
!4618 = !DILocation(line: 53, column: 10, scope: !4600)
!4619 = !DILocation(line: 57, column: 7, scope: !4604)
!4620 = !DILocation(line: 58, column: 7, scope: !4604)
!4621 = !DILocation(line: 61, column: 7, scope: !4591)
!4622 = !DILocation(line: 62, column: 8, scope: !4608)
!4623 = !DILocation(line: 62, column: 13, scope: !4608)
!4624 = !DILocation(line: 62, column: 10, scope: !4608)
!4625 = !DILocation(line: 63, column: 5, scope: !4608)
!4626 = !DILocation(line: 0, scope: !4591)
!4627 = !DILocation(line: 65, column: 1, scope: !4591)
!4628 = !DILocation(line: 174, column: 19, scope: !374)
!4629 = !DILocation(line: 174, column: 30, scope: !374)
!4630 = !DILocation(line: 174, column: 41, scope: !374)
!4631 = !DILocation(line: 176, column: 14, scope: !374)
!4632 = !DILocation(line: 176, column: 10, scope: !374)
!4633 = !DILocation(line: 178, column: 9, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !374, file: !373, line: 178, column: 7)
!4635 = !DILocation(line: 178, column: 7, scope: !374)
!4636 = !DILocation(line: 180, column: 13, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4638, file: !373, line: 180, column: 11)
!4638 = distinct !DILexicalBlock(scope: !4634, file: !373, line: 179, column: 5)
!4639 = !DILocation(line: 180, column: 11, scope: !4638)
!4640 = !DILocation(line: 188, column: 30, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4637, file: !373, line: 181, column: 9)
!4642 = !DILocation(line: 189, column: 16, scope: !4641)
!4643 = !DILocation(line: 189, column: 13, scope: !4641)
!4644 = !DILocation(line: 190, column: 9, scope: !4641)
!4645 = !DILocation(line: 0, scope: !4641)
!4646 = !DILocation(line: 191, column: 11, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4638, file: !373, line: 191, column: 11)
!4648 = !DILocation(line: 191, column: 11, scope: !4638)
!4649 = !DILocation(line: 206, column: 7, scope: !374)
!4650 = !DILocation(line: 207, column: 25, scope: !374)
!4651 = !DILocation(line: 51, column: 17, scope: !4591, inlinedAt: !4652)
!4652 = distinct !DILocation(line: 207, column: 10, scope: !374)
!4653 = !DILocation(line: 51, column: 27, scope: !4591, inlinedAt: !4652)
!4654 = !DILocation(line: 53, column: 10, scope: !4600, inlinedAt: !4652)
!4655 = !DILocation(line: 192, column: 9, scope: !4647)
!4656 = !DILocation(line: 200, column: 69, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4658, file: !373, line: 200, column: 11)
!4658 = distinct !DILexicalBlock(scope: !4634, file: !373, line: 195, column: 5)
!4659 = !DILocation(line: 201, column: 11, scope: !4657)
!4660 = !DILocation(line: 200, column: 11, scope: !4658)
!4661 = !DILocation(line: 202, column: 9, scope: !4657)
!4662 = !DILocation(line: 203, column: 14, scope: !4658)
!4663 = !DILocation(line: 203, column: 18, scope: !4658)
!4664 = !DILocation(line: 203, column: 9, scope: !4658)
!4665 = !DILocation(line: 53, column: 8, scope: !4600, inlinedAt: !4652)
!4666 = !DILocation(line: 57, column: 7, scope: !4604, inlinedAt: !4652)
!4667 = !DILocation(line: 58, column: 7, scope: !4604, inlinedAt: !4652)
!4668 = !DILocation(line: 61, column: 7, scope: !4591, inlinedAt: !4652)
!4669 = !DILocation(line: 62, column: 8, scope: !4608, inlinedAt: !4652)
!4670 = !DILocation(line: 62, column: 13, scope: !4608, inlinedAt: !4652)
!4671 = !DILocation(line: 62, column: 10, scope: !4608, inlinedAt: !4652)
!4672 = !DILocation(line: 63, column: 5, scope: !4608, inlinedAt: !4652)
!4673 = !DILocation(line: 0, scope: !4591, inlinedAt: !4652)
!4674 = !DILocation(line: 207, column: 3, scope: !374)
!4675 = distinct !DISubprogram(name: "xcharalloc", scope: !373, file: !373, line: 216, type: !3642, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !369, retainedNodes: !4676)
!4676 = !{!4677}
!4677 = !DILocalVariable(name: "n", arg: 1, scope: !4675, file: !373, line: 216, type: !62)
!4678 = !DILocation(line: 216, column: 20, scope: !4675)
!4679 = !DILocation(line: 39, column: 17, scope: !4551, inlinedAt: !4680)
!4680 = distinct !DILocation(line: 218, column: 10, scope: !4675)
!4681 = !DILocation(line: 41, column: 13, scope: !4551, inlinedAt: !4680)
!4682 = !DILocation(line: 41, column: 9, scope: !4551, inlinedAt: !4680)
!4683 = !DILocation(line: 42, column: 8, scope: !4562, inlinedAt: !4680)
!4684 = !DILocation(line: 42, column: 15, scope: !4562, inlinedAt: !4680)
!4685 = !DILocation(line: 42, column: 10, scope: !4562, inlinedAt: !4680)
!4686 = !DILocation(line: 43, column: 5, scope: !4562, inlinedAt: !4680)
!4687 = !DILocation(line: 218, column: 3, scope: !4675)
!4688 = distinct !DISubprogram(name: "x2realloc", scope: !4552, file: !4552, line: 74, type: !4689, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !369, retainedNodes: !4691)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!61, !61, !377}
!4691 = !{!4692, !4693}
!4692 = !DILocalVariable(name: "p", arg: 1, scope: !4688, file: !4552, line: 74, type: !61)
!4693 = !DILocalVariable(name: "pn", arg: 2, scope: !4688, file: !4552, line: 74, type: !377)
!4694 = !DILocation(line: 74, column: 18, scope: !4688)
!4695 = !DILocation(line: 74, column: 29, scope: !4688)
!4696 = !DILocation(line: 174, column: 19, scope: !374, inlinedAt: !4697)
!4697 = distinct !DILocation(line: 76, column: 10, scope: !4688)
!4698 = !DILocation(line: 174, column: 30, scope: !374, inlinedAt: !4697)
!4699 = !DILocation(line: 174, column: 41, scope: !374, inlinedAt: !4697)
!4700 = !DILocation(line: 176, column: 14, scope: !374, inlinedAt: !4697)
!4701 = !DILocation(line: 176, column: 10, scope: !374, inlinedAt: !4697)
!4702 = !DILocation(line: 178, column: 9, scope: !4634, inlinedAt: !4697)
!4703 = !DILocation(line: 178, column: 7, scope: !374, inlinedAt: !4697)
!4704 = !DILocation(line: 180, column: 13, scope: !4637, inlinedAt: !4697)
!4705 = !DILocation(line: 180, column: 11, scope: !4638, inlinedAt: !4697)
!4706 = !DILocation(line: 191, column: 11, scope: !4647, inlinedAt: !4697)
!4707 = !DILocation(line: 191, column: 11, scope: !4638, inlinedAt: !4697)
!4708 = !DILocation(line: 206, column: 7, scope: !374, inlinedAt: !4697)
!4709 = !DILocation(line: 51, column: 17, scope: !4591, inlinedAt: !4710)
!4710 = distinct !DILocation(line: 207, column: 10, scope: !374, inlinedAt: !4697)
!4711 = !DILocation(line: 51, column: 27, scope: !4591, inlinedAt: !4710)
!4712 = !DILocation(line: 53, column: 10, scope: !4600, inlinedAt: !4710)
!4713 = !DILocation(line: 192, column: 9, scope: !4647, inlinedAt: !4697)
!4714 = !DILocation(line: 201, column: 11, scope: !4657, inlinedAt: !4697)
!4715 = !DILocation(line: 200, column: 11, scope: !4658, inlinedAt: !4697)
!4716 = !DILocation(line: 202, column: 9, scope: !4657, inlinedAt: !4697)
!4717 = !DILocation(line: 203, column: 14, scope: !4658, inlinedAt: !4697)
!4718 = !DILocation(line: 203, column: 18, scope: !4658, inlinedAt: !4697)
!4719 = !DILocation(line: 203, column: 9, scope: !4658, inlinedAt: !4697)
!4720 = !DILocation(line: 53, column: 8, scope: !4600, inlinedAt: !4710)
!4721 = !DILocation(line: 57, column: 7, scope: !4604, inlinedAt: !4710)
!4722 = !DILocation(line: 58, column: 7, scope: !4604, inlinedAt: !4710)
!4723 = !DILocation(line: 61, column: 7, scope: !4591, inlinedAt: !4710)
!4724 = !DILocation(line: 62, column: 8, scope: !4608, inlinedAt: !4710)
!4725 = !DILocation(line: 62, column: 13, scope: !4608, inlinedAt: !4710)
!4726 = !DILocation(line: 62, column: 10, scope: !4608, inlinedAt: !4710)
!4727 = !DILocation(line: 63, column: 5, scope: !4608, inlinedAt: !4710)
!4728 = !DILocation(line: 0, scope: !4591, inlinedAt: !4710)
!4729 = !DILocation(line: 76, column: 3, scope: !4688)
!4730 = distinct !DISubprogram(name: "xzalloc", scope: !4552, file: !4552, line: 84, type: !4553, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !369, retainedNodes: !4731)
!4731 = !{!4732}
!4732 = !DILocalVariable(name: "s", arg: 1, scope: !4730, file: !4552, line: 84, type: !62)
!4733 = !DILocation(line: 84, column: 17, scope: !4730)
!4734 = !DILocation(line: 39, column: 17, scope: !4551, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 86, column: 18, scope: !4730)
!4736 = !DILocation(line: 41, column: 13, scope: !4551, inlinedAt: !4735)
!4737 = !DILocation(line: 41, column: 9, scope: !4551, inlinedAt: !4735)
!4738 = !DILocation(line: 42, column: 8, scope: !4562, inlinedAt: !4735)
!4739 = !DILocation(line: 42, column: 15, scope: !4562, inlinedAt: !4735)
!4740 = !DILocation(line: 42, column: 10, scope: !4562, inlinedAt: !4735)
!4741 = !DILocation(line: 43, column: 5, scope: !4562, inlinedAt: !4735)
!4742 = !DILocation(line: 86, column: 10, scope: !4730)
!4743 = !DILocation(line: 86, column: 3, scope: !4730)
!4744 = distinct !DISubprogram(name: "xcalloc", scope: !4552, file: !4552, line: 93, type: !4538, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !369, retainedNodes: !4745)
!4745 = !{!4746, !4747, !4748}
!4746 = !DILocalVariable(name: "n", arg: 1, scope: !4744, file: !4552, line: 93, type: !62)
!4747 = !DILocalVariable(name: "s", arg: 2, scope: !4744, file: !4552, line: 93, type: !62)
!4748 = !DILocalVariable(name: "p", scope: !4744, file: !4552, line: 95, type: !61)
!4749 = !DILocation(line: 93, column: 17, scope: !4744)
!4750 = !DILocation(line: 93, column: 27, scope: !4744)
!4751 = !DILocation(line: 100, column: 7, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4744, file: !4552, line: 100, column: 7)
!4753 = !DILocation(line: 101, column: 7, scope: !4752)
!4754 = !DILocation(line: 101, column: 18, scope: !4752)
!4755 = !DILocation(line: 95, column: 9, scope: !4744)
!4756 = !DILocation(line: 101, column: 16, scope: !4752)
!4757 = !DILocation(line: 100, column: 7, scope: !4744)
!4758 = !DILocation(line: 102, column: 5, scope: !4752)
!4759 = !DILocation(line: 103, column: 3, scope: !4744)
!4760 = distinct !DISubprogram(name: "xmemdup", scope: !4552, file: !4552, line: 111, type: !924, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !369, retainedNodes: !4761)
!4761 = !{!4762, !4763}
!4762 = !DILocalVariable(name: "p", arg: 1, scope: !4760, file: !4552, line: 111, type: !926)
!4763 = !DILocalVariable(name: "s", arg: 2, scope: !4760, file: !4552, line: 111, type: !62)
!4764 = !DILocation(line: 111, column: 22, scope: !4760)
!4765 = !DILocation(line: 111, column: 32, scope: !4760)
!4766 = !DILocation(line: 39, column: 17, scope: !4551, inlinedAt: !4767)
!4767 = distinct !DILocation(line: 113, column: 18, scope: !4760)
!4768 = !DILocation(line: 41, column: 13, scope: !4551, inlinedAt: !4767)
!4769 = !DILocation(line: 41, column: 9, scope: !4551, inlinedAt: !4767)
!4770 = !DILocation(line: 42, column: 8, scope: !4562, inlinedAt: !4767)
!4771 = !DILocation(line: 42, column: 15, scope: !4562, inlinedAt: !4767)
!4772 = !DILocation(line: 42, column: 10, scope: !4562, inlinedAt: !4767)
!4773 = !DILocation(line: 43, column: 5, scope: !4562, inlinedAt: !4767)
!4774 = !DILocation(line: 113, column: 10, scope: !4760)
!4775 = !DILocation(line: 113, column: 3, scope: !4760)
!4776 = distinct !DISubprogram(name: "xstrdup", scope: !4552, file: !4552, line: 119, type: !3846, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !369, retainedNodes: !4777)
!4777 = !{!4778}
!4778 = !DILocalVariable(name: "string", arg: 1, scope: !4776, file: !4552, line: 119, type: !93)
!4779 = !DILocation(line: 119, column: 22, scope: !4776)
!4780 = !DILocation(line: 121, column: 27, scope: !4776)
!4781 = !DILocation(line: 121, column: 43, scope: !4776)
!4782 = !DILocation(line: 111, column: 22, scope: !4760, inlinedAt: !4783)
!4783 = distinct !DILocation(line: 121, column: 10, scope: !4776)
!4784 = !DILocation(line: 111, column: 32, scope: !4760, inlinedAt: !4783)
!4785 = !DILocation(line: 39, column: 17, scope: !4551, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 113, column: 18, scope: !4760, inlinedAt: !4783)
!4787 = !DILocation(line: 41, column: 13, scope: !4551, inlinedAt: !4786)
!4788 = !DILocation(line: 41, column: 9, scope: !4551, inlinedAt: !4786)
!4789 = !DILocation(line: 42, column: 8, scope: !4562, inlinedAt: !4786)
!4790 = !DILocation(line: 42, column: 15, scope: !4562, inlinedAt: !4786)
!4791 = !DILocation(line: 42, column: 10, scope: !4562, inlinedAt: !4786)
!4792 = !DILocation(line: 43, column: 5, scope: !4562, inlinedAt: !4786)
!4793 = !DILocation(line: 113, column: 10, scope: !4760, inlinedAt: !4783)
!4794 = !DILocation(line: 121, column: 3, scope: !4776)
!4795 = distinct !DISubprogram(name: "xalloc_die", scope: !4796, file: !4796, line: 32, type: !837, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !386, retainedNodes: !221)
!4796 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4797 = !DILocation(line: 34, column: 10, scope: !4795)
!4798 = !DILocation(line: 34, column: 33, scope: !4795)
!4799 = !DILocation(line: 34, column: 3, scope: !4795)
!4800 = !DILocation(line: 40, column: 3, scope: !4795)
!4801 = distinct !DISubprogram(name: "rpl_calloc", scope: !4802, file: !4802, line: 42, type: !4538, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !388, retainedNodes: !4803)
!4802 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4803 = !{!4804, !4805, !4806, !4807}
!4804 = !DILocalVariable(name: "n", arg: 1, scope: !4801, file: !4802, line: 42, type: !62)
!4805 = !DILocalVariable(name: "s", arg: 2, scope: !4801, file: !4802, line: 42, type: !62)
!4806 = !DILocalVariable(name: "result", scope: !4801, file: !4802, line: 44, type: !61)
!4807 = !DILocalVariable(name: "bytes", scope: !4808, file: !4802, line: 56, type: !62)
!4808 = distinct !DILexicalBlock(scope: !4809, file: !4802, line: 53, column: 5)
!4809 = distinct !DILexicalBlock(scope: !4801, file: !4802, line: 47, column: 7)
!4810 = !DILocation(line: 42, column: 20, scope: !4801)
!4811 = !DILocation(line: 42, column: 30, scope: !4801)
!4812 = !DILocation(line: 47, column: 9, scope: !4809)
!4813 = !DILocation(line: 47, column: 19, scope: !4809)
!4814 = !DILocation(line: 47, column: 14, scope: !4809)
!4815 = !DILocation(line: 56, column: 24, scope: !4808)
!4816 = !DILocation(line: 56, column: 14, scope: !4808)
!4817 = !DILocation(line: 57, column: 17, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4808, file: !4802, line: 57, column: 11)
!4819 = !DILocation(line: 57, column: 21, scope: !4818)
!4820 = !DILocation(line: 57, column: 11, scope: !4808)
!4821 = !DILocation(line: 59, column: 11, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4818, file: !4802, line: 58, column: 9)
!4823 = !DILocation(line: 59, column: 17, scope: !4822)
!4824 = !DILocation(line: 65, column: 12, scope: !4801)
!4825 = !DILocation(line: 44, column: 9, scope: !4801)
!4826 = !DILocation(line: 72, column: 3, scope: !4801)
!4827 = !DILocation(line: 0, scope: !4822)
!4828 = !DILocation(line: 73, column: 1, scope: !4801)
!4829 = distinct !DISubprogram(name: "rpl_fclose", scope: !4830, file: !4830, line: 58, type: !4831, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !390, retainedNodes: !4867)
!4830 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!64, !4833}
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4835)
!4835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4836)
!4836 = !{!4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4835, file: !102, line: 51, baseType: !64, size: 32)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4835, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4835, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4835, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4835, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4835, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4835, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4835, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4835, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4835, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4835, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4835, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4835, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4835, file: !102, line: 70, baseType: !4851, size: 64, offset: 832)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4835, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4835, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4835, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4835, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4835, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4835, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4835, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4835, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4835, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4835, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4835, file: !102, line: 93, baseType: !4851, size: 64, offset: 1344)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4835, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4835, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4835, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4835, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4867 = !{!4868, !4869, !4870, !4871}
!4868 = !DILocalVariable(name: "fp", arg: 1, scope: !4829, file: !4830, line: 58, type: !4833)
!4869 = !DILocalVariable(name: "saved_errno", scope: !4829, file: !4830, line: 60, type: !64)
!4870 = !DILocalVariable(name: "fd", scope: !4829, file: !4830, line: 61, type: !64)
!4871 = !DILocalVariable(name: "result", scope: !4829, file: !4830, line: 62, type: !64)
!4872 = !DILocation(line: 58, column: 19, scope: !4829)
!4873 = !DILocation(line: 60, column: 7, scope: !4829)
!4874 = !DILocation(line: 62, column: 7, scope: !4829)
!4875 = !DILocation(line: 65, column: 8, scope: !4829)
!4876 = !DILocation(line: 61, column: 7, scope: !4829)
!4877 = !DILocation(line: 66, column: 10, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4829, file: !4830, line: 66, column: 7)
!4879 = !DILocation(line: 66, column: 7, scope: !4829)
!4880 = !DILocation(line: 67, column: 12, scope: !4878)
!4881 = !DILocation(line: 67, column: 5, scope: !4878)
!4882 = !DILocation(line: 72, column: 9, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4829, file: !4830, line: 72, column: 7)
!4884 = !DILocation(line: 72, column: 23, scope: !4883)
!4885 = !DILocation(line: 72, column: 33, scope: !4883)
!4886 = !DILocation(line: 72, column: 26, scope: !4883)
!4887 = !DILocation(line: 72, column: 59, scope: !4883)
!4888 = !DILocation(line: 73, column: 7, scope: !4883)
!4889 = !DILocation(line: 73, column: 10, scope: !4883)
!4890 = !DILocation(line: 72, column: 7, scope: !4829)
!4891 = !DILocation(line: 100, column: 12, scope: !4829)
!4892 = !DILocation(line: 105, column: 7, scope: !4829)
!4893 = !DILocation(line: 74, column: 19, scope: !4883)
!4894 = !DILocation(line: 105, column: 19, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4829, file: !4830, line: 105, column: 7)
!4896 = !DILocation(line: 107, column: 13, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4895, file: !4830, line: 106, column: 5)
!4898 = !DILocation(line: 109, column: 5, scope: !4897)
!4899 = !DILocation(line: 0, scope: !4829)
!4900 = !DILocation(line: 112, column: 1, scope: !4829)
!4901 = !DILocation(line: 276, column: 16, scope: !321)
!4902 = !DILocation(line: 276, column: 24, scope: !321)
!4903 = !DILocation(line: 278, column: 3, scope: !321)
!4904 = !DILocation(line: 278, column: 11, scope: !321)
!4905 = !DILocation(line: 279, column: 7, scope: !321)
!4906 = !DILocation(line: 280, column: 3, scope: !321)
!4907 = !DILocation(line: 281, column: 3, scope: !321)
!4908 = !DILocation(line: 0, scope: !353)
!4909 = !DILocation(line: 326, column: 22, scope: !344)
!4910 = !DILocation(line: 326, column: 13, scope: !344)
!4911 = !DILocation(line: 340, column: 18, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !344, file: !322, line: 340, column: 13)
!4913 = !DILocation(line: 340, column: 15, scope: !4912)
!4914 = !DILocation(line: 340, column: 13, scope: !344)
!4915 = !DILocation(line: 342, column: 22, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4912, file: !322, line: 341, column: 11)
!4917 = !DILocation(line: 343, column: 19, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4916, file: !322, line: 343, column: 17)
!4919 = !DILocation(line: 343, column: 29, scope: !4918)
!4920 = !DILocation(line: 343, column: 32, scope: !4918)
!4921 = !DILocation(line: 343, column: 38, scope: !4918)
!4922 = !DILocation(line: 343, column: 17, scope: !4916)
!4923 = !DILocation(line: 345, column: 36, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4918, file: !322, line: 344, column: 15)
!4925 = !DILocation(line: 361, column: 25, scope: !348)
!4926 = !DILocation(line: 353, column: 26, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4918, file: !322, line: 352, column: 15)
!4928 = !DILocation(line: 354, column: 28, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4927, file: !322, line: 354, column: 21)
!4930 = !DILocation(line: 354, column: 21, scope: !4927)
!4931 = !DILocation(line: 356, column: 36, scope: !4927)
!4932 = !DILocation(line: 360, column: 20, scope: !4912)
!4933 = !DILocation(line: 361, column: 28, scope: !348)
!4934 = !DILocation(line: 0, scope: !4912)
!4935 = !DILocation(line: 361, column: 15, scope: !348)
!4936 = !DILocation(line: 363, column: 25, scope: !347)
!4937 = !DILocation(line: 363, column: 17, scope: !347)
!4938 = !DILocation(line: 364, column: 23, scope: !351)
!4939 = !DILocation(line: 364, column: 27, scope: !351)
!4940 = !DILocation(line: 364, column: 60, scope: !351)
!4941 = !DILocation(line: 364, column: 30, scope: !351)
!4942 = !DILocation(line: 364, column: 74, scope: !351)
!4943 = !DILocation(line: 364, column: 17, scope: !347)
!4944 = !DILocation(line: 366, column: 35, scope: !350)
!4945 = !DILocation(line: 366, column: 21, scope: !350)
!4946 = !DILocation(line: 367, column: 17, scope: !350)
!4947 = !DILocation(line: 368, column: 23, scope: !350)
!4948 = !DILocation(line: 370, column: 15, scope: !350)
!4949 = !DILocation(line: 408, column: 19, scope: !353)
!4950 = !DILocation(line: 408, column: 15, scope: !353)
!4951 = !DILocation(line: 409, column: 18, scope: !353)
!4952 = !DILocation(line: 416, column: 3, scope: !321)
!4953 = !DILocation(line: 418, column: 1, scope: !321)
!4954 = !DILocation(line: 417, column: 3, scope: !321)
!4955 = distinct !DISubprogram(name: "rpl_fflush", scope: !4956, file: !4956, line: 129, type: !4957, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !392, retainedNodes: !4993)
!4956 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!64, !4959}
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4961)
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4962)
!4962 = !{!4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4961, file: !102, line: 51, baseType: !64, size: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4961, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4961, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4961, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4961, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4961, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4961, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4961, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4961, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4961, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4961, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4961, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4961, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4961, file: !102, line: 70, baseType: !4977, size: 64, offset: 832)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4961, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4961, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4961, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4961, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4961, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4961, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4961, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4961, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4961, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4961, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4961, file: !102, line: 93, baseType: !4977, size: 64, offset: 1344)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4961, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4961, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4961, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4961, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4993 = !{!4994}
!4994 = !DILocalVariable(name: "stream", arg: 1, scope: !4955, file: !4956, line: 129, type: !4959)
!4995 = !DILocation(line: 129, column: 19, scope: !4955)
!4996 = !DILocation(line: 150, column: 14, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4955, file: !4956, line: 150, column: 7)
!4998 = !DILocation(line: 150, column: 22, scope: !4997)
!4999 = !DILocation(line: 150, column: 27, scope: !4997)
!5000 = !DILocation(line: 150, column: 7, scope: !4955)
!5001 = !DILocation(line: 151, column: 12, scope: !4997)
!5002 = !DILocation(line: 151, column: 5, scope: !4997)
!5003 = !DILocalVariable(name: "fp", arg: 1, scope: !5004, file: !4956, line: 41, type: !4959)
!5004 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4956, file: !4956, line: 41, type: !5005, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !392, retainedNodes: !5007)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{null, !4959}
!5007 = !{!5003}
!5008 = !DILocation(line: 41, column: 48, scope: !5004, inlinedAt: !5009)
!5009 = distinct !DILocation(line: 156, column: 3, scope: !4955)
!5010 = !DILocation(line: 43, column: 11, scope: !5011, inlinedAt: !5009)
!5011 = distinct !DILexicalBlock(scope: !5004, file: !4956, line: 43, column: 7)
!5012 = !DILocation(line: 43, column: 18, scope: !5011, inlinedAt: !5009)
!5013 = !DILocation(line: 43, column: 7, scope: !5004, inlinedAt: !5009)
!5014 = !DILocation(line: 45, column: 5, scope: !5011, inlinedAt: !5009)
!5015 = !DILocation(line: 158, column: 10, scope: !4955)
!5016 = !DILocation(line: 158, column: 3, scope: !4955)
!5017 = !DILocation(line: 0, scope: !4955)
!5018 = !DILocation(line: 232, column: 1, scope: !4955)
!5019 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5020, file: !5020, line: 28, type: !5021, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !394, retainedNodes: !5057)
!5020 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!64, !5023, !2427, !64}
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !5025)
!5025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !5026)
!5026 = !{!5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5025, file: !102, line: 51, baseType: !64, size: 32)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5025, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5025, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5025, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5025, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5025, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5025, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5025, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5025, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5025, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5025, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5025, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5025, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5025, file: !102, line: 70, baseType: !5041, size: 64, offset: 832)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5025, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5025, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5025, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5025, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5025, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5025, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5025, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5025, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5025, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5025, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5025, file: !102, line: 93, baseType: !5041, size: 64, offset: 1344)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5025, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5025, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5025, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5025, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!5057 = !{!5058, !5059, !5060, !5061}
!5058 = !DILocalVariable(name: "fp", arg: 1, scope: !5019, file: !5020, line: 28, type: !5023)
!5059 = !DILocalVariable(name: "offset", arg: 2, scope: !5019, file: !5020, line: 28, type: !2427)
!5060 = !DILocalVariable(name: "whence", arg: 3, scope: !5019, file: !5020, line: 28, type: !64)
!5061 = !DILocalVariable(name: "pos", scope: !5062, file: !5020, line: 117, type: !2427)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !5020, line: 113, column: 5)
!5063 = distinct !DILexicalBlock(scope: !5019, file: !5020, line: 52, column: 7)
!5064 = !DILocation(line: 28, column: 15, scope: !5019)
!5065 = !DILocation(line: 28, column: 25, scope: !5019)
!5066 = !DILocation(line: 28, column: 37, scope: !5019)
!5067 = !DILocation(line: 52, column: 11, scope: !5063)
!5068 = !{!1401, !831, i64 16}
!5069 = !DILocation(line: 52, column: 31, scope: !5063)
!5070 = !{!1401, !831, i64 8}
!5071 = !DILocation(line: 52, column: 24, scope: !5063)
!5072 = !DILocation(line: 53, column: 7, scope: !5063)
!5073 = !DILocation(line: 53, column: 14, scope: !5063)
!5074 = !DILocation(line: 53, column: 35, scope: !5063)
!5075 = !{!1401, !831, i64 32}
!5076 = !DILocation(line: 53, column: 28, scope: !5063)
!5077 = !DILocation(line: 54, column: 7, scope: !5063)
!5078 = !DILocation(line: 54, column: 14, scope: !5063)
!5079 = !{!1401, !831, i64 72}
!5080 = !DILocation(line: 54, column: 28, scope: !5063)
!5081 = !DILocation(line: 52, column: 7, scope: !5019)
!5082 = !DILocation(line: 117, column: 26, scope: !5062)
!5083 = !DILocation(line: 117, column: 19, scope: !5062)
!5084 = !DILocation(line: 117, column: 13, scope: !5062)
!5085 = !DILocation(line: 118, column: 15, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5062, file: !5020, line: 118, column: 11)
!5087 = !DILocation(line: 118, column: 11, scope: !5062)
!5088 = !DILocation(line: 129, column: 11, scope: !5062)
!5089 = !DILocation(line: 129, column: 18, scope: !5062)
!5090 = !DILocation(line: 130, column: 11, scope: !5062)
!5091 = !DILocation(line: 130, column: 19, scope: !5062)
!5092 = !{!1401, !1097, i64 144}
!5093 = !DILocation(line: 161, column: 7, scope: !5062)
!5094 = !DILocation(line: 163, column: 10, scope: !5019)
!5095 = !DILocation(line: 163, column: 3, scope: !5019)
!5096 = !DILocation(line: 0, scope: !5019)
!5097 = !DILocation(line: 164, column: 1, scope: !5019)
!5098 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5099, file: !5099, line: 385, type: !5100, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !396, retainedNodes: !5114)
!5099 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!62, !5102, !93, !62, !5103}
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2807, line: 6, baseType: !5105)
!5105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2809, line: 21, baseType: !5106)
!5106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2809, line: 13, size: 64, elements: !5107)
!5107 = !{!5108, !5109}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5106, file: !2809, line: 15, baseType: !64, size: 32)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5106, file: !2809, line: 20, baseType: !5110, size: 32, offset: 32)
!5110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5106, file: !2809, line: 16, size: 32, elements: !5111)
!5111 = !{!5112, !5113}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5110, file: !2809, line: 18, baseType: !7, size: 32)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5110, file: !2809, line: 19, baseType: !2818, size: 32)
!5114 = !{!5115, !5116, !5117, !5118, !5119, !5120, !5121}
!5115 = !DILocalVariable(name: "pwc", arg: 1, scope: !5098, file: !5099, line: 385, type: !5102)
!5116 = !DILocalVariable(name: "s", arg: 2, scope: !5098, file: !5099, line: 385, type: !93)
!5117 = !DILocalVariable(name: "n", arg: 3, scope: !5098, file: !5099, line: 385, type: !62)
!5118 = !DILocalVariable(name: "ps", arg: 4, scope: !5098, file: !5099, line: 385, type: !5103)
!5119 = !DILocalVariable(name: "ret", scope: !5098, file: !5099, line: 387, type: !62)
!5120 = !DILocalVariable(name: "wc", scope: !5098, file: !5099, line: 388, type: !2823)
!5121 = !DILocalVariable(name: "uc", scope: !5122, file: !5099, line: 449, type: !66)
!5122 = distinct !DILexicalBlock(scope: !5123, file: !5099, line: 448, column: 5)
!5123 = distinct !DILexicalBlock(scope: !5098, file: !5099, line: 447, column: 7)
!5124 = !DILocation(line: 385, column: 23, scope: !5098)
!5125 = !DILocation(line: 385, column: 40, scope: !5098)
!5126 = !DILocation(line: 385, column: 50, scope: !5098)
!5127 = !DILocation(line: 385, column: 64, scope: !5098)
!5128 = !DILocation(line: 388, column: 3, scope: !5098)
!5129 = !DILocation(line: 404, column: 9, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5098, file: !5099, line: 404, column: 7)
!5131 = !DILocation(line: 404, column: 7, scope: !5098)
!5132 = !DILocation(line: 439, column: 9, scope: !5098)
!5133 = !DILocation(line: 387, column: 10, scope: !5098)
!5134 = !DILocation(line: 447, column: 19, scope: !5123)
!5135 = !DILocation(line: 447, column: 31, scope: !5123)
!5136 = !DILocation(line: 447, column: 26, scope: !5123)
!5137 = !DILocation(line: 447, column: 41, scope: !5123)
!5138 = !DILocation(line: 447, column: 7, scope: !5098)
!5139 = !DILocation(line: 449, column: 26, scope: !5122)
!5140 = !DILocation(line: 449, column: 21, scope: !5122)
!5141 = !DILocation(line: 450, column: 14, scope: !5122)
!5142 = !DILocation(line: 450, column: 12, scope: !5122)
!5143 = !DILocation(line: 0, scope: !5122)
!5144 = !DILocation(line: 456, column: 1, scope: !5098)
!5145 = distinct !DISubprogram(name: "close_stream", scope: !5146, file: !5146, line: 56, type: !5147, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !399, retainedNodes: !5183)
!5146 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!64, !5149}
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !5151)
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !5152)
!5152 = !{!5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5151, file: !102, line: 51, baseType: !64, size: 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5151, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5151, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5151, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5151, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5151, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5151, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5151, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5151, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5151, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5151, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5151, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5151, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5151, file: !102, line: 70, baseType: !5167, size: 64, offset: 832)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5151, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5151, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5151, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5151, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5151, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5151, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5151, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5151, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5151, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5151, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5151, file: !102, line: 93, baseType: !5167, size: 64, offset: 1344)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5151, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5151, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5151, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5151, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!5183 = !{!5184, !5185, !5187, !5188}
!5184 = !DILocalVariable(name: "stream", arg: 1, scope: !5145, file: !5146, line: 56, type: !5149)
!5185 = !DILocalVariable(name: "some_pending", scope: !5145, file: !5146, line: 58, type: !5186)
!5186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!5187 = !DILocalVariable(name: "prev_fail", scope: !5145, file: !5146, line: 59, type: !5186)
!5188 = !DILocalVariable(name: "fclose_fail", scope: !5145, file: !5146, line: 60, type: !5186)
!5189 = !DILocation(line: 56, column: 21, scope: !5145)
!5190 = !DILocation(line: 58, column: 30, scope: !5145)
!5191 = !DILocalVariable(name: "__stream", arg: 1, scope: !5192, file: !1107, line: 135, type: !5149)
!5192 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1107, file: !1107, line: 135, type: !5147, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !399, retainedNodes: !5193)
!5193 = !{!5191}
!5194 = !DILocation(line: 135, column: 1, scope: !5192, inlinedAt: !5195)
!5195 = distinct !DILocation(line: 59, column: 27, scope: !5145)
!5196 = !DILocation(line: 137, column: 10, scope: !5192, inlinedAt: !5195)
!5197 = !DILocation(line: 59, column: 43, scope: !5145)
!5198 = !DILocation(line: 60, column: 29, scope: !5145)
!5199 = !DILocation(line: 60, column: 45, scope: !5145)
!5200 = !DILocation(line: 70, column: 17, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5145, file: !5146, line: 70, column: 7)
!5202 = !DILocation(line: 58, column: 50, scope: !5145)
!5203 = !DILocation(line: 70, column: 33, scope: !5201)
!5204 = !DILocation(line: 70, column: 53, scope: !5201)
!5205 = !DILocation(line: 70, column: 59, scope: !5201)
!5206 = !DILocation(line: 70, column: 7, scope: !5145)
!5207 = !DILocation(line: 72, column: 11, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5201, file: !5146, line: 71, column: 5)
!5209 = !DILocation(line: 73, column: 9, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5208, file: !5146, line: 72, column: 11)
!5211 = !DILocation(line: 73, column: 15, scope: !5210)
!5212 = !DILocation(line: 0, scope: !5145)
!5213 = !DILocation(line: 78, column: 1, scope: !5145)
!5214 = distinct !DISubprogram(name: "hard_locale", scope: !5215, file: !5215, line: 38, type: !5216, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !401, retainedNodes: !5218)
!5215 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!71, !64}
!5218 = !{!5219, !5220, !5221}
!5219 = !DILocalVariable(name: "category", arg: 1, scope: !5214, file: !5215, line: 38, type: !64)
!5220 = !DILocalVariable(name: "hard", scope: !5214, file: !5215, line: 40, type: !71)
!5221 = !DILocalVariable(name: "p", scope: !5214, file: !5215, line: 41, type: !93)
!5222 = !DILocation(line: 38, column: 18, scope: !5214)
!5223 = !DILocation(line: 40, column: 8, scope: !5214)
!5224 = !DILocation(line: 41, column: 19, scope: !5214)
!5225 = !DILocation(line: 41, column: 15, scope: !5214)
!5226 = !DILocation(line: 43, column: 7, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5214, file: !5215, line: 43, column: 7)
!5228 = !DILocation(line: 43, column: 7, scope: !5214)
!5229 = !DILocation(line: 47, column: 15, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5231, file: !5215, line: 47, column: 15)
!5231 = distinct !DILexicalBlock(scope: !5232, file: !5215, line: 46, column: 9)
!5232 = distinct !DILexicalBlock(scope: !5233, file: !5215, line: 45, column: 11)
!5233 = distinct !DILexicalBlock(scope: !5227, file: !5215, line: 44, column: 5)
!5234 = !DILocation(line: 47, column: 31, scope: !5230)
!5235 = !DILocation(line: 47, column: 36, scope: !5230)
!5236 = !DILocation(line: 47, column: 39, scope: !5230)
!5237 = !DILocation(line: 47, column: 59, scope: !5230)
!5238 = !DILocation(line: 47, column: 15, scope: !5231)
!5239 = !DILocation(line: 48, column: 13, scope: !5230)
!5240 = !DILocation(line: 71, column: 3, scope: !5214)
!5241 = distinct !DISubprogram(name: "locale_charset", scope: !5242, file: !5242, line: 687, type: !5243, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !403, retainedNodes: !5245)
!5242 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!93}
!5245 = !{!5246}
!5246 = !DILocalVariable(name: "codeset", scope: !5241, file: !5242, line: 689, type: !93)
!5247 = !DILocation(line: 696, column: 13, scope: !5241)
!5248 = !DILocation(line: 689, column: 15, scope: !5241)
!5249 = !DILocation(line: 754, column: 15, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5241, file: !5242, line: 754, column: 7)
!5251 = !DILocation(line: 754, column: 7, scope: !5241)
!5252 = !DILocation(line: 907, column: 13, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5254, file: !5242, line: 907, column: 13)
!5254 = distinct !DILexicalBlock(scope: !5255, file: !5242, line: 897, column: 7)
!5255 = distinct !DILexicalBlock(scope: !5241, file: !5242, line: 856, column: 3)
!5256 = !DILocation(line: 907, column: 24, scope: !5253)
!5257 = !DILocation(line: 907, column: 13, scope: !5254)
!5258 = !DILocation(line: 995, column: 3, scope: !5241)
