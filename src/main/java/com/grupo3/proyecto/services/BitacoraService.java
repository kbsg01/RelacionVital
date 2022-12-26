package com.grupo3.proyecto.services;

import org.springframework.stereotype.Service;

import com.grupo3.proyecto.models.Bitacora;
import com.grupo3.proyecto.repositories.BitacoraRepository;

@Service
public class BitacoraService extends BaseService<Bitacora>{
    
    public BitacoraService(BitacoraRepository bRepo){
        super(bRepo);
    }
}
