-module(maislurp-client-erlang_attachment_meta_data).

-export([encode/1]).

-export_type([maislurp-client-erlang_attachment_meta_data/0]).

-type maislurp-client-erlang_attachment_meta_data() ::
    #{ 'name' := binary(),
       'contentType' := binary(),
       'contentLength' := integer(),
       'id' := binary()
     }.

encode(#{ 'name' := Name,
          'contentType' := ContentType,
          'contentLength' := ContentLength,
          'id' := Id
        }) ->
    #{ 'name' => Name,
       'contentType' => ContentType,
       'contentLength' => ContentLength,
       'id' => Id
     }.
