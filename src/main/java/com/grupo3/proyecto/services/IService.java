package com.grupo3.proyecto.services;

import java.util.List;

public interface IService<T> {
    
    T save(T entity);

    List<T> findAll();

    T findById(Long id);

    void delete(Long id);

    T update(T entity);
}
