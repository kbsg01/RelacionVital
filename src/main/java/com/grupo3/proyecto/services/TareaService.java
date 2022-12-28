package com.grupo3.proyecto.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.grupo3.proyecto.models.Tarea;
import com.grupo3.proyecto.repositories.TareaRepository;

@Service
public class TareaService extends BaseService<Tarea>{

    private final TareaRepository tRepo;
    public TareaService(TareaRepository tRepo) {
        super(tRepo);
        this.tRepo = tRepo;
    }
    
    public List<Tarea> findTop5(){
        return tRepo.findTop5ByOrderByDeadlineDesc();
    }
}
