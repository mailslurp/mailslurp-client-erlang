-module(maislurp-client-erlang_user_controller_api).

-export([create_inbox_retention_policy/2, create_inbox_retention_policy/3,
         create_inbox_retention_policy_run/1, create_inbox_retention_policy_run/2,
         create_or_update_inbox_retention_policy_for_account/2, create_or_update_inbox_retention_policy_for_account/3,
         delete_inbox_retention_policy/2, delete_inbox_retention_policy/3,
         delete_inbox_retention_policy_for_account/1, delete_inbox_retention_policy_for_account/2,
         get_entity_automations/1, get_entity_automations/2,
         get_entity_events/1, get_entity_events/2,
         get_entity_favorites/1, get_entity_favorites/2,
         get_inbox_retention_policy/2, get_inbox_retention_policy/3,
         get_inbox_retention_policy_for_account/1, get_inbox_retention_policy_for_account/2,
         get_inbox_retention_policy_run/2, get_inbox_retention_policy_run/3,
         get_inbox_retention_policy_runs/1, get_inbox_retention_policy_runs/2,
         get_json_property_as_string/3, get_json_property_as_string/4,
         get_user_info/1, get_user_info/2,
         get_user_storage_insights/1, get_user_storage_insights/2,
         list_inbox_retention_policies/1, list_inbox_retention_policies/2,
         update_inbox_retention_policy/3, update_inbox_retention_policy/4]).

-define(BASE_URL, "").

