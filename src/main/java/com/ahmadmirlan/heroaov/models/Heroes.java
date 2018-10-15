package com.ahmadmirlan.heroaov.models;

import com.ahmadmirlan.heroaov.core.BaseEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Set;

@Entity
@Table(name = "heroes")
public class Heroes extends BaseEntity {

    @NotNull
    @Column(name = "hero_name")
    String heroName;

    @NotNull
    @Column(name = "tagline")
    String tagline;

    @NotNull
    @Column(name = "skill")
    String skill;

    @NotNull
    @Column(name = "cover")
    String cover;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "hero_roles",
            joinColumns = @JoinColumn(name = "hero_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id"))
    Set<Roles> roles;

    public Heroes() {}

    public Heroes(@NotNull String heroName,
                  @NotNull String tagline,
                  @NotNull String skill,
                  @NotNull String cover
    )
    {
        super();
        this.heroName = heroName;
        this.tagline = tagline;
        this.skill = skill;
        this.cover = cover;
    }

    public String getHeroName() {
        return heroName;
    }

    public void setHeroName(String heroName) {
        this.heroName = heroName;
    }

    public String getTagline() {
        return tagline;
    }

    public void setTagline(String tagline) {
        this.tagline = tagline;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public Long getId() {
        return id;
    }


    public Set<Roles> getRoles() {
        return roles;
    }

    public void addRoles(Roles roles) {
        this.roles.add(roles);
    }
}
