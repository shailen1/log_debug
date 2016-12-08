# -*- mode: Makefile; fill-column: 80; comment-column: 75; -*-

PROJECT = log_debug

#DEPSOLVER_PLT= .depsolver_plt

DEPS = recon eper jsx sqor_logger configgins

ERLC_OPTS += +'{parse_transform, lager_transform}'

dep_jsx 			= git git@github.com:talentdeficit/jsx.git master
dep_sqor_logger 	= git git@github.com:Amplify-Social/sqor_logger.git master
dep_configgins  	= git git@github.com:Amplify-Social/Configgins.git master
dep_eper  	        = git git@github.com:massemanet/eper.git master
dep_recon  	        = git git@github.com:ferd/recon.git master
dep_fs              = git git@github.com/synrc/fs.git master

include erlang.mk
