{-# OPTIONS_GHC -fno-warn-orphans #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Redshift
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.Redshift where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.Redshift
import Test.AWS.Redshift.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ testDescribeClusters $
--             describeClusters
--
--         , testDescribeTags $
--             describeTags
--
--         , testModifyEventSubscription $
--             modifyEventSubscription
--
--         , testDisableLogging $
--             disableLogging
--
--         , testPurchaseReservedNodeOffering $
--             purchaseReservedNodeOffering
--
--         , testDeleteClusterSubnetGroup $
--             deleteClusterSubnetGroup
--
--         , testDeleteClusterSnapshot $
--             deleteClusterSnapshot
--
--         , testDescribeEvents $
--             describeEvents
--
--         , testDescribeReservedNodeOfferings $
--             describeReservedNodeOfferings
--
--         , testDescribeClusterParameterGroups $
--             describeClusterParameterGroups
--
--         , testCreateClusterSubnetGroup $
--             createClusterSubnetGroup
--
--         , testDescribeReservedNodes $
--             describeReservedNodes
--
--         , testEnableLogging $
--             enableLogging
--
--         , testCreateTags $
--             createTags
--
--         , testDescribeClusterSecurityGroups $
--             describeClusterSecurityGroups
--
--         , testDeleteClusterParameterGroup $
--             deleteClusterParameterGroup
--
--         , testDeleteTags $
--             deleteTags
--
--         , testEnableSnapshotCopy $
--             enableSnapshotCopy
--
--         , testModifySnapshotCopyRetentionPeriod $
--             modifySnapshotCopyRetentionPeriod
--
--         , testDescribeClusterSnapshots $
--             describeClusterSnapshots
--
--         , testDescribeClusterSubnetGroups $
--             describeClusterSubnetGroups
--
--         , testAuthorizeSnapshotAccess $
--             authorizeSnapshotAccess
--
--         , testCreateEventSubscription $
--             createEventSubscription
--
--         , testRebootCluster $
--             rebootCluster
--
--         , testDescribeOrderableClusterOptions $
--             describeOrderableClusterOptions
--
--         , testDeleteCluster $
--             deleteCluster
--
--         , testDeleteEventSubscription $
--             deleteEventSubscription
--
--         , testDescribeDefaultClusterParameters $
--             describeDefaultClusterParameters
--
--         , testCreateCluster $
--             createCluster
--
--         , testCreateHSMClientCertificate $
--             createHSMClientCertificate
--
--         , testResetClusterParameterGroup $
--             resetClusterParameterGroup
--
--         , testDescribeEventSubscriptions $
--             describeEventSubscriptions
--
--         , testDescribeHSMClientCertificates $
--             describeHSMClientCertificates
--
--         , testModifyClusterParameterGroup $
--             modifyClusterParameterGroup
--
--         , testRevokeClusterSecurityGroupIngress $
--             revokeClusterSecurityGroupIngress
--
--         , testAuthorizeClusterSecurityGroupIngress $
--             authorizeClusterSecurityGroupIngress
--
--         , testCreateClusterSecurityGroup $
--             createClusterSecurityGroup
--
--         , testDescribeResize $
--             describeResize
--
--         , testDescribeEventCategories $
--             describeEventCategories
--
--         , testDeleteHSMConfiguration $
--             deleteHSMConfiguration
--
--         , testDeleteClusterSecurityGroup $
--             deleteClusterSecurityGroup
--
--         , testCreateHSMConfiguration $
--             createHSMConfiguration
--
--         , testModifyCluster $
--             modifyCluster
--
--         , testCreateClusterSnapshot $
--             createClusterSnapshot
--
--         , testDescribeLoggingStatus $
--             describeLoggingStatus
--
--         , testDescribeClusterParameters $
--             describeClusterParameters
--
--         , testDisableSnapshotCopy $
--             disableSnapshotCopy
--
--         , testRestoreFromClusterSnapshot $
--             restoreFromClusterSnapshot
--
--         , testDescribeHSMConfigurations $
--             describeHSMConfigurations
--
--         , testCreateClusterParameterGroup $
--             createClusterParameterGroup
--
--         , testRevokeSnapshotAccess $
--             revokeSnapshotAccess
--
--         , testDeleteHSMClientCertificate $
--             deleteHSMClientCertificate
--
--         , testCreateSnapshotCopyGrant $
--             createSnapshotCopyGrant
--
--         , testCopyClusterSnapshot $
--             copyClusterSnapshot
--
--         , testDescribeClusterVersions $
--             describeClusterVersions
--
--         , testModifyClusterSubnetGroup $
--             modifyClusterSubnetGroup
--
--         , testDeleteSnapshotCopyGrant $
--             deleteSnapshotCopyGrant
--
--         , testDescribeSnapshotCopyGrants $
--             describeSnapshotCopyGrants
--
--         , testRotateEncryptionKey $
--             rotateEncryptionKey
--
--           ]

