package com.blockeng.boss;

import com.alicp.jetcache.anno.config.EnableCreateCacheAnnotation;
import com.alicp.jetcache.anno.config.EnableMethodCache;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.retry.annotation.EnableRetry;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * @author qiang
 */
@SpringBootApplication
@EnableDiscoveryClient
@EnableFeignClients
@EnableMethodCache(basePackages = "com.blockeng")
@EnableCreateCacheAnnotation
@EnableCircuitBreaker
@EnableAsync
@RefreshScope
@EnableRetry
public class BossApplication {

    public static void main(String[] args) {
        SpringApplication.run(BossApplication.class, args);
    }
}