-module(maislurp-client-erlang_domain_name_record).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_name_record/0]).

-type maislurp-client-erlang_domain_name_record() ::
    #{ 'label' := binary(),
       'required' := boolean(),
       'recordType' := binary(),
       'name' := binary(),
       'recordEntries' := list(),
       'ttl' := integer()
     }.

encode(#{ 'label' := Label,
          'required' := Required,
          'recordType' := RecordType,
          'name' := Name,
          'recordEntries' := RecordEntries,
          'ttl' := Ttl
        }) ->
    #{ 'label' => Label,
       'required' => Required,
       'recordType' => RecordType,
       'name' => Name,
       'recordEntries' => RecordEntries,
       'ttl' => Ttl
     }.
