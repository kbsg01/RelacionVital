package com.grupo3.proyecto.services;

import org.springframework.stereotype.Service;

import com.grupo3.proyecto.models.Medicamento;
import com.grupo3.proyecto.repositories.MedicamentoRepository;

@Service
public class MedicamentoService extends BaseService<Medicamento>{

    public MedicamentoService(MedicamentoRepository mRepo){
        super(mRepo);
    }
}
