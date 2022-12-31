package com.grupo3.proyecto.services;

import org.springframework.stereotype.Service;

import com.grupo3.proyecto.models.Emocion;
import com.grupo3.proyecto.repositories.EmocionRepository;

@Service
public class EmocionService extends BaseService<Emocion>{
    
    private final EmocionRepository eRepo;

    public EmocionService(EmocionRepository eRepo) {
        super(eRepo);
        this.eRepo = eRepo;
    }
}
