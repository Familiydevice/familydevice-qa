# familydevice – QA-Builds für den iOS-Simulator

Hier liegen die veröffentlichten Builds von familydevice für den iOS-Simulator.
Die CI baut sie automatisch und legt die fertigen Pakete als
[Release](https://github.com/Familiydevice/familydevice-qa/releases/latest)
hier ab. Kein Apple-Developer-Account, kein Signing, kein Xcode-Projekt nötig.

**Neuester Build:**
[familydevice-simulator.zip](https://github.com/Familiydevice/familydevice-qa/releases/latest/download/familydevice-simulator.zip)
(Version und Build-Nummer stehen im Release-Titel; die Build-Nummer ist
dieselbe wie bei TestFlight.)

## Was ist neu

Die Historie enthält die iOS-Versionen seit dem ersten QA-Release
0.9.105, neueste Version oben. Die Einträge beschreiben den damaligen Stand;
spätere Änderungen stehen weiter oben.

Bei veröffentlichten Simulator-Builds entspricht die Build-Nummer dem
jeweiligen CI-Build. Einige Versionen haben keinen eigenen QA-Download;
bei ihnen ist stattdessen der zugehörige CI-Lauf genannt. Der verlinkte
nächste verfügbare Download enthält diese Änderungen ebenfalls.
Für 0.9.127 wurde der QA-Download von Build 229 auf Build 230 aktualisiert.
Die Versions- und Build-Anzeige des verwendeten Downloads ist für einen
Fehlerbericht maßgeblich.

### 0.9.157 (Build 267)

_Der Release-Tag ist [ios-v0.9.157](https://github.com/Familiydevice/familydevice/tree/ios-v0.9.157). Der Build wird im [CI-Lauf 267](https://github.com/Familiydevice/familydevice/actions/runs/40978596016) erstellt. Der [Simulator-Download v0.9.157](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.157) erscheint nach erfolgreicher Veröffentlichung. Unter „Einstellungen → Über“ muss Version 0.9.157 mit Build 267 stehen._

- **Laufende Freigaben sind unter „Limits“ sichtbar.** Eine erteilte
  Freigabe erscheint als grüne Kachel mit offenem Schloss. Dort stehen
  die betroffene App oder Gruppe, ihr Umfang, die Endzeit und die laufende
  Restzeit. „Gesamtes Gerät“, „Ganze Gruppe“ und „Nur diese App“ sind klar
  getrennt. Eine Gesamtfreigabe erscheint einmal, statt für jede dadurch
  mitfreigegebene Gruppe einen eigenen Eintrag zu erzeugen.
  Prüfen: Auf der Elternseite beim Kind eine Gesamtfreigabe starten, eine
  Gruppe freigeben und eine Einzel-App-Anfrage genehmigen. In „Limits“
  müssen die passenden Einträge erscheinen. Nach Ablauf verschwinden sie.
  Eine ältere Freigabe, die durch eine neue Sofortsperre unwirksam geworden
  ist, darf nicht weiterhin als wirksame Freigabe erscheinen.
- **„Priorität“ nennt die Freigabe, die eine Sperre überstimmt.** Eine
  grüne Kachel öffnet die Übersicht. Unter „Laufende Freigaben“ stehen
  derselbe Umfang, Endzeit und Countdown sowie die Quelle, zum Beispiel
  „Von Mama freigegeben“ oder „Von Mama genehmigt“. Auch laufende Freizeit-,
  Workflow-, Internet- und App-Store-Freigaben werden berücksichtigt.
  Diese Einträge erklären die Freigaben über den Sperrregeln; sie verändern
  deren gespeicherte Reihenfolge nicht.
- **Die Kacheln stehen bündig.** Temporäre Sperren, Tageslimits,
  Nachtruhe, Freigaben und die Plus-Kachel richten Symbole und Titel oben
  aus, auch wenn Beschriftungen unterschiedlich viele Zeilen benötigen.
  Die Fortschrittsrahmen bleiben innerhalb derselben Außenkanten wie
  die gefüllten Symbole. Prüfen: eine Sofortsperre mit Prioritätszeile neben
  Bildschirmzeit und Nachtruhe vergleichen, auch mit längerem Namen.
  `-FDScreen active-grants` zeigt dafür das echte Limits-Grid mit drei
  synthetischen Freigaben und verschieden hohen Kacheln;
  `-FDScreen active-grant-priorities` zeigt ihre Detailübersicht.
  Die Simulation bestätigt die Anzeige, nicht die tatsächlichen
  iOS-Sperren oder eine Zustellung zwischen physischen iPhones.

### 0.9.156 (Build 266)

_Der Release-Tag ist [ios-v0.9.156](https://github.com/Familiydevice/familydevice/tree/ios-v0.9.156). Der Build wird im [CI-Lauf 266](https://github.com/Familiydevice/familydevice/actions/runs/40976693564) erstellt. Der [Simulator-Download v0.9.156](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.156) erscheint nach erfolgreicher Veröffentlichung. Unter „Einstellungen → Über“ muss Version 0.9.156 mit Build 266 stehen._

- **Nur das geöffnete Spiel anfragen, auch bei einer Kategorie-Sperre.**
  Öffnet das Kind beispielsweise Minecraft und tippt auf „Nur diese App
  anfragen“, soll bei den Eltern Minecraft mit dem Hinweis „Nur diese App“
  ankommen. Das gilt auch dann, wenn die Sperre für die Kategorie „Spiele“
  oder für die gesamte Bildschirmzeit gesetzt wurde. Der andere Button
  „Mehr Bildschirmzeit anfragen“ bleibt eine getrennte Anfrage für das Gerät.
  **Echtes Gerät erforderlich:** Eltern- und Kinder-App aktualisieren, zwei
  Spiele derselben gesperrten Gruppe verwenden und eine neue Minecraft-
  Einzelanfrage erlauben. Minecraft muss funktionieren, das zweite Spiel
  (zum Beispiel Roblox) muss einschließlich seiner Internetverbindungen
  gesperrt bleiben. Nach Ablauf muss Minecraft wieder gesperrt sein.
  Bereits genehmigte Gruppenfreigaben früherer Versionen bleiben bis zu
  ihrem Ablauf gültig; sie werden nicht rückwirkend in Einzelanfragen
  umgewandelt. Für diese Prüfung eine frische Anfrage nach deren Ablauf nutzen.
- **Eine Mitteilung behält den Bezug zum einzelnen Spiel.** Beim Tippen
  auf die lokale Mitteilung zur Spiel-Anfrage darf kein Gruppenformular
  erscheinen, auch wenn die Anfrage im Hintergrund schon gesendet wurde.
  Das Formular und die Navigation lassen sich im Simulator mit
  `-FDScreen category-app-request` prüfen. Die Simulation bestätigt keine
  echte iOS-Kategorie-Sperre und keine Zustellung zwischen zwei iPhones.
- **Nachtruhe um Mitternacht verständlich anzeigen.** Unter „Limits →
  Priorität“ steht bei einer laufenden Nachtregel jetzt „Durch Freigabe
  aufgehoben“, wenn eine Gesamt- oder Gruppenfreigabe ihre Sperre gerade
  überstimmt. Oben erscheint „Freigabe hat Vorrang“, darunter das reguläre
  Regelende. Das wird nicht mehr pauschal „Inaktiv“ genannt. Nach Ablauf
  der Freigabe aktualisiert sich die Ansicht automatisch und die Nachtregel
  bestimmt die Sperre wieder. Eine Einzel-Spiel-Freigabe lässt die Nachtruhe
  für die übrigen Spiele aktiv.
  Prüfen: um 00:54 Nachtruhe 21:00–07:00 und eine Gesamtfreigabe bis 01:09
  vergleichen; danach den Ablauf sowie eine reine Einzel-Spiel-Freigabe
  prüfen. Der Simulator zeigt den ersten Fall mit
  `-FDScreen freed-rule-priorities`. Die tatsächlichen Geräteeinstellungen
  und Sperren müssen am vorgesehenen Kinder-Test-iPhone geprüft werden.

### 0.9.155 (Build 265)

_Der Release-Tag ist [ios-v0.9.155](https://github.com/Familiydevice/familydevice/tree/ios-v0.9.155). Der Build wird im [CI-Lauf 265](https://github.com/Familiydevice/familydevice/actions/runs/40970142006) erstellt. Der [Simulator-Download v0.9.155](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.155) erscheint nach erfolgreicher Veröffentlichung. Unter „Einstellungen → Über“ muss Version 0.9.155 mit Build 265 stehen._

- **Eine einzelne App freigeben, ohne die ganze Gruppe zu öffnen.**
  „Nur diese App anfragen“ auf dem Sperrbildschirm bleibt eine Anfrage
  für genau die geöffnete App, auch wenn deren Name gerade nicht verfügbar
  ist. Eine solche Anfrage darf keine Gruppenfreigabe auslösen.
  **Echtes Gerät erforderlich:** Eltern- und Kinder-App aktualisieren,
  zwei Apps derselben gesperrten Gruppe bereithalten, eine davon öffnen
  und nur diese App anfragen. Auf dem Eltern-iPhone die Anfrage erlauben:
  Die angefragte App muss sich öffnen lassen, die zweite bleibt gesperrt.
  Nach Ablauf der genehmigten Zeit muss auch die erste wieder gesperrt sein.
- **Push-Mitteilungen werden nach einem Fehler erneut versucht.**
  Schlägt das Senden einer sichtbaren Mitteilung fehl, bleibt sie für
  den nächsten Abgleich vorgemerkt. Eine fehlgeschlagene Einrichtung der
  Push-Mitteilungen wird ebenfalls erneut versucht, ohne die App neu
  starten zu müssen. Das Aufräumen einer alten Mitteilung darf die nächste
  nicht verhindern.
  **Echtes Gerät erforderlich:** Eine neue App-Anfrage senden und die
  Mitteilung auf dem Eltern-iPhone prüfen, dann die Antwort auf dem
  Kinder-iPhone. Den Push-Test auf der Elternseite beim Kind ausführen.
  Anschließend einen vorübergehenden Verbindungsabbruch und mehrere
  aufeinanderfolgende Anfragen prüfen. Der Simulator bestätigt keine
  echte Push-Zustellung zwischen zwei iPhones.

### 0.9.154 (Build 264)

_Der Release-Tag ist [ios-v0.9.154](https://github.com/Familiydevice/familydevice/tree/ios-v0.9.154). Der Build wird im [CI-Lauf 264](https://github.com/Familiydevice/familydevice/actions/runs/40792353364) erstellt. Der [Simulator-Download v0.9.154](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.154) erscheint nach erfolgreicher Veröffentlichung. Unter „Einstellungen → Über“ muss Version 0.9.154 mit Build 264 stehen._

- **Zwei getrennte Anfragen direkt an der gesperrten App.** Das Kind kann
  „Nur diese App anfragen“ oder „Mehr Bildschirmzeit anfragen“ wählen.
  Die einzelne App wird für 30 Minuten angefragt; Eltern können die Zeit
  kürzen, erlauben oder ablehnen. In der Eltern-Anfrage stehen der App-Name
  und „Nur diese App“. Andere Apps bleiben bei einer einzelnen Freigabe
  gesperrt. Beide Anfragen behalten ihren eigenen Status und überschreiben
  einander nicht. Mehr Bildschirmzeit lässt sich auch anfragen, wenn nur
  eine App-Gruppe gesperrt ist.
  **Echtes Gerät erforderlich:** Eine gesperrte App auf dem Kinder-iPhone
  öffnen, beide Buttons getrennt testen und auf dem Eltern-iPhone
  entscheiden. Bei einer einzelnen Freigabe nur diese App einschließlich
  ihrer Internetverbindung prüfen; eine zweite App muss gesperrt bleiben.
  Danach Ablauf und Ablehnung testen. Das Formular ist im Simulator mit
  `-FDScreen app-request` erreichbar; Apples Sperrbildschirm und die
  tatsächliche Durchsetzung benötigen ein echtes Kinder-Test-iPhone.
- **Internet folgt einer gültigen Freigabe.** Wenn Bildschirmzeit oder
  Internet freigegeben wurden, berücksichtigt die nächste Verbindung diese
  Entscheidung. Nach Ablauf muss die laufende Internetsperre wieder gelten.
  **Echtes Gerät erforderlich:** Während einer Internetsperre Zeit
  genehmigen, im Browser eine Seite öffnen und nach Ablauf erneut prüfen.
  Eine reine Internetfreigabe darf eine getrennte App-Sperre nicht aufheben.
- **Sofortsperren stehen in der Prioritätenliste.** Auf der Elternseite
  beim Kind unter „Limits → Priorität“ erscheinen auch laufende temporäre
  Sperren. Eine neue Sofortsperre steht zuerst und lässt sich umsortieren.
  Prüfen: eine einstündige Sperre starten, gegenüber Nachtruhe verschieben
  und anschließend beenden. Nach ihrem Ende muss die nächste aktive Regel
  übernehmen. Die Anzeige lässt sich im Simulator mit
  `-FDScreen quick-action-limits` prüfen; die echten Sperren am Test-iPhone.

### 0.9.153 (Build 263)

_Dieser zusätzliche Build derselben Version wird im [CI-Lauf 263](https://github.com/Familiydevice/familydevice/actions/runs/40792117135) erstellt. Der [Simulator-Download v0.9.153](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.153) wird nach erfolgreicher Veröffentlichung aktualisiert. Unter „Einstellungen → Über“ muss Build 263 stehen._

- **Eine einzelne App statt des ganzen Geräts anfragen.** Auf dem
  Sperrbildschirm einer App gibt es zwei getrennte Aktionen:
  „Nur diese App anfragen“ und „Mehr Bildschirmzeit anfragen“.
  Die erste fragt 30 Minuten nur für die gerade geöffnete App an;
  die zweite fragt zusätzliche Zeit für das ganze Gerät an.
  Auch wenn nur eine App-Gruppe gesperrt ist, funktioniert die zweite
  Aktion. Offene oder abgelehnte Anfragen werden getrennt angezeigt;
  zwei vorgemerkte Anfragen überschreiben sich nicht.
- **Eltern erkennen den Umfang der Freigabe.** Bei der einzelnen App
  stehen deren Name und „Nur diese App“ in der Anfrage. Eltern können
  erlauben, die Dauer kürzen oder ablehnen. Eine genehmigte App bleibt
  nutzbar, während andere Apps und die gesamte Bildschirmzeit gesperrt
  bleiben. Nach Ablauf greift die Sperre wieder, auch ohne Verbindung.
  **Echtes Gerät erforderlich:** Eltern- und Kinder-App aktualisieren,
  eine gesperrte App öffnen und beide Buttons getrennt testen. Eine
  App-Freigabe erlauben und prüfen, dass nur diese App einschließlich
  ihrer Internetverbindung funktioniert; eine zweite App muss gesperrt
  bleiben. Danach Ablauf und Ablehnung prüfen. Der Simulator kann das
  Anfrageformular mit `-FDScreen app-request` zeigen, aber Apples echten
  Sperrbildschirm und die Durchsetzung nicht bestätigen.

### 0.9.153 (Build 261)

_Der Release-Tag ist [ios-v0.9.153](https://github.com/Familiydevice/familydevice/tree/ios-v0.9.153). Der Build wird im [CI-Lauf 261](https://github.com/Familiydevice/familydevice/actions/runs/40724204383) erstellt. Der [Simulator-Download v0.9.153](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.153) erscheint nach erfolgreicher Veröffentlichung. Unter „Einstellungen → Über“ muss Version 0.9.153 mit Build 261 stehen._

- **Wiederholte Abstürze im Hintergrund korrigiert.** Das Kinder-iPhone
  soll beim automatischen Aktualisieren der Bildschirmzeit-Regeln nicht
  mehr wiederholt eine Absturzmeldung zeigen, obwohl familydevice nicht
  erneut geöffnet wurde. Betroffen waren Meldungen von einem iPhone 12
  mit iOS 18.2.
  **Echtes Gerät erforderlich:** Auf dem dafür vorgesehenen Kinder-
  Test-iPhone Build 261 öffnen, bei aktiven Tageslimits in eine andere App
  wechseln und das Gerät zwischendurch sperren. Währenddessen auf der
  Elternseite ein Limit ändern und eine Freigabe erteilen. Mindestens
  35 Minuten beobachten: keine neue Absturzmeldung; Änderungen und der
  Ablauf einer Freigabe müssen weiterhin die vorgesehenen Sperren setzen.
  Ein erreichtes Tageslimit muss auch nach erneutem Öffnen von familydevice
  erhalten bleiben. Der Simulator kann diese Hintergrund-Abstürze und
  die echten Bildschirmzeit-Sperren nicht bestätigen.

### 0.9.152 (Build 259)

_Der Build wird im [CI-Lauf 259](https://github.com/Familiydevice/familydevice/actions/runs/40611970146) erstellt. Der [Simulator-Download v0.9.152](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.152) erscheint nach erfolgreicher Veröffentlichung. Für den Gerätevergleich Eltern- und Kinder-App auf diese Version aktualisieren._

- **Limits und Zeitpläne in die gewünschte Reihenfolge bringen.** Auf der
  Elternseite beim Kind unter „Limits“ die neue Zeile „Priorität“ öffnen.
  In „Stärkste zuerst“ lassen sich Tageslimits und Zeitpläne an den Griffen
  verschieben. Für eine App bestimmt die oberste aktive Regel, ob sie
  gesperrt oder ausgeblendet wird; inaktive Regeln werden übersprungen.
  Die Reihenfolge bleibt gespeichert und wird an das Kinder-iPhone übertragen.
  Prüfen: eine inaktive Regel über die aktive Nachtruhe ziehen. Nachtruhe
  muss weiter gelten. Danach ein aufgebrauchtes Bildschirmzeit-Limit über
  Nachtruhe setzen und beide Reihenfolgen vergleichen. Auch nach dem
  Schließen und erneuten Öffnen der Liste muss die Reihenfolge stimmen.
- **Die gerade stärkste Regel ist erkennbar.** Über den Limit-Kacheln und
  in der Prioritätenliste stehen „Jetzt stärkste Regel“, die Aktion und
  ihre Endzeit. Die passende Kachel und die bestimmende Listenzeile tragen
  eine „1“-Markierung; andere aktive Regeln bleiben als „Aktiv“ sichtbar.
  Auch die Kinderansicht nennt die stärkste Regel.
  Prüfen: Nachtruhe auf „Ausblenden“ und das aufgebrauchte Bildschirmzeit-
  Limit auf „Sperren“ stellen. Mit Nachtruhe weiter oben muss „Ausblenden
  bis …“ erscheinen, mit Bildschirmzeit weiter oben „Sperren bis …“.
  Die Markierung muss beim Umsortieren sofort mitwechseln. Endet die
  stärkste Regel, muss die nächste noch aktive Regel übernehmen.
- **„Ausblenden“ gilt auch für die gesamte Bildschirmzeit.** Eine
  Nachtruhe, die „Bildschirmzeit“ umfasst, berücksichtigt jetzt auch die
  bekannten und einzeln gewählten Apps anderer Gruppen. Ein höher
  priorisiertes „Sperren“ lässt deren Symbole sichtbar, schützt die Apps
  aber mit dem Sperrbildschirm. „Immer erlaubt“, familydevice selbst und
  gültige Freigaben bleiben ausgenommen.
  **Echtes Gerät erforderlich:** Auf einem dafür vorgesehenen Kinder-
  Test-iPhone die Symbole und das Öffnen der Apps in beiden Reihenfolgen
  prüfen, danach eine Freigabe erteilen und deren Ablauf abwarten. Apps,
  die nur über eine ganze Kategorie erfasst sind und nicht einzeln bekannt
  sind, kann iOS nicht zum Ausblenden auflisten; sie bleiben gesperrt.
  Der Simulator prüft Reihenfolge und Anzeige, nicht das tatsächliche
  Verschwinden der Apps auf dem Home-Bildschirm.

### 0.9.151 (Build 258)

_Der Build wird im [CI-Lauf 258](https://github.com/Familiydevice/familydevice/actions/runs/40591072369) erstellt. Der [Simulator-Download v0.9.151](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.151) erscheint nach erfolgreicher Veröffentlichung. Diese Version bündelt alle aktuellen Korrekturen an Sperren, Anfragen und der Entfernung des Eltern-VPN._

- **Eine neue Sofortsperre gilt auch nach einer Freigabe.** Auf der
  Eltern-Startseite zuerst „15 Minuten alles erlauben“ und danach
  „1 Stunde sperren“ oder „Ausblenden“ ausführen. Die neuere Sperre muss
  sofort gelten, auch wenn die frühere Freigabe noch läuft oder verspätet
  ankommt. Eine bewusst danach erteilte Freigabe bleibt möglich; nach
  deren Ablauf gilt die verbleibende Sperre wieder. Bereits genehmigte
  Anfragen bleiben im Verlauf sichtbar.
  Prüfen: beide Reihenfolgen und die Anzeige auf Eltern- und Kinderseite
  in der Simulation kontrollieren; die tatsächliche App-Sperre und das
  Ausblenden zusätzlich auf zwei dafür vorgesehenen echten Test-iPhones.
- **Erreichte Tageslimits bleiben erhalten.** Gleichzeitige Aktualisierungen
  der Bildschirmzeit und einzelner Apps dürfen einen erreichten Grenzwert
  nicht mehr überschreiben. Auch App und Erweiterungen stimmen das Setzen
  der Sperren miteinander ab.
  Prüfen auf einem echten Kinder-Test-iPhone: ein Tageslimit erreichen,
  mehrere geschützte Apps öffnen und familydevice zwischendurch neu
  öffnen. Die Apps müssen gesperrt bleiben; familydevice muss für
  Freigabeanfragen erreichbar sein. Die Netzsperre getrennt prüfen.
- **„Mehr Zeit anfragen“ reagiert sichtbar.** Auf dem familydevice-
  Sperrbildschirm einer geschützten App öffnet der Button ab iOS 26.5
  familydevice direkt und übergibt die Anfrage. Auf älteren iOS-Versionen
  bestätigt der Sperrbildschirm die vorgemerkte beziehungsweise bereits
  laufende Anfrage oder erklärt die Wartezeit nach einer Ablehnung.
  Wiederholtes Tippen darf keine doppelten Anfragen erzeugen.
  Prüfen: Anfrage senden, auf der Elternseite empfangen und entscheiden;
  danach den Status beim Kind kontrollieren. Auch ohne sichtbaren
  Mitteilungsbanner testen. Der Ablauf innerhalb der App ist im Simulator
  prüfbar; Apples echten Sperrbildschirm auf einem echten Test-iPhone prüfen.
- **Entfernung des Eltern-VPN abgeschlossen.** Die verbliebenen Bestandteile
  der früheren VPN-Messung auf dem Eltern-iPhone sind aus dem App-Build
  entfernt. Netzwerkdetails des Kindergeräts bleiben erreichbar.
  Prüfen: Eltern-App öffnen, „Meine Nutzung“ und die Netzwerkdetails des
  Kindes ansehen; es darf kein Eltern-VPN eingerichtet oder gestartet werden.

### 0.9.150 (Build 255)

_Der Build wird im [CI-Lauf 255](https://github.com/Familiydevice/familydevice/actions/runs/40571835819) erstellt. Der Simulator-Download erscheint nach erfolgreicher Veröffentlichung. Dieser Stand enthält auch die Kopplungskorrekturen aus 0.9.148 und 0.9.149._

- **Limits direkt auf der Startseite.** Auf der Eltern-Startseite beim
  Kind stehen die Tageslimits jetzt neben Anfragen und Aktivität. Ein
  Antippen öffnet die gewohnte Bearbeitung.
  Prüfen: ein Limit ändern, schließen und kontrollieren, dass der neue
  Wert direkt auf der Startseite steht.
- **Anfragen durch Wischen bearbeiten.** Auf dem Eltern-iPhone bietet
  Wischen nach rechts bei offenen Anfragen „Annehmen“, nach links
  „Ablehnen“. Erledigte Einträge lassen sich nach links mit „Löschen“ aus
  dem Verlauf entfernen; der Knopf darunter blendet sie wieder ein.
  Das Löschen gilt nur für den Verlauf auf diesem iPhone und ändert keine
  Entscheidung, laufende Freigabe oder Wartezeit nach einer Ablehnung.
  Prüfen: annehmen, ablehnen, einen erledigten Eintrag löschen, die App
  neu öffnen und wiederherstellen. Auf dem Kinder-iPhone dürfen eigene
  offene Anfragen keine Annehmen- oder Ablehnen-Aktion haben.
- **Limit-Zählung und erneutes Sperren korrigiert.** Die für Anfragen
  weiter erreichbare familydevice-App wird beim Bildschirmzeit-Zähler
  über dieselbe dauerhafte Ausnahme berücksichtigt wie bei der Sperre.
  Auch eine wiederholte, bereits gespeicherte Limitmeldung setzt die
  Sperre erneut. Die gemeldete Nutzung wird nicht künstlich auf das
  Tageslimit gekürzt.
  Prüfen auf einem dafür vorgesehenen echten Kinder-iPhone: ein festes
  Tageslimit ohne Zusatzzeit erreichen und anschließend geschützte Apps
  öffnen. Sie müssen gesperrt sein; familydevice muss für eine Anfrage
  erreichbar bleiben. Nutzung der eigenen App und Änderungen der
  Zählerstände getrennt beobachten.
  **Echtes Gerät erforderlich:** Ein Simulator-Test belegt keine echte
  Screen-Time-Sperre. Die konkrete Ursache des gemeldeten Falls mit
  4 Stunden 15 Minuten bei einem 3-Stunden-Limit ist damit noch nicht
  auf dem betroffenen Gerät nachgewiesen.
- **Apple-Auszeit im Einrichtungsassistenten.** Der Assistent führt nach
  Bildschirmzeit-Code und Kaufanfrage auch durch Apples zusätzliche
  Auszeit. Er ist zusätzlich in den Einstellungen erreichbar und erklärt,
  welche Apple-Einstellungen die Eltern selbst prüfen müssen.
  Prüfen: Die drei Schritte nacheinander bestätigen; erst danach darf
  der Abschlussknopf aktiv sein. Die Häkchen sind Bestätigungen der
  Eltern und ändern keine iOS-Einstellung.

### 0.9.149 (Build 254)

_Der Build wird im [CI-Lauf 254](https://github.com/Familiydevice/familydevice/actions/runs/40566519753) erstellt. Der Simulator-Download erscheint nach erfolgreicher Veröffentlichung. Dieser Stand enthält auch die WLAN-Korrektur aus 0.9.148._

- **WLAN und QR-Code sind zwei gleichzeitige Wege.** Unter „Mit
  Eltern-iPhone verbinden“ erklärt das Kinder-iPhone jetzt, dass es auf
  das suchende Eltern-iPhone wartet. Die WLAN-Bereitschaft steht oberhalb
  von „Alternativ per QR-Code verbinden“. Auf dem Eltern-iPhone erklärt
  „Kinder-iPhone hinzufügen“, wo der QR-Code zu finden ist und dass dafür
  iCloud, aber kein gemeinsames WLAN nötig ist.
  Prüfen: beide Kopplungsseiten öffnen und die Anleitung lesen; auf zwei
  echten Test-iPhones sowohl die Geräteliste als auch den QR-Weg testen.
- **Netzwerkfreigabe wird beim Koppeln geprüft.** Die Seite prüft den
  Zugriff auf „Lokales Netzwerk“. Nach einer früheren Ablehnung gibt es
  „Einstellungen öffnen“; zurück in der App wird erneut geprüft.
  Bei bestätigter Freigabe verschwindet der Freigabehinweis vollständig.
  Prüfen auf echten Test-iPhones: erstmals erlauben, ablehnen und später
  in den Einstellungen einschalten. Danach muss die Kopplung weitergehen.
  Im Simulator steht ausdrücklich, dass dort keine Freigabeanfrage kommt.
  Echtes Gerät erforderlich: die echte iOS-Abfrage und Geräteverbindung
  sind durch die Simulation nicht nachgewiesen.
- **Apple-Einstellungen Schritt für Schritt.** „Schutz prüfen“ führt
  zuerst durch den Bildschirmzeit-Code und danach durch die Kaufanfrage
  auf dem Eltern-iPhone. Beide Schritte haben Apples Anleitung und die
  ausdrückliche Bestätigung „In iOS eingerichtet – von mir bestätigt“.
  Die App erklärt, dass sie diese Apple-Einstellungen nicht selbst öffnen,
  setzen oder auslesen kann. Die automatischen Sperren lassen sich aufklappen.
  Prüfen in der Simulation: erst den Code bestätigen, dann muss der zweite
  Schritt erscheinen. „Weiter zum Verbinden“ bleibt bis zur zweiten
  Bestätigung gesperrt. Die echten Einstellungen gesondert auf dafür
  vorgesehenen Test-iPhones prüfen.

### 0.9.148 (Build 253)

_Der Build wird im [CI-Lauf 253](https://github.com/Familiydevice/familydevice/actions/runs/40564027134) erstellt. Der Simulator-Download erscheint nach erfolgreicher Veröffentlichung._

- **Nach dem Entkoppeln wieder über WLAN koppeln.** Die direkte Kopplung
  konnte bei „Verbinde …“ hängen bleiben. Die Verbindung bleibt jetzt bis
  zum Vergleichscode bestehen; auch das Bestätigen des Codes darf länger
  als 15 Sekunden dauern.
  Prüfen auf zwei echten Test-iPhones: entkoppeln und das Kinder-iPhone
  erneut bis „Mit Eltern-iPhone verbinden“ einrichten. Auf dem Eltern-iPhone
  „Kinder-iPhone hinzufügen“ öffnen und den Namen des Kinder-iPhones in der
  Liste antippen. Beide Geräte müssen denselben sechsstelligen Code zeigen.
  Vor dem Bestätigen mindestens 20 Sekunden warten, dann auf beiden Geräten
  bestätigen und mit „Weiter“ abschließen. Anschließend eine Regel ändern
  und ihre Ankunft beim Kind prüfen. Auch Abbrechen und erneutes Koppeln
  sowie die Kopplung per QR-Code prüfen. Echtes Gerät erforderlich;
  diese Verbindungen sind durch die Simulation nicht nachgewiesen.

### 0.9.147 (Build 251)

_Simulator-Download: [v0.9.147](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.147)._

- **Datenschutztext passt zum Wegfall des Eltern-VPN.** Die
  Datenschutzerklärung beschreibt keine DNS-Messung auf dem Eltern-iPhone
  mehr. Die betreffenden Aussagen zu Filtern und DNS-Anbietern wurden in
  allen 24 Sprachen angepasst; die App enthält dieselben Texte wie die Website.
  Prüfen: Profil-Symbol → „Rechtliches“ → „Datenschutz“ öffnen, auch nach
  einem Sprachwechsel. Der Text muss laden und darf kein noch vorhandenes
  Eltern-VPN versprechen.

### 0.9.146 (CI-Lauf 249; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.147](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.147) (Build 251) enthalten._

- **VPN auf dem Eltern-iPhone entfernt.** Im Profil-Menü gibt es
  „VPN & Filter“ nicht mehr, unter „Meine Nutzung“ entfällt die eigene
  Netzwerk-Zeile. familydevice startet auf dem Eltern-iPhone kein eigenes
  VPN mehr. Der Netzwerkfilter auf dem Kinder-iPhone bleibt Teil des Schutzes.
  Prüfen auf echten Test-iPhones: Eltern-App öffnen und neu starten; kein
  VPN-Einrichtungsdialog, kein „VPN & Filter“-Menü. Auf dem Kinder-iPhone
  anschließend eine freigegebene und eine gesperrte Seite aufrufen und den
  dortigen Filter getrennt prüfen.

### 0.9.145 (Build 248)

_Simulator-Download: [v0.9.145](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145)._

- **Kinder-iPhone vor dem Koppeln fertig einrichten.** Die Freigaben und
  „Schutz prüfen“ mit Bildschirmzeit-Code und Kaufanfrage kommen jetzt vor
  „Mit Eltern-iPhone verbinden“. Auf der Freigaben-Seite hat jede Erlaubnis
  eine kurze Zeile mit eigenem Knopf; die Erklärung klappt auf. Neu sind
  „Lokales Netzwerk“ und „Hintergrundaktualisierung“, auch bei den Eltern
  und im Schutzstatus. „Restliche anfordern“ entfällt.
  Prüfen auf echten Test-iPhones: eine frische Kind-Einrichtung durchgehen,
  jede Freigabe einzeln öffnen und erst danach koppeln. Im Eltern-Leitfaden
  darf der frühere zusätzliche Schritt „Schutz prüfen“ nicht mehr auftauchen.
- **Kopplung wartet auf iCloud-Mitteilungen.** Beim Verbinden werden die
  iCloud-Mitteilungen eingerichtet; „Weiter“ wird erst danach verfügbar.
  Fehler werden angezeigt. Prüfen: nach der Kopplung den Mitteilungsstatus
  auf beiden Geräten ansehen und bei geschlossener Eltern-App eine Anfrage
  senden. Ein Fehler beim Einrichten muss erkennbar sein.

### 0.9.144 (CI-Lauf 247; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.145](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145) (Build 248) enthalten._

- **Mit QR-Code koppeln, auch ohne gemeinsames WLAN.** Auf dem
  Kinder-iPhone zeigt „Mit Eltern-iPhone verbinden“ einen QR-Code.
  Auf dem Eltern-iPhone: „Kinder-iPhone hinzufügen“ → „QR-Code scannen“.
  Auch die normale iPhone-Kamera kann den Link öffnen. Beide Geräte zeigen
  anschließend den sechsstelligen Vergleichscode und verlangen die
  Bestätigung.
  Prüfen auf zwei echten Test-iPhones mit iCloud: Geräte in verschiedene
  Netze bringen, QR-Code scannen, gleiche Zahl auf beiden Geräten prüfen
  und bestätigen. Danach eine Anfrage und eine Regeländerung übertragen.
  Die bisherige Kopplung im lokalen Netzwerk zusätzlich prüfen.

### 0.9.143 (CI-Lauf 246; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.145](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145) (Build 248) enthalten._

- **Sicherheitszähler umfasst auch „QUIC unterbinden“.** Bei Kind →
  „Erweiterte Einstellungen“ → „Sicherheit“ zählt jetzt jeder dortige
  Schalter mit. Sind alle eingeschaltet, steht „10 von 10“.
  Prüfen: alle Schalter einschalten, dann „QUIC unterbinden“ aus- und wieder
  einschalten; der Zähler muss passend mitgehen. Die Anzeige lässt sich
  in der Simulation prüfen, die Netzwerkwirkung nur auf einem echten Gerät.

### 0.9.142 (CI-Lauf 245; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.145](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145) (Build 248) enthalten._

- **Erneutes Koppeln bleibt nicht bei „Verbinde …“ hängen.** Ein schon
  verbundenes Eltern-iPhone in der Nähe konnte die Verbindung zum neuen
  Eltern-iPhone stören.
  Prüfen auf echten Test-iPhones: ein vorhandenes Eltern-iPhone in der Nähe
  lassen und ein weiteres koppeln. Nach dem Vergleichscode müssen beide
  Kopplungsseiten fertig werden; anschließend vom neuen Eltern-iPhone
  eine Regel ändern und deren Ankunft auf dem Kinder-iPhone prüfen.

### 0.9.141 (CI-Lauf 244; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.145](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145) (Build 248) enthalten._

- **Sicherheitszähler mit richtiger Gesamtzahl.** Bei Kind →
  „Erweiterte Einstellungen“ → „Sicherheit“ konnte „9 von 4“ stehen.
  Der Zähler berücksichtigt jetzt die zusätzlichen Sperrlisten und zeigt
  in dieser Version bei allen gezählten Schaltern „9 von 9“.
  Prüfen in der Simulation: die Filter und Sperrlisten nacheinander
  einschalten und den Zähler beobachten. Ab 0.9.143 zählt zusätzlich
  „QUIC unterbinden“ mit; dort lautet die Gesamtzahl 10.

### 0.9.140 (CI-Lauf 243; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.145](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145) (Build 248) enthalten._

- **Nach vollständigem Entkoppeln wieder löschbar.** Nach
  „iPhone entkoppeln“ auf dem Kinder-iPhone beziehungsweise dem Entfernen
  der letzten Eltern-Verbindung wird auch der Bildschirmzeit-Zugriff
  zurückgegeben. Zuvor konnte iOS weiter „Deinstallieren nicht zulässig“
  melden.
  Prüfen nur mit dafür vorgesehenen echten Test-iPhones: die letzte
  Verbindung entfernen, aufgehobene Sperren prüfen und familydevice
  anschließend löschen. Dafür die Testeinrichtung vorher dokumentieren;
  die Simulation kann diese iOS-Berechtigung nicht prüfen.

### 0.9.139 (Build 242)

_Simulator-Download: [v0.9.139](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.139)._

- **Neu installiertes Eltern-iPhone wieder verbinden.** Auf dem
  Kinder-iPhone unter Eltern-PIN → „Gerät“ → „Eltern-iPhones“ gibt es
  neben jedem Eltern-iPhone „Neu koppeln“. Die neue Verbindung ersetzt
  die alte erst, wenn das Koppeln erfolgreich war; die Regeln bleiben.
  Prüfen auf echten Test-iPhones: familydevice auf einem Eltern-iPhone
  löschen und neu einrichten, beim Kind den bisherigen Eintrag mit
  „Neu koppeln“ wählen und den Ablauf abschließen. Es soll ein passender
  Eintrag übrig bleiben, Regeln und Limits bleiben erhalten. Auch einen
  abgebrochenen Kopplungsversuch prüfen: die alte Verbindung bleibt bestehen.

### 0.9.138 (CI-Lauf 241; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.139](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.139) (Build 242) enthalten._

- **Schutz, wenn sich kein Eltern-iPhone mehr meldet.** Zunächst steht
  auf der Kinder-Startseite „Deine Eltern melden sich nicht“. Bleiben alle
  Eltern-Verbindungen über längere Zeit auch auf Nachfragen ohne Antwort,
  werden bis auf „Immer erlaubt“ die Apps ausgeblendet. Die Seite zeigt
  „Keine Eltern mehr verbunden – alle Apps ausgeblendet“ sowie
  „Eltern-iPhone koppeln“ und „Erneut prüfen“. Meldet sich ein Eltern-iPhone
  wieder, gelten sofort wieder die bisherigen Regeln.
  Prüfen als Langzeittest mit echten Test-iPhones: kurzes Offline-Sein und
  eine geschlossene Eltern-App dürfen nicht sofort die Sperre auslösen.
  Bei erreichbarem Kinder-iPhone greift die Erkennung regulär nach
  mindestens 72 Stunden Funkstille und zwei unbeantworteten Nachfragen
  im Tagesabstand; bei älteren Eltern-Builds ohne bisheriges Lebenszeichen
  gilt eine Frist von sieben Tagen. Danach Rückkehr eines Eltern-iPhones
  und Entsperren prüfen. Der Simulator ersetzt diesen Verbindungstest nicht.

### 0.9.137 (CI-Lauf 240; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.139](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.139) (Build 242) enthalten._

- **Vom Sperrbildschirm direkt mehr Zeit anfragen.** „Mehr Zeit anfragen“
  sendet eine Anfrage über 30 Minuten an die Eltern, ohne dass das Kind
  familydevice zuerst selbst öffnen muss. Das Kind bekommt „Anfrage
  gesendet“; bei einer schon offenen oder gerade abgelehnten Anfrage
  erscheint ein passender Hinweis.
  Prüfen auf echten Test-iPhones: eine App sperren, auf ihrem Sperrbildschirm
  mehr Zeit anfragen und die Ankunft bei den Eltern prüfen. familydevice
  danach öffnen: es darf keine zweite identische Anfrage entstehen.
  Außerdem eine Wiederholung nach Ablehnung prüfen.

### 0.9.136 (CI-Lauf 239; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.139](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.139) (Build 242) enthalten._

- **Freigegebene Profile öffnen nicht mehr das ganze soziale Netzwerk.**
  Nach dem Anmelden oder dem Besuch eines erlaubten Instagram-Profils
  müssen fremde Profile, Reels und Videos weiter gesperrt bleiben.
  Prüfen auf einem echten Kinder-iPhone mit „Nur freigegebene Profile“:
  erst ein erlaubtes Profil öffnen, danach in derselben Safari-Sitzung
  ein fremdes Profil und ein fremdes Reel aufrufen. Die Sperrseite muss
  jeweils wieder erscheinen.
- **Aufgebrauchte Bildschirmzeit wird richtig angezeigt.** Auf der
  Kinder-Startseite zeigen die betroffenen Gruppen „Gesperrt durch
  Bildschirmzeit“. Bei „Bildschirmzeit“ gibt es „Mehr Zeit anfragen“;
  der irreführende Hinweis „Noch ohne App: Bildschirmzeit“ entfällt.
  Prüfen: das Tageslimit erreichen, Anzeige ansehen und eine Anfrage senden.
- **Anfrage vom Sperrbildschirm bleibt vorgemerkt.** Wenn der Hinweis von iOS
  etwa durch Fokus oder Bildschirmfreigabe nicht sichtbar ist, öffnet sich
  beim nächsten Start von familydevice die vorgemerkte Anfrage.
  Prüfen auf einem echten Test-iPhone mit Fokus: auf dem Sperrbildschirm
  anfragen und familydevice öffnen. Ab 0.9.137 wird die Anfrage bereits
  ohne diesen zusätzlichen App-Start verschickt.

### 0.9.135 (Build 238)

_Simulator-Download: [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135)._

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

### 0.9.134 (CI-Lauf 237; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) (Build 238) enthalten._

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

### 0.9.133 (CI-Lauf 236; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) (Build 238) enthalten._

- **Tor auch über Brücken gesperrt.** Mit „VPN, Proxy & Tor blockieren“
  verschwinden auf dem Kinder-iPhone 48 Tor-, VPN- und Proxy-Apps vom
  Home-Bildschirm (Onion Browser, Orbot, OrNET, NordVPN, Proton VPN, Psiphon,
  WireGuard, Shadowrocket, Opera, Aloha …), und ihre Verbindungen werden
  abgebrochen – auch die getarnten Tor-Brücken (obfs4, Snowflake).
  Prüfen: App Store kurz freigeben, Onion Browser oder Orbot installieren,
  Schalter an – die App verschwindet vom Home-Bildschirm; Schalter aus – sie
  ist wieder da. Mit Schalter an und schon laufendem Orbot-VPN: kein Internet
  über Orbot.

### 0.9.132 (CI-Lauf 235; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) (Build 238) enthalten._

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

### 0.9.131 (CI-Lauf 234; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) (Build 238) enthalten._

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

### 0.9.130 (CI-Lauf 233; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) (Build 238) enthalten._

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

### 0.9.129 (CI-Lauf 232; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) (Build 238) enthalten._

- **Anfragen mit Wischen beantworten.** Offene Anfragen auf der Familienseite
  und der Kinderseite: nach rechts wischen erlaubt für die angefragte Dauer,
  nach links lehnt ab. Antippen öffnet weiter das Blatt (kürzere Dauer,
  Notiz). Die Überschriften „Offene Anfragen“/„Anfragen“ sind weg.
  Prüfen: vom Kinder-iPhone eine Anfrage schicken, auf dem Eltern-iPhone
  wischen; das Kind bekommt die Antwort.

### 0.9.128 (Build 231)

_Simulator-Download: [v0.9.128](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.128)._

- **VPN auf dem Eltern-iPhone erst nach Einschalten.** Das Eltern-iPhone
  startet die Netzwerk-Messung (VPN) nicht mehr von selbst, und die Frage
  „Werbung & Tracker blockieren?“ beim ersten Start ist weg. Eingeschaltet
  wird unter Profil → „VPN & Filter“ oder auf der Netzwerk-Seite; wer es
  schon an hatte, behält es.
  Prüfen: App frisch installieren – kein VPN-Hinweis von iOS; Schalter an –
  iOS fragt nach dem VPN.

### 0.9.127 (Build 230)

_Simulator-Download: [v0.9.127](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.127)._

_Zuerst als Build 229 erstellt; der veröffentlichte QA-Download wurde auf Build 230 aktualisiert._

- **Nutzungs-Zeitleiste an Tagen mit Zeitumstellung.** Am Tag der Umstellung
  auf Sommer- oder Winterzeit (etwa am 25. Oktober 2026) zeigte die
  Zeitleiste der Nutzung alles eine Stunde verschoben: eine Viertelstunde um
  16:30 stand bei 15:30, die Nachtruhe „bis 07:00“ endete um 06:00. Jetzt
  steht alles bei seiner Uhrzeit. Die Sperren selbst waren nicht betroffen.
  Prüfen: die Nutzungs-Zeitleiste eines Kindes für einen Tag mit
  Zeitumstellung ansehen; die Nachtruhe beginnt und endet bei den
  eingestellten Uhrzeiten.

### 0.9.126 (Build 225)

_Simulator-Download: [v0.9.126](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.126)._

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

_Simulator-Download: [v0.9.125](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.125)._

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

Prüfen auf echten Test-iPhones: Internet während einer aktiven Nachtruhe
freigeben, anschließend die getrennten App- und Website-Sperren sowie die
Statusanzeige kontrollieren.

### 0.9.124 (Build 223)

_Simulator-Download: [v0.9.124](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.124)._

- **Harmlose Apps kommen durch die Internetsperre.** Apps, die ihr auf ihrer
  Seite als harmlos markiert habt („Immer erlaubt“), behalten ihre
  Verbindung, auch wenn „Ganzes Internet sperren“ gerade gilt – so wie sie
  schon durch jede andere Sperre gehen. Prüfen: eine App als harmlos
  markieren, Internetsperre setzen, die App lädt weiter, andere nicht.
- Im Editor der Internetsperre („Internet“-Kachel antippen) steht das jetzt
  unten: harmlose Apps, iCloud, Push und familydevice bleiben erreichbar, eine
  erlaubte Anfrage lässt das Internet so lange durch.

### 0.9.123 (CI-Lauf 222; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.124](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.124) (Build 223) enthalten._

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

_Simulator-Download: [v0.9.122](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.122)._

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

Prüfen auf echten Test-iPhones: eine zusätzliche Eltern-Verbindung entfernen
und danach vom verbleibenden Eltern-iPhone eine Regel ändern. Die letzte
Verbindung nur in einer dafür vorgesehenen Testeinrichtung entfernen.

### 0.9.121 (CI-Lauf 220; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.122](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.122) (Build 221) enthalten._

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

Prüfen in der Simulation: „Erweiterte Einstellungen“ öffnen, alle Limit-
Kacheln und „+ Limit“ durchgehen und einen Zeitplan bearbeiten. Echte Sperren
auf einem Test-iPhone prüfen.

### 0.9.120 (Build 219)

_Simulator-Download: [v0.9.120](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.120)._

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

Prüfen auf einem echten Eltern-iPhone mit dieser Version: Profil-Menü und „VPN
& Filter“ öffnen, VPN aus- und einschalten und die gemeinsam geschalteten
Filter kontrollieren. Die Kinder-Einstellungen müssen weiter zum Kind gehören.

### 0.9.119 (Build 218)

_Simulator-Download: [v0.9.119](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.119)._

- Erster Stand von VPN, Werbefilter und Phishing-Schutz als ein Abschnitt mit
  gekoppelten Schaltern – noch hinter dem Zahnrad, in 0.9.120 ins Profil-Menü
  verschoben. Der Schalter auf der Netzwerk-Seite heißt „VPN“ statt
  „DNS-Messung“, die Regeln-Seite der Eltern zeigt denselben Abschnitt.

Prüfen auf einem echten Eltern-iPhone mit dieser Version: die gekoppelten VPN-
und Filter-Schalter öffnen, ihren Zustand ändern und danach die Netzwerk-Seite
kontrollieren.

### 0.9.118 (Build 217)

_Simulator-Download: [v0.9.118](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.118)._

- In den Apps-Listen („Jetzt“ und „Heute“) ist der Filter ein Symbol, das
  standardmäßig an ist: Es blendet Apples Apps, Erweiterungen anderer Apps und
  als harmlos markierte Apps aus. Ein Tipp zeigt alle.

Prüfen in der Simulation: auf der Kinderseite zwischen „Jetzt“ und „Heute“
wechseln und jeweils den Filter umschalten. Die zusätzlichen Apps sollen
erscheinen und wieder verschwinden.

### 0.9.117 (Build 216)

_Simulator-Download: [v0.9.117](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.117)._

- Als harmlos markierte Apps bleiben auch aus Apples Listen draußen, „Jetzt“
  und „Heute“ verbergen dieselben Apps. Das „i“ im Apps-Kopf erklärt: „Jetzt“ =
  die letzten 15 Minuten, „Heute“ = der ganze Tag aus Apples Bildschirmzeit.

Prüfen auf einem echten Test-iPhone: eine als harmlos markierte App in den
Listen kontrollieren und das „i“ neben der Apps-Überschrift öffnen. Beide
Zeiträume müssen verständlich erklärt sein.

### 0.9.116 (Build 215)

_Simulator-Download: [v0.9.116](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.116)._

- **Tageslimits pro Wochentag:** Im Limit-Editor wählt „Woche“ zwischen jeden
  Tag gleich, Wochenende getrennt oder jeder Tag einzeln (0 = ganztägig
  gesperrt). Der Tagesverlauf verlinkt dorthin und zeigt das heutige Limit.
- Wo das Kind ist, prüft die neueste Position gegen die Ortsereignisse; ältere
  Aufenthalte tragen ihren Wochentag.
- „Aktivität“ (Bildschirmzeit und Apps) ist standardmäßig aufgeklappt, darunter
  „Bewegung & Orte“. Das Zahnrad sitzt in der Navigationsleiste.

Prüfen in der Simulation: im Limit-Editor alle drei Wochen-Einstellungen
durchgehen und einen einzelnen Wochentag ändern. Für einen echten Ortstest das
Kinder-iPhone aus dem Ort hinaus und zurückbringen.

### 0.9.115 (Build 214)

_Simulator-Download: [v0.9.115](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.115)._

- **Zwei-Tipp-Regel:** Alltägliches liegt auf der Kinderseite, der Rest unter
  „Erweiterte Einstellungen“ (Zahnrad). Mit einem Kind ist dessen Seite die
  Startseite, die Familienliste gibt es ab zwei Kindern.
- Die Bildschirmzeit-Karte und die Familienzeile sagen, wo das Kind ist
  („Schule seit 08:12“). Das Profil-Menü enthält den Simulations-Schalter und
  „Alle Sperren aufheben“ direkt.

Prüfen in der Simulation: Familien mit einem und mehreren Kindern ansehen,
dann von der Kinderseite die erweiterten Einstellungen und das Profil-Menü
öffnen.

### 0.9.114 (Build 213)

_Simulator-Download: [v0.9.114](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.114)._

- Der Tagesverlauf zeigt den Tag des Kindes aus Apples Bildschirmzeit:
  stündliche Balken der fünf meistgenutzten Apps, jede App mit Minuten,
  Aktivierungen. Darunter, als solche gekennzeichnet, die Schätzung des
  Netzwerkfilters.
- „Bewegung & Orte“ ist eine Seite auf dem Eltern-iPhone. Eine App-Seite
  beginnt mit drei Buttons: Freigeben, Sperren, Ausblenden.

Prüfen auf einem echten Eltern-iPhone: Tagesverlauf öffnen und Apples
Nutzungsdaten mit der getrennt beschrifteten Netzwerk-Schätzung vergleichen.
In der Simulation zusätzlich „Bewegung & Orte“ und die drei Aktionen auf einer
App-Seite öffnen.

### 0.9.113 (Build 212)

_Simulator-Download: [v0.9.113](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.113)._

- **„Heute“ nutzt Apples Bildschirmzeit.** Auf der Kinderseite zeigt
  „Heute“ die App-Nutzung mit Minuten, Aktivierungen und Mitteilungen aus
  Apples Bildschirmzeit. „Jetzt“ bleibt die aktuelle Netzwerk-Schätzung.
  Lange Verbindungen, etwa ein laufendes Video, werden dort ebenfalls
  berücksichtigt. Apps mit bisher technischem Namen erhalten ihren
  App-Store-Namen, etwa „Google Meet“.
  Prüfen auf echten Test-iPhones: eine App längere Zeit nutzen und die
  Anzeige unter „Heute“ mit der Bildschirmzeit vergleichen. Anschließend
  ein Video laufen lassen und „Jetzt“ beobachten. Die Simulation prüft
  die Darstellung, nicht Apples echte Nutzungsdaten.

### 0.9.112 (Build 211)

_Simulator-Download: [v0.9.112](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.112)._

- **Gesperrter Bildschirm zählt keine zusätzlichen App-Minuten.**
  Hintergrundverkehr bei gesperrtem iPhone erhöht die gemessene Datenmenge,
  aber keine Nutzungsminuten oder Öffnungen mehr. Das „i“ beim Apps-Abschnitt
  erklärt, warum die Netzwerk-Schätzung trotzdem von der Bildschirmzeit
  abweichen kann.
  Prüfen auf einem echten Kinder-iPhone: eine App nutzen, das iPhone
  anschließend mit weiterlaufendem Hintergrundverkehr sperren und die
  gemessenen App-Minuten danach vergleichen. Zusätzlich den Erklärungstext
  auf der Kinderseite öffnen.

### 0.9.111 (Build 210)

_Simulator-Download: [v0.9.111](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.111)._

- **Bildschirmzeit-Karte zeigt den Zähler, der das Limit entscheidet.**
  Auf der Kinderseite und in der Familienübersicht steht die angerechnete
  Nutzung neben dem Tageslimit. Die über den Netzwerkfilter gemessene
  entsperrte Zeit steht getrennt, etwa „3 h 22 entsperrt“.
  Prüfen auf einem echten Kinder-iPhone mit Tageslimit und „Immer erlaubt“:
  beide Werte ansehen. Die Zeit am Limit muss zum Sperrstatus passen;
  die entsperrte Zeit darf unabhängig davon höher sein.

### 0.9.110 (CI-Lauf 209; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.111](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.111) (Build 210) enthalten._

- **Kleineres Simulator-Paket.** Der Simulator-Build wurde von etwa
  42 auf etwa 33 MB verkleinert; Pfade des Build-Rechners werden neutralisiert.
  Prüfen mit dem nächsten verfügbaren QA-Download: normal installieren,
  starten und die Simulation öffnen. Die Seiten müssen sich weiterhin
  vollständig bedienen lassen.

### 0.9.109 (Build 208)

_Simulator-Download: [v0.9.109](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.109)._

- **„Jetzt“ ist übersetzt.** Der Umschalter „Jetzt“ neben „Heute“ auf
  der Kinderseite erscheint jetzt in der gewählten App-Sprache statt
  überall auf Deutsch.
  Prüfen in der Simulation: die App etwa auf Englisch oder Französisch
  öffnen und beide Umschalter sowie die zugehörigen App-Listen ansehen.

### 0.9.108 (Build 207)

_Simulator-Download: [v0.9.108](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.108)._

- **Simulator-Downloads erscheinen als Releases.** Die Veröffentlichung
  im QA-Repository wurde vervollständigt, damit der fertige Build als
  versionierter Download und über den Link „Neuester Build“ erreichbar ist.
  Prüfen: den Download dieser Version auf einem Test-Mac installieren und
  in der App Version 0.9.108 mit Build 207 kontrollieren; anschließend die
  Simulation öffnen.

### 0.9.107 (CI-Lauf 206; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.108](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.108) (Build 207) enthalten._

- **Übertragung der QA-Builds eingerichtet.** Die automatische
  Bereitstellung im QA-Repository wurde weiter eingerichtet.
  Prüfen mit dem nächsten verfügbaren QA-Download: Installation und Start
  nach README durchführen und die angezeigte Version mit dem gewählten
  Release vergleichen.

### 0.9.106 (CI-Lauf 205; kein eigener QA-Download)

_Diese Änderungen sind im nächsten verfügbaren QA-Download [v0.9.108](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.108) (Build 207) enthalten._

- **Automatische Simulator-Builds vorbereitet.** Neue Builds sollen
  im QA-Repository mit derselben Build-Nummer wie bei TestFlight erscheinen.
  Die Einrichtung der Veröffentlichung wurde in 0.9.107 und 0.9.108
  vervollständigt.
  Prüfen mit dem nächsten verfügbaren QA-Download: den Build auf einem
  Test-Mac installieren und Version sowie Build-Nummer kontrollieren.

### 0.9.105 (Build 204)

_Simulator-Download: [v0.9.105](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.105)._

- **Erster hier veröffentlichter Simulator-Build.** In der Simulation
  lassen sich die Eltern- und Kinderansichten mit der Beispielfamilie
  durchspielen.
  Prüfen: den Build auf einem Test-Mac installieren, die Simulation
  starten und die Kinderseite öffnen.
- **Tagesverlauf hinter der Bildschirmzeit-Karte.** Die Karte öffnet
  einen Tagesgraphen mit App-Nutzung je Viertelstunde, farbigen Apps,
  entsperrten Zeiträumen und den eingestellten Sperrzeiten. Antippen
  zeigt Details; die Pfeile wechseln den Tag.
  Prüfen in der Simulation: Bildschirmzeit-Karte antippen, eine
  Viertelstunde und eine App auswählen und zwischen den Tagen wechseln.
  Echte Sperren, Nutzungsdaten und Geräteverbindungen gesondert auf
  echten Test-iPhones prüfen.

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
