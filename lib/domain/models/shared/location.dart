class Location {
  Location({
    this.city,
    this.street,
    this.zipCode,
    required this.country,
  });

  final String? city;
  final int? zipCode;
  final String? street;
  final String country;
}
