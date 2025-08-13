-module(maislurp-client-erlang_ruleset_controller_api).

-export([create_new_ruleset/2, create_new_ruleset/3,
         delete_ruleset/2, delete_ruleset/3,
         delete_rulesets/1, delete_rulesets/2,
         get_ruleset/2, get_ruleset/3,
         get_rulesets/1, get_rulesets/2,
         test_inbox_rulesets_for_inbox/3, test_inbox_rulesets_for_inbox/4,
         test_new_ruleset/2, test_new_ruleset/3,
         test_ruleset/3, test_ruleset/4,
         test_ruleset_receiving/2, test_ruleset_receiving/3,
         test_ruleset_sending/2, test_ruleset_sending/3]).

-define(BASE_URL, "").

%% @doc Create a ruleset
%% Create a new inbox or phone number rule for forwarding, blocking, and allowing emails or SMS when sending and receiving
-spec create_new_ruleset(ctx:ctx(), maislurp-client-erlang_create_ruleset_options:maislurp-client-erlang_create_ruleset_options()) -> {ok, maislurp-client-erlang_ruleset_dto:maislurp-client-erlang_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_ruleset(Ctx, MaislurpClientErlangCreateRulesetOptions) ->
    create_new_ruleset(Ctx, MaislurpClientErlangCreateRulesetOptions, #{}).

-spec create_new_ruleset(ctx:ctx(), maislurp-client-erlang_create_ruleset_options:maislurp-client-erlang_create_ruleset_options(), maps:map()) -> {ok, maislurp-client-erlang_ruleset_dto:maislurp-client-erlang_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_ruleset(Ctx, MaislurpClientErlangCreateRulesetOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/rulesets"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'phoneId'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangCreateRulesetOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a ruleset
%% Delete ruleset
-spec delete_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_ruleset(Ctx, Id) ->
    delete_ruleset(Ctx, Id, #{}).

-spec delete_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_ruleset(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/rulesets/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete rulesets
%% Delete rulesets. Accepts optional inboxId or phoneId filters.
-spec delete_rulesets(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_rulesets(Ctx) ->
    delete_rulesets(Ctx, #{}).

-spec delete_rulesets(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_rulesets(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/rulesets"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'phoneId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a ruleset
%% Get ruleset
-spec get_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_ruleset_dto:maislurp-client-erlang_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_ruleset(Ctx, Id) ->
    get_ruleset(Ctx, Id, #{}).

-spec get_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_ruleset_dto:maislurp-client-erlang_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_ruleset(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/rulesets/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List rulesets block and allow lists
%% List all rulesets attached to an inbox or phone or account
-spec get_rulesets(ctx:ctx()) -> {ok, maislurp-client-erlang_page_ruleset_dto:maislurp-client-erlang_page_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_rulesets(Ctx) ->
    get_rulesets(Ctx, #{}).

-spec get_rulesets(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_ruleset_dto:maislurp-client-erlang_page_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_rulesets(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/rulesets"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'phoneId', 'page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test inbox rulesets for inbox
%% Test inbox rulesets for inbox
-spec test_inbox_rulesets_for_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_ruleset_test_options:maislurp-client-erlang_ruleset_test_options()) -> {ok, maislurp-client-erlang_inbox_ruleset_test_result:maislurp-client-erlang_inbox_ruleset_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_inbox_rulesets_for_inbox(Ctx, InboxId, MaislurpClientErlangRulesetTestOptions) ->
    test_inbox_rulesets_for_inbox(Ctx, InboxId, MaislurpClientErlangRulesetTestOptions, #{}).

-spec test_inbox_rulesets_for_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_ruleset_test_options:maislurp-client-erlang_ruleset_test_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_ruleset_test_result:maislurp-client-erlang_inbox_ruleset_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_inbox_rulesets_for_inbox(Ctx, InboxId, MaislurpClientErlangRulesetTestOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/rulesets"],
    QS = lists:flatten([{<<"inboxId">>, InboxId}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangRulesetTestOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test new ruleset
%% Test new ruleset
-spec test_new_ruleset(ctx:ctx(), maislurp-client-erlang_test_new_inbox_ruleset_options:maislurp-client-erlang_test_new_inbox_ruleset_options()) -> {ok, maislurp-client-erlang_inbox_ruleset_test_result:maislurp-client-erlang_inbox_ruleset_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_new_ruleset(Ctx, MaislurpClientErlangTestNewInboxRulesetOptions) ->
    test_new_ruleset(Ctx, MaislurpClientErlangTestNewInboxRulesetOptions, #{}).

-spec test_new_ruleset(ctx:ctx(), maislurp-client-erlang_test_new_inbox_ruleset_options:maislurp-client-erlang_test_new_inbox_ruleset_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_ruleset_test_result:maislurp-client-erlang_inbox_ruleset_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_new_ruleset(Ctx, MaislurpClientErlangTestNewInboxRulesetOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/rulesets"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangTestNewInboxRulesetOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test a ruleset
%% Test an inbox or phone ruleset
-spec test_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_ruleset_test_options:maislurp-client-erlang_ruleset_test_options()) -> {ok, maislurp-client-erlang_inbox_ruleset_test_result:maislurp-client-erlang_inbox_ruleset_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_ruleset(Ctx, Id, MaislurpClientErlangRulesetTestOptions) ->
    test_ruleset(Ctx, Id, MaislurpClientErlangRulesetTestOptions, #{}).

-spec test_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_ruleset_test_options:maislurp-client-erlang_ruleset_test_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_ruleset_test_result:maislurp-client-erlang_inbox_ruleset_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_ruleset(Ctx, Id, MaislurpClientErlangRulesetTestOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/rulesets/", Id, "/test"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangRulesetTestOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test receiving with rulesets
%% Test whether inbound emails from an email address would be blocked or allowed by inbox rulesets or test if phone number can receive SMS
-spec test_ruleset_receiving(ctx:ctx(), maislurp-client-erlang_test_ruleset_receiving_options:maislurp-client-erlang_test_ruleset_receiving_options()) -> {ok, maislurp-client-erlang_test_ruleset_receiving_result:maislurp-client-erlang_test_ruleset_receiving_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_ruleset_receiving(Ctx, MaislurpClientErlangTestRulesetReceivingOptions) ->
    test_ruleset_receiving(Ctx, MaislurpClientErlangTestRulesetReceivingOptions, #{}).

-spec test_ruleset_receiving(ctx:ctx(), maislurp-client-erlang_test_ruleset_receiving_options:maislurp-client-erlang_test_ruleset_receiving_options(), maps:map()) -> {ok, maislurp-client-erlang_test_ruleset_receiving_result:maislurp-client-erlang_test_ruleset_receiving_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_ruleset_receiving(Ctx, MaislurpClientErlangTestRulesetReceivingOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/rulesets/test-receiving"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangTestRulesetReceivingOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test sending with rulesets
%% Test whether outbound emails to an email address would be blocked or allowed by inbox rulesets or whether a phone number can send SMS
-spec test_ruleset_sending(ctx:ctx(), maislurp-client-erlang_test_inbox_ruleset_sending_options:maislurp-client-erlang_test_inbox_ruleset_sending_options()) -> {ok, maislurp-client-erlang_test_ruleset_sending_result:maislurp-client-erlang_test_ruleset_sending_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_ruleset_sending(Ctx, MaislurpClientErlangTestInboxRulesetSendingOptions) ->
    test_ruleset_sending(Ctx, MaislurpClientErlangTestInboxRulesetSendingOptions, #{}).

-spec test_ruleset_sending(ctx:ctx(), maislurp-client-erlang_test_inbox_ruleset_sending_options:maislurp-client-erlang_test_inbox_ruleset_sending_options(), maps:map()) -> {ok, maislurp-client-erlang_test_ruleset_sending_result:maislurp-client-erlang_test_ruleset_sending_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_ruleset_sending(Ctx, MaislurpClientErlangTestInboxRulesetSendingOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/rulesets/test-sending"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangTestInboxRulesetSendingOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


