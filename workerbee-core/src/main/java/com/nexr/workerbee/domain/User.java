package com.nexr.workerbee.domain;

import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name = "`USERS`")
public class User {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "ID")
  private Long id;

  @Column(name = "USERNAME", nullable = false, length = 50, unique = true)
  private String username;

  @Column(name = "PASSWORD", nullable = false, length = 50)
  private String password;

  @Transient
  private String verifyPassword;

  @Type(type = "true_false")
  @Column(name = "ENABLED")
  private boolean enabled;

  @Column(name = "PASSWORD_LAST_MODIFIED", nullable = true)
  @Temporal(TemporalType.TIMESTAMP)
  private Date passwordLastModified;

  @OneToOne(mappedBy = "user", cascade = CascadeType.ALL)
  private UserProfile userProfile;

  public User() {
  }

  public User(Long id) {
    this.id = id;
  }

  public User(String username, String password, boolean enabled) {
    this.username = username;
    this.password = password;
    this.enabled = enabled;
  }

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

  public String getVerifyPassword() {
    return verifyPassword;
  }

  public void setVerifyPassword(String verifyPassword) {
    this.verifyPassword = verifyPassword;
  }

  public boolean isEnabled() {
    return enabled;
  }

  public void setEnabled(boolean enabled) {
    this.enabled = enabled;
  }

  public UserProfile getUserProfile() {
    return userProfile;
  }

  public void setUserProfile(UserProfile userProfile) {
    if (userProfile != null)
      userProfile.setUser(this);
    this.userProfile = userProfile;
  }

  public Date getPasswordLastModified() {
    return passwordLastModified;
  }

  public void setPasswordLastModified(Date passwordLastModified) {
    this.passwordLastModified = passwordLastModified;
  }
}
