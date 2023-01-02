package com.grupo3.proyecto.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.grupo3.proyecto.models.UserMedicamento;
import com.grupo3.proyecto.repositories.UserMedicamentoRepository;

@Service
public class UserMedicamentoService extends BaseService<UserMedicamento>{
    
    private final UserMedicamentoRepository umRepo;

    public UserMedicamentoService(UserMedicamentoRepository umRepo) {
        super(umRepo);
        this.umRepo = umRepo;
    }



    @Override
    public void delete(Long id) {
        super.delete(id);
    }

    @Override
    public List<UserMedicamento> findAll() {
        return super.findAll();
    }

    @Override
    public UserMedicamento findById(Long id) {
        return super.findById(id);
    }

    @Override
    public UserMedicamento save(UserMedicamento entity) {
        return super.save(entity);
    }

    @Override
    public UserMedicamento update(UserMedicamento entity) {
        return super.update(entity);
    }
}
