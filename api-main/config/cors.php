<?php 
return [    
   'paths' => ['api/*','*'],
   'allowed_methods' => ['*'],
   'allowed_origins' => ['http://localhost:8000', '*'],
   'allowed_origins_patterns' => [],
   'allowed_headers' => ['Access-Control-Request-Method', 'Access-Control-Request-Headers', '*'],
   'exposed_headers' => [],
   'max_age' => 0,
   'supports_credentials' => false,
];