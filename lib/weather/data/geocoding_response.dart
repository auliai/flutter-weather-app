import 'package:web_app_test/weather/data/base_response.dart';

class GeocodingResponse extends BaseResponse {
  String? name;
  LocalNames? localNames;
  double? lat;
  double? lon;
  String? country;

  GeocodingResponse(
      {this.name, this.localNames, this.lat, this.lon, this.country});

  GeocodingResponse.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    localNames = json['local_names'] != null
        ? new LocalNames.fromJson(json['local_names'])
        : null;
    lat = json['lat'];
    lon = json['lon'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.localNames != null) {
      data['local_names'] = this.localNames!.toJson();
    }
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['country'] = this.country;
    return data;
  }
}

class LocalNames {
  String? af;
  String? ar;
  String? ascii;
  String? az;
  String? bg;
  String? ca;
  String? da;
  String? de;
  String? el;
  String? en;
  String? eu;
  String? fa;
  String? featureName;
  String? fi;
  String? fr;
  String? gl;
  String? he;
  String? hi;
  String? hr;
  String? hu;
  String? id;
  String? it;
  String? ja;
  String? la;
  String? lt;
  String? mk;
  String? nl;
  String? no;
  String? pl;
  String? pt;
  String? ro;
  String? ru;
  String? sk;
  String? sl;
  String? sr;
  String? th;
  String? tr;
  String? vi;
  String? zu;

  LocalNames(
      {this.af,
        this.ar,
        this.ascii,
        this.az,
        this.bg,
        this.ca,
        this.da,
        this.de,
        this.el,
        this.en,
        this.eu,
        this.fa,
        this.featureName,
        this.fi,
        this.fr,
        this.gl,
        this.he,
        this.hi,
        this.hr,
        this.hu,
        this.id,
        this.it,
        this.ja,
        this.la,
        this.lt,
        this.mk,
        this.nl,
        this.no,
        this.pl,
        this.pt,
        this.ro,
        this.ru,
        this.sk,
        this.sl,
        this.sr,
        this.th,
        this.tr,
        this.vi,
        this.zu});

  LocalNames.fromJson(Map<String, dynamic> json) {
    af = json['af'];
    ar = json['ar'];
    ascii = json['ascii'];
    az = json['az'];
    bg = json['bg'];
    ca = json['ca'];
    da = json['da'];
    de = json['de'];
    el = json['el'];
    en = json['en'];
    eu = json['eu'];
    fa = json['fa'];
    featureName = json['feature_name'];
    fi = json['fi'];
    fr = json['fr'];
    gl = json['gl'];
    he = json['he'];
    hi = json['hi'];
    hr = json['hr'];
    hu = json['hu'];
    id = json['id'];
    it = json['it'];
    ja = json['ja'];
    la = json['la'];
    lt = json['lt'];
    mk = json['mk'];
    nl = json['nl'];
    no = json['no'];
    pl = json['pl'];
    pt = json['pt'];
    ro = json['ro'];
    ru = json['ru'];
    sk = json['sk'];
    sl = json['sl'];
    sr = json['sr'];
    th = json['th'];
    tr = json['tr'];
    vi = json['vi'];
    zu = json['zu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['af'] = this.af;
    data['ar'] = this.ar;
    data['ascii'] = this.ascii;
    data['az'] = this.az;
    data['bg'] = this.bg;
    data['ca'] = this.ca;
    data['da'] = this.da;
    data['de'] = this.de;
    data['el'] = this.el;
    data['en'] = this.en;
    data['eu'] = this.eu;
    data['fa'] = this.fa;
    data['feature_name'] = this.featureName;
    data['fi'] = this.fi;
    data['fr'] = this.fr;
    data['gl'] = this.gl;
    data['he'] = this.he;
    data['hi'] = this.hi;
    data['hr'] = this.hr;
    data['hu'] = this.hu;
    data['id'] = this.id;
    data['it'] = this.it;
    data['ja'] = this.ja;
    data['la'] = this.la;
    data['lt'] = this.lt;
    data['mk'] = this.mk;
    data['nl'] = this.nl;
    data['no'] = this.no;
    data['pl'] = this.pl;
    data['pt'] = this.pt;
    data['ro'] = this.ro;
    data['ru'] = this.ru;
    data['sk'] = this.sk;
    data['sl'] = this.sl;
    data['sr'] = this.sr;
    data['th'] = this.th;
    data['tr'] = this.tr;
    data['vi'] = this.vi;
    data['zu'] = this.zu;
    return data;
  }
}
