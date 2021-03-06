class Location {
  final String? city;
  final int? zipCode;
  final String? street;
  final String country;

  Location({
    this.city,
    this.street,
    this.zipCode,
    required this.country,
  });
}
