//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Pricing {
  /// Returns a new [Pricing] instance.
  Pricing({
    this.costPerUnit,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? costPerUnit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pricing &&
     other.costPerUnit == costPerUnit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (costPerUnit == null ? 0 : costPerUnit!.hashCode);

  @override
  String toString() => 'Pricing[costPerUnit=$costPerUnit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.costPerUnit != null) {
      json[r'cost_per_unit'] = this.costPerUnit;
    } else {
      json[r'cost_per_unit'] = null;
    }
    return json;
  }

  /// Returns a new [Pricing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pricing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Pricing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Pricing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Pricing(
        costPerUnit: json[r'cost_per_unit'] == null
            ? null
            : num.parse(json[r'cost_per_unit'].toString()),
      );
    }
    return null;
  }

  static List<Pricing>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Pricing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Pricing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Pricing> mapFromJson(dynamic json) {
    final map = <String, Pricing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pricing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Pricing-objects as value to a dart map
  static Map<String, List<Pricing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Pricing>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pricing.listFromJson(entry.value, growable: growable,);
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

