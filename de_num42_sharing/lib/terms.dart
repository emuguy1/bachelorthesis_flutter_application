import 'package:de_num42_sharing/widget/persistentFooter.dart';
import 'package:de_num42_sharing/widget/topBar2.dart';

import 'dataProtection.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({Key? key}) : super(key: key);
  final String title = 'Sharing.';

  @override
  State<TermsPage> createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(hasBackArrow: true),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical:5.w,horizontal:10.h),
          child: HtmlWidget('''<div>
            <h1>Allgemeine Nutzungsbedingungen für Sharing-Portal</h1>
            <h3>
              <strong>Diese Nutzungsbedingungen gelten ab dem 28. Januar 2022</strong>
            </h3>
            <p>
              Die Number42 GmbH, Franz-Mayer-Str. 1, 93053 Regensburg, betreibt unter der
              Bezeichnung „Sharing-Portal“ eine deutschsprachige Website sowie weitere
              Dienste, lokale und mobile Anwendungen, Services und Tools (im
              Folgenden zusammen „Sharing-Portal-Dienste“).
            </p>
            <p>
              Diese Allgemeinen Nutzungsbedingungen (im Folgenden
              „Nutzungsbedingungen“) enthalten die grundlegenden Regeln für
              die Nutzung der Sharing-Portal-Dienste.
            </p>
            <p>
              Die Nutzungsbedingungen und die Sharing-Portal-Dienste
              werden ausschließlich in deutscher Sprache zur Verfügung
              gestellt.
            </p>
            <h2>§ 1 Leistungsbeschreibung</h2>
            <ol>
              <li>
                Sharing-Portal-Plattform stellt mit den Sharing-Portal-Diensten
                einen Online-Service zur Verfügung, über den Nutzer aus Texten und Bildern bestehende
                Einträge zu Artikeln veröffentlichen können, sowie als
                Interessent veröffentlichte Angebote anderer Nutzer einsehen kann.
                Darüber hinaus ermöglichen die Sharing-Portal-Dienste auch den
                Austausch elektronischer Nachrichten zwischen Nutzern.
              </li>
              <li>
                Die Sharing-Portal-Dienste dienen dem Veröffentlichen von
                Angeboten und dem Zusammenführen von Anbietern und Interessenten
                der eingestellten Artikel. Sharing-Portal-Plattform
                ist selbst nicht Anbieter der jeweils mit den Angeboten gezeigten
                Artikel.
              </li>
              <li>
                Im Rahmen der Angebotsdarstellung und auf der Übersichtsseite
                eines Nutzers zeigt Sharing-Portal-Plattform zusätzliche Angaben zum
                Nutzer und dessen Aktivitäten in den Sharing-Portal-Diensten
                an.
              </li>
              <li>
                Sharing-Portal-Plattform veröffentlicht und bewirbt die
                Sharing-Portal-Dienste und die von den Nutzern eingestellten
                Angebote selbst und durch Dritte, zum Beispiel durch Einbindung
                der Angebote oder Ausschnitten davon auf Webseiten, innerhalb von
                Software-Applikationen (“Apps”), in E-Mails in anderen Medien.
                Sharing-Portal-Plattform kann zur Unterstützung dieser Aktivitäten auch
                Dritten Zugang zu den über die Sharing-Portal-Dienste
                veröffentlichten Daten, Informationen und Inhalten zur Verfügung
                stellen. Der Nutzer gestattet Sharing-Portal-Plattform die vorgenannte
                Verwendung seiner Angebote zum Zwecke der Bewerbung und Steigerung
                der Reichweite der Sharing-Portal-Dienste.
              </li>
              <li>
                Der Kundenservice von Sharing-Portal-Plattform ist für jeden Nutzer
                kostenfrei zur Einreichung von Beschwerden und anderen Anfragen
                zugänglich. Der Kundenservice
                dokumentiert eingereichte Beschwerden, prüft diese sorgfältig und
                wird die ggfs. erforderlichen Maßnahmen innerhalb eines
                angemessenen Zeitrahmens ergreifen und den Nutzer hierüber bzw.
                über das Ergebnis des Verfahrens informieren.
              </li>
              <li>
                Sharing-Portal-Plattform ermöglicht es den Nutzern, die Suchergebnisse
                anhand verschiedener Kriterien zu sortieren.
              </li>
            </ol>
          <h2>§ 2 Registrierung, Nutzerkonto</h2>
          <ol>
            <li>
              Für die vollständige Nutzung der Sharing-Portal-Dienste,
              insbesondere für das Einstellen von Angeboten, das Anzeigen
              bestimmter Kontaktdaten von Nutzern und den Austausch
              elektronischer Nachrichten mit anderen Nutzern, ist eine
              Registrierung des Nutzers bei Sharing-Portal-Plattform erforderlich.
              Voraussetzung für eine Registrierung ist, dass es sich bei dem
              Nutzer um eine natürliche Person handelt.
              Ist der Nutzer minderjährig, darf er
              sich nur mit Zustimmung der Erziehungsberechtigten bei Sharing-Portal-Plattform
              registrieren.
            </li>
            <li>
              Der Nutzer ist verpflichtet, die bei der Registrierung von Sharing-Portal-Plattform erhobenen Daten
              wahrheitsgemäß und vollständig anzugeben. Bei einer Änderung der Daten nach erfolgter
              Registrierung ist der Nutzer verpflichtet, die Daten unverzüglich
              im passwortgeschützten Nutzerbereich der Sharing-Portal-Dienste selbst zu aktualisieren.
            </li>
            <li>
              Mit dem Absenden des Registrierungsformulars gibt der Nutzer ein
              Angebot auf den Abschluss einer Nutzungsvereinbarung mit Sharing-Portal-Plattform
              ab, mit dem er die Geltung der Nutzungsbedingungen
              akzeptiert sowie die Kenntnisnahme der Datenschutzerklärung
              erklärt. Akzeptiert Sharing-Portal-Plattform die Registrierung, erhält
              der Nutzer eine Bestätigungs-E-Mail mit einem personalisierten
              Link. Mit Zugang der Bestätigungs-E-Mail kommt zwischen Sharing-Portal-Plattform
              und dem Nutzer ein Vertrag über die Nutzung der
              Sharing-Portal-Dienste (im Folgenden „Nutzungsvertrag“) zustande.
              Um die Registrierung abzuschließen, muss der Nutzer den mit der
              Bestätigungs-E-Mail mitgeteilten Link aufrufen und so seine
              E-Mail-Adresse verifizieren. Ein Anspruch auf Abschluss eines
              Nutzungsvertrages besteht nicht.
            </li>
            <li>
              Bei einer Anmeldung mittels der Authentifizierungsdienste von Apple oder
              Google entfällt die E-Mail-Verifizierung, da dies auf Seite der
              Authentifizierungsdienste bereits erfolgt ist.
            </li>
            <li>
              Mit erfolgreicher Registrierung wird für den Nutzer ein
              Nutzerkonto angelegt, auf das er mit Hilfe seiner E-Mail-Adresse
              und seines bei der Registrierung gewählten Passwortes zugreifen
              kann. Das Passwort kann vom Nutzer jederzeit über den
              passwortgeschützten Nutzerbereich geändert werden. Es ist vom
              Nutzer geheim zu halten und vor dem Zugriff durch unbefugte Dritte
              geschützt aufzubewahren. Stellt der Nutzer fest oder hegt er den
              Verdacht, dass seine Zugangsdaten von einem Dritten unbefugt
              genutzt werden, hat er dies Sharing-Portal-Plattform unverzüglich
              mitzuteilen und sein Passwort unverzüglich zu ändern.
            </li>
            <li>
              Jeder Nutzer darf sich für die Nutzung der
              Sharing-Portal-Dienste jeweils nur einmal bei den
              Sharing-Portal-Plattform registrieren. Nutzerkonten sind nicht
              übertragbar.
            </li>
            <li>
              Sharing-Portal-Plattform behält sich vor, zwecks Verbesserung des
              Nutzererlebnisses neue oder veränderte Funktionen und Features
              beschränkt auf bestimmte Nutzergruppen zu testen, soweit dies den
              Nutzern unter Berücksichtigung der berechtigten Interessen von
              Sharing-Portal-Plattform zumutbar ist. Dies kann zu unterschiedlichen
              Darstellungen bei verschiedenen Nutzern führen.
            </li>
            <li>
              Der Nutzer erhält auf seiner Nutzerprofilseite eine Übersicht der
              von ihm veröffentlichten Angebote. Zudem kann er Änderungen an seinen
              Einstellungen, Präferenzen und Daten vornehmen.
            </li>
            <li>
              Im Rahmen der Sharing-Portal-Dienste hat Sharing-Portal-Plattform
              Zugang zu verschiedenen Informationen über Nutzer, einschließlich
              personenbezogener Daten. Hierzu gehören insbesondere solche
              Informationen, die Nutzer im Rahmen der Sharing-Portal-Dienste
              an Sharing-Portal-Plattform übermitteln (z.B. Kontakt- oder
              Artikelinformationen) sowie solche, die bei der Erbringung und
              Abwicklung der Sharing-Portal-Dienste generiert werden (z.B. Aktivität oder Kommunikation). Nutzer
              erhalten über den Sharing-Portal-Plattform-Dienst Informationen, die für
              die Erbringung des Sharing-Portal-Dienstes erforderlich sind. Nutzer haben
              zudem Zugang zu wichtigen von ihnen übermittelten Informationen
              (insbesondere Nachrichten, Angebote und Einstellungen).
            </li>
          </ol>
          <p>
            Über die Verarbeitung personenbezogener Daten durch Sharing-Portal-Plattform
            einschließlich der Übermittlung an Dritte und den
            Rechten des Nutzers als Betroffener informiert Sharing-Portal-Plattform in
            der Datenschutzerklärung.
          </p>
          <h2>§ 3 Inhaltliche Anforderungen an eingestellte Angebote</h2>
          <ol>
            <li>
              Der Nutzer ist verpflichtet, jeden Artikel wahrheitsgemäß
              und unter Angabe aller relevanten Merkmale und Eigenschaften mit
              Worten und möglichst auch durch aussagekräftige Bilder zu
              beschreiben.
            </li>
            <li>
              <p>
                Das Einstellen von Anzeigen, Texten, Bildern oder sonstigen
                Inhalten, die gegen gesetzliche Bestimmungen, diese
                Nutzungsbedingungen, Rechte Dritter oder gegen die guten Sitten
                verstoßen, ist untersagt. Insbesondere ist es verboten, Inhalte
                einzustellen,
                <br>
                -die gegen urheber-, marken- und wettbewerbsrechtliche
                Vorschriften oder gegen gesetzliche Bestimmungen zum
                Jugendschutz verstoßen,
                <br>
                -die gegen unsere Grundsätze
                bezüglich verbotener Inhalte verstoßen, oder
                <br>
                -die unwahre Angaben enthalten oder die sonst irreführend sind.
              </p>
            </li>
          </ol>
          <h2>§ 4 Besondere Pflichten des Nutzers</h2>
          <ol>
            <li>
              <p>
                Der Nutzer ist verpflichtet, alle Handlungen zu unterlassen, die
                den sicheren Betrieb der Sharing-Portal-Dienste gefährden
                oder andere Nutzer belästigen könnten oder die sonst über eine
                bestimmungsgemäße Nutzung der Sharing-Portal-Dienste
                hinausgehen. Er ist insbesondere verpflichtet, es zu
                unterlassen,
                <br>
                -E-Mail-Werbung, SMS-Werbung, Kettenbriefe oder andere
                belästigende Inhalte zu versenden,
                <br>
                -Viren oder andere Technologien zu versenden, die die
                Sharing-Portal-Dienste oder die Interessen bzw. das Eigentum
                anderer Nutzer schädigen könnten,
                <br>
                -die Infrastruktur der Sharing-Portal-Dienste einer
                übermäßigen Belastung auszusetzen oder auf andere Weise das
                Funktionieren der Sharing-Portal-Dienste zu stören oder zu
                gefährden,
                <br>
                -Inhalte von Sharing-Portal-Plattform ohne vorherige Einwilligung von
                Sharing-Portal-Plattform zu vervielfältigen, öffentlich zugänglich zu
                machen, zu verbreiten, zu bearbeiten oder sonst in einer Art und
                Weise zu nutzen, die über die bestimmungsgemäße Nutzung der
                Sharing-Portal-Dienste hinausgeht.
                <br>
                -die Anzeigen oder sonstigen Inhalte Dritter ohne deren
                vorherige Einwilligung zu vervielfältigen, öffentlich zugänglich
                zu machen, zu verbreiten, zu bearbeiten oder sonst in einer Art
                und Weise zu nutzen, die über die bestimmungsgemäße Nutzung der
                Sharing-Portal-Dienste hinausgeht.
                <br>
                -ohne die ausdrückliche schriftliche Zustimmung von Sharing-Portal-Plattform
                Crawler, Spider, Scraper oder andere
                automatisierte Mechanismen zu nutzen, um auf die
                Sharing-Portal-Dienste zuzugreifen und Inhalte zu sammeln,
                <br>
                -Informationen, insbesondere E-Mail-Adressen oder Rufnummern,
                über andere Nutzer ohne die vorherige Einwilligung der Nutzer zu
                sammeln bzw. zu verwenden,
                <br>
                -Maßnahmen zu umgehen, die dazu dienen, den Zugriff auf die
                Sharing-Portal-Dienste zu verhindern oder einzuschränken.
                <br>
              </p>
            </li>
            <li>
              Der Nutzer ist verpflichtet, alle innerhalb der
              Sharing-Portal-Dienste gespeicherten Daten und Informationen, die
              er zu Zwecken der Beweissicherung, Buchführung oder zu anderen
              Zwecken aktuell oder künftig benötigt oder benötigen könnte, auf
              einem eigenen Speichermedium zu sichern und zu archivieren.
            </li>
          </ol>
          <h2>
          § 5 Löschen von Angeboten, Sperrung von Nutzern, sonstige Maßnahmen
          </h2>
          <ol>
            <li>
              Sharing-Portal-Plattform ist berechtigt, in die
              Sharing-Portal-Dienste eingestellte Artikel oder sonstige Inhalte
              des Nutzers ganz oder teilweise zu löschen oder die
              Veröffentlichung von Angeboten oder sonstigen Inhalten des Nutzers
              zu verzögern oder nicht vorzunehmen, wenn konkrete Anhaltspunkte
              dafür vorliegen, dass die Angebote oder der Inhalt gegen diese
              Nutzungsbedingungen oder gegen gesetzlichen Vorgaben verstößt,
              oder dass der Nutzer sonst schuldhaft vertragliche Pflichten
              verletzt hat. Sharing-Portal-Plattform kann den Nutzer in einem solchen
              Fall außerdem verwarnen und/oder vorläufig oder dauerhaft von der
              Nutzung der Sharing-Portal-Dienste ausschließen. Bei einer
              vorläufigen oder dauerhaften Sperrung wird Sharing-Portal-Plattform den
              Nutzer über diesen Umstand 30 Tage vor dem Wirksamwerden der
              Sperrung informieren und diesen auf einem dauerhaften Datenträger
              (z.B. E-Mail) begründen, sofern dem keine zwingenden Gründe
              entgegenstehen. Die vorgenannte Frist gilt nicht, sofern die
              Kündigung oder dauerhafte Sperrung aufgrund zwingender
              gesetzlicher Bestimmungen oder behördlicher Anordnung erfolgt oder
              Sharing-Portal-Plattform nachweisen kann, dass der Nutzer wiederholt
              gegen diese Nutzungsbedingungen verstoßen hat, was zur Kündigung
              bzw. dauerhaften Sperrung geführt hat.
            </li>
            <li>
              Sharing-Portal-Plattform behält sich außerdem vor, Angebote nicht zu
              veröffentlichen bzw. aus den Sharing-Portal-Diensten zu
              entfernen, bei denen Anhaltspunkte dafür bestehen, dass das
              inserierte Artikel nicht frei verkäuflich ist oder sonst in
              rechtswidriger Weise angeboten wird, oder wenn Anhaltspunkte dafür
              vorliegen, dass die Angebote zu missbräuchlichen Zwecken geschaltet
              werden soll oder wurde. Sharing-Portal-Plattform behält sich außerdem
              vor, bestimmte Artikel von einer Veröffentlichung auszuschließen und
              entsprechende Angebote zu entfernen, wenn diese Artikel
              typischerweise zu missbräuchlichen Zwecken inseriert werden.
            </li>
            <li>
              Wurde ein Nutzer durch Sharing-Portal-Plattform von der Nutzung der
              Sharing-Portal-Dienste ausgeschlossen oder wurde der
              Nutzungsvertrag mit dem Nutzer beendet, darf der Nutzer die
              Sharing-Portal-Dienste auch mit anderen Nutzerkonten,
              einschließlich solcher Nutzerkonten, die für Dritte angelegt
              wurden, nicht mehr nutzen und sich nicht erneut für eine
              Registrierung bei den Sharing-Portal-Diensten anmelden.
            </li>
            <li>
              Sharing-Portal-Plattform ist berechtigt, die Zurverfügungstellung der
              Sharing-Portal-Dienste ganz oder teilweise einzuschränken oder
              zu beenden sowie die Veröffentlichung von Angeboten oder sonstigen
              Inhalten von Nutzern zu verzögern, wenn dies im Hinblick auf
              Kapazitätsbeschränkungen, die Sicherheit oder Integrität der
              Server oder zur Durchführung technischer Maßnahmen erforderlich
              ist, oder dies der ordnungsgemäßen oder verbesserten Erbringung
              der Leistungen dient (Wartungsarbeiten).
            </li>
            <li>
              Ergreift Sharing-Portal-Plattform eine der Maßnahmen gemäß diesem § 5,
              insbesondere bei einer Einschränkung, Sperrung oder Kündigung nach
              § 8 Nr. 2, haben Nutzer die Möglichkeit, den einer solchen
              Maßnahmen zugrunde liegenden Sachverhalt im Rahmen des internen
              Beschwerdemanagementverfahrens des Kundenservices von Sharing-Portal-Plattform
              (vgl. § 1 Nr. 7 dieser Nutzungsbedingungen) zu
              klären.
            </li>
          </ol>
        <h2>§ 6 Haftung von Sharing-Portal-Plattform</h2>
          <ol>
            <li>
              Die in den Sharing-Portal-Diensten veröffentlichten Angebote
              und sonstigen Inhalte von Nutzern geben nicht die Meinung von Sharing-Portal-Plattform
              wieder und werden von Sharing-Portal-Plattform nicht auf
              ihre Rechtmäßigkeit, Richtigkeit und Vollständigkeit überprüft.
              Sharing-Portal-Plattform übernimmt keine Gewähr für die Richtigkeit und
              Vollständigkeit der in den Angeboten enthaltenen Angaben und auch
              keine Gewähr für die Qualität, Sicherheit oder Rechtmäßigkeit der
              von Nutzern angebotenen Artikel.
            </li>
            <li>
              Sharing-Portal-Plattform haftet nach den gesetzlichen Vorschriften für
              Vorsatz und grobe Fahrlässigkeit von Sharing-Portal-Plattform, ihren
              gesetzlichen Vertretern, leitenden Angestellten oder sonstigen
              Erfüllungsgehilfen. Gleiches gilt bei der Übernahme von Garantien
              oder einer sonstigen Übernahme einer verschuldensunabhängigen
              Haftung sowie bei Ansprüchen nach dem Produkthaftungsgesetz oder
              bei einer schuldhaften Verletzung des Lebens, des Körpers oder der
              Gesundheit. Sharing-Portal-Plattform haftet zudem dem Grunde nach für
              durch Sharing-Portal-Plattform, ihre Vertreter, leitende Angestellten
              und sonstige Erfüllungsgehilfen verursachte einfach fahrlässige
              Verletzungen wesentlicher Vertragspflichten, also solcher
              Pflichten, auf deren Erfüllung der Nutzer zur ordnungsgemäßen
              Durchführung des Vertrages regelmäßig vertraut und vertrauen darf,
              in diesem Fall aber der Höhe nach begrenzt auf den typischerweise
              entstehenden, vorhersehbaren Schaden. Eine weitergehende Haftung
              von Sharing-Portal-Plattform ist ausgeschlossen.
            </li>
            <li>
              Soweit die Haftung von Sharing-Portal-Plattform ausgeschlossen oder
              beschränkt ist, gilt dies auch zugunsten der persönlichen Haftung
              ihrer gesetzlichen Vertreter, leitenden Angestellten und sonstigen
              Erfüllungsgehilfen.
            </li>
          </ol>
          <h2>§ 7 Haftung des Nutzers</h2>
          <ol>
            <li>
              Der Nutzer stellt Sharing-Portal-Plattform von sämtlichen Ansprüchen
              frei, die andere Nutzer oder sonstige Dritte wegen einer
              Verletzung ihrer Rechte durch von dem Nutzer in die
              Sharing-Portal-Dienste eingestellten Angebote und sonstigen
              Inhalten oder wegen dessen sonstiger Nutzung der
              Sharing-Portal-Dienste gegenüber Sharing-Portal-Plattform geltend machen.
              Der Nutzer übernimmt hierbei die Kosten der notwendigen
              Rechtsverteidigung von Sharing-Portal-Plattform einschließlich
              sämtlicher Gerichts- und Anwaltskosten in gesetzlicher Höhe. Der
              Anspruch auf Freistellung besteht nicht, wenn der Nutzer die
              Rechtsverletzung nicht zu vertreten hat.
            </li>
            <li>
              Der Nutzer ist verpflichtet, Sharing-Portal-Plattform im Falle einer
              Inanspruchnahme durch Dritte auf Anforderung unverzüglich
              wahrheitsgemäß und vollständig alle Informationen zur Verteidigung
              zur Verfügung zu stellen, die für die Prüfung der Ansprüche und
              eine Verteidigung dagegen erforderlich sind.
            </li>
            <li>
              Eine über diese Regelungen hinausgehende Haftung des Nutzers
              bleibt unberührt.
            </li>
          </ol>
          <h2>§ 8 Beendigung des Nutzungsvertrages</h2>
          <ol>
            <li>
              Der Nutzer kann den Nutzungsvertrag, soweit nicht anders
              vereinbart, jederzeit ohne
              Einhaltung einer Kündigungsfrist in Textform kündigen. Dazu genügt
              die Übersendung einer Kündigungserklärung per E-Mail an den
              Kundenservice von Sharing-Portal-Plattform
              (sharing@num42.de) oder postalisch an:
              Number42 GmbH, Franz-Mayer-Str. 1,
              93053 Regensburg.
            </li>
            <li>
              Sharing-Portal-Plattform kann den Nutzungsvertrag jederzeit ordentlich
              mit einer Frist von 30 Tagen kündigen. Die Frist gilt nicht, sofern die
              Kündigung aufgrund von zwingenden gesetzlichen Bestimmungen oder
              behördlicher Anordnung erfolgt. Sharing-Portal-Plattform wird dem Nutzer
              dies gesondert begründen, sofern dem keine zwingenden Gründe
              entgegenstehen. Das Recht von Sharing-Portal-Plattform zur Löschung
              einzelner Angebote, zur Sperrung von Nutzern und zur Durchführung
              sonstiger Maßnahmen nach § 5 sowie das Recht zur fristlosen
              Kündigung aus wichtigem Grund bleiben unberührt.
            </li>
            <li>
              Mit Beendigung des Nutzungsvertrages werden alle
              Angebote des Nutzers aus den Sharing-Portal-Diensten entfernt
              und das Nutzerkonto des Nutzers deaktiviert. Ein Zugriff auf das
              Nutzerkonto durch den Nutzer besteht ab diesem Zeitpunkt nicht
              mehr. Das Nutzerkonto und alle dazu gespeicherten Daten des
              Nutzers werden spätestens sechs Monate nach Vertragsbeendigung
              gelöscht. Dies gilt nicht für Daten, zu deren Aufbewahrung Sharing-Portal-Plattform
              gesetzlich verpflichtet ist oder an deren
              Aufbewahrung ein berechtigtes Interesse hat, z.B. um nach einer
              berechtigten Sperrung ein erneutes Anmelden zu verhindern.
              Aggregierte Daten, die durch die Nutzung generiert wurden, können
              grundsätzlich auch nach Vertragsende weiterhin aufbewahrt werden.
            </li>
            <li>
              Sharing-Portal-Plattform behält sich außerdem das Recht vor,
              Nutzerkonten mit unvollständigen Registrierungsdaten und
              Nutzerkonten, die für einen Zeitraum von mindestens 12 Monaten
              inaktiv waren, unwiderruflich zu deaktivieren und zu löschen. Sharing-Portal-Plattform
              wird den Nutzer mindestens 30 Tage vor Löschung des
              Nutzerkontos entsprechend per E-Mail benachrichtigen.
            </li>
          </ol>
        <h2>§ 9 Datenschutz</h2>
        <p>
          Detaillierte Informationen zur Erhebung, Verarbeitung und Nutzung
          personenbezogener Daten des Nutzers im Zusammenhang mit der
          Registrierung, der Durchführung der Nutzungsvereinbarung und der
          Nutzung der Sharing-Portal-Dienste finden sich in der
          Datenschutzerklärung.
        </p>
        <h2>§ 10 Änderung der Nutzungsbedingungen</h2>
        <p>
          Für Änderungen dieser Nutzungsbedingungen gilt: Sharing-Portal-Plattform kann
          dem Nutzer jederzeit eine Änderung dieser
          Nutzungsbedingungen vorschlagen. Änderungen dieser
          Nutzungsbedingungen werden den Nutzern spätestens 30 Tage vor dem
          vorgeschlagenen Zeitpunkt ihres Wirksamwerdens in Textform per E-Mail
          angeboten. Die Zustimmung durch den Nutzer gilt als
          erteilt, wenn die Ablehnung nicht vor dem vorgeschlagenen Zeitpunkt
          des Wirksamwerdens der Änderungen gegenüber Sharing-Portal-Plattform in
          Textform angezeigt wird. Wenn der Nutzer mit den Änderungen nicht
          einverstanden ist, steht ihm bis zu dem vorgeschlagenen Zeitpunkt
          des Wirksamwerdens der Änderungen ein fristloses und kostenfreies
          Kündigungsrecht zu. Sharing-Portal-Plattform weist den Nutzer in der
          Nachricht, mit der die Änderungen angeboten werden, auch noch einmal
          besonders auf das Ablehnungsrecht, die Frist dafür und die
          Möglichkeit zur Kündigung hin. Die geänderten Nutzungsbedingungen
          werden zusätzlich auf der Website von Sharing-Portal-Plattform
          veröffentlicht.
        </p>
        <h2>§ 11 Ausübung der Rechte durch Dritte, Vertragsübernahme</h2>
        <ol>
          <li>
            Zum Zwecke der Vertragserfüllung und Ausübung der aus diesem
            Vertrag erwachsenden Rechte kann sich Sharing-Portal-Plattform anderer
            verbundener Unternehmen bedienen.
          </li>
          <li>
            Sharing-Portal-Plattform ist berechtigt, mit einer Ankündigungsfrist von
            vier Wochen seine Rechte und Pflichten aus diesem
            Vertragsverhältnis ganz oder teilweise auf einen Dritten zu
            übertragen. In diesem Fall ist der Teilnehmer berechtigt, den
            Nutzungsvertrag zu kündigen.
          </li>
        </ol>
        <h2>§ 12 Schlussbestimmungen</h2>
        <ol>
          <li>
            Auf die Nutzungsbedingungen, den Nutzungsvertrag und alle darauf
            basierende Vereinbarungen zwischen Sharing-Portal-Plattform und dem
            Nutzer findet ausschließlich das Recht der Bundesrepublik
            Deutschland Anwendung. Die Anwendung des UN-Kaufrechts (CISG) ist
            ausgeschlossen. Handelt der Nutzer als Verbraucher, sind darüber
            hinaus die zwingenden Verbraucherschutzbestimmungen anwendbar, die
            in dem Staat gelten, in dem der Nutzer seinen gewöhnlichen
            Aufenthalt hat, sofern diese dem Nutzer einen weitergehenden
            Schutz gewähren.
          </li>
          <li>
            Für alle aus dem
            Nutzungsvertrag und diesen Nutzungsbedingungen entstehenden
            Streitigkeiten ist der Gerichtsstand Regensburg.
          </li>
          <li>
            Sharing-Portal-Plattform ist weder bereit noch verpflichtet, an
            Streitbeilegungsverfahren mit Verbrauchern vor einer
            Verbraucherschlichtungsstelle teilzunehmen (§ 36 Abs. 1 Nr. 1
            VSBG).
          </li>
          <li>
            Sollten einzelne Bestimmungen dieser Nutzungsbedingungen ganz oder
            teilweise nichtig oder unwirksam sein oder werden, so wird dadurch
            die Wirksamkeit der übrigen Bestimmungen nicht berührt. An die
            Stelle von nicht einbezogenen oder unwirksamen Bestimmungen dieser
            Nutzungsbedingungen tritt das Gesetzesrecht. Sofern solches
            Gesetzesrecht im jeweiligen Fall nicht zur Verfügung steht
            (Regelungslücke) oder zu einem untragbaren Ergebnis führen würde,
            werden die Parteien in Verhandlungen darüber eintreten, anstelle
            der nicht einbezogenen oder unwirksamen Bestimmung eine wirksame
            Regelung zu treffen, die ihr wirtschaftlich möglichst nahe kommt.
          </li>
        </ol>
      </div>''',
            factoryBuilder: () => MyWidgetFactory(),),
        ),
      ),
      persistentFooterButtons: [
        PersistentFooter(),
      ],
    );
  }
}
