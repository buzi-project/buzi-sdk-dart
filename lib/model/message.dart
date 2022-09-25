//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Message {
  /// Returns a new [Message] instance.
  Message({
    this.id,
    this.createdAt,
    this.status,
    this.reason,
    this.cost,
    this.inbox,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  MessageStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Cost? cost;

  MessageInboxEnum? inbox;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Message &&
     other.id == id &&
     other.createdAt == createdAt &&
     other.status == status &&
     other.reason == reason &&
     other.cost == cost &&
     other.inbox == inbox;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (inbox == null ? 0 : inbox!.hashCode);

  @override
  String toString() => 'Message[id=$id, createdAt=$createdAt, status=$status, reason=$reason, cost=$cost, inbox=$inbox]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.inbox != null) {
      json[r'inbox'] = this.inbox;
    } else {
      json[r'inbox'] = null;
    }
    return json;
  }

  /// Returns a new [Message] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Message? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Message[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Message[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Message(
        id: mapValueOfType<String>(json, r'id'),
        createdAt: mapDateTime(json, r'created_at', ''),
        status: MessageStatusEnum.fromJson(json[r'status']),
        reason: mapValueOfType<String>(json, r'reason'),
        cost: Cost.fromJson(json[r'cost']),
        inbox: MessageInboxEnum.fromJson(json[r'inbox']),
      );
    }
    return null;
  }

  static List<Message>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Message>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Message.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Message> mapFromJson(dynamic json) {
    final map = <String, Message>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Message.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Message-objects as value to a dart map
  static Map<String, List<Message>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Message>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Message.listFromJson(entry.value, growable: growable,);
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


class MessageStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const MessageStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = MessageStatusEnum._(r'PENDING');
  static const REJECTED = MessageStatusEnum._(r'REJECTED');

  /// List of all possible values in this [enum][MessageStatusEnum].
  static const values = <MessageStatusEnum>[
    PENDING,
    REJECTED,
  ];

  static MessageStatusEnum? fromJson(dynamic value) => MessageStatusEnumTypeTransformer().decode(value);

  static List<MessageStatusEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessageStatusEnum] to String,
/// and [decode] dynamic data back to [MessageStatusEnum].
class MessageStatusEnumTypeTransformer {
  factory MessageStatusEnumTypeTransformer() => _instance ??= const MessageStatusEnumTypeTransformer._();

  const MessageStatusEnumTypeTransformer._();

  String encode(MessageStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MessageStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessageStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return MessageStatusEnum.PENDING;
        case r'REJECTED': return MessageStatusEnum.REJECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessageStatusEnumTypeTransformer] instance.
  static MessageStatusEnumTypeTransformer? _instance;
}



class MessageInboxEnum {
  /// Instantiate a new enum with the provided [value].
  const MessageInboxEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const incoming = MessageInboxEnum._(r'incoming');
  static const outgoing = MessageInboxEnum._(r'outgoing');

  /// List of all possible values in this [enum][MessageInboxEnum].
  static const values = <MessageInboxEnum>[
    incoming,
    outgoing,
  ];

  static MessageInboxEnum? fromJson(dynamic value) => MessageInboxEnumTypeTransformer().decode(value);

  static List<MessageInboxEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageInboxEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageInboxEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessageInboxEnum] to String,
/// and [decode] dynamic data back to [MessageInboxEnum].
class MessageInboxEnumTypeTransformer {
  factory MessageInboxEnumTypeTransformer() => _instance ??= const MessageInboxEnumTypeTransformer._();

  const MessageInboxEnumTypeTransformer._();

  String encode(MessageInboxEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MessageInboxEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessageInboxEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'incoming': return MessageInboxEnum.incoming;
        case r'outgoing': return MessageInboxEnum.outgoing;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessageInboxEnumTypeTransformer] instance.
  static MessageInboxEnumTypeTransformer? _instance;
}


