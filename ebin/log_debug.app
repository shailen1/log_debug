{application, log_debug,
 [
  {description, ""},
  {vsn, "1"},
  {registered, []},
  {applications, [
                  kernel,
                  stdlib
                 ]},
  {modules, ['log_debug_app','log_debug_sup']},
  {mod, { log_debug_app, []}},
  {env, [
    {host, []}
  ]}
 ]}.
