import random
LUTADORES_PESO_MEIO_MEDIO = ["PESO MEIO MEDIO","Kamaru Usman","Khamzat Chimaev","Dan Henderson",
"Robbie Lawler","Johny Hendricks","Jake Ellenberger",
"Kazushi Sakuraba","Eric Spicely","Tom Lawlor","Yoel Romero",
]



LUTADORES_PESO_LEVE =["PESO LEVE","Islam Makhachev","Charles Oliveira","Max Holloway",
"Rafael dos Anjos","Justin Gaethje","Dustin Poirier",
"Michael Chandler","Rafael Fiziev","Renato Moicano",
]

LUTADORES_PESO_PESADO =["PESO PESADO","Jon Jones","Ciryl Gane","Sergei Pavlovich",
"Stipe Miocic","Tom Aspinall","Curtis Blaydes",
"Alexander Volkov","Sergey Spivak","Tai Tuivasa",
"Jailton Almeida","Derrick Lewis","Marcin Tybura",
]

LUTADORES_PESO_GALO =["PESO GALO","Sean O'Malley","Aljamain Sterling","Merab Dvalishvili",
"Henry Cejudo","Cory Sandhagen","Petr Yan","Marlon Vera",
"Song Yadong","Rob Font","Dominick Cruz","Pedro Munhoz",
"Ricky Simón","Umar Nurmagomedov"]

LOCAIS =["Las Vegas","Londres","Kallang","Phoenix","Houston",
"Abu Dhabi",
"Brasilia","Auckland","São Paulo","Montevidéu","Moscou",
"Vancouver","Toronto","São Petersburgo","Adelaide",
"Rio de Janeiro"]
METODOS =["SUBMISSION",
"DECISÃO UNÂNIME",
"DECISÃO PARCIAL",
"NOCAUTE"]
DATES_ALREADY_USED = []

def insert_lutadores():
    for lutador in (LUTADORES_PESO_GALO[1:]+LUTADORES_PESO_LEVE[1:]+LUTADORES_PESO_MEIO_MEDIO[1:]+LUTADORES_PESO_PESADO[1:]):
        with open("insertDeLutadores.txt","a",encoding="utf-8") as arq:
            arq.writelines(f"INSERT INTO lutador(nome) values (\"{lutador}\");\n")

def insert_locais():
    for local in LOCAIS:
        with open("insertDeLocais.txt","a",encoding='utf-8') as arq:
            arq.write(f"INSERT INTO local(nome) values (\"{local}\");\n") 

def insert_metodos():
    for metodo in METODOS:
        with open("insertDeMetodos.txt","a",encoding='utf-8') as arq:
            arq.write(f"INSERT INTO metodo(metodo) values (\"{metodo}\");\n") 

def insert_categorias():
    for categoria in [LUTADORES_PESO_GALO[0],LUTADORES_PESO_LEVE[0],LUTADORES_PESO_MEIO_MEDIO[0],LUTADORES_PESO_PESADO[0]]:
        with open("insertDeCategorias.txt","a",encoding="utf-8") as arq:
            arq.writelines(f"INSERT INTO categoria(nome) values (\"{categoria}\");\n")
#insert_lutadores()
#insert_locais()
#insert_metodos()
#insert_categorias()

def random_date (year):
    month = random.randint(1,12)
    day = random.randint(1,28)
    while f"{year}-{month}-{day}" in DATES_ALREADY_USED:
        month = random.randint(1,12)
        day = random.randint(1,28)
    return f"{year}-{month}-{day}"

def random_fight(categoria):
    lutador1 = random.choice(categoria[1:])
    lutador2 = random.choice(categoria[1:])
    while lutador2 == lutador1:
        lutador2 = random.choice(categoria[1:])
    return lutador1,lutador2

def random_local():
    return random.choice(LOCAIS)
def random_metodo():
    return random.choice(METODOS)


EVENT_NUMBER = list(range(1,370))
def get_insert(categoria,evento,data):
    lutador1,lutador2 = random_fight(categoria)
    vencedor = random.choice([lutador1,lutador2])
    n_rounds = random.choice([1,2,3,4,5,6,7,8,9,10,11,12])
    bolsa_vencedor = random.randint(30000,2700000)
    bolsa_perdedor = random.randint(30000,2500000)
    while bolsa_vencedor < bolsa_perdedor:
        bolsa_perdedor = random.randint(30000, 2500000)
    metodo = random.choice(METODOS)
    local = random_local()
    
    i2 = f"INSERT INTO luta(bolsa_vencedor,bolsa_perdedor,id_categoria,id_evento,id_local,id_lutador1,id_lutador2,n_rounds) values (" \
         f"{bolsa_vencedor},{bolsa_perdedor},(SELECT c.id from categoria c where c.nome = '{categoria[0]}'),(SELECT MAX(e.id) from evento e)," \
         f"(SELECT loc.id from local loc where loc.nome = \"{local}\"),"\
         f"(SELECT l1.id from lutador l1 where l1.nome  = \"{lutador1}\"), (SELECT l2.id from lutador l2 where l2.nome = \"{lutador2}\"),{n_rounds});\n"
    i3 = f"INSERT INTO resultado(id_luta,id_vencedor,id_metodo) values ((SELECT MAX(l.id) from luta l),(SELECT v.id from lutador v where v.nome = \"{vencedor}\")," \
         f"(SELECT m.id from metodo m where m.metodo = \"{metodo}\"));\n"

    with open("insertDeLuta.txt","a",encoding="utf-8") as arq:
        arq.write(i2)
        arq.write(i3)

for q in range(50):
    date = random_date(random.choice([2022,2021,2023]))
    while date in DATES_ALREADY_USED:
        date = random_date(random.choice([2022,2021,2023]))
    DATES_ALREADY_USED.append(date)
    evento = f"UFC {EVENT_NUMBER.pop(0)}"
    i1 = f"INSERT INTO evento(nome,data) values ('{evento}','{date}');\n"
    with open("insertDeLuta.txt","a",encoding="utf-8") as arq:
        arq.write(i1)
    get_insert(LUTADORES_PESO_LEVE,evento,date)
    get_insert(LUTADORES_PESO_GALO,evento,date)
    get_insert(LUTADORES_PESO_MEIO_MEDIO,evento,date)
    get_insert(LUTADORES_PESO_PESADO,evento,date)