--     , testGroup "response"
--         [ testDescribeClustersResponse $
--             describeClustersResponse
--
--         , testDescribeTagsResponse $
--             describeTagsResponse
--
--         , testModifyEventSubscriptionResponse $
--             modifyEventSubscriptionResponse
--
--         , testDisableLoggingResponse $
--             loggingStatus
--
--         , testPurchaseReservedNodeOfferingResponse $
--             purchaseReservedNodeOfferingResponse
--
--         , testDeleteClusterSubnetGroupResponse $
--             deleteClusterSubnetGroupResponse
--
--         , testDeleteClusterSnapshotResponse $
--             deleteClusterSnapshotResponse
--
--         , testDescribeEventsResponse $
--             describeEventsResponse
--
--         , testDescribeReservedNodeOfferingsResponse $
--             describeReservedNodeOfferingsResponse
--
--         , testDescribeClusterParameterGroupsResponse $
--             describeClusterParameterGroupsResponse
--
--         , testCreateClusterSubnetGroupResponse $
--             createClusterSubnetGroupResponse
--
--         , testDescribeReservedNodesResponse $
--             describeReservedNodesResponse
--
--         , testEnableLoggingResponse $
--             loggingStatus
--
--         , testCreateTagsResponse $
--             createTagsResponse
--
--         , testDescribeClusterSecurityGroupsResponse $
--             describeClusterSecurityGroupsResponse
--
--         , testDeleteClusterParameterGroupResponse $
--             deleteClusterParameterGroupResponse
--
--         , testDeleteTagsResponse $
--             deleteTagsResponse
--
--         , testEnableSnapshotCopyResponse $
--             enableSnapshotCopyResponse
--
--         , testModifySnapshotCopyRetentionPeriodResponse $
--             modifySnapshotCopyRetentionPeriodResponse
--
--         , testDescribeClusterSnapshotsResponse $
--             describeClusterSnapshotsResponse
--
--         , testDescribeClusterSubnetGroupsResponse $
--             describeClusterSubnetGroupsResponse
--
--         , testAuthorizeSnapshotAccessResponse $
--             authorizeSnapshotAccessResponse
--
--         , testCreateEventSubscriptionResponse $
--             createEventSubscriptionResponse
--
--         , testRebootClusterResponse $
--             rebootClusterResponse
--
--         , testDescribeOrderableClusterOptionsResponse $
--             describeOrderableClusterOptionsResponse
--
--         , testDeleteClusterResponse $
--             deleteClusterResponse
--
--         , testDeleteEventSubscriptionResponse $
--             deleteEventSubscriptionResponse
--
--         , testDescribeDefaultClusterParametersResponse $
--             describeDefaultClusterParametersResponse
--
--         , testCreateClusterResponse $
--             createClusterResponse
--
--         , testCreateHSMClientCertificateResponse $
--             createHSMClientCertificateResponse
--
--         , testResetClusterParameterGroupResponse $
--             clusterParameterGroupNameMessage
--
--         , testDescribeEventSubscriptionsResponse $
--             describeEventSubscriptionsResponse
--
--         , testDescribeHSMClientCertificatesResponse $
--             describeHSMClientCertificatesResponse
--
--         , testModifyClusterParameterGroupResponse $
--             clusterParameterGroupNameMessage
--
--         , testRevokeClusterSecurityGroupIngressResponse $
--             revokeClusterSecurityGroupIngressResponse
--
--         , testAuthorizeClusterSecurityGroupIngressResponse $
--             authorizeClusterSecurityGroupIngressResponse
--
--         , testCreateClusterSecurityGroupResponse $
--             createClusterSecurityGroupResponse
--
--         , testDescribeResizeResponse $
--             describeResizeResponse
--
--         , testDescribeEventCategoriesResponse $
--             describeEventCategoriesResponse
--
--         , testDeleteHSMConfigurationResponse $
--             deleteHSMConfigurationResponse
--
--         , testDeleteClusterSecurityGroupResponse $
--             deleteClusterSecurityGroupResponse
--
--         , testCreateHSMConfigurationResponse $
--             createHSMConfigurationResponse
--
--         , testModifyClusterResponse $
--             modifyClusterResponse
--
--         , testCreateClusterSnapshotResponse $
--             createClusterSnapshotResponse
--
--         , testDescribeLoggingStatusResponse $
--             loggingStatus
--
--         , testDescribeClusterParametersResponse $
--             describeClusterParametersResponse
--
--         , testDisableSnapshotCopyResponse $
--             disableSnapshotCopyResponse
--
--         , testRestoreFromClusterSnapshotResponse $
--             restoreFromClusterSnapshotResponse
--
--         , testDescribeHSMConfigurationsResponse $
--             describeHSMConfigurationsResponse
--
--         , testCreateClusterParameterGroupResponse $
--             createClusterParameterGroupResponse
--
--         , testRevokeSnapshotAccessResponse $
--             revokeSnapshotAccessResponse
--
--         , testDeleteHSMClientCertificateResponse $
--             deleteHSMClientCertificateResponse
--
--         , testCreateSnapshotCopyGrantResponse $
--             createSnapshotCopyGrantResponse
--
--         , testCopyClusterSnapshotResponse $
--             copyClusterSnapshotResponse
--
--         , testDescribeClusterVersionsResponse $
--             describeClusterVersionsResponse
--
--         , testModifyClusterSubnetGroupResponse $
--             modifyClusterSubnetGroupResponse
--
--         , testDeleteSnapshotCopyGrantResponse $
--             deleteSnapshotCopyGrantResponse
--
--         , testDescribeSnapshotCopyGrantsResponse $
--             describeSnapshotCopyGrantsResponse
--
--         , testRotateEncryptionKeyResponse $
--             rotateEncryptionKeyResponse
--
--           ]
--     ]

-- Requests

testDescribeClusters :: DescribeClusters -> TestTree
testDescribeClusters = undefined

