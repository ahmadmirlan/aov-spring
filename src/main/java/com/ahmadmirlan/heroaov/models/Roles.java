package com.ahmadmirlan.heroaov.models;

import com.ahmadmirlan.heroaov.core.BaseEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Set;

@Entity
@Table(name = "roles")
public class Roles extends BaseEntity {

    @NotNull
    @Column(name = "role_name")
    String role_name;

    @ManyToMany(mappedBy = "roles")
    Set<Heroes> heroes;

    public Roles() {}

    public Roles(@NotNull String role_name) {
        super();
        this.role_name = role_name;
    }

    public String getRole_name() {
        return role_name;
    }

    public void setRole_name(String role_name) {
        this.role_name = role_name;
    }

    public Long getId() {
        return id;
    }
}
