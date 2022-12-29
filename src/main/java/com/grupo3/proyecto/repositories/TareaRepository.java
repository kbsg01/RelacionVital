package com.grupo3.proyecto.repositories;

import java.util.List;

import com.grupo3.proyecto.models.Tarea;


public interface TareaRepository extends BaseRepository<Tarea>{
    List<Tarea> findTop5ByOrderByDeadlineDesc();
}
