class RocketModal {
  int? count;
  String? next;
  Null? previous;
  List<Results>? results;

  RocketModal({this.count, this.next, this.previous, this.results});

  RocketModal.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? id;
  String? url;
  String? slug;
  String? name;
  Type? type;
  String? description;
  String? location;
  String? newsUrl;
  String? videoUrl;
  String? featureImage;
  String? date;
  List<Launches>? launches;
  List<Expeditions>? expeditions;
  List<Spacestations>? spacestations;
  List<Program>? program;

  Results(
      {this.id,
      this.url,
      this.slug,
      this.name,
      this.type,
      this.description,
      this.location,
      this.newsUrl,
      this.videoUrl,
      this.featureImage,
      this.date,
      this.launches,
      this.expeditions,
      this.spacestations,
      this.program});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    slug = json['slug'];
    name = json['name'];
    type = json['type'] != null ? new Type.fromJson(json['type']) : null;
    description = json['description'];
    location = json['location'];
    newsUrl = json['news_url'];
    videoUrl = json['video_url'];
    featureImage = json['feature_image'];
    date = json['date'];
    if (json['launches'] != null) {
      launches = <Launches>[];
      json['launches'].forEach((v) {
        launches!.add(new Launches.fromJson(v));
      });
    }
    if (json['expeditions'] != null) {
      expeditions = <Expeditions>[];
      json['expeditions'].forEach((v) {
        expeditions!.add(new Expeditions.fromJson(v));
      });
    }
    if (json['spacestations'] != null) {
      spacestations = <Spacestations>[];
      json['spacestations'].forEach((v) {
        spacestations!.add(new Spacestations.fromJson(v));
      });
    }
    if (json['program'] != null) {
      program = <Program>[];
      json['program'].forEach((v) {
        program!.add(new Program.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['slug'] = this.slug;
    data['name'] = this.name;
    if (this.type != null) {
      data['type'] = this.type!.toJson();
    }
    data['description'] = this.description;
    data['location'] = this.location;
    data['news_url'] = this.newsUrl;
    data['video_url'] = this.videoUrl;
    data['feature_image'] = this.featureImage;
    data['date'] = this.date;
    if (this.launches != null) {
      data['launches'] = this.launches!.map((v) => v.toJson()).toList();
    }
    if (this.expeditions != null) {
      data['expeditions'] = this.expeditions!.map((v) => v.toJson()).toList();
    }
    if (this.spacestations != null) {
      data['spacestations'] =
          this.spacestations!.map((v) => v.toJson()).toList();
    }
    if (this.program != null) {
      data['program'] = this.program!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Type {
  int? id;
  String? name;

  Type({this.id, this.name});

  Type.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Launches {
  String? id;
  String? url;
  int? launchLibraryId;
  String? slug;
  String? name;
  Type? status;
  String? net;
  String? windowEnd;
  String? windowStart;
  bool? inhold;
  bool? tbdtime;
  bool? tbddate;
  int? probability;
  String? holdreason;
  String? failreason;
  String? hashtag;
  LaunchServiceProvider? launchServiceProvider;
  Rocket? rocket;
  Mission? mission;
  Pad? pad;
  bool? webcastLive;
  String? image;
  Null? infographic;
  List<Program>? program;

  Launches(
      {this.id,
      this.url,
      this.launchLibraryId,
      this.slug,
      this.name,
      this.status,
      this.net,
      this.windowEnd,
      this.windowStart,
      this.inhold,
      this.tbdtime,
      this.tbddate,
      this.probability,
      this.holdreason,
      this.failreason,
      this.hashtag,
      this.launchServiceProvider,
      this.rocket,
      this.mission,
      this.pad,
      this.webcastLive,
      this.image,
      this.infographic,
      this.program});

  Launches.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    launchLibraryId = json['launch_library_id'];
    slug = json['slug'];
    name = json['name'];
    status = json['status'] != null ? new Type.fromJson(json['status']) : null;
    net = json['net'];
    windowEnd = json['window_end'];
    windowStart = json['window_start'];
    inhold = json['inhold'];
    tbdtime = json['tbdtime'];
    tbddate = json['tbddate'];
    probability = json['probability'];
    holdreason = json['holdreason'];
    failreason = json['failreason'];
    hashtag = json['hashtag'];
    launchServiceProvider = json['launch_service_provider'] != null
        ? new LaunchServiceProvider.fromJson(json['launch_service_provider'])
        : null;
    rocket =
        json['rocket'] != null ? new Rocket.fromJson(json['rocket']) : null;
    mission =
        json['mission'] != null ? new Mission.fromJson(json['mission']) : null;
    pad = json['pad'] != null ? new Pad.fromJson(json['pad']) : null;
    webcastLive = json['webcast_live'];
    image = json['image'];
    infographic = json['infographic'];
    if (json['program'] != null) {
      program = <Program>[];
      json['program'].forEach((v) {
        program!.add(new Program.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['launch_library_id'] = this.launchLibraryId;
    data['slug'] = this.slug;
    data['name'] = this.name;
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    data['net'] = this.net;
    data['window_end'] = this.windowEnd;
    data['window_start'] = this.windowStart;
    data['inhold'] = this.inhold;
    data['tbdtime'] = this.tbdtime;
    data['tbddate'] = this.tbddate;
    data['probability'] = this.probability;
    data['holdreason'] = this.holdreason;
    data['failreason'] = this.failreason;
    data['hashtag'] = this.hashtag;
    if (this.launchServiceProvider != null) {
      data['launch_service_provider'] = this.launchServiceProvider!.toJson();
    }
    if (this.rocket != null) {
      data['rocket'] = this.rocket!.toJson();
    }
    if (this.mission != null) {
      data['mission'] = this.mission!.toJson();
    }
    if (this.pad != null) {
      data['pad'] = this.pad!.toJson();
    }
    data['webcast_live'] = this.webcastLive;
    data['image'] = this.image;
    data['infographic'] = this.infographic;
    if (this.program != null) {
      data['program'] = this.program!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Status {
  int? id;
  String? name;
  String? abbrev;
  String? description;

  Status({this.id, this.name, this.abbrev, this.description});

  Status.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    abbrev = json['abbrev'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['abbrev'] = this.abbrev;
    data['description'] = this.description;
    return data;
  }
}

class LaunchServiceProvider {
  int? id;
  String? url;
  String? name;
  String? type;

  LaunchServiceProvider({this.id, this.url, this.name, this.type});

  LaunchServiceProvider.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['type'] = this.type;
    return data;
  }
}

class Rocket {
  int? id;
  Configuration? configuration;

  Rocket({this.id, this.configuration});

  Rocket.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    configuration = json['configuration'] != null
        ? new Configuration.fromJson(json['configuration'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.configuration != null) {
      data['configuration'] = this.configuration!.toJson();
    }
    return data;
  }
}

class Configuration {
  int? id;
  int? launchLibraryId;
  String? url;
  String? name;
  String? family;
  String? fullName;
  String? variant;

  Configuration(
      {this.id,
      this.launchLibraryId,
      this.url,
      this.name,
      this.family,
      this.fullName,
      this.variant});

  Configuration.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    launchLibraryId = json['launch_library_id'];
    url = json['url'];
    name = json['name'];
    family = json['family'];
    fullName = json['full_name'];
    variant = json['variant'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['launch_library_id'] = this.launchLibraryId;
    data['url'] = this.url;
    data['name'] = this.name;
    data['family'] = this.family;
    data['full_name'] = this.fullName;
    data['variant'] = this.variant;
    return data;
  }
}

class Mission {
  int? id;
  int? launchLibraryId;
  String? name;
  String? description;
  Null? launchDesignator;
  String? type;
  Orbit? orbit;

  Mission(
      {this.id,
      this.launchLibraryId,
      this.name,
      this.description,
      this.launchDesignator,
      this.type,
      this.orbit});

  Mission.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    launchLibraryId = json['launch_library_id'];
    name = json['name'];
    description = json['description'];
    launchDesignator = json['launch_designator'];
    type = json['type'];
    orbit = json['orbit'] != null ? new Orbit.fromJson(json['orbit']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['launch_library_id'] = this.launchLibraryId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['launch_designator'] = this.launchDesignator;
    data['type'] = this.type;
    if (this.orbit != null) {
      data['orbit'] = this.orbit!.toJson();
    }
    return data;
  }
}

class Orbit {
  int? id;
  String? name;
  String? abbrev;

  Orbit({this.id, this.name, this.abbrev});

  Orbit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    abbrev = json['abbrev'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['abbrev'] = this.abbrev;
    return data;
  }
}

class Pad {
  int? id;
  String? url;
  int? agencyId;
  String? name;
  Null? infoUrl;
  String? wikiUrl;
  String? mapUrl;
  String? latitude;
  String? longitude;
  Location? location;
  String? mapImage;
  int? totalLaunchCount;

  Pad(
      {this.id,
      this.url,
      this.agencyId,
      this.name,
      this.infoUrl,
      this.wikiUrl,
      this.mapUrl,
      this.latitude,
      this.longitude,
      this.location,
      this.mapImage,
      this.totalLaunchCount});

  Pad.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    agencyId = json['agency_id'];
    name = json['name'];
    infoUrl = json['info_url'];
    wikiUrl = json['wiki_url'];
    mapUrl = json['map_url'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    mapImage = json['map_image'];
    totalLaunchCount = json['total_launch_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['agency_id'] = this.agencyId;
    data['name'] = this.name;
    data['info_url'] = this.infoUrl;
    data['wiki_url'] = this.wikiUrl;
    data['map_url'] = this.mapUrl;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['map_image'] = this.mapImage;
    data['total_launch_count'] = this.totalLaunchCount;
    return data;
  }
}

class Location {
  int? id;
  String? url;
  String? name;
  String? countryCode;
  String? mapImage;
  int? totalLaunchCount;
  int? totalLandingCount;

  Location(
      {this.id,
      this.url,
      this.name,
      this.countryCode,
      this.mapImage,
      this.totalLaunchCount,
      this.totalLandingCount});

  Location.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    countryCode = json['country_code'];
    mapImage = json['map_image'];
    totalLaunchCount = json['total_launch_count'];
    totalLandingCount = json['total_landing_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['country_code'] = this.countryCode;
    data['map_image'] = this.mapImage;
    data['total_launch_count'] = this.totalLaunchCount;
    data['total_landing_count'] = this.totalLandingCount;
    return data;
  }
}

class Agencies {
  int? id;
  String? url;
  String? name;
  String? type;

  Agencies({this.id, this.url, this.name, this.type});

  Agencies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['type'] = this.type;
    return data;
  }
}

class Program {
  int? id;
  String? url;
  String? name;
  String? description;
  List<Agencies>? agencies;
  String? imageUrl;
  String? startDate;
  Null? endDate;
  String? infoUrl;
  String? wikiUrl;

  Program(
      {this.id,
      this.url,
      this.name,
      this.description,
      this.agencies,
      this.imageUrl,
      this.startDate,
      this.endDate,
      this.infoUrl,
      this.wikiUrl});

  Program.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    description = json['description'];
    if (json['agencies'] != null) {
      agencies = <Agencies>[];
      json['agencies'].forEach((v) {
        agencies!.add(new Agencies.fromJson(v));
      });
    }
    imageUrl = json['image_url'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    infoUrl = json['info_url'];
    wikiUrl = json['wiki_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['description'] = this.description;
    if (this.agencies != null) {
      data['agencies'] = this.agencies!.map((v) => v.toJson()).toList();
    }
    data['image_url'] = this.imageUrl;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['info_url'] = this.infoUrl;
    data['wiki_url'] = this.wikiUrl;
    return data;
  }
}

class Expeditions {
  int? id;
  String? url;
  String? name;
  String? start;
  String? end;
  Spacestation? spacestation;

  Expeditions(
      {this.id, this.url, this.name, this.start, this.end, this.spacestation});

  Expeditions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    start = json['start'];
    end = json['end'];
    spacestation = json['spacestation'] != null
        ? new Spacestation.fromJson(json['spacestation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['start'] = this.start;
    data['end'] = this.end;
    if (this.spacestation != null) {
      data['spacestation'] = this.spacestation!.toJson();
    }
    return data;
  }
}

class Spacestation {
  int? id;
  String? url;
  String? name;
  Type? status;
  String? orbit;
  String? imageUrl;

  Spacestation(
      {this.id, this.url, this.name, this.status, this.orbit, this.imageUrl});

  Spacestation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    status = json['status'] != null ? new Type.fromJson(json['status']) : null;
    orbit = json['orbit'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    data['orbit'] = this.orbit;
    data['image_url'] = this.imageUrl;
    return data;
  }
}

class Spacestations {
  int? id;
  String? url;
  String? name;
  Type? status;
  String? founded;
  String? description;
  String? orbit;
  String? imageUrl;

  Spacestations(
      {this.id,
      this.url,
      this.name,
      this.status,
      this.founded,
      this.description,
      this.orbit,
      this.imageUrl});

  Spacestations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    status = json['status'] != null ? new Type.fromJson(json['status']) : null;
    founded = json['founded'];
    description = json['description'];
    orbit = json['orbit'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    data['founded'] = this.founded;
    data['description'] = this.description;
    data['orbit'] = this.orbit;
    data['image_url'] = this.imageUrl;
    return data;
  }
}
