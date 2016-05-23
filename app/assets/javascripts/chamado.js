function pesquisar(){
      var bairro =  $( "#myselect option:selected" ).text();
      $.post('chamado/procurar',{ params: JSON.stringify(bairro)},function(data){
         
     })  
      }
function changeBairro() {
    var selectBox = document.getElementById("comboBairro");
    $('#comboLogradouro').empty();
    var selectedValue = selectBox.options[selectBox.selectedIndex].text;
     $.post('chamado/carregarLogradouro',{ params: JSON.stringify(selectedValue)},function(data){
         
            for (var i=0;i<data.length;i++){
                $('<option/>').val(data[i]).html(data[i]).appendTo('#comboLogradouro');
                 } 

     })
   
   }


$( document ).ready(function() {
    var array=[]  
    $(':checkbox').checkboxpicker();
   console.log('teste')
        var comboCidades = document.getElementById("combo");
         $.get('chamado/carregar',function(data){
           console.log(data)
           array = data;

         })
        
     
    
});