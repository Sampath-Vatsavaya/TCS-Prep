const navl= document.querySelector("#navl"); 
      const home=document.querySelector("#home");  
      const viewticket=document.querySelector("#viewticket-section"); 
      const bookticket = document.querySelector("#bookticket-section"); 
      const updatedetails= document.querySelector("#updatedetails-section"); 
      const changepass=document.querySelector("#changepass") 
      const passdiv= document.querySelector("#password-div"); 
      navl.addEventListener("click",(e)=>{ 
	e.preventDefault(); 
	home.style.display="none"; 
	bookticket.style.display="none"; 
	viewticket.style.display="none"; 
    updatedetails.style.display="none"; 
	console.log(e.target) 
    checkpass = () =>{ 
	if(changepass.checked){ 
		passdiv.style.display="block" 
	} 
	else{ 
		passdiv.style.display="none" 
	} 
    } 
	if(e.target.id=="home-nav") 
	{	 
		home.style.display="block"; 
	} 
        if(e.target.id=="bookticket-nav") 
        {	 
		bookticket.style.display="block"; 
          home.style.display="none"; 
        } 
	if(e.target.id=="viewticket-nav") 
        {	home.style.display="none"; 
		viewticket.style.display="block"; 
        } 
    if(e.target.id=="updatedetails-nav") { 
        home.style.display="none"; 
        updatedetails.style.display="block"; 
    }   
    }) 

    function popup() {
        document.getElementById('cancelPopup').style.display = 'flex';
    }
    
    function closePopup() {
        document.getElementById('cancelPopup').style.display = 'none';
    }
    
    function confirmCancellation() {
       
        alert('Ticket cancelled successfully!'); 
        closePopup(); 
    }
    