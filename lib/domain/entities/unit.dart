class Unit {
  String? aangebodenSinds;
  String? aangebodenSindsTekst;
  int? aantalBadkamers;
  int? aantalKamers;
  // TODO: known types based on api result.
  // Null? aantalSlaapkamers;
  String? aantalWoonlagen;
  String? aanvaarding;
  String? adres;
  // TODO: known types based on api result.
  // Null? afgekochtDatum;
  // Null? balkonDakterras;
  // Null? bedrijfsruimteCombinatieObject;
  List<BezichtingDagdelen>? bezichtingDagdelen;
  List<BezichtingDagen>? bezichtingDagen;
  // TODO: known types based on api result.
  // Null? bijdrageVVE;
  // Null? bijzonderheden;
  String? bouwjaar;
  String? bouwvorm;
  String? bronCode;
  // TODO: known types based on api result.
  // Null? contactpersoonEmail;
  // Null? contactpersoonTelefoon;
  String? cv;
  // TODO: known types based on api result.
  // Null? datumOndertekeningAkte;
  // Null? deeplink;
  DetailInfo? detailInfo;
  // TODO: known types based on api result.
  // Null? eigendomsSituatie;
  Energielabel? energielabel;
  // TODO: known types based on api result.
  // Null? erfpachtBedrag;
  // Null? garage;
  // Null? garageIsolatie;
  // Null? garageVoorzieningen;
  // Null? gelegenOp;
  String? gewijzigdDatum;
  String? hoofdFoto;
  String? hoofdFotoSecure;
  String? hoofdTuinType;
  int? id;
  bool? indBasisPlaatsing;
  bool? indFotos;
  bool? indIpix;
  bool? indOpenhuizenTopper;
  bool? indPDF;
  bool? indPlattegrond;
  bool? indTop;
  bool? indVeilingProduct;
  bool? indVideo;
  int? inhoud;
  String? internalId;
  bool? isIngetrokken;
  bool? isVerhuurd;
  bool? isVerkocht;
  String? isolatie;
  // List<Kenmerken>? kenmerken;
  KenmerkenKort? kenmerkenKort;
  // TODO: known types based on api result.
  // Null? kenmerkenTitel;
  String? ligging;
  String? mLIUrl;
  String? makelaar;
  int? makelaarId;
  String? makelaarTelefoon;
  // TODO: known types based on api result.
  // List<Null>? medeAanbieders;
  List<Media>? media;
  List<String>? mediaFoto;
  String? mobileURL;
  String? objectType;
  String? objectTypeMetVoorvoegsel;
  // TODO: known types based on api result.
  // List<Null>? openHuizen;
  int? perceelOppervlakte;
  String? permanenteBewoning;
  String? plaats;
  String? postcode;
  Prijs? prijs;
  String? prijsGeformatteerd;
  // TODO: known types based on api result.
  // Null? project;
  // Null? projectNaam;
  String? publicatieDatum;
  int? publicatieStatus;
  String? schuurBerging;
  // TODO: known types based on api result.
  // Null? schuurBergingIsolatie;
  // Null? schuurBergingVoorzieningen;
  String? scrambledId;
  int? serviceKosten;
  int? soortAanbod;
  String? soortDak;
  String? soortGarage;
  String? soortParkeergelegenheid;
  int? soortPlaatsing;
  String? soortWoning;
  List<Titels>? titels;
  bool? toonBezichtigingMaken;
  bool? toonBrochureAanvraag;
  bool? toonMakelaarWoningaanbod;
  bool? toonReageren;
  // TODO: known types based on api result.
  // Null? transactieAfmeldDatum;
  // Null? transactieMakelaarId;
  // Null? transactieMakelaarNaam;
  String? tuinLigging;
  int? typeProject;
  String? uRL;
  // TODO: all values were null.
  // Veiling? veiling;
  String? verkoopStatus;
  String? verwarming;
  Video? video;
  String? volledigeOmschrijving;
  // TODO: known types based on api result.
  // Null? voorzieningen;
  double? wGS84X;
  double? wGS84Y;
  String? warmWater;
  int? woonOppervlakte;
  // TODO: known types based on api result.
  // Null? eersteHuurPrijs;
  // Null? eersteHuurPrijsLang;
  // Null? eersteKoopPrijs;
  // Null? eersteKoopPrijsLang;
  // Null? huurPrijs;
  // Null? huurPrijsLang;
  // Null? huurPrijsTot;
  // Null? huurprijs;
  // Null? huurprijsFormaat;
  int? koopPrijs;
  String? koopPrijsLang;
  int? koopprijs;
  String? koopprijsFormaat;
  // TODO: known types based on api result.
  // Null? koopprijsTot;
  String? shortURL;
  String? tuin;
  // TODO: known types based on api result.
  // Null? veilingGeformatteerd;

  String get title => titels?.first.omschrijving ?? '';
  List<MediaItems> get featuredPhotos {
    if (media == null) return [];

    final mediaItems = <MediaItems>[];
    for (final m in media!) {
      final bestItem = m.mediaItems?.last;
      if (bestItem != null) {
        mediaItems.add(bestItem);
      }
    }
    return mediaItems;
  }

  Unit({
    this.aangebodenSinds,
    this.aangebodenSindsTekst,
    this.aantalBadkamers,
    this.aantalKamers,
    // this.aantalSlaapkamers,
    this.aantalWoonlagen,
    this.aanvaarding,
    this.adres,
    // this.afgekochtDatum,
    // this.balkonDakterras,
    // this.bedrijfsruimteCombinatieObject,
    this.bezichtingDagdelen,
    this.bezichtingDagen,
    // this.bijdrageVVE,
    // this.bijzonderheden,
    this.bouwjaar,
    this.bouwvorm,
    this.bronCode,
    // this.contactpersoonEmail,
    // this.contactpersoonTelefoon,
    this.cv,
    // this.datumOndertekeningAkte,
    // this.deeplink,
    this.detailInfo,
    // this.eigendomsSituatie,
    this.energielabel,
    // this.erfpachtBedrag,
    // this.garage,
    // this.garageIsolatie,
    // this.garageVoorzieningen,
    // this.gelegenOp,
    this.gewijzigdDatum,
    this.hoofdFoto,
    this.hoofdFotoSecure,
    this.hoofdTuinType,
    this.id,
    this.indBasisPlaatsing,
    this.indFotos,
    this.indIpix,
    this.indOpenhuizenTopper,
    this.indPDF,
    this.indPlattegrond,
    this.indTop,
    this.indVeilingProduct,
    this.indVideo,
    this.inhoud,
    this.internalId,
    this.isIngetrokken,
    this.isVerhuurd,
    this.isVerkocht,
    this.isolatie,
    // this.kenmerken,
    this.kenmerkenKort,
    // this.kenmerkenTitel,
    this.ligging,
    this.mLIUrl,
    this.makelaar,
    this.makelaarId,
    this.makelaarTelefoon,
    // this.medeAanbieders,
    this.media,
    this.mediaFoto,
    this.mobileURL,
    this.objectType,
    this.objectTypeMetVoorvoegsel,
    // this.openHuizen,
    this.perceelOppervlakte,
    this.permanenteBewoning,
    this.plaats,
    this.postcode,
    this.prijs,
    this.prijsGeformatteerd,
    // this.project,
    // this.projectNaam,
    this.publicatieDatum,
    this.publicatieStatus,
    this.schuurBerging,
    // this.schuurBergingIsolatie,
    // this.schuurBergingVoorzieningen,
    this.scrambledId,
    this.serviceKosten,
    this.soortAanbod,
    this.soortDak,
    this.soortGarage,
    this.soortParkeergelegenheid,
    this.soortPlaatsing,
    this.soortWoning,
    this.titels,
    this.toonBezichtigingMaken,
    this.toonBrochureAanvraag,
    this.toonMakelaarWoningaanbod,
    this.toonReageren,
    // this.transactieAfmeldDatum,
    // this.transactieMakelaarId,
    // this.transactieMakelaarNaam,
    this.tuinLigging,
    this.typeProject,
    this.uRL,
    // this.veiling,
    this.verkoopStatus,
    this.verwarming,
    this.video,
    this.volledigeOmschrijving,
    // this.voorzieningen,
    this.wGS84X,
    this.wGS84Y,
    this.warmWater,
    this.woonOppervlakte,
    // this.eersteHuurPrijs,
    // this.eersteHuurPrijsLang,
    // this.eersteKoopPrijs,
    // this.eersteKoopPrijsLang,
    // this.huurPrijs,
    // this.huurPrijsLang,
    // this.huurPrijsTot,
    // this.huurprijs,
    // this.huurprijsFormaat,
    this.koopPrijs,
    this.koopPrijsLang,
    this.koopprijs,
    this.koopprijsFormaat,
    // this.koopprijsTot,
    this.shortURL,
    this.tuin,
    // this.veilingGeformatteerd,
  });

  Unit.fromJson(Map<String, dynamic> json) {
    aangebodenSinds = json['AangebodenSinds'];
    aangebodenSindsTekst = json['AangebodenSindsTekst'];
    aantalBadkamers = json['AantalBadkamers'];
    aantalKamers = json['AantalKamers'];
    // aantalSlaapkamers = json['AantalSlaapkamers'];
    aantalWoonlagen = json['AantalWoonlagen'];
    aanvaarding = json['Aanvaarding'];
    adres = json['Adres'];
    // afgekochtDatum = json['AfgekochtDatum'];
    // balkonDakterras = json['BalkonDakterras'];
    // bedrijfsruimteCombinatieObject = json['BedrijfsruimteCombinatieObject'];
    if (json['BezichtingDagdelen'] != null) {
      bezichtingDagdelen = <BezichtingDagdelen>[];
      json['BezichtingDagdelen'].forEach((v) {
        bezichtingDagdelen!.add(BezichtingDagdelen.fromJson(v));
      });
    }
    if (json['BezichtingDagen'] != null) {
      bezichtingDagen = <BezichtingDagen>[];
      json['BezichtingDagen'].forEach((v) {
        bezichtingDagen!.add(BezichtingDagen.fromJson(v));
      });
    }
    // bijdrageVVE = json['BijdrageVVE'];
    // bijzonderheden = json['Bijzonderheden'];
    bouwjaar = json['Bouwjaar'];
    bouwvorm = json['Bouwvorm'];
    bronCode = json['BronCode'];
    // contactpersoonEmail = json['ContactpersoonEmail'];
    // contactpersoonTelefoon = json['ContactpersoonTelefoon'];
    cv = json['Cv'];
    // datumOndertekeningAkte = json['DatumOndertekeningAkte'];
    // deeplink = json['Deeplink'];
    detailInfo = json['DetailInfo'] != null ? DetailInfo.fromJson(json['DetailInfo']) : null;
    // eigendomsSituatie = json['EigendomsSituatie'];
    energielabel = json['Energielabel'] != null ? Energielabel.fromJson(json['Energielabel']) : null;
    // erfpachtBedrag = json['ErfpachtBedrag'];
    // garage = json['Garage'];
    // garageIsolatie = json['GarageIsolatie'];
    // garageVoorzieningen = json['GarageVoorzieningen'];
    // gelegenOp = json['GelegenOp'];
    gewijzigdDatum = json['GewijzigdDatum'];
    hoofdFoto = json['HoofdFoto'];
    hoofdFotoSecure = json['HoofdFotoSecure'];
    hoofdTuinType = json['HoofdTuinType'];
    id = json['Id'];
    indBasisPlaatsing = json['IndBasisPlaatsing'];
    indFotos = json['IndFotos'];
    indIpix = json['IndIpix'];
    indOpenhuizenTopper = json['IndOpenhuizenTopper'];
    indPDF = json['IndPDF'];
    indPlattegrond = json['IndPlattegrond'];
    indTop = json['IndTop'];
    indVeilingProduct = json['IndVeilingProduct'];
    indVideo = json['IndVideo'];
    inhoud = json['Inhoud'];
    internalId = json['InternalId'];
    isIngetrokken = json['IsIngetrokken'];
    isVerhuurd = json['IsVerhuurd'];
    isVerkocht = json['IsVerkocht'];
    isolatie = json['Isolatie'];
    // TODO: the parse for Kenmerken would take too long to be developed
    // if (json['Kenmerken'] != null) {
    //   kenmerken = <Kenmerken>[];
    //   json['Kenmerken'].forEach((v) {
    //     kenmerken!.add(Kenmerken.fromJson(v));
    //   });
    // }
    kenmerkenKort = json['KenmerkenKort'] != null ? KenmerkenKort.fromJson(json['KenmerkenKort']) : null;
    // kenmerkenTitel = json['KenmerkenTitel'];
    ligging = json['Ligging'];
    mLIUrl = json['MLIUrl'];
    makelaar = json['Makelaar'];
    makelaarId = json['MakelaarId'];
    makelaarTelefoon = json['MakelaarTelefoon'];
    // if (json['MedeAanbieders'] != null) {
    //   medeAanbieders = <Null>[];
    //   json['MedeAanbieders'].forEach((v) {
    //     medeAanbieders!.add(new Null.fromJson(v));
    //   });
    // }
    if (json['Media'] != null) {
      media = <Media>[];
      json['Media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
    mediaFoto = json['Media-Foto'].cast<String>();
    mobileURL = json['MobileURL'];
    objectType = json['ObjectType'];
    objectTypeMetVoorvoegsel = json['ObjectTypeMetVoorvoegsel'];
    // if (json['OpenHuizen'] != null) {
    //   openHuizen = <Null>[];
    //   json['OpenHuizen'].forEach((v) {
    //     openHuizen!.add(new Null.fromJson(v));
    //   });
    // }
    perceelOppervlakte = json['PerceelOppervlakte'];
    permanenteBewoning = json['PermanenteBewoning'];
    plaats = json['Plaats'];
    postcode = json['Postcode'];
    prijs = json['Prijs'] != null ? Prijs.fromJson(json['Prijs']) : null;
    prijsGeformatteerd = json['PrijsGeformatteerd'];
    // project = json['Project'];
    // projectNaam = json['ProjectNaam'];
    publicatieDatum = json['PublicatieDatum'];
    publicatieStatus = json['PublicatieStatus'];
    schuurBerging = json['SchuurBerging'];
    // schuurBergingIsolatie = json['SchuurBergingIsolatie'];
    // schuurBergingVoorzieningen = json['SchuurBergingVoorzieningen'];
    scrambledId = json['ScrambledId'];
    serviceKosten = json['ServiceKosten'];
    soortAanbod = json['SoortAanbod'];
    soortDak = json['SoortDak'];
    soortGarage = json['SoortGarage'];
    soortParkeergelegenheid = json['SoortParkeergelegenheid'];
    soortPlaatsing = json['SoortPlaatsing'];
    soortWoning = json['SoortWoning'];
    if (json['Titels'] != null) {
      titels = <Titels>[];
      json['Titels'].forEach((v) {
        titels!.add(Titels.fromJson(v));
      });
    }
    toonBezichtigingMaken = json['ToonBezichtigingMaken'];
    toonBrochureAanvraag = json['ToonBrochureAanvraag'];
    toonMakelaarWoningaanbod = json['ToonMakelaarWoningaanbod'];
    toonReageren = json['ToonReageren'];
    // transactieAfmeldDatum = json['TransactieAfmeldDatum'];
    // transactieMakelaarId = json['TransactieMakelaarId'];
    // transactieMakelaarNaam = json['TransactieMakelaarNaam'];
    tuinLigging = json['TuinLigging'];
    typeProject = json['TypeProject'];
    uRL = json['URL'];
    // veiling = json['Veiling'] != null ? Veiling.fromJson(json['Veiling']) : null;
    verkoopStatus = json['VerkoopStatus'];
    verwarming = json['Verwarming'];
    video = json['Video'] != null ? Video.fromJson(json['Video']) : null;
    volledigeOmschrijving = json['VolledigeOmschrijving'];
    // voorzieningen = json['Voorzieningen'];
    wGS84X = json['WGS84_X'];
    wGS84Y = json['WGS84_Y'];
    warmWater = json['WarmWater'];
    woonOppervlakte = json['WoonOppervlakte'];
    // eersteHuurPrijs = json['EersteHuurPrijs'];
    // eersteHuurPrijsLang = json['EersteHuurPrijsLang'];
    // eersteKoopPrijs = json['EersteKoopPrijs'];
    // eersteKoopPrijsLang = json['EersteKoopPrijsLang'];
    // huurPrijs = json['HuurPrijs'];
    // huurPrijsLang = json['HuurPrijsLang'];
    // huurPrijsTot = json['HuurPrijsTot'];
    // huurprijs = json['Huurprijs'];
    // huurprijsFormaat = json['HuurprijsFormaat'];
    koopPrijs = json['KoopPrijs'];
    koopPrijsLang = json['KoopPrijsLang'];
    koopprijs = json['Koopprijs'];
    koopprijsFormaat = json['KoopprijsFormaat'];
    // koopprijsTot = json['KoopprijsTot'];
    shortURL = json['ShortURL'];
    tuin = json['Tuin'];
    // veilingGeformatteerd = json['VeilingGeformatteerd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['AangebodenSinds'] = aangebodenSinds;
    data['AangebodenSindsTekst'] = aangebodenSindsTekst;
    data['AantalBadkamers'] = aantalBadkamers;
    data['AantalKamers'] = aantalKamers;
    // data['AantalSlaapkamers'] = this.aantalSlaapkamers;
    data['AantalWoonlagen'] = aantalWoonlagen;
    data['Aanvaarding'] = aanvaarding;
    data['Adres'] = adres;
    // data['AfgekochtDatum'] = this.afgekochtDatum;
    // data['BalkonDakterras'] = this.balkonDakterras;
    // data['BedrijfsruimteCombinatieObject'] = this.bedrijfsruimteCombinatieObject;
    if (bezichtingDagdelen != null) {
      data['BezichtingDagdelen'] = bezichtingDagdelen!.map((v) => v.toJson()).toList();
    }
    if (bezichtingDagen != null) {
      data['BezichtingDagen'] = bezichtingDagen!.map((v) => v.toJson()).toList();
    }
    // data['BijdrageVVE'] = this.bijdrageVVE;
    // data['Bijzonderheden'] = this.bijzonderheden;
    data['Bouwjaar'] = bouwjaar;
    data['Bouwvorm'] = bouwvorm;
    data['BronCode'] = bronCode;
    // data['ContactpersoonEmail'] = this.contactpersoonEmail;
    // data['ContactpersoonTelefoon'] = this.contactpersoonTelefoon;
    data['Cv'] = cv;
    // data['DatumOndertekeningAkte'] = this.datumOndertekeningAkte;
    // data['Deeplink'] = this.deeplink;
    if (detailInfo != null) {
      data['DetailInfo'] = detailInfo!.toJson();
    }
    // data['EigendomsSituatie'] = this.eigendomsSituatie;
    if (energielabel != null) {
      data['Energielabel'] = energielabel!.toJson();
    }
    // data['ErfpachtBedrag'] = this.erfpachtBedrag;
    // data['Garage'] = this.garage;
    // data['GarageIsolatie'] = this.garageIsolatie;
    // data['GarageVoorzieningen'] = this.garageVoorzieningen;
    // data['GelegenOp'] = this.gelegenOp;
    data['GewijzigdDatum'] = gewijzigdDatum;
    data['HoofdFoto'] = hoofdFoto;
    data['HoofdFotoSecure'] = hoofdFotoSecure;
    data['HoofdTuinType'] = hoofdTuinType;
    data['Id'] = id;
    data['IndBasisPlaatsing'] = indBasisPlaatsing;
    data['IndFotos'] = indFotos;
    data['IndIpix'] = indIpix;
    data['IndOpenhuizenTopper'] = indOpenhuizenTopper;
    data['IndPDF'] = indPDF;
    data['IndPlattegrond'] = indPlattegrond;
    data['IndTop'] = indTop;
    data['IndVeilingProduct'] = indVeilingProduct;
    data['IndVideo'] = indVideo;
    data['Inhoud'] = inhoud;
    data['InternalId'] = internalId;
    data['IsIngetrokken'] = isIngetrokken;
    data['IsVerhuurd'] = isVerhuurd;
    data['IsVerkocht'] = isVerkocht;
    data['Isolatie'] = isolatie;
    // if (this.kenmerken != null) {
    //   data['Kenmerken'] = this.kenmerken!.map((v) => v.toJson()).toList();
    // }
    if (kenmerkenKort != null) {
      data['KenmerkenKort'] = kenmerkenKort!.toJson();
    }
    // data['KenmerkenTitel'] = this.kenmerkenTitel;
    data['Ligging'] = ligging;
    data['MLIUrl'] = mLIUrl;
    data['Makelaar'] = makelaar;
    data['MakelaarId'] = makelaarId;
    data['MakelaarTelefoon'] = makelaarTelefoon;
    // if (this.medeAanbieders != null) {
    //   data['MedeAanbieders'] =
    //       this.medeAanbieders!.map((v) => v.toJson()).toList();
    // }
    if (media != null) {
      data['Media'] = media!.map((v) => v.toJson()).toList();
    }
    data['Media-Foto'] = mediaFoto;
    data['MobileURL'] = mobileURL;
    data['ObjectType'] = objectType;
    data['ObjectTypeMetVoorvoegsel'] = objectTypeMetVoorvoegsel;
    // if (this.openHuizen != null) {
    //   data['OpenHuizen'] = this.openHuizen!.map((v) => v.toJson()).toList();
    // }
    data['PerceelOppervlakte'] = perceelOppervlakte;
    data['PermanenteBewoning'] = permanenteBewoning;
    data['Plaats'] = plaats;
    data['Postcode'] = postcode;
    if (prijs != null) {
      data['Prijs'] = prijs!.toJson();
    }
    data['PrijsGeformatteerd'] = prijsGeformatteerd;
    // data['Project'] = this.project;
    // data['ProjectNaam'] = this.projectNaam;
    data['PublicatieDatum'] = publicatieDatum;
    data['PublicatieStatus'] = publicatieStatus;
    data['SchuurBerging'] = schuurBerging;
    // data['SchuurBergingIsolatie'] = this.schuurBergingIsolatie;
    // data['SchuurBergingVoorzieningen'] = this.schuurBergingVoorzieningen;
    data['ScrambledId'] = scrambledId;
    data['ServiceKosten'] = serviceKosten;
    data['SoortAanbod'] = soortAanbod;
    data['SoortDak'] = soortDak;
    data['SoortGarage'] = soortGarage;
    data['SoortParkeergelegenheid'] = soortParkeergelegenheid;
    data['SoortPlaatsing'] = soortPlaatsing;
    data['SoortWoning'] = soortWoning;
    if (titels != null) {
      data['Titels'] = titels!.map((v) => v.toJson()).toList();
    }
    data['ToonBezichtigingMaken'] = toonBezichtigingMaken;
    data['ToonBrochureAanvraag'] = toonBrochureAanvraag;
    data['ToonMakelaarWoningaanbod'] = toonMakelaarWoningaanbod;
    data['ToonReageren'] = toonReageren;
    // data['TransactieAfmeldDatum'] = this.transactieAfmeldDatum;
    // data['TransactieMakelaarId'] = this.transactieMakelaarId;
    // data['TransactieMakelaarNaam'] = this.transactieMakelaarNaam;
    data['TuinLigging'] = tuinLigging;
    data['TypeProject'] = typeProject;
    data['URL'] = uRL;
    // if (veiling != null) {
    //   data['Veiling'] = veiling!.toJson();
    // }
    data['VerkoopStatus'] = verkoopStatus;
    data['Verwarming'] = verwarming;
    if (video != null) {
      data['Video'] = video!.toJson();
    }
    data['VolledigeOmschrijving'] = volledigeOmschrijving;
    // data['Voorzieningen'] = this.voorzieningen;
    data['WGS84_X'] = wGS84X;
    data['WGS84_Y'] = wGS84Y;
    data['WarmWater'] = warmWater;
    data['WoonOppervlakte'] = woonOppervlakte;
    // data['EersteHuurPrijs'] = this.eersteHuurPrijs;
    // data['EersteHuurPrijsLang'] = this.eersteHuurPrijsLang;
    // data['EersteKoopPrijs'] = this.eersteKoopPrijs;
    // data['EersteKoopPrijsLang'] = this.eersteKoopPrijsLang;
    // data['HuurPrijs'] = this.huurPrijs;
    // data['HuurPrijsLang'] = this.huurPrijsLang;
    // data['HuurPrijsTot'] = this.huurPrijsTot;
    // data['Huurprijs'] = this.huurprijs;
    // data['HuurprijsFormaat'] = this.huurprijsFormaat;
    data['KoopPrijs'] = koopPrijs;
    data['KoopPrijsLang'] = koopPrijsLang;
    data['Koopprijs'] = koopprijs;
    data['KoopprijsFormaat'] = koopprijsFormaat;
    // data['KoopprijsTot'] = this.koopprijsTot;
    data['ShortURL'] = shortURL;
    data['Tuin'] = tuin;
    // data['VeilingGeformatteerd'] = this.veilingGeformatteerd;
    return data;
  }
}

class BezichtingDagdelen {
  String? naam;
  String? waarde;

  BezichtingDagdelen({this.naam, this.waarde});

  BezichtingDagdelen.fromJson(Map<String, dynamic> json) {
    naam = json['Naam'];
    waarde = json['Waarde'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Naam'] = naam;
    data['Waarde'] = waarde;
    return data;
  }
}

class DetailInfo {
  bool? hasPromotionLabel;
  int? promotionLabelType;
  int? ribbonColor;
  // Null? ribbonText;
  // Null? tagline;

  DetailInfo({
    this.hasPromotionLabel,
    this.promotionLabelType,
    this.ribbonColor,
    // this.ribbonText,
    // this.tagline,
  });

  DetailInfo.fromJson(Map<String, dynamic> json) {
    hasPromotionLabel = json['HasPromotionLabel'];
    promotionLabelType = json['PromotionLabelType'];
    ribbonColor = json['RibbonColor'];
    // ribbonText = json['RibbonText'];
    // tagline = json['Tagline'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['HasPromotionLabel'] = hasPromotionLabel;
    data['PromotionLabelType'] = promotionLabelType;
    data['RibbonColor'] = ribbonColor;
    // data['RibbonText'] = ribbonText;
    // data['Tagline'] = tagline;
    return data;
  }
}

class Energielabel {
  bool? definitief;
  // Null? index;
  String? label;
  bool? nietBeschikbaar;
  bool? nietVerplicht;

  Energielabel({
    this.definitief,
    // this.index,
    this.label,
    this.nietBeschikbaar,
    this.nietVerplicht,
  });

  Energielabel.fromJson(Map<String, dynamic> json) {
    definitief = json['Definitief'];
    // index = json['Index'];
    label = json['Label'];
    nietBeschikbaar = json['NietBeschikbaar'];
    nietVerplicht = json['NietVerplicht'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Definitief'] = definitief;
    // data['Index'] = index;
    data['Label'] = label;
    data['NietBeschikbaar'] = nietBeschikbaar;
    data['NietVerplicht'] = nietVerplicht;
    return data;
  }
}

class KenmerkenKort {
  // TODO: known types based on api result.
  // Null? ad;
  List<Kenmerken>? kenmerken;

  KenmerkenKort({
    // this.ad,
    this.kenmerken,
  });

  KenmerkenKort.fromJson(Map<String, dynamic> json) {
    // ad = json['Ad'];
    if (json['Kenmerken'] != null) {
      kenmerken = <Kenmerken>[];
      json['Kenmerken'].forEach((v) {
        kenmerken!.add(Kenmerken.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    // data['Ad'] = this.ad;
    if (kenmerken != null) {
      data['Kenmerken'] = kenmerken!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Kenmerken {
  String? naam;
  String? naamCss;
  String? waarde;
  String? waardeCss;

  Kenmerken({this.naam, this.naamCss, this.waarde, this.waardeCss});

  Kenmerken.fromJson(Map<String, dynamic> json) {
    naam = json['Naam'];
    naamCss = json['NaamCss'];
    waarde = json['Waarde'];
    waardeCss = json['WaardeCss'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Naam'] = naam;
    data['NaamCss'] = naamCss;
    data['Waarde'] = waarde;
    data['WaardeCss'] = waardeCss;
    return data;
  }
}

class SubKenmerk {
  String? ad;
  // List<Null>? kenmerken;
  int? lokNummer;
  // Null? subKenmerk;
  String? titel;

  SubKenmerk({
    this.ad,
    // this.kenmerken,
    this.lokNummer,
    // this.subKenmerk,
    this.titel,
  });

  SubKenmerk.fromJson(Map<String, dynamic> json) {
    ad = json['Ad'];
    // if (json['Kenmerken'] != null) {
    //   kenmerken = <Null>[];
    //   json['Kenmerken'].forEach((v) {
    //     kenmerken!.add(Null.fromJson(v));
    //   });
    // }
    lokNummer = json['LokNummer'];
    // subKenmerk = json['SubKenmerk'];
    titel = json['Titel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Ad'] = ad;
    // if (this.kenmerken != null) {
    //   data['Kenmerken'] = this.kenmerken!.map((v) => v.toJson()).toList();
    // }
    data['LokNummer'] = lokNummer;
    // data['SubKenmerk'] = subKenmerk;
    data['Titel'] = titel;
    return data;
  }
}

class Media {
  int? categorie;
  int? contentType;
  String? id;
  int? indexNumber;
  List<MediaItems>? mediaItems;
  String? metadata;
  String? omschrijving;
  bool? registratieVerplicht;
  int? soort;

  Media(
      {this.categorie,
      this.contentType,
      this.id,
      this.indexNumber,
      this.mediaItems,
      this.metadata,
      this.omschrijving,
      this.registratieVerplicht,
      this.soort});

  Media.fromJson(Map<String, dynamic> json) {
    categorie = json['Categorie'];
    contentType = json['ContentType'];
    id = json['Id'];
    indexNumber = json['IndexNumber'];
    if (json['MediaItems'] != null) {
      mediaItems = <MediaItems>[];
      json['MediaItems'].forEach((v) {
        mediaItems!.add(MediaItems.fromJson(v));
      });
    }
    metadata = json['Metadata'];
    omschrijving = json['Omschrijving'];
    registratieVerplicht = json['RegistratieVerplicht'];
    soort = json['Soort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Categorie'] = categorie;
    data['ContentType'] = contentType;
    data['Id'] = id;
    data['IndexNumber'] = indexNumber;
    if (mediaItems != null) {
      data['MediaItems'] = mediaItems!.map((v) => v.toJson()).toList();
    }
    data['Metadata'] = metadata;
    data['Omschrijving'] = omschrijving;
    data['RegistratieVerplicht'] = registratieVerplicht;
    data['Soort'] = soort;
    return data;
  }
}

class MediaItems {
  int? category;
  int? height;
  String? url;
  String? urlSecure;
  int? width;

  MediaItems({this.category, this.height, this.url, this.urlSecure, this.width});

  MediaItems.fromJson(Map<String, dynamic> json) {
    category = json['Category'];
    height = json['Height'];
    url = json['Url'];
    urlSecure = json['UrlSecure'];
    width = json['Width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Category'] = category;
    data['Height'] = height;
    data['Url'] = url;
    data['UrlSecure'] = urlSecure;
    data['Width'] = width;
    return data;
  }
}

class Prijs {
  // Null? geenExtraKosten;
  String? huurAbbreviation;
  // Null? huurprijs;
  String? huurprijsOpAanvraag;
  // Null? huurprijsTot;
  String? koopAbbreviation;
  int? koopprijs;
  String? koopprijsOpAanvraag;
  // Null? koopprijsTot;
  // Null? originelePrijs;
  String? veilingText;

  Prijs({
    // this.geenExtraKosten,
    this.huurAbbreviation,
    // this.huurprijs,
    this.huurprijsOpAanvraag,
    // this.huurprijsTot,
    this.koopAbbreviation,
    this.koopprijs,
    this.koopprijsOpAanvraag,
    // this.koopprijsTot,
    // this.originelePrijs,
    this.veilingText,
  });

  Prijs.fromJson(Map<String, dynamic> json) {
    // geenExtraKosten = json['GeenExtraKosten'];
    huurAbbreviation = json['HuurAbbreviation'];
    // huurprijs = json['Huurprijs'];
    huurprijsOpAanvraag = json['HuurprijsOpAanvraag'];
    // huurprijsTot = json['HuurprijsTot'];
    koopAbbreviation = json['KoopAbbreviation'];
    koopprijs = json['Koopprijs'];
    koopprijsOpAanvraag = json['KoopprijsOpAanvraag'];
    // koopprijsTot = json['KoopprijsTot'];
    // originelePrijs = json['OriginelePrijs'];
    veilingText = json['VeilingText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    // data['GeenExtraKosten'] = geenExtraKosten;
    data['HuurAbbreviation'] = huurAbbreviation;
    // data['Huurprijs'] = huurprijs;
    data['HuurprijsOpAanvraag'] = huurprijsOpAanvraag;
    // data['HuurprijsTot'] = huurprijsTot;
    data['KoopAbbreviation'] = koopAbbreviation;
    data['Koopprijs'] = koopprijs;
    data['KoopprijsOpAanvraag'] = koopprijsOpAanvraag;
    // data['KoopprijsTot'] = koopprijsTot;
    // data['OriginelePrijs'] = originelePrijs;
    data['VeilingText'] = veilingText;
    return data;
  }
}

class Titels {
  String? omschrijving;
  int? pagina;

  Titels({this.omschrijving, this.pagina});

  Titels.fromJson(Map<String, dynamic> json) {
    omschrijving = json['Omschrijving'];
    pagina = json['Pagina'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Omschrijving'] = omschrijving;
    data['Pagina'] = pagina;
    return data;
  }
}

// class Veiling {
//   Null? eindDatum;
//   Null? link;
//   Null? startDatum;
//   Null? veilingPartij;
//
//   Veiling({this.eindDatum, this.link, this.startDatum, this.veilingPartij});
//
//   Veiling.fromJson(Map<String, dynamic> json) {
//     eindDatum = json['EindDatum'];
//     link = json['Link'];
//     startDatum = json['StartDatum'];
//     veilingPartij = json['VeilingPartij'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['EindDatum'] = eindDatum;
//     data['Link'] = link;
//     data['StartDatum'] = startDatum;
//     data['VeilingPartij'] = veilingPartij;
//     return data;
//   }
// }

class Video {
  String? imageUrl;
  int? quadiaVideoId;
  String? thumbnailUrl;
  List<Videos>? videos;

  Video({this.imageUrl, this.quadiaVideoId, this.thumbnailUrl, this.videos});

  Video.fromJson(Map<String, dynamic> json) {
    imageUrl = json['ImageUrl'];
    quadiaVideoId = json['QuadiaVideoId'];
    thumbnailUrl = json['ThumbnailUrl'];
    if (json['Videos'] != null) {
      videos = <Videos>[];
      json['Videos'].forEach((v) {
        videos!.add(Videos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ImageUrl'] = imageUrl;
    data['QuadiaVideoId'] = quadiaVideoId;
    data['ThumbnailUrl'] = thumbnailUrl;
    if (videos != null) {
      data['Videos'] = videos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Videos {
  int? bitRate;
  List<Cdns>? cdns;
  bool? hasAudio;
  bool? hasVideo;
  bool? isSource;
  Stream? stream;
  String? url;

  Videos({this.bitRate, this.cdns, this.hasAudio, this.hasVideo, this.isSource, this.stream, this.url});

  Videos.fromJson(Map<String, dynamic> json) {
    bitRate = json['BitRate'];
    if (json['Cdns'] != null) {
      cdns = <Cdns>[];
      json['Cdns'].forEach((v) {
        cdns!.add(Cdns.fromJson(v));
      });
    }
    hasAudio = json['HasAudio'];
    hasVideo = json['HasVideo'];
    isSource = json['IsSource'];
    stream = json['Stream'] != null ? Stream.fromJson(json['Stream']) : null;
    url = json['Url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BitRate'] = bitRate;
    if (cdns != null) {
      data['Cdns'] = cdns!.map((v) => v.toJson()).toList();
    }
    data['HasAudio'] = hasAudio;
    data['HasVideo'] = hasVideo;
    data['IsSource'] = isSource;
    if (stream != null) {
      data['Stream'] = stream!.toJson();
    }
    data['Url'] = url;
    return data;
  }
}

class Cdns {
  String? deliveryType;
  // Null? fileType;
  String? mimeType;
  // Null? sslUrl;
  String? url;

  Cdns({
    this.deliveryType,
    // this.fileType,
    this.mimeType,
    // this.sslUrl,
    this.url,
  });

  Cdns.fromJson(Map<String, dynamic> json) {
    deliveryType = json['DeliveryType'];
    // fileType = json['FileType'];
    mimeType = json['MimeType'];
    // sslUrl = json['SslUrl'];
    url = json['Url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['DeliveryType'] = deliveryType;
    // data['FileType'] = fileType;
    data['MimeType'] = mimeType;
    // data['SslUrl'] = sslUrl;
    data['Url'] = url;
    return data;
  }
}

class Stream {
  int? averageBitRate;
  int? height;
  int? width;

  Stream({this.averageBitRate, this.height, this.width});

  Stream.fromJson(Map<String, dynamic> json) {
    averageBitRate = json['AverageBitRate'];
    height = json['Height'];
    width = json['Width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['AverageBitRate'] = averageBitRate;
    data['Height'] = height;
    data['Width'] = width;
    return data;
  }
}

class BezichtingDagen {
  late String naam;
  late String waarde;

  BezichtingDagen({required this.naam, required this.waarde});

  BezichtingDagen.fromJson(Map<String, dynamic> json) {
    naam = json['Naam'];
    waarde = json['Waarde'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Naam'] = naam;
    data['Waarde'] = waarde;
    return data;
  }
}
