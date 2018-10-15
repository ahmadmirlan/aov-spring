package com.ahmadmirlan.heroaov.services;

import com.ahmadmirlan.heroaov.models.Heroes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;


@RepositoryRestResource(path = "heroes")
public interface HeroRepository extends JpaRepository<Heroes, Long> {
}