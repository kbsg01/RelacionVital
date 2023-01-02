package com.grupo3.proyecto.repositories;

import java.util.List;

import com.grupo3.proyecto.models.UserMedicamento;

public interface UserMedicamentoRepository extends BaseRepository<UserMedicamento>{
    
    List<UserMedicamento> findByFechaRecetaByOrderDesc();
}
