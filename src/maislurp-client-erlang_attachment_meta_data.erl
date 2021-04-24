-module(maislurp-client-erlang_attachment_meta_data).

-export([encode/1]).

-export_type([maislurp-client-erlang_attachment_meta_data/0]).

-type maislurp-client-erlang_attachment_meta_data() ::
    #{ 'contentLength' => integer(),
       'contentType' => binary(),
       'id' => binary(),
       'name' => binary()
     }.

encode(#{ 'contentLength' := ContentLength,
          'contentType' := ContentType,
          'id' := Id,
          'name' := Name
        }) ->
    #{ 'contentLength' => ContentLength,
       'contentType' => ContentType,
       'id' => Id,
       'name' => Name
     }.
