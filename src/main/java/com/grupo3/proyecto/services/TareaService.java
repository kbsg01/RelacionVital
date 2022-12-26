package com.grupo3.proyecto.services;

import org.springframework.stereotype.Service;

import com.grupo3.proyecto.models.Tarea;
import com.grupo3.proyecto.repositories.TareaRepository;

@Service
public class TareaService extends BaseService<Tarea>{

    public TareaService(TareaRepository tRepo) {
        super(tRepo);
    }
    
    
}
