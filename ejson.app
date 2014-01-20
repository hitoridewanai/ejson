{application, ejson,
 [{description, "JSON encoder/decoder"},
  {vsn, "0.1.2"},
  {modules, [ejson, ejson_decode, ejson_encode]},
  {registered, []},
  {applications, [kernel, stdlib, sasl]}]}.
