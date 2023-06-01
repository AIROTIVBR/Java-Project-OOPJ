package com.san.san.models.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "pacientes")
public class Cliente {
    
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	@Column(name = "id_pac")
	private Integer idPac;
	private String nome;
	private String sexo;
	private double peso;

    public Cliente(){
        
    }

    public Cliente(String nome, String sexo, double peso) {
		super();
		this.nome = nome;
		this.sexo = sexo;
		this.peso = peso;
	}

	public Integer getIdPac() {
		return idPac;
	}
	
	public void setIdPac(Integer idPac) {
		this.idPac = idPac;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}
}
