{-# LANGUAGE DeriveGeneric               #-}
{-# LANGUAGE FlexibleInstances           #-}
{-# LANGUAGE NoImplicitPrelude           #-}
{-# LANGUAGE OverloadedStrings           #-}
{-# LANGUAGE RecordWildCards             #-}
{-# LANGUAGE TemplateHaskell             #-}
{-# LANGUAGE TypeFamilies                #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Module      : Network.AWS.Route53Domains.V2014_05_15.RegisterDomain
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | This operation registers a domain. Domains are registered by the AWS
-- registrar partner, Gandi. For some top-level domains (TLDs), this operation
-- requires extra parameters. When you register a domain, Amazon Route 53 does
-- the following: Creates a Amazon Route 53 hosted zone that has the same name
-- as the domain. Amazon Route 53 assigns four name servers to your hosted
-- zone and automatically updates your domain registration with the names of
-- these name servers. Enables autorenew, so your domain registration will
-- renew automatically each year. We'll notify you in advance of the renewal
-- date so you can choose whether to renew the registration. Optionally
-- enables privacy protection, so WHOIS queries return contact information for
-- our registrar partner, Gandi, instead of the information you entered for
-- registrant, admin, and tech contacts. If registration is successful,
-- returns an operation ID that you can use to track the progress and
-- completion of the action. If the request is not completed successfully, the
-- domain registrant is notified by email. Charges your AWS account an amount
-- based on the top-level domain. For more information, see Amazon Route 53
-- Pricing. RegisterDomain Example POST / HTTP/1.1
-- host:route53domains.us-east-1.amazonaws.com x-amz-date:20140711T205230Z
-- authorization:AWS4-HMAC-SHA256
-- Credential=AKIAIOSFODNN7EXAMPLE/20140711/us-east-1/route53domains/aws4_request,
-- 
-- SignedHeaders=content-length;content-type;host;user-agent;x-amz-date;x-amz-target,
-- Signature=[calculated-signature]
-- x-amz-target:Route53Domains_v20140515.RegisterDomain
-- user-agent:aws-sdk-java/1.8.3 Linux/2.6.18-164.el5PAE Java_HotSpot (TM
-- )_Server_VM/24.60-b09/1.7.0_60 content-type:application/x-amz-json-1.1
-- content-length:[number of characters in the JSON string] {
-- "DomainName":"example.com", "DurationInYears":1, "AutoRenew":true,
-- "AdminContact":{ "FirstName":"John", "MiddleName":"Richard",
-- "LastName":"Doe", "ContactType":"PERSON", "OrganizationName":"",
-- "AddressLine1":"123 Any Street", "AddressLine2":"", "City":"Any Town",
-- "State":"WA", "CountryCode":"US", "ZipCode":"98101",
-- "PhoneNumber":"+2065550100", "Email":"john@example.com",
-- "Fax":"+2065550101" }, "RegistrantContact":{ "FirstName":"John",
-- "MiddleName":"Richard", "LastName":"Doe", "ContactType":"PERSON",
-- "OrganizationName":"", "AddressLine1":"123 Any Street", "AddressLine2":"",
-- "City":"Any Town", "State":"WA", "CountryCode":"US", "ZipCode":"98101",
-- "PhoneNumber":"+2065550100", "Email":"john@example.com",
-- "Fax":"+2065550101" }, "TechContact":{ "FirstName":"John",
-- "MiddleName":"Richard", "LastName":"Doe", "ContactType":"PERSON",
-- "OrganizationName":"", "AddressLine1":"123 Any Street", "AddressLine2":"",
-- "City":"Any Town", "State":"WA", "CountryCode":"US", "ZipCode":"98101",
-- "PhoneNumber":"+2065550100", "Email":"john@example.com",
-- "Fax":"+2065550101" }, "PrivacyProtectAdminContact":true,
-- "PrivacyProtectRegistrantContact":true, "PrivacyProtectTechContact":true }
-- HTTP/1.1 200 Content-Length:[number of characters in the JSON string] {
-- "OperationId":"308c56712-faa4-40fe-94c8-b423069de3f6" }.
module Network.AWS.Route53Domains.V2014_05_15.RegisterDomain where

import Control.Lens.TH (makeLenses)
import Network.AWS.Request.JSON
import Network.AWS.Route53Domains.V2014_05_15.Types
import Network.AWS.Prelude
import qualified Network.AWS.Types.Map as Map

-- | Minimum specification for a 'RegisterDomain' request.
registerDomain :: ContactDetail -- ^ '_rdrRegistrantContact'
               -> ContactDetail -- ^ '_rdrAdminContact'
               -> ContactDetail -- ^ '_rdrTechContact'
               -> Text -- ^ '_rdrDomainName'
               -> Integer -- ^ '_rdrDurationInYears'
               -> RegisterDomain
registerDomain p1 p2 p3 p4 p5 = RegisterDomain
    { _rdrRegistrantContact = p1
    , _rdrAdminContact = p2
    , _rdrTechContact = p3
    , _rdrDomainName = p4
    , _rdrDurationInYears = p5
    , _rdrPrivacyProtectTechContact = Nothing
    , _rdrPrivacyProtectRegistrantContact = Nothing
    , _rdrAutoRenew = Nothing
    , _rdrPrivacyProtectAdminContact = Nothing
    , _rdrIdnLangCode = Nothing
    }

data RegisterDomain = RegisterDomain
    { _rdrRegistrantContact :: ContactDetail
      -- ^ Provides detailed contact information. Type: Complex Children:
      -- FirstName, MiddleName, LastName, ContactType, OrganizationName,
      -- AddressLine1, AddressLine2, City, State, CountryCode, ZipCode,
      -- PhoneNumber, Email, Fax, ExtraParams Required: Yes.
    , _rdrAdminContact :: ContactDetail
      -- ^ Provides detailed contact information. Type: Complex Children:
      -- FirstName, MiddleName, LastName, ContactType, OrganizationName,
      -- AddressLine1, AddressLine2, City, State, CountryCode, ZipCode,
      -- PhoneNumber, Email, Fax, ExtraParams Required: Yes.
    , _rdrTechContact :: ContactDetail
      -- ^ Provides detailed contact information. Type: Complex Children:
      -- FirstName, MiddleName, LastName, ContactType, OrganizationName,
      -- AddressLine1, AddressLine2, City, State, CountryCode, ZipCode,
      -- PhoneNumber, Email, Fax, ExtraParams Required: Yes.
    , _rdrDomainName :: Text
      -- ^ The name of a domain. Type: String Default: None Constraints: The
      -- domain name can contain only the letters a through z, the numbers
      -- 0 through 9, and hyphen (-). Internationalized Domain Names are
      -- not supported. Required: Yes.
    , _rdrDurationInYears :: Integer
      -- ^ The number of years the domain will be registered. Domains are
      -- registered for a minimum of one year. The maximum period depends
      -- on the top-level domain. Type: Integer Default: 1 Valid values:
      -- Integer from 1 to 10 Required: Yes.
    , _rdrPrivacyProtectTechContact :: Maybe Bool
      -- ^ Whether you want to conceal contact information from WHOIS
      -- queries. If you specify true, WHOIS ("who is") queries will
      -- return contact information for our registrar partner, Gandi,
      -- instead of the contact information that you enter. Type: Boolean
      -- Default: true Valid values: true | false Required: No.
    , _rdrPrivacyProtectRegistrantContact :: Maybe Bool
      -- ^ Whether you want to conceal contact information from WHOIS
      -- queries. If you specify true, WHOIS ("who is") queries will
      -- return contact information for our registrar partner, Gandi,
      -- instead of the contact information that you enter. Type: Boolean
      -- Default: true Valid values: true | false Required: No.
    , _rdrAutoRenew :: Maybe Bool
      -- ^ Indicates whether the domain will be automatically renewed (true)
      -- or not (false). Autorenewal only takes effect after the account
      -- is charged. Type: Boolean Valid values: true | false Default:
      -- true Required: No.
    , _rdrPrivacyProtectAdminContact :: Maybe Bool
      -- ^ Whether you want to conceal contact information from WHOIS
      -- queries. If you specify true, WHOIS ("who is") queries will
      -- return contact information for our registrar partner, Gandi,
      -- instead of the contact information that you enter. Type: Boolean
      -- Default: true Valid values: true | false Required: No.
    , _rdrIdnLangCode :: Maybe Text
      -- ^ Reserved for future use.
    } deriving (Show, Generic)

makeLenses ''RegisterDomain

instance ToPath RegisterDomain

instance ToQuery RegisterDomain

instance ToHeaders RegisterDomain

instance ToJSON RegisterDomain

data RegisterDomainResponse = RegisterDomainResponse
    { _rdsOperationId :: Text
      -- ^ Identifier for tracking the progress of the request. To use this
      -- ID to query the operation status, use GetOperationDetail. Type:
      -- String Default: None Constraints: Maximum 255 characters.
    } deriving (Show, Generic)

makeLenses ''RegisterDomainResponse

instance FromJSON RegisterDomainResponse

instance AWSRequest RegisterDomain where
    type Sv RegisterDomain = Route53Domains
    type Rs RegisterDomain = RegisterDomainResponse

    request = get
    response _ = jsonResponse
