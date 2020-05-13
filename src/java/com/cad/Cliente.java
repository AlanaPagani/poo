/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cad;

/**
 *
 * @author Marcos Paulo da Rocha Moura Miúdo
 */
public class Cliente{

    private String nomecliente, cpfcliente, rgcliente, emailcliente, enderecocliente;
    private int telefonecliente;

    public String getNomecliente() {
        return nomecliente;
    }

    public void setNomecliente(String nomecliente) {
        this.nomecliente = nomecliente;
    }

    public String getCpfcliente() {
        return cpfcliente;
    }

    public void setCpfcliente(String cpfcliente) {
        this.cpfcliente = cpfcliente;
    }

    public String getRgcliente() {
        return rgcliente;
    }

    public void setRgcliente(String rgcliente) {
        this.rgcliente = rgcliente;
    }

    public String getEmailcliente() {
        return emailcliente;
    }

    public void setEmailcliente(String emailcliente) {
        this.emailcliente = emailcliente;
    }

    public int getTelefonecliente() {
        return telefonecliente;
    }

    public void setTelefonecliente(int telefonecliente) {
        this.telefonecliente = telefonecliente;
   
    }
    
    public String getEnderecocliente() {
        return enderecocliente;
    }

    public void setEnderecocliente(String enderecocliente) {
        this.enderecocliente = enderecocliente;
    }
}
   
