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
       'aiTransformId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'useStaticIpRange' => boolean(),
       'ignoreInsecureSslCertificates' => boolean(),
       'tags' => list()
     }.

encode(#{ 'url' := Url,
          'basicAuth' := BasicAuth,
          'name' := Name,
          'eventName' := EventName,
          'includeHeaders' := IncludeHeaders,
          'requestBodyTemplate' := RequestBodyTemplate,
          'aiTransformId' := AiTransformId,
          'useStaticIpRange' := UseStaticIpRange,
          'ignoreInsecureSslCertificates' := IgnoreInsecureSslCertificates,
          'tags' := Tags
        }) ->
    #{ 'url' => Url,
       'basicAuth' => BasicAuth,
       'name' => Name,
       'eventName' => EventName,
       'includeHeaders' => IncludeHeaders,
       'requestBodyTemplate' => RequestBodyTemplate,
       'aiTransformId' => AiTransformId,
       'useStaticIpRange' => UseStaticIpRange,
       'ignoreInsecureSslCertificates' => IgnoreInsecureSslCertificates,
       'tags' => Tags
     }.
