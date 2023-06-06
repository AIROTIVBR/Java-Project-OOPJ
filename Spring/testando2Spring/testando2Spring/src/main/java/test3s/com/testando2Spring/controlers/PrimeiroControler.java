package test3s.com.testando2Spring.controlers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PrimeiroControler {

    @GetMapping(path = {"/ola"})
    public String ola(){
        return "Olá Spring Boot";
    }
}
