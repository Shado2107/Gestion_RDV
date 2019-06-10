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
	   "body": "Vous etes connecte. Bienvenu dans GESRDV votre application de gestion de rdv !!!"
	 };
	 var notif=new Notification("GESRDV", options);

	/* notif.onclick = function(event) {
	   event.preventDefault();
	   window.open("Acceuil", "_blank");
	 }*/
	}

/*-------------------------------------------------------------------------------------*/

function lancernotifsecre() {
	
	console.log("Lancement de l'exemple");

	/* Vérifier que l'objet existe */
	if (typeof Notification === undefined) {
	  console.log("Notification n'est pas un objet connu");
	  return false;
	}

	/* Tester si la permission a déjà été donnée */
	if (Notification.permission=="granted") {
	  console.log("Permission déjà accordée");
	  lancerNotif1();
	} else {
	  Notification.requestPermission(function(result) {
	    console.log("Vous avez choisi "+result);
	    if (result=="granted") {
	      lancerNotif1();
	    }
	  });
	}  
	}

function lancerNotif1() {
	 var options={
	   "lang":"FR",
	   "icon":"/favicon.ico",
	   "tag": new Date(),
	   "body": "Un rendez-vous a ete modifié. Veuillez verifier !!! "
	 };
	 var notif=new Notification("GESRDV", options);

	/* notif.onclick = function(event) {
	   event.preventDefault();
	   window.open("Acceuil", "_blank");
	 }*/
	}

/*-------------------------------------------------------------------------*/


function lancernotifenregistrement() {
	
	console.log("Lancement de l'exemple");

	/* Vérifier que l'objet existe */
	if (typeof Notification === undefined) {
	  console.log("Notification n'est pas un objet connu");
	  return false;
	}

	/* Tester si la permission a déjà été donnée */
	if (Notification.permission=="granted") {
	  console.log("Permission déjà accordée");
	  lancerNotif2();
	} else {
	  Notification.requestPermission(function(result) {
	    console.log("Vous avez choisi "+result);
	    if (result=="granted") {
	      lancerNotif2();
	    }
	  });
	}  
	}

function lancerNotif2() {
	 var options={
	   "lang":"FR",
	   "icon":"/favicon.ico",
	   "tag": new Date(),
	   "body": "Un rendez-vous a ete modifié. Veuillez verifier !!! "
	 };
	 var notif=new Notification("GESRDV", options);

	/* notif.onclick = function(event) {
	   event.preventDefault();
	   window.open("Acceuil", "_blank");
	 }*/
	}