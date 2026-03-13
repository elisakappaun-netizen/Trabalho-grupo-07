# Trabalho-grupo-07 - 
Almir Acacio
Elisa Barbosa Kappaun
Rafael Couto
Rebeka cardoso 
Rodrigo Lopes

Nome: Hotel Sublime Aura&go

Criar um algoritmo para controle de reservas de quartos em um hotel.
O hotel possui 8 andares e em cada andar existem 15 quartos, totalizando 120
quartos.
Regras do Programa
No início do programa todos os quartos deverão ser inicializados com zero (0).
• 0 → quarto livre
• 1 → quarto ocupado
Funcionamento do Programa
O usuário deverá informar:
• Número do andar
• Número do quarto
O programa deverá verificar:
1. Se o andar existe
2. Se o quarto existe
3. Se o quarto já está ocupado
Validações
• Caso o andar ou quarto não exista, exibir mensagem de erro.
• Caso o quarto já esteja ocupado, informar que ele já foi reservado.
Reserva
Se o quarto estiver livre, ele deverá ser marcado como ocupado (1).
Após cada reserva, o programa deverá mostrar o mapa de ocupação do hotel.
Encerramento do Programa
O programa deverá continuar executando até que seja digitado um número negativo
para o andar.
Ao finalizar o programa
Deverá ser exibido:
• Quantidade de quartos ocupados
• Quantidade de quartos livres

================================================================================================================
Almir Acacio
Elisa Barbosa Kappaun
Rafael Couto
Rebeka cardoso 
Rodrigo Lopes
Segundo Trabalho - Grupo 07

Desenvolva um algoritmo para controle de serviços de uma academia. Na academia
deverão ser cadastradas matrículas e aulas particulares (personal). // 
Menu do programa
ACADEMIA - FORÇA TOTAL
----------------------------------
1 - Nova Matrícula
2 - Aula Personal                                  //
3 - Listar Armários
4 - Faturamento
5 - Sair do Programa
----------------------------------
Armários (Matrículas)
A academia possui 30 armários para alunos matriculados. //
Na matrícula deverão ser preenchidos os dados do aluno:
• matricula                                                  //
• nome                                                       //
Deverá ser perguntado na matricula se o aluno deseja usar um armário.//
Deverá ser criada uma função onde deverá ser verificado se um armário está disponível.//
• Se estiver disponível → marcar como verdadeiro//
e exibir a mensagem:
Armário reservado com sucesso!
• Caso contrário exibir:
Armário ocupado!
Para cada matrícula cadastrada deverão ser armazenados:
• número de alunos matriculados
• total geral (faturamento) com matrículas
Valor da matrícula: R$ 200,00
Aula Personal
Deverão ser preenchidos os dados do aluno:
• matricula
• data
• tipo de aula
Fazer uma pesquisa no vetor ou matriz para verificar se a matricula do aluno está
cadastrada
Tipos de aula:
• Musculação Personal
• Funcional
Regras de valor:
• Se a aula for Musculação Personal - R$ 100,00
• Funcional - R$ 80,00

Para cada aula cadastrada deverá ser armazenado:
• total geral de aulas
• número de alunos atendidos
Listar Armários
Deverá ser exibida uma listagem de todos os armários, mostrando:
• Armários ocupados
• Armários livres

Faturamento
Esta opção deverá mostrar:
• Número de matrículas realizadas
• Número de aulas personal
• Total faturado com matrículas
• Total faturado com aulas
• Total geral arrecadado
Funções que devem ser criadas
O programa deverá possuir as seguintes funções:
• Função para preencher dados do aluno
o nome
o telefone
o tipo de aula
• Função para verificar armários ocupados
• Função para verificar se o número do armário foi digitado corretamente
• Função para listagem de armários livres ou ocupados
• Caso necessário, poderão ser criadas outras funções auxiliares
