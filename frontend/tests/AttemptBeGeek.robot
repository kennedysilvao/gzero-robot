*Settings*
Documentation           Attempt BeGeek Test Suite

Resource            ${EXECDIR}/resources/Base.robot

Suite Setup         Start Session For Attempt Be Geek
Test Template       Attempt Be a Geek

*Variables*
${long_desc}        O limite de caracteres do título do Snapchat é de 250. O limite de caracteres do Twitter é de 280. O limite de mensagens de texto SMS é 160. Os anúncios do Google AdSense podem ter 25 caracteres para o título Um espaço ou pontuação é um "caractere", "carao

*Test Cases*
Short Desc           desc               Formato o seu PC        A descrição deve ter no minimo 80 caracteres
Long Desc            desc               ${long_desc}            A descrição deve ter no máximo 255 caracteres
Empty Desc           desc               ${EMPTY}                Informe a descrição do seu trabalho
Whats Only DDD       whatsapp           11                      O Whatsapp deve ter 11 digitos contando com o DDD
Whats Only Number    whatsapp           999999999               O Whatsapp deve ter 11 digitos contando com o DDD
Empty Whats          whatsapp           ${EMPTY}                O Whatsapp deve ter 11 digitos contando com o DDD
Cost Letters         cost               aaaa                    Valor hora deve ser numérico
Cost Alpha           cost               aa12                    Valor hora deve ser numérico
Cost Special Chars   cost               aa12                    Valor hora deve ser numérico
Empty Cost           cost               ${EMPTY}                Valor hora deve ser numérico
No Printer Repair    printer_repair     ${EMPTY}                Por favor, informe se você é um Geek Supremo
No Work              work               ${EMPTY}                Por favor, selecione o modelo de trabalho

*Keywords*
Attempt Be a Geek
    [Arguments]     ${key}      ${input_field}      ${output_message}

    ${user}     Factory User        attempt_be_geek

    Set To Dictionary   ${user}[geek_profile]   ${key}  ${input_field}

    Fill Geek Form  ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be  ${output_message}

    After Test

Start Session For Attempt Be Geek

    ${user}     Factory User        attempt_be_geek

    Start Session
    Do Login  ${user}
    Go To Geek Form