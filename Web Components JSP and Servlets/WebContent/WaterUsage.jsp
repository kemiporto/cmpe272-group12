 
 <html>
    <head>
        <title>Homepage</title>
	
        <script src="js/waterusagecalculator.js"></script>	
      <script src="http://code.highcharts.com/modules/exporting.js"></script>
      <script src="js/bootstrap.collapse.js"></script>
      <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    

      <div class="container" >
         <h5>Want to know how much water you use everyday? Take the below quiz..</h5>
         <div class="accordion" id="my-accordion" >
            <div class="accordion-group">
               <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#my-accordion" href="#collapseOne">
                  General Information
                  </a>
               </div>
               <div id="collapseOne" class="accordion-body collapse in ">
                  <div class="accordian-inner">
                     <div class="form-group">
                        1.How many people live in your household?
                        <br/>
                        <input type="number" min="0" class="form-control" placeholder="No of people" name="noofpeople">
                        <br/>
                        <button  class="btn btn-default" onClick="calculateWaterUsage();" onClick="calculateWaterUsage();">Submit</button>
                     </div>
                  </div>
               </div>
            </div>
            <div class="accordion-group">
               <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#my-accordion" href="#collapseTwo">
                  Showers and Baths
                  </a>
               </div>
               <div id="collapseTwo" class="accordion-body collapse ">
                  <div class="accordian-inner">
                     <div class="form-group">
                        2.How many showers are taken in your household?
                        <br/>
                        <input type="number" min="0" class="form-control" placeholder="No of showers" name="noofshowers">
                        <br/>
                        3.On average,how many minutes is each shower per person?
                        <br/>
                        <input type="number" min="0" class="form-control" placeholder="minutes" name="showerminutes">
                        <br/>
                        4.Do you have water efficient showerhead?
                        <br/>                        
                        <div style="text-align: center;" class="container" >
                        <input type="radio" class="form-control" name="efficientShowerHead"  value="Yes">Yes 
                        <input type="radio" class="form-control" name="efficientShowerHead" value="No">   No
                        </div>
                        <br/> 
                        5.How many baths are taken per month in your household ?
                        <br/>
                        <input type="number" min="0" class="form-control" placeholder="No of baths" name="noofbaths">
                        <br/> 
                        6.How full do you fill the tub?
                        <br/>
                        <div style="text-align: center;" class="container" >
                        <input type="radio" class="form-control" name="tubHalfFull"  value="Yes">  Half-full
                        <input type="radio" class="form-control" name="tubHalfFull"  value="No">   Full
                        </div>
                        <br/>
                        <button  class="btn btn-default" onClick="calculateWaterUsage();">Submit</button>
                     </div>
                  </div>
               </div>
            </div>
            <div class="accordion-group">
               <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#my-accordian" href="#collapseThree">
                  Laundry
                  </a>
               </div>
               <div id="collapseThree" class="accordion-body collapse ">
                  <div class="accordian-inner">
                     <div class="form-group">
                        7.How many loads of laundary does your household do?
                        <br/>
                        <input type="number" min="0" class="form-control" placeholder="No of loads" name="nooflaundaryloads">
                        <br/>
                        8.Is your Washing Machine a water efficient model ?
                        <br/>
                        <div style="text-align: center;" class="container" >
                        <input type="radio" class="form-control" name="efficientwashingmachine" value="Yes">  Yes 
                        <input type="radio" class="form-control" name="efficientwashingmachine" value="No">   No
                        </div>
                        <br/>
                        <button  class="btn btn-default" onClick="calculateWaterUsage();">Submit</button>
                     </div>
                  </div>
               </div>
            </div>
            <div class="accordion-group">
               <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#my-accordion" href="#collapseFour">
                  Kitchen
                  </a>
               </div>
               <div id="collapseFour" class="accordion-body collapse ">
                  <div class="accordian-inner">
                     <div class="form-group">
                        9.How many loads of dishwasher does your household do?
                        <br/>
                        <input type="number" min="0" class="form-control" placeholder="No of loads" name="noofloads">
                        <br/>
                        10.Is your Dishwasher a water efficient model ?
                        <br/>
                        <div style="text-align: center;" class="container" >
                        <input type="radio" class="form-control" name="efficientdishwasher" value="Yes">  Yes 
                        <input type="radio" class="form-control" name="efficientdishwasher" value="No">   No
                        </div>
                        <br/>
                        <button  class="btn btn-default" onClick="calculateWaterUsage();">Submit</button>
                     </div>
                  </div>
               </div>
            </div>
            <div class="accordion-group">
               <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#my-accordion" href="#collapseFive">
                  Toilets
                  </a>
               </div>
               <div id="collapseFive" class="accordion-body collapse ">
                  <div class="accordian-inner">
                     <div class="form-group">
                        11.On average,how many times are toliets flushed in your household?
                        <br/>
                        <input type="number" min="0" class="form-control" placeholder="minutes" names="flushminutes">
                        <br/>
                        <button  class="btn btn-default" onClick="calculateWaterUsage();">Submit</button>
                     </div>
                  </div>
               </div>
            </div>
            <div class="accordion-group">
               <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#my-accordion" href="#collapseSix">
                  Landscaping
                  </a>
               </div>
               <div id="collapseSix" class="accordion-body collapse ">
                  <div class="accordian-inner">
                     <div class="form-group">
                        12.What kind of landscaping do you have in your yard?
                        <br/>
                        <div style="text-align: center;" class="container" >
                        <input type="radio" class="form-control" name="landscapingLawn" value="Yes">  Lawn
                        <input type="radio" class="form-control" name="landscapingLawn" value="No">   Plants
                        </div>
                        <br/>
                        13.For how long do you water your lawn or plants?
                        <br/>
                        <input type="number" min="0" class="form-control" placeholder="minutes" names="lawnplantminutes">
                        <br/>
                        <button  class="btn btn-default" onClick="calculateWaterUsage();">Submit</button>
                     </div>
                  </div>
               </div>
            </div>
            <div class="accordion-group">
               <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#my-accordion" href="#collapseSeven">
                  Other
                  </a>
               </div>
               <div id="collapseSeven" class="accordion-body collapse ">
                  <div class="accordian-inner">
                     <div class="form-group">
                        14.Other Usage :Cooking,Drinking.
                        <br/>
                        <div style="text-align: center;" class="container" >
                        <input type="radio" class="form-control" name="other" value="Yes">  Yes 
                        <input type="radio" class="form-control" name="other" value="No">   No
                        </div>
                        <br/>
                        <button  class="btn btn-default" onClick="calculateWaterUsage();">Submit</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
        
        
        
 </html>