testDescribeTags :: DescribeTags -> TestTree
testDescribeTags = undefined

testModifyEventSubscription :: ModifyEventSubscription -> TestTree
testModifyEventSubscription = undefined

testDisableLogging :: DisableLogging -> TestTree
testDisableLogging = undefined

testPurchaseReservedNodeOffering :: PurchaseReservedNodeOffering -> TestTree
testPurchaseReservedNodeOffering = undefined

testDeleteClusterSubnetGroup :: DeleteClusterSubnetGroup -> TestTree
testDeleteClusterSubnetGroup = undefined

testDeleteClusterSnapshot :: DeleteClusterSnapshot -> TestTree
testDeleteClusterSnapshot = undefined

testDescribeEvents :: DescribeEvents -> TestTree
testDescribeEvents = undefined

testDescribeReservedNodeOfferings :: DescribeReservedNodeOfferings -> TestTree
testDescribeReservedNodeOfferings = undefined

testDescribeClusterParameterGroups :: DescribeClusterParameterGroups -> TestTree
testDescribeClusterParameterGroups = undefined

testCreateClusterSubnetGroup :: CreateClusterSubnetGroup -> TestTree
testCreateClusterSubnetGroup = undefined

testDescribeReservedNodes :: DescribeReservedNodes -> TestTree
testDescribeReservedNodes = undefined

testEnableLogging :: EnableLogging -> TestTree
testEnableLogging = undefined

testCreateTags :: CreateTags -> TestTree
testCreateTags = undefined

testDescribeClusterSecurityGroups :: DescribeClusterSecurityGroups -> TestTree
testDescribeClusterSecurityGroups = undefined

testDeleteClusterParameterGroup :: DeleteClusterParameterGroup -> TestTree
testDeleteClusterParameterGroup = undefined

testDeleteTags :: DeleteTags -> TestTree
testDeleteTags = undefined

testEnableSnapshotCopy :: EnableSnapshotCopy -> TestTree
testEnableSnapshotCopy = undefined

testModifySnapshotCopyRetentionPeriod :: ModifySnapshotCopyRetentionPeriod -> TestTree
testModifySnapshotCopyRetentionPeriod = undefined

testDescribeClusterSnapshots :: DescribeClusterSnapshots -> TestTree
testDescribeClusterSnapshots = undefined

testDescribeClusterSubnetGroups :: DescribeClusterSubnetGroups -> TestTree
testDescribeClusterSubnetGroups = undefined

testAuthorizeSnapshotAccess :: AuthorizeSnapshotAccess -> TestTree
testAuthorizeSnapshotAccess = undefined

testCreateEventSubscription :: CreateEventSubscription -> TestTree
testCreateEventSubscription = undefined

testRebootCluster :: RebootCluster -> TestTree
testRebootCluster = undefined

testDescribeOrderableClusterOptions :: DescribeOrderableClusterOptions -> TestTree
testDescribeOrderableClusterOptions = undefined

testDeleteCluster :: DeleteCluster -> TestTree
testDeleteCluster = undefined

testDeleteEventSubscription :: DeleteEventSubscription -> TestTree
testDeleteEventSubscription = undefined

testDescribeDefaultClusterParameters :: DescribeDefaultClusterParameters -> TestTree
testDescribeDefaultClusterParameters = undefined

testCreateCluster :: CreateCluster -> TestTree
testCreateCluster = undefined

testCreateHSMClientCertificate :: CreateHSMClientCertificate -> TestTree
testCreateHSMClientCertificate = undefined

testResetClusterParameterGroup :: ResetClusterParameterGroup -> TestTree
testResetClusterParameterGroup = undefined

testDescribeEventSubscriptions :: DescribeEventSubscriptions -> TestTree
testDescribeEventSubscriptions = undefined

testDescribeHSMClientCertificates :: DescribeHSMClientCertificates -> TestTree
testDescribeHSMClientCertificates = undefined

testModifyClusterParameterGroup :: ModifyClusterParameterGroup -> TestTree
testModifyClusterParameterGroup = undefined

testRevokeClusterSecurityGroupIngress :: RevokeClusterSecurityGroupIngress -> TestTree
testRevokeClusterSecurityGroupIngress = undefined

testAuthorizeClusterSecurityGroupIngress :: AuthorizeClusterSecurityGroupIngress -> TestTree
testAuthorizeClusterSecurityGroupIngress = undefined

testCreateClusterSecurityGroup :: CreateClusterSecurityGroup -> TestTree
testCreateClusterSecurityGroup = undefined

testDescribeResize :: DescribeResize -> TestTree
testDescribeResize = undefined

testDescribeEventCategories :: DescribeEventCategories -> TestTree
testDescribeEventCategories = undefined

testDeleteHSMConfiguration :: DeleteHSMConfiguration -> TestTree
testDeleteHSMConfiguration = undefined

testDeleteClusterSecurityGroup :: DeleteClusterSecurityGroup -> TestTree
testDeleteClusterSecurityGroup = undefined

testCreateHSMConfiguration :: CreateHSMConfiguration -> TestTree
testCreateHSMConfiguration = undefined

testModifyCluster :: ModifyCluster -> TestTree
testModifyCluster = undefined

testCreateClusterSnapshot :: CreateClusterSnapshot -> TestTree
testCreateClusterSnapshot = undefined

testDescribeLoggingStatus :: DescribeLoggingStatus -> TestTree
testDescribeLoggingStatus = undefined

