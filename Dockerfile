FROM alpine


RUN ["apk", "add", "--no-cache", "pass"]
RUN ["apk", "add", "--no-cache", "git"]
ADD "devtv.gpg" "devtv.gpg"

CMD bash