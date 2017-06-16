<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<groupId>${basepackage}</groupId>
	<artifactId>${appName}</artifactId>
	<version>0.0.1-SNAPSHOT</version>
	<name>${appName}</name>
	<packaging>war</packaging>
	<description></description>



    <properties>
        <spring.version>3.2.2.RELEASE</spring.version>
        <java.version>1.7</java.version>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    </properties>

	<build>
		<finalName>${appName}</finalName>
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
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-war-plugin</artifactId>
				<configuration>
					<webResources>
						<resource>
                            <#noparse>
							<directory>${basedir}/src/main/java</directory>
                            </#noparse>
							<targetPath>WEB-INF/classes</targetPath>
							<includes>
								<include>**/*.properties</include>
								<include>**/*.xml</include>
								<include>**/*.css</include>
								<include>**/*.html</include>
							</includes>
						</resource>
					</webResources>
				</configuration>
			</plugin>
		</plugins>
	</build>

    <#noparse>
	<dependencies>
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
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-oxm</artifactId>
            <version>${spring.version}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-context-support</artifactId>
            <version>${spring.version}</version>
        </dependency>
        <dependency>
            <groupId>cglib</groupId>
            <artifactId>cglib</artifactId>
            <version>3.1</version>
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
            <version>1.7.6</version>
        </dependency>
    </dependencies>
    </#noparse>

    <!-- 打包配置信息 -->
    <profiles>
        <profile>
            <!-- 开发环境 -->
            <id>develop</id>
            <!-- 默认 -->
            <activation>
                <activeByDefault>false</activeByDefault>
            </activation>
            <properties>
                <!--jdbc type -->
                <orders.jdbc.datasource.type>dbcp</orders.jdbc.datasource.type>
                <!-- 数据库 -->
                <orders.jdbc.driver>com.mysql.jdbc.Driver</orders.jdbc.driver>
                <orders.jdbc.url>jdbc:MySql://10.28.6.117:3306/orders?characterEncoding=UTF-8</orders.jdbc.url>
                <orders.jdbc.username>root</orders.jdbc.username>
                <orders.jdbc.password>123456</orders.jdbc.password>
                <!-- 日志 -->
                <orders.log.level>INFO</orders.log.level>
                <orders.log.dtms.level>INFO</orders.log.dtms.level>
                <orders.log.path>/diliapp/servers/logs/orders.nong12.com</orders.log.path>
                <!--打包编码 -->
                <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
                <orders.contextPath>http://orders.nong12.com</orders.contextPath>
                <!--redis-->
                <project.redis.host1>10.28.6.152</project.redis.host1>
                <project.redis.port1>6379</project.redis.port1>
                <!--统一管理平台配置-->
                <conf.manage.enable>true</conf.manage.enable>
                <conf.manage.spider>false</conf.manage.spider>
                <conf.manage.system>orders</conf.manage.system>
                <conf.manage.domain>http://manage.nong12.com/</conf.manage.domain>
                <!--系统url并未以.do结尾，因此需要使用如下方式的正则表达式-->
                <conf.manage.includes>^/.*</conf.manage.includes>
                <!--权限拦截器在处理导出文件时会出错，导致文件打不开，比如Excel，因此对于导出，跳过拦截-->
                <conf.manage.excludes>^/noAccess.do$,^/welcome.do$,^/loginControl/.*,^/api/.*,^/cleanCache$,^/assets/.*,^/export/.*,^/orderSelf/export/.*,^/monitor,^/druid/*,^/orderPrint/export/*</conf.manage.excludes>
                <!--订单系统短信通知开关-->
                <orders.sms.enabled>true</orders.sms.enabled>
                <!--订单获系统缓存开关-->
                <orders.cache.enabled>false</orders.cache.enabled>
                <!-- 存时间 以秒为单位 -->
                <orders.cache.time>1800</orders.cache.time>
                <orders.cache.redis.selectDB>1</orders.cache.redis.selectDB>
                <orders.cache.main.key>pnr_orders</orders.cache.main.key>
                <!-- 店铺接口签名  -->
                <orders.rpc.shopClient.sign>FzZGZxd2VycXdlYXNzZHZzdnp4Y3Z</orders.rpc.shopClient.sign>
                <!-- 消息中心配置 -->
                <mq.namesrvAddr>10.28.6.124:9876;10.28.6.125:9876</mq.namesrvAddr>
                <mq.producerGroup>orders</mq.producerGroup>
                <!-- 订单请求和响应参数 -->
                <orders.paramLog.enabled>false</orders.paramLog.enabled>
            </properties>
        </profile>
        <profile>
            <!-- 开发环境 -->
            <id>develop-test</id>
            <!-- 默认 -->
            <activation>
                <activeByDefault>false</activeByDefault>
            </activation>
            <properties>
                <!--jdbc type -->
                <orders.jdbc.datasource.type>dbcp</orders.jdbc.datasource.type>
                <!-- 数据库 -->
                <orders.jdbc.driver>com.mysql.jdbc.Driver</orders.jdbc.driver>
                <orders.jdbc.url>jdbc:MySql://10.28.6.117:3306/orders?characterEncoding=UTF-8</orders.jdbc.url>
                <orders.jdbc.username>root</orders.jdbc.username>
                <orders.jdbc.password>123456</orders.jdbc.password>
                <!-- 日志 -->
                <orders.log.level>INFO</orders.log.level>
                <orders.log.dtms.level>INFO</orders.log.dtms.level>
                <orders.log.path>/diliapp/servers/logs/orders.nong12.com</orders.log.path>
                <!--打包编码 -->
                <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
                <orders.contextPath>http://orders.nong12.com</orders.contextPath>

                <!--redis-->
                <project.redis.host1>10.28.6.152</project.redis.host1>
                <project.redis.port1>6379</project.redis.port1>

                <!--统一管理平台配置-->
                <conf.manage.enable>true</conf.manage.enable>
                <conf.manage.spider>true</conf.manage.spider>
                <conf.manage.system>orders</conf.manage.system>
                <conf.manage.domain>http://manage.nong12.com/</conf.manage.domain>
                <!--系统url并未以.do结尾，因此需要使用如下方式的正则表达式-->
                <conf.manage.includes>^/.*</conf.manage.includes>
                <!--权限拦截器在处理导出文件时会出错，导致文件打不开，比如Excel，因此对于导出，跳过拦截-->
                <conf.manage.excludes>^/noAccess.do$,^/welcome.do$,^/loginControl/.*,^/api/.*,^/cleanCache$,^/assets/.*,^/export/.*,^/orderSelf/export/.*,^/monitor,^/druid/*,^/orderPrint/export/*</conf.manage.excludes>
                <!--订单系统短信通知开关-->
                <orders.sms.enabled>true</orders.sms.enabled>
                <!--订单获系统缓存开关-->
                <orders.cache.enabled>false</orders.cache.enabled>
                <!-- 存时间 以秒为单位 -->
                <orders.cache.time>1800</orders.cache.time>
                <orders.cache.redis.selectDB>1</orders.cache.redis.selectDB>
                <orders.cache.main.key>pnr_orders</orders.cache.main.key>
                <!-- 店铺接口签名  -->
                <orders.rpc.shopClient.sign>FzZGZxd2VycXdlYXNzZHZzdnp4Y3Z</orders.rpc.shopClient.sign>
                <!-- 消息中心配置 -->
                <mq.namesrvAddr>10.28.6.124:9876;10.28.6.125:9876</mq.namesrvAddr>
                <mq.producerGroup>orders</mq.producerGroup>
            </properties>
        </profile>
        <profile>
            <!-- 测试环境 -->
            <id>test</id>
            <activation>
                <activeByDefault>true</activeByDefault>
            </activation>
            <properties>
                <!--jdbc type -->
                <orders.jdbc.datasource.type>dbcp</orders.jdbc.datasource.type>
                <!-- 数据库 -->
                <orders.jdbc.driver>com.mysql.jdbc.Driver</orders.jdbc.driver>
                <orders.jdbc.url>jdbc:MySql://10.28.10.123:3306/orders?characterEncoding=UTF-8</orders.jdbc.url>
                <orders.jdbc.username>yycs</orders.jdbc.username>
                <orders.jdbc.password>yycs123</orders.jdbc.password>
                <!-- 日志 -->
                <orders.log.level>INFO</orders.log.level>
                <orders.log.dtms.level>INFO</orders.log.dtms.level>
                <orders.log.path>/diliapp/servers/logs/orders.nong12.com</orders.log.path>
                <!--打包编码 -->
                <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
                <orders.contextPath>http://orders.nong12.com</orders.contextPath>

                <!--redis-->
                <project.redis.host1>10.28.6.54</project.redis.host1>
                <project.redis.port1>6379</project.redis.port1>

                <!--统一管理平台配置-->
                <conf.manage.enable>true</conf.manage.enable>
                <conf.manage.spider>true</conf.manage.spider>
                <conf.manage.system>orders</conf.manage.system>
                <conf.manage.domain>http://manage.nong12.com/</conf.manage.domain>
                <!--系统url并未以.do结尾，因此需要使用如下方式的正则表达式-->
                <conf.manage.includes>^/.*</conf.manage.includes>
                <!--权限拦截器在处理导出文件时会出错，导致文件打不开，比如Excel，因此对于导出，跳过拦截-->
                <conf.manage.excludes>^/noAccess.do$,^/welcome.do$,^/loginControl/.*,^/api/.*,^/cleanCache$,^/assets/.*,^/export/.*,^/orderSelf/export/.*,^/monitor,^/druid/*,^/orderPrint/export/*</conf.manage.excludes>
                <!--订单系统短信通知开关-->
                <orders.sms.enabled>true</orders.sms.enabled>
                <!--订单获系统缓存开关-->
                <orders.cache.enabled>true</orders.cache.enabled>
                <!-- 存时间 以秒为单位 -->
                <orders.cache.time>1800</orders.cache.time>
                <orders.cache.redis.selectDB>1</orders.cache.redis.selectDB>
                <orders.cache.main.key>pnr_orders</orders.cache.main.key>
                <!-- 店铺接口签名  -->
                <orders.rpc.shopClient.sign>FzZGZxd2VycXdlYXNzZHZzdnp4Y3Z</orders.rpc.shopClient.sign>
                <!-- 消息中心配置 -->
                <mq.namesrvAddr>10.28.6.54:9876</mq.namesrvAddr>
                <mq.producerGroup>orders</mq.producerGroup>
                <!-- 订单请求和响应参数 -->
                <orders.paramLog.enabled>true</orders.paramLog.enabled>
            </properties>
        </profile>
        <profile>
            <!-- UAT 实际用户测试环境配置 -->
            <id>pnr-clone</id>
            <activation>
                <activeByDefault>false</activeByDefault>
            </activation>
            <properties>
                <!--jdbc type -->
                <orders.jdbc.datasource.type>dbcp</orders.jdbc.datasource.type>
                <!-- 数据库 -->
                <orders.jdbc.driver>com.mysql.jdbc.Driver</orders.jdbc.driver>
                <orders.jdbc.url>jdbc:MySql://10.28.5.201:3306/orders?characterEncoding=UTF-8</orders.jdbc.url>
                <orders.jdbc.username>root</orders.jdbc.username>
                <orders.jdbc.password>123456</orders.jdbc.password>
                <!-- 日志 -->
                <orders.log.level>INFO</orders.log.level>
                <orders.log.dtms.level>INFO</orders.log.dtms.level>
                <orders.log.path>/diliapp/servers/logs/orders.nong12.com</orders.log.path>
                <!--打包编码 -->
                <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
                <orders.contextPath>http://orders.nong12.com</orders.contextPath>
                <!--redis-->
                <project.redis.host1>10.28.5.200</project.redis.host1>
                <project.redis.port1>6379</project.redis.port1>

                <!--统一管理平台配置-->
                <conf.manage.enable>true</conf.manage.enable>
                <conf.manage.spider>true</conf.manage.spider>
                <conf.manage.system>orders</conf.manage.system>
                <conf.manage.domain>http://manage.nong12.com/</conf.manage.domain>
                <!--系统url并未以.do结尾，因此需要使用如下方式的正则表达式-->
                <conf.manage.includes>^/.*</conf.manage.includes>
                <!--权限拦截器在处理导出文件时会出错，导致文件打不开，比如Excel，因此对于导出，跳过拦截-->
                <conf.manage.excludes>^/noAccess.do$,^/welcome.do$,^/loginControl/.*,^/api/.*,^/cleanCache$,^/assets/.*,^/export/.*,^/orderSelf/export/.*,^/monitor,^/druid/*,^/orderPrint/export/*</conf.manage.excludes>
                <!--订单系统短信通知开关-->
                <orders.sms.enabled>true</orders.sms.enabled>
                <!--订单获系统缓存开关-->
                <orders.cache.enabled>false</orders.cache.enabled>
                <!-- 存时间 以秒为单位 -->
                <orders.cache.time>1800</orders.cache.time>
                <orders.cache.redis.selectDB>1</orders.cache.redis.selectDB>
                <orders.cache.main.key>pnr_orders</orders.cache.main.key>
                <!-- 店铺接口签名  -->
                <orders.rpc.shopClient.sign>FzZGZxd2VycXdlYXNzZHZzdnp4Y3Z</orders.rpc.shopClient.sign>
                <!-- 消息中心配置 -->
                <mq.namesrvAddr>10.28.5.202:9876;10.28.5.203:9876</mq.namesrvAddr>
                <mq.producerGroup>orders</mq.producerGroup>
            </properties>
        </profile>

    </profiles>
    <!-- 打包配置信息 -->
    <profiles>
        <profile>
            <!-- 开发环境 -->
            <id>develop</id>
            <!-- 默认 -->
            <activation>
                <activeByDefault>false</activeByDefault>
            </activation>
            <properties>
                <!--jdbc type -->
                <orders.jdbc.datasource.type>dbcp</orders.jdbc.datasource.type>
                <!-- 数据库 -->
                <orders.jdbc.driver>com.mysql.jdbc.Driver</orders.jdbc.driver>
                <orders.jdbc.url>jdbc:MySql://10.28.6.117:3306/orders?characterEncoding=UTF-8</orders.jdbc.url>
                <orders.jdbc.username>root</orders.jdbc.username>
                <orders.jdbc.password>123456</orders.jdbc.password>
                <!-- 日志 -->
                <orders.log.level>INFO</orders.log.level>
                <orders.log.dtms.level>INFO</orders.log.dtms.level>
                <orders.log.path>/diliapp/servers/logs/orders.nong12.com</orders.log.path>
                <!--打包编码 -->
                <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
                <orders.contextPath>http://orders.nong12.com</orders.contextPath>
                <!--redis-->
                <project.redis.host1>10.28.6.152</project.redis.host1>
                <project.redis.port1>6379</project.redis.port1>
                <!--统一管理平台配置-->
                <conf.manage.enable>true</conf.manage.enable>
                <conf.manage.spider>false</conf.manage.spider>
                <conf.manage.system>orders</conf.manage.system>
                <conf.manage.domain>http://manage.nong12.com/</conf.manage.domain>
                <!--系统url并未以.do结尾，因此需要使用如下方式的正则表达式-->
                <conf.manage.includes>^/.*</conf.manage.includes>
                <!--权限拦截器在处理导出文件时会出错，导致文件打不开，比如Excel，因此对于导出，跳过拦截-->
                <conf.manage.excludes>^/noAccess.do$,^/welcome.do$,^/loginControl/.*,^/api/.*,^/cleanCache$,^/assets/.*,^/export/.*,^/orderSelf/export/.*,^/monitor,^/druid/*,^/orderPrint/export/*</conf.manage.excludes>
                <!--订单系统短信通知开关-->
                <orders.sms.enabled>true</orders.sms.enabled>
                <!--订单获系统缓存开关-->
                <orders.cache.enabled>false</orders.cache.enabled>
                <!-- 存时间 以秒为单位 -->
                <orders.cache.time>1800</orders.cache.time>
                <orders.cache.redis.selectDB>1</orders.cache.redis.selectDB>
                <orders.cache.main.key>pnr_orders</orders.cache.main.key>
                <!-- 店铺接口签名  -->
                <orders.rpc.shopClient.sign>FzZGZxd2VycXdlYXNzZHZzdnp4Y3Z</orders.rpc.shopClient.sign>
                <!-- 消息中心配置 -->
                <mq.namesrvAddr>10.28.6.124:9876;10.28.6.125:9876</mq.namesrvAddr>
                <mq.producerGroup>orders</mq.producerGroup>
                <!-- 订单请求和响应参数 -->
                <orders.paramLog.enabled>false</orders.paramLog.enabled>
            </properties>
        </profile>



    </profiles>


</project>