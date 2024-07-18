
class InboxModel {
  int? currentPage;
  List<Inbox>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  InboxModel({this.currentPage, this.data, this.firstPageUrl, this.from, this.lastPage, this.lastPageUrl, this.links, this.nextPageUrl, this.path, this.perPage, this.prevPageUrl, this.to, this.total});

  InboxModel.fromJson(Map<String, dynamic> json) {
    if(json["current_page"] is int) {
      currentPage = json["current_page"];
    }
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Inbox.fromJson(e)).toList();
    }
    if(json["first_page_url"] is String) {
      firstPageUrl = json["first_page_url"];
    }
    if(json["from"] is int) {
      from = json["from"];
    }
    if(json["last_page"] is int) {
      lastPage = json["last_page"];
    }
    if(json["last_page_url"] is String) {
      lastPageUrl = json["last_page_url"];
    }
    if(json["links"] is List) {
      links = json["links"] == null ? null : (json["links"] as List).map((e) => Links.fromJson(e)).toList();
    }
    if(json["next_page_url"] is String) {
      nextPageUrl = json["next_page_url"];
    }
    if(json["path"] is String) {
      path = json["path"];
    }
    if(json["per_page"] is int) {
      perPage = json["per_page"];
    }
    prevPageUrl = json["prev_page_url"];
    if(json["to"] is int) {
      to = json["to"];
    }
    if(json["total"] is int) {
      total = json["total"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["current_page"] = currentPage;
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    _data["first_page_url"] = firstPageUrl;
    _data["from"] = from;
    _data["last_page"] = lastPage;
    _data["last_page_url"] = lastPageUrl;
    if(links != null) {
      _data["links"] = links?.map((e) => e.toJson()).toList();
    }
    _data["next_page_url"] = nextPageUrl;
    _data["path"] = path;
    _data["per_page"] = perPage;
    _data["prev_page_url"] = prevPageUrl;
    _data["to"] = to;
    _data["total"] = total;
    return _data;
  }
}

class Links {
  dynamic url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["active"] is bool) {
      active = json["active"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["label"] = label;
    _data["active"] = active;
    return _data;
  }
}

class Inbox {
  String? updatedAt;
  String? userName;
  String? firstName;
  String? lastName;
  String? email;
  String? profilePic;
  String? ticketNumber;
  int? id;
  String? title;
  String? createdAt;
  String? departmentName;
  String? priotityName;
  String? priorityColor;
  String? slaPlanName;
  String? helpTopicName;
  String? ticketStatusName;
  int? departmentId;
  dynamic userDpt;
  int? attachment;
  String? overdueDate;

  Inbox({this.updatedAt, this.userName, this.firstName, this.lastName, this.email, this.profilePic, this.ticketNumber, this.id, this.title, this.createdAt, this.departmentName, this.priotityName, this.priorityColor, this.slaPlanName, this.helpTopicName, this.ticketStatusName, this.departmentId, this.userDpt, this.attachment, this.overdueDate});

  Inbox.fromJson(Map<String, dynamic> json) {
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if(json["user_name"] is String) {
      userName = json["user_name"];
    }
    if(json["first_name"] is String) {
      firstName = json["first_name"];
    }
    if(json["last_name"] is String) {
      lastName = json["last_name"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["profile_pic"] is String) {
      profilePic = json["profile_pic"];
    }
    if(json["ticket_number"] is String) {
      ticketNumber = json["ticket_number"];
    }
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["department_name"] is String) {
      departmentName = json["department_name"];
    }
    if(json["priotity_name"] is String) {
      priotityName = json["priotity_name"];
    }
    if(json["priority_color"] is String) {
      priorityColor = json["priority_color"];
    }
    if(json["sla_plan_name"] is String) {
      slaPlanName = json["sla_plan_name"];
    }
    if(json["help_topic_name"] is String) {
      helpTopicName = json["help_topic_name"];
    }
    if(json["ticket_status_name"] is String) {
      ticketStatusName = json["ticket_status_name"];
    }
    if(json["department_id"] is int) {
      departmentId = json["department_id"];
    }
    userDpt = json["user_dpt"];
    if(json["attachment"] is int) {
      attachment = json["attachment"];
    }
    if(json["overdue_date"] is String) {
      overdueDate = json["overdue_date"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["updated_at"] = updatedAt;
    _data["user_name"] = userName;
    _data["first_name"] = firstName;
    _data["last_name"] = lastName;
    _data["email"] = email;
    _data["profile_pic"] = profilePic;
    _data["ticket_number"] = ticketNumber;
    _data["id"] = id;
    _data["title"] = title;
    _data["created_at"] = createdAt;
    _data["department_name"] = departmentName;
    _data["priotity_name"] = priotityName;
    _data["priority_color"] = priorityColor;
    _data["sla_plan_name"] = slaPlanName;
    _data["help_topic_name"] = helpTopicName;
    _data["ticket_status_name"] = ticketStatusName;
    _data["department_id"] = departmentId;
    _data["user_dpt"] = userDpt;
    _data["attachment"] = attachment;
    _data["overdue_date"] = overdueDate;
    return _data;
  }
}