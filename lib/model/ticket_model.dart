// Data model classes

// Ticket model class
class Ticket {
  String firstName;
  String lastName;
  String email;
  String profilePic;
  String ticketNumber;
  int id;
  String title;
  String createdAt;
  String departmentName;
  String priorityName;
  String slaPlanName;
  String helpTopicName;
  String ticketStatusName;

  Ticket({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.profilePic,
    required this.ticketNumber,
    required this.id,
    required this.title,
    required this.createdAt,
    required this.departmentName,
    required this.priorityName,
    required this.slaPlanName,
    required this.helpTopicName,
    required this.ticketStatusName,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) {
    return Ticket(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      profilePic: json['profile_pic'],
      ticketNumber: json['ticket_number'],
      id: json['id'],
      title: json['title'],
      createdAt: json['created_at'],
      departmentName: json['department_name'],
      priorityName: json['priotity_name'],
      slaPlanName: json['sla_plan_name'],
      helpTopicName: json['help_topic_name'],
      ticketStatusName: json['ticket_status_name'],
    );
  }
}

// TicketsResponse model class
class TicketsResponse {
  int currentPage;
  List<Ticket> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  List<dynamic> links; // Since links can vary, keep it dynamic
  String nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl; // Can be null

  TicketsResponse({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    this.prevPageUrl,
  });

  factory TicketsResponse.fromJson(Map<String, dynamic> json) {
    return TicketsResponse(
      currentPage: json['current_page'],
      data: List<Ticket>.from(json['data'].map((ticket) => Ticket.fromJson(ticket))),
      firstPageUrl: json['first_page_url'],
      from: json['from'],
      lastPage: json['last_page'],
      lastPageUrl: json['last_page_url'],
      links: json['links'],
      nextPageUrl: json['next_page_url'],
      path: json['path'],
      perPage: json['per_page'],
      prevPageUrl: json['prev_page_url'],
    );
  }
}
