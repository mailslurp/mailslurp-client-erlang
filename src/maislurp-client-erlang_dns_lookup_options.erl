-module(maislurp-client-erlang_dns_lookup_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_dns_lookup_options/0]).

-type maislurp-client-erlang_dns_lookup_options() ::
    #{ 'hostname' => binary(),
       'omitFinalDNSDot' => boolean(),
       'recordTypes' => list()
     }.

encode(#{ 'hostname' := Hostname,
          'omitFinalDNSDot' := OmitFinalDNSDot,
          'recordTypes' := RecordTypes
        }) ->
    #{ 'hostname' => Hostname,
       'omitFinalDNSDot' => OmitFinalDNSDot,
       'recordTypes' => RecordTypes
     }.
