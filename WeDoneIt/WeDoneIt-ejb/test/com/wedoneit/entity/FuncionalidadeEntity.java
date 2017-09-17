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
public class FuncionalidadeEntity {
    private Long idFuncionalidade = null;
    private String nome = null;
    private String comando1 = null;
    private String comando2 = null;
    private String comando3 = null;
    private Integer status = null;

    public Long getIdFuncionalidade() {
        return idFuncionalidade;
    }

    public void setIdFuncionalidade(Long idFuncionalidade) {
        this.idFuncionalidade = idFuncionalidade;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getComando1() {
        return comando1;
    }

    public void setComando1(String comando1) {
        this.comando1 = comando1;
    }

    public String getComando2() {
        return comando2;
    }

    public void setComando2(String comando2) {
        this.comando2 = comando2;
    }

    public String getComando3() {
        return comando3;
    }

    public void setComando3(String comando3) {
        this.comando3 = comando3;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
    
    
}
