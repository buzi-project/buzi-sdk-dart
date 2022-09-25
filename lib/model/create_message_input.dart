//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateMessageInput {
  /// Returns a new [CreateMessageInput] instance.
  CreateMessageInput({
    this.to = const [],
    this.from,
    this.networkId,
    this.callbackUrl,
  });

  List<String> to;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? networkId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? callbackUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateMessageInput &&
     other.to == to &&
     other.from == from &&
     other.networkId == networkId &&
     other.callbackUrl == callbackUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (to.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (networkId == null ? 0 : networkId!.hashCode) +
    (callbackUrl == null ? 0 : callbackUrl!.hashCode);

  @override
  String toString() => 'CreateMessageInput[to=$to, from=$from, networkId=$networkId, callbackUrl=$callbackUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'to'] = this.to;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.networkId != null) {
      json[r'network_id'] = this.networkId;
    } else {
      json[r'network_id'] = null;
    }
    if (this.callbackUrl != null) {
      json[r'callback_url'] = this.callbackUrl;
    } else {
      json[r'callback_url'] = null;
    }
    return json;
  }

  /// Returns a new [CreateMessageInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateMessageInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateMessageInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateMessageInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateMessageInput(
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        from: mapValueOfType<String>(json, r'from'),
        networkId: mapValueOfType<int>(json, r'network_id'),
        callbackUrl: mapValueOfType<String>(json, r'callback_url'),
      );
    }
    return null;
  }

  static List<CreateMessageInput>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateMessageInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateMessageInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateMessageInput> mapFromJson(dynamic json) {
    final map = <String, CreateMessageInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateMessageInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateMessageInput-objects as value to a dart map
  static Map<String, List<CreateMessageInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateMessageInput>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateMessageInput.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

