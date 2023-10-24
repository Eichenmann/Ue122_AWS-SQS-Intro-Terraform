# Aufgabe 1: Verständnis

1. Was ist Amazon Simple Queue Service (SQS)?
Amazon Simple Queue Service (SQS) ist ein gehosteter Warteschlangendienst zur Integration und Entkopplung von verteilten Softwaresystemen und -komponenten.

2. Welchen Zweck erfüllt SQS in Microservices-Architekturen?
SQS ermöglicht in Microservices-Architekturen die Entkopplung von Komponenten, was zur Unabhängigkeit und Skalierbarkeit der einzelnen Microservices beiträgt.

3. Warum ist die Entkopplung zwischen Diensten wichtig?
Diese Entkopplung ist wichtig, da sie die einzelnen Microservices voneinander unabhängig macht und es ihnen ermöglicht, unabhängig voneinander zu skalieren. Dies erhöht die Gesamtstabilität und Fehlertoleranz des Systems.

4. Welche Arten von Kommunikationsarten zwischen Services gibt es?
Die Kommunikationsarten zwischen Services umfassen In-Memory-Kommunikation und Kommunikation über HTTP Rest APIs.

5. Was sind die Vorteile der In-Memory-Kommunikation zwischen Services?
Die In-Memory-Kommunikation ist extrem schnell, da sie direkt im Arbeitsspeicher des Servers stattfindet.

6. Welche Vorteile bietet die Verwendung von HTTP Rest APIs für die Kommunikation zwischen Services?
HTTP Rest APIs ermöglichen eine standardisierte, plattformunabhängige Kommunikation zwischen Services und sind einfach zu verwenden und zu debuggen.

7. Welche Funktion hat ein Messaging Broker in der Kommunikation zwischen Services?
Ein Messaging Broker fungiert als Vermittler für die Nachrichtenübertragung und stellt sicher, dass Nachrichten korrekt von den sendenden zu den empfangenden Diensten geleitet werden.

8. Was bedeutet "Buffering" im Zusammenhang mit SQS?
"Buffering" in SQS bezieht sich auf das Zwischenspeichern von Nachrichten in der Warteschlange, was dazu beiträgt, dass keine Nachrichten verloren gehen und eine gleichmäßigere Lastverteilung ermöglicht wird.

9. Welche Vorteile bietet das Buffering von Nachrichten?
Dies hat den Vorteil, dass Nachrichten nicht verloren gehen, wenn der empfangende Dienst vorübergehend nicht verfügbar ist. Außerdem ermöglicht das Buffering von Nachrichten eine gleichmäßigere Lastverteilung, indem Nachrichtenspitzen abgefangen und über einen längeren Zeitraum verteilt werden können. 

10. Welche Arten von Warteschlangen bietet SQS?
SQS bietet zwei Arten von Warteschlangen: Standardwarteschlangen und FIFO-Warteschlangen. Standardwarteschlangen versuchen, die Reihenfolge der Nachrichten beizubehalten, während FIFO-Warteschlangen die Reihenfolge der Nachrichten beibehalten, in der die ursprünglichen Nachrichten gesendet und empfangen wurden.

11. Was ist der Hauptunterschied zwischen FIFO- und Standard-Warteschlangen in SQS?
Der Hauptunterschied zwischen FIFO- und Standard-Warteschlangen in SQS liegt in der Art und Weise, wie Nachrichten behandelt werden. Standard-Warteschlangen bieten eine hohe Durchsatzleistung und eine mindestens einmalige Zustellung, aber Nachrichten können mehrmals und in einer anderen Reihenfolge geliefert werden. FIFO-Warteschlangen hingegen garantieren, dass Nachrichten genau einmal und in der Reihenfolge geliefert werden, in der sie gesendet wurden.

12. Wie würde das Publisher-Consumer-Modell in SQS verwendet?
Im Publisher-Consumer-Modell in SQS würde ein Publisher (Produzent) Nachrichten an die Warteschlange senden und ein Consumer (Konsument) würde diese Nachrichten aus der Warteschlange abrufen und verarbeiten. Nach der Verarbeitung würde der Consumer die Nachricht aus der Warteschlange löschen, um zu verhindern, dass sie erneut verarbeitet wird.

13. Welche Rolle spielt die Sichtbarkeitszeit (Visibility Timeout) bei SQS?
Die Sichtbarkeitszeit (Visibility Timeout) in SQS bestimmt die Zeitspanne, in der eine Nachricht nach dem Abrufen aus der Warteschlange unsichtbar bleibt. Während dieser Zeit kann die Nachricht von keinem anderen Consumer abgerufen werden. Dies gibt dem ursprünglichen Consumer Zeit, die Nachricht zu verarbeiten und aus der Warteschlange zu löschen.

14. Warum ist es wichtig, Nachrichten in der Warteschlange unsichtbar zu machen?
Es ist wichtig, Nachrichten in der Warteschlange unsichtbar zu machen, um doppelte Verarbeitung zu verhindern. Wenn eine Nachricht abgerufen wird, aber nicht aus der Warteschlange gelöscht wird, könnte sie erneut abgerufen und verarbeitet werden, sobald der Visibility Timeout abgelaufen ist. Durch das Unsichtbarmachen der Nachricht während der Verarbeitung wird sichergestellt, dass jede Nachricht nur einmal verarbeitet wird.

15. Wie erfolgt die Kostenberechnung für die Verwendung von SQS?
Die Kosten für die Verwendung von SQS werden hauptsächlich auf der Grundlage der Anzahl der Anfragen berechnet, die Sie an den Dienst senden. Dies umfasst das Senden, Empfangen und Löschen von Nachrichten. Zusätzliche Kosten können für die Datenübertragung anfallen, insbesondere wenn diese außerhalb der AWS-Regionen stattfindet.

16. Welche Sicherheitsmaßnahmen bietet SQS?
SQS bietet mehrere Sicherheitsmaßnahmen, darunter die Verschlüsselung von Nachrichten in Ruhe und während der Übertragung, Zugriffskontrollen über AWS Identity and Access Management (IAM) und die Möglichkeit, VPC-Endpunkte zu verwenden, um den Datenverkehr zwischen Ihrer Anwendung und SQS innerhalb des AWS-Netzwerks zu halten.

17. Welche Art von Queue eignet sich besser für die Verarbeitung von Nachrichten in der Reihenfolge ihres Eingangs?
FIFO-Warteschlangen eignen sich besser für die Verarbeitung von Nachrichten in der Reihenfolge ihres Eingangs, da sie die strikte Reihenfolge der Nachrichten beibehalten.

18. Warum ist es wichtig, Nachrichten aus der Warteschlange zu löschen, nachdem sie erfolgreich verarbeitet wurden?
Es ist wichtig, Nachrichten aus der Warteschlange zu löschen, nachdem sie erfolgreich verarbeitet wurden, um zu verhindern, dass sie erneut verarbeitet werden. Wenn eine Nachricht nicht gelöscht wird, wird sie nach Ablauf des Visibility Timeout wieder sichtbar und kann von einem Consumer erneut abgerufen werden.

19. Was sind die potenziellen Anwendungsfälle, bei denen SQS besonders nützlich ist?
SQS kann in vielen Szenarien nützlich sein, insbesondere wenn die Reihenfolge der Nachrichten wichtig ist oder Duplikate nicht toleriert werden können. Beispiele hierfür sind Finanztransaktionen, bei denen Transaktionen in der Reihenfolge ihrer Eingabe verarbeitet werden müssen, oder E-Commerce-Anwendungen, bei denen Inventaraktualisierungen in der richtigen Reihenfolge verarbeitet werden müssen.
