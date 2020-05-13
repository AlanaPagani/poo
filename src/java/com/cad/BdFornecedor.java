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
public class BdFornecedor {
    
    private static ArrayList<Fornecedor> userfornecedor;
    
    public static ArrayList<Fornecedor> getUserFornecedor(){
        if(userfornecedor == null){
            userfornecedor = new ArrayList<>();
            Fornecedor adminfornecedor = new Fornecedor();
            adminfornecedor.setNomefornecedor("RicardoPupo");
            adminfornecedor.setRazaosocialfornecedor("ProfessorFatec");
            adminfornecedor.setCnpjfornecedor("12.345.678/9101-12");
            adminfornecedor.setEmailfornecedor("Ricardo@ProfessorFatec.com");
            adminfornecedor.setTelefonefornecedor(01-987654321);
            adminfornecedor.setEnderecofornecedor("Rua L, N° IV,"); 
            userfornecedor.add(adminfornecedor);
        }
        return userfornecedor;
    }  
}
