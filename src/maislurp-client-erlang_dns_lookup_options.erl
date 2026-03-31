-module(maislurp-client-erlang_dns_lookup_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_dns_lookup_options/0]).

-type maislurp-client-erlang_dns_lookup_options() ::
    #{ 'hostname' := binary(),
       'recordTypes' := list(),
       'omitFinalDNSDot' := boolean()
     }.

encode(#{ 'hostname' := Hostname,
          'recordTypes' := RecordTypes,
          'omitFinalDNSDot' := OmitFinalDNSDot
        }) ->
    #{ 'hostname' => Hostname,
       'recordTypes' => RecordTypes,
       'omitFinalDNSDot' => OmitFinalDNSDot
     }.
