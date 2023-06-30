import psycopg2

#limpar terminal
def clear():
    print("\033c", end="")

#loop esperando entradas válidas
def entrada(texto, entradas):
    val = input(texto)
    while val not in entradas:
        print("entrada inválida\n")
        val = input(texto)
    return val

def connect():
    clear()

    """ Connect to the PostgreSQL database server """
    conn = None
    try:
        # connect to the PostgreSQL server
        print('Connecting to the PostgreSQL database...')
        conn = psycopg2.connect(dbname="projeto", user="postgres", password="123")
		
        # create a cursor
        cur = conn.cursor()
        
	# execute a statement
        print('PostgreSQL database version:')
        cur.execute('SELECT version()')

        # display the PostgreSQL database server version
        db_version = cur.fetchone()
        print(db_version)

        main(conn, cur)
       
	# close the communication with the PostgreSQL
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()
            print('Database connection closed.')


def legenda():
    print()
    print("(1) Buscar dados no sistema")
    print("(2) Inserir novo dado no sistema")
    print("(0) Sair")

def busca(cur):
    try:
        clear()
        print("(1) Tabela pessoas")
        print("(0) Voltar")
        escolha = entrada(':',['1','0'])

        if escolha == '0':
            return
        elif escolha == '1':
            val = []
            if entrada("printar todos os valores ?(S/N)",['S','N']) == 'S':
                val.append("*")
            else:
                if entrada("printar CPf?(S/N)",['S','N']) == 'S':
                    val.append("CPF")
                if entrada("printar Nome?(S/N)",['S','N']) == 'S':
                    val.append("NOME")
                if entrada("printar tipo?(S/N)",['S','N']) == 'S':
                    val.append("tipo")
                if entrada("printar telefone?(S/N)",['S','N']) == 'S':
                    val.append("telefone")
                if entrada("printar nascimento?(S/N)",['S','N']) == 'S':
                    val.append("nascimento")
                if entrada("printar sexo?(S/N)",['S','N']) == 'S':
                    val.append("sexo")
            val = ",".join(val)
            sql = f"select {val} from pessoa"
            cur.execute(sql)

        resultado = cur.fetchall()
        print()
        for res in resultado:
            print(res)
    except (Exception, psycopg2.DatabaseError) as error:
        print("")
        print(error)


def insercao(conn, cur):
    print("(1) Inserir proposta de evento")
    escolha = entrada(':',[1])

    if escolha == '1':
        inserir_proposta(conn, cur)
    else:
        return
    
def inserir_proposta(conn, cur):
    sql = """INSERT INTO PROPOSTA VALUES (%s, %s, %s);"""
    valores = []

    valores.append(int(input("id:")))
    valores.append(input("nome:"))
    valores.append(input("descrição:"))
    try:
        cur.execute(sql, (valores))
        
        conn.commit()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)    

def main(conn, cur):
    print("\n\nAplicativo de acesso ao banco de dados\n")
    while(True):
        legenda()
        escolha = entrada(":",['0','1','2'])
        clear()
        if escolha == '0':
            break
        elif escolha == '1':
            busca(cur)
        elif escolha == '2':
            insercao(conn, cur)



if __name__ == "__main__":
    #conexão com o banco de dados
    connect()

    
        
