-module(maislurp-client-erlang_dns_lookup_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_dns_lookup_result/0]).

-type maislurp-client-erlang_dns_lookup_result() ::
    #{ 'recordType' := binary(),
       'ttl' := integer(),
       'recordEntries' := list(),
       'name' := binary()
     }.

encode(#{ 'recordType' := RecordType,
          'ttl' := Ttl,
          'recordEntries' := RecordEntries,
          'name' := Name
        }) ->
    #{ 'recordType' => RecordType,
       'ttl' => Ttl,
       'recordEntries' => RecordEntries,
       'name' => Name
     }.
