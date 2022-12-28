package com.grupo3.proyecto.repositories;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.grupo3.proyecto.models.Tarea;

@Repository
public interface TareaRepository extends BaseRepository<Tarea>{
    List<Tarea> findTop5ByOrderByDeadlineDesc();
}
