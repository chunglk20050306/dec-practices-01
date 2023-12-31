**To create an identity source**

The following ``create-identity-source`` example creates an identity source that lets you reference identities stored in the specified Amazon Cognito user pool. Those identities are available in Verified Permissions as entities of type ``User``. ::

    aws verifiedpermissions create-identity-source \
        --configuration file://config.txt \
        --principal-entity-type "User" \
        --policy-store-id PSEXAMPLEabcdefg111111

Contents of ``config.txt``::

    {
        "cognitoUserPoolConfiguration": {
            "userPoolArn": "arn:aws:cognito-idp:us-west-2:123456789012:userpool/us-west-2_1a2b3c4d5",
            "clientIds":["a1b2c3d4e5f6g7h8i9j0kalbmc"]
        }
    }

Output::

    {
        "createdDate": "2023-05-19T20:30:28.214829+00:00",
        "identitySourceId": "ISEXAMPLEabcdefg111111",
        "lastUpdatedDate": "2023-05-19T20:30:28.214829+00:00",
        "policyStoreId": "PSEXAMPLEabcdefg111111"
    }

For more information about identity sources, see `Using Amazon Verified Permissions with identity providers <https://docs.aws.amazon.com/verifiedpermissions/latest/userguide/identity-providers.html>`__ in the *Amazon Verified Permissions User Guide*.