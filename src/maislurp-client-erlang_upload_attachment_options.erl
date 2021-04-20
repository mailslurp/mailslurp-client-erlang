-module(maislurp-client-erlang_upload_attachment_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_upload_attachment_options/0]).

-type maislurp-client-erlang_upload_attachment_options() ::
    #{ 'base64Contents' => binary(),
       'contentType' => binary(),
       'filename' => binary()
     }.

encode(#{ 'base64Contents' := Base64Contents,
          'contentType' := ContentType,
          'filename' := Filename
        }) ->
    #{ 'base64Contents' => Base64Contents,
       'contentType' => ContentType,
       'filename' => Filename
     }.
