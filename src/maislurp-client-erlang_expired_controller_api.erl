-module(maislurp-client-erlang_expired_controller_api).

-export([get_expiration_defaults/1, get_expiration_defaults/2,
         get_expired_inbox_by_inbox_id/2, get_expired_inbox_by_inbox_id/3,
         get_expired_inbox_record/2, get_expired_inbox_record/3,
         get_expired_inboxes/1, get_expired_inboxes/2]).

-define(BASE_URL, "").

%% @doc Get default expiration settings
%% Return default times used for inbox expiration
-spec get_expiration_defaults(ctx:ctx()) -> {ok, maislurp-client-erlang_expiration_defaults:maislurp-client-erlang_expiration_defaults(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_expiration_defaults(Ctx) ->
    get_expiration_defaults(Ctx, #{}).

-spec get_expiration_defaults(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_expiration_defaults:maislurp-client-erlang_expiration_defaults(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_expiration_defaults(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/expired/defaults"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get expired inbox record for a previously existing inbox
%% Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId
-spec get_expired_inbox_by_inbox_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_expired_inbox_dto:maislurp-client-erlang_expired_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_expired_inbox_by_inbox_id(Ctx, InboxId) ->
    get_expired_inbox_by_inbox_id(Ctx, InboxId, #{}).

-spec get_expired_inbox_by_inbox_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_expired_inbox_dto:maislurp-client-erlang_expired_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_expired_inbox_by_inbox_id(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/expired/inbox/", InboxId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an expired inbox record
%% Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties
-spec get_expired_inbox_record(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_expired_inbox_dto:maislurp-client-erlang_expired_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_expired_inbox_record(Ctx, ExpiredId) ->
    get_expired_inbox_record(Ctx, ExpiredId, #{}).

-spec get_expired_inbox_record(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_expired_inbox_dto:maislurp-client-erlang_expired_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_expired_inbox_record(Ctx, ExpiredId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/expired/", ExpiredId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List records of expired inboxes
%% Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties
-spec get_expired_inboxes(ctx:ctx()) -> {ok, maislurp-client-erlang_page_expired_inbox_record_projection:maislurp-client-erlang_page_expired_inbox_record_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_expired_inboxes(Ctx) ->
    get_expired_inboxes(Ctx, #{}).

-spec get_expired_inboxes(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_expired_inbox_record_projection:maislurp-client-erlang_page_expired_inbox_record_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_expired_inboxes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/expired"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


