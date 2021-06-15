const cpfOrCnpj = () => {
    
    if (document.getElementById("volunteer_cpf_or_cnpj_cpf").checked) {
      document.getElementById("cnpj-box").style.display = "none"
      document.getElementById("volunteer_cnpj").value = ""
      document.getElementById("cpf-box").style.display = ""

    } else if (document.getElementById("volunteer_cpf_or_cnpj_cnpj").checked){
        document.getElementById("cpf-box").style.display = "none"
        document.getElementById("volunteer_cpf").value = ""
        document.getElementById("cnpj-box").style.display = ""
    }
  };

export { cpfOrCnpj };