{-# OPTIONS_GHC -fno-warn-orphans #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Config
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.Config where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.Config
import Test.AWS.Config.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ testGetResourceConfigHistory $
--             getResourceConfigHistory
--
--         , testStopConfigurationRecorder $
--             stopConfigurationRecorder
--
--         , testDeliverConfigSnapshot $
--             deliverConfigSnapshot
--
--         , testDescribeConfigurationRecorders $
--             describeConfigurationRecorders
--
--         , testStartConfigurationRecorder $
--             startConfigurationRecorder
--
--         , testDescribeConfigurationRecorderStatus $
--             describeConfigurationRecorderStatus
--
--         , testPutConfigurationRecorder $
--             putConfigurationRecorder
--
--         , testDeleteDeliveryChannel $
--             deleteDeliveryChannel
--
--         , testPutDeliveryChannel $
--             putDeliveryChannel
--
--         , testDescribeDeliveryChannelStatus $
--             describeDeliveryChannelStatus
--
--         , testDescribeDeliveryChannels $
--             describeDeliveryChannels
--
--           ]

--     , testGroup "response"
--         [ testGetResourceConfigHistoryResponse $
--             getResourceConfigHistoryResponse
--
--         , testStopConfigurationRecorderResponse $
--             stopConfigurationRecorderResponse
--
--         , testDeliverConfigSnapshotResponse $
--             deliverConfigSnapshotResponse
--
--         , testDescribeConfigurationRecordersResponse $
--             describeConfigurationRecordersResponse
--
--         , testStartConfigurationRecorderResponse $
--             startConfigurationRecorderResponse
--
--         , testDescribeConfigurationRecorderStatusResponse $
--             describeConfigurationRecorderStatusResponse
--
--         , testPutConfigurationRecorderResponse $
--             putConfigurationRecorderResponse
--
--         , testDeleteDeliveryChannelResponse $
--             deleteDeliveryChannelResponse
--
--         , testPutDeliveryChannelResponse $
--             putDeliveryChannelResponse
--
--         , testDescribeDeliveryChannelStatusResponse $
--             describeDeliveryChannelStatusResponse
--
--         , testDescribeDeliveryChannelsResponse $
--             describeDeliveryChannelsResponse
--
--           ]
--     ]

-- Requests

testGetResourceConfigHistory :: GetResourceConfigHistory -> TestTree
testGetResourceConfigHistory = undefined

testStopConfigurationRecorder :: StopConfigurationRecorder -> TestTree
testStopConfigurationRecorder = undefined

testDeliverConfigSnapshot :: DeliverConfigSnapshot -> TestTree
testDeliverConfigSnapshot = undefined

testDescribeConfigurationRecorders :: DescribeConfigurationRecorders -> TestTree
testDescribeConfigurationRecorders = undefined

testStartConfigurationRecorder :: StartConfigurationRecorder -> TestTree
testStartConfigurationRecorder = undefined

testDescribeConfigurationRecorderStatus :: DescribeConfigurationRecorderStatus -> TestTree
testDescribeConfigurationRecorderStatus = undefined

testPutConfigurationRecorder :: PutConfigurationRecorder -> TestTree
testPutConfigurationRecorder = undefined

testDeleteDeliveryChannel :: DeleteDeliveryChannel -> TestTree
testDeleteDeliveryChannel = undefined

testPutDeliveryChannel :: PutDeliveryChannel -> TestTree
testPutDeliveryChannel = undefined

testDescribeDeliveryChannelStatus :: DescribeDeliveryChannelStatus -> TestTree
testDescribeDeliveryChannelStatus = undefined

testDescribeDeliveryChannels :: DescribeDeliveryChannels -> TestTree
testDescribeDeliveryChannels = undefined

-- Responses

testGetResourceConfigHistoryResponse :: GetResourceConfigHistoryResponse -> TestTree
testGetResourceConfigHistoryResponse = resp
    "GetResourceConfigHistoryResponse"
    "fixture/GetResourceConfigHistoryResponse"
    (Proxy :: Proxy GetResourceConfigHistory)

testStopConfigurationRecorderResponse :: StopConfigurationRecorderResponse -> TestTree
testStopConfigurationRecorderResponse = resp
    "StopConfigurationRecorderResponse"
    "fixture/StopConfigurationRecorderResponse"
    (Proxy :: Proxy StopConfigurationRecorder)

