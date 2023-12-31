#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticacao) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação da EBAC-SHOP

Cenário: Autenticação válida por usuário ativo
Quando eu digitar o <usuario>
E a <senha>
Então o site deve carregar a sessão do usuário
Exemplos:
| usuário      | senha           |
| "user1_ebac" | "psw!ebac@test" |
| "user2_ebac" | "psw!ebac@test" |
| "user3_ebac" | "psw!ebac@test" |

Cenário: Autenticação válida por email de usuário ativo
Quando eu digitar o <email>
E a <senha>
Então o site deve carregar a sessão do usuário
Exemplos:
| email                 | senha           |
| "user1_ebac@ebac.com" | "psw!ebac@test" |
| "user2_ebac@ebac.com" | "psw!ebac@test" |
| "user3_ebac@ebac.com" | "psw!ebac@test" |

Cenário: Autenticação válida por cpf de usuário ativo
Quando eu digitar o <cpf>
E a <senha>
Então o site deve carregar a sessão do usuário
Exemplos:
| cpf           | senha           |
| "91216601747" | "psw!ebac@test" |
| "68518601630" | "psw!ebac@test" |
| "59678261499" | "psw!ebac@test" |

Cenário: Autenticação inválida por usuário inativo
Quando eu digitar o <usuario>
E a <senha>
Então deve emitir mensagem "Este usuário está inativo! Entre em contato pelo canal de atendimento para fazer a ativação."
Exemplos:
| usuário   | senha    |
| "cggomes" | "s24d1e" |
| "pereira" | "c2d4ff" |
| "wsoares" | "63edtc" |

Cenário: Autenticação inválida por email de usuário inativo
Quando eu digitar o <email>
E a <senha>
Então deve emitir mensagem "Este usuário está inativo! Entre em contato pelo canal de atendimento para fazer a ativação."
Exemplos:
| email               | senha    |
| "cggomes@teste.com" | "s24d1e" |
| "pereira@teste.com" | "c2d4ff" |
| "wsoares@teste.com" | "63edtc" |

Cenário: Autenticação inválida por cpf de usuário inativo
Quando eu digitar o <cpf>
E a <senha>
Então deve emitir mensagem "Este usuário está inativo! Entre em contato pelo canal de atendimento para fazer a ativação."
Exemplos:
| cpf           | senha    |
| "85059484246" | "s24d1e" |
| "60818922397" | "c2d4ff" |
| "85455580159" | "63edtc" |

Cenário: Autenticação inválida por primeiro erro de senha por usuário
Quando eu digitar o usuário "user1_ebac"
E a senha "123456"
Então deve emitir mensagem "A senha digitada está incorreta! Faltam duas tentativas antes do bloqueio do usuário."

Cenário: Autenticação inválida por segundo erro de senha por usuário
Quando eu digitar o usuário "user1_ebac"
E a senha "123456"
Então deve emitir mensagem "A senha digitada está incorreta! Falta uma tentativas antes do bloqueio do usuário."

Cenário: Autenticação inválida por terceiro erro de senha por usuário
Quando eu digitar o usuário "user1_ebac"
E a senha "123456"
Então deve emitir mensagem "A senha digitada está incorreta! O usuário foi bloqueado por 15 minutos."

Cenário: Autenticação inválida por primeiro erro de senha por email
Quando eu digitar o usuário "user1_ebac@ebac.com"
E a senha "123456"
Então deve emitir mensagem "A senha digitada está incorreta! Faltam duas tentativas antes do bloqueio do usuário."

Cenário: Autenticação inválida por segundo erro de senha por email
Quando eu digitar o usuário "user1_ebac@ebac.com"
E a senha "123456"
Então deve emitir mensagem "A senha digitada está incorreta! Falta uma tentativas antes do bloqueio do usuário."

Cenário: Autenticação inválida por terceiro erro de senha por email
Quando eu digitar o usuário "user1_ebac@ebac.com"
E a senha "123456"
Então deve emitir mensagem "A senha digitada está incorreta! O usuário foi bloqueado por 15 minutos."

Cenário: Autenticação inválida por primeiro erro de senha por cpf
Quando eu digitar o usuário "91216601747"
E a senha "123456"
Então deve emitir mensagem "A senha digitada está incorreta! Faltam duas tentativas antes do bloqueio do usuário."

Cenário: Autenticação inválida por segundo erro de senha por cpf
Quando eu digitar o usuário "91216601747"
E a senha "123456"
Então deve emitir mensagem "A senha digitada está incorreta! Falta uma tentativas antes do bloqueio do usuário."

Cenário: Autenticação inválida por terceiro erro de senha por cpf
Quando eu digitar o usuário "91216601747"
E a senha "123456"
Então deve emitir mensagem "A senha digitada está incorreta! O usuário foi bloqueado por 15 minutos."
