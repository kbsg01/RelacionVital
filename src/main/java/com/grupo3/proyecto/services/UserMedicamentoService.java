package com.grupo3.proyecto.services;

import com.grupo3.proyecto.models.UserMedicamento;
import com.grupo3.proyecto.repositories.UserMedicamentoRepository;

public class UserMedicamentoService extends BaseService<UserMedicamento>{
    
    private final UserMedicamentoRepository umRepo;

    public UserMedicamentoService(UserMedicamentoRepository umRepo) {
        super(umRepo);
        this.umRepo = umRepo;
    }

    
}
