package com.grupo3.proyecto.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.NoRepositoryBean;

@NoRepositoryBean
public interface BaseRepository<T> extends CrudRepository<T, Long> {

    List<T> findAll();
    
}
