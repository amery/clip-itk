ACLOCAL_AMFLAGS = -I m4

lib_LIBRARIES = libclip.a

libclip_a_SOURCES =
if HAVE_LIBPTH
libclip_a_SOURCES += task/pth_task.c
else
libclip_a_SOURCES += task/cl_task.c
endif
