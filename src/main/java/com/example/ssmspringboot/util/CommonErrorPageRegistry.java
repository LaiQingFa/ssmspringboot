package com.example.ssmspringboot.util;

import org.springframework.boot.web.servlet.ErrorPage;
import org.springframework.boot.web.servlet.ErrorPageRegistrar;
import org.springframework.boot.web.servlet.ErrorPageRegistry;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;

/**
 * 异常处理
 */
@Component
public class CommonErrorPageRegistry implements ErrorPageRegistrar {


    public void registerErrorPages(ErrorPageRegistry errorPageRegistry) {
        ErrorPage errorPage404=new ErrorPage(HttpStatus.NOT_FOUND,"/index");
        ErrorPage errorPage500=new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR,"/index");
        errorPageRegistry.addErrorPages(errorPage404,errorPage500);
    }
}
