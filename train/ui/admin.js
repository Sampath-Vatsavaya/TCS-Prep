const navl= document.querySelector("#navl"); 
      const home=document.querySelector("#home");  
      const registertrain=document.querySelector("#registertrain-section"); 
      const profile = document.querySelector("#profile-section"); 
      
      navl.addEventListener("click",(e)=>{ 
	e.preventDefault(); 
	home.style.display="none"; 
	profile.style.display="none"; 
	registertrain.style.display="none"; 
   
	console.log(e.target) 
   
	if(e.target.id=="home-nav") 
	{	 
		home.style.display="block"; 
	} 
        if(e.target.id=="profile-nav") 
        {	 
		profile.style.display="block"; 
          home.style.display="none"; 
        } 
	if(e.target.id=="registertrain-nav") 
        {	home.style.display="none"; 
		registertrain.style.display="block"; 
        } 
    if(e.target.id=="updatedetails-nav") { 
        home.style.display="none"; 
        updatedetails.style.display="block"; 
    }   
    }) 
