import random

LUTADORES_PESO_MEIO_MEDIO = ["PESO MEIO MEDIO", "Kamaru Usman", "Khamzat Chimaev", "Dan Henderson",
                             "Robbie Lawler", "Johny Hendricks", "Jake Ellenberger",
                             "Kazushi Sakuraba", "Eric Spicely", "Tom Lawlor", "Yoel Romero",
                             ]

LUTADORES_PESO_LEVE = ["PESO LEVE", "Islam Makhachev", "Charles Oliveira", "Max Holloway",
                       "Rafael dos Anjos", "Justin Gaethje", "Dustin Poirier",
                       "Michael Chandler", "Rafael Fiziev", "Renato Moicano",
                       ]

LUTADORES_PESO_PESADO = ["PESO PESADO", "Jon Jones", "Ciryl Gane", "Sergei Pavlovich",
                         "Stipe Miocic", "Tom Aspinall", "Curtis Blaydes",
                         "Alexander Volkov", "Sergey Spivak", "Tai Tuivasa",
                         "Jailton Almeida", "Derrick Lewis", "Marcin Tybura",
                         ]

LUTADORES_PESO_GALO = ["PESO GALO", "Sean O'Malley", "Aljamain Sterling", "Merab Dvalishvili",
                       "Henry Cejudo", "Cory Sandhagen", "Petr Yan", "Marlon Vera",
                       "Song Yadong", "Rob Font", "Dominick Cruz", "Pedro Munhoz",
                       "Ricky Simón", "Umar Nurmagomedov"]

LOCAIS = ["Las Vegas", "Londres", "Kallang", "Phoenix", "Houston",
          "Abu Dhabi",
          "Brasilia", "Auckland", "São Paulo", "Montevidéu", "Moscou",
          "Vancouver", "Toronto", "São Petersburgo", "Adelaide",
          "Rio de Janeiro"]

EVENTOS = [
    "UFC ON FOX", "UFC FIGHT NIGHT", "UFC 276", "UFC 249",
    "UFC THE ULTIMATE FIGHTER", "UFC 226", "UFC 222", "UFC 214",
    "THE ULTIMATE FIGHTER AMERICA LATINA 3 FINALE", "UFC 203",
    "UFC 191", "UFC 189", "UFC ON ESPN"
]

METODOS = ["SUBMISSION",
           "DECISÃO UNÂNIME",
           "DECISÃO PARCIAL",
           "NOCAUTE"]


def random_date(year):
    month = random.randint(1, 12)
    day = random.randint(1, 28)
    return f"{year}-{month}-{day}"


def random_fight(categoria):
    lutador1 = random.choice(categoria[1:])
    lutador2 = random.choice(categoria[1:])
    while (lutador2 == lutador1):
        lutador2 = random.choice(categoria[1:])
    return lutador1, lutador2


def random_local():
    return random.choice(LOCAIS)


def random_metodo():
    return random.choice(METODOS)


def criar_insert(nome_lutador, categoria):
    return f"INSERT INTO lutador(nome,id_categoria) values (\"{nome_lutador}\",(SELECT c.id from categoria c where c.nome like '{categoria}') );"


def insert_lutadores():
    inserts = []
    for lutador in LUTADORES_PESO_GALO[1:]:
        inserts.append(criar_insert(lutador, "PESO GALO"))
    for lutador in LUTADORES_PESO_LEVE[1:]:
        inserts.append(criar_insert(lutador, "PESO LEVE"))
    for lutador in LUTADORES_PESO_MEIO_MEDIO[1:]:
        inserts.append(criar_insert(lutador, "PESO MEIO MEDIO"))
    for lutador in LUTADORES_PESO_PESADO[1:]:
        inserts.append(criar_insert(lutador, "PESO PESADO"))

    return inserts


# for insert in  insert_lutadores():
#    print(insert)

def make_insert_luta(categoria, qtd_de_lutas):
    lutador1, lutador2 = random_fight(categoria[1:])
    bolsa = random.randint(30000, 2400000)
    data = random_date(random.choice([2022, 2023, 2021]))
    evento = random.choice(EVENTOS)
    local = random.choice(LOCAIS)
    vencedor = random.choice([lutador1, lutador2])
    inserts_luta = []
    inserts_round = []
    inserts_resultado = []
    for qtd in range(qtd_de_lutas):
        inserts_luta.append(
            f"INSERT INTO luta(bolsa,data,id_categoria,id_evento,id_lutador1,id_lutador2,id_local) values ({bolsa},'{data}',(SELECT c.id from categoria c where c.nome = '{categoria[0]}'), (SELECT e.id from evento e where e.nome = '{evento}'), (SELECT l1.id from lutador l1 where l1.nome = \"{lutador1}\"), (SELECT l2.id from lutador l2 where l2.nome = \"{lutador2}\"),  (SELECT l.id from local l where l.nome = '{local}'));")
        for q in range(random.choice([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])):
            inserts_round.append(
                f"INSERT INTO round(id_luta,id_lutador1,id_lutador2) values ((SELECT MAX(l.id) from luta l),(SELECT l.id_lutador1 from luta l where l.id = (select Max(l1.id) from luta l1)),(SELECT l.id_lutador2 from luta l  where l.id = (select Max(l1.id) from luta l1)));")
        inserts_resultado.append(
            f"INSERT INTO resultado(id_luta,id_metodo,id_vencedor) values ((SELECT MAX(l.id) from luta l),(SELECT m.id from metodo m where m.nome = '{random.choice(METODOS)}'),(SELECT v.id from lutador v where v.nome = '{vencedor}'));")

    return inserts_luta, inserts_round, inserts_resultado


inserts_luta, inserts_round, inserts_resultado = make_insert_luta(LUTADORES_PESO_GALO, 1)


def get_inserts(categoria):
    inserts_luta, inserts_round, inserts_resultado = make_insert_luta(categoria, 1)
    for luta, resultado in zip(inserts_luta, inserts_resultado):
        with open("insertUFC.txt", "a") as arq:
            arq.write(luta)
            for round in inserts_round:
                arq.write(round)
            arq.write(resultado)


for q in range(5):
    get_inserts(LUTADORES_PESO_GALO)
    get_inserts(LUTADORES_PESO_LEVE)
    get_inserts(LUTADORES_PESO_MEIO_MEDIO)
    get_inserts(LUTADORES_PESO_PESADO)