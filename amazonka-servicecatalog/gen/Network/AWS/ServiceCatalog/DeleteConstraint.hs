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
-- Module      : Network.AWS.ServiceCatalog.DeleteConstraint
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified constraint.
--
--
module Network.AWS.ServiceCatalog.DeleteConstraint
    (
    -- * Creating a Request
      deleteConstraint
    , DeleteConstraint
    -- * Request Lenses
    , dcAcceptLanguage
    , dcId

    -- * Destructuring the Response
    , deleteConstraintResponse
    , DeleteConstraintResponse
    -- * Response Lenses
    , dcrsResponseStatus
    ) where

import           Network.AWS.Lens
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.ServiceCatalog.Types
import           Network.AWS.ServiceCatalog.Types.Product

-- | /See:/ 'deleteConstraint' smart constructor.
data DeleteConstraint = DeleteConstraint'
    { _dcAcceptLanguage :: !(Maybe Text)
    , _dcId             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteConstraint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcAcceptLanguage' - The language code to use for this operation. Supported language codes are as follows: "en" (English) "jp" (Japanese) "zh" (Chinese) If no code is specified, "en" is used as the default.
--
-- * 'dcId' - The identifier of the constraint to delete.
deleteConstraint
    :: Text -- ^ 'dcId'
    -> DeleteConstraint
deleteConstraint pId_ =
    DeleteConstraint'
    { _dcAcceptLanguage = Nothing
    , _dcId = pId_
    }

-- | The language code to use for this operation. Supported language codes are as follows: "en" (English) "jp" (Japanese) "zh" (Chinese) If no code is specified, "en" is used as the default.
dcAcceptLanguage :: Lens' DeleteConstraint (Maybe Text)
dcAcceptLanguage = lens _dcAcceptLanguage (\ s a -> s{_dcAcceptLanguage = a});

-- | The identifier of the constraint to delete.
dcId :: Lens' DeleteConstraint Text
dcId = lens _dcId (\ s a -> s{_dcId = a});

instance AWSRequest DeleteConstraint where
        type Rs DeleteConstraint = DeleteConstraintResponse
        request = postJSON serviceCatalog
        response
          = receiveEmpty
              (\ s h x ->
                 DeleteConstraintResponse' <$> (pure (fromEnum s)))

instance Hashable DeleteConstraint

instance NFData DeleteConstraint

instance ToHeaders DeleteConstraint where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWS242ServiceCatalogService.DeleteConstraint" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DeleteConstraint where
        toJSON DeleteConstraint'{..}
          = object
              (catMaybes
                 [("AcceptLanguage" .=) <$> _dcAcceptLanguage,
                  Just ("Id" .= _dcId)])

instance ToPath DeleteConstraint where
        toPath = const "/"

instance ToQuery DeleteConstraint where
        toQuery = const mempty

-- | /See:/ 'deleteConstraintResponse' smart constructor.
newtype DeleteConstraintResponse = DeleteConstraintResponse'
    { _dcrsResponseStatus :: Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteConstraintResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrsResponseStatus' - -- | The response status code.
deleteConstraintResponse
    :: Int -- ^ 'dcrsResponseStatus'
    -> DeleteConstraintResponse
deleteConstraintResponse pResponseStatus_ =
    DeleteConstraintResponse'
    { _dcrsResponseStatus = pResponseStatus_
    }

-- | -- | The response status code.
dcrsResponseStatus :: Lens' DeleteConstraintResponse Int
dcrsResponseStatus = lens _dcrsResponseStatus (\ s a -> s{_dcrsResponseStatus = a});

instance NFData DeleteConstraintResponse