testDescribeClusterParameters :: DescribeClusterParameters -> TestTree
testDescribeClusterParameters = undefined

testDisableSnapshotCopy :: DisableSnapshotCopy -> TestTree
testDisableSnapshotCopy = undefined

testRestoreFromClusterSnapshot :: RestoreFromClusterSnapshot -> TestTree
testRestoreFromClusterSnapshot = undefined

testDescribeHSMConfigurations :: DescribeHSMConfigurations -> TestTree
testDescribeHSMConfigurations = undefined

testCreateClusterParameterGroup :: CreateClusterParameterGroup -> TestTree
testCreateClusterParameterGroup = undefined

testRevokeSnapshotAccess :: RevokeSnapshotAccess -> TestTree
testRevokeSnapshotAccess = undefined

testDeleteHSMClientCertificate :: DeleteHSMClientCertificate -> TestTree
testDeleteHSMClientCertificate = undefined

testCreateSnapshotCopyGrant :: CreateSnapshotCopyGrant -> TestTree
testCreateSnapshotCopyGrant = undefined

testCopyClusterSnapshot :: CopyClusterSnapshot -> TestTree
testCopyClusterSnapshot = undefined

testDescribeClusterVersions :: DescribeClusterVersions -> TestTree
testDescribeClusterVersions = undefined

testModifyClusterSubnetGroup :: ModifyClusterSubnetGroup -> TestTree
testModifyClusterSubnetGroup = undefined

testDeleteSnapshotCopyGrant :: DeleteSnapshotCopyGrant -> TestTree
testDeleteSnapshotCopyGrant = undefined

testDescribeSnapshotCopyGrants :: DescribeSnapshotCopyGrants -> TestTree
testDescribeSnapshotCopyGrants = undefined

testRotateEncryptionKey :: RotateEncryptionKey -> TestTree
testRotateEncryptionKey = undefined

-- Responses

testDescribeClustersResponse :: DescribeClustersResponse -> TestTree
testDescribeClustersResponse = resp
    "DescribeClustersResponse"
    "fixture/DescribeClustersResponse"
    (Proxy :: Proxy DescribeClusters)

testDescribeTagsResponse :: DescribeTagsResponse -> TestTree
testDescribeTagsResponse = resp
    "DescribeTagsResponse"
    "fixture/DescribeTagsResponse"
    (Proxy :: Proxy DescribeTags)

testModifyEventSubscriptionResponse :: ModifyEventSubscriptionResponse -> TestTree
testModifyEventSubscriptionResponse = resp
    "ModifyEventSubscriptionResponse"
    "fixture/ModifyEventSubscriptionResponse"
    (Proxy :: Proxy ModifyEventSubscription)

testDisableLoggingResponse :: LoggingStatus -> TestTree
testDisableLoggingResponse = resp
    "DisableLoggingResponse"
    "fixture/DisableLoggingResponse"
    (Proxy :: Proxy DisableLogging)

testPurchaseReservedNodeOfferingResponse :: PurchaseReservedNodeOfferingResponse -> TestTree
testPurchaseReservedNodeOfferingResponse = resp
    "PurchaseReservedNodeOfferingResponse"
    "fixture/PurchaseReservedNodeOfferingResponse"
    (Proxy :: Proxy PurchaseReservedNodeOffering)

testDeleteClusterSubnetGroupResponse :: DeleteClusterSubnetGroupResponse -> TestTree
testDeleteClusterSubnetGroupResponse = resp
    "DeleteClusterSubnetGroupResponse"
    "fixture/DeleteClusterSubnetGroupResponse"
    (Proxy :: Proxy DeleteClusterSubnetGroup)

testDeleteClusterSnapshotResponse :: DeleteClusterSnapshotResponse -> TestTree
testDeleteClusterSnapshotResponse = resp
    "DeleteClusterSnapshotResponse"
    "fixture/DeleteClusterSnapshotResponse"
    (Proxy :: Proxy DeleteClusterSnapshot)

testDescribeEventsResponse :: DescribeEventsResponse -> TestTree
testDescribeEventsResponse = resp
    "DescribeEventsResponse"
    "fixture/DescribeEventsResponse"
    (Proxy :: Proxy DescribeEvents)

testDescribeReservedNodeOfferingsResponse :: DescribeReservedNodeOfferingsResponse -> TestTree
testDescribeReservedNodeOfferingsResponse = resp
    "DescribeReservedNodeOfferingsResponse"
    "fixture/DescribeReservedNodeOfferingsResponse"
    (Proxy :: Proxy DescribeReservedNodeOfferings)

testDescribeClusterParameterGroupsResponse :: DescribeClusterParameterGroupsResponse -> TestTree
testDescribeClusterParameterGroupsResponse = resp
    "DescribeClusterParameterGroupsResponse"
    "fixture/DescribeClusterParameterGroupsResponse"
    (Proxy :: Proxy DescribeClusterParameterGroups)

testCreateClusterSubnetGroupResponse :: CreateClusterSubnetGroupResponse -> TestTree
testCreateClusterSubnetGroupResponse = resp
    "CreateClusterSubnetGroupResponse"
    "fixture/CreateClusterSubnetGroupResponse"
    (Proxy :: Proxy CreateClusterSubnetGroup)

