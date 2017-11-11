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
-- Module      : Network.AWS.Budgets.DeleteBudget
-- Copyright   : (c) 2013-2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a budget and related notifications
module Network.AWS.Budgets.DeleteBudget
    (
    -- * Creating a Request
      deleteBudget
    , DeleteBudget
    -- * Request Lenses
    , dAccountId
    , dBudgetName

    -- * Destructuring the Response
    , deleteBudgetResponse
    , DeleteBudgetResponse
    -- * Response Lenses
    , drsResponseStatus
    ) where

import Network.AWS.Budgets.Types
import Network.AWS.Budgets.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request of DeleteBudget
--
-- /See:/ 'deleteBudget' smart constructor.
data DeleteBudget = DeleteBudget'
  { _dAccountId  :: {-# NOUNPACK #-}!Text
  , _dBudgetName :: {-# NOUNPACK #-}!Text
  } deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteBudget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dAccountId' - Undocumented member.
--
-- * 'dBudgetName' - Undocumented member.
deleteBudget
    :: Text -- ^ 'dAccountId'
    -> Text -- ^ 'dBudgetName'
    -> DeleteBudget
deleteBudget pAccountId_ pBudgetName_ =
  DeleteBudget' {_dAccountId = pAccountId_, _dBudgetName = pBudgetName_}


-- | Undocumented member.
dAccountId :: Lens' DeleteBudget Text
dAccountId = lens _dAccountId (\ s a -> s{_dAccountId = a});

-- | Undocumented member.
dBudgetName :: Lens' DeleteBudget Text
dBudgetName = lens _dBudgetName (\ s a -> s{_dBudgetName = a});

instance AWSRequest DeleteBudget where
        type Rs DeleteBudget = DeleteBudgetResponse
        request = postJSON budgets
        response
          = receiveEmpty
              (\ s h x ->
                 DeleteBudgetResponse' <$> (pure (fromEnum s)))

instance Hashable DeleteBudget where

instance NFData DeleteBudget where

instance ToHeaders DeleteBudget where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWSBudgetServiceGateway.DeleteBudget" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DeleteBudget where
        toJSON DeleteBudget'{..}
          = object
              (catMaybes
                 [Just ("AccountId" .= _dAccountId),
                  Just ("BudgetName" .= _dBudgetName)])

instance ToPath DeleteBudget where
        toPath = const "/"

instance ToQuery DeleteBudget where
        toQuery = const mempty

-- | Response of DeleteBudget
--
-- /See:/ 'deleteBudgetResponse' smart constructor.
newtype DeleteBudgetResponse = DeleteBudgetResponse'
  { _drsResponseStatus :: Int
  } deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteBudgetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsResponseStatus' - -- | The response status code.
deleteBudgetResponse
    :: Int -- ^ 'drsResponseStatus'
    -> DeleteBudgetResponse
deleteBudgetResponse pResponseStatus_ =
  DeleteBudgetResponse' {_drsResponseStatus = pResponseStatus_}


-- | -- | The response status code.
drsResponseStatus :: Lens' DeleteBudgetResponse Int
drsResponseStatus = lens _drsResponseStatus (\ s a -> s{_drsResponseStatus = a});

instance NFData DeleteBudgetResponse where
