AC_INIT(clip, 1.3, clip-itk-devel@lists.sourceforge.net)

AC_CONFIG_AUX_DIR([build-aux])
AM_INIT_AUTOMAKE([foreign dist-bzip2 -Wall -Werror])

AC_CONFIG_MACRO_DIR([m4])

LT_INIT

# Checks for programs.
AC_PROG_CC_C99

# Checks for libraries.
AC_CHECK_LIB(pth,pth_version,[have_libpth=true])
AM_CONDITIONAL(USE_GNUPTH, [test "$have_libpth" = true])

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.
CWARNFLAGS="-Wall -Wextra"
AC_SUBST(CWARNFLAGS)

# Checks for library functions.

AC_CONFIG_SRCDIR([clip.h])
AC_CONFIG_FILES([Makefile
		 task/Makefile])

AC_OUTPUT
