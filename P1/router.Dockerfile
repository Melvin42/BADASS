FROM quay.io/frrouting/frr:master

RUN sed -i 's/bgpd=no/bgpd=yes/g' /etc/frr/daemons; \
	sed -i 's/ospfd=no/ospfd=yes/g' /etc/frr/daemons; \
	sed -i 's/isisd=no/isisd=yes/g' /etc/frr/daemons;

RUN touch /etc/frr/vtysh.conf; \
	touch /etc/frr/frr.conf;
