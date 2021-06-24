-module(maislurp-client-erlang_inbox_ruleset_controller_api).

-export([create_new_inbox_ruleset/2, create_new_inbox_ruleset/3,
         delete_inbox_ruleset/2, delete_inbox_ruleset/3,
         delete_inbox_rulesets/1, delete_inbox_rulesets/2,
         get_inbox_ruleset/2, get_inbox_ruleset/3,
         get_inbox_rulesets/1, get_inbox_rulesets/2]).

-define(BASE_URL, "").

%% @doc Create an inbox ruleset
%% Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
-spec create_new_inbox_ruleset(ctx:ctx(), maislurp-client-erlang_create_inbox_ruleset_options:maislurp-client-erlang_create_inbox_ruleset_options()) -> {ok, maislurp-client-erlang_inbox_ruleset_dto:maislurp-client-erlang_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_inbox_ruleset(Ctx, CreateInboxRulesetOptions) ->
    create_new_inbox_ruleset(Ctx, CreateInboxRulesetOptions, #{}).

-spec create_new_inbox_ruleset(ctx:ctx(), maislurp-client-erlang_create_inbox_ruleset_options:maislurp-client-erlang_create_inbox_ruleset_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_ruleset_dto:maislurp-client-erlang_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_inbox_ruleset(Ctx, CreateInboxRulesetOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/rulesets"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = CreateInboxRulesetOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an inbox ruleset
%% Delete inbox ruleset
-spec delete_inbox_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_ruleset(Ctx, Id) ->
    delete_inbox_ruleset(Ctx, Id, #{}).

-spec delete_inbox_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_ruleset(Ctx, Id, Optional) ->
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

%% @doc Delete inbox rulesets
%% Delete inbox rulesets. Accepts optional inboxId filter.
-spec delete_inbox_rulesets(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_rulesets(Ctx) ->
    delete_inbox_rulesets(Ctx, #{}).

-spec delete_inbox_rulesets(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_rulesets(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/rulesets"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an inbox ruleset
%% Get inbox ruleset
-spec get_inbox_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_ruleset_dto:maislurp-client-erlang_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_ruleset(Ctx, Id) ->
    get_inbox_ruleset(Ctx, Id, #{}).

-spec get_inbox_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_ruleset_dto:maislurp-client-erlang_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_ruleset(Ctx, Id, Optional) ->
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

%% @doc List inbox rulesets
%% List all rulesets attached to an inbox
-spec get_inbox_rulesets(ctx:ctx()) -> {ok, maislurp-client-erlang_page_inbox_ruleset_projection:maislurp-client-erlang_page_inbox_ruleset_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_rulesets(Ctx) ->
    get_inbox_rulesets(Ctx, #{}).

-spec get_inbox_rulesets(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_inbox_ruleset_projection:maislurp-client-erlang_page_inbox_ruleset_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_rulesets(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/rulesets"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


