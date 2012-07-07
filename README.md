# OmniAuth Put.io

OmniAuth 1.0 strategy for the Put.io v2 API.

# Important

The Put.io v2 API doesn't expose any kind of user information at this point. Because of that, this strategy does not comply with the [OmniAuth auth hash shema](https://github.com/intridea/omniauth/wiki/Auth-Hash-Schema) requirements. To be precise, the `uid` and `info` fields are nil.

On the upside, the auth hash *does* contain the OAuth 2.0 credentials returned by Put.io (the access token is in `credentials['token']`). That means you can still use this strategy to obtain OAuth 2.0 credentials although you can't associate them to a specific Put.io user.

# Usage

In a Rack application:

```ruby
use OmniAuth::Builder do
  provider :putio, ENV['PUTIO_CLIENT_ID'], ENV['PUTIO_CLIENT_SECRET']
end
```

In a Rails applicaitons, put the following in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :putio, ENV['PUTIO_CLIENT_ID'], ENV['PUTIO_CLIENT_SECRET']
end
```

Make sure to restart the server for the changes in the initializer to be taken into account.
The Put.io authentication endpoint in your app is `/auth/putio'.

# License

Copyright (c) 2012 Dimiter Petrov

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
