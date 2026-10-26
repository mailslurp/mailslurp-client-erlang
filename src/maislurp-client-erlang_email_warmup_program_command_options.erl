-module(maislurp-client-erlang_email_warmup_program_command_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_program_command_options/0]).

-type maislurp-client-erlang_email_warmup_program_command_options() ::
    #{ 'expectedVersion' := integer()
     }.

encode(#{ 'expectedVersion' := ExpectedVersion
        }) ->
    #{ 'expectedVersion' => ExpectedVersion
     }.
