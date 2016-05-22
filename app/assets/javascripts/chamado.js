$( document ).ready(function() {
    var array=[]    
 
        var comboCidades = document.getElementById("combo");
         $.get('chamado/carregar',function(data){
           console.log(data)
           array = data;

         })
        
        $("#chamado select").click(function() {
            if($(this).attr('id')=='l2'){
                 for (var i=0;i<array[0].length;i++){
                $('<option/>').val(array[0][i]).html(array[0][i]).appendTo('#combo');
                 }
                console.log("ok")
            }
        });
      
    
});