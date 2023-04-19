/**
 * Validação de formulário
 * @author João Gustavo 
 */

 function validar(){
	 let nome = frmContato.nome.value
	 let curso = frmContato.curso.value
	 let listaPeriodoDisponibilidade = frmContato.listaPeriodoDisponibilidade.value
	 if(nome === ""){
		 alert('Preencha o campo Nome!')
		 frmContato.nome.focus()
		 return false
	 }else if(curso === ""){
		 alert('Preencha o campo Curso!')
		 frmContato.curso.focus()
		 return false
	}else if(listaPeriodoDisponibilidade === ""){
		 alert('Preencha o campo Periodo de Disponibilidade!')
	     frmContato.listaPeriodoDisponibilidade.focus()
		 return false
	 }else{
		 document.forms["frmContato"].submit()
	 }
 }