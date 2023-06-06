package com.san.san.models.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.san.san.models.entities.Profissional;

@Repository
public interface ProfissionalRepository extends JpaRepository<Profissional, Long>{
    
    @Query(value = "SELECT * FROM profissional", nativeQuery = true)
    List<Profissional> findAllProfissionals();

}
