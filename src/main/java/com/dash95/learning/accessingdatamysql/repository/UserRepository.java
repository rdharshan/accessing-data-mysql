package com.dash95.learning.accessingdatamysql.repository;

import com.dash95.learning.accessingdatamysql.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer> {
}
