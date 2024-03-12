# 使用一个基础镜像
FROM alpine:latest

# 设置工作目录
WORKDIR /app

# 复制应用程序文件到容器中
COPY . /app

# 安装所需的依赖
RUN apk add --no-cache nodejs &&\
npm install


# 暴露应用程序的端口
EXPOSE 6598

# 运行应用程序
CMD ["npm dev"]