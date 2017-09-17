/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wedoneit.entity;

import java.util.Date;

/**
 *
 * @author felipe
 */
public class LogEntity {
    private Long idLog = null;
    private Date dataHora = null;
    private Long idUsuario = null;
    private String tabela = null;
    private String campo = null;
    private String idCampo = null;
    private String ipOrigem = null;
    private String ipServidor = null;
    private StringBuffer obs = null;
    private Integer tipo = null;

    public Long getIdLog() {
        return idLog;
    }

    public void setIdLog(Long idLog) {
        this.idLog = idLog;
    }

    public Date getDataHora() {
        return dataHora;
    }

    public void setDataHora(Date dataHora) {
        this.dataHora = dataHora;
    }

    public Long getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Long idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getTabela() {
        return tabela;
    }

    public void setTabela(String tabela) {
        this.tabela = tabela;
    }

    public String getCampo() {
        return campo;
    }

    public void setCampo(String campo) {
        this.campo = campo;
    }

    public String getIdCampo() {
        return idCampo;
    }

    public void setIdCampo(String idCampo) {
        this.idCampo = idCampo;
    }

    public String getIpOrigem() {
        return ipOrigem;
    }

    public void setIpOrigem(String ipOrigem) {
        this.ipOrigem = ipOrigem;
    }

    public String getIpServidor() {
        return ipServidor;
    }

    public void setIpServidor(String ipServidor) {
        this.ipServidor = ipServidor;
    }

    public StringBuffer getObs() {
        return obs;
    }

    public void setObs(StringBuffer obs) {
        this.obs = obs;
    }

    public Integer getTipo() {
        return tipo;
    }

    public void setTipo(Integer tipo) {
        this.tipo = tipo;
    }
    
    
           
}
