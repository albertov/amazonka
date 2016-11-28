{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- AWS Direct Connect links your internal network to an AWS Direct Connect location over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router. With this connection in place, you can create virtual interfaces directly to the AWS cloud (for example, to Amazon Elastic Compute Cloud (Amazon EC2) and Amazon Simple Storage Service (Amazon S3)) and to Amazon Virtual Private Cloud (Amazon VPC), bypassing Internet service providers in your network path. An AWS Direct Connect location provides access to AWS in the region it is associated with, as well as access to other US regions. For example, you can provision a single connection to any AWS Direct Connect location in the US and use it to access public AWS services in all US Regions and AWS GovCloud (US).
--
--
module Network.AWS.DirectConnect
    (
    -- * Service Configuration
      directConnect

    -- * Errors
    -- $errors

    -- ** DirectConnectClientException
    , _DirectConnectClientException

    -- ** DirectConnectServerException
    , _DirectConnectServerException

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeInterconnects
    , module Network.AWS.DirectConnect.DescribeInterconnects

    -- ** DeleteConnection
    , module Network.AWS.DirectConnect.DeleteConnection

    -- ** CreateConnection
    , module Network.AWS.DirectConnect.CreateConnection

    -- ** DescribeConnections
    , module Network.AWS.DirectConnect.DescribeConnections

    -- ** DescribeConnectionsOnInterconnect
    , module Network.AWS.DirectConnect.DescribeConnectionsOnInterconnect

    -- ** DeleteInterconnect
    , module Network.AWS.DirectConnect.DeleteInterconnect

    -- ** ConfirmPrivateVirtualInterface
    , module Network.AWS.DirectConnect.ConfirmPrivateVirtualInterface

    -- ** DescribeLocations
    , module Network.AWS.DirectConnect.DescribeLocations

    -- ** CreatePublicVirtualInterface
    , module Network.AWS.DirectConnect.CreatePublicVirtualInterface

    -- ** AllocatePrivateVirtualInterface
    , module Network.AWS.DirectConnect.AllocatePrivateVirtualInterface

    -- ** ConfirmConnection
    , module Network.AWS.DirectConnect.ConfirmConnection

    -- ** ConfirmPublicVirtualInterface
    , module Network.AWS.DirectConnect.ConfirmPublicVirtualInterface

    -- ** DescribeVirtualGateways
    , module Network.AWS.DirectConnect.DescribeVirtualGateways

    -- ** DescribeVirtualInterfaces
    , module Network.AWS.DirectConnect.DescribeVirtualInterfaces

    -- ** DeleteVirtualInterface
    , module Network.AWS.DirectConnect.DeleteVirtualInterface

    -- ** DescribeInterconnectLoa
    , module Network.AWS.DirectConnect.DescribeInterconnectLoa

    -- ** CreatePrivateVirtualInterface
    , module Network.AWS.DirectConnect.CreatePrivateVirtualInterface

    -- ** AllocatePublicVirtualInterface
    , module Network.AWS.DirectConnect.AllocatePublicVirtualInterface

    -- ** AllocateConnectionOnInterconnect
    , module Network.AWS.DirectConnect.AllocateConnectionOnInterconnect

    -- ** CreateInterconnect
    , module Network.AWS.DirectConnect.CreateInterconnect

    -- ** DescribeConnectionLoa
    , module Network.AWS.DirectConnect.DescribeConnectionLoa

    -- * Types

    -- ** ConnectionState
    , ConnectionState (..)

    -- ** InterconnectState
    , InterconnectState (..)

    -- ** LoaContentType
    , LoaContentType (..)

    -- ** VirtualInterfaceState
    , VirtualInterfaceState (..)

    -- ** Connection
    , Connection
    , connection
    , cVlan
    , cLocation
    , cConnectionId
    , cLoaIssueTime
    , cPartnerName
    , cConnectionName
    , cBandwidth
    , cOwnerAccount
    , cRegion
    , cConnectionState

    -- ** Connections
    , Connections
    , connections
    , cConnections

    -- ** Interconnect
    , Interconnect
    , interconnect
    , iInterconnectId
    , iLocation
    , iInterconnectName
    , iLoaIssueTime
    , iBandwidth
    , iInterconnectState
    , iRegion

    -- ** Loa
    , Loa
    , loa
    , loaLoaContent
    , loaLoaContentType

    -- ** Location
    , Location
    , location
    , lLocationName
    , lLocationCode

    -- ** NewPrivateVirtualInterface
    , NewPrivateVirtualInterface
    , newPrivateVirtualInterface
    , nCustomerAddress
    , nAmazonAddress
    , nAuthKey
    , nVirtualInterfaceName
    , nVlan
    , nAsn
    , nVirtualGatewayId

    -- ** NewPrivateVirtualInterfaceAllocation
    , NewPrivateVirtualInterfaceAllocation
    , newPrivateVirtualInterfaceAllocation
    , npviaCustomerAddress
    , npviaAmazonAddress
    , npviaAuthKey
    , npviaVirtualInterfaceName
    , npviaVlan
    , npviaAsn

    -- ** NewPublicVirtualInterface
    , NewPublicVirtualInterface
    , newPublicVirtualInterface
    , npviAuthKey
    , npviVirtualInterfaceName
    , npviVlan
    , npviAsn
    , npviAmazonAddress
    , npviCustomerAddress
    , npviRouteFilterPrefixes

    -- ** NewPublicVirtualInterfaceAllocation
    , NewPublicVirtualInterfaceAllocation
    , newPublicVirtualInterfaceAllocation
    , newAuthKey
    , newVirtualInterfaceName
    , newVlan
    , newAsn
    , newAmazonAddress
    , newCustomerAddress
    , newRouteFilterPrefixes

    -- ** RouteFilterPrefix
    , RouteFilterPrefix
    , routeFilterPrefix
    , rfpCidr

    -- ** VirtualGateway
    , VirtualGateway
    , virtualGateway
    , vgVirtualGatewayId
    , vgVirtualGatewayState

    -- ** VirtualInterface
    , VirtualInterface
    , virtualInterface
    , viVirtualGatewayId
    , viRouteFilterPrefixes
    , viCustomerAddress
    , viVlan
    , viLocation
    , viAmazonAddress
    , viVirtualInterfaceState
    , viConnectionId
    , viVirtualInterfaceType
    , viAsn
    , viAuthKey
    , viCustomerRouterConfig
    , viOwnerAccount
    , viVirtualInterfaceName
    , viVirtualInterfaceId
    ) where

import           Network.AWS.DirectConnect.AllocateConnectionOnInterconnect
import           Network.AWS.DirectConnect.AllocatePrivateVirtualInterface
import           Network.AWS.DirectConnect.AllocatePublicVirtualInterface
import           Network.AWS.DirectConnect.ConfirmConnection
import           Network.AWS.DirectConnect.ConfirmPrivateVirtualInterface
import           Network.AWS.DirectConnect.ConfirmPublicVirtualInterface
import           Network.AWS.DirectConnect.CreateConnection
import           Network.AWS.DirectConnect.CreateInterconnect
import           Network.AWS.DirectConnect.CreatePrivateVirtualInterface
import           Network.AWS.DirectConnect.CreatePublicVirtualInterface
import           Network.AWS.DirectConnect.DeleteConnection
import           Network.AWS.DirectConnect.DeleteInterconnect
import           Network.AWS.DirectConnect.DeleteVirtualInterface
import           Network.AWS.DirectConnect.DescribeConnectionLoa
import           Network.AWS.DirectConnect.DescribeConnections
import           Network.AWS.DirectConnect.DescribeConnectionsOnInterconnect
import           Network.AWS.DirectConnect.DescribeInterconnectLoa
import           Network.AWS.DirectConnect.DescribeInterconnects
import           Network.AWS.DirectConnect.DescribeLocations
import           Network.AWS.DirectConnect.DescribeVirtualGateways
import           Network.AWS.DirectConnect.DescribeVirtualInterfaces
import           Network.AWS.DirectConnect.Types
import           Network.AWS.DirectConnect.Waiters

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'DirectConnect'.
-}

{- $operations
Some AWS operations return results that are incomplete and require subsequent
requests in order to obtain the entire result set. The process of sending
subsequent requests to continue where a previous request left off is called
pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
1000 objects at a time, and you must send subsequent requests with the
appropriate Marker in order to retrieve the next page of results.

Operations that have an 'AWSPager' instance can transparently perform subsequent
requests, correctly setting Markers and other request facets to iterate through
the entire result set of a truncated API operation. Operations which support
this have an additional note in the documentation.

Many operations have the ability to filter results on the server side. See the
individual operation parameters for details.
-}

{- $waiters
Waiters poll by repeatedly sending a request until some remote success condition
configured by the 'Wait' specification is fulfilled. The 'Wait' specification
determines how many attempts should be made, in addition to delay and retry strategies.
-}
