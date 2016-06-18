# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

!function setGraph(bairro) {
    var selectedBox = $(bairro).text();
    $.post('graph/search',{ params: JSON.stringify(selectedBox)},function(data){
        return salesData.map(function(d){
            for (var i=0;i<data.length;i++){
                if d.label===data[i].situacao {
                    return {label:d.label, value:1000*Math.random(), color:d.color};
                }
            }
        });
     })
   
};