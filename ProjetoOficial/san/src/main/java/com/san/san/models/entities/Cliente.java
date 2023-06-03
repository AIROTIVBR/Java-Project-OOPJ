package com.san.san.models.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "pacientes")
public class Cliente {

    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	@Column(name = "id_pac")
	private Integer idPac;
	private String nome;
	private String email;
	private String senha;
	private String sexo;
	private String objetivo;
	private double altura;
	private double peso;
	private Integer idade;
	private String alergias;
	private String doencas;
	private String sangue;
	private String doencas_familia;
	private String atividade_fisica;
	private String medicacoes;
	private String liquido;
	private String recordatorio;
	private double massa_muscular_total;
	private double massa_muscular_bd;
	private double massa_muscular_be;
	private double massa_muscular_pd;
	private double massa_muscular_pe;
	private double massa_muscular_tronco;
	private double massa_muscular_cond;
	private double massa_gorda_total;
	private double massa_gorda_bd;
	private double massa_gorda_be;
	private double massa_gorda_pd;
	private double massa_gorda_pe;
	private double massa_gorda_tronco;
	private Integer idade_meta;
	private double porcen_liq;
	private Integer gordura_visc;
	private Integer massa_osso;
	private Integer DCI;
	private String intestino_preso;
	private String diarreia;
	private String flatulencia;
	private String eructacao;
	private String disgestao_lenta;
	private String azia;
	private String nausea_vomitos;
	private String hemorroida;
	private String afta;
	private String sangramento_geng;
	private String alter_lingua;
	private String mauHalito_bocaAmarga_bocaSeca;
	private String labio_rach;
	private String alt_apetite;
	private String perda_paladar;
	private String alt_peso;
	private String flacidez_musc;
	private String infec_freq;
	private String dor_cabeca;
	private String diabetes;
	private String hipogli;
	private String trigli_alt;
	private String colest_alt;
	private String tontura;
	private String fraqueza;
	private String espinhas;
	private String mepc;
	private String anemia;
	private String cabelo_frag;
	private String pele_ress;
	private String alt_unha;
	private String osteos;
	private String dor_musc_art;
	private String amort_b_p;
	private String dif_cicat;
	private String caimbra;
	private String alt_cardio;
	private String manchas_rox;
	private String press_alta;
	private String press_baix;
	private String inchaco;
	private String trans_exec;
	private String TPM;
	private String alt_menst;
	private String ansiedade;
	private String irritacao;
	private String  nervosismo;
	private String hiperatv;
	private String dif_atencao;
	private String dif_memoria;
	private String fadiga;
	private String sonolencia;
	private String insonia;
	private String alt_ouvido;
	private String alt_olhos;
	private String alt_humor;
	private String depressao;
	private String sind_panico;
	private String micro_vasos;
	private String celulite;
	private String ardencia_vag_anal;
	private String bruxismo;
	private String fumante;
	private String id_pro;

    public Cliente(){

    }
	///////////////////
    public Cliente(String nome, String sexo, double peso) {
		super();
		this.nome = nome;
		this.sexo = sexo;
		this.peso = peso;
	}
	/////////////////// Getters ///////////////////
	public Integer getIdPac() {
		return idPac;
	}

	public String getNome() {
		return nome;
	}

	public String getSexo() {
		return sexo;
	}

	public double getPeso() {
		return peso;
	}

	public String getEmail() {
		return email;
	}

	public String getSenha(){ return senha;}

	public String getObjetivo() {return objetivo;}

	public double getAltura(){return altura;}

	public Integer getIdade(){return idade;}

	public String getAlergias(){return alergias;}

	public String getDoencas(){return doencas;}

	public String getSangue(){return sangue;}

	public String getDoencas_familia(){return doencas_familia;}

	public String getAtividade_fisica(){return atividade_fisica;}

	public String getMedicacoes(){return medicacoes;}

	public String getLiquido(){return liquido;}

	public String getRecordatorio(){return recordatorio;}

	public double getMassa_muscular_total(){return massa_muscular_total;}

	public double getMassa_muscular_bd(){return massa_muscular_bd;}

	public double getMassa_muscular_be(){return massa_muscular_be;}

	public double getMassa_muscular_pd(){return massa_muscular_pd;}

	public double getMassa_muscular_pe(){return massa_muscular_pe;}

	public double getMassa_muscular_tronco(){return massa_muscular_tronco;}

	public double getMassa_muscular_cond(){return massa_muscular_cond;}

	public double getMassa_gorda_total(){return massa_gorda_total;}

