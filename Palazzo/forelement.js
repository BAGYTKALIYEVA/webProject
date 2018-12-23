var general = document.querySelector('.i');

function info(){
	fetch('info.txt').then(function(response){
		return response.text();

	}).then(function(info1){
		general.innerHTML=info1;
	});
}

document.querySelector(".i").addEventListener('click', info);