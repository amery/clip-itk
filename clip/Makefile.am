ACLOCAL_AMFLAGS = -I m4

lib_LIBRARIES = libclip.a

libclip_a_SOURCES =

# tasks
if HAVE_LIBPTH
libclip_a_SOURCES += task/pth_task.c
else
libclip_a_SOURCES += task/cl_task.c
endif

# rdd
libclip_a_SOURCES += rdd/rddclip.c rdd/rdd.c rdd/dbf.c rdd/ntx.c rdd/cdx.c \
		     rdd/dbt.c rdd/fpt.c rdd/rushmore.c rdd/btree.c rdd/six.c \
		     rdd/hiper.c
