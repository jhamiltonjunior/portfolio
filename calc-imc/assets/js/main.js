function meuEscopo(){
	const form = document.querySelector('.formulario');
	const dataBrasil = document.querySelector('.dataBrasil');
	const saudarUser = document.querySelector('.saudarUser');
	const data = new Date();
	const hora = new Date();
	const resultPrompt = prompt('Digite o seu nome:');
	const nomoDoUser = resultPrompt ? ', ' + resultPrompt : ''

	function printarData(data){
		const dia = criarZero(data.getDate());
		const mes = criarZero(data.getMonth() + 1);
		const ano = criarZero(data.getFullYear());
		dataBrasil.innerHTML = `${dia}/${mes}/${ano}`;
	}
	
	function criarZero(zero){
		return zero >= 10 ? zero : `0${zero}`;
	}

	function printarHora(hora){		
		const hour = hora.getHours();
		const min = hora.getMinutes();

		if(hour >= 0 && hour <= 12){
			console.log('Bom Dia');
			saudarUser.innerHTML = `Bom dia${nomoDoUser}! Vamos ver como está o seu IMC?`;
		} else if(hour >= 13 && hour <= 17){
			console.log('boa tarde');
			saudarUser.innerHTML = `Boa Tarde${nomoDoUser}! Vamos ver como está o seu IMC?`;
		} else if(hour >= 18 && hour <= 23){
			console.log('boa noite');
			saudarUser.innerHTML = `Boa Noite${nomoDoUser}! Vamos ver como está o seu IMC?`;
		} else if(hour >= -1 && hour <= 26){
			console.log('Olá,');
			saudarUser.innerHTML = `Olá, `;
		}
	}	
	
	form.addEventListener('submit', function (event){
		event.preventDefault();
		const inputPeso = event.target.querySelector('.peso');
		const inputAltura = event.target.querySelector('.altura');

		const peso = Number(inputPeso.value);
		const altura = Number(inputAltura.value);

		if(!peso){
			setResultado('Peso invalido', false);
			return;
		}

		if(!altura){
			setResultado('Altura invalido', false);
			return;
		}

		const imc = getImc(peso, altura);
		const nivelImc = getNivelImc(imc);

		const msg = `Seu IMC: é ${imc} (${nivelImc})`;
		setResultado(msg, true);
	});

	function getNivelImc(imc){
		const nivel = ['Abaixo do peso','Peso normal','Sobrepeso',
			'Obesidade grau 1','Obesidade grau 2','Obesidade grau 3'];

		if(imc >= 39.9)	return nivel[5];
		if(imc >= 34.9)	return nivel[4];
		if(imc >= 29.9)	return nivel[3];
		if(imc >= 24.9)	return nivel[2];
		if(imc >= 18.5)	return nivel[1];
		if(imc < 18.5) return nivel[0];
	}

	function getImc(peso, altura){
		const imc = peso / (altura ** 2);
		return imc.toFixed(2);
	}

	function criaP(){
		const p = document.createElement('p');
		return p;
	}
	
	// essa função é feita para colocar algo dentro do HTML da minha página
	// dentro da function do form.addEventListener eu coloco setResultado('texto');
	function setResultado(msg, isValid){
		const resultado = document.querySelector('.resultado');
		resultado.innerHTML = '';
		const p = criaP();
		
		if(isValid) {
			p.classList.add('paragrafo-resultado');
		} else{
			p.classList.add('bad');
		}

		p.innerHTML = msg;
		resultado.appendChild(p);
	}
	printarData(data);
	printarHora(hora)


}

function mascara(el) {
	el.value = el.value
		.replace(',', '')
		.replace('.', '')
		.replace(/^(\d{1,2})(\d{2})$/, "$1.$2")
}

meuEscopo();