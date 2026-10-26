# familydevice – QA-Builds für den iOS-Simulator

Hier liegt zu jeder Version von familydevice ein Build für den iOS-Simulator.
Er wird von der CI des Haupt-Repos bei jedem Release automatisch neu gebaut
und als [Release](https://github.com/Familiydevice/familydevice-qa/releases/latest)
hier abgelegt. Kein Apple-Developer-Account, kein Signing, kein Xcode-Projekt
nötig.

**Neuester Build:**
[familydevice-simulator.zip](https://github.com/Familiydevice/familydevice-qa/releases/latest/download/familydevice-simulator.zip)
(Version und Build-Nummer stehen im Release-Titel; die Build-Nummer ist
dieselbe wie bei TestFlight.)

## Was ist neu

Neueste Version zuoben. Build-Nummer wie bei TestFlight.

### 0.9.135

- **Einrichtung sagt, warum – und was es kostet.** Jede Frage in der
  Einrichtung (Mitteilungen, Standort, Bewegung, Netzwerkfilter), der Schritt
  „Bildschirmzeit-Zugriff erlauben“ und die Kopplungsseiten („Lokales
  Netzwerk“) zeigen jetzt eine grüne Plus- und eine orange Minus-Zeile.
  Prüfen: Einrichtung auf Kinder- und Eltern-iPhone durchgehen; die Zeilen
  stehen unter jeder Frage, nichts wird mit „…“ abgeschnitten.
- **Aufenthaltsort startet nach Hin und Zurück neu.** War das Kind seit
  Donnerstag zu Hause, ist am Sonntag kurz weg und wieder da, stand trotzdem
  „zu Hause seit Donnerstag“. Jetzt zählt die Zeit ab der Rückkehr.
  Prüfen: mit Ortsverlauf kurz das Zuhause verlassen und zurückkommen; auf
  der Kinderseite steht „seit“ mit der Uhrzeit der Rückkehr.

### 0.9.134

- **Soziale Netzwerke: nur freigegebene Profile.** Neue Zeile „Soziale
  Netzwerke“ beim Kind, gleich unter „Sicherheit“: ein Schalter je Netzwerk
  (Instagram, TikTok, YouTube, X, Threads, Facebook, Snapchat, Reddit, Twitch,
  Pinterest) und darunter die freigeschalteten Profile (per @name oder Link
  hinzufügen, wegwischen zum Entfernen). Ist ein Netzwerk an, verschwindet
  seine App vom Kinder-iPhone; in Safari öffnen sich nur freigeschaltete
  Profile. Alles andere – fremde Profile, Reels und Videos, Feed, Suche,
  Chats – zeigt Safaris Sperrseite mit „Profil freischalten lassen“. Der Knopf
  öffnet familydevice direkt auf dem iPhone (keine Website dazwischen), die
  App findet bei einem Reel oder Video heraus, wem es gehört, und schickt die
  Anfrage. Bei den Eltern: „Leo möchte Instagram @name sehen“ – „Ansehen“
  öffnet das Profil, Erlauben (Wischen oder im Blatt) schaltet es dauerhaft frei.
  Prüfen (nur auf echten iPhones, der Filter läuft nicht im Simulator):
  Instagram einschalten, auf dem Kinder-iPhone in Safari
  instagram.com/reel/DeNiNA7tSxM/ öffnen – Sperrseite; „Profil freischalten
  lassen“ tippen – familydevice öffnet sich mit „Instagram @joridemilens“;
  senden, auf dem Eltern-iPhone erlauben, Link erneut öffnen – lädt. Ein
  anderes Profil und instagram.com/explore bleiben gesperrt; die Instagram-App
  ist vom Home-Bildschirm verschwunden. Im Simulator nur die Zeile „Soziale
  Netzwerke“ und das Hinzufügen/Entfernen von Profilen ansehen.

### 0.9.133

- **Tor auch über Brücken gesperrt.** Mit „VPN, Proxy & Tor blockieren“
  verschwinden auf dem Kinder-iPhone 48 Tor-, VPN- und Proxy-Apps vom
  Home-Bildschirm (Onion Browser, Orbot, OrNET, NordVPN, Proton VPN, Psiphon,
  WireGuard, Shadowrocket, Opera, Aloha …), und ihre Verbindungen werden
  abgebrochen – auch die getarnten Tor-Brücken (obfs4, Snowflake).
  Prüfen: App Store kurz freigeben, Onion Browser oder Orbot installieren,
  Schalter an – die App verschwindet vom Home-Bildschirm; Schalter aus – sie
  ist wieder da. Mit Schalter an und schon laufendem Orbot-VPN: kein Internet
  über Orbot.

### 0.9.132

- **Neue Sperrliste: VPN, Proxy & Tor.** Fünfter Schalter neben den anderen
  Sperrlisten (Kind → „Erweiterte Limits“ → „Sicherheit“, Netzwerk →
  „Regeln“, Eltern-iPhone → „VPN & Filter“). Er sperrt VPN-Dienste,
  Web-Proxys, verschlüsseltes DNS, iCloud Privat-Relay und torproject.org;
  auf dem Kinder-iPhone zusätzlich alle Verbindungen ins Tor-Netzwerk. Ein neu
  angelegtes Kind hat ihn an.
  Prüfen: einschalten, nordvpn.com oder torproject.org aufrufen – lädt nicht.
  Mit installiertem Onion Browser (App Store kurz freigeben) auf dem
  Kinder-iPhone: Tor verbindet sich nicht. Ist iCloud Privat-Relay an, meldet
  Safari, dass es nicht verfügbar ist – das ist gewollt.
- **Pornografie-Liste sperrt auch Suchmaschinen ohne sichere Suche.**

### 0.9.131

- **Werbefilter fängt auch Pop-ups.** „Werbung & Tracker blockieren“ sperrt
  jetzt zusätzlich Pop-up- und Weiterleitungswerbung (rund 48.000 Domains
  mehr). Prüfen: mit eingeschaltetem Werbefilter auf Seiten surfen, die sonst
  Fenster oder Weiterleitungen öffnen.
- **Vierte Sperrliste: Raubkopien & illegales Streaming.** Neuer Schalter
  neben Pornografie, Pillen & Drogen und Glücksspiel & Poker, an denselben
  drei Stellen (Kind → „Erweiterte Limits“ → „Sicherheit“, Netzwerk →
  „Regeln“, Eltern-iPhone → „VPN & Filter“). Ein neu angelegtes Kind hat ihn
  an. Prüfen: einschalten, eine bekannte illegale Streamingseite aufrufen –
  sie lädt nicht.

### 0.9.130

- **Neue Sperrlisten: Pornografie, Pillen & Drogen, Glücksspiel & Poker.**
  Neben „Werbung & Tracker“ und „Schadsoftware & Phishing“ gibt es drei neue
  Schalter. Sie sperren solche Seiten in jeder App, nicht nur in Safari.
  Wo: Kind → „Erweiterte Limits“ → „Sicherheit“ (unter „Werbung & Tracker
  blockieren“), auf der
  Netzwerk-Seite des Kindes unter „Regeln“, und auf dem Eltern-iPhone unter
  Profil → „VPN & Filter“ (nur mit eingeschaltetem VPN). Ein neu angelegtes
  Kind hat alle drei an, bestehende Kinder nicht.
  Prüfen: einen Schalter einschalten und eine bekannte Seite der Kategorie
  aufrufen – sie lädt nicht; Schalter aus – sie lädt wieder. Eine Domain unter
  „Immer erlauben“ geht trotz Liste durch.

### 0.9.129

- **Anfragen mit Wischen beantworten.** Offene Anfragen auf der Familienseite
  und der Kinderseite: nach rechts wischen erlaubt für die angefragte Dauer,
  nach links lehnt ab. Antippen öffnet weiter das Blatt (kürzere Dauer,
  Notiz). Die Überschriften „Offene Anfragen“/„Anfragen“ sind weg.
  Prüfen: vom Kinder-iPhone eine Anfrage schicken, auf dem Eltern-iPhone
  wischen; das Kind bekommt die Antwort.

### 0.9.128 (Build 231)

- **VPN auf dem Eltern-iPhone erst nach Einschalten.** Das Eltern-iPhone
  startet die Netzwerk-Messung (VPN) nicht mehr von selbst, und die Frage
  „Werbung & Tracker blockieren?“ beim ersten Start ist weg. Eingeschaltet
  wird unter Profil → „VPN & Filter“ oder auf der Netzwerk-Seite; wer es
  schon an hatte, behält es.
  Prüfen: App frisch installieren – kein VPN-Hinweis von iOS; Schalter an –
  iOS fragt nach dem VPN.

### 0.9.127 (Build 229)

- **Nutzungs-Zeitleiste an Tagen mit Zeitumstellung.** Am Tag der Umstellung
  auf Sommer- oder Winterzeit (zuletzt heute, 25. Oktober) zeigte die
  Zeitleiste der Nutzung alles eine Stunde verschoben: eine Viertelstunde um
  16:30 stand bei 15:30, die Nachtruhe „bis 07:00“ endete um 06:00. Jetzt
  steht alles bei seiner Uhrzeit. Die Sperren selbst waren nicht betroffen.
  Prüfen: die Nutzungs-Zeitleiste eines Kindes für heute ansehen; die
  Nachtruhe beginnt und endet bei den eingestellten Uhrzeiten.

### 0.9.126 (Build 225)

- **„Zeit anfragen“ auf der Safari-Sperrseite geht über die Website.** Ist
  das ganze Internet gesperrt und das Kind öffnet in Safari eine Seite,
  führt der Knopf auf der iOS-Sperrseite jetzt zu familydevice.com/anfrage
  (in der Sprache des iPhones). Diese Seite öffnet sofort familydevice mit
  der Anfrage fürs Internet und hat einen großen Knopf dafür, falls iOS erst
  nachfragt. familydevice.com ist von der Internetsperre immer ausgenommen,
  wie Apples Domains. Prüfen auf einem echten Kinder-iPhone: Internetsperre
  aktiv, in Safari eine beliebige Seite öffnen → Sperrseite → „Zeit
  anfragen“ → familydevice öffnet die Anfrage „Internet“.
- Die Übersetzungen der neuen Texte (Limits, Zeit anfragen, Ausgeblendet
  bis, Mehr Zeit anfragen, die Seite /anfrage) laufen; bis sie da sind, sind
  diese Texte in allen Sprachen deutsch.

### 0.9.125 (Build 224)

- **Nachgezogen nach einer Durchsicht von 0.9.123/0.9.124.** Eine Freigabe
  fürs Internet öffnet nur die Internetsperre – Apps und Websites einer
  gesperrten Gruppe (Nachtruhe, Tageslimit) bleiben zu. Hat eine Website ein
  eigenes Zeitfenster (etwa YouTube 20–07 Uhr), gilt das auch, wenn das
  Internet gerade freigegeben ist.
- Erlauben die Eltern vor Beginn der Internetsperre etwas, das sie aufhebt
  („Alles frei“, Bildschirmzeit genehmigt), weiß der Filter das auch, wenn
  das Zeitfenster dann beginnt – vorher konnte Safari in dem Fall die
  Sperrseite zeigen, obwohl nichts gesperrt war.
- Genehmigte Bildschirmzeit gibt auch Apps frei, die in keiner Gruppe sind.
- Solange alles frei ist, steht überall „Alles frei bis …“ – vorher blieb
  oben „Fokus bis …“ oder „Ausgeblendet bis …“ stehen, während alle Zeilen
  grün waren.
- Der Anfrage-Knopf bei ausgeblendeten Apps und beim Internet fehlt, wenn
  er nichts bringen kann: iPhone bei iCloud abgemeldet oder
  Bildschirmzeit-Zugriff weg.

### 0.9.124 (Build 223)

- **Harmlose Apps kommen durch die Internetsperre.** Apps, die ihr auf ihrer
  Seite als harmlos markiert habt („Immer erlaubt“), behalten ihre
  Verbindung, auch wenn „Ganzes Internet sperren“ gerade gilt – so wie sie
  schon durch jede andere Sperre gehen. Prüfen: eine App als harmlos
  markieren, Internetsperre setzen, die App lädt weiter, andere nicht.
- Im Editor der Internetsperre („Internet“-Kachel antippen) steht das jetzt
  unten: harmlose Apps, iCloud, Push und familydevice bleiben erreichbar, eine
  erlaubte Anfrage lässt das Internet so lange durch.

### 0.9.123 (Build 222)

- **Mehr Zeit heißt das ganze iPhone.** Wird die Bildschirmzeit genehmigt
  („Mehr Zeit anfragen“ → „Erlauben“) oder von den Eltern verlängert, sind für
  diese Zeit alle Apps frei – auch die, die ein Zeitplan wie die Nachtruhe
  gerade sperrt oder ausblendet, und auch die mit eigenem aufgebrauchtem
  Tageslimit. Bisher fiel nur die Sperre über alles, die anderen Sperren
  blieben. Prüfen: Nachtruhe mit „Ausblenden“ aktiv, Bildschirmzeit
  aufgebraucht, Anfrage erlauben → die Apps sind wieder auf dem
  Home-Bildschirm, nach Ablauf wieder weg.
- **Zeitpläne in der Limitübersicht.** Unter „Erweiterte Einstellungen“ heißt
  die Kachel-Übersicht jetzt „Limits“; neben Bildschirmzeit, App-Limits und
  Internet steht jeder Zeitplan als Kachel – „Nachtruhe“ mit Mond, rot mit
  „bis 07:00“, solange er gilt, sonst die Uhrzeiten, grau „Aus“, wenn er
  abgeschaltet ist. Antippen öffnet den Zeitplan. Die Zeile „Zeitpläne“ unter
  „Erweiterte Limits“ gibt es weiterhin.
- **Ausgeblendete Apps anfragen.** Ausgeblendete Apps haben keinen
  Sperrbildschirm – deshalb steht auf der Kinder-Startseite in familydevice bei
  einer ausgeblendeten Gruppe „Ausgeblendet bis … · Nachtruhe“ und ein Knopf
  „Mehr Zeit anfragen“ bzw. „Freigabe anfragen“.
- **Internet anfragen.** Ist das ganze Internet zu bestimmten Zeiten gesperrt,
  steht es auf der Kinder-Startseite als Zeile „Internet“ mit „Zeit anfragen“.
  In Safari zeigt die Sperrseite von iOS einen Knopf „Zeit anfragen“, der
  familydevice mit dieser Anfrage öffnet – bitte auf einem echten Kinder-iPhone
  testen, der Knopf öffnet einen familydevice://-Link. Erlauben die Eltern,
  geht das Internet bis zum Ablauf durch (ebenso bei „Alles frei“ oder
  genehmigter Bildschirmzeit); die Eltern sehen auf der Kachel „Internet“ dann
  „frei bis …“. Andere Apps als Safari bekommen keine Seite, sie laufen nach
  der Freigabe einfach wieder.

### 0.9.122 (Build 221)

- **Ein totes Eltern-iPhone loswerden.** Auf dem Kinder-iPhone unter
  Eltern-Code → „Gerät“ → „Eltern-iPhones“ steht zu jedem gekoppelten
  Eltern-iPhone, wann zuletzt etwas von ihm kam („Zuletzt gemeldet: …“ oder
  „Noch nichts empfangen“). So fällt ein Eltern-iPhone auf, das es nicht mehr
  gibt (App gelöscht, Handy weg).
- **Einzeln entfernen:** Einen Eintrag nach links wischen → „Entfernen“, dann
  bestätigen. Ist es nicht das letzte Eltern-iPhone, bleiben alle Regeln und
  die anderen Eltern-iPhones bestehen. Ist es das letzte, gilt wie bisher:
  Das Kinder-iPhone wird komplett entkoppelt und alle Sperren fallen.
- **Eltern-iPhone neu installiert:** Wer die App auf dem Eltern-iPhone löscht
  und neu einrichtet, startet jetzt wirklich frisch – die alten Kopplungen
  aus dem Schlüsselbund werden bei der Rollenwahl verworfen. Danach wie bei
  einem weiteren Elternteil: auf dem Kinder-iPhone „Weiteres Eltern-iPhone
  koppeln“, dann den alten Eintrag dort wegwischen.

### 0.9.121 (Build 220)

- **Alle Limits an einem Ort.** Auf der Kinderseite ganz unten steht jetzt die
  Zeile „Erweiterte Einstellungen“ (mit dem Status als Wert, orange wenn dort
  etwas ansteht) – das Zahnrad in der Navigationsleiste ist weg.
- **Tageslimits:** Die Sperre fürs ganze Internet zu bestimmten Zeiten (bisher
  versteckt unter Netzwerk → „Ganzes Internet sperren …“) ist eine Kachel
  „Internet“ neben den App-Limits – rot, solange sie gerade gilt, darunter das
  Zeitfenster. Antippen ändert die Zeiten.
- **„+ Limit“ ist die eine Stelle, an der jedes Limit beginnt:** Bildschirmzeit,
  Apps, eine Gruppe, „Internet zu bestimmten Zeiten …“ und unter „Erweiterte
  Limits“ ein Zeitplan, eine Freizeit oder eine Wenn-Dann-Regel.
- Die Zeilen unter den Kacheln heißen „Erweiterte Limits“ (Zeitpläne,
  Freizeiten, Wenn-Dann, Immer erlaubt); Orte, Apps und Sicherheit stehen
  getrennt darunter.
- 41 Texte, die bisher nie in den Übersetzungskatalog kamen (etwa in den
  Apps-Listen und beim Anpingen), sind jetzt drin; die Übersetzungen folgen mit
  dem nächsten Build. Bis dahin sind diese Texte auf Englisch noch deutsch.

### 0.9.120 (Build 219)

- **Eltern und Kinder strikt getrennt.** Alles zum eigenen Eltern-iPhone steckt
  im Profil-Symbol oben rechts: „Meine Nutzung“ und neu „VPN & Filter“. Das
  Zahnrad auf der Kinderseite führt nur noch zu den Einstellungen des Kindes,
  die Familienliste hat kein Zahnrad.
- **„VPN & Filter“:** eine Seite mit dem VPN-Schalter und darunter
  „Werbefilter“ und „Phishing-Seiten blockieren“. Ist das VPN aus, stehen beide
  Filter ausgegraut auf aus; beim Wiedereinschalten kommen sie zurück. Der Text
  darunter erklärt, was das VPN ist, dass nichts das iPhone verlässt und dass
  familydevice es wieder einschaltet, wenn iOS es abschaltet.
- Die Nachfrage „Werbung & Tracker blockieren?“ beim ersten Start verweist auf
  diese Seite. (Im Simulator gibt es kein VPN, die Seite fehlt dort.)

### 0.9.119 (Build 218)

- Erster Stand von VPN, Werbefilter und Phishing-Schutz als ein Abschnitt mit
  gekoppelten Schaltern – noch hinter dem Zahnrad, in 0.9.120 ins Profil-Menü
  verschoben. Der Schalter auf der Netzwerk-Seite heißt „VPN“ statt
  „DNS-Messung“, die Regeln-Seite der Eltern zeigt denselben Abschnitt.

### 0.9.118 (Build 217)

- In den Apps-Listen („Jetzt“ und „Heute“) ist der Filter ein Symbol, das
  standardmäßig an ist: Es blendet Apples Apps, Erweiterungen anderer Apps und
  als harmlos markierte Apps aus. Ein Tipp zeigt alle.

### 0.9.117 (Build 216)

- Als harmlos markierte Apps bleiben auch aus Apples Listen draußen, „Jetzt“
  und „Heute“ verbergen dieselben Apps. Das „i“ im Apps-Kopf erklärt: „Jetzt“ =
  die letzten 15 Minuten, „Heute“ = der ganze Tag aus Apples Bildschirmzeit.

### 0.9.116 (Build 215)

- **Tageslimits pro Wochentag:** Im Limit-Editor wählt „Woche“ zwischen jeden
  Tag gleich, Wochenende getrennt oder jeder Tag einzeln (0 = ganztägig
  gesperrt). Der Tagesverlauf verlinkt dorthin und zeigt das heutige Limit.
- Wo das Kind ist, prüft die neueste Position gegen die Ortsereignisse; ältere
  Aufenthalte tragen ihren Wochentag.
- „Aktivität“ (Bildschirmzeit und Apps) ist standardmäßig aufgeklappt, darunter
  „Bewegung & Orte“. Das Zahnrad sitzt in der Navigationsleiste.

### 0.9.115 (Build 214)

- **Zwei-Tipp-Regel:** Alltägliches liegt auf der Kinderseite, der Rest unter
  „Erweiterte Einstellungen“ (Zahnrad). Mit einem Kind ist dessen Seite die
  Startseite, die Familienliste gibt es ab zwei Kindern.
- Die Bildschirmzeit-Karte und die Familienzeile sagen, wo das Kind ist
  („Schule seit 08:12“). Das Profil-Menü enthält den Simulations-Schalter und
  „Alle Sperren aufheben“ direkt.

### 0.9.114 (Build 213)

- Der Tagesverlauf zeigt den Tag des Kindes aus Apples Bildschirmzeit:
  stündliche Balken der fünf meistgenutzten Apps, jede App mit Minuten,
  Aktivierungen. Darunter, als solche gekennzeichnet, die Schätzung des
  Netzwerkfilters.
- „Bewegung & Orte“ ist eine Seite auf dem Eltern-iPhone. Eine App-Seite
  beginnt mit drei Buttons: Freigeben, Sperren, Ausblenden.

## Voraussetzungen

- Mac mit Xcode 26 oder neuer (empfohlen: Xcode 27) und einer installierten
  iOS-Simulator-Runtime (iOS 17 oder neuer). Apple Silicon und Intel.
- Für das Skript: die Xcode Command Line Tools (`xcode-select --install`).

## Installation

### Weg A – Skript (lädt den neuesten Build selbst)

```bash
git clone https://github.com/Familiydevice/familydevice-qa.git
cd familydevice-qa
./install.sh                          # "iPhone 17": booten, installieren, starten
./install.sh "iPhone 18 Pro"          # anderes Gerät (Name wie in `xcrun simctl list devices`)
./install.sh "iPhone 17" -FDSimulation # direkt in die eingebaute Simulation starten
VERSION=0.9.105 ./install.sh          # eine bestimmte Version
```

Beim nächsten Aufruf nimmt das Skript die bereits entpackte `familydevice.app`;
für einen neuen Build den Ordner löschen (`rm -rf familydevice.app`) oder
`git pull && rm -rf familydevice.app && ./install.sh`.

### Weg B – von Hand

1. Zip aus dem [neuesten Release](https://github.com/Familiydevice/familydevice-qa/releases/latest)
   laden und entpacken.
2. Simulator öffnen: Xcode → *Xcode* → *Open Developer Tool* → *Simulator*
   (Xcode 27: *Device Hub*), dort ein iPhone starten.
3. `familydevice.app` aus dem Finder auf das Simulator-Fenster ziehen. Oder:
   ```bash
   xcrun simctl install booted familydevice.app
   xcrun simctl launch booted com.familydevice.app
   ```

Der erste Start braucht im Simulator bis zu 20 Sekunden (weißer Screen).
Beim ersten Start fragt iOS nach der Erlaubnis für Mitteilungen – bitte
**Erlauben** antippen, sonst bleiben Dialoge hängen.

## Was im Simulator geht – und was nicht

Der Simulator hat keine Bildschirmzeit (Family Controls), keinen
Netzwerkfilter und kein iCloud/Family Sharing. Deshalb **funktionieren im
Simulator nicht**:

- der echte Einrichtungsablauf als Kind-iPhone (die Bildschirmzeit-Freigabe
  schlägt fehl),
- echte Sperren von Apps, der Netzwerkfilter, Datenmengen pro App,
- das Koppeln von zwei Geräten über iCloud.

Dafür gibt es die **eingebaute Simulation** (Familie „Mama“ und Kind „Leo“,
Eltern-PIN `123456`): in der App unter *Einstellungen* → *Simulation* →
*Simulation ausprobieren*, oder direkt per Startparameter `-FDSimulation`
(siehe oben). Darin lassen sich alle Eltern-Ansichten, Regeln, Anfragen,
Limits, der Tagesverlauf und die Kind-Ansichten durchspielen.

Weitere Startparameter für einzelne Screens: `-FDParentSetup` (Eltern-
Freigaben), `-FDKidPermissions` (Kind-Einrichtung, Schritt „Freigaben“),
`-FDScreen <name>` (einzelne Seiten, z. B. `kid-day` für den Tagesverlauf).

## Fehler melden

Bitte mit Version und Build-Nummer (Release-Titel oder *Einstellungen* →
*Über*), Gerät/Simulator, Schritten und Screenshot – an das Team oder als
Issue im Haupt-Repo.
