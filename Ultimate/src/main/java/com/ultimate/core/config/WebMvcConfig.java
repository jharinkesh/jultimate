package com.ultimate.core.config;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@EnableWebMvc //mvc:annotation-driven
@Configuration
@ComponentScan({"com.ultimate"})
@Import({SecurityConfig.class})
public class WebMvcConfig extends WebMvcConfigurerAdapter {

    @Value("${home.dir}")
    private String homeDir;
    @Value("${media.dir}")
    private String mediaDir;
    private static final String VIEWS = "/WEB-INF/views/";

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/angular/**").addResourceLocations("/resources/angular/");
        registry.addResourceHandler("/bootstrap/**").addResourceLocations("/resources/bootstrap/");
        registry.addResourceHandler("/css/**").addResourceLocations("/resources/css/");
        registry.addResourceHandler("/images/**").addResourceLocations("/resources/images/");
        registry.addResourceHandler("/jquery/**").addResourceLocations("/resources/jquery/");
        registry.addResourceHandler("/js/**").addResourceLocations("/resources/js/");
        registry.addResourceHandler("/tinymce/**").addResourceLocations("/resources/tinymce/");
        
         try {
            Files.createDirectories(Paths.get(homeDir));
            init(mediaDir);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        String res = "file:///" + mediaDir;
        registry.addResourceHandler("/media/**").addResourceLocations(res);
    }
    
     public void init(String home) throws Exception {
        if (StringUtils.isEmpty(home)) {
            throw new Exception("home.dir is empty");
        }

        Path path = Paths.get(home);

        if (!Files.exists(path)) {
            System.out.println("Home directory does not exist, creating...");

            Files.createDirectories(path);
            if (!Files.exists(path)) {
                throw new Exception("can't create home directory:  " + home);
            }
            Files.createDirectory(path.resolve("images/"));
           
        }
    }

    @Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setViewClass(JstlView.class);
        viewResolver.setPrefix(VIEWS);
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

}