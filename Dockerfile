# JKL Global LLP — static site on nginx, listening on 3000 (Coolify default)
FROM nginx:1.27-alpine

# Static assets at the doc root
COPY index.html          /usr/share/nginx/html/index.html
COPY profile.html        /usr/share/nginx/html/profile.html
COPY digital_komei.html  /usr/share/nginx/html/digital_komei.html
COPY logo.png            /usr/share/nginx/html/logo.png
COPY og-image.png        /usr/share/nginx/html/og-image.png
COPY about-banner.jpg    /usr/share/nginx/html/about-banner.jpg
COPY komei.png           /usr/share/nginx/html/komei.png
COPY komeiqr.png         /usr/share/nginx/html/komeiqr.png
COPY henry.jpeg          /usr/share/nginx/html/henry.jpeg

# Port + server config
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 3000