	public double getMassa_gorda_bd(){return massa_gorda_bd;}

	public double getMassa_gorda_be(){return massa_gorda_be;}

	public double getMassa_gorda_pd(){return massa_gorda_pd;}

	public double getMassa_gorda_pe(){return massa_gorda_pe;}

	public double getMassa_gorda_tronco(){return massa_gorda_tronco;}

	public Integer getIdade_meta(){return idade_meta;}

	public double getPorcen_liq(){return idade_meta;}

	public Integer getGordura_visc(){return gordura_visc;}

	public Integer getMassa_osso(){return massa_osso;}

	public Integer getDCI(){return DCI;}

	public String getIntestino_preso(){return intestino_preso;}

	public String getDiarreia(){return diarreia;}

	public String getFlatulencia(){return flatulencia;}

	public String getEructacao(){return eructacao;}

	public String getAzia(){return azia;}

	public String getDisgestao_lenta(){return disgestao_lenta;}

	public String getNausea_vomitos(){return nausea_vomitos;}

	public String getHemorroida(){return hemorroida;}

	public String getAfta(){return afta;}

	public String getSangramento_geng(){return sangramento_geng;}

	public String getAlter_lingua(){return alter_lingua;}

	public String getMauHalito_bocaAmarga_bocaSeca(){return mauHalito_bocaAmarga_bocaSeca;}

	public String getLabio_rach(){return labio_rach;}

	public String getAlt_apetite(){return alt_apetite;}

	public String getPerda_paladar(){return perda_paladar;}

	public String getAlt_peso(){return alt_peso;}

	public String getFlacidez_musc(){return flacidez_musc;}

	public String getInfec_freq(){return infec_freq;}

	public String getDor_cabeca(){return dor_cabeca;}

	public String getDiabetes(){return diabetes;}

	public String getHipogli(){return hipogli;}

	public String getTrigli_alt(){return trigli_alt;}

	public String getColest_alt(){return colest_alt;}

	public String getTontura(){return tontura;}

	public String getFraqueza(){return fraqueza;}

	public String getEspinhas(){return espinhas;}

	public String getMepc(){return mepc;}

	public String getAnemia(){return anemia;}

	public String getCabelo_frag(){return cabelo_frag;}

	public String getPele_ress(){return pele_ress;}

	public String getAlt_unha(){return alt_unha;}

	public String getOsteos(){return osteos;}

	public String getDor_musc_art(){return dor_musc_art;}

	public String getAmort_b_p(){return amort_b_p;}

	public String getDif_cicat(){return dif_cicat;}

	public String getCaimbra(){return caimbra;}

	public String getAlt_cardio(){return alt_cardio;}

	public String getManchas_rox(){return manchas_rox;}

	public String getPress_alta(){return press_alta;}

	public String getPress_baix(){return press_baix;}

	public String getInchaco(){return inchaco;}

	public String getTrans_exec(){return trans_exec;}

	public String getTPM(){return TPM;}

	public String getAlt_menst(){return alt_menst;}

	public String getAnsiedade(){return ansiedade;}

	public String getIrritacao(){return irritacao;}

	public String getNervosismo(){return nervosismo;}

	public String getHiperatv(){return hiperatv;}

	public String getDif_atencao(){return dif_atencao;}

	public String getDif_memoria(){return dif_memoria;}

	public String getFadiga(){return fadiga;}

	public String getSonolencia(){return sonolencia;}

	public String getInsonia(){return insonia;}

	public String getAlt_ouvido(){return alt_ouvido;}

	public String getAlt_olhos(){return alt_olhos;}

	public String getAlt_humor(){return alt_humor;}

	public String getDepressao(){return depressao;}

	public String getSind_panico(){return sind_panico;}

	public String getMicro_vasos(){return micro_vasos;}

	public String getCelulite(){return celulite;}

	public String getBruxismo(){return celulite;}

	public String getFumante(){return fumante;}

	public String getArdencia_vag_anal(){return ardencia_vag_anal;}

	public String getId_pro(){return id_pro;}


