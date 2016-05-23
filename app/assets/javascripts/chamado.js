
function pesquisar(){
      var bairro =  $( "#comboBairro option:selected" ).text();
      console.log(bairro)
      $.post('chamado/procurar',{ params: JSON.stringify(bairro)},function(data){
         
        
     })  
      return "teste"
      }

function changeBairro() {
    var selectedBox = $( "#chamado_bairro option:selected" ).text();
    console.log("changebairro")
    $('#comboLogradouro').empty();
     $.post('chamado/carregarLogradouro',{ params: JSON.stringify(selectedBox)},function(data){
         for (var i=0;i<data.length;i++){
               $('#chamado_logradouro').append($('<option>', {value:i, text:data[i].logradouro}));
           } 

     })
   
   }


$( document ).ready(function() {
    var array=[]  

        var comboCidades = document.getElementById("combo");
         $.get('chamado/carregar',function(data){
           console.log(data)
           array = data;
           for (var i=0;i<data.length;i++){
               $('#comboBairro').append($('<option>', {value:data[i], text:data[i]}));
           } 

         })
    
    
});