testDescribeReservedNodesResponse :: DescribeReservedNodesResponse -> TestTree
testDescribeReservedNodesResponse = resp
    "DescribeReservedNodesResponse"
    "fixture/DescribeReservedNodesResponse"
    (Proxy :: Proxy DescribeReservedNodes)

testEnableLoggingResponse :: LoggingStatus -> TestTree
testEnableLoggingResponse = resp
    "EnableLoggingResponse"
    "fixture/EnableLoggingResponse"
    (Proxy :: Proxy EnableLogging)

testCreateTagsResponse :: CreateTagsResponse -> TestTree
testCreateTagsResponse = resp
    "CreateTagsResponse"
    "fixture/CreateTagsResponse"
    (Proxy :: Proxy CreateTags)

testDescribeClusterSecurityGroupsResponse :: DescribeClusterSecurityGroupsResponse -> TestTree
testDescribeClusterSecurityGroupsResponse = resp
    "DescribeClusterSecurityGroupsResponse"
    "fixture/DescribeClusterSecurityGroupsResponse"
    (Proxy :: Proxy DescribeClusterSecurityGroups)

testDeleteClusterParameterGroupResponse :: DeleteClusterParameterGroupResponse -> TestTree
testDeleteClusterParameterGroupResponse = resp
    "DeleteClusterParameterGroupResponse"
    "fixture/DeleteClusterParameterGroupResponse"
    (Proxy :: Proxy DeleteClusterParameterGroup)

testDeleteTagsResponse :: DeleteTagsResponse -> TestTree
testDeleteTagsResponse = resp
    "DeleteTagsResponse"
    "fixture/DeleteTagsResponse"
    (Proxy :: Proxy DeleteTags)

testEnableSnapshotCopyResponse :: EnableSnapshotCopyResponse -> TestTree
testEnableSnapshotCopyResponse = resp
    "EnableSnapshotCopyResponse"
    "fixture/EnableSnapshotCopyResponse"
    (Proxy :: Proxy EnableSnapshotCopy)

testModifySnapshotCopyRetentionPeriodResponse :: ModifySnapshotCopyRetentionPeriodResponse -> TestTree
testModifySnapshotCopyRetentionPeriodResponse = resp
    "ModifySnapshotCopyRetentionPeriodResponse"
    "fixture/ModifySnapshotCopyRetentionPeriodResponse"
    (Proxy :: Proxy ModifySnapshotCopyRetentionPeriod)

testDescribeClusterSnapshotsResponse :: DescribeClusterSnapshotsResponse -> TestTree
testDescribeClusterSnapshotsResponse = resp
    "DescribeClusterSnapshotsResponse"
    "fixture/DescribeClusterSnapshotsResponse"
    (Proxy :: Proxy DescribeClusterSnapshots)

testDescribeClusterSubnetGroupsResponse :: DescribeClusterSubnetGroupsResponse -> TestTree
testDescribeClusterSubnetGroupsResponse = resp
    "DescribeClusterSubnetGroupsResponse"
    "fixture/DescribeClusterSubnetGroupsResponse"
    (Proxy :: Proxy DescribeClusterSubnetGroups)

testAuthorizeSnapshotAccessResponse :: AuthorizeSnapshotAccessResponse -> TestTree
testAuthorizeSnapshotAccessResponse = resp
    "AuthorizeSnapshotAccessResponse"
    "fixture/AuthorizeSnapshotAccessResponse"
    (Proxy :: Proxy AuthorizeSnapshotAccess)

testCreateEventSubscriptionResponse :: CreateEventSubscriptionResponse -> TestTree
testCreateEventSubscriptionResponse = resp
    "CreateEventSubscriptionResponse"
    "fixture/CreateEventSubscriptionResponse"
    (Proxy :: Proxy CreateEventSubscription)

testRebootClusterResponse :: RebootClusterResponse -> TestTree
testRebootClusterResponse = resp
    "RebootClusterResponse"
    "fixture/RebootClusterResponse"
    (Proxy :: Proxy RebootCluster)

testDescribeOrderableClusterOptionsResponse :: DescribeOrderableClusterOptionsResponse -> TestTree
testDescribeOrderableClusterOptionsResponse = resp
    "DescribeOrderableClusterOptionsResponse"
    "fixture/DescribeOrderableClusterOptionsResponse"
    (Proxy :: Proxy DescribeOrderableClusterOptions)

testDeleteClusterResponse :: DeleteClusterResponse -> TestTree
testDeleteClusterResponse = resp
    "DeleteClusterResponse"
    "fixture/DeleteClusterResponse"
    (Proxy :: Proxy DeleteCluster)

testDeleteEventSubscriptionResponse :: DeleteEventSubscriptionResponse -> TestTree
testDeleteEventSubscriptionResponse = resp
    "DeleteEventSubscriptionResponse"
    "fixture/DeleteEventSubscriptionResponse"
    (Proxy :: Proxy DeleteEventSubscription)

testDescribeDefaultClusterParametersResponse :: DescribeDefaultClusterParametersResponse -> TestTree
testDescribeDefaultClusterParametersResponse = resp
    "DescribeDefaultClusterParametersResponse"
    "fixture/DescribeDefaultClusterParametersResponse"
    (Proxy :: Proxy DescribeDefaultClusterParameters)

testCreateClusterResponse :: CreateClusterResponse -> TestTree
testCreateClusterResponse = resp
    "CreateClusterResponse"
    "fixture/CreateClusterResponse"
    (Proxy :: Proxy CreateCluster)

