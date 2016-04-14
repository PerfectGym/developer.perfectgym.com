---
title: Adding and updateing user
---

# Adding and updating users

This API allow to add new users and update existing user's data.

{:toc}


## Add new user

    POST Users/User

Request creates new user and adds it to your company user's list.



### Body parameters

Name     	    | Type       		| Description
----------------|-------------------|------------
`email`     	|`string`    		| **Required**. User email address.
`homeClubId`	|`long`    			| **Required**. User home club identifier.
`birthDate`     |`string`    		| **Required**. User birth date.
`personalId`    |`string`    		| User personal identifier.
`firstName`     |`string`    		| User first name.
`lastName`     	|`string`    		| User last name.
`phone`     	|`string`    		| User phone number.
`idCardName`	|`string`			| User identity card name.
`idCardNumber`  |`string`			| User identity card number.
`legalGuardian`	|`string`			| User legal guardian full name.
`isForeigner`	|`bool`				| Indicates if user is a forigner.
`sex`     		|`string`    		| User sex. <br><strong>Possible values</strong>: <br><ul><li>Male</li><li>Female</li></ul>
`address`     	|[Address][Address] | User address.




### Response

[User details][UserDetailsProperties] if operation is successful, or collection of [errors][Error] 
with [add user error codes][AddUserErrorCode] otherwise.


### Example request

In this example we add new user with some sample data to the company user's list.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "firstName": "John",
	    "lastName": "Fibo",
	    "email": "john.fibo@perfectgym.pl",
	    "phone": "0048123456789",
	    "idCardName": "Passport",
        "idCardNumber": "ABC 123456",
        "legalGuardian": "",
	    "birthDate": "1978-06-01T00:00:00",
	    "isForeigner": false,
	    "sex": "Male",
	    "homeClubId": 12,
	    "address": {
	        "line1": "al. Jerozolimskie 114",
	        "line2": "",
	        "city": "Warszawa",
	        "postalCode": "20-259",
	        "country": "Poland"
	    }
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/User
```


### Example response

<%= headers 200 %>
<%= json(:useradd_response) %>


### Example error response

Subsequent user add request with same samlpe data generates following error:

<%= headers 400 %>
<%= json(:useradd_error_response) %>



## Update existing user

    PUT Users/User

Request updates existing user's data.


### Parameters

Name            | Type       | Description
----------------|------------|------------
`userId`        |`long`      | User's identifier.


### Body parameters

Name     	    | Type       		| Description
----------------|-------------------|------------
`personalId`    |`string`    		| **Must be unique**. User personal identifier.
`firstName`     |`string`    		| User first name.
`lastName`     	|`string`    		| User last name.
`email`     	|`string`    		| **Must be unique**. User email address.
`phone`     	|`string`    		| **Must be unique**. User phone number.
`idCardName`	|`string`			| User identity card name.
`idCardNumber`  |`string`			| User identity card number.
`legalGuardian`	|`string`			| User legal guardian full name.
`birthDate`     |`string`    		| User birth date.
`isForigner`	|`bool`				| Indicates if user is a forigner.
`sex`     		|`string`    		| User sex. <br><strong>Possible values</strong>: <br><ul><li>Male</li><li>Female</li></ul>
`address`     	|[Address][Address] | User address.


### Response

[User details][UserDetailsProperties] if operation is successful, or collection of [errors][Error] 
with [update user error codes][UpdateUserErrorCode] otherwise.


### Example request

In this example we update user's address.

``` command-line

curl -X PUT 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "firstName": "John",
	    "lastName": "Fibo",
	    "email": "john.fibo@perfectgym.pl",
	    "phone": "0048123456789",
	    "idCardName": "Passport",
        "idCardNumber": "ABC 123456",
        "legalGuardian": "",
	    "birthDate": "1978-06-01T00:00:00",
	    "isForeigner": false,
	    "sex": "Male",
	    "homeClubId": 12,
	    "address": {
	        "line1": "ul. Przyczolkowa 334",
	        "line2": "",
	        "city": "Warszawa",
	        "postalCode": "02-962",
	        "country": "Poland"
	    }
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/User?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:userupdate_response) %>


### Example error response

User update request with non existant user identifier

<%= headers 400 %>
<%= json(:userupdate_error_response) %>



[UserDetailsProperties]: /api/users/userdetails#properties
[Error]: /appendix/datatypes/error
[Address]: /appendix/datatypes/address
[AddUserErrorCode]: /appendix/errorcodes/addusererrorcode
[UpdateUserErrorCode]: /appendix/errorcodes/updateusererrorcode