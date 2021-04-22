-module(maislurp-client-erlang_download_attachment_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_download_attachment_dto/0]).

-type maislurp-client-erlang_download_attachment_dto() ::
    #{ 'base64FileContents' => binary(),
       'contentType' => binary(),
       'sizeBytes' => integer()
     }.

encode(#{ 'base64FileContents' := Base64FileContents,
          'contentType' := ContentType,
          'sizeBytes' := SizeBytes
        }) ->
    #{ 'base64FileContents' => Base64FileContents,
       'contentType' => ContentType,
       'sizeBytes' => SizeBytes
     }.
