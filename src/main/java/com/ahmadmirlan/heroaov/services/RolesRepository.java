package com.ahmadmirlan.heroaov.services;

import com.ahmadmirlan.heroaov.models.Roles;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "roles")
public interface RolesRepository extends JpaRepository<Roles, Long> {
}