testCreateHSMClientCertificateResponse :: CreateHSMClientCertificateResponse -> TestTree
testCreateHSMClientCertificateResponse = resp
    "CreateHSMClientCertificateResponse"
    "fixture/CreateHSMClientCertificateResponse"
    (Proxy :: Proxy CreateHSMClientCertificate)

testResetClusterParameterGroupResponse :: ClusterParameterGroupNameMessage -> TestTree
testResetClusterParameterGroupResponse = resp
    "ResetClusterParameterGroupResponse"
    "fixture/ResetClusterParameterGroupResponse"
    (Proxy :: Proxy ResetClusterParameterGroup)

testDescribeEventSubscriptionsResponse :: DescribeEventSubscriptionsResponse -> TestTree
testDescribeEventSubscriptionsResponse = resp
    "DescribeEventSubscriptionsResponse"
    "fixture/DescribeEventSubscriptionsResponse"
    (Proxy :: Proxy DescribeEventSubscriptions)

testDescribeHSMClientCertificatesResponse :: DescribeHSMClientCertificatesResponse -> TestTree
testDescribeHSMClientCertificatesResponse = resp
    "DescribeHSMClientCertificatesResponse"
    "fixture/DescribeHSMClientCertificatesResponse"
    (Proxy :: Proxy DescribeHSMClientCertificates)

testModifyClusterParameterGroupResponse :: ClusterParameterGroupNameMessage -> TestTree
testModifyClusterParameterGroupResponse = resp
    "ModifyClusterParameterGroupResponse"
    "fixture/ModifyClusterParameterGroupResponse"
    (Proxy :: Proxy ModifyClusterParameterGroup)

testRevokeClusterSecurityGroupIngressResponse :: RevokeClusterSecurityGroupIngressResponse -> TestTree
testRevokeClusterSecurityGroupIngressResponse = resp
    "RevokeClusterSecurityGroupIngressResponse"
    "fixture/RevokeClusterSecurityGroupIngressResponse"
    (Proxy :: Proxy RevokeClusterSecurityGroupIngress)

testAuthorizeClusterSecurityGroupIngressResponse :: AuthorizeClusterSecurityGroupIngressResponse -> TestTree
testAuthorizeClusterSecurityGroupIngressResponse = resp
    "AuthorizeClusterSecurityGroupIngressResponse"
    "fixture/AuthorizeClusterSecurityGroupIngressResponse"
    (Proxy :: Proxy AuthorizeClusterSecurityGroupIngress)

testCreateClusterSecurityGroupResponse :: CreateClusterSecurityGroupResponse -> TestTree
testCreateClusterSecurityGroupResponse = resp
    "CreateClusterSecurityGroupResponse"
    "fixture/CreateClusterSecurityGroupResponse"
    (Proxy :: Proxy CreateClusterSecurityGroup)

testDescribeResizeResponse :: DescribeResizeResponse -> TestTree
testDescribeResizeResponse = resp
    "DescribeResizeResponse"
    "fixture/DescribeResizeResponse"
    (Proxy :: Proxy DescribeResize)

testDescribeEventCategoriesResponse :: DescribeEventCategoriesResponse -> TestTree
testDescribeEventCategoriesResponse = resp
    "DescribeEventCategoriesResponse"
    "fixture/DescribeEventCategoriesResponse"
    (Proxy :: Proxy DescribeEventCategories)

testDeleteHSMConfigurationResponse :: DeleteHSMConfigurationResponse -> TestTree
testDeleteHSMConfigurationResponse = resp
    "DeleteHSMConfigurationResponse"
    "fixture/DeleteHSMConfigurationResponse"
    (Proxy :: Proxy DeleteHSMConfiguration)

testDeleteClusterSecurityGroupResponse :: DeleteClusterSecurityGroupResponse -> TestTree
testDeleteClusterSecurityGroupResponse = resp
    "DeleteClusterSecurityGroupResponse"
    "fixture/DeleteClusterSecurityGroupResponse"
    (Proxy :: Proxy DeleteClusterSecurityGroup)

testCreateHSMConfigurationResponse :: CreateHSMConfigurationResponse -> TestTree
testCreateHSMConfigurationResponse = resp
    "CreateHSMConfigurationResponse"
    "fixture/CreateHSMConfigurationResponse"
    (Proxy :: Proxy CreateHSMConfiguration)

testModifyClusterResponse :: ModifyClusterResponse -> TestTree
testModifyClusterResponse = resp
    "ModifyClusterResponse"
    "fixture/ModifyClusterResponse"
    (Proxy :: Proxy ModifyCluster)

testCreateClusterSnapshotResponse :: CreateClusterSnapshotResponse -> TestTree
testCreateClusterSnapshotResponse = resp
    "CreateClusterSnapshotResponse"
    "fixture/CreateClusterSnapshotResponse"
    (Proxy :: Proxy CreateClusterSnapshot)

testDescribeLoggingStatusResponse :: LoggingStatus -> TestTree
testDescribeLoggingStatusResponse = resp
    "DescribeLoggingStatusResponse"
    "fixture/DescribeLoggingStatusResponse"
    (Proxy :: Proxy DescribeLoggingStatus)

testDescribeClusterParametersResponse :: DescribeClusterParametersResponse -> TestTree
testDescribeClusterParametersResponse = resp
    "DescribeClusterParametersResponse"
    "fixture/DescribeClusterParametersResponse"
    (Proxy :: Proxy DescribeClusterParameters)

