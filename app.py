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
    banco_nome = "projeto"
    usuario = "postgres"
    senha = "123"
    conn = None

    #loop para receber credenciais validas
    while(True):
        print("conectar-se ao banco postgree")
        print("(1) usuário padrão")
        print("(2) Outro usuário")
        print("(0) Sair")

        ent = entrada(":", ['0','1','2'])

        if  ent == '2':
            banco_nome = input("Nome do Banco:")
            usuario = input("nome de usuario:")
            senha = input("senha:")

        elif ent == '0':
            return
        
        #tentar connectar com o servidor utilizando as credenciais recebidas
        try:
            print('Connecting to the PostgreSQL database...')

            
            conn = psycopg2.connect(dbname=banco_nome, user=usuario, password=senha)

            break
        #em caso de erro printa o erro acontecido
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)
    

#try que cria o ponteiro e inicia a main do aplicativo
    try:
        # create a cursor
        cur = conn.cursor()
	# execute a statement
        clear()
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


#função que printa a legenda
def legenda():
    print()
    print("(1) Buscar dados no sistema")
    print("(2) Inserir novo dado no sistema")
    print("(0) Sair")


#função de busca
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

                #if cascate para escolher dados que serão printados

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

            #executa comando de busca
            cur.execute(sql)

        #pegar resultados
        resultado = cur.fetchall()

        print()
        #loop para printar resultados
        for res in resultado:
            print(res)

    except (Exception, psycopg2.DatabaseError) as error:
        print("")
        print(error)


#função menu de inserção
def insercao(conn, cur):
    print("(1) Inserir proposta de evento")
    escolha = entrada(':',['1'])

    if escolha == '1':
        inserir_proposta(conn, cur)
    else:
        return

#função de inserção de proposta
def inserir_proposta(conn, cur):
    sql = """INSERT INTO PROPOSTA VALUES (%s, %s, %s);"""

    valores = []

    valores.append(int(input("id:")))
    valores.append(input("nome:"))
    valores.append(input("descrição:"))

    try:
        #executar comando
        cur.execute(sql, (valores))
        
        #commit caso nenhum erro aconteça
        conn.commit()

    #except caso algum dados esteja errado
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)    


def main(conn, cur):
    print("\n\nAplicativo de acesso ao banco de dados\n")

    #loop 
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

    
        