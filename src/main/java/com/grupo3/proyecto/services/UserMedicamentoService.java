package com.grupo3.proyecto.services;

import org.springframework.stereotype.Service;

import com.grupo3.proyecto.models.UserMedicamento;
import com.grupo3.proyecto.repositories.UserMedicamentoRepository;

@Service
public class UserMedicamentoService extends BaseService<UserMedicamento>{

    public UserMedicamentoService(UserMedicamentoRepository umRepo) {
        super(umRepo);
    }

}
