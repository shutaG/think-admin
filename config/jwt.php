<?php

/**
 * Jwt 配置
 */

declare(strict_types=1);
return [
	'sso' => false,
	'ssoCacheKey' => 'jwt-auth-user',
	'ssoKey' => 'uid',
	'signerKey' => 'VKW37wnfN~',
	'notBefore' => 0,
	'expiresAt' => 3600,
	'signer' => 'Lcobucci\JWT\Signer\Hmac\Sha256',
	'injectUser' => true,
	'userModel' => 'app\model\User',
	'hasLogged' => 50401,
	'tokenAlready' => 50402,
];