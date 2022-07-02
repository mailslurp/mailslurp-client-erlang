-module(maislurp-client-erlang_inbox_forwarder_controller_api).

-export([create_new_inbox_forwarder/3, create_new_inbox_forwarder/4,
         delete_inbox_forwarder/2, delete_inbox_forwarder/3,
         delete_inbox_forwarders/1, delete_inbox_forwarders/2,
         get_inbox_forwarder/2, get_inbox_forwarder/3,
         get_inbox_forwarders/1, get_inbox_forwarders/2,
         test_inbox_forwarder/3, test_inbox_forwarder/4,
         test_inbox_forwarders_for_inbox/3, test_inbox_forwarders_for_inbox/4,
         test_new_inbox_forwarder/2, test_new_inbox_forwarder/3]).

-define(BASE_URL, "").

%% @doc Create an inbox forwarder
%% Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
-spec create_new_inbox_forwarder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_inbox_forwarder_options:maislurp-client-erlang_create_inbox_forwarder_options()) -> {ok, maislurp-client-erlang_inbox_forwarder_dto:maislurp-client-erlang_inbox_forwarder_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_inbox_forwarder(Ctx, InboxId, MaislurpClientErlangCreateInboxForwarderOptions) ->
    create_new_inbox_forwarder(Ctx, InboxId, MaislurpClientErlangCreateInboxForwarderOptions, #{}).

-spec create_new_inbox_forwarder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_inbox_forwarder_options:maislurp-client-erlang_create_inbox_forwarder_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_forwarder_dto:maislurp-client-erlang_inbox_forwarder_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_inbox_forwarder(Ctx, InboxId, MaislurpClientErlangCreateInboxForwarderOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/forwarders"],
    QS = lists:flatten([{<<"inboxId">>, InboxId}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangCreateInboxForwarderOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an inbox forwarder
%% Delete inbox forwarder
-spec delete_inbox_forwarder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_forwarder(Ctx, Id) ->
    delete_inbox_forwarder(Ctx, Id, #{}).

-spec delete_inbox_forwarder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_forwarder(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/forwarders/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete inbox forwarders
%% Delete inbox forwarders. Accepts optional inboxId filter.
-spec delete_inbox_forwarders(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_forwarders(Ctx) ->
    delete_inbox_forwarders(Ctx, #{}).

-spec delete_inbox_forwarders(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_forwarders(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/forwarders"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an inbox forwarder
%% Get inbox ruleset
-spec get_inbox_forwarder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_forwarder_dto:maislurp-client-erlang_inbox_forwarder_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_forwarder(Ctx, Id) ->
    get_inbox_forwarder(Ctx, Id, #{}).

-spec get_inbox_forwarder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_forwarder_dto:maislurp-client-erlang_inbox_forwarder_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_forwarder(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/forwarders/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List inbox forwarders
%% List all forwarders attached to an inbox
-spec get_inbox_forwarders(ctx:ctx()) -> {ok, maislurp-client-erlang_page_inbox_forwarder_dto:maislurp-client-erlang_page_inbox_forwarder_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_forwarders(Ctx) ->
    get_inbox_forwarders(Ctx, #{}).

-spec get_inbox_forwarders(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_inbox_forwarder_dto:maislurp-client-erlang_page_inbox_forwarder_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_forwarders(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/forwarders"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test an inbox forwarder
%% Test an inbox forwarder
-spec test_inbox_forwarder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_inbox_forwarder_test_options:maislurp-client-erlang_inbox_forwarder_test_options()) -> {ok, maislurp-client-erlang_inbox_forwarder_test_result:maislurp-client-erlang_inbox_forwarder_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_inbox_forwarder(Ctx, Id, MaislurpClientErlangInboxForwarderTestOptions) ->
    test_inbox_forwarder(Ctx, Id, MaislurpClientErlangInboxForwarderTestOptions, #{}).

-spec test_inbox_forwarder(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_inbox_forwarder_test_options:maislurp-client-erlang_inbox_forwarder_test_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_forwarder_test_result:maislurp-client-erlang_inbox_forwarder_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_inbox_forwarder(Ctx, Id, MaislurpClientErlangInboxForwarderTestOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/forwarders/", Id, "/test"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangInboxForwarderTestOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test inbox forwarders for inbox
%% Test inbox forwarders for inbox
-spec test_inbox_forwarders_for_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_inbox_forwarder_test_options:maislurp-client-erlang_inbox_forwarder_test_options()) -> {ok, maislurp-client-erlang_inbox_forwarder_test_result:maislurp-client-erlang_inbox_forwarder_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_inbox_forwarders_for_inbox(Ctx, InboxId, MaislurpClientErlangInboxForwarderTestOptions) ->
    test_inbox_forwarders_for_inbox(Ctx, InboxId, MaislurpClientErlangInboxForwarderTestOptions, #{}).

-spec test_inbox_forwarders_for_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_inbox_forwarder_test_options:maislurp-client-erlang_inbox_forwarder_test_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_forwarder_test_result:maislurp-client-erlang_inbox_forwarder_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_inbox_forwarders_for_inbox(Ctx, InboxId, MaislurpClientErlangInboxForwarderTestOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/forwarders"],
    QS = lists:flatten([{<<"inboxId">>, InboxId}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangInboxForwarderTestOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test new inbox forwarder
%% Test new inbox forwarder
-spec test_new_inbox_forwarder(ctx:ctx(), maislurp-client-erlang_test_new_inbox_forwarder_options:maislurp-client-erlang_test_new_inbox_forwarder_options()) -> {ok, maislurp-client-erlang_inbox_forwarder_test_result:maislurp-client-erlang_inbox_forwarder_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_new_inbox_forwarder(Ctx, MaislurpClientErlangTestNewInboxForwarderOptions) ->
    test_new_inbox_forwarder(Ctx, MaislurpClientErlangTestNewInboxForwarderOptions, #{}).

-spec test_new_inbox_forwarder(ctx:ctx(), maislurp-client-erlang_test_new_inbox_forwarder_options:maislurp-client-erlang_test_new_inbox_forwarder_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_forwarder_test_result:maislurp-client-erlang_inbox_forwarder_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_new_inbox_forwarder(Ctx, MaislurpClientErlangTestNewInboxForwarderOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/forwarders"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangTestNewInboxForwarderOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


