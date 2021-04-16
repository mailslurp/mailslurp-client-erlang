-module(maislurp-client-erlang_common_actions_controller_api).

-export([create_new_email_address/1, create_new_email_address/2,
         create_new_email_address1/1, create_new_email_address1/2,
         empty_inbox/2, empty_inbox/3,
         send_email_simple/2, send_email_simple/3]).

-define(BASE_URL, "").

%% @doc Create new random inbox
%% Returns an Inbox with an `id` and an `emailAddress`
-spec create_new_email_address(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_email_address(Ctx) ->
    create_new_email_address(Ctx, #{}).

-spec create_new_email_address(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_email_address(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/createInbox"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['allowTeamAccess', 'expiresAt', 'expiresIn', 'useDomainPool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create new random inbox
%% Returns an Inbox with an `id` and an `emailAddress`
-spec create_new_email_address1(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_email_address1(Ctx) ->
    create_new_email_address1(Ctx, #{}).

-spec create_new_email_address1(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox:maislurp-client-erlang_inbox(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_email_address1(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/newEmailAddress"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['allowTeamAccess', 'expiresAt', 'expiresIn', 'useDomainPool'], _OptionalParams),
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
send_email_simple(Ctx, EmailOptions) ->
    send_email_simple(Ctx, EmailOptions, #{}).

-spec send_email_simple(ctx:ctx(), maislurp-client-erlang_simple_send_email_options:maislurp-client-erlang_simple_send_email_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_simple(Ctx, EmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/sendEmail"],
    QS = [],
    Headers = [],
    Body1 = EmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


