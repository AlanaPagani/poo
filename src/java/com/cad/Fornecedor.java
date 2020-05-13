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
public class Fornecedor {
   private String nomefornecedor, razaosocialfornecedor, cnpjfornecedor, emailfornecedor, enderecofornecedor;
    private int telefonefornecedor;

    public String getNomefornecedor() {
        return nomefornecedor;
    }

    public void setNomefornecedor(String nomefornecedor) {
        this.nomefornecedor = nomefornecedor;
    }

    public String getRazaosocialfornecedor() {
        return razaosocialfornecedor;
    }

    public void setRazaosocialfornecedor(String razaosocialfornecedor) {
        this.razaosocialfornecedor = razaosocialfornecedor;
    }

    public String getCnpjfornecedor() {
        return cnpjfornecedor;
    }

    public void setCnpjfornecedor(String cnpjfornecedor) {
        this.cnpjfornecedor = cnpjfornecedor;
    }

    public String getEmailfornecedor() {
        return emailfornecedor;
    }

    public void setEmailfornecedor(String emaifornecedor) {
        this.emailfornecedor = emaifornecedor;
    }

    public String getEnderecofornecedor() {
        return enderecofornecedor;
    }

    public void setEnderecofornecedor(String enderecofornecedor) {
        this.enderecofornecedor = enderecofornecedor;
    }

    public int getTelefonefornecedor() {
        return telefonefornecedor;
    }

    public void setTelefonefornecedor(int telefonefornecedor) {
        this.telefonefornecedor = telefonefornecedor;
    }
}
