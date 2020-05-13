/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cad;

import java.util.ArrayList;

/**
 *
 * @author Marcos Paulo da Rocha Moura Miúdo
 */
public class BdCliente {
    
    private static ArrayList<Cliente> usercliente;
    
    public static ArrayList<Cliente> getUsercliente(){
        if(usercliente == null){
            usercliente = new ArrayList<>();
            Cliente admincliente = new Cliente();
            admincliente.setNomecliente("Grupo005");
            admincliente.setCpfcliente("12.345.678-X");
            admincliente.setRgcliente("12.345.678-X");
            admincliente.setEmailcliente("admin@grupo005.com");
            admincliente.setTelefonecliente(1234567890);
            admincliente.setEnderecocliente("Cidade X, Rua X, N° XX"); 
            usercliente.add(admincliente);
        }
        return usercliente;
    }  
}