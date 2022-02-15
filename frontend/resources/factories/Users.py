import bcrypt
from faker import Faker
fake = Faker()


def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def users_to_insert_db():
    return [
        factory_user('login'),
        factory_user('be_geek'),
        factory_user('attempt_be_geek')

    ]


def factory_user(target):

    data = {
        'faker': {
            'name': fake.first_name(),
            'lastname': fake.last_name(),
            'email': fake.free_email(),
            'password': 'pwd123'
        },
        'wrong_email': {
            'name': 'Pedro',
            'lastname': 'De Lara',
            'email': 'pedro_dl*hotmail.com',
            'password': 'abc123'
        },
        'login': {
            'name': 'Kennedy',
            'lastname': 'Silva',
            'email': 'kennedy@gmail.com',
            'password': 'pwd123'
        },
        'be_geek': {
            'name': 'Kelvin',
            'lastname': 'Paz',
            'email': 'kelvin@gmail.com',
            'password': 'pwd123',
            'geek_profile': {
                'whatsapp': '61980809999',
                'desc': 'Seu computador está lento?Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção do seu PC, formatando, reinstalando o SO, trocando algum componente físico e por que não remover o baidu ou qualquer outro malware.',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '100'
            }
        },
        'attempt_be_geek': {
            'name': 'Laura',
            'lastname': 'Linner',
            'email': 'laura@gmail.com',
            'password': 'pwd123',
            'geek_profile': {
                'whatsapp': '61999999999',
                'desc': 'ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '100'
            }
        }
    }
    return data[target]
