-module(maislurp-client-erlang_dns_lookup_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_dns_lookup_result/0]).

-type maislurp-client-erlang_dns_lookup_result() ::
    #{ 'name' := binary(),
       'recordEntries' := list(),
       'recordType' := binary(),
       'ttl' := integer()
     }.

encode(#{ 'name' := Name,
          'recordEntries' := RecordEntries,
          'recordType' := RecordType,
          'ttl' := Ttl
        }) ->
    #{ 'name' => Name,
       'recordEntries' => RecordEntries,
       'recordType' => RecordType,
       'ttl' => Ttl
     }.
