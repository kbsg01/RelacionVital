package com.grupo3.proyecto.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.grupo3.proyecto.repositories.BaseRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public abstract class BaseService<T> implements IService<T>{

    private final BaseRepository<T> baseRepo;

    @Override
    public void delete(Long id){
        T entity = findById(id);
        if(entity != null){
            baseRepo.delete(entity);
        }
    }

    @Override
    public List<T> findAll(){
        return baseRepo.findAll();
    }

    @Override
    public T findById(Long id){
        Optional<T> op = baseRepo.findById(id);
        return op.isPresent() ? op.get() : null;
    }
    
    @Override
    public T save(T entity){
        return baseRepo.save(entity);
    }

    @Override
    public T update(T entity){
        return baseRepo.save(entity);
    }
}
