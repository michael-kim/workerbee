package com.nexr.workerbee.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.hibernate.annotations.Type;


@Entity
@Table(name="`USERS`")
public class User {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="ID")
    private Long id;
    
    @Column(name="USERNAME", nullable=false,length=50,unique=true)
    private String username;
    
    @Column(name="PASSWORD", nullable=false,length=50)
    private String password;
    
    @Type(type="true_false")
    @Column(name="ENABLED")
    private boolean enabled;
    
    @OneToMany(mappedBy="user",cascade=CascadeType.ALL,orphanRemoval=true)
    @LazyCollection(LazyCollectionOption.EXTRA)
    private List<Authority> authorities = new ArrayList<Authority>();
    
    @OneToOne(mappedBy="user",cascade=CascadeType.ALL)
    private UserDetails userDetails;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public List<Authority> getAuthority() {
        return authorities;
    }

    public void addAuthority(Authority authority) {
        this.authorities.add(authority);
    }

    public UserDetails getUserDetails() {
        return userDetails;
    }

    public void setUserDetails(UserDetails userDetails) {
        this.userDetails = userDetails;
    }
}
