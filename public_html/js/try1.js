import {loadXML} from "./parser.js";
import {displayResult} from "./parser.js";


window.onload = initialize;

function initialize() {
    let quesoXSL = loadXML("queseriasXMLaXML.xsl");
    let quesoXML = loadXML("queserias.xml"); //CAMBIAR A ONLINE ANTES DE SUBIR
        displayResult(quesoXML, quesoXSL);
};