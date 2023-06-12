-module(maislurp-client-erlang_common_actions_controller_api).

-export([create_new_email_address/1, create_new_email_address/2,
         create_random_inbox/1, create_random_inbox/2,
         delete_email_address/2, delete_email_address/3,
         empty_inbox/2, empty_inbox/3,
         send_email_simple/2, send_email_simple/3]).

-define(BASE_URL, "").

%% @doc Create new random inbox
%% Returns an Inbox with an `id` and an `emailAddress`
-spec create_new_email_address(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_email_address(Ctx) ->
    create_new_email_address(Ctx, #{}).

-spec create_new_email_address(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_email_address(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/newEmailAddress"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['allowTeamAccess', 'useDomainPool', 'expiresAt', 'expiresIn', 'emailAddress', 'inboxType', 'description', 'name', 'tags', 'favourite', 'virtualInbox', 'useShortAddress', 'domainName', 'domainId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create new random inbox
%% Returns an Inbox with an `id` and an `emailAddress`
-spec create_random_inbox(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_random_inbox(Ctx) ->
    create_random_inbox(Ctx, #{}).

-spec create_random_inbox(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_random_inbox(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/createInbox"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['allowTeamAccess', 'useDomainPool', 'expiresAt', 'expiresIn', 'emailAddress', 'inboxType', 'description', 'name', 'tags', 'favourite', 'virtualInbox', 'useShortAddress', 'domainName', 'domainId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete inbox email address by inbox id
%% Deletes inbox email address
-spec delete_email_address(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_email_address(Ctx, InboxId) ->
    delete_email_address(Ctx, InboxId, #{}).

-spec delete_email_address(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_email_address(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/deleteEmailAddress"],
    QS = lists:flatten([{<<"inboxId">>, InboxId}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete all emails in an inbox
%% Deletes all emails
-spec empty_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
empty_inbox(Ctx, InboxId) ->
    empty_inbox(Ctx, InboxId, #{}).

-spec empty_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
empty_inbox(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/emptyInbox"],
    QS = lists:flatten([{<<"inboxId">>, InboxId}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send an email
%% If no senderId or inboxId provided a random email address will be used to send from.
-spec send_email_simple(ctx:ctx(), maislurp-client-erlang_simple_send_email_options:maislurp-client-erlang_simple_send_email_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_simple(Ctx, MaislurpClientErlangSimpleSendEmailOptions) ->
    send_email_simple(Ctx, MaislurpClientErlangSimpleSendEmailOptions, #{}).

-spec send_email_simple(ctx:ctx(), maislurp-client-erlang_simple_send_email_options:maislurp-client-erlang_simple_send_email_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_simple(Ctx, MaislurpClientErlangSimpleSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/sendEmail"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSimpleSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


