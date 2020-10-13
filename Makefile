PREFIX?=		/usr/local
RUBY?=			${PREFIX}/bin/ruby
UNPRIVILEGED_USER?=	nobody
TCPDUMP?=		/usr/sbin/tcpdump
PFLOG_INTERFACE?=	pflog0

pfsyslogd: pfsyslogd.in
	sed -e 's,%%RUBY%%,${RUBY},g' \
	    -e 's,%%UNPRIVILEGED_USER%%,${UNPRIVILEGED_USER},g' \
	    -e 's,%%TCPDUMP%%,${TCPDUMP},g' \
	    -e 's,%%PFLOG_INTERFACE%%,${PFLOG_INTERFACE},g' \
	    pfsyslogd.in > pfsyslogd

install:
	mkdir -p ${DESTDIR}${PREFIX}/sbin
	install -m 755 -p pfsyslogd ${DESTDIR}${PREFIX}/sbin

clean:
	rm -f pfsyslogd

