-module(maislurp-client-erlang_bulk_actions_controller_api).

-export([bulk_create_inboxes/2, bulk_create_inboxes/3,
         bulk_delete_inboxes/2, bulk_delete_inboxes/3,
         bulk_send_emails/2, bulk_send_emails/3]).

-define(BASE_URL, "").

%% @doc Bulk create Inboxes (email addresses)
%% 
-spec bulk_create_inboxes(ctx:ctx(), integer()) -> {ok, [maislurp-client-erlang_inbox:maislurp-client-erlang_inbox()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
bulk_create_inboxes(Ctx, Count) ->
    bulk_create_inboxes(Ctx, Count, #{}).

-spec bulk_create_inboxes(ctx:ctx(), integer(), maps:map()) -> {ok, [maislurp-client-erlang_inbox:maislurp-client-erlang_inbox()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
bulk_create_inboxes(Ctx, Count, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/bulk/inboxes"],
    QS = lists:flatten([{<<"count">>, Count}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Bulk Delete Inboxes
%% 
-spec bulk_delete_inboxes(ctx:ctx(), list()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
bulk_delete_inboxes(Ctx, Ids) ->
    bulk_delete_inboxes(Ctx, Ids, #{}).

-spec bulk_delete_inboxes(ctx:ctx(), list(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
bulk_delete_inboxes(Ctx, Ids, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/bulk/inboxes"],
    QS = [],
    Headers = [],
    Body1 = Ids,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Bulk Send Emails
%% 
-spec bulk_send_emails(ctx:ctx(), maislurp-client-erlang_bulk_send_email_options:maislurp-client-erlang_bulk_send_email_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
bulk_send_emails(Ctx, BulkSendEmailOptions) ->
    bulk_send_emails(Ctx, BulkSendEmailOptions, #{}).

-spec bulk_send_emails(ctx:ctx(), maislurp-client-erlang_bulk_send_email_options:maislurp-client-erlang_bulk_send_email_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
bulk_send_emails(Ctx, BulkSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/bulk/send"],
    QS = [],
    Headers = [],
    Body1 = BulkSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


