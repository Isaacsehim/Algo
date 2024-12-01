<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER minutes" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="actif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#heures" algoitem="heures EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#minutes" algoitem="minutes EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#secondes" algoitem="secondes EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez les heures :#1" algoitem="AFFICHER &quot;Entrez les heures :&quot;"/>
        <item code="2#heures#pasliste" algoitem="LIRE heures"/>
        <item code="4#Entrez les minutes :#1" algoitem="AFFICHER &quot;Entrez les minutes :&quot;"/>
        <item code="2#minutes#pasliste" algoitem="LIRE minutes"/>
        <item code="4#Entrez les secondes :#1" algoitem="AFFICHER &quot;Entrez les secondes :&quot;"/>
        <item code="2#secondes#pasliste" algoitem="LIRE secondes"/>
        <item code="6#secondes == 59" algoitem="SI (secondes == 59) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#secondes#0#pasliste" algoitem="secondes PREND_LA_VALEUR 0"/>
            <item code="6#minutes == 59" algoitem="SI (minutes == 59) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#minutes#0#pasliste" algoitem="minutes PREND_LA_VALEUR 0"/>
                <item code="6#heures == 23" algoitem="SI (heures == 23) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#heures#0#pasliste" algoitem="heures PREND_LA_VALEUR 0"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="5#heures#+ 1#pasliste" algoitem="heures PREND_LA_VALEUR + 1"/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="5#minutes#+ 1#pasliste" algoitem="minutes PREND_LA_VALEUR + 1"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="5#secondes#+ 1#pasliste" algoitem="secondes PREND_LA_VALEUR + 1"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="4#Dans une seconde il sera :#1" algoitem="AFFICHER &quot;Dans une seconde il sera :&quot;"/>
        <item code="3#heures#1#pasliste" algoitem="AFFICHER heures"/>
        <item code="3#minutes#1#pasliste" algoitem="AFFICHER minutes"/>
        <item code="3#secondes#1#pasliste" algoitem="AFFICHER secondes"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
