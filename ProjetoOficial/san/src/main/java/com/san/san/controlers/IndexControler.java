package com.san.san.controlers;

import java.util.List;
import java.util.Map;
import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.san.san.models.entities.Cliente;
import com.san.san.models.entities.Evolucao;
import com.san.san.models.entities.Profissional;
import com.san.san.models.repositories.ClienteRepository;
import com.san.san.models.repositories.EvolucaoRepository;
import com.san.san.models.repositories.ProfissionalRepository;

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

    @Autowired
    private EvolucaoRepository evolucaoRepository;

    @Autowired
    private ProfissionalRepository profissionalRepository;

    @GetMapping("/login")
    public String renderizarHtml1() {
        return "index";
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody Map<String, String> data) {
    String email = data.get("email");
    String senha = data.get("senha");

    List<Cliente> pacientes = clienteRepository.findAllPacientes();
    for (Cliente paciente : pacientes) {
        if (paciente.getEmail().equals(email) && paciente.getSenha().equals(senha)) {
            System.out.println(paciente.getIdPac());
            return ResponseEntity.ok().body("{\"idPac\": " + paciente.getIdPac() + "}");
        }
    }

    List<Profissional> profissionais = profissionalRepository.findAll();
    for (Profissional profissional : profissionais) {
        if (profissional.getEmail().equals(email) && profissional.getSenha().equals(senha)) {
            return ResponseEntity.ok().body("{\"redirect\": \"/adicionarPaciente\"}");
        }
    }

    // Redirecionar para a página de login novamente (credenciais inválidas)
    return ResponseEntity.badRequest().body("{\"error\": \"Credenciais inválidas\"}");
    }

    @GetMapping("/clientes")
    public String exibirClientes(ModelMap model) {
    List<Cliente> clientes = clienteRepository.findAllPacientes();
    model.addAttribute("clientes", clientes);
    return "index-AlterarPaciente";
    }

    @GetMapping("/adicionarPaciente")
    public String renderizarHtml2() {
        return "index-AdicionarPacientePage";
    }

    @GetMapping("/detalhesCliente/{id}")
    public String exibirDetalhesCliente(@PathVariable("id") Integer idPac, ModelMap model) {
    Optional<Cliente> optionalPaciente = clienteRepository.findById(idPac.longValue());
    if (optionalPaciente.isPresent()) {
        Cliente cliente = optionalPaciente.get();
        model.addAttribute("cliente", cliente);
    }
    return "index-FormulárioDoPacienteDisable";
    }

    @GetMapping("/perfil/{id}")
    public String renderizarHtml3(@PathVariable("id") String idStr, @RequestParam(value = "evolucao", required = false) String evolucao, ModelMap model) {
    try {
        Long id = Long.parseLong(idStr);
        Cliente cliente = clienteRepository.findById(id).orElse(null);
        if (cliente != null) {
            model.addAttribute("cliente", cliente);

            if ("evolucao".equals(evolucao)) {
                List<Evolucao> evolucoes = evolucaoRepository.findEvolucoesByIdPac(cliente.getIdPac().longValue());
                model.addAttribute("evolucoes", evolucoes);

                return "redirect:/evolucao/" + id;
            } else {
                return "perfilPaciente";
            }
        } else {
            return "clienteNaoEncontrado";
        }
    } catch (NumberFormatException e) {
        return "clienteNaoEncontrado";
    }
    }



    @GetMapping("/dieta/{id}")
    public String renderizarHtml6(@PathVariable("id") Long id, ModelMap model) {
    try {
    Cliente cliente = clienteRepository.findById(id).orElse(null);
    if (cliente != null) {
      List<Evolucao> evolucoes = evolucaoRepository.findEvolucoesByIdPac(cliente.getIdPac().longValue());
      model.addAttribute("cliente", cliente);
      model.addAttribute("evolucoes", evolucoes);

      return "dietas";
    }
    } catch (NumberFormatException e) {
    // O valor de ID não é um número válido
    }

    return "redirect:/error"; // Redireciona para a página de erro padrão
    }
    
    @GetMapping("/evolucao/{id}")
    public String renderizarHtml5(@PathVariable("id") Long id, ModelMap model) {
    try {
    Cliente cliente = clienteRepository.findById(id).orElse(null);
    if (cliente != null) {
      List<Evolucao> evolucoes = evolucaoRepository.findEvolucoesByIdPac(cliente.getIdPac().longValue());
      model.addAttribute("cliente", cliente);
      model.addAttribute("evolucoes", evolucoes);

      return "evolucao";
    }
    } catch (NumberFormatException e) {
    // O valor de ID não é um número válido
    }

    return "redirect:/error"; // Redireciona para a página de erro padrão
    }

    
}

