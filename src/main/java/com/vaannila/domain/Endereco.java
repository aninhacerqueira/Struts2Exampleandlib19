package com.vaannila.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="endereco")
public class Endereco {

	private Long endereco;
	private String logradouro;
	private String bairro;
	private String municipio;
	private String UF;
	private String cep;
	private String pais;

	@Column(name="ENDERECO")
	public Long getEndereco() {
		return endereco;
	}
	
	public void setEndereco(Long endereco) {
		this.endereco = endereco;
	}
	
	@Column(name="LOGRADOURO")
	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}
	
	@Column(name="BAIRRO")
	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	@Column(name="MUNICIPIO")
	public String getMunicipio() {
		return municipio;
	}
	
	public void setMunicipio(String municipio) {
		this.municipio = municipio;
	}
	
	@Column(name="UF")
	public String getUF() {
		return UF;
	}

	public void setUF(String uF) {
		UF = uF;
	}

	@Column(name="CEP")
	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}
	
	@Column(name="PAIS")
	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}
	

	
}
