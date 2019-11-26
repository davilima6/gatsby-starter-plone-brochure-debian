FROM plone:5.2.0
COPY buildout.cfg /plone/instance/site.cfg
COPY key.pem /plone/instance/key.pem
COPY cert.pem /plone/instance/cert.pem
RUN gosu plone buildout -c site.cfg
