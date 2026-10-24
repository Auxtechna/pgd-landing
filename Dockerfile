FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY sitemap.xml robots.txt /usr/share/nginx/html/
COPY images/ /usr/share/nginx/html/images/
ENV PORT=8080
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
