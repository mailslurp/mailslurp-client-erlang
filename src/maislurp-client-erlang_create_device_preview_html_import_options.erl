-module(maislurp-client-erlang_create_device_preview_html_import_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_device_preview_html_import_options/0]).

-type maislurp-client-erlang_create_device_preview_html_import_options() ::
    #{ 'html' := binary(),
       'subject' => binary(),
       'from' => binary(),
       'to' => binary(),
       'sourceAlias' => binary(),
       'externalId' => binary(),
       'options' => maislurp-client-erlang_create_device_preview_options:maislurp-client-erlang_create_device_preview_options()
     }.

encode(#{ 'html' := Html,
          'subject' := Subject,
          'from' := From,
          'to' := To,
          'sourceAlias' := SourceAlias,
          'externalId' := ExternalId,
          'options' := Options
        }) ->
    #{ 'html' => Html,
       'subject' => Subject,
       'from' => From,
       'to' => To,
       'sourceAlias' => SourceAlias,
       'externalId' => ExternalId,
       'options' => Options
     }.