	/////////////////// Setters ///////////////////
	public void setIdPac(Integer idPac) {
		this.idPac = idPac;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public void setObjetivo(String objetivo) {this.objetivo = objetivo ;}

	public void setAltura(double altura) {
		this.altura = altura;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	public void setIdade(Integer idade) {this.idade = idade;}

	public void setAlergias(String alergias) {this.alergias = alergias;}

	public void setDoencas(String doencas) {
		this.doencas = doencas;
	}

	public void setSangue(String sangue) {this.sangue = sangue;}

	public void setDoencas_familia(String doencas_familia) {
		this.doencas_familia = doencas_familia;
	}

	public void setAtividade_fisica(String atividade_fisica) {
		this.atividade_fisica = atividade_fisica;
	}

	public void setMedicacoes(String medicacoes) {
		this.medicacoes = medicacoes;
	}

	public void setLiquido(String liquido) {
		this.liquido= liquido;
	}

	public void setRecordatorio(String recordatorio) {
		this.recordatorio = recordatorio;
	}

	public void setMassa_muscular_total(double massa_muscular_total) {this.massa_muscular_total = massa_muscular_total;}

	public void setMassa_muscular_bd(double massa_muscular_bd) {
		this.massa_muscular_bd = massa_muscular_bd;
	}

	public void setMassa_muscular_be(double massa_muscular_be) {
		this.massa_muscular_be = massa_muscular_be;
	}

	public void setMassa_muscular_pd(double massa_muscular_pd) {this.massa_muscular_pd = massa_muscular_pd;}

	public void setMassa_muscular_pe(double massa_muscular_pe) {
		this.massa_muscular_pe = massa_muscular_pe;
	}

	public void setMassa_muscular_tronco(double massa_muscular_tronco) {this.massa_muscular_tronco = massa_muscular_tronco;}

	public void setMassa_muscular_cond(double massa_muscular_cond) {this.massa_muscular_cond = massa_muscular_cond;}

	public void setMassa_gorda_total(double massa_gorda_total) {
		this.massa_gorda_total = massa_gorda_total;
	}

	public void setMassa_gorda_bd(double massa_gorda_bd) {
		this.massa_gorda_bd = massa_gorda_bd;
	}

	public void setMassa_gorda_be(double massa_muscular_be) {
		this.massa_gorda_be = massa_muscular_be;
	}

	public void setMassa_gorda_pd(double massa_gorda_pd) {this.massa_gorda_pd= massa_gorda_pd;}

	public void setMassa_gorda_pe(double massa_gorda_pe) {this.massa_gorda_pe = massa_gorda_pe;}

	public void setMassa_gorda_tronco(double massa_gorda_tronco) {
		this.massa_gorda_tronco = massa_gorda_tronco;
	}

	public void setIdade_meta(Integer idade_meta) {this.idade_meta = idade_meta;}

	public void setPorcen_liq(double porcen_liq) {this.porcen_liq = porcen_liq;}

	public void setGordura_visc(Integer gordura_visc) {this.gordura_visc = gordura_visc;}

	public void setMassa_osso(Integer massa_osso) {this.massa_osso = massa_osso;}

	public void setDCI(Integer DCI) {
		this.DCI = DCI;
	}

	public void setIntestino_preso(String intestino_preso) {
		this.intestino_preso = intestino_preso;
	}

	public void setDiarreia(String diarreia) {
		this.diarreia = diarreia;
	}

	public void setFlatulencia(String flatulencia) {
		this.flatulencia = flatulencia;
	}

	public void setEructacao(String eructacao) {
		this.eructacao = eructacao;
	}

	public void setDisgestao_lenta(String digestao_lenta) {this.disgestao_lenta = digestao_lenta;}

	public void setAzia(String azia) {
		this.azia = azia;
	}

	public void setNausea_vomitos(String nausea_vomitos) {
		this.nausea_vomitos = nausea_vomitos;
	}

	public void setHemorroida(String hemorroida) {
		this.hemorroida = hemorroida;
	}

	public void setAfta(String afta) {
		this.afta = afta;
	}

	public void setSangramento_geng(String sangramento_geng) {this.sangramento_geng = sangramento_geng;}

	public void setAlter_lingua(String alter_lingua) {
		this.alter_lingua = alter_lingua;
	}

	public void setMauHalito_bocaAmarga_bocaSeca(String mauHalito_bocaAmarga_bocaSecabocaAmargaBocaSeca) {this.mauHalito_bocaAmarga_bocaSeca = mauHalito_bocaAmarga_bocaSecabocaAmargaBocaSeca;}

	public void setLabio_rach(String labio_rach) {this.labio_rach = labio_rach;}

	public void setAlt_apetite(String alt_apetite) {
		this.alt_apetite = alt_apetite;
	}

	public void setPerda_paladar(String perda_paladar) {
		this.perda_paladar = perda_paladar;
	}

	public void setAlt_peso(String alt_peso) {
		this.alt_peso = alt_peso;
	}

	public void setFlacidez_musc(String flacidez_musc) {
		this.flacidez_musc = flacidez_musc;
	}

	public void setInfec_freq(String infec_freq) {
		this.infec_freq = infec_freq;
	}

	public void setDor_cabeca(String dor_cabeca) {
		this.dor_cabeca = dor_cabeca;
	}

	public void setDiabetes(String diabetes) {
		this.diabetes = diabetes;
	}

	public void setHipogli(String hipogli) {
		this.hipogli = hipogli;
	}

	public void setTrigli_alt(String trigli_alt) {
		this.trigli_alt = trigli_alt;
	}

	public void setColest_alt(String colest_alt) {
		this.colest_alt = colest_alt;
	}

	public void setTontura(String tontura) {
		this.tontura = tontura;
	}

	public void setFraqueza(String fraqueza) {
		this.fraqueza = fraqueza;
	}

	public void setEspinhas(String espinhas) {
		this.espinhas = espinhas;
	}

	public void setMepc(String mepc) {
		this.mepc = mepc;
	}

	public void setAnemia(String anemia) {
		this.anemia = anemia;
	}

	public void setCabelo_frag(String cabelo_frag) {
		this.cabelo_frag = cabelo_frag;
	}

	public void setPele_ress(String pele_ress) {
		this.pele_ress = pele_ress;
	}

	public void setAlt_unha(String alt_unha) {
		this.alt_unha = alt_unha;
	}

	public void setOsteos(String osteos) {
		this.osteos = osteos;
	}

	public void setDor_musc_art(String dor_musc_art) {
		this.dor_musc_art = dor_musc_art;
	}

	public void setAmort_b_p(String amort_b_p) {
		this.amort_b_p = amort_b_p;
	}

	public void setDif_cicat(String dif_cicat) {
		this.dif_cicat = dif_cicat;
	}

	public void setCaimbra(String caimbra) {
		this.caimbra = caimbra;
	}

	public void setAlt_cardio(String alt_cardio) {
		this.alt_cardio = alt_cardio;
	}

	public void setManchas_rox(String manchas_rox) {this.manchas_rox = manchas_rox;}

	public void setPress_alta(String press_alta) {this.press_alta = press_alta;}

	public void setPress_baix(String press_baix) {
		this.press_baix = press_baix;
	}

	public void setInchaco(String inchaco) {
		this.inchaco = inchaco;
	}

	public void setTrans_exec(String transExec) {
		this.trans_exec = transExec;
	}

	public void setTPM(String TPM) {this.TPM = TPM;}

	public void setAlt_menst(String alt_menst) {
		this.alt_menst = alt_menst;
	}

	public void setAnsiedade(String ansiedade) {
		this.ansiedade = ansiedade;
	}

	public void setIrritacao(String irritacao) {
		this.irritacao = irritacao;
	}

	public void setNervosismo(String nervosismo) {
		this.nervosismo = nervosismo;
	}

	public void setHiperatv(String hiperatv) {
		this.hiperatv = hiperatv;
	}

	public void setDif_atencao(String dif_atencao) {
		this.dif_atencao = dif_atencao;
	}

	public void setDif_memoria(String dif_memoria) {
		this.dif_memoria = dif_memoria;
	}

	public void setFadiga(String fadiga) {
		this.fadiga = fadiga;
	}

	public void setSonolencia(String sonolencia) {
		this.sonolencia = sonolencia;
	}

	public void setInsonia(String insonia) {
		this.insonia = insonia;
	}

	public void setAlt_ouvido(String alt_ouvido) {
		this.alt_ouvido = alt_ouvido;
	}

	public void setAlt_olhos(String alt_olhos) {
		this.alt_olhos = alt_olhos;
	}

	public void setAlt_humor(String alt_humor) {
		this.alt_humor = alt_humor;
	}

	public void setDepressao(String depressao) {
		this.depressao = depressao;
	}

	public void setSind_panico(String sind_panico) {
		this.sind_panico = sind_panico;
	}

	public void setMicro_vasos(String micro_vasos) {
		this.micro_vasos = micro_vasos;
	}

	public void setCelulite(String celulite) {
		this.celulite = celulite;
	}

	public void setArdencia_vag_anal(String ardencia_vag_anal) {
		this.ardencia_vag_anal = ardencia_vag_anal;
	}

	public void setBruxismo(String bruxismo) {
		this.bruxismo = bruxismo;
	}

	public void setFumante(String fumante) {
		this.fumante = fumante;
	}

	public void setId_pro(String id_pro) {this.id_pro = id_pro;}

}
