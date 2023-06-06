package com.san.san.models.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "profissional")
public class Profissional {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)


    @Column(name = "id_pro")
	private Integer idPro;
    @Column(name = "nome")
	private String nome;
    @Column(name = "email")
	private String email;
    @Column(name = "CRN")
	private String crn;
    @Column(name = "senha")
	private String senha;
    public Integer getIdPro() {
        return idPro;
    }
    public void setIdPro(Integer idPro) {
        this.idPro = idPro;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getCrn() {
        return crn;
    }
    public void setCrn(String crn) {
        this.crn = crn;
    }
    public String getSenha() {
        return senha;
    }
    public void setSenha(String senha) {
        this.senha = senha;
    }

    

}
