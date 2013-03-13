package com.nexr.workerbee.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

@Entity
@Table(name = "`USER_PROFILES`")
public class UserProfile {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "ID")
  private Long id;

  @OneToOne
  @JoinColumn(name = "USER_ID", nullable = false)
  private User user;

  @Column(name = "FIRST_NAME")
  private String firstName;

  @Column(name = "LAST_NAME")
  private String lastName;

  @Column(name = "PHONE")
  private String phone;

  @Column(name = "EMAIL", unique = true)
  private String email;

  @Column(name = "PRIMARY_LANGUAGE", columnDefinition = "varchar(5) default 'en'")
  @Enumerated(EnumType.STRING)
  private Language primaryLanguage;

  @Column(name = "CREATED", insertable = true, updatable = false, nullable = false)
  @Temporal(TemporalType.TIMESTAMP)
  private Date created;

  @Transient
  private String verifyPassword;

  @ManyToOne
  @JoinColumn(name = "USER_GROUP_ID", nullable = true)
  private UserGroup userGroup;

  public UserProfile() {
  }

  public UserProfile(String firstName) {
    this.firstName = firstName;
  }

  public UserProfile(String firstName, String lastName, String email) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.email = email;
  }

  public UserProfile(String firstName, String lastName, String email, Language primaryLanguage) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.email = email;
    this.primaryLanguage = primaryLanguage;
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
    if (userGroup != null)
      userGroup.getUserProfiles().add(this);
    this.userGroup = userGroup;
  }

  public Language getPrimaryLanguage() {
    return primaryLanguage;
  }

  public void setPrimaryLanguage(Language primaryLanguage) {
    this.primaryLanguage = primaryLanguage;
  }

  public Date getCreated() {
    return created;
  }

  public void setCreated(Date created) {
    this.created = created;
  }

  public String getVerifyPassword() {
    return verifyPassword;
  }

  public void setVerifyPassword(String verifyPassword) {
    this.verifyPassword = verifyPassword;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }
}
