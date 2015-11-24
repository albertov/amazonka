{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.Sum
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DirectoryService.Types.Sum where

import           Network.AWS.Prelude

data DirectorySize
    = Large
    | Small
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText DirectorySize where
    parser = takeLowerText >>= \case
        "large" -> pure Large
        "small" -> pure Small
        e -> fromTextError $ "Failure parsing DirectorySize from value: '" <> e
           <> "'. Accepted values: Large, Small"

instance ToText DirectorySize where
    toText = \case
        Large -> "Large"
        Small -> "Small"

instance Hashable     DirectorySize
instance ToByteString DirectorySize
instance ToQuery      DirectorySize
instance ToHeader     DirectorySize

instance ToJSON DirectorySize where
    toJSON = toJSONText

instance FromJSON DirectorySize where
    parseJSON = parseJSONText "DirectorySize"

data DirectoryStage
    = DSActive
    | DSCreated
    | DSCreating
    | DSDeleted
    | DSDeleting
    | DSFailed
    | DSImpaired
    | DSInoperable
    | DSRequested
    | DSRestoreFailed
    | DSRestoring
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText DirectoryStage where
    parser = takeLowerText >>= \case
        "active" -> pure DSActive
        "created" -> pure DSCreated
        "creating" -> pure DSCreating
        "deleted" -> pure DSDeleted
        "deleting" -> pure DSDeleting
        "failed" -> pure DSFailed
        "impaired" -> pure DSImpaired
        "inoperable" -> pure DSInoperable
        "requested" -> pure DSRequested
        "restorefailed" -> pure DSRestoreFailed
        "restoring" -> pure DSRestoring
        e -> fromTextError $ "Failure parsing DirectoryStage from value: '" <> e
           <> "'. Accepted values: Active, Created, Creating, Deleted, Deleting, Failed, Impaired, Inoperable, Requested, RestoreFailed, Restoring"

instance ToText DirectoryStage where
    toText = \case
        DSActive -> "Active"
        DSCreated -> "Created"
        DSCreating -> "Creating"
        DSDeleted -> "Deleted"
        DSDeleting -> "Deleting"
        DSFailed -> "Failed"
        DSImpaired -> "Impaired"
        DSInoperable -> "Inoperable"
        DSRequested -> "Requested"
        DSRestoreFailed -> "RestoreFailed"
        DSRestoring -> "Restoring"

instance Hashable     DirectoryStage
instance ToByteString DirectoryStage
instance ToQuery      DirectoryStage
instance ToHeader     DirectoryStage

instance FromJSON DirectoryStage where
    parseJSON = parseJSONText "DirectoryStage"

data DirectoryType
    = ADConnector
    | SimpleAD
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText DirectoryType where
    parser = takeLowerText >>= \case
        "adconnector" -> pure ADConnector
        "simplead" -> pure SimpleAD
        e -> fromTextError $ "Failure parsing DirectoryType from value: '" <> e
           <> "'. Accepted values: ADConnector, SimpleAD"

instance ToText DirectoryType where
    toText = \case
        ADConnector -> "ADConnector"
        SimpleAD -> "SimpleAD"

instance Hashable     DirectoryType
instance ToByteString DirectoryType
instance ToQuery      DirectoryType
instance ToHeader     DirectoryType

instance FromJSON DirectoryType where
    parseJSON = parseJSONText "DirectoryType"

data RadiusAuthenticationProtocol
    = Chap
    | MsCHAPV1
    | MsCHAPV2
    | Pap
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText RadiusAuthenticationProtocol where
    parser = takeLowerText >>= \case
        "chap" -> pure Chap
        "ms-chapv1" -> pure MsCHAPV1
        "ms-chapv2" -> pure MsCHAPV2
        "pap" -> pure Pap
        e -> fromTextError $ "Failure parsing RadiusAuthenticationProtocol from value: '" <> e
           <> "'. Accepted values: CHAP, MS-CHAPv1, MS-CHAPv2, PAP"

instance ToText RadiusAuthenticationProtocol where
    toText = \case
        Chap -> "CHAP"
        MsCHAPV1 -> "MS-CHAPv1"
        MsCHAPV2 -> "MS-CHAPv2"
        Pap -> "PAP"

instance Hashable     RadiusAuthenticationProtocol
instance ToByteString RadiusAuthenticationProtocol
instance ToQuery      RadiusAuthenticationProtocol
instance ToHeader     RadiusAuthenticationProtocol

instance ToJSON RadiusAuthenticationProtocol where
    toJSON = toJSONText

instance FromJSON RadiusAuthenticationProtocol where
    parseJSON = parseJSONText "RadiusAuthenticationProtocol"

data RadiusStatus
    = Completed
    | Creating
    | Failed
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText RadiusStatus where
    parser = takeLowerText >>= \case
        "completed" -> pure Completed
        "creating" -> pure Creating
        "failed" -> pure Failed
        e -> fromTextError $ "Failure parsing RadiusStatus from value: '" <> e
           <> "'. Accepted values: Completed, Creating, Failed"

instance ToText RadiusStatus where
    toText = \case
        Completed -> "Completed"
        Creating -> "Creating"
        Failed -> "Failed"

instance Hashable     RadiusStatus
instance ToByteString RadiusStatus
instance ToQuery      RadiusStatus
instance ToHeader     RadiusStatus

instance FromJSON RadiusStatus where
    parseJSON = parseJSONText "RadiusStatus"

data SnapshotStatus
    = SSCompleted
    | SSCreating
    | SSFailed
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText SnapshotStatus where
    parser = takeLowerText >>= \case
        "completed" -> pure SSCompleted
        "creating" -> pure SSCreating
        "failed" -> pure SSFailed
        e -> fromTextError $ "Failure parsing SnapshotStatus from value: '" <> e
           <> "'. Accepted values: Completed, Creating, Failed"

instance ToText SnapshotStatus where
    toText = \case
        SSCompleted -> "Completed"
        SSCreating -> "Creating"
        SSFailed -> "Failed"

instance Hashable     SnapshotStatus
instance ToByteString SnapshotStatus
instance ToQuery      SnapshotStatus
instance ToHeader     SnapshotStatus

instance FromJSON SnapshotStatus where
    parseJSON = parseJSONText "SnapshotStatus"

data SnapshotType
    = Auto
    | Manual
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText SnapshotType where
    parser = takeLowerText >>= \case
        "auto" -> pure Auto
        "manual" -> pure Manual
        e -> fromTextError $ "Failure parsing SnapshotType from value: '" <> e
           <> "'. Accepted values: Auto, Manual"

instance ToText SnapshotType where
    toText = \case
        Auto -> "Auto"
        Manual -> "Manual"

instance Hashable     SnapshotType
instance ToByteString SnapshotType
instance ToQuery      SnapshotType
instance ToHeader     SnapshotType

instance FromJSON SnapshotType where
    parseJSON = parseJSONText "SnapshotType"
