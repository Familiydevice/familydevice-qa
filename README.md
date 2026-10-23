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
