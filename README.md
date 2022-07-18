# Cosmetics

Análise de dataset de vendas de clientes para elaboração de classificador para determinar a correlação entre leads e compradores.
___

* Foram consideradas todas as features presentes na tabela de formulários, onde estão as informações comuns aos leads que compraram ou não, excetuando dados de identificação e datas de ocorrência. 

* Apesar da aplicação do pipeline de dados para o modelo, devido à presença de features que podem conter muitos rótulos, é necessário que haja um tratamento prévio a fim de que estas features sejam devidamente contabilizadas para predição do modelo.

* O modelo final selecionado foi um modelo de regressão logística por ter alcançado bons resultados nas métricas de avaliação, além de ser um algoritmo simples para ser posto em produção e de mais fácil explanabilidade, o que pode ser útil para determinar a calibração de futuras features.

* O modelo atingiu 67% na métrica de ponderação (AUC) entre leads compradores e leads não compradores que receberão mensagens. O valor é 17% acima da estimativa do método  inicial.

* O resultado final do modelo propõe uma redução de 29% o volume total de mensagens que são enviadas aos leads, mantendo ainda uma taxa de identificação de 87% entre leads que tornam-se compradores.

* A média de preço de disparos no WhatsApp é de cerca de R\$ 0.12 por mensagem. Considerando que ao mês, em média, são preenchidos 72.000 formulários, o aumento na assertividade dos disparos com a redução de 29% no total de envios pode gerar uma economia de R\$ 2.505,60/mês para a empresa, passando de 8.640,00 a R$ 6.134,40 mensais em custos.
