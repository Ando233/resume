ifndef JOBS
  JOBS := $(shell nproc)
endif
MAKEFLAGS += -j$(JOBS)

.PHONY: all clean

all: ando-resume-cn.pdf ando-resume-en.pdf resume-cn-post.pdf resume-en-post.pdf

clean:
	rm roife-resume-cn.pdf ando-resume-en.pdf resume-cn-post.pdf resume-en-post.pdf

ando-resume-cn.pdf: resume-cn.typ chicv.typ
	typst compile resume-cn.typ ando-resume-cn.pdf --input level=submit

ando-resume-en.pdf: resume-en.typ chicv.typ
	typst compile resume-en.typ ando-resume-en.pdf --input level=submit

resume-cn-post.pdf: resume-cn.typ chicv.typ
	typst compile resume-cn.typ resume-cn-post.pdf --input level=post

resume-en-post.pdf: resume-en.typ chicv.typ
	typst compile resume-en.typ resume-en-post.pdf --input level=post
