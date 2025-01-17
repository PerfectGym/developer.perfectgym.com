---
title: Contract details
---

# Contract details

Contract details is detaild representation of single user contract. 

{:toc}


## <a name="properties"></a>Contract details properties

Contract details holds the same data as [Contract][ContractProperties] plus some detailed features of a contract.
Only contract details specyfic properties are described here.


Name        	| Type    						| Description
----------------|-------------------------------|----------------------
`isCurrent`		|`bool`							| `true` if contract is user's current contract, `false` otherwise.
`status`		|`string`						| Contract status. <br><strong>Possible values</strong>: <br><ul><li>Current</li><li>Ended</li><li>NotStarted</li><li>Freezed</li></ul>
`documentUrl`	|`string`						| URL to contract agreement PDF file signed by user (for details see [contract agreement signing][ContractSigning]).
`membership`   	|[Membership][Membership]   	| Contract's membership.
`paymentPlan`   |[Payment paln][PaymentPlan]   	| Contract's payment plan.
`discounts`		|`array`						| An array of [discount][Discount] objects representing discounts applied to contract.
`freezes`		|`array`						| An array of [freeze][Freeze] objects representing freezes applied to contract.



## Retrieve detailed information about specific user contract ![alt text][EM]

    GET Contracts/Contract

Returns detailed user contract informations.


### Parameters

Name            | Type       | Description
----------------|------------|------------------------
`contractId`    |`long`      | **Required**. Contract identifier.



### Example request

In this example we fetch user contract with `id` = `10358` detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Contracts/Contract?contractId=10358    	
```


### Example response

<%= headers 200 %>
<%= json(:contract_response) %>



## Retrieve detailed information about all contracts ![alt text][EM]

    GET Contracts/Contracts

Returns detailed contracts informations.


### Parameters

Name            | Type       | Description
----------------|------------|------------------------
`timestamp`  	|`long`  	 | Timestamp. Request returns contracts with timestamp grater then `timestamp`, defaults to `0`.
`page`       	|`int`       | The desired page number (1-based index). Page size is 100. Default to 1.



### Example request

In this example we fetch contracts with `timestamp` greater then `454000`.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Contracts/Contracts?timestamp=454000    	
```



[ContractProperties]: /api/contracts/contracts#properties 
[ContractSigning]: /api/users/usercontract#contractsigning
[Membership]: /api/memberships/memberships#properties
[PaymentPlan]: /api/paymentplans/paymentplans#properties
[Discount]: /api/paymentplans/discounts#properties
[Freeze]: /appendix/datatypes/contractfreeze

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"

