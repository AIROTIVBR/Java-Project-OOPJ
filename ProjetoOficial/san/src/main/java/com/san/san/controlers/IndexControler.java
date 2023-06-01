package com.san.san.controlers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.san.san.models.entities.Cliente;
import com.san.san.models.repositories.ClienteRepository;

@Controller
public class IndexControler {

    @Configuration
    public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**")
                .addResourceLocations("classpath:/static/");
    }
    }

    @Autowired
    private ClienteRepository clienteRepository;

    @GetMapping("/login")
    public String renderizarHtml() {
        return "index.html";
    }

    @GetMapping("/adminPage")
    public String renderizarHtml2() {
        return "index-AdminPage.html";
    }

    @GetMapping("/clientes")
    public String exibirClientes(ModelMap model) {
    List<Cliente> clientes = clienteRepository.findAllPacientes();
    model.addAttribute("clientes", clientes);
    return "index-AlterarPaciente";
    }


    @GetMapping("/adicionarPaciente")
    public String renderizarHtml4() {
        return "index-FormulárioDoPaciente";
    }

    @GetMapping("/detalhesCliente/{id}")
    public String exibirDetalhesCliente(@PathVariable("id") Integer idPac, ModelMap model) {
    Optional<Cliente> optionalPaciente = clienteRepository.findById(idPac.longValue());
    if (optionalPaciente.isPresent()) {
        Cliente clientes = optionalPaciente.get();
        model.addAttribute("clientes", clientes);
    }
    return "index-FormulárioDoPacienteDisable";
    }

    @GetMapping("/formAlterarPaciente")
    public String renderizarHtml5() {
        return "index-FormulárioDoPacienteDisable.html";
    }
}

