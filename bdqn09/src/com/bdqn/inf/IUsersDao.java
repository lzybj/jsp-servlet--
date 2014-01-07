package com.bdqn.inf;

import com.bdqn.domain.Users;

public interface IUsersDao {
	public Users findByUserName(String uName);
}
