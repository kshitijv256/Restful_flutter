import 'dart:convert';

Overview overviewFromJson(String str) => Overview.fromJson(json.decode(str));

String overviewToJson(Overview data) => json.encode(data.toJson());

class Overview {
  Overview({
    this.id = 0,
    this.security = 'none',
    this.industryId = 0,
    this.industry = 'none',
    this.sectorId = 0,
    this.sector = 'none',
    this.mcap = 0,
    this.ev,
    this.evDateEnd,
    this.bookNavPerShare = 0,
    this.ttmpe = 0,
    this.ttmYearEnd = 0,
    this.overviewYield = 0,
    this.yearEnd = 0,
    this.sectorSlug = 'none',
    this.industrySlug = 'none',
    this.securitySlug = 'none',
    this.pegRatio = 0,
  });

  int id;
  String security;
  int industryId;
  String industry;
  int sectorId;
  String sector;
  double mcap;
  dynamic ev;
  dynamic evDateEnd;
  double bookNavPerShare;
  double ttmpe;
  int ttmYearEnd;
  double overviewYield;
  int yearEnd;
  String sectorSlug;
  String industrySlug;
  String securitySlug;
  double pegRatio;

  factory Overview.fromJson(Map<String, dynamic> json) => Overview(
        id: json["ID"],
        security: json["Security"],
        industryId: json["IndustryID"],
        industry: json["Industry"],
        sectorId: json["SectorID"],
        sector: json["Sector"],
        mcap: json["MCAP"].toDouble(),
        ev: json["EV"],
        evDateEnd: json["EVDateEnd"],
        bookNavPerShare: json["BookNavPerShare"].toDouble(),
        ttmpe: json["TTMPE"].toDouble(),
        ttmYearEnd: json["TTMYearEnd"],
        overviewYield: json["Yield"].toDouble(),
        yearEnd: json["YearEnd"],
        sectorSlug: json["SectorSlug"],
        industrySlug: json["IndustrySlug"],
        securitySlug: json["SecuritySlug"],
        pegRatio: json["PEGRatio"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "Security": security,
        "IndustryID": industryId,
        "Industry": industry,
        "SectorID": sectorId,
        "Sector": sector,
        "MCAP": mcap,
        "EV": ev,
        "EVDateEnd": evDateEnd,
        "BookNavPerShare": bookNavPerShare,
        "TTMPE": ttmpe,
        "TTMYearEnd": ttmYearEnd,
        "Yield": overviewYield,
        "YearEnd": yearEnd,
        "SectorSlug": sectorSlug,
        "IndustrySlug": industrySlug,
        "SecuritySlug": securitySlug,
        "PEGRatio": pegRatio,
      };
}
