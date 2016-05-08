# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
<script language="javascript" type="text/javascript">
function validar() {
    var name = form1.name.value;
    var sobrenome=form1.sobrenome.value;
    var email = form1.email.value;
    var senha = form1.senha.value;
    var confirmar_senha = form1.confirmar_senha.value;
    if (name == "") {
        alert('Preencha o campo com seu nome');
        form1.name.focus(); #Da foco no campo nome
        return false;
    }
    if (sobrenome == "") {
        alert('Preencha o campo com seu sobrenome');
        form1.sobrenome.focus(); 
        return false;
    }
    if (email == "") {
        alert('Preencha o campo com seu email');
        form1.email.focus(); 
        return false;
    }
    if (senha == "") {
        alert('Preencha o campo com seu email');
        form1.senha.focus(); 
        return false;
    }
    if (confirmar_senha == "") {
        alert('Preencha o campo com seu email');
        form1.confirmar_senha.focus(); 
        return false;
    }

    if (senha != confirmar_senha) {
        alert('Senhas diferentes');
        form1.senha.focus();
        return false;
    }
}

#function validacaoEmail(email) {
   # usuario = email.value.substring(0, email.value.indexOf("@"));
   # dominio = email.value.substring(email.value.indexOf("@")+ 1, email.value.length);
    #if ((usuario.length >=1) &&
    #(dominio.length >=3) && 
    #(usuario.search("@")==-1) && 
    #(dominio.search("@")==-1) &&
    #(usuario.search(" ")==-1) && 
    #(dominio.search(" ")==-1) &&
    #(dominio.search(".")!=-1) &&      
    #(dominio.indexOf(".") >=1)&& 
    #(dominio.lastIndexOf(".") < dominio.length - 1)) {
     #   document.getElementById("msgemail").innerHTML="E-mail válido";
      #  alert("E-mail valido");
    #} else{
       # document.getElementById("msgemail").innerHTML="<font color='red'>E-mail inválido </font>";
        #alert("E-mail invalido"); } }

