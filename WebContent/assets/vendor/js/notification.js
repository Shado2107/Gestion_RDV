/**
 * 
 */


function lancerExempleNotif() {
	
	console.log("Lancement de l'exemple");

	/* Vérifier que l'objet existe */
	if (typeof Notification === undefined) {
	  console.log("Notification n'est pas un objet connu");
	  return false;
	}

	/* Tester si la permission a déjà été donnée */
	if (Notification.permission=="granted") {
	  console.log("Permission déjà accordée");
	  lancerNotif();
	} else {
	  Notification.requestPermission(function(result) {
	    console.log("Vous avez choisi "+result);
	    if (result=="granted") {
	      lancerNotif();
	    }
	  });
	}  
	}

function lancerNotif() {
	 var options={
	   "lang":"FR",
	   "icon":"/favicon.ico",
	   "tag": new Date(),
	   "body": "vous avez un nouveau rendez-vous !!!"
	 };
	 var notif=new Notification("Notification!!!", options);

	 notif.onclick = function(event) {
	   event.preventDefault();
	   window.open("Acceuil", "_blank");
	 }
	}