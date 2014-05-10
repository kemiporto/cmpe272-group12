

//javascript code for WaterUsageCalculator

function calculateTotal()
{

var totalGallons=0;

	function getGeneralCategoryUsage()
 	{
  		var theForm = document.forms["form1"];
  		var noofpeople = theForm.elements["noofpeople"];
  
  		return noofpeople;
 	}

function getShowersandBathsUsage()
 {
  var bathgallons=0;
  var temp1=0;
  var temp2=0;
  var theForm = document.forms["form2"];
  var noofshowers = theForm.elements["noofshowers"];
  var showerminutes = theForm.elements["showerminutes"];
  var efficientShowerHead =theForm.elements["efficientShowerHead"];
  		if(efficientShowerHead.checked==true)
  		{
  			temp1 = noofshowers * showerminutes * 2;
  		}
  		
  		else 
  		{
  			temp1 = noofshowers * showerminutes * 4;
  		}
  
  var noofbaths = theForm.elements["noofbaths"];
  var tubHalfFull = theForm.elements["tubHalfFull"];
  
  if(tubhalfFull.checked==true)
  {
    temp2 = noofbaths * 20;
   }
   
   else 
   {
      temp2 = noofbaths * 40;
    }  
  
  bathgallons = temp1 + temp2;

 return bathgallons;
}



  function getLaundryUsage()
   {
      var laundaryGallons=0;
     var theForm = document.forms["form3"];
     var nooflaundaryloads = theForm.elements["nooflaundaryloads"];
     var efficientwashingmachine = theForm.elements["efficientwashingmachine"];
     
     if(efficientwashingmachine.checked==true)
      {
         laundaryGallons = nooflaundaryloads * 40;
       }
       
       else 
       {
         laundaryGallons = nooflaundaryloads * 60;
       }
     
     
     return laundaryGallons;
     
    }
     
     
     function KitchenUsage()
     {
    	 var KitchenGallons=0;
     	 var theForm = document.forms["form4"];
     	 var loadsofdishwasher = theForm.elements["loadsofdishwasher"];
     	 var efficientdishwasher = theForm.elements["efficientdishwasher"];
     	 
     	 if(efficientdishwasher == true)
     	  {
     	     KitchenGallons = loadsofdishwasher * 10;
     	   } 
     	 
        else 
          {
              KitchenGallons = loadsofdishwasher * 30;
          }
          
          return KitchenGallons;
     
     }  
     
      function ToiletsUsage()
      {
        var ToiletGallons=0;
        var theForm = document.forms["form5"];
        var flushminutes = theForm.elements["flushminutes"];
        
        KitchenGallons = flushminutes * 3;
        
        return ToiletGallons;
        
       }
        
        function LandscapingUsage()
        {
         var PlantGallons = 0;
         var theForm = documents.forms["form6"];
         var landscapingLawn = theForm.elements["landscapingLawn"];
         var lawnplantminutes = theForm.elements["lawnplantminutes"];
           if(landscapingLawn.checked == true)
           { 
              PlantGallons = lawnplantminutes * 2.5;
           }
            else 
             { 
              PlantGallons = lawnplantminutes * 1;
             }
            
            
            return PlantGallons;
           } 
             
     function OtherUsage()
        {
         var OtherGallons = 0;
         var theForm = documents.forms["form6"];
         var other = theForm.elements["other"];
         if(other.checked == true)
            OtherGallons = 7;
         else OtherGallons =0;
         
         }
     
     
     totalGallons = ( (noofpeople * (OtherGallons + bathgallons )) + PlantGallons + KitchenGallons + ToiletGallons
     + laundaryGallons )
     
     return totalGallons;
     
     
     }
     
     