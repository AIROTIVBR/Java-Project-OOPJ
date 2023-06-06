package com.san.san.models.repositories;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.san.san.models.entities.Evolucao;

@Repository
public interface EvolucaoRepository extends JpaRepository<Evolucao, Long> {
    
    @Query("SELECT e FROM Evolucao e WHERE e.id_pac = :idPac")
    List<Evolucao> findEvolucoesByIdPac(@Param("idPac") Long idPac);
    
}
