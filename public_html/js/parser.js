var xhttp;

export function loadXML(filename)
{
    if (window.ActiveXObject)
    {
        xhttp = new ActiveXObject("Msxml2.XMLHTTP");
    }
    else
    {
        xhttp = new XMLHttpRequest();
    }
    xhttp.open("GET", filename, false);
    try {xhttp.responseType = "msxml-document"} catch(err) {} // Helping IE11
    xhttp.send("");
    return xhttp.responseXML;
}

export function displayResult(quesoXML, quesoXSL)
{
    // code for IE
    if (window.ActiveXObject || xhttp.responseType === "msxml-document")
    {
        document.getElementById("queso-tbody").innerHTML = quesoXML.transformNode(quesoXSL);
    }

    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument)
    {
        let quesoProcessor = new XSLTProcessor();
        console.log(quesoProcessor);
        quesoProcessor.importStylesheet(quesoXSL);
        console.log(quesoProcessor);
        console.log(quesoXSL);
        console.log(document);
        //TIBURCIIOOOOOO POR ALGUN MOTIVO NO SE ME HACE LA TRANFORMACIONNNNNN Y ME QUIERO SUICIDAR DESPUES DE ESTAR TANTAS HORAS MIRANDO ESTOOOOO
        let quesoResult = quesoProcessor.transformToFragment(quesoXML, document);
        //TODO LLEGA PERFECTO HASTA ESTE MOMENTOOO\\
        console.log(quesoResult);
        document.getElementById("queso-tbody").appendChild(quesoResult);
        console.log(quesoResult);

    }
}