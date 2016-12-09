# -*- mode: Makefile; fill-column: 80; comment-column: 75; -*-

PROJECT = log_debug

#DEPSOLVER_PLT= .depsolver_plt

DEPS = jiffy recon eper jsx fs configgins lager



dep_jsx 			= git git@github.com:talentdeficit/jsx.git master
dep_configgins  	= git git@github.com:Amplify-Social/Configgins.git master
dep_eper  	        = git git@github.com:massemanet/eper.git master
dep_recon  	        = git git@github.com:ferd/recon.git master
dep_fs              = git git@github.com:synrc/fs.git master
dep_lager           = git git@github.com:basho/lager.git master
dep_jiffy           = git git@github.com:davisp/jiffy.git master


include erlang.mk

EDOC_OPTS= '{private, true}' '{hidden, true}' '{todo, true}'

ERLC_OPTS += -Werror +'{parse_transform, lager_transform}'

app::
	cp rel/files/sys.config ./sys.config
	cp rel/files/vm.args ./vm.args
	git rev-parse HEAD > ./priv/gitrev.txt

