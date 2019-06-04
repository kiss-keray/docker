#基础镜像
FROM centos:7

#定义时区参数
ENV TZ=Asia/Shanghai

#设置时区
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo '$TZ' > /etc/timezone

#安装必要应用
RUN yum -y install kde-l10n-Chinese glibc-common


#安装必要应用
RUN yum -y install java-1.8.0-openjdk.x86_64

#设置编码
RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8

#设置环境变量
ENV LC_ALL zh_CN.utf8