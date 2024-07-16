// Dart model classes for the JSON data

class InboxData {
  int currentPage;
  List<Inbox> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  List<Link> links;
  String nextPageUrl;
  String path;
  int perPage;
  String? prevPageUrl;
  int to;
  int total;

  InboxData({
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
    required this.to,
    required this.total,
  });

  factory InboxData.fromJson(Map<String, dynamic> json) {
    // Parsing 'links' array
    List<Link> links = [];
    if (json['links'] != null) {
      links = List<Link>.from(json['links'].map((x) => Link.fromJson(x)));
    }

    return InboxData(
      currentPage: json['current_page'],
      data: List<Inbox>.from(json['data'].map((x) => Inbox.fromJson(x))),
      firstPageUrl: json['first_page_url'],
      from: json['from'],
      lastPage: json['last_page'],
      lastPageUrl: json['last_page_url'],
      links: links,
      nextPageUrl: json['next_page_url'],
      path: json['path'],
      perPage: json['per_page'],
      prevPageUrl: json['prev_page_url'] ?? '',
      to: json['to'],
      total: json['total'],
    );
  }
}

class Inbox {
  String updatedAt;
  String userName;
  String firstName;
  String lastName;
  String email;
  String profilePic;
  String InboxNumber;
  int id;
  String title;
  String createdAt;
  String departmentName;
  String priorityName;
  String priorityColor;
  String slaPlanName;
  String helpTopicName;
  String InboxStatusName;
  int departmentId;
  String? userDpt;
  int attachment;
  String overdueDate;

  Inbox({
    required this.updatedAt,
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.profilePic,
    required this.InboxNumber,
    required this.id,
    required this.title,
    required this.createdAt,
    required this.departmentName,
    required this.priorityName,
    required this.priorityColor,
    required this.slaPlanName,
    required this.helpTopicName,
    required this.InboxStatusName,
    required this.departmentId,
    this.userDpt,
    required this.attachment,
    required this.overdueDate,
  });

  factory Inbox.fromJson(Map<String, dynamic> json) {
    return Inbox(
      updatedAt: json['updated_at'],
      userName: json['user_name'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      profilePic: json['profile_pic'],
      InboxNumber: json['Inbox_number'],
      id: json['id'],
      title: json['title'],
      createdAt: json['created_at'],
      departmentName: json['department_name'],
      priorityName: json['priotity_name'],
      priorityColor: json['priority_color'],
      slaPlanName: json['sla_plan_name'],
      helpTopicName: json['help_topic_name'],
      InboxStatusName: json['Inbox_status_name'],
      departmentId: json['department_id'],
       userDpt: json['user_dpt'] ?? '',
      attachment: json['attachment'],
      overdueDate: json['overdue_date'],
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
      url: json['url'] ?? '',
      label: json['label'],
      active: json['active'],
    );
  }
}
