-module(maislurp-client-erlang_upload_attachment_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_upload_attachment_options/0]).

-type maislurp-client-erlang_upload_attachment_options() ::
    #{ 'contentId' => binary(),
       'contentType' => binary(),
       'filename' => binary(),
       'base64Contents' := binary()
     }.

encode(#{ 'contentId' := ContentId,
          'contentType' := ContentType,
          'filename' := Filename,
          'base64Contents' := Base64Contents
        }) ->
    #{ 'contentId' => ContentId,
       'contentType' => ContentType,
       'filename' => Filename,
       'base64Contents' => Base64Contents
     }.
