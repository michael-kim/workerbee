package com.nexr.workerbee.repository;

import com.nexr.workerbee.domain.UserGroup;

/**
 * Created with IntelliJ IDEA.
 * User: julingks
 * Date: 13. 3. 13.
 * Time: 오후 1:32
 * To change this template use File | Settings | File Templates.
 */
public interface UserGroupRepository extends GenericRepository<UserGroup, Long>{

    UserGroup findByGroupName(String groupName);
}
