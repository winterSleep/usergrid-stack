<%@ page language="java" contentType="application/json"%>{
  "basePath" : "",
  "swaggerVersion" : "1.1-SHAPSHOT.121026",
  "apiVersion" : "0.1",
  "apis" : [
    {
      "path" : "/apps/{app_name_or_uuid}/token",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "grant_type",
              "defaultValue" : "password",
              "description" : "Grant type",
              "dataType" : "string",
              "allowableValues" : {
                "values" : [
                  "password",
                  "client_credentials",
                  "refresh_token",
                  "authorization_code"
                ],
                "valueType" : "LIST"
              },
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "username",
              "description" : "Username (for grant_type=password)",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "password",
              "description" : "Password (for grant_type=password)",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "client_id",
              "description" : "Client ID (for grant_type=client_credentials)",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "client_secret",
              "description" : "Client Secret (for grant_type=client_credentials)",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            }
          ],
          "httpMethod" : "GET",
          "notes" : "Get the app access token.  See the OAuth2 specification for details.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_auth_password_get",
          "responseClass" : "response",
          "summary" : "Get app access token"
        },
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "grant_type",
              "defaultValue" : "password",
              "description" : "Grant type",
              "dataType" : "string",
              "allowableValues" : {
                "values" : [
                  "password",
                  "client_credentials",
                  "refresh_token",
                  "authorization_code"
                ],
                "valueType" : "LIST"
              },
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "post"
            },
            {
              "name" : "username",
              "description" : "Username (for grant_type=password)",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "post"
            },
            {
              "name" : "password",
              "description" : "Password (for grant_type=password)",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "post"
            },
            {
              "name" : "client_id",
              "description" : "Client ID (for grant_type=client_credentials)",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "post"
            },
            {
              "name" : "client_secret",
              "description" : "Client Secret (for grant_type=client_credentials)",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "post"
            }
          ],
          "httpMethod" : "POST",
          "notes" : "Get the app access token.  See the OAuth2 specification for details.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_auth_password_post",
          "responseClass" : "response",
          "summary" : "Get app access token"
        }
      ]
    },
    {
      "path" : "/apps/{app_name_or_uuid}/authorize",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "response_type",
              "defaultValue" : "token",
              "description" : "Response type",
              "dataType" : "string",
              "allowableValues" : {
                "values" : [
                  "token",
                  "code"
                ],
                "valueType" : "LIST"
              },
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "client_id",
              "description" : "Client ID",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "redirect_uri",
              "description" : "Redirect URI",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "scope",
              "description" : "Access Token Scope",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "state",
              "description" : "Client State",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            }
          ],
          "httpMethod" : "GET",
          "notes" : "Authorize the app client.  See the OAuth2 specification.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_authorize_get",
          "responseClass" : "response",
          "summary" : "Authorize app client"
        },
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "response_type",
              "defaultValue" : "token",
              "description" : "Response type",
              "dataType" : "string",
              "allowableValues" : {
                "values" : [
                  "token",
                  "code"
                ],
                "valueType" : "LIST"
              },
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "client_id",
              "description" : "Client ID",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "redirect_uri",
              "description" : "Redirect URI",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "scope",
              "description" : "Access Token Scope",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "state",
              "description" : "Client State",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "username",
              "description" : "Username",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "password",
              "description" : "Password",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            }
          ],
          "httpMethod" : "POST",
          "notes" : "Authorize the app client.  See the OAuth2 specification.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_authorize_post",
          "responseClass" : "response",
          "summary" : "Authorize app client"
        }
      ]
    },
    {
      "path" : "/apps/{app_name_or_uuid}/credentials",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "access_token",
              "description" : "The OAuth2 access token",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "query"
            }
          ],
          "httpMethod" : "GET",
          "notes" : "Get the app client credentials.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "User not found",
              "code" : 404
            }
          ],
          "nickname" : "app_credentials_get",
          "responseClass" : "response",
          "summary" : "Get app client credentials"
        },
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "access_token",
              "description" : "The OAuth2 access token",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "query"
            }
          ],
          "httpMethod" : "POST",
          "notes" : "Generate new app client credentials.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "User not found",
              "code" : 404
            }
          ],
          "nickname" : "app_credentials_post",
          "responseClass" : "response",
          "summary" : "Generate app client credentials"
        }
      ]
    },
    {
      "path" : "/apps/{app_name_or_uuid}/users",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "json",
              "description" : "User to post",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "body"
            }
          ],
          "httpMethod" : "POST",
          "notes" : "Create new app user.  See Usergrid documentation for JSON format of body.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_user_json_post",
          "responseClass" : "response",
          "summary" : "Create new app user"
        },
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "username",
              "description" : "Username",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "post"
            },
            {
              "name" : "name",
              "description" : "User Full Name",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "post"
            },
            {
              "name" : "email",
              "description" : "User Email",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "post"
            },
            {
              "name" : "password",
              "description" : "User Password",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "post"
            }
          ],
          "httpMethod" : "POST",
          "notes" : "Create new app user using form post parameters.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_user_form_post",
          "responseClass" : "response",
          "summary" : "Create new app user"
        }
      ]
    },
    {
      "path" : "/apps/{app_name_or_uuid}/users/resetpw",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            }
          ],
          "httpMethod" : "GET",
          "notes" : "Initiate a user password reset.  Returns browser-viewable HTML page.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_user_reset_password_get",
          "responseClass" : "response",
          "summary" : "Initiate a user password reset"
        },
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "email",
              "description" : "User Email",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "post"
            },
            {
              "name" : "recaptcha_challenge_field",
              "description" : "Recaptcha Challenge Field",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "post"
            },
            {
              "name" : "recaptcha_response_field",
              "description" : "Recaptcha Response Field",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "post"
            }
          ],
          "httpMethod" : "POST",
          "notes" : "Complete a user password reset.  Handles form POST response.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_user_reset_password_form_post",
          "responseClass" : "response",
          "summary" : "Complete a user password reset"
        }
      ]
    },
    {
      "path" : "/apps/{app_name_or_uuid}/users/{user_username_email_or_uuid}",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "access_token",
              "description" : "The OAuth2 access token",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "user_username_email_or_uuid",
              "description" : "User username, email or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            }
          ],
          "httpMethod" : "GET",
          "notes" : "Returns the app user details.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_user_get",
          "responseClass" : "response",
          "summary" : "Returns the app user details"
        },
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "access_token",
              "description" : "The OAuth2 access token",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "user_username_email_or_uuid",
              "description" : "User username, email or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "json",
              "description" : "App user details",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "body"
            }
          ],
          "httpMethod" : "PUT",
          "notes" : "Updates the app user details.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_user_json_put",
          "responseClass" : "response",
          "summary" : "Updates the app user details"
        }
      ]
    },
    {
      "path" : "/apps/{app_name_or_uuid}/users/{user_username_email_or_uuid}/activate",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "token",
              "description" : "Activation Token (supplied via email)",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "confirm",
              "description" : "Send confirmation email",
              "dataType" : "boolean",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "user_username_email_or_uuid",
              "description" : "User username, email or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            }
          ],
          "httpMethod" : "GET",
          "notes" : "Activates the app user from link provided in email notification.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "User not found",
              "code" : 404
            }
          ],
          "nickname" : "app_user_activate_get",
          "responseClass" : "response",
          "summary" : "Activates the app user"
        }
      ]
    },
    {
      "path" : "/apps/{app_name_or_uuid}/users/{user_username_email_or_uuid}/reactivate",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "user_username_email_or_uuid",
              "description" : "User username, email or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            }
          ],
          "httpMethod" : "GET",
          "notes" : "Request app user reactivation.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "User not found",
              "code" : 404
            }
          ],
          "nickname" : "app_user_reactivate_get",
          "responseClass" : "response",
          "summary" : "Reactivates the app user"
        }
      ]
    },
    {
      "path" : "/apps/{app_name_or_uuid}/users/{user_username_email_or_uuid}/feed",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "access_token",
              "description" : "The OAuth2 access token",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "user_username_email_or_uuid",
              "description" : "User username, email or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            }
          ],
          "httpMethod" : "GET",
          "notes" : "Get app user activity feed.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "User not found",
              "code" : 404
            }
          ],
          "nickname" : "app_user_feed_get",
          "responseClass" : "response",
          "summary" : "Get app user activity feed"
        }
      ]
    },
    {
      "path" : "/apps/{app_name_or_uuid}/users/{user_username_email_or_uuid}/password",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "access_token",
              "description" : "The OAuth2 access token",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "user_username_email_or_uuid",
              "description" : "User username, email or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "json",
              "description" : "Old and new password",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "body"
            }
          ],
          "httpMethod" : "PUT",
          "notes" : "Set app user password.  See Usergrid documentation for JSON format of body.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "User not found",
              "code" : 404
            }
          ],
          "nickname" : "app_user_password_json_put",
          "responseClass" : "response",
          "summary" : "Set app user password"
        }
      ]
    },
    {
      "path" : "/apps/{app_name_or_uuid}/users/{user_username_email_or_uuid}/resetpw",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "user_username_email_or_uuid",
              "description" : "User username, email or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            }
          ],
          "httpMethod" : "GET",
          "notes" : "Initiate a user password reset.  Returns browser-viewable HTML page.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_user_reset_password_get",
          "responseClass" : "response",
          "summary" : "Initiate a user password reset"
        },
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "user_username_email_or_uuid",
              "description" : "User username, email or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "recaptcha_challenge_field",
              "description" : "Recaptcha Challenge Field",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "post"
            },
            {
              "name" : "recaptcha_response_field",
              "description" : "Recaptcha Response Field",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "post"
            }
          ],
          "httpMethod" : "POST",
          "notes" : "Complete a user password reset.  Handles form POST response.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_user_reset_password_form_post",
          "responseClass" : "response",
          "summary" : "Complete a user password reset"
        }
      ]
    },
    {
      "path" : "/apps/{app_name_or_uuid}/{collection}",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "collection",
              "description" : "collection name (entity type)",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "ql",
              "description" : "a query in the query language",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "reversed",
              "description" : "return results in reverse order",
              "dataType" : "boolean",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "start",
              "description" : "the first entity UUID to return",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "cursor",
              "description" : "an encoded representation of the query position for paging",
              "dataType" : "string",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "limit",
              "description" : "an encoded representation of the query position for paging",
              "dataType" : "integer",
              "required" : false,
              "allowMultiple" : false,
              "paramType" : "query"
            },
            {
              "name" : "filter",
              "description" : "a condition to filter on",
              "dataType" : "integer",
              "required" : false,
              "allowMultiple" : true,
              "paramType" : "query"
            }
          ],
          "httpMethod" : "GET",
          "notes" : "Query an app collection.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_entity_get",
          "responseClass" : "response",
          "summary" : "Query an app collection"
        },
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "collection",
              "description" : "collection name (entity type)",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "json",
              "description" : "User to post",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "body"
            }
          ],
          "httpMethod" : "POST",
          "notes" : "Create new app entity.  See Usergrid documentation for JSON format of body.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_entity_json_post",
          "responseClass" : "response",
          "summary" : "Create new app entity"
        }
      ]
    },
    {
      "path" : "/apps/{app_name_or_uuid}/{collection}/{entity_name_or_uuid}",
      "description" : "Applications",
      "operations" : [
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "collection",
              "description" : "collection name (entity type)",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "entity_name_or_uuid",
              "description" : "entity name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "json",
              "description" : "User to post",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "body"
            }
          ],
          "httpMethod" : "PUT",
          "notes" : "Update an app entity in a collection.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_entity_put",
          "responseClass" : "response",
          "summary" : "Update an app entity"
        },
        {
          "parameters" : [
            {
              "name" : "app_name_or_uuid",
              "description" : "app name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "collection",
              "description" : "collection name (entity type)",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            },
            {
              "name" : "entity_name_or_uuid",
              "description" : "entity name or uuid",
              "dataType" : "string",
              "required" : true,
              "allowMultiple" : false,
              "paramType" : "path"
            }
          ],
          "httpMethod" : "DELETE",
          "notes" : "Delete an app entity.",
          "responseTypeInternal" : "",
          "errorResponses" : [
            {
              "reason" : "Invalid ID supplied",
              "code" : 400
            },
            {
              "reason" : "Application not found",
              "code" : 404
            }
          ],
          "nickname" : "app_entity_delete",
          "responseClass" : "response",
          "summary" : "Delete an app entity"
        }
      ]
    }
  ],
  "models" : {
    "response" : {
      "properties" : {
        "id" : {
          "type" : "long"
        },
        "name" : {
          "type" : "string"
        }
      },
      "id" : "response"
    }
  }
}