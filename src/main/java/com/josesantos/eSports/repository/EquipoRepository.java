package com.josesantos.eSports.repository;

import com.josesantos.eSports.entity.EquipoEntity;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface EquipoRepository extends JpaRepository<EquipoEntity, Long> {
    
}