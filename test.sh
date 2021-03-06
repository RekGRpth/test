#!/bin/sh -eux

apk add --no-cache \
    curl \
    git \
    linux-headers \
    make \
    musl-dev \
    perl-dev \
    perl-utils \
; \
cpan -Ti Test::Nginx::Socket Test::File; \
mkdir -p "${HOME}/src"; \
cd "${HOME}/src"; \
git clone https://github.com/RekGRpth/nginx.git; \
mkdir -p "${HOME}/src/nginx/modules"; \
cd "${HOME}/src/nginx/modules"; \
git clone https://github.com/RekGRpth/echo-nginx-module.git; \
git clone https://github.com/RekGRpth/encrypted-session-nginx-module.git; \
git clone https://github.com/RekGRpth/form-input-nginx-module.git; \
git clone https://github.com/RekGRpth/iconv-nginx-module.git; \
git clone https://github.com/RekGRpth/nginx_csrf_prevent.git; \
git clone https://github.com/RekGRpth/nginx-eval-module.git; \
git clone https://github.com/RekGRpth/nginx-jwt-module.git; \
git clone https://github.com/RekGRpth/nginx-push-stream-module.git; \
git clone https://github.com/RekGRpth/nginx-upload-module.git; \
git clone https://github.com/RekGRpth/nginx-upstream-fair.git; \
git clone https://github.com/RekGRpth/nginx-uuid4-module.git; \
git clone https://github.com/RekGRpth/ngx_brotli.git; \
git clone https://github.com/RekGRpth/ngx_http_auth_basic_ldap_module.git; \
git clone https://github.com/RekGRpth/ngx_http_captcha_module.git; \
git clone https://github.com/RekGRpth/ngx_http_handlebars_module.git; \
git clone https://github.com/RekGRpth/ngx_http_headers_module.git; \
git clone https://github.com/RekGRpth/ngx_http_htmldoc_module.git; \
git clone https://github.com/RekGRpth/ngx_http_json_module.git; \
git clone https://github.com/RekGRpth/ngx_http_mustach_module.git; \
git clone https://github.com/RekGRpth/ngx_http_response_body_module.git; \
git clone https://github.com/RekGRpth/ngx_http_sign_module.git; \
git clone https://github.com/RekGRpth/ngx_http_substitutions_filter_module.git; \
git clone https://github.com/RekGRpth/ngx_http_upstream_session_sticky_module.git; \
git clone https://github.com/RekGRpth/ngx_http_zip_var_module.git; \
git clone https://github.com/RekGRpth/ngx_postgres.git; \
git clone https://github.com/RekGRpth/njs.git; \
git clone https://github.com/RekGRpth/set-misc-nginx-module.git; \
find "${HOME}/src/nginx/modules" -type d -name "t" | grep -v "\.git" | while read -r NAME; do
    DIR="$(dirname "${NAME}")"
    cd "${DIR}"
    prove t
done
echo done
