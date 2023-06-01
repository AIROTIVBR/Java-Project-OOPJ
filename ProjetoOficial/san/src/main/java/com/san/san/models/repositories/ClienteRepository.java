package com.san.san.models.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

import com.san.san.models.entities.Cliente;

@Repository
public interface ClienteRepository extends JpaRepository<Cliente, Long> {
    
    @Query(value = "SELECT * FROM pacientes", nativeQuery = true)
    List<Cliente> findAllPacientes();
}
