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
