AC_INIT(clip, 1.3, clip-itk-devel@lists.sourceforge.net)

AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_SRCDIR([clip.h])

AC_CANONICAL_SYSTEM
AM_INIT_AUTOMAKE([foreign dist-bzip2 -Wall -Werror])

AC_CONFIG_MACRO_DIR([m4])

LT_INIT

# OSNAME
#
case "$target_os" in
*cygwin*)
	CLIP_OSNAME="CYGWIN"
	;;
*mingw*)
	CLIP_OSNAME="MINGW"
	;;
*linux*)
	CLIP_OSNAME="LINUX"
	;;
*)
	CLIP_OSNAME="UNKNOWN"
	;;
esac
AC_SUBST(CLIP_OSNAME)

case "$CLIP_OSNAME" in
CYGWIN|MINGW)
	CLIP_DLLIMPORT="__declspec(dllimport)"
	CLIP_DLLEXPORT="__declspec(dllexport)"
	;;
esac
AC_SUBST(CLIP_DLLIMPORT)
AC_SUBST(CLIP_DLLEXPORT)

# Checks for programs.
AC_PROG_CC_C99

# Checks for libraries.
AC_CHECK_LIB(pth,pth_version,[have_libpth=true])
AM_CONDITIONAL(HAVE_LIBPTH, [test "$have_libpth" = true])

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.
CWARNFLAGS="-Wall -Wextra"
AC_SUBST(CWARNFLAGS)

# Checks for library functions.

AC_CONFIG_FILES([clip_platform.h])
AC_CONFIG_FILES([Makefile])

AC_OUTPUT
