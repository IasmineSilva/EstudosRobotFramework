*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${HOME_URL}                http://automationpractice.com
${HOME_TITULO}             My Store
${HOME_TOPMENU}            id=block_top_menu
${HOME_PRODUCTS}           xpath=//*[@id="center_column"]//img[@alt="Faded Short Sleeve T-shirts"]
${HOME_BTN_ADDCART}        id=add_to_cart
${HOME_BTN_CHECKOUT}       xpath=//*[@id="layer_cart"]//a[@title="Proceed to checkout"]
${HOME-BTN-PESQUISAR}      name=submit_search
${HOME_FIELD_PESQUISAR}    name=search_query


*** Keywords ***

#### Ações
Acessar a página home do site
    Go To               ${HOME_URL}
    Wait Until Element Is Visible    ${HOME_TOPMENU}
    Title Should Be     My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text          ${HOME_FIELD_PESQUISAR}    ${PRODUTO}

Clicar no botão pesquisar
    Click Element       ${HOME-BTN-PESQUISAR}

Clicar no botão "Add to Cart" do produto
    Wait Until Element Is Visible   ${HOME_PRODUCTS}
    Click Element                   ${HOME_PRODUCTS}
    Wait Until Element Is Visible   ${HOME_BTN_ADDCART}
    Click Button                    ${HOME_BTN_ADDCART}

Clicar no botão "Proceed to checkout"
    Wait Until Element Is Visible   ${HOME_BTN_CHECKOUT}
    Click Element                   ${HOME_BTN_CHECKOUT}

Adicionar o produto "${PRODUTO}" no carrinho
    Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Clicar no botão pesquisar
    Clicar no botão "Add to Cart" do produto
    Clicar no botão "Proceed to checkout"
