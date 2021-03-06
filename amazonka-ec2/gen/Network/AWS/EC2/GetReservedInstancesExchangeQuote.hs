{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.GetReservedInstancesExchangeQuote
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details about the values and term of your specified Convertible Reserved Instances. When a target configuration is specified, it returns information about whether the exchange is valid and can be performed.
--
--
module Network.AWS.EC2.GetReservedInstancesExchangeQuote
    (
    -- * Creating a Request
      getReservedInstancesExchangeQuote
    , GetReservedInstancesExchangeQuote
    -- * Request Lenses
    , grieqTargetConfigurations
    , grieqDryRun
    , grieqReservedInstanceIds

    -- * Destructuring the Response
    , getReservedInstancesExchangeQuoteResponse
    , GetReservedInstancesExchangeQuoteResponse
    -- * Response Lenses
    , grieqrsValidationFailureReason
    , grieqrsTargetConfigurationValueRollup
    , grieqrsCurrencyCode
    , grieqrsTargetConfigurationValueSet
    , grieqrsReservedInstanceValueRollup
    , grieqrsOutputReservedInstancesWillExpireAt
    , grieqrsReservedInstanceValueSet
    , grieqrsIsValidExchange
    , grieqrsPaymentDue
    , grieqrsResponseStatus
    ) where

import           Network.AWS.EC2.Types
import           Network.AWS.EC2.Types.Product
import           Network.AWS.Lens
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Contains the parameters for GetReservedInstanceExchangeQuote.
--
--
--
-- /See:/ 'getReservedInstancesExchangeQuote' smart constructor.
data GetReservedInstancesExchangeQuote = GetReservedInstancesExchangeQuote'
    { _grieqTargetConfigurations :: !(Maybe [TargetConfigurationRequest])
    , _grieqDryRun               :: !(Maybe Bool)
    , _grieqReservedInstanceIds  :: ![Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetReservedInstancesExchangeQuote' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grieqTargetConfigurations' - The configuration requirements of the Convertible Reserved Instances to exchange for your current Convertible Reserved Instances.
--
-- * 'grieqDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'grieqReservedInstanceIds' - The IDs of the Convertible Reserved Instances to exchange.
getReservedInstancesExchangeQuote
    :: GetReservedInstancesExchangeQuote
getReservedInstancesExchangeQuote =
    GetReservedInstancesExchangeQuote'
    { _grieqTargetConfigurations = Nothing
    , _grieqDryRun = Nothing
    , _grieqReservedInstanceIds = mempty
    }

-- | The configuration requirements of the Convertible Reserved Instances to exchange for your current Convertible Reserved Instances.
grieqTargetConfigurations :: Lens' GetReservedInstancesExchangeQuote [TargetConfigurationRequest]
grieqTargetConfigurations = lens _grieqTargetConfigurations (\ s a -> s{_grieqTargetConfigurations = a}) . _Default . _Coerce;

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
grieqDryRun :: Lens' GetReservedInstancesExchangeQuote (Maybe Bool)
grieqDryRun = lens _grieqDryRun (\ s a -> s{_grieqDryRun = a});

-- | The IDs of the Convertible Reserved Instances to exchange.
grieqReservedInstanceIds :: Lens' GetReservedInstancesExchangeQuote [Text]
grieqReservedInstanceIds = lens _grieqReservedInstanceIds (\ s a -> s{_grieqReservedInstanceIds = a}) . _Coerce;

instance AWSRequest GetReservedInstancesExchangeQuote
         where
        type Rs GetReservedInstancesExchangeQuote =
             GetReservedInstancesExchangeQuoteResponse
        request = postQuery ec2
        response
          = receiveXML
              (\ s h x ->
                 GetReservedInstancesExchangeQuoteResponse' <$>
                   (x .@? "validationFailureReason") <*>
                     (x .@? "targetConfigurationValueRollup")
                     <*> (x .@? "currencyCode")
                     <*>
                     (x .@? "targetConfigurationValueSet" .!@ mempty >>=
                        may (parseXMLList "item"))
                     <*> (x .@? "reservedInstanceValueRollup")
                     <*> (x .@? "outputReservedInstancesWillExpireAt")
                     <*>
                     (x .@? "reservedInstanceValueSet" .!@ mempty >>=
                        may (parseXMLList "item"))
                     <*> (x .@? "isValidExchange")
                     <*> (x .@? "paymentDue")
                     <*> (pure (fromEnum s)))

instance Hashable GetReservedInstancesExchangeQuote

instance NFData GetReservedInstancesExchangeQuote

instance ToHeaders GetReservedInstancesExchangeQuote
         where
        toHeaders = const mempty

instance ToPath GetReservedInstancesExchangeQuote
         where
        toPath = const "/"

instance ToQuery GetReservedInstancesExchangeQuote
         where
        toQuery GetReservedInstancesExchangeQuote'{..}
          = mconcat
              ["Action" =:
                 ("GetReservedInstancesExchangeQuote" :: ByteString),
               "Version" =: ("2016-11-15" :: ByteString),
               toQuery
                 (toQueryList "TargetConfiguration" <$>
                    _grieqTargetConfigurations),
               "DryRun" =: _grieqDryRun,
               toQueryList "ReservedInstanceId"
                 _grieqReservedInstanceIds]

-- | Contains the output of GetReservedInstancesExchangeQuote.
--
--
--
-- /See:/ 'getReservedInstancesExchangeQuoteResponse' smart constructor.
data GetReservedInstancesExchangeQuoteResponse = GetReservedInstancesExchangeQuoteResponse'
    { _grieqrsValidationFailureReason             :: !(Maybe Text)
    , _grieqrsTargetConfigurationValueRollup      :: !(Maybe ReservationValue)
    , _grieqrsCurrencyCode                        :: !(Maybe Text)
    , _grieqrsTargetConfigurationValueSet         :: !(Maybe [TargetReservationValue])
    , _grieqrsReservedInstanceValueRollup         :: !(Maybe ReservationValue)
    , _grieqrsOutputReservedInstancesWillExpireAt :: !(Maybe ISO8601)
    , _grieqrsReservedInstanceValueSet            :: !(Maybe [ReservedInstanceReservationValue])
    , _grieqrsIsValidExchange                     :: !(Maybe Bool)
    , _grieqrsPaymentDue                          :: !(Maybe Text)
    , _grieqrsResponseStatus                      :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetReservedInstancesExchangeQuoteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grieqrsValidationFailureReason' - Describes the reason why the exchange cannot be completed.
--
-- * 'grieqrsTargetConfigurationValueRollup' - Undocumented member.
--
-- * 'grieqrsCurrencyCode' - The currency of the transaction.
--
-- * 'grieqrsTargetConfigurationValueSet' - The values of the target Convertible Reserved Instances.
--
-- * 'grieqrsReservedInstanceValueRollup' - Undocumented member.
--
-- * 'grieqrsOutputReservedInstancesWillExpireAt' - The new end date of the reservation term.
--
-- * 'grieqrsReservedInstanceValueSet' - The configuration of your Convertible Reserved Instances.
--
-- * 'grieqrsIsValidExchange' - If @true@ , the exchange is valid. If @false@ , the exchange cannot be completed.
--
-- * 'grieqrsPaymentDue' - The total true upfront charge for the exchange.
--
-- * 'grieqrsResponseStatus' - -- | The response status code.
getReservedInstancesExchangeQuoteResponse
    :: Int -- ^ 'grieqrsResponseStatus'
    -> GetReservedInstancesExchangeQuoteResponse
getReservedInstancesExchangeQuoteResponse pResponseStatus_ =
    GetReservedInstancesExchangeQuoteResponse'
    { _grieqrsValidationFailureReason = Nothing
    , _grieqrsTargetConfigurationValueRollup = Nothing
    , _grieqrsCurrencyCode = Nothing
    , _grieqrsTargetConfigurationValueSet = Nothing
    , _grieqrsReservedInstanceValueRollup = Nothing
    , _grieqrsOutputReservedInstancesWillExpireAt = Nothing
    , _grieqrsReservedInstanceValueSet = Nothing
    , _grieqrsIsValidExchange = Nothing
    , _grieqrsPaymentDue = Nothing
    , _grieqrsResponseStatus = pResponseStatus_
    }

-- | Describes the reason why the exchange cannot be completed.
grieqrsValidationFailureReason :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe Text)
grieqrsValidationFailureReason = lens _grieqrsValidationFailureReason (\ s a -> s{_grieqrsValidationFailureReason = a});

-- | Undocumented member.
grieqrsTargetConfigurationValueRollup :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe ReservationValue)
grieqrsTargetConfigurationValueRollup = lens _grieqrsTargetConfigurationValueRollup (\ s a -> s{_grieqrsTargetConfigurationValueRollup = a});

-- | The currency of the transaction.
grieqrsCurrencyCode :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe Text)
grieqrsCurrencyCode = lens _grieqrsCurrencyCode (\ s a -> s{_grieqrsCurrencyCode = a});

-- | The values of the target Convertible Reserved Instances.
grieqrsTargetConfigurationValueSet :: Lens' GetReservedInstancesExchangeQuoteResponse [TargetReservationValue]
grieqrsTargetConfigurationValueSet = lens _grieqrsTargetConfigurationValueSet (\ s a -> s{_grieqrsTargetConfigurationValueSet = a}) . _Default . _Coerce;

-- | Undocumented member.
grieqrsReservedInstanceValueRollup :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe ReservationValue)
grieqrsReservedInstanceValueRollup = lens _grieqrsReservedInstanceValueRollup (\ s a -> s{_grieqrsReservedInstanceValueRollup = a});

