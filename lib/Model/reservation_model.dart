class ReservationModel {
  String reservation_id = '';
  DateTime pickupdate = DateTime.now();
  DateTime returndate = DateTime.now();
  String duration = '';
  String discount = '';

  ReservationModel({required this.reservation_id, required this.pickupdate, required this.returndate, required this.duration,required this.discount});
}
