-module(maislurp-client-erlang_domain_name_record).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_name_record/0]).

-type maislurp-client-erlang_domain_name_record() ::
    #{ 'recordType' => binary(),
       'name' => binary(),
       'recordEntries' => list(),
       'ttl' => integer()
     }.

encode(#{ 'recordType' := RecordType,
          'name' := Name,
          'recordEntries' := RecordEntries,
          'ttl' := Ttl
        }) ->
    #{ 'recordType' => RecordType,
       'name' => Name,
       'recordEntries' => RecordEntries,
       'ttl' => Ttl
     }.
