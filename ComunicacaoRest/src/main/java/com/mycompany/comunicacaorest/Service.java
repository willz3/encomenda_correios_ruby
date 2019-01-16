/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.comunicacaorest;

import br.integrado.model.Encomenda;
import com.google.gson.Gson;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

/**
 *
 * @author willz
 */
public class Service {

    public static void main(String[] args) {
        new Service().get();
    }

    public String get() {
        try {
            Client client = Client.create();
            WebResource wr = client.resource(
                    "http://192.168.56.101:3000/service/encomendaservices");

            ClientResponse response = wr.type("application/json").get(ClientResponse.class);
            String outPut = response.getEntity(String.class);

            System.out.println("JSON: " + outPut);

            return outPut;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

    public String post() {
        try {
            Client client = Client.create();
            WebResource wr = client.resource(
                    "http://192.168.56.101:3000/service/encomendaservices");
            Encomenda e = new Encomenda();
            e.setCodigo("GG12345678BR");
            e.setNome("PACOTE DE GG");
            String input = new Gson().toJson(e);
            ClientResponse response = wr.type("application/json").post(ClientResponse.class, input);
            String outPut = response.getEntity(String.class);
            return outPut;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String put() {
        return "";
    }

    public String delete() {
        return "";
    }

}
