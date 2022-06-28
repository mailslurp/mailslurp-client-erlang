-module(maislurp-client-erlang_wait_for_controller_api).

-export([wait_for/2, wait_for/3,
         wait_for_email_count/3, wait_for_email_count/4,
         wait_for_latest_email/1, wait_for_latest_email/2,
         wait_for_matching_emails/4, wait_for_matching_emails/5,
         wait_for_matching_first_email/3, wait_for_matching_first_email/4,
         wait_for_nth_email/1, wait_for_nth_email/2,
         wait_for_sms/2, wait_for_sms/3]).

-define(BASE_URL, "").

%% @doc Wait for an email to match the provided filter conditions such as subject contains keyword.
%% Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
-spec wait_for(ctx:ctx(), maislurp-client-erlang_wait_for_conditions:maislurp-client-erlang_wait_for_conditions()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for(Ctx, MaislurpClientErlangWaitForConditions) ->
    wait_for(Ctx, MaislurpClientErlangWaitForConditions, #{}).

-spec wait_for(ctx:ctx(), maislurp-client-erlang_wait_for_conditions:maislurp-client-erlang_wait_for_conditions(), maps:map()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for(Ctx, MaislurpClientErlangWaitForConditions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/waitFor"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangWaitForConditions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
%% If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
-spec wait_for_email_count(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), integer()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_email_count(Ctx, InboxId, Count) ->
    wait_for_email_count(Ctx, InboxId, Count, #{}).

-spec wait_for_email_count(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), integer(), maps:map()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_email_count(Ctx, InboxId, Count, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/waitForEmailCount"],
    QS = lists:flatten([{<<"inboxId">>, InboxId}, {<<"count">>, Count}])++maislurp-client-erlang_utils:optional_params(['timeout', 'unreadOnly', 'before', 'since', 'sort', 'delay'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch inbox's latest email or if empty wait for an email to arrive
%% Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.
-spec wait_for_latest_email(ctx:ctx()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_latest_email(Ctx) ->
    wait_for_latest_email(Ctx, #{}).

-spec wait_for_latest_email(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_latest_email(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/waitForLatestEmail"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'timeout', 'unreadOnly', 'before', 'since', 'sort', 'delay'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Wait or return list of emails that match simple matching patterns
%% Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
-spec wait_for_matching_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), integer(), maislurp-client-erlang_match_options:maislurp-client-erlang_match_options()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_matching_emails(Ctx, InboxId, Count, MaislurpClientErlangMatchOptions) ->
    wait_for_matching_emails(Ctx, InboxId, Count, MaislurpClientErlangMatchOptions, #{}).

-spec wait_for_matching_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), integer(), maislurp-client-erlang_match_options:maislurp-client-erlang_match_options(), maps:map()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_matching_emails(Ctx, InboxId, Count, MaislurpClientErlangMatchOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/waitForMatchingEmails"],
    QS = lists:flatten([{<<"inboxId">>, InboxId}, {<<"count">>, Count}])++maislurp-client-erlang_utils:optional_params(['before', 'since', 'sort', 'delay', 'timeout', 'unreadOnly'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangMatchOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Wait for or return the first email that matches provided MatchOptions array
%% Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
-spec wait_for_matching_first_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_match_options:maislurp-client-erlang_match_options()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_matching_first_email(Ctx, InboxId, MaislurpClientErlangMatchOptions) ->
    wait_for_matching_first_email(Ctx, InboxId, MaislurpClientErlangMatchOptions, #{}).

-spec wait_for_matching_first_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_match_options:maislurp-client-erlang_match_options(), maps:map()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_matching_first_email(Ctx, InboxId, MaislurpClientErlangMatchOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/waitForMatchingFirstEmail"],
    QS = lists:flatten([{<<"inboxId">>, InboxId}])++maislurp-client-erlang_utils:optional_params(['timeout', 'unreadOnly', 'since', 'before', 'sort', 'delay'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangMatchOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
%% If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
-spec wait_for_nth_email(ctx:ctx()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_nth_email(Ctx) ->
    wait_for_nth_email(Ctx, #{}).

-spec wait_for_nth_email(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_nth_email(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/waitForNthEmail"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'index', 'timeout', 'unreadOnly', 'since', 'before', 'sort', 'delay'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Wait for an SMS message to match the provided filter conditions such as body contains keyword.
%% Generic waitFor method that will wait until a phone number meets given conditions or return immediately if already met
-spec wait_for_sms(ctx:ctx(), maislurp-client-erlang_wait_for_sms_conditions:maislurp-client-erlang_wait_for_sms_conditions()) -> {ok, [maislurp-client-erlang_sms_preview:maislurp-client-erlang_sms_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_sms(Ctx, MaislurpClientErlangWaitForSmsConditions) ->
    wait_for_sms(Ctx, MaislurpClientErlangWaitForSmsConditions, #{}).

-spec wait_for_sms(ctx:ctx(), maislurp-client-erlang_wait_for_sms_conditions:maislurp-client-erlang_wait_for_sms_conditions(), maps:map()) -> {ok, [maislurp-client-erlang_sms_preview:maislurp-client-erlang_sms_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
wait_for_sms(Ctx, MaislurpClientErlangWaitForSmsConditions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/waitForSms"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangWaitForSmsConditions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


