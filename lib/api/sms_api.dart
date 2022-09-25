//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SmsApi {
  SmsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel a message
  ///
  /// Returns a single pet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] messageId (required):
  ///   ID of pet to return
  Future<Response> cancelMessageWithHttpInfo(int messageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sms/messages/{messageId}/cancel'
      .replaceAll('{messageId}', messageId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Cancel a message
  ///
  /// Returns a single pet
  ///
  /// Parameters:
  ///
  /// * [int] messageId (required):
  ///   ID of pet to return
  Future<Message?> cancelMessage(int messageId,) async {
    final response = await cancelMessageWithHttpInfo(messageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Message',) as Message;
    
    }
    return null;
  }

  /// Create Message
  ///
  /// Update an existing pet by Id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateMessageInput] createMessageInput (required):
  ///   Update an existent pet in the store
  Future<Response> createMessageWithHttpInfo(CreateMessageInput createMessageInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sms/messages';

    // ignore: prefer_final_locals
    Object? postBody = createMessageInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Message
  ///
  /// Update an existing pet by Id
  ///
  /// Parameters:
  ///
  /// * [CreateMessageInput] createMessageInput (required):
  ///   Update an existent pet in the store
  Future<Message?> createMessage(CreateMessageInput createMessageInput,) async {
    final response = await createMessageWithHttpInfo(createMessageInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Message',) as Message;
    
    }
    return null;
  }

  /// Create network price
  ///
  /// Returns a single pet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] networkId (required):
  Future<Response> createPricingWithHttpInfo(int networkId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sms/networks/{networkId}/pricing'
      .replaceAll('{networkId}', networkId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create network price
  ///
  /// Returns a single pet
  ///
  /// Parameters:
  ///
  /// * [int] networkId (required):
  Future<Message?> createPricing(int networkId,) async {
    final response = await createPricingWithHttpInfo(networkId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Message',) as Message;
    
    }
    return null;
  }

  /// Deletes a message
  ///
  /// delete a message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] messageId (required):
  ///   Pet id to delete
  ///
  /// * [String] apiKey:
  ///   
  Future<Response> deleteMessageWithHttpInfo(int messageId, { String? apiKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sms/messages/{messageId}'
      .replaceAll('{messageId}', messageId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (apiKey != null) {
      headerParams[r'api_key'] = parameterToString(apiKey);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes a message
  ///
  /// delete a message
  ///
  /// Parameters:
  ///
  /// * [int] messageId (required):
  ///   Pet id to delete
  ///
  /// * [String] apiKey:
  ///   
  Future<Error?> deleteMessage(int messageId, { String? apiKey, }) async {
    final response = await deleteMessageWithHttpInfo(messageId,  apiKey: apiKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Error',) as Error;
    
    }
    return null;
  }

  /// Get message
  ///
  /// Returns a single pet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] messageId (required):
  ///   ID of pet to return
  Future<Response> getMessageWithHttpInfo(int messageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sms/messages/{messageId}'
      .replaceAll('{messageId}', messageId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get message
  ///
  /// Returns a single pet
  ///
  /// Parameters:
  ///
  /// * [int] messageId (required):
  ///   ID of pet to return
  Future<Message?> getMessage(int messageId,) async {
    final response = await getMessageWithHttpInfo(messageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Message',) as Message;
    
    }
    return null;
  }

  /// Get network
  ///
  /// Returns a single pet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] networkId (required):
  ///
  /// * [int] countryCode:
  ///   ID of pet to return
  Future<Response> getNetworkWithHttpInfo(int networkId, { int? countryCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sms/networks/{networkId}'
      .replaceAll('{networkId}', networkId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (countryCode != null) {
      queryParams.addAll(_queryParams('', 'country_code', countryCode));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get network
  ///
  /// Returns a single pet
  ///
  /// Parameters:
  ///
  /// * [int] networkId (required):
  ///
  /// * [int] countryCode:
  ///   ID of pet to return
  Future<Network?> getNetwork(int networkId, { int? countryCode, }) async {
    final response = await getNetworkWithHttpInfo(networkId,  countryCode: countryCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Network',) as Network;
    
    }
    return null;
  }

  /// List network rates
  ///
  /// Returns a single pet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] networkId (required):
  Future<Response> getPricingWithHttpInfo(int networkId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sms/networks/{networkId}/pricing'
      .replaceAll('{networkId}', networkId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List network rates
  ///
  /// Returns a single pet
  ///
  /// Parameters:
  ///
  /// * [int] networkId (required):
  Future<List<Pricing>?> getPricing(int networkId,) async {
    final response = await getPricingWithHttpInfo(networkId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Pricing>') as List)
        .cast<Pricing>()
        .toList();

    }
    return null;
  }

  /// List messages
  ///
  /// Update an existing pet by Id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inbox:
  ///
  /// * [String] status:
  Future<Response> listMessagesWithHttpInfo({ String? inbox, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sms/messages';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inbox != null) {
      queryParams.addAll(_queryParams('', 'inbox', inbox));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List messages
  ///
  /// Update an existing pet by Id
  ///
  /// Parameters:
  ///
  /// * [String] inbox:
  ///
  /// * [String] status:
  Future<List<Message>?> listMessages({ String? inbox, String? status, }) async {
    final response = await listMessagesWithHttpInfo( inbox: inbox, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Message>') as List)
        .cast<Message>()
        .toList();

    }
    return null;
  }

  /// List networks
  ///
  /// Returns a single pet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] countryCode:
  ///   ID of pet to return
  Future<Response> listNetworksWithHttpInfo({ String? countryCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sms/networks';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (countryCode != null) {
      queryParams.addAll(_queryParams('', 'country_code', countryCode));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List networks
  ///
  /// Returns a single pet
  ///
  /// Parameters:
  ///
  /// * [String] countryCode:
  ///   ID of pet to return
  Future<List<Network>?> listNetworks({ String? countryCode, }) async {
    final response = await listNetworksWithHttpInfo( countryCode: countryCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Network>') as List)
        .cast<Network>()
        .toList();

    }
    return null;
  }

  /// Sends a message
  ///
  /// Returns a single pet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] messageId (required):
  ///   ID of pet to return
  Future<Response> sendMessageWithHttpInfo(int messageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sms/messages/{messageId}/send'
      .replaceAll('{messageId}', messageId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Sends a message
  ///
  /// Returns a single pet
  ///
  /// Parameters:
  ///
  /// * [int] messageId (required):
  ///   ID of pet to return
  Future<Message?> sendMessage(int messageId,) async {
    final response = await sendMessageWithHttpInfo(messageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Message',) as Message;
    
    }
    return null;
  }
}
