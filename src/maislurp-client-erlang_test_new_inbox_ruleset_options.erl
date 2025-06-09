-module(maislurp-client-erlang_test_new_inbox_ruleset_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_test_new_inbox_ruleset_options/0]).

-type maislurp-client-erlang_test_new_inbox_ruleset_options() ::
    #{ 'inboxRulesetTestOptions' := maislurp-client-erlang_inbox_ruleset_test_options:maislurp-client-erlang_inbox_ruleset_test_options(),
       'createInboxRulesetOptions' := maislurp-client-erlang_create_inbox_ruleset_options:maislurp-client-erlang_create_inbox_ruleset_options()
     }.

encode(#{ 'inboxRulesetTestOptions' := InboxRulesetTestOptions,
          'createInboxRulesetOptions' := CreateInboxRulesetOptions
        }) ->
    #{ 'inboxRulesetTestOptions' => InboxRulesetTestOptions,
       'createInboxRulesetOptions' => CreateInboxRulesetOptions
     }.
