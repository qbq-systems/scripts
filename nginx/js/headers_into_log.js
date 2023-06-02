/*
http {
    ...
    js_import utils.js;
    js_set $headers_as_json utils.headersAsJson;
    ...
    log_format main_with_headers "$request_id\t...\t$headers_as_json";
    ...
    server {
        ...
        access_log /path/to/access.log main_with_headers;
        ...
    }
}
*/

const headersAsJson = (req) => {
    return JSON.stringify(req.headersIn)
}

export default {
    headersAsJson
}