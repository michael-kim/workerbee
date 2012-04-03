package com.nexr.workerbee.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="`USER_GROUPS`")
public class UserGroup {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="ID")
    private Long id;
    
    @Column(name="GROUP_NAME")
    private String groupName;
    
    @Column(name="DESCRIPTION")
    private String description;
    
    @OneToMany(mappedBy="userGroup")
    private List<UserProfile> userProfiles = new ArrayList<UserProfile>();
    
    @ManyToMany
    @JoinTable(
            name="USER_GROUPS_PERMISSIONS",
            joinColumns = {@JoinColumn(name="USER_GROUP_ID")},
            inverseJoinColumns={@JoinColumn(name="PERMISSION_ID")}
    )
    private List<Permission> permissions = new ArrayList<Permission>();

    public UserGroup(){
    }
    
    public UserGroup(String groupName,String description){
        this.groupName=groupName;
        this.description=description;
    }
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public List<UserProfile> getUserProfiles() {
        return userProfiles;
    }

    public void addUserProfile(UserProfile userProfile) {
        userProfile.setUserGroup(this);
        this.userProfiles.add(userProfile);
    }

    public List<Permission> getPermissions() {
        return permissions;
    }

    public void addPermissions(Permission permission) {
        this.permissions.add(permission);
    }
}
