package test3s.com.testando2Spring.controlers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import test3s.com.testando2Spring.models.Cliente;

@RestController
public class ClienteControler {

    @GetMapping(path ="clientes/qualquer")
    public Cliente obterCliente(){
        return new Cliente(28,"pedro", "123.456.789-00");
    }
}
