import 'package:flutter/material.dart';

class TelaSobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre o SoftTronic'),
        backgroundColor: Colors.indigo[900],
      ),
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: EdgeInsets.all(40),
        child: ListView(
          children: [
            Image(
              image: AssetImage('lib/imagens/icone.png'),
              height: 100,
              width: 100,
            ),
            Text(
              'Historia',
              style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Text(
              ' A Invertronic foi fundada em 2009 com a intenção de trazer ao mercado o melhor da tecnologia e serviço para automação industrial.' +
                  ' Com a experiência adquirida durante esse tempo, notamos que o controle e a rastreabilidade das manutenções executadas em equipamentos criticos' +
                  ' dentros das industrias, ficava cada vez mais trabalhoso devido a quantidade e criticidadde de tais serviços.' +
                  'Com a crescente usabilidade da técnica de manutenção preventiva para evitar problemas futuros, nos da Invertronic, oferecemos o serviço de manutenção preventiva em inversores de frequência e soft starters principalmente em usinas da nossa região.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Image(
                image: AssetImage('lib/imagens/inversores.bmp'),
              ),
              height: 200,
            ),
            SizedBox(height: 40),
            Text(
              'Controle e Rastreabilidade',
              style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Text(
              ' A rastreabilidade é a capacidade que uma organização tem de detalhar o histórico, a aplicabilidade ou a localidade de um item através de informações previamente registradas. Para algumas indústrias chega a ser uma exigência legal. Além disso, é um elemento básico em planos de segurança e de gestão da qualidade na organização.' +
                  ' Um sistema de gestão que tem requisitos de rastreabilidade definidos garante o controle completo sobre a complexidade de informações e dados dentro de uma operação, independente do volume.' +
                  ' A rastreabilidade também é um elemento fundamental para a melhoria contínua. Através de um sistema que permita rastrear informações, uma empresa tem subsídios para identificar oportunidades de aprimoramento de processos, produtos e serviços.' +
                  ' Com o sistema Softronic ao inserir o cadastro de um equipamento no sistema, é emitido um qr code com o codigo do equipamento. Ao scanear este qr code dentro do sistema, temos acesso a todos os dados referente ao equipamento cadastrado, como:\n\n => Manuais de programação, instalação e rede\n\n => Todo o historico de intervenções realizadas no equipamento\n\n => Dados estatisticos para PCM\n\n => Graficos e planilhas para controle de manutenções\n\n => Back up dos parametros e logicas internas\n\n => Imagens do antes e depois de cada intervenção\n\n',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Visualize todas as manutenções executadas de seus equipamentos em alguns cliques!',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              child: Image(
                image: AssetImage('lib/imagens/planilha.jpg'),
              ),
              height: 200,
            ),
            SizedBox(height: 40),
            Text(
              'Planilhas, Manutenções e opções',
              style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Text(
              ' Dentro do cadastro de cada equipamento, podemos adicionar planilhas de manutenções diversas para controle do mesmo.' +
                  ' Entre estas planilhas ressaltamos: ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 40),
            ///////////////////////////////////////////////////preventiva
            Text(
              'Planilhas de Manutenção Preventiva:',
              style: TextStyle(
                  fontSize: 24,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              ' Manutenção preventiva é uma ação planejada e sistemática de tarefas de prevenção de forma constante e envolve programas de inspeção, reformas, reparos, entre outros. A manutenção preventiva é a monitoração de um determinado objeto estudado para evitar que ele apresente erros ou se quebre.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('lib/imagens/imagem_sobre2.jpg'),
              ),
              height: 200,
            ),
            //////////////////////////////////////////////////////////////////
            SizedBox(height: 40),
            ///////////////////////////////////////////////////corretiva
            Text(
              'Planilhas de Manutenção Corretiva:',
              style: TextStyle(
                  fontSize: 24,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              ' Como o próprio nome diz, este tipo de manutenção significa deixar o equipamento, máquina trabalhar até avariar e, depois, corrigir o problema. Ela não é necessariamente uma manutenção de emergência, pois entra em ação mesmo quando há avaria, ou quando o equipamento começa a operar com desempenho deficiente. Em linhas gerais, a manutenção corretiva significa restaurar ou corrigir o funcionamento da máquina. ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('lib/imagens/imagem sobre1.jpg'),
              ),
              height: 200,
            ),
            //////////////////////////////////////////////////
            SizedBox(height: 40),
            ///////////////////////////////////////////////////preditiva
            Text(
              'Planilhas de Manutenção Preditiva:',
              style: TextStyle(
                  fontSize: 24,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              ' É o acompanhamento periódico dos equipamentos, baseado na análise de dados coletados através de monitoração ou inspeções em campo.' +
                  'O objetivo principal da manutenção preditiva é a verificação pontual do funcionamento dos equipamentos, antecipando eventuais problemas que possam causar gastos maiores como a manutenção corretiva.' +
                  'A manutenção preditiva é conhecida como uma técnica de manutenção com base no estado do equipamento. Outras terminologias tem surgido como ferramentas de gerência de manutenção, estes novos termos - RCM, manutenção centrada na confiabilidade; MPT, manutenção produtiva total; e JIT, manutenção Just-in-Time - são apresentadas como substitutas à' +
                  'manutenção preditiva e a solução definitiva aos seus altos custos de manutenção.' +
                  'A manutenção preditiva tenta definir o estado futuro do equipamento e o tempo de sua durabilidade. Tem base na medição e coleta de dados por monitoração: vibração, análises de óleo, ultrassom e termografia, entre outras',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('lib/imagens/preditiva_sobre.jpg'),
              ),
              height: 200,
            ),
            //////////////////////////////////////////////////
            SizedBox(height: 40),
            Text(
              'Geração de listas especificas e filtros de pesquisa',
              style: TextStyle(
                  fontSize: 24,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              ' Com os equipamentos cadastrados, podemos gerar listas de equipamentos com atributos especificos, como:\n\n=> Equipamentos com preventivas vencidas\n\n=> Lista de equipamentos por ccm\n\n=> Equipamentos que tiveram registros de corretiva por determinado periodo\n\n  .' +
                  ' Esta função tem como objetivo auxiliar na tomada de decisão do corpo de controle de manutenção referente aos equipamentos que precisam efetivamente de manutenção para a proxima parada(entre safra).' +
                  ' Com a possibilidade de cadastrar equipamentos em estoque, agiliza na busca por equipamentos similares para rapida substituição durante algum problema.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('lib/imagens/lista equipamentos_sobre.jpg'),
              ),
              height: 200,
            ),
            //////////////////////////////////////////////////
            //////////////////////////////////////////////////
            SizedBox(height: 40),
            Text(
              'Redução do tempo de manutenção, tempo de maquina parada, aumento da eficiencia global dos equipamentos',
              style: TextStyle(
                  fontSize: 24,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              ' Com os backups dos parametros e manuais de programação a alguns cliques do tecnico, o tempo desprendido para programação dos equipamentos novos reduz drasticamente, aumentando consideravelmente a eficiencia e a confiabilidade da manutenção.' +
                  ' O manuseio de manuais digitais dentro do cadastro reduz a necessidade de espaço fisico e o desgate fisico.' +
                  '\n Com o mercado cada vez mais aberto e disputado, não basta que as empresas se foquem nos preços de seus produtos' +
                  ' e serviços. A velha estratégia de aumentar o volume de produção e reduzir custos deixou de ser uma ferramenta de competitividade.' +
                  ' Atingir novos mercados e conservar os já conquistados exige conciliar produtividade e qualidade. Nesse cenário, a manutenção elétrica' +
                  ' tem um papel estratégico. Quando há uma política de manutenção alinhada com os objetivos organizacionais, os resultados são evidentes:\n\n=> Antecipação e solução de falhas\n\n=> Alto grau de funcionalidade\n\n=> Otimização do custo global',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('lib/imagens/custos_sobre.jpg'),
              ),
              height: 200,
            ),
            //////////////////////////////////////////////////
           SizedBox(height: 40),
          
          Text(
              'Desnvolvido po: Marcus Vinicus Guedes Ramassi',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          
          
          
          
          
          ],
        ),
      ),
    );
  }
}
