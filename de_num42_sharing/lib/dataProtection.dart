import 'package:de_num42_sharing/widget/persistentFooter.dart';
import 'package:de_num42_sharing/widget/topBar2.dart';
import 'package:fwfh_selectable_text/fwfh_selectable_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class DataProtectionPage extends StatefulWidget {
  const DataProtectionPage({Key? key}) : super(key: key);
  final String title = 'Sharing.';

  @override
  State<DataProtectionPage> createState() => _DataProtectionPageState();
}

class _DataProtectionPageState extends State<DataProtectionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(hasBackArrow: true),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical:5.w,horizontal:10.h),
          child: HtmlWidget('''<div class="mx-auto p-4 my-8 prose">
              <h1>Datenschutzerkl&auml;rung</h1>
              <h2>Allgemeines</h2>
              <p>
                Die Einhaltung der Datenschutzgesetze ist f&uuml;r die Number42 GmbH nicht
                nur gesetzliche Pflicht, sondern auch ein wichtiger Vertrauensfaktor. Mit
                den nachfolgenden Datenschutzbestimmungen m&ouml;chten wir Sie deshalb
                transparent &uuml;ber Art, Umfang und Zweck der von Ihnen erhobenen und
                verarbeiteten personenbezogenen Daten innerhalb dieses Internetauftritts
                sowie Ihre Rechte informieren.
              </p>
              <h2>Verantwortlichkeit f&uuml;r die Datenverarbeitung</h2>
              <p>
                Die Number42 GmbH, Franz-Mayer-Stra&szlig;e 1, 93053 Regensburg (Im
                Folgenden: &bdquo;Wir&ldquo;) ist als Betreiber des Sharing-Portals,
                Verantwortlicher gem. Art. 4 Nr. 7 der EU-Datenschutz-Grundverordnung
                (DSGVO). Bei Fragen k&ouml;nnen Sie sich an
                 info@num42.de wenden.
              </p>
              <h2>Datenschutzbeauftragter</h2>
              <p>
                <strong><span>S&uuml;ddeutsche Datenschutzgesellschaft mbH</span></strong>
                <br>&nbsp;Ansprechpartner Maximilian Mayer<br>&nbsp;Von-Brettreich-Stra&szlig;e 4<br>&nbsp;93049 Regensburg<br>Tel:&nbsp;+49 (0) 941 - 38177070<br>&nbsp;Mail: verwaltung@sddsg.de
              </p>
              <h2>Betroffenenrechte</h2>
              <h3>Ihre Rechte als betroffene Person</h3>
              <p>
                Als betroffene Person haben Sie uns gegen&uuml;ber folgende Rechte
                hinsichtlich Ihrer personenbezogenen Daten. Sie haben:
              </p>
              <ul>
                <li>
                  Ein <strong>Recht auf Auskunft</strong> unter anderem &uuml;ber die
                  Kategorien der verarbeiteten Daten, der Verarbeitungszwecke, die
                  Speicherdauer sowie etwaige Empf&auml;nger, gem&auml;&szlig; Art. 15 DSGVO
                  und &sect; 34 BDSG.
                </li>
                <li>
                  Ein <strong>Recht auf Berichtigung oder L&ouml;schung</strong> unrichtiger
                  bzw. unvollst&auml;ndiger Daten, gem&auml;&szlig; Art. 16 und 17 DSGVO und
                  &sect; 35 BDSG.
                </li>
                <li>
                  Unter den Voraussetzungen des Art. 18 DSGVO oder &sect; 35 Abs. 1 S. 2
                  BDSG ein <strong>Recht auf Einschr&auml;nkung der Verarbeitung.</strong>
                </li>
                <li>
                  Ein <strong>Recht auf Widerspruch</strong> gegen die Verarbeitung
                  gem&auml;&szlig; Art. 21 Abs.1 DSGVO, soweit die Datenverarbeitung
                  aufgrund eines berechtigten Interesses erfolgte.
                </li>
                <li>
                  Ein <strong>Recht auf Widerruf</strong> einer abgegebenen Einwilligung mit
                  Wirkung f&uuml;r die Zukunft gem&auml;&szlig; Art. 7 Abs. 3 DSGVO.
                </li>
                <li>
                  Ein <strong>Recht auf Daten&uuml;bertragbarkeit</strong> in einem
                  g&auml;ngigen Format gem&auml;&szlig; Art. 20 DSGVO.
                </li>
                <li>
                  Sie haben gem&auml;&szlig; Art. 22 DSGVO ein
                  <strong>Recht darauf, nicht einer ausschlie&szlig;lich auf einer
                    automatisierten Verarbeitung beruhenden Entscheidung unterworfen zu
                    werden</strong>, die Ihnen gegen&uuml;ber rechtliche Wirkung entfaltet oder Sie in
                  &auml;hnlicher Weise erheblich beeintr&auml;chtigt. Dies umfasst auch
                  Profiling im Sinne des Art. 4 Nr. 4 DSGVO.
                </li>
                <li>
                  Sie haben zudem das Recht, sich gem&auml;&szlig; Art. 77 DSGVO bei einer
                  <strong>Datenschutz-Aufsichtsbeh&ouml;rde</strong> &uuml;ber die
                  Verarbeitung Ihrer personenbezogenen Daten durch uns zu beschweren,
                  insbesondere in dem Mitgliedstaat Ihres gew&ouml;hnlichen Aufenthaltsorts,
                  Ihres Arbeitsplatzes oder des Orts des mutma&szlig;lichen Versto&szlig;es.
                </li>
              </ul>
              <h3>Verfahren</h3>
              <p>
                Wenn Sie Ihre Rechte nach der DSGVO und dem BDSG uns gegen&uuml;ber geltend
                machen, werden wir die von Ihnen dabei an uns &uuml;bermittelten Daten
                verarbeiten, um Ihren Anspruch zu erf&uuml;llen.
              </p>
              <p>
                Im Anschluss speichern wir die von Ihnen an uns &uuml;bermittelten Daten und
                die von uns an Sie im Gegenzug &uuml;bermittelten Daten zum Zwecke der
                Dokumentation bis zum Ablauf der ordnungswidrigkeitenrechtlichen
                Verj&auml;hrungsfrist (3 Jahre).
              </p>
              <p>
                Die Rechtsgrundlage f&uuml;r die Verarbeitung und Speicherung der Daten ist
                Art. 6 Abs. 1 S. 1 Buchstabe f) DSGVO (Berechtigtes Interesse an der
                Datenverarbeitung). Das berechtigte Interesse ergibt sich aus unserer
                Verpflichtung Ihrem Anliegen nachzukommen und dem Bedarf, uns in einem
                m&ouml;glichen Bu&szlig;geldverfahren entlasten zu k&ouml;nnen, indem wir
                nachweisen, dass wir Ihrem Anliegen ordnungsgem&auml;&szlig; nachgekommen
                sind.
              </p>
              <p>
                Der Verarbeitung Ihrer Daten auf Grundlage unseres berechtigten Interesses
                k&ouml;nnen Sie jederzeit unter den Voraussetzungen des Art. 21 DSGVO
                widersprechen. Nutzen Sie hierf&uuml;r bitte die im Impressum genannten
                Kontaktdaten. Wir weisen aber darauf hin, dass die Verarbeitung Ihrer Daten
                zum Nachweis der Einhaltung der Betroffenenrechte zwingend im Sinne des Art.
                21 Abs. 1 DSGVO ist, da andere Nachweism&ouml;glichkeiten nicht bestehen
                bzw. nicht gleicherma&szlig;en geeignet sind.
              </p>
              <h2>Datenschutzma&szlig;nahmen</h2>
              <p>
                Wir sichern unser Webportal und sonstigen Systeme &ndash; und damit auch
                Ihre Daten &ndash; durch technische und organisatorische Ma&szlig;nahmen
                gegen Verlust, Zerst&ouml;rung, Zugriff, Ver&auml;nderung oder Verbreitung
                durch unbefugte Personen ab. Insbesondere werden Ihre pers&ouml;nlichen
                Daten verschl&uuml;sselt durch das Internet &uuml;bertragen. Wir bedienen
                uns dabei des Codierungssystems TLS (Transport Layer Security).&nbsp;
              </p>
              <p>
                Jedoch ist die &Uuml;bertragung von Informationen &uuml;ber das Internet nie
                vollst&auml;ndig sicher, weshalb wir die Sicherheit der von unserem
                Webportal &uuml;bermittelten Daten nicht zu 100% garantieren
                k&ouml;nnen.&nbsp;
              </p>
              <h2>Modalit&auml;ten der Datenverarbeitung</h2>
              <h3>Quellen und Kategorien von personenbezogenen Daten</h3>
              <p>
                Wir verarbeiten Ihre personenbezogenen Daten, soweit sie f&uuml;r die
                Begr&uuml;ndung, inhaltliche Ausgestaltung oder &Auml;nderung eines
                Vertragsverh&auml;ltnisses zwischen uns und Ihnen erforderlich sind
                (Bestandsdaten). Bestandsdaten k&ouml;nnen insbesondere sein: Name, Anrede,
                Kontaktdaten (Postadresse, Telefon, E-Mail-Adresse), Geburtsdatum usw.
              </p>
              <p>
                Ferner verarbeiten wir Ihre Nutzungsdaten. Nutzungsdaten sind Daten, die
                durch Ihr Verhalten bei der Nutzung unseres Webangebots und unserer Dienste
                anfallen, insbesondere Ihre IP-Adresse, Beginn und Ende Ihres Besuchs auf
                unserem Webportal und Informationen dar&uuml;ber, welche Inhalte Sie auf
                unserem Webportal abgerufen haben.
              </p>
              <p>
                Die genannten Daten erheben wir entweder direkt bei Ihnen (z.B. durch den
                Besuch des Webportals) oder, soweit dies nach den Datenschutzgesetzen
                zul&auml;ssig ist, bei Dritten bzw. aus &ouml;ffentlich zug&auml;nglichen
                Quellen (z.B. Handels- und Vereinsregister, Presse, Medien, Internet).
              </p>
              <h3>Daten&uuml;bermittlung an Drittstaaten au&szlig;erhalb der EU</h3>
              <p>
                Alle Informationen, die wir von Ihnen oder &uuml;ber Sie erhalten, werden
                grunds&auml;tzlich auf Servern innerhalb der Europ&auml;ischen Union
                verarbeitet. Eine &Uuml;bermittlung Ihrer Daten an oder eine Verarbeitung
                Ihrer Daten in Drittstaaten erfolgt ohne Ihre ausdr&uuml;ckliche
                Einwilligung lediglich, sofern dies gesetzlich vorgesehen oder gestattet
                ist, in dem Drittstaat ein hierf&uuml;r angemessenes Datenschutzniveau
                sichergestellt ist oder vertragliche Verpflichtungen durch sogenannte
                Standarddatenschutzklauseln der EU bestehen.&nbsp;<br>&nbsp;Bitte beachten
                Sie, dass es sich bei den USA um einen sogenannten unsicheren Drittstaat
                handelt. Es besteht bei einer &Uuml;bermittlung von personenbezogenen Daten
                in die USA das Risiko, dass US-Sicherheitsbeh&ouml;rden im Rahmen des
                &bdquo;Cloud-Acts&ldquo; auf diese Daten zugreifen k&ouml;nnen. Gegen diese
                Ma&szlig;nahmen stehen EU-B&uuml;rgern keine effektiven
                Rechtsschutzm&ouml;glichkeiten in den USA oder der EU zu.
              </p>
              <h3>Weitergabe von Daten, Auftragsverarbeitung</h3>
              <p>
                Wir geben Ihre personenbezogenen Daten niemals unberechtigt an Dritte
                weiter. Wir k&ouml;nnen Ihre Daten aber insbesondere an Dritte weitergeben,
                wenn Sie in die Datenweitergabe eingewilligt haben, wenn die Weitergabe zur
                Erf&uuml;llung unserer rechtlichen Verpflichtungen notwendig ist oder wenn
                wir aufgrund gesetzlicher Bestimmungen oder beh&ouml;rdlicher oder
                gerichtlicher Anordnungen zu einer Datenweitergabe berechtigt oder
                verpflichtet sind. Dabei kann es sich insbesondere um die Auskunftserteilung
                f&uuml;r Zwecke der Strafverfolgung, zur Gefahrenabwehr oder zur
                Durchsetzung geistiger Eigentumsrechte handeln.&nbsp;
              </p>
              <p>
                Wir k&ouml;nnen die von Ihnen erhobenen personenbezogenen Daten insbesondere
                im Rahmen der Vertragsabwicklung an Dritte weitergeben, zum Beispiel an das
                mit der Lieferung beauftragte Transportunternehmen oder den zur Zahlung
                verwendeten Dienst, soweit dies zur Vertragserf&uuml;llung erforderlich
                ist.&nbsp;
              </p>
              <p>
                Unter Umst&auml;nden &uuml;bermitteln wir Ihre Daten au&szlig;erdem an
                externe Dienstleister, die Daten in unserem Auftrag und nach unserer Weisung
                verarbeiten (Auftragsverarbeiter), um unsere eigene Datenverarbeitung zu
                vereinfachen oder zu entlasten. Jeder Auftragsverarbeiter wird durch einen
                Vertrag nach Ma&szlig;gabe des Art. 28 DSGVO verpflichtet. Das hei&szlig;t
                insbesondere, dass der Auftragsverarbeiter hinreichend Garantien daf&uuml;r
                zu bieten hat, dass durch ihn geeignete technische und organisatorische
                Ma&szlig;nahmen so durchgef&uuml;hrt werden, dass die Verarbeitung im
                Einklang mit den Anforderungen der DSGVO erfolgt und der Schutz Ihrer Rechte
                als betroffene Person gew&auml;hrleistet ist. Trotz Beauftragung von
                Auftragsverarbeitern bleiben wir f&uuml;r die Verarbeitung Ihrer
                personenbezogenen Daten die verantwortliche Stelle im Sinne der
                Datenschutzgesetze.
              </p>
              <h3>Zweck der Datenverarbeitung</h3>
              <p>
                Wir nutzen die Daten grunds&auml;tzlich nur zu dem Zweck, zu dem die Daten
                von Ihnen erhoben wurden. Wir k&ouml;nnen die Daten zu einem anderen Zweck
                weiterverarbeiten, wenn nicht dieser andere Zweck mit dem
                urspr&uuml;nglichen Zweck unvereinbar ist (Art. 5 Abs. 1 Lit. c) DSGVO).
              </p>
              <h3>Speicherdauer</h3>
              <p>
                Soweit im Einzelnen nichts anderes angegeben ist, speichern wir von Ihnen
                erhobene Daten nur so lange, wie es f&uuml;r den jeweiligen Zweck
                erforderlich ist, es sei denn es stehen gesetzliche Aufbewahrungspflichten
                der L&ouml;schung entgegen, z.B. aus dem Handelsrecht oder dem Steuerrecht.
              </p>
              <h2>Einzelne Verarbeitungst&auml;tigkeiten</h2>
              <p>
                Wir m&ouml;chten Ihnen im Folgenden so transparent wie m&ouml;glich
                darstellen, welche Daten wir von Ihnen zu welcher Gelegenheit, auf welcher
                Grundlage und zu welchem Zweck verarbeiten.
              </p>
              <h3>Server-Log-Dateien</h3>
              <p>
                Bei jedem Aufruf eines Webportals und bei jedem Abruf von Daten von einem
                Server werden allgemeine Informationen automatisch an den bereitstellenden
                Server &uuml;bermittelt. Diese Daten&uuml;bermittlung erfolgt automatisch
                und ist ein grundlegender Bestandteil der Kommunikation zwischen
                Ger&auml;ten im Internet.
              </p>
              <p>
                Die standardm&auml;&szlig;ig &uuml;bertragenen Daten umfassen unter anderem
                folgende Informationen: Ihre IP-Adresse, Produkt- und Versionsinformationen
                &uuml;ber den verwendeten Browser und das Betriebssystem (sog. user agent),
                die Internetseite von welcher Ihr Zugriff stattfand (sog. referer), Datum
                und Uhrzeit der Anfrage (sog. timestamp). Au&szlig;erdem werden der
                http-Status und die &uuml;bertragene Datenmenge im Rahmen dieser Anfrage
                erfasst.
              </p>
              <p>
                Diese Informationen werden vom Server protokolliert, in einer Tabelle
                abgelegt und dort kurzfristig gespeichert (sog. Server-Log-Dateien). Durch
                die Analyse dieser Log-Dateien k&ouml;nnen wir Fehler der des Webportals
                feststellen und anschlie&szlig;end beseitigen, die Auslastung des Webportals
                zu bestimmten Zeiten feststellen und darauf aufbauend Anpassungen oder
                Verbesserungen vornehmen sowie die Sicherheit des Servers
                gew&auml;hrleisten, indem wir nachvollziehen k&ouml;nnen, von welcher
                IP-Adresse Angriffe auf unseren Server ausgef&uuml;hrt wurden.
              </p>
              <p>
                Ihre IP-Adresse wird nur f&uuml;r die Zeit Ihrer Nutzung des Webportals
                &nbsp;gespeichert und im Anschluss daran unverz&uuml;glich gel&ouml;scht
                oder durch K&uuml;rzung teilweise unkenntlich gemacht. Die &uuml;brigen
                Daten werden f&uuml;r eine begrenzte Zeitdauer (meist 7 Tage)
                gespeichert.&nbsp;
              </p>
              <p>
                Die Rechtsgrundlage f&uuml;r die Nutzung der Server-Log-Dateien ist Art. 6
                Abs. 1 S. 1 Buchstabe f) DSGVO (Berechtigtes Interesse an der
                Datenverarbeitung). Das berechtigte Interesse ergibt sich aus der
                Notwendigkeit f&uuml;r den Betrieb und die Wartung unseres Webportals, wie
                wir vorstehend erl&auml;utert haben. Der Verarbeitung Ihrer Daten auf
                Grundlage unseres berechtigten Interesses k&ouml;nnen Sie jederzeit unter
                den Voraussetzungen des Art. 21 DSGVO widersprechen. Nutzen Sie hierf&uuml;r
                bitte die im Impressum genannten Kontaktdaten. Wir weisen aber bereits im
                Vorfeld darauf hin, dass die Verarbeitung Ihrer Daten in Server-Log-Dateien
                zwingend im Sinne des Art. 21 Abs. 1 DSGVO ist, da das Webportal ansonsten
                &uuml;berhaupt nicht betrieben werden kann.
              </p>
              <h3>Cookies und Web Storage</h3>
              <p>
                Wir benutzen zur Verbesserung der Nutzerfreundlichkeit auf unseres
                Webportals sogenannte &bdquo;Cookies&ldquo; bzw. den &bdquo;Web
                Storage&ldquo; Ihres Browsers.&nbsp;
              </p>
              <h3>Cookies</h3>
              <h4>Was Cookies sind</h4>
              <p>
                Sehr vereinfacht gesagt ist ein Cookie eine kleine Textdatei, die Daten
                &uuml;ber besuchte Webseiten speichert. Cookies k&ouml;nnen in vielfacher
                Weise eingesetzt werden. Sie k&ouml;nnen zum Beispiel eine Art
                &bdquo;Benutzerprofil&ldquo; speichern, also Dinge wie Ihre bevorzugte
                Sprache und andere Seiteneinstellungen, die von unserer Webseite
                ben&ouml;tigt werden, um Ihnen bestimmte Dienste anbieten zu k&ouml;nnen.
                Die Cookie-Datei wird auf Ihrem Endger&auml;t gespeichert und kann auch
                dabei helfen, Sie bei einem erneuten Aufruf unserer Webseite
                wiederzuerkennen.&nbsp;
              </p>
              <p>
                Unter Umst&auml;nden k&ouml;nnen wir durch die Cookies au&szlig;erdem
                Informationen &uuml;ber Ihre bevorzugten Aktivit&auml;ten auf unserer
                Webseite erhalten und unsere Webseite so an Ihren individuellen Interessen
                ausrichten oder sogar die Geschwindigkeit der Navigation auf unserer
                Webseite erh&ouml;hen.
              </p>
              <h4>Wie Sie Cookies vermeiden k&ouml;nnen</h4>
              <p>
                Sie k&ouml;nnen die Cookies in den Sicherheitseinstellungen Ihres Browsers
                jederzeit manuell l&ouml;schen.&nbsp;
              </p>
              <p>
                Sie k&ouml;nnen die Speicherung von Cookies aber auch durch eine
                entsprechende Einstellung Ihres Browsers von vornherein verhindern. Bitte
                beachten Sie aber, dass Sie dann m&ouml;glicherweise nicht s&auml;mtliche
                Funktionen unserer Webseite vollumf&auml;nglich nutzen k&ouml;nnen oder dass
                es gegebenenfalls zu Fehlern in der Darstellung und Nutzung der Webseite
                kommen kann.&nbsp;
              </p>
              <h4>Cookies von Drittanbietern</h4>
              <p>
                Es ist m&ouml;glich, dass Drittanbieter, mithilfe derer wir unsere Seite
                gestalten und betreiben, insbesondere durch sogenannte Plugins (siehe unten
                im Abschnitt &bdquo;Dienste Dritter&ldquo;), selbst&auml;ndig eigene Cookies
                auf Ihrem Endger&auml;t speichern. Sollten Sie nur unsere eigenen Cookies,
                nicht aber Cookies dieser Dritten, akzeptieren wollen, k&ouml;nnen Sie die
                Speicherung dieser Cookies durch die entsprechende Browsereinstellung
                &bdquo;Cookies von Drittanbietern blockieren&rdquo; verhindern.
              </p>
              <h4>Welche Cookies eingesetzt werden</h4>
              <p>Im Einzelnen setzt unser Webportal folgende Cookies:</p>
              <table>
                <tbody>
                  <tr>
                    <td>
                      <p>
                        <strong><span>Name</span></strong>
                      </p>
                    </td>
                    <td>
                      <p>
                        <strong><span>Erl&auml;uterung</span></strong>
                      </p>
                    </td>
                    <td>
                      <p>
                        <strong><span>Herkunft (Domain)</span></strong>
                      </p>
                    </td>
                    <td>
                      <p>
                        <strong><span>G&uuml;ltigkeit/</span></strong>
                      </p>
                      <p>
                        <strong><span>Speicherdauer</span></strong>
                      </p>
                    </td>
                    <td>
                      <p>
                        <strong><span>Zugriff Dritter</span></strong>
                      </p>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <p>
                        <strong><span>_sharing_platform_key</span></strong>
                      </p>
                    </td>
                    <td>
                      <p>
                        <span>Dieses Cookie ist technisch notwendung und dient dazu die aktuelle Sitzung zu speichern und Funktionen wie etwa den Login zu ermöglichen.</span>
                      </p>
                    </td>
                    <td>
                      <p><span>sharing.num42.de</span></p>
                    </td>
                    <td>
                      <p><span>Sitzungsende</span></p>
                    </td>
                    <td>
                      <p><span>Nein</span></p>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <p>
                        <strong><span>ueberauth.state_param</span></strong>
                      </p>
                    </td>
                    <td>
                      <p>
                        <span>Dieses Cookie ist technisch notwendung und dient dazu, CSRF-Angriffe bei OAuth-Logins zu unterbinden.</span>
                      </p>
                    </td>
                    <td>
                      <p><span>sharing.num42.de</span></p>
                    </td>
                    <td>
                      <p><span>Sitzungsende</span></p>
                    </td>
                    <td>
                      <p><span>Nein</span></p>
                    </td>
                  </tr>
                </tbody>
              </table>
              <h4>Rechtsgrundlage</h4>
              <p>
                Die Rechtsgrundlage f&uuml;r die Nutzung von Cookies, die f&uuml;r die
                Funktion des Webportals zwingend erforderlich sind (z.B. Warenkorb-Cookie,
                Session-Cookie) ist Art. 6 Abs. 1 S. 1 Buchstabe f) DSGVO (Berechtigtes
                Interesse an der Datenverarbeitung). Das berechtigte Interesse ergibt sich
                aus unserem Bedarf Ihnen eine funktionierendes Webportal anbieten zu
                k&ouml;nnen. Cookies sind dazu erforderlich, weil sie ein integraler
                Bestandteil der aktuellen Internet-Technologie sind und ohne Cookies viele
                Funktionen aktueller Webportale nicht zur Verf&uuml;gung st&uuml;nden. Wir
                ben&ouml;tigen daher Cookies, um Ihnen das Webportal auf Ihre Anfrage zur
                Verf&uuml;gung stellen zu k&ouml;nnen.
              </p>
              <p>
                Der Verarbeitung Ihrer Daten auf Grundlage unseres berechtigten Interesses
                k&ouml;nnen Sie jederzeit unter den Voraussetzungen des Art. 21 DSGVO
                widersprechen. Nutzen Sie hierf&uuml;r bitte die im Impressum genannten
                Kontaktdaten.
              </p>
              <p>
                Wir weisen aber darauf hin, dass die Verarbeitung Ihrer Daten in bestimmten
                Cookies zwingend im Sinne des Art. 21 Abs. 1 DSGVO ist, da das Webportal
                ansonsten &uuml;berhaupt nicht betrieben werden kann und wir technisch nicht
                die M&ouml;glichkeit haben, das Setzen von Cookies auf bestimmten
                individuellen Endger&auml;ten zu unterbinden. Sie k&ouml;nnen das in Ihrem
                Browser aber m&ouml;glicherweise selbst tun. Werfen Sie f&uuml;r weitere
                Informationen hierzu bitte einen Blick in die Anleitung Ihres Browsers.
              </p>
              <h3>Nutzung unseres&nbsp;Webportals</h3>
              <p>
                Wenn Sie in &uuml;ber unser Webportal Sachen ausleihen m&ouml;chten, ist es
                f&uuml;r den Vertragsabschluss und die Abwicklung zwingend erforderlich,
                dass Sie bestimmte Daten angeben. Die von Ihnen im Laufe des Verleihvorgangs
                angegebenen Daten werden zur Abwicklung der Leihe verarbeitet und an den
                Vertragspartner weitergegeben.&nbsp;
              </p>
              <p>
                Die Rechtsgrundlage f&uuml;r die Nutzung Ihrer Daten zur Abwicklung der
                Leihe ist Art.&nbsp;6 Abs.&nbsp;1 S.&nbsp;1 Buchstabe&nbsp;b) DSGVO
                (Datenverarbeitung zur Erf&uuml;llung eines Vertrags). Rechtsgrundlage
                f&uuml;r die von Ihnen im Prozess freiwillig angegebenen Daten ist
                Art.&nbsp;6 Abs.&nbsp;1 S.&nbsp;1 Buchstabe&nbsp;a) DSGVO (Einwilligung des
                Betroffenen). Ihre Einwilligung k&ouml;nnen Sie jederzeit mit Wirkung
                f&uuml;r die Zukunft widerrufen. Nutzen Sie hierf&uuml;r bitte die im
                Impressum genannten Kontaktdaten.
              </p>
              <p>
                Zur Verhinderung unberechtigter Zugriffe Dritter auf Ihre pers&ouml;nlichen
                Daten wird der Vorgang per TLS-Technik verschl&uuml;sselt.
              </p>
              <p>
                Sobald die verarbeiteten Daten f&uuml;r die Durchf&uuml;hrung des Vertrages
                nicht mehr erforderlich sind, werden sie gel&ouml;scht. Auch nach Beendigung
                des Vertrages kann es erforderlich sein, personenbezogene Daten von Ihnen zu
                speichern, um vertraglichen oder gesetzlichen Verpflichtungen nachzukommen
              </p>
              <h3>Registrierungsbereich</h3>
              <p>
                Unser Webportal bietet Ihnen die M&ouml;glichkeit, sich f&uuml;r weitere,
                personalisierte Funktionen der Seite zu registrieren. Bei der Registrierung
                werden personenbezogene Daten (z.B. Email-Adresse und Name) erhoben und zum
                Zweck der Bereitstellung der personalisierten Dienste verarbeitet.
              </p>
              <p>
                Rechtsgrundlage f&uuml;r die von Ihnen im Registrierungsprozess angegebenen
                Daten ist Art.&nbsp;6 Abs.&nbsp;1 S.&nbsp;1 Buchstabe&nbsp;a) DSGVO
                (Einwilligung des Betroffenen). Ihre Einwilligung k&ouml;nnen Sie jederzeit
                mit Wirkung f&uuml;r die Zukunft widerrufen. Nutzen Sie hierf&uuml;r bitte
                die im Impressum genannten Kontaktdaten.
              </p>
              <p>
                Sie haben auch selbst die M&ouml;glichkeit, die im Registrierungsprozess
                angegebenen Daten jederzeit zu &auml;ndern oder vollst&auml;ndig zu
                l&ouml;schen.
              </p>
              <h3>Registrierung via Google Single-Sign-On&nbsp;</h3>
              <p>
                Unsere Webportal verwendet den Authentifizierungsdienst
                Google-Single-Sign-On der Google Ireland Limited (&bdquo;Google EU&ldquo;),
                Gordon House, Barrow Street, Dublin 4, Irland.&nbsp;Diese Firma vertritt in
                der EU die Firma Google LLC (&bdquo;Google US&quot;), 1600 Amphitheatre
                Parkway Mountain View, CA 94043, USA.&nbsp;
              </p>
              <p>
                Durch die Nutzung der Dienste werden Daten an Google EU und unter
                Umst&auml;nden von Google EU an Google US &uuml;bermittelt. Der
                Google-Konzern kann die &uuml;bermittelten Daten verarbeiten, um
                anonymisierte Nutzerprofile f&uuml;r statistische Zwecke zu erstellen. Wenn
                Sie dar&uuml;ber hinaus &uuml;ber ein Google-Konto verf&uuml;gen und in
                diesem eingeloggt sind, kann Google die &uuml;bermittelten Daten Ihrem Konto
                zuordnen &ndash; auch ger&auml;te&uuml;bergreifend. Auf diese
                Datenverarbeitung haben wir grunds&auml;tzlich keinen Einfluss.
                Verantwortlich f&uuml;r diese Datenverarbeitung ist daher Google EU.&nbsp;
              </p>
              <p>
                Die Authentifizierung erfolgt beim Single-Sign-On-Anbieter direkt. Vom
                Anbieter erhalten wir lediglich eine User-ID, welche die Information
                enth&auml;lt, dass der User unter dieser User-ID einen Google-Account
                besitzt. Diese User-ID ist f&uuml;r uns nicht weiter nutzbar.&nbsp;
              </p>
              <p>
                Ob zus&auml;tzliche Daten &uuml;bermittelt werden, h&auml;ngt von der
                gew&auml;hlten Datenfreigabe ab, welche der User in seinem Google-Account
                gew&auml;hlt hat. &nbsp;Dabei kann es sich nach Wahl des Users um
                verschiedene Daten handeln, in der Regel sind es die E-Mail-Adresse und der
                Benutzername.&nbsp;
              </p>
              <p>
                Die Rechtsgrundlage f&uuml;r die Nutzung von Google Single-Sign-On ist Art.
                6 Abs. 1 S. 1 Buchstabe a) DSGVO (Einwilligung des Betroffenen). Die
                Einwilligung wird mit der Nutzung des Diensts erteilt. Sollten Sie die
                Einwilligung widerrufen wollen, m&uuml;ssen sie diese Verbindung innerhalb
                ihres Nutzerkontos aufheben.&nbsp;
              </p>
              <p>
                Mehr Informationen zum Umgang mit Nutzerdaten finden Sie in der
                Datenschutzerkl&auml;rung von Google:
                https://policies.google.com/privacy
              </p>
              <p>
                Die Einzelheiten der abgeschlossenen Standardvertragsklauseln
                (Gew&auml;hrleistung des Datenschutzniveaus in Drittl&auml;ndern) finden Sie
                hier:
                https://support.google.com/adspolicy/answer/10042247?hl=de&nbsp;
              </p>
              <p>
                Ihr Google-Werbeeinstellungen k&ouml;nnen Sie auf der folgenden Webseite
                verwalten:
                https://adssettings.google.com/?hl=de
                (Diese Einstellung wird gel&ouml;scht, wenn Sie Ihre Cookies l&ouml;schen)
              </p>
              <p>&nbsp;</p>
              <p>Stand der Datenschutzbestimmungen: 17.02.2022&nbsp;</p>
              <p>
                Quelle:
                S&uuml;ddeutsche Datenschutzgesellschaft mbH
              </p>
            </div>''',
            factoryBuilder: () => MyWidgetFactory(),
          ),
        ),
      ),
      persistentFooterButtons: [
        PersistentFooter(),
      ],
    );
  }
}

class MyWidgetFactory extends WidgetFactory with SelectableTextFactory{}
