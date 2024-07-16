class UnassignedModel {
  int currentPage;
  List<Unassigned> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  List<Link> links;
  String nextPageUrl;
  String path;
  int perPage;
  String prevPageUrl;
  int to;
  int total;

  UnassignedModel({
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
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  factory UnassignedModel.fromJson(Map<String, dynamic> json) {
    return UnassignedModel(
      currentPage: json['current_page'],
      data: (json['data'] as List).map((item) => Unassigned.fromJson(item)).toList(),
      firstPageUrl: json['first_page_url'],
      from: json['from'],
      lastPage: json['last_page'],
      lastPageUrl: json['last_page_url'],
      links: (json['links'] as List).map((item) => Link.fromJson(item)).toList(),
      nextPageUrl: json['next_page_url'],
      path: json['path'],
      perPage: json['per_page'],
      prevPageUrl: json['prev_page_url'],
      to: json['to'],
      total: json['total'],
    );
  }
}

class Unassigned {
  String priorityColor;
  String title;
  String overdueDate;
  int attachment;
  String updatedAt;
  String userName;
  String firstName;
  String lastName;
  String email;
  String profilePic;
  String ticketNumber;
  int id;
  String createdAt;
  String departmentName;
  String priorityName;
  String slaPlanName;
  String helpTopicName;
  String ticketStatusName;

  Unassigned({
    required this.priorityColor,
    required this.title,
    required this.overdueDate,
    required this.attachment,
    required this.updatedAt,
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.profilePic,
    required this.ticketNumber,
    required this.id,
    required this.createdAt,
    required this.departmentName,
    required this.priorityName,
    required this.slaPlanName,
    required this.helpTopicName,
    required this.ticketStatusName,
  });

  factory Unassigned.fromJson(Map<String, dynamic> json) {
    return Unassigned(
      priorityColor: json['priority_color'],
      title: json['title'],
      overdueDate: json['overdue_date'],
      attachment: json['attachment'],
      updatedAt: json['updated_at'],
      userName: json['user_name'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      profilePic: json['profile_pic'],
      ticketNumber: json['ticket_number'],
      id: json['id'],
      createdAt: json['created_at'],
      departmentName: json['department_name'],
      priorityName: json['priotity_name'],
      slaPlanName: json['sla_plan_name'],
      helpTopicName: json['help_topic_name'],
      ticketStatusName: json['ticket_status_name'],
    );
  }
}

class Link {
  String? url;
  String label;
  bool active;

  Link({
    this.url,
    required this.label,
    required this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      url: json['url'],
      label: json['label'],
      active: json['active'],
    );
  }
}
