/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wedoneit.entity;

/**
 *
 * @author felipe
 */
public class PerfilEntity {
    private Long idPerfil = null;
    private Long idFuncionalidade = null;
    private Integer incluir = new Integer(0);
    private Integer alterar = new Integer(0);
    private Integer excluir = new Integer(0);
    private Integer consultar = new Integer(0);
    private Integer status = null;

    public Long getIdPerfil() {
        return idPerfil;
    }

    public void setIdPerfil(Long idPerfil) {
        this.idPerfil = idPerfil;
    }

    public Long getIdFuncionalidade() {
        return idFuncionalidade;
    }

    public void setIdFuncionalidade(Long idFuncionalidade) {
        this.idFuncionalidade = idFuncionalidade;
    }

    public Integer getIncluir() {
        return incluir;
    }

    public void setIncluir(Integer incluir) {
        this.incluir = incluir;
    }

    public Integer getAlterar() {
        return alterar;
    }

    public void setAlterar(Integer alterar) {
        this.alterar = alterar;
    }

    public Integer getExcluir() {
        return excluir;
    }

    public void setExcluir(Integer excluir) {
        this.excluir = excluir;
    }

    public Integer getConsultar() {
        return consultar;
    }

    public void setConsultar(Integer consultar) {
        this.consultar = consultar;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
