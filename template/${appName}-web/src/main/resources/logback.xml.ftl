<?xml version="1.0" encoding="UTF-8"?>
<configuration>

    <appender name="STDOUT" class="ch.qos.logback.core.ConsoleAppender">
        <encoder>
            <pattern> %d{yyyy-MM-dd HH:mm:ss.SSS}:[%thread] %-5level %logger{36} - %msg%n</pattern>
        </encoder>
    </appender>

    <appender name="FILEINFO"
              class="ch.qos.logback.core.rolling.RollingFileAppender">
        <file>${r'${catalina.base}'}/logs/servlet-springmvc.log</file>
        <!--<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">-->
        <!--<FileNamePattern>${r'${catalina.base}'}/logs/%d{yyyy-MM-dd}/log_servlet-springmvc.log</FileNamePattern>-->
        <!--</rollingPolicy>-->

        <rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
            <FileNamePattern>${r'${catalina.base}'}/logs/%d{yyyy-MM-dd}/servlet-springmvc.%i.log.zip
            </FileNamePattern>
            <MaxHistory>30</MaxHistory>
            <timeBasedFileNamingAndTriggeringPolicy
                    class="ch.qos.logback.core.rolling.SizeAndTimeBasedFNATP">
                <maxFileSize>5MB</maxFileSize>
            </timeBasedFileNamingAndTriggeringPolicy>
        </rollingPolicy>


        <encoder>
            <pattern>%date [%thread] %logger{10} [%file:%line] %msg%n
            </pattern>
        </encoder>
    </appender>


    <!--<appender name="FILEERROR"-->
    <!--class="ch.qos.logback.core.rolling.RollingFileAppender">-->
    <!--<file>logs/gateway_error.log</file>-->
    <!--<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">-->
    <!--<FileNamePattern>logs/%d{yyyy-MM-dd}/gateway_error.log</FileNamePattern>-->
    <!--</rollingPolicy>-->
    <!--<filter class="ch.qos.logback.classic.filter.LevelFilter">-->
    <!--<level>ERROR</level>-->
    <!--<onMatch>ACCEPT</onMatch>-->
    <!--<onMismatch>DENY</onMismatch>-->
    <!--</filter>-->
    <!--<encoder>-->
    <!--<pattern>%date [%thread] %logger{10} [%file:%line] %msg%n-->
    <!--</pattern>-->
    <!--</encoder>-->
    <!--</appender>-->


    <!--mybatis debug-->
    <!--	<logger name="com.ibatis" level="DEBUG" />
        <logger name="com.ibatis.common.jdbc.SimpleDataSource" level="DEBUG" />
        <logger name="com.ibatis.common.jdbc.ScriptRunner" level="DEBUG" />
        <logger name="com.ibatis.sqlmap.engine.impl.SqlMapClientDelegate" level="DEBUG" />-->
    <logger name="java.sql.Connection" level="DEBUG" />
    <logger name="java.sql.Statement" level="DEBUG" />
    <logger name="java.sql.ResultSet" level="debug" />
    <logger name="java.sql.PreparedStatement" level="DEBUG" >
        <appender-ref ref="STDOUT" />
    </logger>
    <!-- 控制台debug sql-->
    <logger name="com.weili.project.dao" level="debug" />



    <!--log4jdbc -->
    <logger name="java.sql.Connection" level="debug" />
    <logger name="java.sql.Statement" level="debug" />
    <logger name="java.sql.PreparedStatement" level="debug" />





    <root level="INFO">
        <appender-ref ref="STDOUT" />
        <appender-ref ref="FILEINFO" />
    </root>
</configuration>