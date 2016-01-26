---
title: Payment plans
---

# Payment plans

Payment plan represents information about membership fees and payment schedule. 
Each user to complete club joining process must select membarship type and accompanying payment plan.
Each payment plan is asigned to exactly one membership type.
Payment plan is a summary representation of single payment plan in your company.

{:toc}


## <a name="properties"></a>Payment plan properties

Payment plan is described by the following properties

Name            | Type      | Description
-----|----------|----------------------
`id`            |`long`     | Unique identifier of payment plan.
`timestamp`    	|`long`     | Timestamp. Indicates when resource was last modified.
`name`    		|`string`   | payment plan name.
`isActive`     	|`bool`     | Indicates if payment plan is marked as active.
`isDeleted`     |`bool`     | Indicates if resource is deleted.



## List payment plan with timestamp

    GET PaymentPlans/PaymentPlans

Returns paginated payment plans list.


### Query string parameters

Name         | Type   | Description
-----|-------|--------|------------
`timestamp`  |`long`  | Timestamp. Request returns payment plans with timestamp grater then `timestamp`, defaults to `0`.


### Example request

In this example we fetch list of all payment plans (`timestamp` parameter defaults to `0`) 
available in a company.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/PaymentPlans/PaymentPlans?timestamp=0
```


### Example response

<%= headers 200 %>
<%= json(:paymentplans_response) %>



## List payment plans available in a given club

    GET PaymentPlans/PaymentPlans/{clubId}

Returns paginated payment plans list available in given club.


### Path parameters

Name      | Type   | Description
----------|--------|------------
`clubId`  |`long`  | Club identifier.


### Example request

In this example we fetch list of all payment plans available in club identified with clubId = `16`.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Memberships/Memberships/16
```


### Example response

<%= headers 200 %>
<%= json(:paymentplans_response) %>


