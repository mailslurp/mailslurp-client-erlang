-module(maislurp-client-erlang_missed_email_controller_api).

-export([get_all_missed_emails/1, get_all_missed_emails/2,
         get_all_unknown_missed_emails/1, get_all_unknown_missed_emails/2,
         get_missed_email/2, get_missed_email/3,
         restore_missed_emails/1, restore_missed_emails/2,
         wait_for_nth_missed_email/2, wait_for_nth_missed_email/3]).

-define(BASE_URL, "").

%% @doc Get all MissedEmails in paginated format
%% 
-spec get_all_missed_emails(ctx:ctx()) -> {ok, maislurp-client-erlang_page_missed_email_projection:maislurp-client-erlang_page_missed_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_missed_emails(Ctx) ->
    get_all_missed_emails(Ctx, #{}).

-spec get_all_missed_emails(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_missed_email_projection:maislurp-client-erlang_page_missed_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_missed_emails(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/missed-emails"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before', 'inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all unknown missed emails in paginated format
%% Unknown missed emails are emails that were sent to MailSlurp but could not be assigned to an existing inbox.
-spec get_all_unknown_missed_emails(ctx:ctx()) -> {ok, maislurp-client-erlang_page_unknown_missed_email_projection:maislurp-client-erlang_page_unknown_missed_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_unknown_missed_emails(Ctx) ->
    get_all_unknown_missed_emails(Ctx, #{}).

-spec get_all_unknown_missed_emails(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_unknown_missed_email_projection:maislurp-client-erlang_page_unknown_missed_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_unknown_missed_emails(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/missed-emails/unknown"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before', 'inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get MissedEmail
%% List emails that were missed due to plan limits.
-spec get_missed_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_missed_email_dto:maislurp-client-erlang_missed_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_missed_email(Ctx, MissedEmailId) ->
    get_missed_email(Ctx, MissedEmailId, #{}).

-spec get_missed_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_missed_email_dto:maislurp-client-erlang_missed_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_missed_email(Ctx, MissedEmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/missed-emails/", MissedEmailId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Restore missed emails
%% If emails were missed due to a plan limit they are saved as missed emails. If support team enables the canRestore flag these emails can be reload into your account using this method.
-spec restore_missed_emails(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
restore_missed_emails(Ctx) ->
    restore_missed_emails(Ctx, #{}).

-spec restore_missed_emails(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
restore_missed_emails(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/missed-emails/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Wait for Nth missed email
%% Wait for 0 based index missed email
-spec wait_for_nth_missed_email(ctx:ctx(), integer()) -> {ok, maislurp-client-erlang_missed_email_dto:maislurp-client-erlang_missed_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_nth_missed_email(Ctx, Index) ->
    wait_for_nth_missed_email(Ctx, Index, #{}).

-spec wait_for_nth_missed_email(ctx:ctx(), integer(), maps:map()) -> {ok, maislurp-client-erlang_missed_email_dto:maislurp-client-erlang_missed_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_nth_missed_email(Ctx, Index, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/missed-emails/waitForNthMissedEmail"],
    QS = lists:flatten([{<<"index">>, Index}])++maislurp-client-erlang_utils:optional_params(['inboxId', 'timeout', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


