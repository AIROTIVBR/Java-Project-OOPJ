package com.san.san.models.entities;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table (name = "evolucao")
public class Evolucao {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column (name = "id_evo")
    private Integer id_evo;
    @Column (name = "dia")
    private Date data;
    @Column (name = "evolucao")
    private String evolucao;
    @Column (name = "id_pac")
    private Long id_pac;

    public Integer getId_evo() {
        return id_evo;
    }
    public void setId_evo(Integer id_evo) {
        this.id_evo = id_evo;
    }
    public Date getData() {
        return data;
    }
    public void setData(Date data) {
        this.data = data;
    }
    public String getEvolucao() {
        return evolucao;
    }
    public void setEvolucao(String evolucao) {
        this.evolucao = evolucao;
    }
    public Long getId_pac() {
        return id_pac;
    }
    public void setId_pac(Long id_pac) {
        this.id_pac = id_pac;
    }
    
    

}
