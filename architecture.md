```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml

title TCC
SHOW_PERSON_OUTLINE()

System_Boundary(system, "My system") {
    Container(transaction, "Transaction", "Microservice application")
    Container(antifraud, "Anti-Fraud", "Machine Learning Model")
    ContainerDb(database, "Database", "Database")
    ContainerQueue(queue, "Queue/Kafka", "Queue")
}

Rel_D(client, transaction, "API REST")

Rel(transaction, queue, "Anti-Fraud Check")
Rel(queue, transaction, "Anti-Fraud Check Result")

Rel(queue, antifraud, "Anti-Fraud Check")
Rel(antifraud, queue, "Anti-Fraud Check Result")

Rel(transaction, database, "")
Rel(antifraud, database, "")

LAYOUT_LANDSCAPE()
SHOW_LEGEND()

@enduml
```