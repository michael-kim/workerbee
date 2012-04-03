package com.nexr.workerbee.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
@Table(name="`USER_PROFILES`")
public class UserProfile {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="ID")
    private Long id;
    
    @OneToOne
    @JoinColumn(name="USER_ID",nullable=false)
    private User user;

    @Column(name="FIRST_NAME")
    private String firstName;
    
    @Column(name="LAST_NAME")
    private String lastName;

    @Column(name="EMAIL")
    private String email;
    
    @ManyToOne(cascade={CascadeType.ALL})
    @JoinColumn(name="USER_GROUP_ID")
    private UserGroup userGroup;
    
    @OneToMany(mappedBy="userProfile",cascade=CascadeType.ALL,orphanRemoval=true)
    @LazyCollection(LazyCollectionOption.EXTRA)
    private List<Authority> authorities = new ArrayList<Authority>();
    
    public UserProfile(){
    }
    
    public UserProfile(String firstName, String lastName, String email){
        this.firstName=firstName;
        this.lastName=lastName;
        this.email=email;
    }
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public UserGroup getUserGroup() {
        return userGroup;
    }

    public void setUserGroup(UserGroup userGroup) {
        userGroup.getUserProfiles().add(this);
        this.userGroup=userGroup;
    }
    
    public List<Authority> getAuthority() {
        return authorities;
    }

    public void addAuthority(Authority authority) {
        authority.setUserProfile(this);
        this.authorities.add(authority);
    }

}
