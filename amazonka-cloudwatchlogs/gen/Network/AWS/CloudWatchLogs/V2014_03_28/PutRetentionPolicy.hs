{-# LANGUAGE DeriveGeneric               #-}
{-# LANGUAGE FlexibleInstances           #-}
{-# LANGUAGE NoImplicitPrelude           #-}
{-# LANGUAGE OverloadedStrings           #-}
{-# LANGUAGE RecordWildCards             #-}
{-# LANGUAGE TemplateHaskell             #-}
{-# LANGUAGE TypeFamilies                #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Module      : Network.AWS.CloudWatchLogs.V2014_03_28.PutRetentionPolicy
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Sets the retention of the specified log group. A retention policy allows
-- you to configure the number of days you want to retain log events in the
-- specified log group. Creates or updates a 30 day retention policy for a log
-- group The following is an example of a PutRetentionPolicy request and
-- response. POST / HTTP/1.1 Host: logs.. X-Amz-Date: Authorization:
-- AWS4-HMAC-SHA256 Credential=,
-- SignedHeaders=content-type;date;host;user-agent;x-amz-date;x-amz-target;x-amzn-requestid,
-- Signature= User-Agent: Accept: application/json Content-Type:
-- application/x-amz-json-1.1 Content-Length: Connection: Keep-Alive]]>
-- X-Amz-Target: Logs_20140328.PutRetentionPolicy { "logGroupName":
-- "exampleLogGroupName", "retentionInDays": 30 } HTTP/1.1 200 OK
-- x-amzn-RequestId: Content-Type: application/x-amz-json-1.1 Content-Length:
-- Date: ]]>.
module Network.AWS.CloudWatchLogs.V2014_03_28.PutRetentionPolicy where

import Control.Lens.TH (makeLenses)
import Network.AWS.Request.JSON
import Network.AWS.CloudWatchLogs.V2014_03_28.Types
import Network.AWS.Prelude
import qualified Network.AWS.Types.Map as Map

data PutRetentionPolicy = PutRetentionPolicy
    { _prprRetentionInDays :: Integer
      -- ^ Specifies the number of days you want to retain log events in the
      -- specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60,
      -- 90, 120, 150, 180, 365, 400, 547, 730.
    , _prprLogGroupName :: Text
    } deriving (Show, Generic)

makeLenses ''PutRetentionPolicy

instance ToPath PutRetentionPolicy

instance ToQuery PutRetentionPolicy

instance ToHeaders PutRetentionPolicy

instance ToJSON PutRetentionPolicy

data PutRetentionPolicyResponse = PutRetentionPolicyResponse
    deriving (Eq, Show, Generic)

makeLenses ''PutRetentionPolicyResponse

instance AWSRequest PutRetentionPolicy where
    type Sv PutRetentionPolicy = CloudWatchLogs
    type Rs PutRetentionPolicy = PutRetentionPolicyResponse

    request = get
    response _ = nullaryResponse PutRetentionPolicyResponse