%% @doc 
%% Create an inbox retention policy for your account
-spec create_inbox_retention_policy(ctx:ctx(), maislurp-client-erlang_create_inbox_retention_policy_options:maislurp-client-erlang_create_inbox_retention_policy_options()) -> {ok, maislurp-client-erlang_inbox_retention_policy_dto:maislurp-client-erlang_inbox_retention_policy_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_retention_policy(Ctx, MaislurpClientErlangCreateInboxRetentionPolicyOptions) ->
    create_inbox_retention_policy(Ctx, MaislurpClientErlangCreateInboxRetentionPolicyOptions, #{}).

-spec create_inbox_retention_policy(ctx:ctx(), maislurp-client-erlang_create_inbox_retention_policy_options:maislurp-client-erlang_create_inbox_retention_policy_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_retention_policy_dto:maislurp-client-erlang_inbox_retention_policy_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_retention_policy(Ctx, MaislurpClientErlangCreateInboxRetentionPolicyOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/user/inbox-retention-policies"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateInboxRetentionPolicyOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Start an asynchronous inbox retention policy run for your account
-spec create_inbox_retention_policy_run(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox_retention_policy_run_dto:maislurp-client-erlang_inbox_retention_policy_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_retention_policy_run(Ctx) ->
    create_inbox_retention_policy_run(Ctx, #{}).

-spec create_inbox_retention_policy_run(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox_retention_policy_run_dto:maislurp-client-erlang_inbox_retention_policy_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_retention_policy_run(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/user/inbox-retention-policies/account/run"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Create inbox retention policy for your global account
-spec create_or_update_inbox_retention_policy_for_account(ctx:ctx(), maislurp-client-erlang_create_inbox_retention_policy_for_account_options:maislurp-client-erlang_create_inbox_retention_policy_for_account_options()) -> {ok, maislurp-client-erlang_inbox_retention_policy_dto:maislurp-client-erlang_inbox_retention_policy_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_or_update_inbox_retention_policy_for_account(Ctx, MaislurpClientErlangCreateInboxRetentionPolicyForAccountOptions) ->
    create_or_update_inbox_retention_policy_for_account(Ctx, MaislurpClientErlangCreateInboxRetentionPolicyForAccountOptions, #{}).

-spec create_or_update_inbox_retention_policy_for_account(ctx:ctx(), maislurp-client-erlang_create_inbox_retention_policy_for_account_options:maislurp-client-erlang_create_inbox_retention_policy_for_account_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_retention_policy_dto:maislurp-client-erlang_inbox_retention_policy_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_or_update_inbox_retention_policy_for_account(Ctx, MaislurpClientErlangCreateInboxRetentionPolicyForAccountOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/user/inbox-retention-policies/account"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateInboxRetentionPolicyForAccountOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Delete an inbox retention policy for your account
-spec delete_inbox_retention_policy(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_empty_response_dto:maislurp-client-erlang_empty_response_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_retention_policy(Ctx, PolicyId) ->
    delete_inbox_retention_policy(Ctx, PolicyId, #{}).

-spec delete_inbox_retention_policy(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_empty_response_dto:maislurp-client-erlang_empty_response_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_retention_policy(Ctx, PolicyId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/user/inbox-retention-policies/", PolicyId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Delete inbox retention policy for your global account
-spec delete_inbox_retention_policy_for_account(ctx:ctx()) -> {ok, maislurp-client-erlang_empty_response_dto:maislurp-client-erlang_empty_response_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_retention_policy_for_account(Ctx) ->
    delete_inbox_retention_policy_for_account(Ctx, #{}).

-spec delete_inbox_retention_policy_for_account(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_empty_response_dto:maislurp-client-erlang_empty_response_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_retention_policy_for_account(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/user/inbox-retention-policies/account"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_entity_automations(ctx:ctx()) -> {ok, maislurp-client-erlang_page_entity_automation_items:maislurp-client-erlang_page_entity_automation_items(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_entity_automations(Ctx) ->
    get_entity_automations(Ctx, #{}).

-spec get_entity_automations(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_entity_automation_items:maislurp-client-erlang_page_entity_automation_items(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_entity_automations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/user/automations"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before', 'inboxId', 'phoneId', 'filter'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_entity_events(ctx:ctx()) -> {ok, maislurp-client-erlang_page_entity_event_items:maislurp-client-erlang_page_entity_event_items(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_entity_events(Ctx) ->
    get_entity_events(Ctx, #{}).

-spec get_entity_events(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_entity_event_items:maislurp-client-erlang_page_entity_event_items(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_entity_events(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/user/events"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before', 'inboxId', 'emailId', 'phoneId', 'smsId', 'attachmentId', 'filter'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_entity_favorites(ctx:ctx()) -> {ok, maislurp-client-erlang_page_entity_favourite_items:maislurp-client-erlang_page_entity_favourite_items(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_entity_favorites(Ctx) ->
    get_entity_favorites(Ctx, #{}).

-spec get_entity_favorites(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_entity_favourite_items:maislurp-client-erlang_page_entity_favourite_items(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_entity_favorites(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/user/favorites"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before', 'filter'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get an inbox retention policy for your account
-spec get_inbox_retention_policy(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_retention_policy_dto:maislurp-client-erlang_inbox_retention_policy_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_retention_policy(Ctx, PolicyId) ->
    get_inbox_retention_policy(Ctx, PolicyId, #{}).

-spec get_inbox_retention_policy(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_retention_policy_dto:maislurp-client-erlang_inbox_retention_policy_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_retention_policy(Ctx, PolicyId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/user/inbox-retention-policies/", PolicyId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get inbox retention policy for your global account
-spec get_inbox_retention_policy_for_account(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox_retention_policy_optional_dto:maislurp-client-erlang_inbox_retention_policy_optional_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_retention_policy_for_account(Ctx) ->
    get_inbox_retention_policy_for_account(Ctx, #{}).

-spec get_inbox_retention_policy_for_account(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox_retention_policy_optional_dto:maislurp-client-erlang_inbox_retention_policy_optional_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_retention_policy_for_account(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/user/inbox-retention-policies/account"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get a previously submitted inbox retention policy run for your account
-spec get_inbox_retention_policy_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_retention_policy_run_dto:maislurp-client-erlang_inbox_retention_policy_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_retention_policy_run(Ctx, RunId) ->
    get_inbox_retention_policy_run(Ctx, RunId, #{}).

-spec get_inbox_retention_policy_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_retention_policy_run_dto:maislurp-client-erlang_inbox_retention_policy_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_retention_policy_run(Ctx, RunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/user/inbox-retention-policies/runs/", RunId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% List recent inbox retention policy runs for your account
-spec get_inbox_retention_policy_runs(ctx:ctx()) -> {ok, maislurp-client-erlang_page_inbox_retention_policy_run_projection:maislurp-client-erlang_page_inbox_retention_policy_run_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_retention_policy_runs(Ctx) ->
    get_inbox_retention_policy_runs(Ctx, #{}).

-spec get_inbox_retention_policy_runs(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_inbox_retention_policy_run_projection:maislurp-client-erlang_page_inbox_retention_policy_run_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_retention_policy_runs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/user/inbox-retention-policies/runs"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Utility function to extract properties from JSON objects in language where this is cumbersome.
-spec get_json_property_as_string(ctx:ctx(), binary(), maislurp-client-erlang_json_node:maislurp-client-erlang_json_node()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_json_property_as_string(Ctx, Property, MaislurpClientErlangJsonNode) ->
    get_json_property_as_string(Ctx, Property, MaislurpClientErlangJsonNode, #{}).

-spec get_json_property_as_string(ctx:ctx(), binary(), maislurp-client-erlang_json_node:maislurp-client-erlang_json_node(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_json_property_as_string(Ctx, Property, MaislurpClientErlangJsonNode, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/user/json/pluck"],
    QS = lists:flatten([{<<"property">>, Property}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangJsonNode,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get account information for your user
-spec get_user_info(ctx:ctx()) -> {ok, maislurp-client-erlang_user_info_dto:maislurp-client-erlang_user_info_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_user_info(Ctx) ->
    get_user_info(Ctx, #{}).

-spec get_user_info(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_user_info_dto:maislurp-client-erlang_user_info_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_user_info(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/user/info"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get retained storage usage insights for your account
-spec get_user_storage_insights(ctx:ctx()) -> {ok, maislurp-client-erlang_user_storage_insights_dto:maislurp-client-erlang_user_storage_insights_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_user_storage_insights(Ctx) ->
    get_user_storage_insights(Ctx, #{}).

-spec get_user_storage_insights(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_user_storage_insights_dto:maislurp-client-erlang_user_storage_insights_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_user_storage_insights(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/user/storage/insights"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% List inbox retention policies for your account
-spec list_inbox_retention_policies(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox_retention_policies_dto:maislurp-client-erlang_inbox_retention_policies_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_inbox_retention_policies(Ctx) ->
    list_inbox_retention_policies(Ctx, #{}).

-spec list_inbox_retention_policies(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox_retention_policies_dto:maislurp-client-erlang_inbox_retention_policies_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_inbox_retention_policies(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/user/inbox-retention-policies"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Update an inbox retention policy for your account
-spec update_inbox_retention_policy(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_inbox_retention_policy_options:maislurp-client-erlang_update_inbox_retention_policy_options()) -> {ok, maislurp-client-erlang_inbox_retention_policy_dto:maislurp-client-erlang_inbox_retention_policy_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_inbox_retention_policy(Ctx, PolicyId, MaislurpClientErlangUpdateInboxRetentionPolicyOptions) ->
    update_inbox_retention_policy(Ctx, PolicyId, MaislurpClientErlangUpdateInboxRetentionPolicyOptions, #{}).

-spec update_inbox_retention_policy(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_inbox_retention_policy_options:maislurp-client-erlang_update_inbox_retention_policy_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_retention_policy_dto:maislurp-client-erlang_inbox_retention_policy_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_inbox_retention_policy(Ctx, PolicyId, MaislurpClientErlangUpdateInboxRetentionPolicyOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/user/inbox-retention-policies/", PolicyId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateInboxRetentionPolicyOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