testDisableSnapshotCopyResponse :: DisableSnapshotCopyResponse -> TestTree
testDisableSnapshotCopyResponse = resp
    "DisableSnapshotCopyResponse"
    "fixture/DisableSnapshotCopyResponse"
    (Proxy :: Proxy DisableSnapshotCopy)

testRestoreFromClusterSnapshotResponse :: RestoreFromClusterSnapshotResponse -> TestTree
testRestoreFromClusterSnapshotResponse = resp
    "RestoreFromClusterSnapshotResponse"
    "fixture/RestoreFromClusterSnapshotResponse"
    (Proxy :: Proxy RestoreFromClusterSnapshot)

testDescribeHSMConfigurationsResponse :: DescribeHSMConfigurationsResponse -> TestTree
testDescribeHSMConfigurationsResponse = resp
    "DescribeHSMConfigurationsResponse"
    "fixture/DescribeHSMConfigurationsResponse"
    (Proxy :: Proxy DescribeHSMConfigurations)

testCreateClusterParameterGroupResponse :: CreateClusterParameterGroupResponse -> TestTree
testCreateClusterParameterGroupResponse = resp
    "CreateClusterParameterGroupResponse"
    "fixture/CreateClusterParameterGroupResponse"
    (Proxy :: Proxy CreateClusterParameterGroup)

testRevokeSnapshotAccessResponse :: RevokeSnapshotAccessResponse -> TestTree
testRevokeSnapshotAccessResponse = resp
    "RevokeSnapshotAccessResponse"
    "fixture/RevokeSnapshotAccessResponse"
    (Proxy :: Proxy RevokeSnapshotAccess)

testDeleteHSMClientCertificateResponse :: DeleteHSMClientCertificateResponse -> TestTree
testDeleteHSMClientCertificateResponse = resp
    "DeleteHSMClientCertificateResponse"
    "fixture/DeleteHSMClientCertificateResponse"
    (Proxy :: Proxy DeleteHSMClientCertificate)

testCreateSnapshotCopyGrantResponse :: CreateSnapshotCopyGrantResponse -> TestTree
testCreateSnapshotCopyGrantResponse = resp
    "CreateSnapshotCopyGrantResponse"
    "fixture/CreateSnapshotCopyGrantResponse"
    (Proxy :: Proxy CreateSnapshotCopyGrant)

testCopyClusterSnapshotResponse :: CopyClusterSnapshotResponse -> TestTree
testCopyClusterSnapshotResponse = resp
    "CopyClusterSnapshotResponse"
    "fixture/CopyClusterSnapshotResponse"
    (Proxy :: Proxy CopyClusterSnapshot)

testDescribeClusterVersionsResponse :: DescribeClusterVersionsResponse -> TestTree
testDescribeClusterVersionsResponse = resp
    "DescribeClusterVersionsResponse"
    "fixture/DescribeClusterVersionsResponse"
    (Proxy :: Proxy DescribeClusterVersions)

testModifyClusterSubnetGroupResponse :: ModifyClusterSubnetGroupResponse -> TestTree
testModifyClusterSubnetGroupResponse = resp
    "ModifyClusterSubnetGroupResponse"
    "fixture/ModifyClusterSubnetGroupResponse"
    (Proxy :: Proxy ModifyClusterSubnetGroup)

testDeleteSnapshotCopyGrantResponse :: DeleteSnapshotCopyGrantResponse -> TestTree
testDeleteSnapshotCopyGrantResponse = resp
    "DeleteSnapshotCopyGrantResponse"
    "fixture/DeleteSnapshotCopyGrantResponse"
    (Proxy :: Proxy DeleteSnapshotCopyGrant)

testDescribeSnapshotCopyGrantsResponse :: DescribeSnapshotCopyGrantsResponse -> TestTree
testDescribeSnapshotCopyGrantsResponse = resp
    "DescribeSnapshotCopyGrantsResponse"
    "fixture/DescribeSnapshotCopyGrantsResponse"
    (Proxy :: Proxy DescribeSnapshotCopyGrants)

testRotateEncryptionKeyResponse :: RotateEncryptionKeyResponse -> TestTree
testRotateEncryptionKeyResponse = resp
    "RotateEncryptionKeyResponse"
    "fixture/RotateEncryptionKeyResponse"
    (Proxy :: Proxy RotateEncryptionKey)

