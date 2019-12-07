package com.myblog;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

//mapper接口类包扫描
@MapperScan(value="com.myblog.dao")
@ComponentScan(basePackages="com.myblog.*")
@SpringBootApplication
public class ChanchenApplication {

    public static void main(String[] args) {
        SpringApplication.run(ChanchenApplication.class, args);
    }

}
