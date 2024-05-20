*** Test Cases ***
Teste do novo formato do FOR
    Velho formato do FOR de listas
    Novo formato do FOR de listas
Teste de FOR aninhado
    Cria cadastro de produtos (FOR aninhado)

*** Keywords ***

Velho formato do FOR de listas
    :FOR    ${animal}    IN    gato    cahorro    cavalo
    \    Log    o animal desse laço é: ${animal}!
    \    Log    Vamos para o próximo animal da lista


Novo formato do FOR de listas
    FOR    ${animal}    IN    gato    cahorro    cavalo
        Log    o animal desse laço é: ${animal}!
        Log    Vamos para o próximo animal da lista...
    END

Cria cadastro de produtos (FOR aninhado)
    FOR    ${produto}    IN    camisa    short    blusa
        Log     Imprime tamanhos para produto     ${produto}
    END

Imprime tamanhos Para produto
    [Arguments]    ${produto}
    FOR    ${tamanho}    IN    P    M    G
        Log    Produto: ${produto} - Tamanho: ${tamanho}
    END

    




