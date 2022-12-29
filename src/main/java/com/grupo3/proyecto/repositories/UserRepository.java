package com.grupo3.proyecto.repositories;

import com.grupo3.proyecto.models.User;


public interface UserRepository extends BaseRepository<User>{
    
    User findByEmail(String email);
}
