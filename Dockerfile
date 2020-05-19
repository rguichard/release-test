FROM dockercloud/hello-world
ADD index.php /www/index.php
ADD logo_osones.png /www/logo.png
RUN touch hello
RUN touch hello2
RUN touch hello3
dede
