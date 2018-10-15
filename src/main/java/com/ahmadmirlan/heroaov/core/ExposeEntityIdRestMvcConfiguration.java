package com.ahmadmirlan.heroaov.core;

import com.ahmadmirlan.heroaov.models.Heroes;
import com.ahmadmirlan.heroaov.models.Roles;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurerAdapter;

@Configuration
public class ExposeEntityIdRestMvcConfiguration extends RepositoryRestConfigurerAdapter {
    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config) {
        config.exposeIdsFor(Roles.class);
        config.exposeIdsFor(Heroes.class);
    }
}