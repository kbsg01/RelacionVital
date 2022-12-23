package com.grupo3.proyecto.repositories;

import org.springframework.stereotype.Repository;

import com.grupo3.proyecto.models.User;

@Repository
public interface UserRepository extends BaseRepository<User>{
    
    User findByEmail(String email);
}
