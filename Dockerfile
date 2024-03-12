# 使用一个基础镜像
FROM alpine:latest

# 设置工作目录
WORKDIR /app

# 复制应用程序文件到容器中
COPY /dist /app

# # 安装所需的依赖
RUN apk add npm && npm install -g http-server  

# 暴露应用程序的端口
EXPOSE 8080

# # 运行应用程序
CMD http-server
