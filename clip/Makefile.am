ACLOCAL_AMFLAGS = -I m4

AM_CFLAGS = $(CWARNFLAGS) -I$(top_srcdir)/include
AM_LDFLAGS =

lib_LTLIBRARIES = libclip.la
bin_PROGRAMS =

libclip_la_SOURCES =

# core
#
CORE_SRCS = list.c

# tasks
#
if HAVE_LIBPTH
TASK_SRCS = task/pth_task.c
TASK_LIBS = -lpth
else
TASK_SRCS = task/cl_task.c
TASK_LIBS =
endif

libclip_la_SOURCES += $(TASK_SRCS)

# rdd
#
libclip_la_SOURCES += rdd/rddclip.c rdd/rdd.c rdd/dbf.c rdd/ntx.c rdd/cdx.c \
		     rdd/dbt.c rdd/fpt.c rdd/rushmore.c rdd/btree.c rdd/six.c \
		     rdd/hiper.c

# screen
#
SCREEN_SRCS = screen/tcaps.c screen/termgoto.c screen/screen.c \
	      screen/scankey.c screen/keymap.c

libclip_la_SOURCES += $(SCREEN_SRCS)
bin_PROGRAMS += testscr kbd cmap

testscr_SOURCES = screen/testscr.c screen/charset.c $(CORE_SRCS) $(SCREEN_SRCS) $(TASK_SRCS)
testscr_CFLAGS = $(AM_CFLAGS)
testscr_LDFLAGS = $(AM_LDFLAGS) $(TASK_LIBS)

kbd_SOURCES = screen/kbd.c screen/scankey.c screen/keymap.c
kbd_CFLAGS = $(AM_CFLAGS)

cmap_SOURCES = screen/cmap.c screen/charset.c
cmap_CFLAGS = $(AM_CFLAGS)
