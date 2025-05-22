-module(maislurp-client-erlang_consent_status_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_consent_status_dto/0]).

-type maislurp-client-erlang_consent_status_dto() ::
    #{ 'consented' := boolean()
     }.

encode(#{ 'consented' := Consented
        }) ->
    #{ 'consented' => Consented
     }.
