-module(maislurp-client-erlang_domain_monitor_dkim_signature_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_monitor_dkim_signature_dto/0]).

-type maislurp-client-erlang_domain_monitor_dkim_signature_dto() ::
    #{ 'domain' => binary(),
       'selector' => binary(),
       'algorithm' => binary(),
       'identity' => binary()
     }.

encode(#{ 'domain' := Domain,
          'selector' := Selector,
          'algorithm' := Algorithm,
          'identity' := Identity
        }) ->
    #{ 'domain' => Domain,
       'selector' => Selector,
       'algorithm' => Algorithm,
       'identity' => Identity
     }.
