declare namespace http = 'http://expath.org/ns/http-client' ;
let $artworks := ("50000000061962","50000000058061")
let $institution_id := "15"

let $path := "/Users/camilledelattre/Desktop/" || 50000000061962 || ".json"
let $url := "https://api.navigart.fr/" || $institution_id || "/artworks/" || 50000000061962
let $res := http:send-request(<http:request method='get'/>, $url)
return $res[1]/*[@name="Date"]/@value