instance Out AccountWithRestoreAccess
instance Out AuthorizeClusterSecurityGroupIngress
instance Out AuthorizeClusterSecurityGroupIngressResponse
instance Out AuthorizeSnapshotAccess
instance Out AuthorizeSnapshotAccessResponse
instance Out AvailabilityZone
instance Out Cluster
instance Out ClusterNode
instance Out ClusterParameterGroup
instance Out ClusterParameterGroupNameMessage
instance Out ClusterParameterGroupStatus
instance Out ClusterParameterStatus
instance Out ClusterSecurityGroup
instance Out ClusterSecurityGroupMembership
instance Out ClusterSnapshotCopyStatus
instance Out ClusterSubnetGroup
instance Out ClusterVersion
instance Out CopyClusterSnapshot
instance Out CopyClusterSnapshotResponse
instance Out CreateCluster
instance Out CreateClusterParameterGroup
instance Out CreateClusterParameterGroupResponse
instance Out CreateClusterResponse
instance Out CreateClusterSecurityGroup
instance Out CreateClusterSecurityGroupResponse
instance Out CreateClusterSnapshot
instance Out CreateClusterSnapshotResponse
instance Out CreateClusterSubnetGroup
instance Out CreateClusterSubnetGroupResponse
instance Out CreateEventSubscription
instance Out CreateEventSubscriptionResponse
instance Out CreateHSMClientCertificate
instance Out CreateHSMClientCertificateResponse
instance Out CreateHSMConfiguration
instance Out CreateHSMConfigurationResponse
instance Out CreateSnapshotCopyGrant
instance Out CreateSnapshotCopyGrantResponse
instance Out CreateTags
instance Out CreateTagsResponse
instance Out DefaultClusterParameters
instance Out DeleteCluster
instance Out DeleteClusterParameterGroup
instance Out DeleteClusterParameterGroupResponse
instance Out DeleteClusterResponse
instance Out DeleteClusterSecurityGroup
instance Out DeleteClusterSecurityGroupResponse
instance Out DeleteClusterSnapshot
instance Out DeleteClusterSnapshotResponse
instance Out DeleteClusterSubnetGroup
instance Out DeleteClusterSubnetGroupResponse
instance Out DeleteEventSubscription
instance Out DeleteEventSubscriptionResponse
instance Out DeleteHSMClientCertificate
instance Out DeleteHSMClientCertificateResponse
instance Out DeleteHSMConfiguration
instance Out DeleteHSMConfigurationResponse
instance Out DeleteSnapshotCopyGrant
instance Out DeleteSnapshotCopyGrantResponse
instance Out DeleteTags
instance Out DeleteTagsResponse
instance Out DescribeClusterParameterGroups
instance Out DescribeClusterParameterGroupsResponse
instance Out DescribeClusterParameters
instance Out DescribeClusterParametersResponse
instance Out DescribeClusterSecurityGroups
instance Out DescribeClusterSecurityGroupsResponse
instance Out DescribeClusterSnapshots
instance Out DescribeClusterSnapshotsResponse
instance Out DescribeClusterSubnetGroups
instance Out DescribeClusterSubnetGroupsResponse
instance Out DescribeClusterVersions
instance Out DescribeClusterVersionsResponse
instance Out DescribeClusters
instance Out DescribeClustersResponse
instance Out DescribeDefaultClusterParameters
instance Out DescribeDefaultClusterParametersResponse
instance Out DescribeEventCategories
instance Out DescribeEventCategoriesResponse
instance Out DescribeEventSubscriptions
instance Out DescribeEventSubscriptionsResponse
instance Out DescribeEvents
instance Out DescribeEventsResponse
instance Out DescribeHSMClientCertificates
instance Out DescribeHSMClientCertificatesResponse
instance Out DescribeHSMConfigurations
instance Out DescribeHSMConfigurationsResponse
instance Out DescribeLoggingStatus
instance Out DescribeOrderableClusterOptions
instance Out DescribeOrderableClusterOptionsResponse
instance Out DescribeReservedNodeOfferings
instance Out DescribeReservedNodeOfferingsResponse
instance Out DescribeReservedNodes
instance Out DescribeReservedNodesResponse
instance Out DescribeResize
instance Out DescribeResizeResponse
instance Out DescribeSnapshotCopyGrants
instance Out DescribeSnapshotCopyGrantsResponse
instance Out DescribeTags
instance Out DescribeTagsResponse
instance Out DisableLogging
instance Out DisableSnapshotCopy
instance Out DisableSnapshotCopyResponse
instance Out EC2SecurityGroup
instance Out ElasticIPStatus
instance Out EnableLogging
instance Out EnableSnapshotCopy
instance Out EnableSnapshotCopyResponse
instance Out Endpoint
instance Out Event
instance Out EventCategoriesMap
instance Out EventInfoMap
instance Out EventSubscription
instance Out HSMClientCertificate
instance Out HSMConfiguration
instance Out HSMStatus
instance Out IPRange
instance Out LoggingStatus
instance Out ModifyCluster
instance Out ModifyClusterParameterGroup
instance Out ModifyClusterResponse
instance Out ModifyClusterSubnetGroup
instance Out ModifyClusterSubnetGroupResponse
instance Out ModifyEventSubscription
instance Out ModifyEventSubscriptionResponse
instance Out ModifySnapshotCopyRetentionPeriod
instance Out ModifySnapshotCopyRetentionPeriodResponse
instance Out OrderableClusterOption
instance Out Parameter
instance Out ParameterApplyType
instance Out PendingModifiedValues
instance Out PurchaseReservedNodeOffering
instance Out PurchaseReservedNodeOfferingResponse
instance Out RebootCluster
instance Out RebootClusterResponse
instance Out RecurringCharge
instance Out ReservedNode
instance Out ReservedNodeOffering
instance Out ResetClusterParameterGroup
instance Out RestoreFromClusterSnapshot
instance Out RestoreFromClusterSnapshotResponse
instance Out RestoreStatus
instance Out RevokeClusterSecurityGroupIngress
instance Out RevokeClusterSecurityGroupIngressResponse
instance Out RevokeSnapshotAccess
instance Out RevokeSnapshotAccessResponse
instance Out RotateEncryptionKey
instance Out RotateEncryptionKeyResponse
instance Out Snapshot
instance Out SnapshotCopyGrant
instance Out SourceType
instance Out Subnet
instance Out Tag
instance Out TaggedResource
instance Out VPCSecurityGroupMembership
