package com.grupo3.proyecto.services;

import org.springframework.stereotype.Service;

import com.grupo3.proyecto.models.User;
import com.grupo3.proyecto.models.UserEmocion;
import com.grupo3.proyecto.repositories.BaseRepository;
import com.grupo3.proyecto.repositories.UserERepository;

@Service
public class UserEmocionService extends BaseService<UserEmocion>{
    private final UserERepository uERepo;

    public UserEmocionService(BaseRepository<UserEmocion> baseRepo, UserERepository uERepo) {
        super(baseRepo);
        this.uERepo = uERepo;
    }

    public UserEmocion findByUser(User user){
        return uERepo.findByUser(user);
    }

}
