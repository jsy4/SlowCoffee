$(function(){ 
   window.onload = function(){   
      if (location.href.indexOf('reloaded')==-1) 
      {   
         //location.replace(location.href+'reloaded');
      
         if (location.href.indexOf('?')==-1) location.replace(location.href+'?reloaded');
         else location.replace(location.href+'&reloaded');
         
      }
   };
   
   
});