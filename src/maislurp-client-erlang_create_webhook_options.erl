-module(maislurp-client-erlang_create_webhook_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_webhook_options/0]).

-type maislurp-client-erlang_create_webhook_options() ::
    #{ 'url' := binary(),
       'basicAuth' => maislurp-client-erlang_basic_auth_options:maislurp-client-erlang_basic_auth_options(),
       'name' => binary(),
       'eventName' => binary(),
       'includeHeaders' => maislurp-client-erlang_webhook_headers:maislurp-client-erlang_webhook_headers(),
       'requestBodyTemplate' => binary(),
       'ignoreInsecureSslCertificates' => boolean()
     }.

encode(#{ 'url' := Url,
          'basicAuth' := BasicAuth,
          'name' := Name,
          'eventName' := EventName,
          'includeHeaders' := IncludeHeaders,
          'requestBodyTemplate' := RequestBodyTemplate,
          'ignoreInsecureSslCertificates' := IgnoreInsecureSslCertificates
        }) ->
    #{ 'url' => Url,
       'basicAuth' => BasicAuth,
       'name' => Name,
       'eventName' => EventName,
       'includeHeaders' => IncludeHeaders,
       'requestBodyTemplate' => RequestBodyTemplate,
       'ignoreInsecureSslCertificates' => IgnoreInsecureSslCertificates
     }.
