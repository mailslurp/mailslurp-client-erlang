-module(maislurp-client-erlang_generate_spf_record_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_generate_spf_record_options/0]).

-type maislurp-client-erlang_generate_spf_record_options() ::
    #{ 'domain' := binary(),
       'includeDomains' => list(),
       'ip4' => list(),
       'ip6' => list(),
       'mx' := boolean(),
       'a' := boolean(),
       'allPolicy' := binary()
     }.

encode(#{ 'domain' := Domain,
          'includeDomains' := IncludeDomains,
          'ip4' := Ip4,
          'ip6' := Ip6,
          'mx' := Mx,
          'a' := A,
          'allPolicy' := AllPolicy
        }) ->
    #{ 'domain' => Domain,
       'includeDomains' => IncludeDomains,
       'ip4' => Ip4,
       'ip6' => Ip6,
       'mx' => Mx,
       'a' => A,
       'allPolicy' => AllPolicy
     }.
