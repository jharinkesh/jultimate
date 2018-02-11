/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.core.config;

import java.io.IOException;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PropertiesLoaderUtils;

@Configuration
public class ApplicationConfig {

    public static final String CHARACTER_ENCODING = "UTF-8";
    
    @Bean
    public static PropertyPlaceholderConfigurer propertyPlaceholderConfigurer() throws IOException {
        return getPropertyPlaceholderConfigurer();
    }

    public static PropertyPlaceholderConfigurer getPropertyPlaceholderConfigurer() throws IOException {
        PropertyPlaceholderConfigurer placeholderConfigurer = new PropertyPlaceholderConfigurer();
        Resource resource1 = new ClassPathResource("app.properties");
        String propertiesLocation = PropertiesLoaderUtils.loadProperties(resource1).getProperty("conf.location");
        Resource resource2 = new FileSystemResource(propertiesLocation);
        placeholderConfigurer.setLocations(new Resource[]{resource1, resource2});
        return placeholderConfigurer;
    }

    @Bean
    public MessageSource messageSource() {
        return createMessageSource();
    }

    public static MessageSource createMessageSource() {
        ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
        messageSource.setBasenames("/WEB-INF/i18n/messages","/WEB-INF/i18n/email_templates");
        messageSource.setCacheSeconds(5);
        messageSource.setUseCodeAsDefaultMessage(true);
        messageSource.setDefaultEncoding(CHARACTER_ENCODING);
        return messageSource;
    }
}
