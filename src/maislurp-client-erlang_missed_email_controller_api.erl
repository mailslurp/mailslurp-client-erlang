-module(maislurp-client-erlang_missed_email_controller_api).

-export([get_all_missed_emails/1, get_all_missed_emails/2,
         get_missed_email/2, get_missed_email/3,
         wait_for_nth_missed_email/3, wait_for_nth_missed_email/4]).

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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'page', 'searchFilter', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get MissedEmail
%% 
-spec get_missed_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_missed_email:maislurp-client-erlang_missed_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_missed_email(Ctx, MissedEmailId) ->
    get_missed_email(Ctx, MissedEmailId, #{}).

-spec get_missed_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_missed_email:maislurp-client-erlang_missed_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
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

%% @doc Wait for Nth missed email
%% Wait for 0 based index missed email
-spec wait_for_nth_missed_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), integer()) -> {ok, maislurp-client-erlang_missed_email:maislurp-client-erlang_missed_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_nth_missed_email(Ctx, InboxId, Timeout) ->
    wait_for_nth_missed_email(Ctx, InboxId, Timeout, #{}).

-spec wait_for_nth_missed_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), integer(), maps:map()) -> {ok, maislurp-client-erlang_missed_email:maislurp-client-erlang_missed_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_nth_missed_email(Ctx, InboxId, Timeout, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/missed-emails/waitForNthMissedEmail"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['index'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


