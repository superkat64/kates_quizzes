FROM nginx:1.27-alpine

COPY southern_utah_parks_quiz.html /usr/share/nginx/html/index.html
COPY images /usr/share/nginx/html/images
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
