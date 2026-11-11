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
nächste verfügbare Download nennt den späteren QA-Stand; dessen
Versionshinweise zusätzlich beachten.
Für 0.9.127 wurde der QA-Download von Build 229 auf Build 230 aktualisiert.
Die Versions- und Build-Anzeige des verwendeten Downloads ist für einen
Fehlerbericht maßgeblich.

### Schnellüberblick: alle Versionen

Die Tabelle enthält jede Version von **0.9.105 bis 0.9.167**. Ein CI-Stand ohne veröffentlichten Download ist ausdrücklich gekennzeichnet. Ein Klick auf die Version führt zur ausführlichen Erklärung mit Prüfpunkten.

Die Texte beschreiben die **dokumentierten Änderungen der damaligen Version**, keine neu ausgeführten Tests. Frühere Menüs können später entfernt worden sein; das Eltern-VPN beispielsweise ab 0.9.146. Echte Sperren, iCloud-Kopplung und Push benötigen weiterhin Prüfungen auf echten Test-iPhones.

**Beleglage:** Download- und Build-Angaben wurden mit den veröffentlichten [QA-Releases](https://github.com/Familiydevice/familydevice-qa/releases) abgeglichen. Die inhaltlichen Erklärungen stammen aus der freigegebenen QA-Historie. Für 0.9.158 fehlen inhaltliche Änderungsnotizen; bei mehreren nachträglich aktualisierten Builds ist die genaue Reichweite älterer Notizen gekennzeichnet.

| Version | Download / dokumentierter Stand | Was hat sich geändert? |
|---|---|---|
| [0.9.167](#v0-9-167) | [Build 306](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.167) | Der Sperrbildschirm greift nur noch, wenn wirklich eine Freigabe fehlt, lässt sich sofort abschalten und meldet sich bei den Eltern laut. Dazu: keine doppelten Benachrichtigungen, abgelaufene Anträge lassen sich nicht mehr genehmigen. |
| [0.9.166](#v0-9-166) | [Build 303](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.166) | Fehlt auf dem Kinder-iPhone eine Freigabe, sperrt es sich selbst: alle Apps außer Notfall-Apps ausgeblendet, die Eltern bekommen eine Erklärung. Unter „Sicherheit“ abschaltbar, Standard an. |
| [0.9.165](#v0-9-165) | [Build 302](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.165) | Eltern bekommen einen Alarm, wenn auf dem Kinder-iPhone Freigaben fehlen; „Alles erlauben“ fragt offene Berechtigungen der Reihe nach an. |
| [0.9.164](#v0-9-164) | [Build 294](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.164) | Das Paywall zeigt die Abo-Preisstaffel; der Schutzprozess bleibt aktiv, solange er die Durchsetzungssperre hält. |
| [0.9.163](#v0-9-163) | [Build 293](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.163) | Ein Kind lässt sich erst nach Abo oder Testphase koppeln; ohne App-Store-Produkt bietet das Paywall einen erneuten Versuch. |
| [0.9.162](#v0-9-162) | [Build 291](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.162) | Kinder können auf dem Sperrbildschirm nur die geöffnete App oder die ganze Gruppe anfragen. |
| [0.9.161](#v0-9-161) | [Build 287](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.161) | Eine neue Freigabe bleibt auch bei verspäteten Games-Limitmeldungen wirksam. Leere App-Auswahlen werden gespeichert; freigegebene Games erscheinen grün. |
| [0.9.160](#v0-9-160) | [Build 279](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.160) | Push-Berechtigung bei Apple freigeschaltet, Signierungsprofil erneuert und die signierte iPhone-App vor dem TestFlight-Upload geprüft. |
| [0.9.159](#v0-9-159) | [Build 277](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.159) | Wartende Mitteilungen gehen bei einem schnellen erneuten Abgleich nicht mehr verloren; Fehler bei iCloud-Mitteilungen werden sichtbar. |
| [0.9.158](#v0-9-158) | [Build 275](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.158) | QA-Build 275 ist veröffentlicht; eine freigegebene Beschreibung seiner inhaltlichen Änderungen fehlt noch. |
| [0.9.157](#v0-9-157) | [Build 271](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.157) | Laufende Freigaben erscheinen als grüne Kacheln mit Umfang, Restzeit und Ende; die Prioritätenliste erklärt, welche Sperre sie aufheben. |
| [0.9.156](#v0-9-156) | CI 266, kein eigener Download | Einzel-App-Anfragen bleiben auch bei Kategorie-Sperren auf die geöffnete App begrenzt; Nachtruhe zeigt eine überstimmende Freigabe verständlicher. |
| [0.9.155](#v0-9-155) | [Build 265](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.155) | Eine App-Freigabe öffnet nicht die ganze Gruppe; fehlgeschlagene Push-Versuche und Mitteilungsanmeldungen werden erneut versucht. |
| [0.9.154](#v0-9-154) | [Build 264](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.154) | Einzel-App- und Bildschirmzeit-Anfragen sind getrennt; gültige Freigaben werden beim Internet berücksichtigt, Sofortsperren lassen sich priorisieren. |
| [0.9.153](#v0-9-153) | [Build 262](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.153) | Hintergrund-Abstürze beim Aktualisieren der Regeln wurden korrigiert. Einzel-App-Anfragen sind zusätzlich für Stand 263 dokumentiert; deren Umfang im Download 262 ist nicht belegt. |
| [0.9.152](#v0-9-152) | [Build 259](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.152) | Limits und Zeitpläne lassen sich nach Stärke sortieren; die wirksame Regel wird angezeigt und „Ausblenden“ berücksichtigt die gesamte Bildschirmzeit. |
| [0.9.151](#v0-9-151) | [Build 258](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.151) | Neuere Sofortsperren überstimmen frühere Freigaben; erreichte Tageslimits bleiben bestehen und „Mehr Zeit anfragen“ gibt sichtbare Rückmeldung. |
| [0.9.150](#v0-9-150) | [Build 257](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.150) | Tageslimits stehen direkt auf der Startseite; Anfragen lassen sich durch Wischen bearbeiten und erledigte Einträge ausblenden. Limit-Zählung und Einrichtung wurden korrigiert. |
| [0.9.149](#v0-9-149) | CI 254, kein eigener Download | WLAN und QR-Code werden beim Koppeln verständlicher erklärt; die Freigabe fürs lokale Netzwerk wird geprüft und Apple-Einstellungen werden schrittweise angeleitet. |
| [0.9.148](#v0-9-148) | CI 253, kein eigener Download | Erneutes Koppeln über WLAN bleibt nach dem Entkoppeln nicht mehr bei „Verbinde …“ hängen; für die Code-Bestätigung bleibt mehr Zeit. |
| [0.9.147](#v0-9-147) | [Build 251](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.147) | Die Datenschutztexte beschreiben kein Eltern-VPN mehr und wurden in allen App-Sprachen angepasst. |
| [0.9.146](#v0-9-146) | CI 249, kein eigener Download | Das VPN und die eigene Netzwerk-Messung auf dem Eltern-iPhone wurden entfernt; der Filter auf dem Kinder-iPhone bleibt erhalten. |
| [0.9.145](#v0-9-145) | [Build 248](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145) | Das Kinder-iPhone wird vor dem Koppeln fertig eingerichtet; jede Freigabe hat einen eigenen Knopf und iCloud-Mitteilungen werden beim Verbinden eingerichtet. |
| [0.9.144](#v0-9-144) | CI 247, kein eigener Download | Koppeln per QR-Code funktioniert auch ohne gemeinsames WLAN; beide iPhones bestätigen weiterhin denselben Vergleichscode. |
| [0.9.143](#v0-9-143) | CI 246, kein eigener Download | Der Sicherheitszähler berücksichtigt zusätzlich „QUIC unterbinden“ und zeigt bei allen eingeschalteten Schaltern „10 von 10“. |
| [0.9.142](#v0-9-142) | CI 245, kein eigener Download | Ein weiteres Eltern-iPhone lässt sich koppeln, während ein bereits verbundenes Eltern-iPhone in der Nähe ist. |
| [0.9.141](#v0-9-141) | CI 244, kein eigener Download | Der Sicherheitszähler verwendet die richtige Gesamtzahl und zeigt für den damaligen Stand „9 von 9“ statt etwa „9 von 4“. |
| [0.9.140](#v0-9-140) | CI 243, kein eigener Download | Nach vollständigem Entkoppeln wird der Bildschirmzeit-Zugriff zurückgegeben, damit sich die App wieder löschen lässt. |
| [0.9.139](#v0-9-139) | [Build 242](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.139) | Ein neu installiertes Eltern-iPhone kann seine alte Verbindung ersetzen, während Regeln und Limits erhalten bleiben. |
| [0.9.138](#v0-9-138) | CI 241, kein eigener Download | Lange ausbleibende Eltern-Verbindungen werden erkannt; das Kind sieht eine Warnung und bei vollständigem Ausfall einen Schutzstatus mit Möglichkeiten zum erneuten Koppeln. |
| [0.9.137](#v0-9-137) | CI 240, kein eigener Download | „Mehr Zeit anfragen“ kann direkt vom Sperrbildschirm eine 30-Minuten-Anfrage senden und berücksichtigt bereits offene oder gerade abgelehnte Anfragen. |
| [0.9.136](#v0-9-136) | CI 239, kein eigener Download | Erlaubte Social-Media-Profile öffnen nicht das ganze Netzwerk; aufgebrauchte Bildschirmzeit und vorgemerkte Anfragen werden verständlicher behandelt. |
| [0.9.135](#v0-9-135) | [Build 238](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) | Die Einrichtung erklärt Nutzen und Nachteile jeder Freigabe; ein Aufenthalt beginnt nach Verlassen und Rückkehr mit der neuen Ankunftszeit. |
| [0.9.134](#v0-9-134) | CI 237, kein eigener Download | Eltern können für soziale Netzwerke einzelne Profile dauerhaft erlauben; das Kind kann weitere Profile anfragen. |
| [0.9.133](#v0-9-133) | CI 236, kein eigener Download | Der Tor-Schutz berücksichtigt auch Brücken und blendet bekannte Tor-, VPN- und Proxy-Apps auf dem Kinder-iPhone aus. |
| [0.9.132](#v0-9-132) | CI 235, kein eigener Download | Eine neue Sperrliste erfasst VPN, Proxy und Tor; die Pornografie-Liste berücksichtigt zusätzlich Suchmaschinen ohne sichere Suche. |
| [0.9.131](#v0-9-131) | CI 234, kein eigener Download | Der Werbefilter erfasst mehr Pop-ups und Weiterleitungen; eine weitere Sperrliste richtet sich gegen Raubkopien und illegales Streaming. |
| [0.9.130](#v0-9-130) | CI 233, kein eigener Download | Neue Schalter blockieren Pornografie, Pillen und Drogen sowie Glücksspiel und Poker; ausdrücklich erlaubte Domains bleiben ausgenommen. |
| [0.9.129](#v0-9-129) | CI 232, kein eigener Download | Eltern können offene Anfragen durch Wischen erlauben oder ablehnen; Antippen öffnet weiter die ausführliche Entscheidung. |
| [0.9.128](#v0-9-128) | [Build 231](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.128) | Das damalige Eltern-VPN startet erst nach bewusstem Einschalten; bei einer frischen Einrichtung erscheint kein automatischer VPN-Dialog mehr. |
| [0.9.127](#v0-9-127) | [Build 230](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.127) | Die Nutzungs-Zeitleiste zeigt Tage mit Sommer- oder Winterzeit bei den richtigen Uhrzeiten; die Sperrregeln selbst waren nicht betroffen. |
| [0.9.126](#v0-9-126) | [Build 225](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.126) | Der Anfrage-Knopf auf Safaris Internet-Sperrseite führt über die Website zurück in die passende Internet-Anfrage der App. |
| [0.9.125](#v0-9-125) | [Build 224](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.125) | Internetfreigaben lassen getrennte App- und Website-Sperren bestehen; gültige Gesamtfreigaben und „Alles frei bis …“ werden konsistenter berücksichtigt. |
| [0.9.124](#v0-9-124) | [Build 223](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.124) | Als harmlos markierte, immer erlaubte Apps behalten ihre Verbindung auch bei einer Sperre des gesamten Internets. |
| [0.9.123](#v0-9-123) | CI 222, kein eigener Download | Zusätzliche Bildschirmzeit gibt das ganze iPhone frei; Zeitpläne erscheinen als Limit-Kacheln und auch ausgeblendete Apps sowie das Internet können angefragt werden. |
| [0.9.122](#v0-9-122) | [Build 221](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.122) | Nicht mehr verwendete Eltern-Verbindungen können einzeln entfernt werden; eine neu installierte Eltern-App startet mit einer frischen Kopplung. |
| [0.9.121](#v0-9-121) | CI 220, kein eigener Download | Limits, Internetsperren und Zeitpläne sind zentral erreichbar; „+ Limit“ ist der gemeinsame Einstieg und weitere Optionen liegen unter „Erweiterte Einstellungen“. |
| [0.9.120](#v0-9-120) | [Build 219](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.120) | Einstellungen des Eltern-iPhones und des Kindes sind getrennt; das damalige Eltern-VPN und seine Filter liegen im Profil-Menü. |
| [0.9.119](#v0-9-119) | [Build 218](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.119) | Das damalige Eltern-VPN, Werbefilter und Phishing-Schutz stehen als zusammengehöriger Abschnitt mit gekoppelten Schaltern bereit. |
| [0.9.118](#v0-9-118) | [Build 217](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.118) | Ein zunächst aktiver Filter blendet Apple-Apps, Erweiterungen und harmlose Apps in den Nutzungslisten aus; ein Tipp zeigt sie wieder. |
| [0.9.117](#v0-9-117) | [Build 216](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.117) | „Jetzt“ und „Heute“ verbergen dieselben harmlosen Apps; eine Erklärung nennt den jeweiligen Zeitraum und die Datenquelle. |
| [0.9.116](#v0-9-116) | [Build 215](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.116) | Tageslimits können für jeden Wochentag oder getrennt fürs Wochenende eingestellt werden; Orts- und Aktivitätsanzeigen wurden angepasst. |
| [0.9.115](#v0-9-115) | [Build 214](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.115) | Häufige Aktionen sind mit wenigen Schritten erreichbar; bei nur einem Kind öffnet dessen Seite direkt und die Ortsanzeige ist präsenter. |
| [0.9.114](#v0-9-114) | [Build 213](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.114) | Der Tagesverlauf trennt Apples Nutzungsdaten von der Netzwerk-Schätzung; App-Seiten beginnen mit Freigeben, Sperren und Ausblenden. |
| [0.9.113](#v0-9-113) | [Build 212](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.113) | „Heute“ zeigt Apples Bildschirmzeit, „Jetzt“ bleibt die Netzwerk-Schätzung; längere Verbindungen und verständliche App-Namen werden berücksichtigt. |
| [0.9.112](#v0-9-112) | [Build 211](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.112) | Netzwerkverkehr bei gesperrtem Bildschirm erhöht die Datenmenge, aber nicht mehr die geschätzten Nutzungsminuten oder Öffnungen. |
| [0.9.111](#v0-9-111) | [Build 210](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.111) | Die Bildschirmzeit-Karte zeigt die angerechnete Zeit am Tageslimit; die gemessene entsperrte Zeit wird getrennt angezeigt. |
| [0.9.110](#v0-9-110) | CI 209, kein eigener Download | Das Simulator-Paket wurde verkleinert und enthält neutralisierte Build-Pfade; es gibt keinen eigenen veröffentlichten QA-Download. |
| [0.9.109](#v0-9-109) | [Build 208](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.109) | Der Umschalter „Jetzt“ erscheint in der gewählten App-Sprache. |
| [0.9.108](#v0-9-108) | [Build 207](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.108) | Fertige Simulator-Builds werden als versionierte Releases und über „Neuester Build“ bereitgestellt. |
| [0.9.107](#v0-9-107) | CI 206, kein eigener Download | Die automatische Übertragung der Simulator-Builds ins QA-Repository wurde weiter eingerichtet. |
| [0.9.106](#v0-9-106) | CI 205, kein eigener Download | Automatische Simulator-Builds mit derselben Build-Nummer wie bei TestFlight wurden vorbereitet. |
| [0.9.105](#v0-9-105) | [Build 204](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.105) | Der erste veröffentlichte Simulator-Build erlaubt die Eltern-/Kind-Simulation und einen Tagesverlauf hinter der Bildschirmzeit-Karte. |

<a id="v0-9-167"></a>
### 0.9.167 (Build 306)

**Kurz erklärt:** Der Sperrbildschirm aus 0.9.166 greift jetzt nur noch, wenn wirklich eine Freigabe fehlt: Der Stromsparmodus sperrt das iPhone nicht mehr, und wenn die Eltern den Schalter „Bei fehlenden Freigaben alle Apps sperren“ unter **Sicherheit** ausschalten, ist die Sperre sofort weg (vorher konnte sie noch bis zu einer halben Stunde stehen). Die Eltern bekommen die Sperr-Meldung jetzt sofort und laut – auch wenn die App gerade nicht offen ist – und sehen im Eltern-Teil zusätzlich „iPhone gesperrt“ beim Kind.

Dazu die wichtigsten Korrekturen aus der App-Prüfung: Eine Freigabe-Meldung kommt nicht mehr doppelt (App und Benachrichtigungs-Erweiterung), abgelaufene Anträge lassen sich nicht mehr genehmigen, die Netzwerk-Seite zeigt gesperrte Apps jetzt auch als gesperrt, und das Ausschalten der Simulation nimmt den Eltern nicht mehr die Bildschirmzeit-Freigabe weg.

**Wo anschauen:** Auf dem Eltern-iPhone die Kinderseite → **Sicherheit** → den Schalter „Bei fehlenden Freigaben alle Apps sperren“ prüfen (Standard an) und einmal aus- und wieder einschalten. Auf dem Kinder-iPhone eine Freigabe (z. B. Standort) in den iOS-Einstellungen ausschalten: Nach dem nächsten Wecken von familydevice sollen alle Apps außer Telefon, Nachrichten, FaceTime, Karten, Health, „Wo ist?“, Einstellungen, „Immer erlaubt“ und familydevice ausgeblendet sein. Auf dem Eltern-iPhone soll die Meldung „Achtung: … – iPhone gesperrt“ mit Ton kommen, auch bei aktivem Fokus, und auf der Kinderseite „iPhone gesperrt“ stehen. Danach den Schalter auf dem Eltern-iPhone ausschalten: Das iPhone soll die Apps ohne Neustart zurückbekommen. Ebenfalls prüfen: eine Anfrage, die älter als eine Stunde offen ist, lässt sich nicht mehr genehmigen, und unter Netzwerk → Apps erscheinen gesperrte Apps ausgegraut.

**Prüfstand:** 411 Core-/Sync-Tests lokal grün, darunter neue Fälle für das Policy-Rückschreiben, die Sperrgründe und den Schalter. App und alle acht Erweiterungen bauen lokal. Ob iOS die Apps wirklich ausblendet, die Push ankommt und ein Fokus durchdrungen wird, lässt sich nur mit zwei echten iPhones prüfen. Build 306 stammt aus [CI-Lauf 306](https://github.com/Familiydevice/familydevice/actions/runs/42939055236); Ergebnis und QA-Download beim verwendeten Build prüfen.

<a id="v0-9-166"></a>
### 0.9.166 (Build 303)

**Kurz erklärt:** Fehlt auf dem Kinder-iPhone eine Freigabe, die der Schutz braucht – Standort, Bewegung & Fitness, Netzwerkfilter oder Hintergrundaktualisierung –, versetzt sich das iPhone selbst in den Block-Modus: Alle Apps werden vom Home-Bildschirm ausgeblendet, außer Telefon, Nachrichten, FaceTime, Karten, Health, „Wo ist?“, Einstellungen, den „Immer erlaubt“-Apps und familydevice. In familydevice steht dann ganz oben, welche Freigaben fehlen und wie sie wieder eingeschaltet werden. Die Eltern bekommen eine zeitkritische Mitteilung „Achtung: … – iPhone gesperrt“ mit den fehlenden Freigaben und dem Weg zum Beheben; sie ersetzt die einfache „Freigaben fehlen“-Meldung, solange gesperrt ist.

Neu ist der Eltern-Schalter: Unter **Sicherheit** auf der Kinderseite lässt sich „Bei fehlenden Freigaben alle Apps sperren“ aus- und einschalten. **Standard ist an.** Ausgeschaltet bleibt das Kind bei fehlenden Freigaben normal nutzbar, die Warnung an die Eltern kommt weiterhin.

Bewusst nicht als Sperre gewertet werden „Standort nur beim Verwenden“, Mitteilungen, lokales Netzwerk und der Stromsparmodus (iOS meldet Hintergrundaktualisierung dann als „eingeschränkt“, nicht als „aus“).

**Wo anschauen:** Auf dem Eltern-iPhone die Kinderseite → Sicherheit öffnen und den Schalter prüfen (Standard an). Auf dem Kinder-iPhone eine der Freigaben in den iOS-Einstellungen ausschalten: Nach dem nächsten Wecken von familydevice (App öffnen oder Push) sollen nur noch die Notfall-Apps, „Immer erlaubt“ und familydevice sichtbar sein. familydevice öffnen → roter Hinweis „Alle Apps ausgeblendet – Freigaben fehlen“ mit „Einstellungen öffnen“ und der Anleitung. Freigabe wieder erteilen → die Apps kommen zurück. Auf dem Eltern-iPhone soll die Mitteilung „iPhone gesperrt“ mit Ton erscheinen, auch bei aktivem Fokus.

**Prüfstand:** 338 Core-/Sync-Tests lokal grün, darunter neue Fälle für den Sperr-Alarm (ersetzt die Freigabe-Warnung), den Schalter (aus = keine Sperre) und den Default an. App und Notification-Service bauen lokal. Ob iOS wirklich alle Apps ausblendet, Notfall-Apps sichtbar bleiben, Push ankommt und ein Fokus durchdrungen wird, lässt sich nur mit zwei echten iPhones prüfen. Build 303 stammt aus [CI-Lauf 303](https://github.com/Familiydevice/familydevice/actions/runs/42920059262); Ergebnis und QA-Download beim verwendeten Build prüfen.

<a id="v0-9-165"></a>
### 0.9.165 (Build 302)

**Kurz erklärt:** Fehlt auf dem Kinder-iPhone eine Freigabe, die die Regeln brauchen, meldet das Eltern-iPhone das jetzt als zeitkritischen Alarm „Achtung: … – Freigaben fehlen“ mit den konkreten Punkten: Standort, Bewegung & Fitness, Mitteilungen, Netzwerkfilter und Hintergrundaktualisierung. Der Alarm kommt auch dann, wenn die Freigabe schon beim ersten Bericht nach dem Koppeln fehlte – nicht nur bei einer Änderung. Pro Problem-Set erscheint er einmal, damit ein dauerhaft fehlender Standort nicht jede Abgleichrunde klingelt.

Dazu: „Bildschirmzeit freischalten“ liest den Status beim Zurückkehren in die App neu und öffnet die Einstellungen, wenn iOS nicht mehr fragt. In der Einrichtung fordert „Alles erlauben“ die offenen Berechtigungen nacheinander an und prüft nach jedem Dialog den neuen Stand. Der Apple-Einrichtungsassistent merkt sich seine Bestätigungen und lässt sich über „Von vorne beginnen“ zurücksetzen. Ist der iCloud-Speicher voll, nennt die Kopplung den Weg zum Freimachen statt einer rohen CloudKit-Fehlermeldung.

**Wo anschauen:** Auf dem Eltern-iPhone unter „Erweiterte Einstellungen“ des Kindes die Zeilen unter „Gesperrt …“ prüfen (z. B. „Standort nicht erlaubt“). Auf dem Kinder-iPhone eine Freigabe in den iOS-Einstellungen ausschalten und den nächsten Bericht abwarten: Das Eltern-iPhone soll die Alarm-Mitteilung mit Ton zeigen, auch bei aktivem Fokus. Danach die Freigabe wieder einschalten; dann folgt „Freigaben geändert“. Auf dem Eltern-iPhone „Bildschirmzeit freischalten“ antippen, die Freigabe in den Einstellungen erteilen und zurückkehren: Die Zeile soll ohne Neustart auf „Bildschirmzeit“ wechseln.

**Prüfstand:** 328 Core-/Sync-Tests sind lokal erfolgreich durchgelaufen, darunter fünf neue Fälle für den Freigabe-Alarm (erster Bericht mit Standort aus, dauerhaft aus, Freigabe erteilt, eigene Filter-Pause, unverändert). Der Build der iPhone-App einschließlich Erweiterungen war lokal erfolgreich. Echte iOS-Sperren, Push-Zustellung und das Durchdringen eines Fokus sind im Simulator nicht überprüfbar und brauchen zwei echte iPhones. Build 296 stammt aus [CI-Lauf 296](https://github.com/Familiydevice/familydevice/actions/runs/42896250806); dessen Ergebnis und der QA-Download sind beim verwendeten Build zu prüfen.

_Zuerst als Build 296 erstellt; der veröffentlichte QA-Download wurde auf Build 302 aktualisiert._

<a id="v0-9-164"></a>
### 0.9.164 (Build 294)

**Kurz erklärt:** Das Paywall zeigt die Preisstaffel des Familien-Abos. Der Schutzprozess bleibt außerdem am Leben, solange er die gemeinsame Durchsetzungssperre hält, damit die Sperren nicht durch einen beendeten Prozess ins Leere laufen.

**Wo anschauen:** Auf dem Eltern-iPhone das Paywall öffnen und die Preisstufen prüfen. Auf dem Kinder-iPhone eine laufende Sperre beobachten und nach einiger Zeit erneut öffnen: Die Sperre soll bestehen bleiben.

<a id="v0-9-163"></a>
### 0.9.163 (Build 293)

**Kurz erklärt:** Ein Kind lässt sich erst koppeln, wenn ein Abo oder eine Testphase es abdeckt. Liefert der App Store kein Produkt (offline, Aussetzer, fehlende Vereinbarung), sagt das Paywall das und bietet einen erneuten Versuch, statt die Kopplung trotzdem zu öffnen. Für Familien, die bereits Kinder eingerichtet haben, bleibt der bisherige Weg offen.

**Wo anschauen:** Auf dem Eltern-iPhone „Kinder-iPhone hinzufügen“ öffnen. Ohne Abo soll das Paywall erscheinen und „Abbrechen“ nicht in die Kopplung führen; mit Abo oder Testphase geht es weiter. Bei fehlendem App-Store-Produkt soll die Meldung zum erneuten Versuch erscheinen.

<a id="v0-9-162"></a>
### 0.9.162 (Build 291)

Auf dem Kinder-iPhone gibt es beim Öffnen einer gesperrten App zwei Möglichkeiten. Das Kind kann Zeit nur für diese App anfragen oder für die ganze angezeigte Gruppe. Die Anfrage geht über iCloud an die gekoppelten Eltern. Auch wenn iOS keinen App-Namen liefert, gilt eine genehmigte Einzelanfrage nur für die geöffnete App.

**Zum Prüfen auf zwei iPhones:** YouTube und eine zweite App derselben gesperrten Videogruppe zuordnen. Auf dem Kindergerät YouTube öffnen und nur diese App anfragen. Nach der Genehmigung auf dem Elterngerät muss YouTube aufgehen und die zweite App gesperrt bleiben. Anschließend über deren Sperrbildschirm die Gruppe anfragen und prüfen, dass die Genehmigung beide Apps öffnet.

<a id="v0-9-161"></a>
### 0.9.161 (Build 287)

**Kurz erklärt:** War die Games-Zeit aufgebraucht, konnte eine verspätete Limitmeldung die Spiele trotz einer inzwischen erteilten Freigabe wieder sperren. Die App prüft Freigaben jetzt zum Zeitpunkt, an dem sie die Sperren tatsächlich aktualisiert. Das gilt für die Schnellaktion „frei“ und für eine direkte Bildschirmzeit-Freigabe. Unter „Erweiterte Einstellungen → Limits“ zeigt die Games-Kachel eine laufende Freigabe grün mit ihrer Endzeit, statt gleichzeitig rot „Aufgebraucht“ anzuzeigen.

Wird die App-Auswahl einer Gruppe oder eines Tageslimits vollständig geleert und gespeichert, bleibt sie nun leer. Bisher konnte der Tageslimit-Editor die Änderung verwerfen oder der Gruppen-Editor eine ältere Auswahl auf dem Kinder-iPhone erneut verwenden.

**Wo anschauen:** Auf der Kinderseite unter „Erweiterte Einstellungen → Limits → Games“ und unter „Priorität“. Die Schnellaktion für eine Freigabe und die direkte Bildschirmzeit-Freigabe sollen Games auch bei aufgebrauchtem Games-Limit öffnen; nach dem Ende der Freigabe gilt das Limit wieder. Eine geleerte Games-Auswahl soll nach erneutem Öffnen des Editors und nach einem Abgleich leer bleiben.

**Prüfstand:** 382 Core-/Sync-Tests und der Build der iPhone-App einschließlich Erweiterungen sind auf dem macOS-Runner von ATP7 erfolgreich durchgelaufen ([Prüflauf 286](https://github.com/Familiydevice/familydevice/actions/runs/41712132049)). Darunter sind Tests für eine wartende Limitmeldung, beide Freigabewege und das Ende der Freigabe. Echte iOS-Sperren sind im Simulator nicht überprüfbar; eine Prüfung auf einem echten Kinder-iPhone ist noch nicht erfolgt. [Release-CI 287](https://github.com/Familiydevice/familydevice/actions/runs/41713374000) ist vollständig erfolgreich abgeschlossen. Der QA-Download ist veröffentlicht. Apple hat am 3. November 2026 um 21:57 Uhr (Europe/Berlin) per TestFlight-Benachrichtigung bestätigt, dass Version 0.9.161 (287) für Tests auf iOS und watchOS verfügbar ist.

<a id="v0-9-160"></a>
### 0.9.160 (Build 279)

**Kurz erklärt:** Push-Berechtigung bei Apple freigeschaltet, Signierungsprofil erneuert und die signierte iPhone-App vor dem TestFlight-Upload geprüft.

**Wo anschauen:** Mitteilungen auf Eltern- und Kinder-iPhone; TestFlight-Update.

_Veröffentlichter QA-Download: [v0.9.160](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.160), Build 279. Für Fehlerberichte müssen Version 0.9.160 und Build 279 aus der App genannt werden._

- **Die Push-Korrektur ist jetzt für die iPhone-Verteilung signiert.** Diese
  Version enthält die unten beschriebenen Reparaturen für wartende
  Mitteilungen und die Anzeige von Push-Fehlern. Die Veröffentlichung von
  0.9.159 war bei der Signierung gestoppt. Die fehlende Apple-Berechtigung
  für zeitkritische Mitteilungen ist jetzt für die Haupt-App aktiviert
  und das Signierungsprofil erneuert. Vor dem TestFlight-Upload wurde
  direkt geprüft, dass die
  fertige, signierte App zeitkritische Mitteilungen und Produktions-Push
  unterstützt. Der vollständige Release-Lauf ist erfolgreich.
- **Auf echten iPhones prüfen, sobald TestFlight bereitsteht:** Beide
  Geräte aktualisieren, eine neue Anfrage über „Mehr Zeit anfragen“ senden
  und bei geschlossener Eltern-App auf die Mitteilung warten. Auch eine
  Regelmeldung sowie die Antwort auf eine Anfrage prüfen. Danach mit
  einem Fokus wiederholen, der zeitkritische Mitteilungen erlaubt.
  Simulator und automatische Tests bestätigen keine echte Zustellung
  zwischen zwei iPhones. Diese Prüfung steht noch aus.

<a id="v0-9-159"></a>
### 0.9.159 (Build 277)

**Kurz erklärt:** Wartende Mitteilungen gehen bei einem schnellen erneuten Abgleich nicht mehr verloren; Fehler bei iCloud-Mitteilungen werden sichtbar.

**Wo anschauen:** Startseite: Push-Fehler und „Erneut versuchen“; neue Anfrage senden.

_Veröffentlichter QA-Download: [v0.9.159](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.159), Build 277. Für Fehlerberichte müssen Version 0.9.159 und Build 277 aus der App genannt werden._

**Veröffentlichungsstand:** Der Simulator-Download wurde veröffentlicht.
TestFlight wurde bei der Signierung gestoppt. Die spätere Xcode-Prüfung
bestätigte die fehlende Berechtigung für zeitkritische Mitteilungen im
Profil der Haupt-App. Die Freischaltung und das erneuerte Profil sind
mit 0.9.160 erfolgreich geprüft.
[CI-Lauf 277](https://github.com/Familiydevice/familydevice/actions/runs/41550873393)
enthält einen weiteren Signierungsversuch, der ebenfalls gestoppt wurde.

- **Mitteilungen bleiben bei einem fehlgeschlagenen Versand vorgemerkt.**
  Wenn das Senden hakt und gleich danach ein weiterer Abgleich läuft,
  wird die wartende Mitteilung nicht mehr versehentlich als erledigt
  behandelt. Das betrifft Anfragen nach mehr Zeit und andere sichtbare
  Nachrichten. Auch eine inzwischen neu hinzugekommene Mitteilung bleibt
  zum erneuten Versand vorgemerkt.
- **Ein Problem mit iCloud-Mitteilungen wird auf der Startseite sichtbar.**
  Nimmt iCloud die Anmeldung für sichtbare Mitteilungen nicht an, zeigt
  die App einen Push-Fehler mit „Erneut versuchen“. Ein erfolgreicher
  Abgleich mit einem zweiten Kind verdeckt den Fehler beim ersten Kind
  nicht mehr. Die Anmeldung wird beim nächsten Abgleich erneut versucht.
- **Zeitkritische Mitteilungen behalten ihre Berechtigung im Release.**
  Anfragen, Antworten und Regelmeldungen sollen auch bei einem Fokus
  erscheinen können, wenn iOS und dieser Fokus zeitkritische Mitteilungen
  zulassen. Die dafür vorgesehene Berechtigung ging bisher beim Erstellen
  des veröffentlichten Builds wieder verloren.
  **Echtes Gerät erforderlich:** Dafür den Nachfolger 0.9.160 auf beiden
  iPhones verwenden; 0.9.159 wurde nicht auf TestFlight veröffentlicht.
  Mit geschlossener Eltern-App eine neue Anfrage über „Mehr Zeit anfragen“
  senden und zusätzlich eine Regelmeldung sowie die Antwort auf eine
  Anfrage prüfen; anschließend mit einem Fokus wiederholen, der
  zeitkritische Mitteilungen erlaubt. Eine fehlgeschlagene Anmeldung muss
  als Fehler sichtbar sein und nach erfolgreichem Wiederholen verschwinden.
  Simulator und automatische Tests belegen keine echte Push-Zustellung
  zwischen zwei iPhones; diese Prüfung steht noch aus.

<a id="v0-9-158"></a>
### 0.9.158 (Build 275)

**Kurz erklärt:** QA-Build 275 ist veröffentlicht; eine freigegebene Beschreibung seiner inhaltlichen Änderungen fehlt noch.

**Wo anschauen:** Versionsanzeige und Release-Metadaten; Änderungsdetails offen.

_Veröffentlichter QA-Download: [v0.9.158](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.158), Build 275. Für Fehlerberichte müssen Version 0.9.158 und Build 275 aus der App genannt werden._

**Änderungsdetails noch nicht freigegeben dokumentiert.** Der veröffentlichte QA-Download trägt Version 0.9.158 und Build 275. Seine Release-Beschreibung nennt den Build und den zugehörigen Stand, aber keine inhaltlichen Änderungen. Auch in der bisherigen freigegebenen QA-Historie und den öffentlichen QA-Issues gibt es dazu keine Änderungsbeschreibung.

Damit ist nicht belegt, dass sich gegenüber 0.9.157 nichts geändert hat. Für 0.9.158 werden deshalb keine neuen Funktionen oder Fehlerkorrekturen behauptet. Die fehlenden Änderungsdetails bleiben als Dokumentationslücke sichtbar.

Prüfen: Bei einem Fehlerbericht diese Version zusammen mit Build 275 nennen. Die folgenden älteren Versionshinweise beschreiben ihre jeweiligen Stände; sie sind keine Bestätigung sämtlicher Änderungen von 0.9.158.

<a id="v0-9-157"></a>
### 0.9.157 (Build 271)

**Kurz erklärt:** Laufende Freigaben erscheinen als grüne Kacheln mit Umfang, Restzeit und Ende; die Prioritätenliste erklärt, welche Sperre sie aufheben.

**Wo anschauen:** Kind → „Limits“ und „Priorität“.

_Veröffentlichter QA-Download: [v0.9.157](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.157), Build 271. Für Fehlerberichte müssen Version 0.9.157 und Build 271 aus der App genannt werden._

**Stand der Beschreibung:** Die freigegebenen Änderungsnotizen wurden zunächst für den Stand 267 ([CI-Lauf 267](https://github.com/Familiydevice/familydevice/actions/runs/40978596016)) geschrieben. Der verfügbare QA-Download trägt Build 271. Weitere Änderungen bis zu diesem Download sind nicht separat freigegeben beschrieben.

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

<a id="v0-9-156"></a>
### 0.9.156 (CI-Lauf 266; kein eigener QA-Download)

**Kurz erklärt:** Einzel-App-Anfragen bleiben auch bei Kategorie-Sperren auf die geöffnete App begrenzt; Nachtruhe zeigt eine überstimmende Freigabe verständlicher.

**Wo anschauen:** Sperrbildschirm, Anfrage-Mitteilung und „Limits → Priorität“.

_Für 0.9.156 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 266. Der nächste verfügbare Download ist [v0.9.157](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.157) mit Build 271; seine Versionshinweise zusätzlich beachten._

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

<a id="v0-9-155"></a>
### 0.9.155 (Build 265)

**Kurz erklärt:** Eine App-Freigabe öffnet nicht die ganze Gruppe; fehlgeschlagene Push-Versuche und Mitteilungsanmeldungen werden erneut versucht.

**Wo anschauen:** „Nur diese App anfragen“ und Push-Test beim Kind.

_Veröffentlichter QA-Download: [v0.9.155](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.155), Build 265. Für Fehlerberichte müssen Version 0.9.155 und Build 265 aus der App genannt werden._

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

<a id="v0-9-154"></a>
### 0.9.154 (Build 264)

**Kurz erklärt:** Einzel-App- und Bildschirmzeit-Anfragen sind getrennt; gültige Freigaben werden beim Internet berücksichtigt, Sofortsperren lassen sich priorisieren.

**Wo anschauen:** Sperrbildschirm, Anfrage auf dem Eltern-iPhone und „Limits → Priorität“.

_Veröffentlichter QA-Download: [v0.9.154](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.154), Build 264. Für Fehlerberichte müssen Version 0.9.154 und Build 264 aus der App genannt werden._

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

<a id="v0-9-153"></a>
### 0.9.153 (Build 262)

**Kurz erklärt:** Hintergrund-Abstürze beim Aktualisieren der Regeln wurden korrigiert. Einzel-App-Anfragen sind zusätzlich für Stand 263 dokumentiert; deren Umfang im Download 262 ist nicht belegt.

**Wo anschauen:** Hintergrundbetrieb mit Limits; die Build-Hinweise dieser Version beachten.

_Veröffentlichter QA-Download: [v0.9.153](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.153), Build 262. Für Fehlerberichte müssen Version 0.9.153 und Build 262 aus der App genannt werden._

**Stand der Beschreibung:** Die freigegebenen Änderungsnotizen wurden zunächst für den Stand 261 ([CI-Lauf 261](https://github.com/Familiydevice/familydevice/actions/runs/40724204383)) geschrieben. Der verfügbare QA-Download trägt Build 262. Weitere Änderungen bis zu diesem Download sind nicht separat freigegeben beschrieben.

#### Dokumentierter Stand: Build 261

- **Wiederholte Abstürze im Hintergrund korrigiert.** Das Kinder-iPhone
  soll beim automatischen Aktualisieren der Bildschirmzeit-Regeln nicht
  mehr wiederholt eine Absturzmeldung zeigen, obwohl familydevice nicht
  erneut geöffnet wurde. Betroffen waren Meldungen von einem iPhone 12
  mit iOS 18.2.
  **Echtes Gerät erforderlich:** Auf dem dafür vorgesehenen Kinder-
  Test-iPhone den tatsächlich verwendeten Build notieren, bei aktiven Tageslimits in eine andere App
  wechseln und das Gerät zwischendurch sperren. Währenddessen auf der
  Elternseite ein Limit ändern und eine Freigabe erteilen. Mindestens
  35 Minuten beobachten: keine neue Absturzmeldung; Änderungen und der
  Ablauf einer Freigabe müssen weiterhin die vorgesehenen Sperren setzen.
  Ein erreichtes Tageslimit muss auch nach erneutem Öffnen von familydevice
  erhalten bleiben. Der Simulator kann diese Hintergrund-Abstürze und
  die echten Bildschirmzeit-Sperren nicht bestätigen.

<a id="09153-build-263"></a>
#### Zusätzlich dokumentierter Stand: Build 263

**Build-Zuordnung beachten:** Diese zusätzlichen Änderungen sind für [CI-Lauf 263](https://github.com/Familiydevice/familydevice/actions/runs/40792117135) beschrieben. Der veröffentlichte QA-Download trägt Build 262. Aus den freigegebenen QA-Belegen ist nicht bestätigt, dass die nachfolgenden Einzel-App-Änderungen bereits in diesem Download enthalten sind. Für ihre gezielte Prüfung einen entsprechend dokumentierten späteren Stand verwenden.

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

<a id="v0-9-152"></a>
### 0.9.152 (Build 259)

**Kurz erklärt:** Limits und Zeitpläne lassen sich nach Stärke sortieren; die wirksame Regel wird angezeigt und „Ausblenden“ berücksichtigt die gesamte Bildschirmzeit.

**Wo anschauen:** Kind → „Limits → Priorität“; Home-Bildschirm des Kinder-iPhones.

_Veröffentlichter QA-Download: [v0.9.152](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.152), Build 259. Für Fehlerberichte müssen Version 0.9.152 und Build 259 aus der App genannt werden._

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

<a id="v0-9-151"></a>
### 0.9.151 (Build 258)

**Kurz erklärt:** Neuere Sofortsperren überstimmen frühere Freigaben; erreichte Tageslimits bleiben bestehen und „Mehr Zeit anfragen“ gibt sichtbare Rückmeldung.

**Wo anschauen:** Sofortaktionen, Tageslimit und Sperrbildschirm; Eltern-VPN entfällt vollständig.

_Veröffentlichter QA-Download: [v0.9.151](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.151), Build 258. Für Fehlerberichte müssen Version 0.9.151 und Build 258 aus der App genannt werden._

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

<a id="v0-9-150"></a>
### 0.9.150 (Build 257)

**Kurz erklärt:** Tageslimits stehen direkt auf der Startseite; Anfragen lassen sich durch Wischen bearbeiten und erledigte Einträge ausblenden. Limit-Zählung und Einrichtung wurden korrigiert.

**Wo anschauen:** Eltern-Startseite, Anfrageverlauf und Einrichtungsassistent.

_Veröffentlichter QA-Download: [v0.9.150](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.150), Build 257. Für Fehlerberichte müssen Version 0.9.150 und Build 257 aus der App genannt werden._

**Stand der Beschreibung:** Die freigegebenen Änderungsnotizen wurden zunächst für den Stand 255 ([CI-Lauf 255](https://github.com/Familiydevice/familydevice/actions/runs/40571835819)) geschrieben. Der verfügbare QA-Download trägt Build 257. Weitere Änderungen bis zu diesem Download sind nicht separat freigegeben beschrieben.

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

<a id="v0-9-149"></a>
### 0.9.149 (CI-Lauf 254; kein eigener QA-Download)

**Kurz erklärt:** WLAN und QR-Code werden beim Koppeln verständlicher erklärt; die Freigabe fürs lokale Netzwerk wird geprüft und Apple-Einstellungen werden schrittweise angeleitet.

**Wo anschauen:** „Kinder-iPhone hinzufügen“, „Mit Eltern-iPhone verbinden“ und „Schutz prüfen“.

_Für 0.9.149 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 254. Der nächste verfügbare Download ist [v0.9.150](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.150) mit Build 257; seine Versionshinweise zusätzlich beachten._

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

<a id="v0-9-148"></a>
### 0.9.148 (CI-Lauf 253; kein eigener QA-Download)

**Kurz erklärt:** Erneutes Koppeln über WLAN bleibt nach dem Entkoppeln nicht mehr bei „Verbinde …“ hängen; für die Code-Bestätigung bleibt mehr Zeit.

**Wo anschauen:** Kopplung über die Geräteliste; Vergleichscode auf beiden iPhones.

_Für 0.9.148 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 253. Der nächste verfügbare Download ist [v0.9.150](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.150) mit Build 257; seine Versionshinweise zusätzlich beachten._

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

<a id="v0-9-147"></a>
### 0.9.147 (Build 251)

**Kurz erklärt:** Die Datenschutztexte beschreiben kein Eltern-VPN mehr und wurden in allen App-Sprachen angepasst.

**Wo anschauen:** Profil → „Rechtliches → Datenschutz“.

_Veröffentlichter QA-Download: [v0.9.147](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.147), Build 251. Für Fehlerberichte müssen Version 0.9.147 und Build 251 aus der App genannt werden._

- **Datenschutztext passt zum Wegfall des Eltern-VPN.** Die
  Datenschutzerklärung beschreibt keine DNS-Messung auf dem Eltern-iPhone
  mehr. Die betreffenden Aussagen zu Filtern und DNS-Anbietern wurden in
  allen 24 Sprachen angepasst; die App enthält dieselben Texte wie die Website.
  Prüfen: Profil-Symbol → „Rechtliches“ → „Datenschutz“ öffnen, auch nach
  einem Sprachwechsel. Der Text muss laden und darf kein noch vorhandenes
  Eltern-VPN versprechen.

<a id="v0-9-146"></a>
### 0.9.146 (CI-Lauf 249; kein eigener QA-Download)

**Kurz erklärt:** Das VPN und die eigene Netzwerk-Messung auf dem Eltern-iPhone wurden entfernt; der Filter auf dem Kinder-iPhone bleibt erhalten.

**Wo anschauen:** Eltern-Profil und „Meine Nutzung“; Kinder-Netzwerk getrennt prüfen.

_Für 0.9.146 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 249. Der nächste verfügbare Download ist [v0.9.147](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.147) mit Build 251; seine Versionshinweise zusätzlich beachten._

- **VPN auf dem Eltern-iPhone entfernt.** Im Profil-Menü gibt es
  „VPN & Filter“ nicht mehr, unter „Meine Nutzung“ entfällt die eigene
  Netzwerk-Zeile. familydevice startet auf dem Eltern-iPhone kein eigenes
  VPN mehr. Der Netzwerkfilter auf dem Kinder-iPhone bleibt Teil des Schutzes.
  Prüfen auf echten Test-iPhones: Eltern-App öffnen und neu starten; kein
  VPN-Einrichtungsdialog, kein „VPN & Filter“-Menü. Auf dem Kinder-iPhone
  anschließend eine freigegebene und eine gesperrte Seite aufrufen und den
  dortigen Filter getrennt prüfen.

<a id="v0-9-145"></a>
### 0.9.145 (Build 248)

**Kurz erklärt:** Das Kinder-iPhone wird vor dem Koppeln fertig eingerichtet; jede Freigabe hat einen eigenen Knopf und iCloud-Mitteilungen werden beim Verbinden eingerichtet.

**Wo anschauen:** Einrichtung → Freigaben → „Schutz prüfen“ → Koppeln.

_Veröffentlichter QA-Download: [v0.9.145](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145), Build 248. Für Fehlerberichte müssen Version 0.9.145 und Build 248 aus der App genannt werden._

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

<a id="v0-9-144"></a>
### 0.9.144 (CI-Lauf 247; kein eigener QA-Download)

**Kurz erklärt:** Koppeln per QR-Code funktioniert auch ohne gemeinsames WLAN; beide iPhones bestätigen weiterhin denselben Vergleichscode.

**Wo anschauen:** „Mit Eltern-iPhone verbinden“ und „Kinder-iPhone hinzufügen → QR-Code scannen“.

_Für 0.9.144 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 247. Der nächste verfügbare Download ist [v0.9.145](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145) mit Build 248; seine Versionshinweise zusätzlich beachten._

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

<a id="v0-9-143"></a>
### 0.9.143 (CI-Lauf 246; kein eigener QA-Download)

**Kurz erklärt:** Der Sicherheitszähler berücksichtigt zusätzlich „QUIC unterbinden“ und zeigt bei allen eingeschalteten Schaltern „10 von 10“.

**Wo anschauen:** Kind → „Erweiterte Einstellungen → Sicherheit“.

_Für 0.9.143 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 246. Der nächste verfügbare Download ist [v0.9.145](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145) mit Build 248; seine Versionshinweise zusätzlich beachten._

- **Sicherheitszähler umfasst auch „QUIC unterbinden“.** Bei Kind →
  „Erweiterte Einstellungen“ → „Sicherheit“ zählt jetzt jeder dortige
  Schalter mit. Sind alle eingeschaltet, steht „10 von 10“.
  Prüfen: alle Schalter einschalten, dann „QUIC unterbinden“ aus- und wieder
  einschalten; der Zähler muss passend mitgehen. Die Anzeige lässt sich
  in der Simulation prüfen, die Netzwerkwirkung nur auf einem echten Gerät.

<a id="v0-9-142"></a>
### 0.9.142 (CI-Lauf 245; kein eigener QA-Download)

**Kurz erklärt:** Ein weiteres Eltern-iPhone lässt sich koppeln, während ein bereits verbundenes Eltern-iPhone in der Nähe ist.

**Wo anschauen:** Zusätzliches Eltern-iPhone koppeln und anschließend eine Regel ändern.

_Für 0.9.142 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 245. Der nächste verfügbare Download ist [v0.9.145](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145) mit Build 248; seine Versionshinweise zusätzlich beachten._

- **Erneutes Koppeln bleibt nicht bei „Verbinde …“ hängen.** Ein schon
  verbundenes Eltern-iPhone in der Nähe konnte die Verbindung zum neuen
  Eltern-iPhone stören.
  Prüfen auf echten Test-iPhones: ein vorhandenes Eltern-iPhone in der Nähe
  lassen und ein weiteres koppeln. Nach dem Vergleichscode müssen beide
  Kopplungsseiten fertig werden; anschließend vom neuen Eltern-iPhone
  eine Regel ändern und deren Ankunft auf dem Kinder-iPhone prüfen.

<a id="v0-9-141"></a>
### 0.9.141 (CI-Lauf 244; kein eigener QA-Download)

**Kurz erklärt:** Der Sicherheitszähler verwendet die richtige Gesamtzahl und zeigt für den damaligen Stand „9 von 9“ statt etwa „9 von 4“.

**Wo anschauen:** Kind → „Erweiterte Einstellungen → Sicherheit“.

_Für 0.9.141 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 244. Der nächste verfügbare Download ist [v0.9.145](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145) mit Build 248; seine Versionshinweise zusätzlich beachten._

- **Sicherheitszähler mit richtiger Gesamtzahl.** Bei Kind →
  „Erweiterte Einstellungen“ → „Sicherheit“ konnte „9 von 4“ stehen.
  Der Zähler berücksichtigt jetzt die zusätzlichen Sperrlisten und zeigt
  in dieser Version bei allen gezählten Schaltern „9 von 9“.
  Prüfen in der Simulation: die Filter und Sperrlisten nacheinander
  einschalten und den Zähler beobachten. Ab 0.9.143 zählt zusätzlich
  „QUIC unterbinden“ mit; dort lautet die Gesamtzahl 10.

<a id="v0-9-140"></a>
### 0.9.140 (CI-Lauf 243; kein eigener QA-Download)

**Kurz erklärt:** Nach vollständigem Entkoppeln wird der Bildschirmzeit-Zugriff zurückgegeben, damit sich die App wieder löschen lässt.

**Wo anschauen:** Letzte Eltern-Verbindung auf einem dafür vorgesehenen Testgerät entfernen.

_Für 0.9.140 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 243. Der nächste verfügbare Download ist [v0.9.145](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.145) mit Build 248; seine Versionshinweise zusätzlich beachten._

- **Nach vollständigem Entkoppeln wieder löschbar.** Nach
  „iPhone entkoppeln“ auf dem Kinder-iPhone beziehungsweise dem Entfernen
  der letzten Eltern-Verbindung wird auch der Bildschirmzeit-Zugriff
  zurückgegeben. Zuvor konnte iOS weiter „Deinstallieren nicht zulässig“
  melden.
  Prüfen nur mit dafür vorgesehenen echten Test-iPhones: die letzte
  Verbindung entfernen, aufgehobene Sperren prüfen und familydevice
  anschließend löschen. Dafür die Testeinrichtung vorher dokumentieren;
  die Simulation kann diese iOS-Berechtigung nicht prüfen.

<a id="v0-9-139"></a>
### 0.9.139 (Build 242)

**Kurz erklärt:** Ein neu installiertes Eltern-iPhone kann seine alte Verbindung ersetzen, während Regeln und Limits erhalten bleiben.

**Wo anschauen:** Kinder-iPhone → Eltern-PIN → „Gerät → Eltern-iPhones → Neu koppeln“.

_Veröffentlichter QA-Download: [v0.9.139](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.139), Build 242. Für Fehlerberichte müssen Version 0.9.139 und Build 242 aus der App genannt werden._

- **Neu installiertes Eltern-iPhone wieder verbinden.** Auf dem
  Kinder-iPhone unter Eltern-PIN → „Gerät“ → „Eltern-iPhones“ gibt es
  neben jedem Eltern-iPhone „Neu koppeln“. Die neue Verbindung ersetzt
  die alte erst, wenn das Koppeln erfolgreich war; die Regeln bleiben.
  Prüfen auf echten Test-iPhones: familydevice auf einem Eltern-iPhone
  löschen und neu einrichten, beim Kind den bisherigen Eintrag mit
  „Neu koppeln“ wählen und den Ablauf abschließen. Es soll ein passender
  Eintrag übrig bleiben, Regeln und Limits bleiben erhalten. Auch einen
  abgebrochenen Kopplungsversuch prüfen: die alte Verbindung bleibt bestehen.

<a id="v0-9-138"></a>
### 0.9.138 (CI-Lauf 241; kein eigener QA-Download)

**Kurz erklärt:** Lange ausbleibende Eltern-Verbindungen werden erkannt; das Kind sieht eine Warnung und bei vollständigem Ausfall einen Schutzstatus mit Möglichkeiten zum erneuten Koppeln.

**Wo anschauen:** Kinder-Startseite; Langzeittest mit echten Test-iPhones.

_Für 0.9.138 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 241. Der nächste verfügbare Download ist [v0.9.139](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.139) mit Build 242; seine Versionshinweise zusätzlich beachten._

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

<a id="v0-9-137"></a>
### 0.9.137 (CI-Lauf 240; kein eigener QA-Download)

**Kurz erklärt:** „Mehr Zeit anfragen“ kann direkt vom Sperrbildschirm eine 30-Minuten-Anfrage senden und berücksichtigt bereits offene oder gerade abgelehnte Anfragen.

**Wo anschauen:** Sperrbildschirm einer blockierten App und Anfrage auf dem Eltern-iPhone.

_Für 0.9.137 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 240. Der nächste verfügbare Download ist [v0.9.139](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.139) mit Build 242; seine Versionshinweise zusätzlich beachten._

- **Vom Sperrbildschirm direkt mehr Zeit anfragen.** „Mehr Zeit anfragen“
  sendet eine Anfrage über 30 Minuten an die Eltern, ohne dass das Kind
  familydevice zuerst selbst öffnen muss. Das Kind bekommt „Anfrage
  gesendet“; bei einer schon offenen oder gerade abgelehnten Anfrage
  erscheint ein passender Hinweis.
  Prüfen auf echten Test-iPhones: eine App sperren, auf ihrem Sperrbildschirm
  mehr Zeit anfragen und die Ankunft bei den Eltern prüfen. familydevice
  danach öffnen: es darf keine zweite identische Anfrage entstehen.
  Außerdem eine Wiederholung nach Ablehnung prüfen.

<a id="v0-9-136"></a>
### 0.9.136 (CI-Lauf 239; kein eigener QA-Download)

**Kurz erklärt:** Erlaubte Social-Media-Profile öffnen nicht das ganze Netzwerk; aufgebrauchte Bildschirmzeit und vorgemerkte Anfragen werden verständlicher behandelt.

**Wo anschauen:** Safari, Kinder-Startseite und „Mehr Zeit anfragen“.

_Für 0.9.136 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 239. Der nächste verfügbare Download ist [v0.9.139](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.139) mit Build 242; seine Versionshinweise zusätzlich beachten._

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

<a id="v0-9-135"></a>
### 0.9.135 (Build 238)

**Kurz erklärt:** Die Einrichtung erklärt Nutzen und Nachteile jeder Freigabe; ein Aufenthalt beginnt nach Verlassen und Rückkehr mit der neuen Ankunftszeit.

**Wo anschauen:** Einrichtung auf beiden iPhones und Ortsanzeige beim Kind.

_Veröffentlichter QA-Download: [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135), Build 238. Für Fehlerberichte müssen Version 0.9.135 und Build 238 aus der App genannt werden._

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

<a id="v0-9-134"></a>
### 0.9.134 (CI-Lauf 237; kein eigener QA-Download)

**Kurz erklärt:** Eltern können für soziale Netzwerke einzelne Profile dauerhaft erlauben; das Kind kann weitere Profile anfragen.

**Wo anschauen:** Kind → „Soziale Netzwerke“; erlaubte und gesperrte Profile in Safari.

_Für 0.9.134 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 237. Der nächste verfügbare Download ist [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) mit Build 238; seine Versionshinweise zusätzlich beachten._

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

<a id="v0-9-133"></a>
### 0.9.133 (CI-Lauf 236; kein eigener QA-Download)

**Kurz erklärt:** Der Tor-Schutz berücksichtigt auch Brücken und blendet bekannte Tor-, VPN- und Proxy-Apps auf dem Kinder-iPhone aus.

**Wo anschauen:** Sicherheit → „VPN, Proxy & Tor blockieren“ auf einem Test-iPhone.

_Für 0.9.133 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 236. Der nächste verfügbare Download ist [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) mit Build 238; seine Versionshinweise zusätzlich beachten._

- **Tor auch über Brücken gesperrt.** Mit „VPN, Proxy & Tor blockieren“
  verschwinden auf dem Kinder-iPhone 48 Tor-, VPN- und Proxy-Apps vom
  Home-Bildschirm (Onion Browser, Orbot, OrNET, NordVPN, Proton VPN, Psiphon,
  WireGuard, Shadowrocket, Opera, Aloha …), und ihre Verbindungen werden
  abgebrochen – auch die getarnten Tor-Brücken (obfs4, Snowflake).
  Prüfen: App Store kurz freigeben, Onion Browser oder Orbot installieren,
  Schalter an – die App verschwindet vom Home-Bildschirm; Schalter aus – sie
  ist wieder da. Mit Schalter an und schon laufendem Orbot-VPN: kein Internet
  über Orbot.

<a id="v0-9-132"></a>
### 0.9.132 (CI-Lauf 235; kein eigener QA-Download)

**Kurz erklärt:** Eine neue Sperrliste erfasst VPN, Proxy und Tor; die Pornografie-Liste berücksichtigt zusätzlich Suchmaschinen ohne sichere Suche.

**Wo anschauen:** „Sicherheit“ und Netzwerk → „Regeln“.

_Für 0.9.132 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 235. Der nächste verfügbare Download ist [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) mit Build 238; seine Versionshinweise zusätzlich beachten._

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

<a id="v0-9-131"></a>
### 0.9.131 (CI-Lauf 234; kein eigener QA-Download)

**Kurz erklärt:** Der Werbefilter erfasst mehr Pop-ups und Weiterleitungen; eine weitere Sperrliste richtet sich gegen Raubkopien und illegales Streaming.

**Wo anschauen:** Werbefilter und Sperrlisten in „Sicherheit“.

_Für 0.9.131 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 234. Der nächste verfügbare Download ist [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) mit Build 238; seine Versionshinweise zusätzlich beachten._

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

<a id="v0-9-130"></a>
### 0.9.130 (CI-Lauf 233; kein eigener QA-Download)

**Kurz erklärt:** Neue Schalter blockieren Pornografie, Pillen und Drogen sowie Glücksspiel und Poker; ausdrücklich erlaubte Domains bleiben ausgenommen.

**Wo anschauen:** „Sicherheit“, Netzwerk → „Regeln“ und damaliges Eltern-Menü „VPN & Filter“.

_Für 0.9.130 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 233. Der nächste verfügbare Download ist [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) mit Build 238; seine Versionshinweise zusätzlich beachten._

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

<a id="v0-9-129"></a>
### 0.9.129 (CI-Lauf 232; kein eigener QA-Download)

**Kurz erklärt:** Eltern können offene Anfragen durch Wischen erlauben oder ablehnen; Antippen öffnet weiter die ausführliche Entscheidung.

**Wo anschauen:** Anfragen auf der Familien- und Kinderseite des Eltern-iPhones.

_Für 0.9.129 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 232. Der nächste verfügbare Download ist [v0.9.135](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.135) mit Build 238; seine Versionshinweise zusätzlich beachten._

- **Anfragen mit Wischen beantworten.** Offene Anfragen auf der Familienseite
  und der Kinderseite: nach rechts wischen erlaubt für die angefragte Dauer,
  nach links lehnt ab. Antippen öffnet weiter das Blatt (kürzere Dauer,
  Notiz). Die Überschriften „Offene Anfragen“/„Anfragen“ sind weg.
  Prüfen: vom Kinder-iPhone eine Anfrage schicken, auf dem Eltern-iPhone
  wischen; das Kind bekommt die Antwort.

<a id="v0-9-128"></a>
### 0.9.128 (Build 231)

**Kurz erklärt:** Das damalige Eltern-VPN startet erst nach bewusstem Einschalten; bei einer frischen Einrichtung erscheint kein automatischer VPN-Dialog mehr.

**Wo anschauen:** Damals: Profil → „VPN & Filter“ und Netzwerk-Seite.

_Veröffentlichter QA-Download: [v0.9.128](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.128), Build 231. Für Fehlerberichte müssen Version 0.9.128 und Build 231 aus der App genannt werden._

- **VPN auf dem Eltern-iPhone erst nach Einschalten.** Das Eltern-iPhone
  startet die Netzwerk-Messung (VPN) nicht mehr von selbst, und die Frage
  „Werbung & Tracker blockieren?“ beim ersten Start ist weg. Eingeschaltet
  wird unter Profil → „VPN & Filter“ oder auf der Netzwerk-Seite; wer es
  schon an hatte, behält es.
  Prüfen: App frisch installieren – kein VPN-Hinweis von iOS; Schalter an –
  iOS fragt nach dem VPN.

<a id="v0-9-127"></a>
### 0.9.127 (Build 230)

**Kurz erklärt:** Die Nutzungs-Zeitleiste zeigt Tage mit Sommer- oder Winterzeit bei den richtigen Uhrzeiten; die Sperrregeln selbst waren nicht betroffen.

**Wo anschauen:** Tagesverlauf an einem Tag mit Zeitumstellung.

_Veröffentlichter QA-Download: [v0.9.127](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.127), Build 230. Für Fehlerberichte müssen Version 0.9.127 und Build 230 aus der App genannt werden._

_Zuerst als Build 229 erstellt; der veröffentlichte QA-Download wurde auf Build 230 aktualisiert._

- **Nutzungs-Zeitleiste an Tagen mit Zeitumstellung.** Am Tag der Umstellung
  auf Sommer- oder Winterzeit (etwa am 25. Oktober 2026) zeigte die
  Zeitleiste der Nutzung alles eine Stunde verschoben: eine Viertelstunde um
  16:30 stand bei 15:30, die Nachtruhe „bis 07:00“ endete um 06:00. Jetzt
  steht alles bei seiner Uhrzeit. Die Sperren selbst waren nicht betroffen.
  Prüfen: die Nutzungs-Zeitleiste eines Kindes für einen Tag mit
  Zeitumstellung ansehen; die Nachtruhe beginnt und endet bei den
  eingestellten Uhrzeiten.

<a id="v0-9-126"></a>
### 0.9.126 (Build 225)

**Kurz erklärt:** Der Anfrage-Knopf auf Safaris Internet-Sperrseite führt über die Website zurück in die passende Internet-Anfrage der App.

**Wo anschauen:** Safari-Sperrseite → „Zeit anfragen“ → familydevice.

_Veröffentlichter QA-Download: [v0.9.126](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.126), Build 225. Für Fehlerberichte müssen Version 0.9.126 und Build 225 aus der App genannt werden._

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

<a id="v0-9-125"></a>
### 0.9.125 (Build 224)

**Kurz erklärt:** Internetfreigaben lassen getrennte App- und Website-Sperren bestehen; gültige Gesamtfreigaben und „Alles frei bis …“ werden konsistenter berücksichtigt.

**Wo anschauen:** Internet-Anfrage während einer Nachtruhe, Gesamtfreigabe und Statuszeilen.

_Veröffentlichter QA-Download: [v0.9.125](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.125), Build 224. Für Fehlerberichte müssen Version 0.9.125 und Build 224 aus der App genannt werden._

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

<a id="v0-9-124"></a>
### 0.9.124 (Build 223)

**Kurz erklärt:** Als harmlos markierte, immer erlaubte Apps behalten ihre Verbindung auch bei einer Sperre des gesamten Internets.

**Wo anschauen:** „Immer erlaubt“ und die Kachel „Internet“.

_Veröffentlichter QA-Download: [v0.9.124](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.124), Build 223. Für Fehlerberichte müssen Version 0.9.124 und Build 223 aus der App genannt werden._

- **Harmlose Apps kommen durch die Internetsperre.** Apps, die ihr auf ihrer
  Seite als harmlos markiert habt („Immer erlaubt“), behalten ihre
  Verbindung, auch wenn „Ganzes Internet sperren“ gerade gilt – so wie sie
  schon durch jede andere Sperre gehen. Prüfen: eine App als harmlos
  markieren, Internetsperre setzen, die App lädt weiter, andere nicht.
- Im Editor der Internetsperre („Internet“-Kachel antippen) steht das jetzt
  unten: harmlose Apps, iCloud, Push und familydevice bleiben erreichbar, eine
  erlaubte Anfrage lässt das Internet so lange durch.

<a id="v0-9-123"></a>
### 0.9.123 (CI-Lauf 222; kein eigener QA-Download)

**Kurz erklärt:** Zusätzliche Bildschirmzeit gibt das ganze iPhone frei; Zeitpläne erscheinen als Limit-Kacheln und auch ausgeblendete Apps sowie das Internet können angefragt werden.

**Wo anschauen:** „Limits“, Kinder-Startseite und Internet-Sperrseite.

_Für 0.9.123 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 222. Der nächste verfügbare Download ist [v0.9.124](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.124) mit Build 223; seine Versionshinweise zusätzlich beachten._

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

<a id="v0-9-122"></a>
### 0.9.122 (Build 221)

**Kurz erklärt:** Nicht mehr verwendete Eltern-Verbindungen können einzeln entfernt werden; eine neu installierte Eltern-App startet mit einer frischen Kopplung.

**Wo anschauen:** Kinder-iPhone → Eltern-Code → „Gerät → Eltern-iPhones“.

_Veröffentlichter QA-Download: [v0.9.122](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.122), Build 221. Für Fehlerberichte müssen Version 0.9.122 und Build 221 aus der App genannt werden._

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

<a id="v0-9-121"></a>
### 0.9.121 (CI-Lauf 220; kein eigener QA-Download)

**Kurz erklärt:** Limits, Internetsperren und Zeitpläne sind zentral erreichbar; „+ Limit“ ist der gemeinsame Einstieg und weitere Optionen liegen unter „Erweiterte Einstellungen“.

**Wo anschauen:** Kinderseite → „Erweiterte Einstellungen“, Limit-Kacheln und „+ Limit“.

_Für 0.9.121 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 220. Der nächste verfügbare Download ist [v0.9.122](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.122) mit Build 221; seine Versionshinweise zusätzlich beachten._

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

<a id="v0-9-120"></a>
### 0.9.120 (Build 219)

**Kurz erklärt:** Einstellungen des Eltern-iPhones und des Kindes sind getrennt; das damalige Eltern-VPN und seine Filter liegen im Profil-Menü.

**Wo anschauen:** Eltern-Profil, damaliges „VPN & Filter“ und Kinder-Einstellungen.

_Veröffentlichter QA-Download: [v0.9.120](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.120), Build 219. Für Fehlerberichte müssen Version 0.9.120 und Build 219 aus der App genannt werden._

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

<a id="v0-9-119"></a>
### 0.9.119 (Build 218)

**Kurz erklärt:** Das damalige Eltern-VPN, Werbefilter und Phishing-Schutz stehen als zusammengehöriger Abschnitt mit gekoppelten Schaltern bereit.

**Wo anschauen:** Damals hinter dem Zahnrad; ab 0.9.120 im Profil-Menü.

_Veröffentlichter QA-Download: [v0.9.119](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.119), Build 218. Für Fehlerberichte müssen Version 0.9.119 und Build 218 aus der App genannt werden._

- Erster Stand von VPN, Werbefilter und Phishing-Schutz als ein Abschnitt mit
  gekoppelten Schaltern – noch hinter dem Zahnrad, in 0.9.120 ins Profil-Menü
  verschoben. Der Schalter auf der Netzwerk-Seite heißt „VPN“ statt
  „DNS-Messung“, die Regeln-Seite der Eltern zeigt denselben Abschnitt.

Prüfen auf einem echten Eltern-iPhone mit dieser Version: die gekoppelten VPN-
und Filter-Schalter öffnen, ihren Zustand ändern und danach die Netzwerk-Seite
kontrollieren.

<a id="v0-9-118"></a>
### 0.9.118 (Build 217)

**Kurz erklärt:** Ein zunächst aktiver Filter blendet Apple-Apps, Erweiterungen und harmlose Apps in den Nutzungslisten aus; ein Tipp zeigt sie wieder.

**Wo anschauen:** Kinderseite → Apps → „Jetzt“ und „Heute“.

_Veröffentlichter QA-Download: [v0.9.118](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.118), Build 217. Für Fehlerberichte müssen Version 0.9.118 und Build 217 aus der App genannt werden._

- In den Apps-Listen („Jetzt“ und „Heute“) ist der Filter ein Symbol, das
  standardmäßig an ist: Es blendet Apples Apps, Erweiterungen anderer Apps und
  als harmlos markierte Apps aus. Ein Tipp zeigt alle.

Prüfen in der Simulation: auf der Kinderseite zwischen „Jetzt“ und „Heute“
wechseln und jeweils den Filter umschalten. Die zusätzlichen Apps sollen
erscheinen und wieder verschwinden.

<a id="v0-9-117"></a>
### 0.9.117 (Build 216)

**Kurz erklärt:** „Jetzt“ und „Heute“ verbergen dieselben harmlosen Apps; eine Erklärung nennt den jeweiligen Zeitraum und die Datenquelle.

**Wo anschauen:** Apps-Listen und das „i“ bei der Apps-Überschrift.

_Veröffentlichter QA-Download: [v0.9.117](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.117), Build 216. Für Fehlerberichte müssen Version 0.9.117 und Build 216 aus der App genannt werden._

- Als harmlos markierte Apps bleiben auch aus Apples Listen draußen, „Jetzt“
  und „Heute“ verbergen dieselben Apps. Das „i“ im Apps-Kopf erklärt: „Jetzt“ =
  die letzten 15 Minuten, „Heute“ = der ganze Tag aus Apples Bildschirmzeit.

Prüfen auf einem echten Test-iPhone: eine als harmlos markierte App in den
Listen kontrollieren und das „i“ neben der Apps-Überschrift öffnen. Beide
Zeiträume müssen verständlich erklärt sein.

<a id="v0-9-116"></a>
### 0.9.116 (Build 215)

**Kurz erklärt:** Tageslimits können für jeden Wochentag oder getrennt fürs Wochenende eingestellt werden; Orts- und Aktivitätsanzeigen wurden angepasst.

**Wo anschauen:** Limit-Editor → „Woche“, Tagesverlauf und „Bewegung & Orte“.

_Veröffentlichter QA-Download: [v0.9.116](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.116), Build 215. Für Fehlerberichte müssen Version 0.9.116 und Build 215 aus der App genannt werden._

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

<a id="v0-9-115"></a>
### 0.9.115 (Build 214)

**Kurz erklärt:** Häufige Aktionen sind mit wenigen Schritten erreichbar; bei nur einem Kind öffnet dessen Seite direkt und die Ortsanzeige ist präsenter.

**Wo anschauen:** Startseite, Kinderseite, Profil und erweiterte Einstellungen.

_Veröffentlichter QA-Download: [v0.9.115](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.115), Build 214. Für Fehlerberichte müssen Version 0.9.115 und Build 214 aus der App genannt werden._

- **Zwei-Tipp-Regel:** Alltägliches liegt auf der Kinderseite, der Rest unter
  „Erweiterte Einstellungen“ (Zahnrad). Mit einem Kind ist dessen Seite die
  Startseite, die Familienliste gibt es ab zwei Kindern.
- Die Bildschirmzeit-Karte und die Familienzeile sagen, wo das Kind ist
  („Schule seit 08:12“). Das Profil-Menü enthält den Simulations-Schalter und
  „Alle Sperren aufheben“ direkt.

Prüfen in der Simulation: Familien mit einem und mehreren Kindern ansehen,
dann von der Kinderseite die erweiterten Einstellungen und das Profil-Menü
öffnen.

<a id="v0-9-114"></a>
### 0.9.114 (Build 213)

**Kurz erklärt:** Der Tagesverlauf trennt Apples Nutzungsdaten von der Netzwerk-Schätzung; App-Seiten beginnen mit Freigeben, Sperren und Ausblenden.

**Wo anschauen:** Tagesverlauf, „Bewegung & Orte“ und einzelne App-Seite.

_Veröffentlichter QA-Download: [v0.9.114](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.114), Build 213. Für Fehlerberichte müssen Version 0.9.114 und Build 213 aus der App genannt werden._

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

<a id="v0-9-113"></a>
### 0.9.113 (Build 212)

**Kurz erklärt:** „Heute“ zeigt Apples Bildschirmzeit, „Jetzt“ bleibt die Netzwerk-Schätzung; längere Verbindungen und verständliche App-Namen werden berücksichtigt.

**Wo anschauen:** Kinderseite → Apps → „Heute“ und „Jetzt“.

_Veröffentlichter QA-Download: [v0.9.113](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.113), Build 212. Für Fehlerberichte müssen Version 0.9.113 und Build 212 aus der App genannt werden._

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

<a id="v0-9-112"></a>
### 0.9.112 (Build 211)

**Kurz erklärt:** Netzwerkverkehr bei gesperrtem Bildschirm erhöht die Datenmenge, aber nicht mehr die geschätzten Nutzungsminuten oder Öffnungen.

**Wo anschauen:** Apps-Anzeige und Erklärung auf der Kinderseite; Sperren des Test-iPhones.

_Veröffentlichter QA-Download: [v0.9.112](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.112), Build 211. Für Fehlerberichte müssen Version 0.9.112 und Build 211 aus der App genannt werden._

- **Gesperrter Bildschirm zählt keine zusätzlichen App-Minuten.**
  Hintergrundverkehr bei gesperrtem iPhone erhöht die gemessene Datenmenge,
  aber keine Nutzungsminuten oder Öffnungen mehr. Das „i“ beim Apps-Abschnitt
  erklärt, warum die Netzwerk-Schätzung trotzdem von der Bildschirmzeit
  abweichen kann.
  Prüfen auf einem echten Kinder-iPhone: eine App nutzen, das iPhone
  anschließend mit weiterlaufendem Hintergrundverkehr sperren und die
  gemessenen App-Minuten danach vergleichen. Zusätzlich den Erklärungstext
  auf der Kinderseite öffnen.

<a id="v0-9-111"></a>
### 0.9.111 (Build 210)

**Kurz erklärt:** Die Bildschirmzeit-Karte zeigt die angerechnete Zeit am Tageslimit; die gemessene entsperrte Zeit wird getrennt angezeigt.

**Wo anschauen:** Kinderseite und Familienübersicht.

_Veröffentlichter QA-Download: [v0.9.111](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.111), Build 210. Für Fehlerberichte müssen Version 0.9.111 und Build 210 aus der App genannt werden._

- **Bildschirmzeit-Karte zeigt den Zähler, der das Limit entscheidet.**
  Auf der Kinderseite und in der Familienübersicht steht die angerechnete
  Nutzung neben dem Tageslimit. Die über den Netzwerkfilter gemessene
  entsperrte Zeit steht getrennt, etwa „3 h 22 entsperrt“.
  Prüfen auf einem echten Kinder-iPhone mit Tageslimit und „Immer erlaubt“:
  beide Werte ansehen. Die Zeit am Limit muss zum Sperrstatus passen;
  die entsperrte Zeit darf unabhängig davon höher sein.

<a id="v0-9-110"></a>
### 0.9.110 (CI-Lauf 209; kein eigener QA-Download)

**Kurz erklärt:** Das Simulator-Paket wurde verkleinert und enthält neutralisierte Build-Pfade; es gibt keinen eigenen veröffentlichten QA-Download.

**Wo anschauen:** Installation und Simulation mit dem nächsten verfügbaren Download.

_Für 0.9.110 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 209. Der nächste verfügbare Download ist [v0.9.111](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.111) mit Build 210; seine Versionshinweise zusätzlich beachten._

- **Kleineres Simulator-Paket.** Der Simulator-Build wurde von etwa
  42 auf etwa 33 MB verkleinert; Pfade des Build-Rechners werden neutralisiert.
  Prüfen mit dem nächsten verfügbaren QA-Download: normal installieren,
  starten und die Simulation öffnen. Die Seiten müssen sich weiterhin
  vollständig bedienen lassen.

<a id="v0-9-109"></a>
### 0.9.109 (Build 208)

**Kurz erklärt:** Der Umschalter „Jetzt“ erscheint in der gewählten App-Sprache.

**Wo anschauen:** Kinderseite → Apps; beispielsweise auf Englisch öffnen.

_Veröffentlichter QA-Download: [v0.9.109](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.109), Build 208. Für Fehlerberichte müssen Version 0.9.109 und Build 208 aus der App genannt werden._

- **„Jetzt“ ist übersetzt.** Der Umschalter „Jetzt“ neben „Heute“ auf
  der Kinderseite erscheint jetzt in der gewählten App-Sprache statt
  überall auf Deutsch.
  Prüfen in der Simulation: die App etwa auf Englisch oder Französisch
  öffnen und beide Umschalter sowie die zugehörigen App-Listen ansehen.

<a id="v0-9-108"></a>
### 0.9.108 (Build 207)

**Kurz erklärt:** Fertige Simulator-Builds werden als versionierte Releases und über „Neuester Build“ bereitgestellt.

**Wo anschauen:** QA-Download, Versionsanzeige und Simulation.

_Veröffentlichter QA-Download: [v0.9.108](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.108), Build 207. Für Fehlerberichte müssen Version 0.9.108 und Build 207 aus der App genannt werden._

- **Simulator-Downloads erscheinen als Releases.** Die Veröffentlichung
  im QA-Repository wurde vervollständigt, damit der fertige Build als
  versionierter Download und über den Link „Neuester Build“ erreichbar ist.
  Prüfen: den Download dieser Version auf einem Test-Mac installieren und
  in der App Version 0.9.108 mit Build 207 kontrollieren; anschließend die
  Simulation öffnen.

<a id="v0-9-107"></a>
### 0.9.107 (CI-Lauf 206; kein eigener QA-Download)

**Kurz erklärt:** Die automatische Übertragung der Simulator-Builds ins QA-Repository wurde weiter eingerichtet.

**Wo anschauen:** Bereitstellung und Installation des nächsten verfügbaren Downloads.

_Für 0.9.107 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 206. Der nächste verfügbare Download ist [v0.9.108](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.108) mit Build 207; seine Versionshinweise zusätzlich beachten._

- **Übertragung der QA-Builds eingerichtet.** Die automatische
  Bereitstellung im QA-Repository wurde weiter eingerichtet.
  Prüfen mit dem nächsten verfügbaren QA-Download: Installation und Start
  nach README durchführen und die angezeigte Version mit dem gewählten
  Release vergleichen.

<a id="v0-9-106"></a>
### 0.9.106 (CI-Lauf 205; kein eigener QA-Download)

**Kurz erklärt:** Automatische Simulator-Builds mit derselben Build-Nummer wie bei TestFlight wurden vorbereitet.

**Wo anschauen:** QA-Veröffentlichung; Fortsetzung in 0.9.107 und 0.9.108.

_Für 0.9.106 gibt es in den veröffentlichten QA-Releases keinen eigenen Download. Dokumentierter Stand: CI-Lauf 205. Der nächste verfügbare Download ist [v0.9.108](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.108) mit Build 207; seine Versionshinweise zusätzlich beachten._

- **Automatische Simulator-Builds vorbereitet.** Neue Builds sollen
  im QA-Repository mit derselben Build-Nummer wie bei TestFlight erscheinen.
  Die Einrichtung der Veröffentlichung wurde in 0.9.107 und 0.9.108
  vervollständigt.
  Prüfen mit dem nächsten verfügbaren QA-Download: den Build auf einem
  Test-Mac installieren und Version sowie Build-Nummer kontrollieren.

<a id="v0-9-105"></a>
### 0.9.105 (Build 204)

**Kurz erklärt:** Der erste veröffentlichte Simulator-Build erlaubt die Eltern-/Kind-Simulation und einen Tagesverlauf hinter der Bildschirmzeit-Karte.

**Wo anschauen:** Simulation → Kinderseite → Bildschirmzeit-Karte → Tagesverlauf.

_Veröffentlichter QA-Download: [v0.9.105](https://github.com/Familiydevice/familydevice-qa/releases/tag/v0.9.105), Build 204. Für Fehlerberichte müssen Version 0.9.105 und Build 204 aus der App genannt werden._

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
