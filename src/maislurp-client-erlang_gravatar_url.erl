-module(maislurp-client-erlang_gravatar_url).

-export([encode/1]).

-export_type([maislurp-client-erlang_gravatar_url/0]).

-type maislurp-client-erlang_gravatar_url() ::
    #{ 'hash' := binary(),
       'url' := binary()
     }.

encode(#{ 'hash' := Hash,
          'url' := Url
        }) ->
    #{ 'hash' => Hash,
       'url' => Url
     }.
