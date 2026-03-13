programa
{
	
	inclua biblioteca Util --> U

	
	inteiro totalMatriculas = 0, totalAulasPersonal = 0, qntMusculacao = 0, qntFuncionais = 0    // dentro da função, quando ela termina de ser executada ela apaga tudo, sendo assim colocar como global 
	
	funcao inicio()
	{ 
		cadeia armarios[5][6], nomes[100], tels[100]
		inteiro matriculas[100]


		iniciarAlunos(matriculas, nomes, tels)	
		menuAcademia(armarios, matriculas, nomes, tels)	
	}

	funcao iniciarAlunos(inteiro matriculas[], cadeia nomes[], cadeia tels[]) {
		para(inteiro i = 0; i < 100; i++) {
			matriculas[i] = i + 1
			nomes[i] = ""
			tels[i] = ""
		}
	}

	funcao menuAcademia(cadeia armarios[][], inteiro matriculas[], cadeia nomes[], cadeia tels[]) {
		inteiro opcao
		faca {
			escreva("\nACADEMIA - FORÇA TOTAL")
			escreva("\n----------------------------------\n") 
			escreva("\n1 - Nova matrícula")
			escreva("\n2 - Aula Personal")
			escreva("\n3 - Listar Armários")
			escreva("\n4 - Faturamento")
			escreva("\n5 - Sair do Programa\n")
			escreva("\n----------------------------------\n")
			escreva("\nDigite uma das opções acima: ")
			leia(opcao)

			escolha(opcao) {

				caso 1: novaMatricula(armarios, matriculas, nomes, tels)
				limpa()
				pare

				caso 2: aulaPersonal(matriculas, nomes)
				limpa()
				pare	
				
				caso 3: listarArmarios(armarios)
				limpa()
				pare
				
				
				caso 4: faturamento()
				limpa()
				pare 
				
				caso 5: 
					escreva("Saindo do Programa")
				limpa()
				pare
				
				caso contrario: escreva("\nOpção inválida! Digite uma opção válida!\n\n")
				U.aguarde(5000)
				limpa()
				pare
			}	
		}enquanto(opcao != 5)	
	}

	funcao novaMatricula(cadeia armarios[][], inteiro matriculas[],  cadeia nomes[], cadeia tels[]){
		
		cadeia nome, tel
		inteiro matricula, opcao, qntPersonal = 0, qntFuncional = 0, posicao = 0 

		para(inteiro i = 0; i < 100; i++){
			se(nomes[i]==""){
				posicao = i 
				i = 100           
			}
		}
		
		escreva("\nDigite o Nome: ")
		leia(nome)
		escreva("\nDigite o Telefone: ")
		leia(tel)

		nomes[posicao] = nome
		tels[posicao] = tel

		escreva("\nMatricula do aluno ", nome, " : ", matriculas[posicao])
		totalMatriculas++
		
		
		escreva("\nDeseja Utilizar um Armário(1-sim/2-não): ")
		leia(opcao)

		enquanto(opcao != 1 e opcao != 2){
				escreva("\nOpção inválida! Digite uma opção válida para continuar:  ")
				leia(opcao)
			}
		se(opcao == 1){
			armarioExistente(armarios)
			
		}
	}	


	funcao listarArmarios(cadeia armarios[][]){

		inteiro qntVazio = 0, numero = 1
		cadeia aux

		
		para(inteiro linha = 0; linha < 5; linha++){
			para(inteiro coluna = 0; coluna < 6; coluna++){
				se(armarios[linha][coluna] == ""){
					qntVazio++
				}
				escreva("Amário ",numero,": " ,armarios[linha][coluna], "\n")
				numero++
			}
		}
		
		escreva("\n\n Quantidades de Armários Vazios: ", qntVazio)
		escreva("\n\nAPERTE ENTER PARA CONTINUAR...")
		leia(aux)
	}

	funcao armarioExistente(cadeia armarios[][]) {
		inteiro numero,contador = 1
		cadeia nome
		cadeia aux

		escreva("\nDigite Nº do armário(1 ao 30): ")
		leia(numero)

		enquanto(numero < 1 ou numero > 30) {  // aqui não seria ou ?
			escreva("\nNúmero inválido! digite um número válido: ")
			leia(numero)
		}

		para(inteiro linha = 0; linha < 5; linha++) {
			para(inteiro coluna = 0; coluna < 6; coluna++){
				se(contador == numero) {
					se(armarios[linha][coluna] == "") {
						escreva("\nArmário ", numero, " esta vazio\n")
						escreva("\n Digite nome do aluno que deseja reservar o armario: ")
						leia(nome)
						armarios[linha][coluna] = nome

						escreva("\n O armário foi reservado com sucesso por ", nome)
						escreva("\n Pressione ENTER para continuar")
						
						leia(aux)
	
					}
					senao {
						escreva("\nArmário ocupado por: ", armarios[linha][coluna], "\n")
						escreva("\nPressione ENTER e Tente Novamente!")
						leia(aux)
						armarioExistente(armarios)

					}
				}
				contador++
			}
		}
	}
	funcao aulaPersonal(inteiro matriculas[], cadeia nomes[]){

		inteiro matricula, nMusculacao = 0, nFuncional = 0, opcao
		cadeia data, aux
		logico encontrado = falso
	
		escreva("Digite a matricula do Aluno: ")
		leia(matricula)
		
		para(inteiro i = 0; i < 100; i++){
			se(matriculas[i] == matricula e nomes[i] != ""){
				encontrado = verdadeiro
				escreva("\nAluno: ", nomes[i], "\n")
				escreva("\nDigite a data(utilizando '--/--/----'): ")
				leia(data)

				escreva("\nTipo de aula: ")
				escreva("\n1 - Musculação Personal")
				escreva("\n2 - Funcional")
				escreva("\nDigite uma das opções acima: ")
				leia(opcao)
				
				enquanto (opcao != 1 e opcao !=2){
					escreva("\nOpção inválida! Digite uma Opção Válida: ")
					leia(opcao)
				}
				se(opcao == 1){
					escreva("\nAula de Musculação Personal marcada para ", data)
					qntMusculacao++			
				}
				senao se(opcao == 2){
					escreva("\nAula Funcional marcada para ", data)
					qntFuncionais++
				}
				
				i = 100
				escreva("\n\nApertar Enter para continuar...")
				leia(aux)       // aux apertar o botão para voltar ! 
	
			}
			
		}

		se(encontrado == falso){
			escreva("\nMatrícula não encontrada!\n")
		}
		
	}

	funcao faturamento(){ // real: Pq se trata de valores em Real (R$)
			cadeia aux
			real totalGeral, faturaMatriculas, faturaAulas, faturaFuncionais, faturaMusculacao

			faturaMatriculas = totalMatriculas * 200.0 
			faturaMusculacao = qntMusculacao * 100.0
			faturaFuncionais = qntFuncionais * 80.0
			
			faturaAulas = faturaMusculacao + faturaFuncionais 
			totalGeral = faturaAulas + faturaMatriculas
			
			escreva("\n ========Faturamento========")
			escreva("\n Número de matrículas cadastradas: ", totalMatriculas)
			escreva("\n Número de aulas Personal: ", qntMusculacao + qntFuncionais)
			escreva("\n Total faturado com Matrículas: R$", faturaMatriculas) //Matrícula = R$200 (definir depois)
			escreva("\n Total faturado com Aulas: R$", faturaAulas) //Aula Musculação com o Personal = R$100 e Aulas Funcional = R$80
			escreva("\n Total da Academia: R$", totalGeral)
			escreva("\n\nPara continuar pressione ENTER")
			leia(aux)
			
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6137; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */