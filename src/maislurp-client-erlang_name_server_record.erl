-module(maislurp-client-erlang_name_server_record).

-export([encode/1]).

-export_type([maislurp-client-erlang_name_server_record/0]).

-type maislurp-client-erlang_name_server_record() ::
    #{ 'priority' := binary(),
       'raw' := binary(),
       'recordType' := binary(),
       'value' := binary()
     }.

encode(#{ 'priority' := Priority,
          'raw' := Raw,
          'recordType' := RecordType,
          'value' := Value
        }) ->
    #{ 'priority' => Priority,
       'raw' => Raw,
       'recordType' => RecordType,
       'value' => Value
     }.
