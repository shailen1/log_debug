-module(resterl_api_test).

-include_lib("eunit/include/eunit.hrl").
%-include("../test/definitions.hrl").

-define(TEAM_ID, <<"12345">>).
-define(TOKEN,   <<"I am a fake access-token">>).

%%% UNIT TESTS

setup() ->
    meck:new(resterl_http),
    meck:expect(resterl_http, fetch_feed, fun mock_fetch_feed/2),
    ok.

teardown(_) ->
    meck:unload(resterl_http),
    ok.

all_test_() ->
    {setup, fun setup/0,
            fun teardown/1,
            [
                fun schedule_all/0,
                fun schedule_current/0,
                fun schedule_recent/0,
                fun schedule_upcoming/0
            ]
    }.

schedule_all() ->
    Results  = resterl_api:schedule(all, ?TEAM_ID, ?TOKEN, opts),
    Expected = "Results from http://rest-dev.sqor.com/games/team/12345",
    ?assertEqual(Expected, Results).

schedule_current() ->
    Results  = resterl_api:schedule(current, ?TEAM_ID, ?TOKEN),
    Expected = "Results from http://rest-dev.sqor.com/games/team/12345/current",
    ?assertEqual(Expected, Results).

schedule_recent() ->
    Results  = resterl_api:schedule(recent, ?TEAM_ID, ?TOKEN),
    Expected = "Results from http://rest-dev.sqor.com/games/team/12345/recent",
    ?assertEqual(Expected, Results).

schedule_upcoming() ->
    Results  = resterl_api:schedule(upcoming, ?TEAM_ID, ?TOKEN),
    Expected = "Results from http://rest-dev.sqor.com/games/team/12345/upcoming",
    ?assertEqual(Expected, Results).

%%% PRIVATE FUNCTIONS

mock_fetch_feed(URL, _Headers) ->
    Result = "Results from " ++ URL,
    {ok, {{vsn, 200, rsn}, hdrs, Result}}.
