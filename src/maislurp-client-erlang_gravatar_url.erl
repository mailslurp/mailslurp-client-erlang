-module(maislurp-client-erlang_gravatar_url).

-export([encode/1]).

-export_type([maislurp-client-erlang_gravatar_url/0]).

-type maislurp-client-erlang_gravatar_url() ::
    #{ 'url' := binary(),
       'hash' := binary()
     }.

encode(#{ 'url' := Url,
          'hash' := Hash
        }) ->
    #{ 'url' => Url,
       'hash' => Hash
     }.
