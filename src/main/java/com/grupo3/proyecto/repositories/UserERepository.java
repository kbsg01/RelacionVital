package com.grupo3.proyecto.repositories;

import org.springframework.stereotype.Repository;

import com.grupo3.proyecto.models.User;
import com.grupo3.proyecto.models.UserEmocion;

@Repository
public interface UserERepository extends BaseRepository<UserEmocion>{

    UserEmocion findByUser(User user);
    
}
