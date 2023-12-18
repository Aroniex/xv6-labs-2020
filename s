[1mdiff --git a/.dir-locals.el b/.dir-locals.el[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/.editorconfig b/.editorconfig[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/.gdbinit.tmpl-riscv b/.gdbinit.tmpl-riscv[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/LICENSE b/LICENSE[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/Makefile b/Makefile[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mindex c926b7e..9e5fea2[m
[1m--- a/Makefile[m
[1m+++ b/Makefile[m
[36m@@ -193,9 +193,11 @@[m [mUPROGS=\[m
 	$U/_grind\[m
 	$U/_wc\[m
 	$U/_zombie\[m
[31m-[m
[31m-[m
[31m-[m
[32m+[m[32m        $U/_sleep\[m
[32m+[m[32m        $U/_pingpong\[m
[32m+[m[32m        $U/_primes\[m
[32m+[m	[32m$U/_find\[m
[32m+[m[32m        $U/_xargs\[m
 [m
 ifeq ($(LAB),$(filter $(LAB), pgtbl lock))[m
 UPROGS += \[m
[1mdiff --git a/README b/README[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/conf/lab.mk b/conf/lab.mk[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/gradelib.py b/gradelib.py[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/bio.c b/kernel/bio.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/buf.h b/kernel/buf.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/console.c b/kernel/console.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/date.h b/kernel/date.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/defs.h b/kernel/defs.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/elf.h b/kernel/elf.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/entry.S b/kernel/entry.S[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/exec.c b/kernel/exec.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/fcntl.h b/kernel/fcntl.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/file.c b/kernel/file.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/file.h b/kernel/file.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/fs.c b/kernel/fs.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/fs.h b/kernel/fs.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/kalloc.c b/kernel/kalloc.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/kernel.ld b/kernel/kernel.ld[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/kernelvec.S b/kernel/kernelvec.S[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/log.c b/kernel/log.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/main.c b/kernel/main.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/memlayout.h b/kernel/memlayout.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/param.h b/kernel/param.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/pipe.c b/kernel/pipe.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/plic.c b/kernel/plic.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/printf.c b/kernel/printf.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/proc.c b/kernel/proc.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/proc.h b/kernel/proc.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/ramdisk.c b/kernel/ramdisk.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/riscv.h b/kernel/riscv.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/sleeplock.c b/kernel/sleeplock.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/sleeplock.h b/kernel/sleeplock.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/spinlock.c b/kernel/spinlock.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/spinlock.h b/kernel/spinlock.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/start.c b/kernel/start.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/stat.h b/kernel/stat.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/string.c b/kernel/string.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/swtch.S b/kernel/swtch.S[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/syscall.c b/kernel/syscall.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/syscall.h b/kernel/syscall.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/sysfile.c b/kernel/sysfile.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/sysproc.c b/kernel/sysproc.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/trampoline.S b/kernel/trampoline.S[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/trap.c b/kernel/trap.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/types.h b/kernel/types.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/uart.c b/kernel/uart.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/virtio.h b/kernel/virtio.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/virtio_disk.c b/kernel/virtio_disk.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/kernel/vm.c b/kernel/vm.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/mkfs/mkfs.c b/mkfs/mkfs.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/cat.c b/user/cat.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/echo.c b/user/echo.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/forktest.c b/user/forktest.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/grep.c b/user/grep.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/grind.c b/user/grind.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/init.c b/user/init.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/initcode.S b/user/initcode.S[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/kill.c b/user/kill.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/ln.c b/user/ln.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/ls.c b/user/ls.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/mkdir.c b/user/mkdir.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/printf.c b/user/printf.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/rm.c b/user/rm.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/sh.c b/user/sh.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/stressfs.c b/user/stressfs.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/ulib.c b/user/ulib.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/umalloc.c b/user/umalloc.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/user.h b/user/user.h[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/usertests.c b/user/usertests.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/wc.c b/user/wc.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/xargstest.sh b/user/xargstest.sh[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/user/zombie.c b/user/zombie.c[m
[1mold mode 100644[m
[1mnew mode 100755[m
