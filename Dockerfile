FROM ubuntu:22.04

# 安装依赖
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    python3 \
    python3-pip \
    python3-setuptools \
    python3-venv \
    gcc-arm-none-eabi \
    libnewlib-arm-none-eabi \
    make \
    wget \
    && rm -rf /var/lib/apt/lists/*

# 可选：设置时区，避免编译警告
ENV TZ=Asia/Shanghai

WORKDIR /workspace