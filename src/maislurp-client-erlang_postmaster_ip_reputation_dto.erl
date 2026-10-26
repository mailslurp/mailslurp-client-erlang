-module(maislurp-client-erlang_postmaster_ip_reputation_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_postmaster_ip_reputation_dto/0]).

-type maislurp-client-erlang_postmaster_ip_reputation_dto() ::
    #{ 'reputation' => binary(),
       'ipAddresses' := list(),
       'sampleIp' => binary()
     }.

encode(#{ 'reputation' := Reputation,
          'ipAddresses' := IpAddresses,
          'sampleIp' := SampleIp
        }) ->
    #{ 'reputation' => Reputation,
       'ipAddresses' => IpAddresses,
       'sampleIp' => SampleIp
     }.
