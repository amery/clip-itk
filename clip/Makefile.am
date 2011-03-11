ACLOCAL_AMFLAGS = -I m4

AM_CFLAGS = $(CWARNFLAGS) -I$(top_srcdir)/include
AM_LDFLAGS =

lib_LTLIBRARIES = libclip.la

libclip_la_SOURCES =

# tasks
if HAVE_LIBPTH
libclip_la_SOURCES += task/pth_task.c
else
libclip_la_SOURCES += task/cl_task.c
endif

# rdd
libclip_la_SOURCES += rdd/rddclip.c rdd/rdd.c rdd/dbf.c rdd/ntx.c rdd/cdx.c \
		     rdd/dbt.c rdd/fpt.c rdd/rushmore.c rdd/btree.c rdd/six.c \
		     rdd/hiper.c
