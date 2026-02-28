module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map gradeToStatus grades


gradeToStatus : Float -> GradeStatus
gradeToStatus n =
    if n >= 7 then
        Approved

    else if n < 0 then
        Pending

    else
        Failed


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction accion =
    case accion of
        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Delayed ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"


airportAction : List AirplaneStatus -> List String
airportAction accion =
    List.map airplaneScheduleAction accion
