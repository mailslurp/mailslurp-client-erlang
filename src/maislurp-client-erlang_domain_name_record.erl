-module(maislurp-client-erlang_domain_name_record).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_name_record/0]).

-type maislurp-client-erlang_domain_name_record() ::
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