-- | The new end date of the reservation term.
grieqrsOutputReservedInstancesWillExpireAt :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe UTCTime)
grieqrsOutputReservedInstancesWillExpireAt = lens _grieqrsOutputReservedInstancesWillExpireAt (\ s a -> s{_grieqrsOutputReservedInstancesWillExpireAt = a}) . mapping _Time;

-- | The configuration of your Convertible Reserved Instances.
grieqrsReservedInstanceValueSet :: Lens' GetReservedInstancesExchangeQuoteResponse [ReservedInstanceReservationValue]
grieqrsReservedInstanceValueSet = lens _grieqrsReservedInstanceValueSet (\ s a -> s{_grieqrsReservedInstanceValueSet = a}) . _Default . _Coerce;

-- | If @true@ , the exchange is valid. If @false@ , the exchange cannot be completed.
grieqrsIsValidExchange :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe Bool)
grieqrsIsValidExchange = lens _grieqrsIsValidExchange (\ s a -> s{_grieqrsIsValidExchange = a});

-- | The total true upfront charge for the exchange.
grieqrsPaymentDue :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe Text)
grieqrsPaymentDue = lens _grieqrsPaymentDue (\ s a -> s{_grieqrsPaymentDue = a});

-- | -- | The response status code.
grieqrsResponseStatus :: Lens' GetReservedInstancesExchangeQuoteResponse Int
grieqrsResponseStatus = lens _grieqrsResponseStatus (\ s a -> s{_grieqrsResponseStatus = a});

instance NFData
         GetReservedInstancesExchangeQuoteResponse