testDeliverConfigSnapshotResponse :: DeliverConfigSnapshotResponse -> TestTree
testDeliverConfigSnapshotResponse = resp
    "DeliverConfigSnapshotResponse"
    "fixture/DeliverConfigSnapshotResponse"
    (Proxy :: Proxy DeliverConfigSnapshot)

testDescribeConfigurationRecordersResponse :: DescribeConfigurationRecordersResponse -> TestTree
testDescribeConfigurationRecordersResponse = resp
    "DescribeConfigurationRecordersResponse"
    "fixture/DescribeConfigurationRecordersResponse"
    (Proxy :: Proxy DescribeConfigurationRecorders)

testStartConfigurationRecorderResponse :: StartConfigurationRecorderResponse -> TestTree
testStartConfigurationRecorderResponse = resp
    "StartConfigurationRecorderResponse"
    "fixture/StartConfigurationRecorderResponse"
    (Proxy :: Proxy StartConfigurationRecorder)

testDescribeConfigurationRecorderStatusResponse :: DescribeConfigurationRecorderStatusResponse -> TestTree
testDescribeConfigurationRecorderStatusResponse = resp
    "DescribeConfigurationRecorderStatusResponse"
    "fixture/DescribeConfigurationRecorderStatusResponse"
    (Proxy :: Proxy DescribeConfigurationRecorderStatus)

testPutConfigurationRecorderResponse :: PutConfigurationRecorderResponse -> TestTree
testPutConfigurationRecorderResponse = resp
    "PutConfigurationRecorderResponse"
    "fixture/PutConfigurationRecorderResponse"
    (Proxy :: Proxy PutConfigurationRecorder)

testDeleteDeliveryChannelResponse :: DeleteDeliveryChannelResponse -> TestTree
testDeleteDeliveryChannelResponse = resp
    "DeleteDeliveryChannelResponse"
    "fixture/DeleteDeliveryChannelResponse"
    (Proxy :: Proxy DeleteDeliveryChannel)

testPutDeliveryChannelResponse :: PutDeliveryChannelResponse -> TestTree
testPutDeliveryChannelResponse = resp
    "PutDeliveryChannelResponse"
    "fixture/PutDeliveryChannelResponse"
    (Proxy :: Proxy PutDeliveryChannel)

testDescribeDeliveryChannelStatusResponse :: DescribeDeliveryChannelStatusResponse -> TestTree
testDescribeDeliveryChannelStatusResponse = resp
    "DescribeDeliveryChannelStatusResponse"
    "fixture/DescribeDeliveryChannelStatusResponse"
    (Proxy :: Proxy DescribeDeliveryChannelStatus)

testDescribeDeliveryChannelsResponse :: DescribeDeliveryChannelsResponse -> TestTree
testDescribeDeliveryChannelsResponse = resp
    "DescribeDeliveryChannelsResponse"
    "fixture/DescribeDeliveryChannelsResponse"
    (Proxy :: Proxy DescribeDeliveryChannels)

instance Out ChronologicalOrder
instance Out ConfigExportDeliveryInfo
instance Out ConfigStreamDeliveryInfo
instance Out ConfigurationItem
instance Out ConfigurationItemStatus
instance Out ConfigurationRecorder
instance Out ConfigurationRecorderStatus
instance Out DeleteDeliveryChannel
instance Out DeleteDeliveryChannelResponse
instance Out DeliverConfigSnapshot
instance Out DeliverConfigSnapshotResponse
instance Out DeliveryChannel
instance Out DeliveryChannelStatus
instance Out DeliveryStatus
instance Out DescribeConfigurationRecorderStatus
instance Out DescribeConfigurationRecorderStatusResponse
instance Out DescribeConfigurationRecorders
instance Out DescribeConfigurationRecordersResponse
instance Out DescribeDeliveryChannelStatus
instance Out DescribeDeliveryChannelStatusResponse
instance Out DescribeDeliveryChannels
instance Out DescribeDeliveryChannelsResponse
instance Out GetResourceConfigHistory
instance Out GetResourceConfigHistoryResponse
instance Out PutConfigurationRecorder
instance Out PutConfigurationRecorderResponse
instance Out PutDeliveryChannel
instance Out PutDeliveryChannelResponse
instance Out RecorderStatus
instance Out RecordingGroup
instance Out Relationship
instance Out ResourceType
instance Out StartConfigurationRecorder
instance Out StartConfigurationRecorderResponse
instance Out StopConfigurationRecorder
instance Out StopConfigurationRecorderResponse
