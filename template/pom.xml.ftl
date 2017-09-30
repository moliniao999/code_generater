<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<groupId>${basepackage_groupId}</groupId>
	<artifactId>${appName}</artifactId>
	<version>1.0-SNAPSHOT</version>
	<packaging>pom</packaging>
	<description></description>


    <modules>
        <module>${appName}-domain</module>
        <module>${appName}-service</module>
        <module>${appName}-dao</module>
        <module>${appName}-web</module>
        <module>${appName}-rpc</module>
        <module>${appName}-client</module>
    </modules>

    <properties>
        <spring.version>4.2.8.RELEASE</spring.version>
        <java.version>1.8</java.version>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    </properties>

    <build>

        <resources>
            <resource>
                <directory>src/main/resources</directory>
                <filtering>true</filtering>
            </resource>
        </resources>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>3.1</version>
                <configuration>
                    <source>1.7</source>
                    <target>1.7</target>
                    <showWarnings>true</showWarnings>
                </configuration>
            </plugin>
        </plugins>
    </build>


<#noparse>
	<dependencies>
        <dependency>
            <groupId>jdk.tools</groupId>
            <artifactId>jdk.tools</artifactId>
            <version>${java.version}</version>
            <scope>system</scope>
            <systemPath>${java.home}/../lib/tools.jar</systemPath>
        </dependency>

        <dependency>
            <groupId>com.github.httl</groupId>
            <artifactId>httl-springmvc</artifactId>
            <version>1.0.11</version>
        </dependency>
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.8.2</version>
            <scope>test</scope>
        </dependency>
        <!-- logging BEGIN-->
        <dependency>
            <groupId>log4j</groupId>
            <artifactId>log4j</artifactId>
            <version>1.2.16</version>
        </dependency>

        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>slf4j-api</artifactId>
            <version>1.7.7</version>
        </dependency>
        <dependency>
            <groupId>ch.qos.logback</groupId>
            <artifactId>logback-classic</artifactId>
            <version>1.1.2</version>
        </dependency>
        <dependency>
            <groupId>commons-logging</groupId>
            <artifactId>commons-logging</artifactId>
            <version>1.1.3</version>
        </dependency>
        <dependency>
            <groupId>commons-fileupload</groupId>
            <artifactId>commons-fileupload</artifactId>
            <version>1.3.1</version>
        </dependency>
        <dependency>
            <groupId>com.thoughtworks.xstream</groupId>
            <artifactId>xstream</artifactId>
            <version>1.4.8</version>
        </dependency>

        <dependency>
            <groupId>commons-lang</groupId>
            <artifactId>commons-lang</artifactId>
            <version>2.5</version>
        </dependency>

        <dependency>
            <groupId>commons-io</groupId>
            <artifactId>commons-io</artifactId>
            <version>2.4</version>
        </dependency>

        <dependency>
            <groupId>com.alibaba</groupId>
            <artifactId>fastjson</artifactId>
            <version>1.1.41</version>
        </dependency>

        <dependency>
            <groupId>org.nutz</groupId>
            <artifactId>nutz</artifactId>
            <version>1.b.50</version>
        </dependency>

        <dependency>
            <groupId>org.msgpack</groupId>
            <artifactId>msgpack</artifactId>
            <version>0.6.12</version>
        </dependency>

        <!-- spring -->
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-beans</artifactId>
            <version>${spring.version}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-web</artifactId>
            <version>${spring.version}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-webmvc</artifactId>
            <version>${spring.version}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-tx</artifactId>
            <version>${spring.version}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-jdbc</artifactId>
            <version>${spring.version}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-context</artifactId>
            <version>${spring.version}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-jms</artifactId>
            <version>${spring.version}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-orm</artifactId>
            <version>${spring.version}</version>
        </dependency>
        <!--
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-oxm</artifactId>
            <version>${spring.version}</version>
        </dependency>
        -->
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-context-support</artifactId>
            <version>${spring.version}</version>
        </dependency>

        <dependency>
            <groupId>org.aspectj</groupId>
            <artifactId>aspectjrt</artifactId>
            <version>1.6.11</version>
        </dependency>

        <dependency>
            <groupId>org.aspectj</groupId>
            <artifactId>aspectjweaver</artifactId>
            <version>1.7.2</version>
        </dependency>
        <dependency>
            <groupId>cglib</groupId>
            <artifactId>cglib</artifactId>
            <version>2.1_3</version>
        </dependency>


        <dependency>
            <groupId>cglib</groupId>
            <artifactId>cglib-nodep</artifactId>
            <version>2.1_3</version>
        </dependency>

        <dependency>
            <groupId>org.apache.velocity</groupId>
            <artifactId>velocity-tools</artifactId>
            <version>2.0</version>
        </dependency>

        <!-- url rewrite -->
        <dependency>
            <groupId>org.tuckey</groupId>
            <artifactId>urlrewritefilter</artifactId>
            <version>4.0.4</version>
        </dependency>
        <!-- mongodb & spring -->
        <dependency>
            <groupId>org.springframework.data</groupId>
            <artifactId>spring-data-mongodb</artifactId>
            <version>1.5.6.RELEASE</version>
        </dependency>
        <!-- redis & spring -->
        <dependency>
            <groupId>org.springframework.data</groupId>
            <artifactId>spring-data-redis</artifactId>
            <version>1.6.4.RELEASE</version>
        </dependency>
        <dependency>
            <groupId>redis.clients</groupId>
            <artifactId>jedis</artifactId>
            <version>2.7.3</version>
        </dependency>
        <!-- drivers & middle ware -->
        <dependency>
            <groupId>com.jolbox</groupId>
            <artifactId>bonecp-spring</artifactId>
            <version>0.7.1.RELEASE</version>
        </dependency>
        <dependency>
            <groupId>com.jolbox</groupId>
            <artifactId>bonecp-provider</artifactId>
            <version>0.7.1.RELEASE</version>
        </dependency>
        <dependency>
            <groupId>com.jolbox</groupId>
            <artifactId>bonecp</artifactId>
            <version>0.7.1.RELEASE</version>
        </dependency>
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>5.1.24</version>
        </dependency>
        <dependency>
            <groupId>org.mybatis</groupId>
            <artifactId>mybatis</artifactId>
            <version>3.2.2</version>
        </dependency>
        <dependency>
            <groupId>org.mybatis</groupId>
            <artifactId>mybatis-spring</artifactId>
            <version>1.2.0</version>
        </dependency>
        <dependency>
            <groupId>org.codehaus.jackson</groupId>
            <artifactId>jackson-mapper-asl</artifactId>
            <version>1.9.12</version>
        </dependency>
        <dependency>
            <groupId>com.fasterxml.jackson.dataformat</groupId>
            <artifactId>jackson-dataformat-xml</artifactId>
            <version>2.7.5</version>
        </dependency>
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-databind</artifactId>
            <version>2.7.5</version>
        </dependency>
        <!--JSP相关-->
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>jstl</artifactId>
            <version>1.1.1</version>
            <!--<scope>provided</scope>-->
        </dependency>
        <dependency>
            <groupId>taglibs</groupId>
            <artifactId>standard</artifactId>
            <version>1.1.1</version>
            <!--<scope>runtime</scope>-->
        </dependency>

        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>servlet-api</artifactId>
            <version>2.5</version>
            <scope>provided</scope>
        </dependency>

        <dependency>
            <groupId>jspapi</groupId>
            <artifactId>jsp-api</artifactId>
            <version>2.0</version>
            <scope>provided</scope>
        </dependency>
        <!--END JSP相关-->

        <dependency>
            <groupId>commons-logging</groupId>
            <artifactId>commons-logging-api</artifactId>
            <version>1.1</version>
        </dependency>

        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>slf4j-log4j12</artifactId>
            <version>1.6.1</version>
        </dependency>


        <dependency>
            <groupId>com.jUtils</groupId>
            <artifactId>jUtils</artifactId>
            <version>0.0.1-SNAPSHOT</version>
        </dependency>

        <!-- druid -->
        <dependency>
            <groupId>com.alibaba</groupId>
            <artifactId>druid</artifactId>
            <version>1.0.27</version>
        </dependency>
    </dependencies>
    </#noparse>

    <!-- 打包配置信息 -->
    <profiles>
        <profile>
            <!-- 开发环境 -->
            <id>dev</id>
            <!-- 默认 -->
            <activation>
                <activeByDefault>true</activeByDefault>
            </activation>
            <properties>
                <!-- 数据库连接池配置文件 -->
                <project.dbpool.driverClass>com.mysql.jdbc.Driver</project.dbpool.driverClass>
                <project.dbpool.jdbcUrl>${jdbc_url}</project.dbpool.jdbcUrl>
                <project.dbpool.username>${jdbc_username}</project.dbpool.username>
                <project.dbpool.password>${jdbc_password}</project.dbpool.password>
                <project.dbpool.idleConnectionTestPeriodInMinutes>1</project.dbpool.idleConnectionTestPeriodInMinutes>
                <project.dbpool.idleMaxAgeInMinutes>4</project.dbpool.idleMaxAgeInMinutes>
                <project.dbpool.partitionCount>1</project.dbpool.partitionCount>
                <project.dbpool.maxConnectionsPerPartition>3</project.dbpool.maxConnectionsPerPartition>
                <project.dbpool.minConnectionsPerPartition>2</project.dbpool.minConnectionsPerPartition>
                <project.dbpool.acquireIncrement>2</project.dbpool.acquireIncrement>
                <project.dbpool.statementsCacheSize>50</project.dbpool.statementsCacheSize>
                <project.dbpool.releaseHelperThreads>3</project.dbpool.releaseHelperThreads>
            </properties>
        </profile>



    </profiles>


</project>