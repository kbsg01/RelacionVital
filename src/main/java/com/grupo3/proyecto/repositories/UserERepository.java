package com.grupo3.proyecto.repositories;

import com.grupo3.proyecto.models.User;
import com.grupo3.proyecto.models.UserEmocion;


public interface UserERepository extends BaseRepository<UserEmocion>{

    UserEmocion findByUser(User user);
    
}
