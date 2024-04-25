*** Test Cases ***

Teste FOR usando várias variáveis
    Cria dicionário de tradução.
Teste FOR com númeração de lista
    For com numeração

*** Keywords ***


Cria dicionário de tradução.
    FOR    ${index}    ${english}    ${finish}    ${português}    IN
...        1           cat         kissa              gato
...        2           dog        koira               cachorro
...        3          horse        hevonen            cavalo
        Log     Animal ${index}:/nEm inglês: ${english}:/nEm finlandês: ${finish}:/nEm português: ${português}
    END

For com numeração
    FOR    ${index}    ${item}   IN ENUMERATE    P M G GG XG XXG 
        Log    Item da lsta: ${item} - Posição do item na lista: ${index} 
    END

   
