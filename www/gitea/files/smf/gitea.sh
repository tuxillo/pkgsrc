#!@SMF_METHOD_SHELL@
#
# Init script for gitea (SMF)
#

. /lib/svc/share/smf_include.sh

METHOD=$1

case ${METHOD} in
    start)
	/usr/bin/env -i \
		"GITEA_WORK_DIR=@GITEA_SHARE_DIR@" \
		"GITEA_CUSTOM=@PKG_SYSCONFDIR@" \
		"HOME=@GITEA_USER_HOME@" \
		"PATH=@PREFIX@/bin:${PATH}" \
		"USER=@GITEA_USER@" \
		@PREFIX@/sbin/gitea web
	;;
esac

exit ${SMF_EXIT_OK}
