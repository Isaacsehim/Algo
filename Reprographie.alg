<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;euro(s)&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" epaisseurLigne="2" totalBoucles="5000000" maxBoucle="500000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Nombres" algoitem="Nombres EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#prix" algoitem="prix EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Nombre de photocopies :#0" algoitem="AFFICHER &quot;Nombre de photocopies :&quot;"/>
        <item code="2#Nombres#pasliste" algoitem="LIRE Nombres"/>
        <item code="6#Nombres&lt;=10" algoitem="SI (Nombres&lt;=10) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="20#prix&lt;Nombres*0.1#0" algoitem="AFFICHERCALCUL prix&lt;Nombres*0.1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#Nombres&lt;=30" algoitem="SI (Nombres&lt;=30) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="20#prix&lt;(Nombres - 10)*0.09+1#0" algoitem="AFFICHERCALCUL prix&lt;(Nombres - 10)*0.09+1"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="20#prix&lt;( Nombres-30)*0.08+2.8#0" algoitem="AFFICHERCALCUL prix&lt;( Nombres-30)*0.08+2.8"/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="4#Le prix total est :#0" algoitem="AFFICHER &quot;Le prix total est :&quot;"/>
        <item code="3#prix#0#pasliste" algoitem="AFFICHER prix"/>
        <item code="4#euro(s)#0" algoitem="AFFICHER &quot;euro(s)&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
