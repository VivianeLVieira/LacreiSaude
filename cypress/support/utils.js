export function incremente_email (email, confirme_email){
    const num_aleatorio = Number(Math.random() * 100000).toFixed(0);

    const dividir_email = email.split("@");
    const novo_email = [
        dividir_email[0],
        "+" + num_aleatorio,
        "@",
        dividir_email[1],
    ].join("");

    const dividir_confirme_email = confirme_email.split("@");
    const novo_confirme_email = [
        dividir_confirme_email[0],
        "+" + num_aleatorio,
        "@",
        dividir_confirme_email[1],
    ].join("");

    return [novo_email, novo_confirme_email];
}