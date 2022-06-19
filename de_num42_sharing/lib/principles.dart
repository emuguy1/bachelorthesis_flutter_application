import 'package:de_num42_sharing/widget/persistentFooter.dart';
import 'package:de_num42_sharing/widget/topBar2.dart';

import 'dataProtection.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class PrinciplesPage extends StatefulWidget {
  const PrinciplesPage({Key? key}) : super(key: key);
  final String title = 'Sharing.';

  @override
  State<PrinciplesPage> createState() => _PrinciplesPageState();
}

class _PrinciplesPageState extends State<PrinciplesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(hasBackArrow: true),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical:5.w,horizontal:10.h),
          child: HtmlWidget('''
            <div>
              <h1>Grundsätze</h1>
            
              <h3>
                Was Sie für die Nutzung wissen müssen.
              </h3>
              <p>
                Artikel, die gegen diese Grundsätze oder geltendes Recht verstoßen,
                werden von der Plattform entfernt.
              </p>
            
              <h2>Grundsätze zur Erstellung und Kontaktaufnahme</h2>
              <p><strong>Allgemein gilt:</strong></p>
              <ul>
                <li>
                  Der Artikel muss in der Überschrift und in den Details
                  klar und soweit möglich in deutscher Sprache beschrieben werden.
                </li>
                <li>
                  Nutzen Sie ausschließlich eigene Fotos und Texte.
                </li>
                <li>
                  Bieten Sie nur Artikel an, die sich in Ihrem Besitz befinden.
                </li>
              </ul>
              <p><strong>Nicht erlaubt ist:</strong></p>
              <ul>
                <li>
                  Werbung, Kontaktanzeigen, Dienstleistungsangeboten oder Stellenangebote.
                </li>
                <li>
                  Kontaktdaten wie den Accounts, E-Mailadressen oder
                  Telefonnummer in Artikeldetails.
                </li>
                <li>
                  Links zu Webseiten in Texten oder in einer
                  Nachricht dürfen nur erwähnt werden, wenn diese als weiterführende
                  Information zum Artikel genutzt werden.
                </li>
                <li>
                  Links, wenn deren Inhalte gegen
                  gesetzliche Vorschriften oder die gute Sitte verstoßen.
                </li>
                <li>
                  Nacktbilder oder pornografische Bilder.
                </li>
                <li>
                  Beschimpfungen, Warnungen, Aufrufe oder
                  unangemessene Ausdrucksweise.
                </li>
              </ul>
            
            <h2>Unzulässige Artikel</h2>
              <p>
                Nutzer sind selbst für Ihr Handeln auf der Plattform verantwortlich.
                Bitte achten Sie auf die geltenden gesetzlichen Bestimmungen.
                Diese Liste erhebt keinen Anspruch auf Vollständigkeit.
              </p>
              <p>
                Es ist nicht erlaubt, folgende Artikel einzustellen:
              </p>
              <ul>
                <li>Aufrufe zu Straftaten oder Spenden</li>
                <li>Beleidigungen, Beschimpfungen, Rufmord, Diskriminierung</li>
                <li>
                  Nationalsozialistische, Rassenhass verbreitende oder
                  verfassungsfeindliche Propaganda
                </li>
                <li>gemeingefährliche Aktivitäten</li>
                <li>
                  Pornografische und jugendgefährdende Schriften oder Gegenstände
                </li>
                <li>
                  Angebote von sexuellen Hilfsmitteln, bzw. Gegenständen die der
                  sexuellen Erregung dienen
                </li>
                <li>Getragene Unterwäsche</li>
                <li>
                  Medien mit der Kennzeichnung "Keine Jugendfreigabe", "Freigabe ab
                  18", "FSK 18", "USK 18", Informieren Sie sich bei den Zuständigen
                  Organisationen (FSK, USK), ob Ihr Medium einer Jugendfreigabe unterliegt.
                </li>
                <li>
                  Artikel mit einer Altersfreigabe ab 18 Jahren, Tabakwaren aller
                  Art, sowie entsprechendes Zubehör wie z.B. Shishas oder Pfeifen
                </li>
                <li>
                  Drogen im Sinne des Betäubungsmittelgesetzes und andere
                  bewusstseinsverändernde Stoffe, sowie entsprechendes Zubehör
                </li>
                <li>Gefährliche oder eingeschränkt handelbare Gegenstände</li>
                <li>Gestohlene Gegenstände</li>
                <li>
                  Alle Gegenstände mit Symbolen verfassungsfeindlicher
                  Organisationen - auch nicht sichtbar dargestellte (verdecktes
                  Hakenkreuz)
                </li>
                <li>
                  Waffen im Sinne des Waffengesetzes, insbesondere Schuss-, Hieb-
                  und Stichwaffen jeglicher Art, sowie Zubehör und Munition
                  jeglicher Art
                </li>
                <li>Paintball inkl. Ausrüstung</li>
                <li>
                  Nachahmungen und Fälschungen (Geld, Briefmarken, Bekleidung,
                  Elektronikartikel, Accessoires Produkte, etc.)
                </li>
                <li>
                  Ungenehmigte Kopien geschützter Werke oder Gegenstände,
                  insbesondere Kopien von Filmen, Videospielen, Büchern (ebooks)
                  oder Musik
                </li>
                <li>
                  Schrott oder Elektroschrott gemäß Elektrogesetz (ElektroG)
                </li>
                <li>
                  Gegenstände, Kleidungsstücke und Ausweise aus
                  sicherheitsrelevanten Bereichen
                </li>
                <li>
                  Medizinische Instrumente
                </li>
                <li>
                  Arzneimittel (apothekenpflichtig und freiverkäuflich),
                  Diätpräparate/Nahrungsergänzungsmittel sowie Medikamente für Tiere
                </li>
                <li>
                  Radioaktive Stoffe, Gift- und Explosivstoffe (Feuerwerkskörper,
                  pyrotechnische Gegenstände), sowie sonstige gesundheitsschädigende
                  Chemikalien und Pestizide
                </li>
                <li>
                  Gaskartuschen oder Gasgrill mit Gaskartuschen, Gasflaschen (leer
                  und voll)
                </li>
                <li>Ausgebaute Airbags</li>
                <li>Menschliche Organe, Blut, sowie andere Körperflüssigkeiten</li>
                <li>
                  Listen, Verzeichnisse o. ä., die Hersteller-, Händler- und
                  Lieferantenadressen enthalten
                </li>
                <li>
                  Gebührenpflichtige Telefondienste
                </li>
                <li>Bootleg-Aufnahmen (Raubpressungen)</li>
                <li>Angebote zum Herunterladen von Medien</li>
                <li>Accounts von Onlineangeboten</li>
                <li>
                  Hard- oder Software zum Modifizieren von Pay-TV, Spielekonsolen oder
                  Mobilfunktelefonen
                </li>
                <li>
                  Wertpapiere (insbesondere Aktien), Geldmarkt- oder
                  Finanzinstrumente, Kredite, Darlehen und Finanzierungshilfen
                </li>
                <li>
                  Schuldscheine und gerichtliche Titel, sowie andere Forderungen aus
                  Rechtsgeschäften
                </li>
                <li>Archäologische Funde</li>
                <li>
                  Elfenbein und allen Elfenbeinprodukten, und zwar
                  unabhängig von der Herkunft des Elfenbeins oder Elfenbeinproduktes
                  inkl. prähistorisches Elfenbein.
                </li>
                <li>Getränke & Nahrungsmittel</li>
                <li>Tiere</li>
              </ul>
            
              <h2>Schutz geistigen Eigentums</h2>
              <p>
                Berechtigte, insbesondere Inhaber von Urheberrechten,
                Warenzeichenrechten oder anderen Schutzrechten, können Angebote, die
                ihre Rechte verletzen, melden und deren Entfernung beantragen.
                Artikel, die die Schutz- oder
                Urheberrechte verletzen, werden von uns entfernt.
              </p>
            </div>
        ''',
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
