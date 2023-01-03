package com.grupo3.proyecto.services;

import org.springframework.stereotype.Service;

import com.grupo3.proyecto.models.UserMedicamentos;
import com.grupo3.proyecto.repositories.UserMedicamentoRepository;

@Service
public class UserMedicamentoService extends BaseService<UserMedicamentos>{
    
    private final UserMedicamentoRepository umRepo;

    public UserMedicamentoService(UserMedicamentoRepository umRepo) {
        super(umRepo);
        this.umRepo = umRepo;
    }

}
