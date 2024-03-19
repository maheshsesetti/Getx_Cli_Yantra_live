// To parse this JSON data, do
//
//     final company = companyFromJson(jsonString);

import 'dart:convert';

Company companyFromJson(String str) => Company.fromJson(json.decode(str));

String companyToJson(Company data) => json.encode(data.toJson());

class Company {
  final List<Datum>? data;
  final String? message;
  final String? messageKey;
  final int? status;
  final int? totalCount;
  final bool? success;
  final bool? franchisees;

  Company({
    this.data,
    this.message,
    this.messageKey,
    this.status,
    this.totalCount,
    this.success,
    this.franchisees,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    message: json["message"],
    messageKey: json["messageKey"],
    status: json["status"],
    totalCount: json["totalCount"],
    success: json["success"],
    franchisees: json["franchisees"],
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "message": message,
    "messageKey": messageKey,
    "status": status,
    "totalCount": totalCount,
    "success": success,
    "franchisees": franchisees,
  };
}

class Datum {
  final General? general;
  final List<AssetImage>? assetImages;
  final ContactInformation? contactInformation;
  final List<OperationDetail>? operationDetails;
  final List<dynamic>? iotSensors;
  final List<EquipmentContract>? equipmentContract;
  final dynamic projectSites;

  Datum({
    this.general,
    this.assetImages,
    this.contactInformation,
    this.operationDetails,
    this.iotSensors,
    this.equipmentContract,
    this.projectSites,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    general: json["general"] == null ? null : General.fromJson(json["general"]),
    assetImages: json["assetImages"] == null ? [] : List<AssetImage>.from(json["assetImages"]!.map((x) => AssetImage.fromJson(x))),
    contactInformation: json["contactInformation"] == null ? null : ContactInformation.fromJson(json["contactInformation"]),
    operationDetails: json["operationDetails"] == null ? [] : List<OperationDetail>.from(json["operationDetails"]!.map((x) => OperationDetail.fromJson(x))),
    iotSensors: json["iotSensors"] == null ? [] : List<dynamic>.from(json["iotSensors"]!.map((x) => x)),
    equipmentContract: json["equipmentContract"] == null ? [] : List<EquipmentContract>.from(json["equipmentContract"]!.map((x) => EquipmentContract.fromJson(x))),
    projectSites: json["projectSites"],
  );

  Map<String, dynamic> toJson() => {
    "general": general?.toJson(),
    "assetImages": assetImages == null ? [] : List<dynamic>.from(assetImages!.map((x) => x.toJson())),
    "contactInformation": contactInformation?.toJson(),
    "operationDetails": operationDetails == null ? [] : List<dynamic>.from(operationDetails!.map((x) => x.toJson())),
    "iotSensors": iotSensors == null ? [] : List<dynamic>.from(iotSensors!.map((x) => x)),
    "equipmentContract": equipmentContract == null ? [] : List<dynamic>.from(equipmentContract!.map((x) => x.toJson())),
    "projectSites": projectSites,
  };
}

class AssetImage {
  final int? id;
  final int? equipmentId;
  final String? assetImages;
  final dynamic image;
  final String? filename;
  final int? displayPriority;
  final dynamic status;
  final dynamic createdBy;
  final dynamic updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  AssetImage({
    this.id,
    this.equipmentId,
    this.assetImages,
    this.image,
    this.filename,
    this.displayPriority,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  factory AssetImage.fromJson(Map<String, dynamic> json) => AssetImage(
    id: json["id"],
    equipmentId: json["equipmentId"],
    assetImages: json["assetImages"],
    image: json["image"],
    filename: json["filename"],
    displayPriority: json["displayPriority"],
    status: json["status"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "equipmentId": equipmentId,
    "assetImages": assetImages,
    "image": image,
    "filename": filename,
    "displayPriority": displayPriority,
    "status": status,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
  };
}

class ContactInformation {
  final dynamic id;
  final int? equipmentId;
  final String? ownerName;
  final String? ownerContact;
  final String? agentName;
  final String? agentContact;
  final String? maintenanceCrewName;
  final String? maintenanceCrewContact;
  final String? status;
  final dynamic createdBy;
  final dynamic updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ContactInformation({
    this.id,
    this.equipmentId,
    this.ownerName,
    this.ownerContact,
    this.agentName,
    this.agentContact,
    this.maintenanceCrewName,
    this.maintenanceCrewContact,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  factory ContactInformation.fromJson(Map<String, dynamic> json) => ContactInformation(
    id: json["id"],
    equipmentId: json["equipmentId"],
    ownerName: json["ownerName"],
    ownerContact: json["ownerContact"],
    agentName: json["agentName"],
    agentContact: json["agentContact"],
    maintenanceCrewName: json["maintenanceCrewName"],
    maintenanceCrewContact: json["maintenanceCrewContact"],
    status: json["status"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "equipmentId": equipmentId,
    "ownerName": ownerName,
    "ownerContact": ownerContact,
    "agentName": agentName,
    "agentContact": agentContact,
    "maintenanceCrewName": maintenanceCrewName,
    "maintenanceCrewContact": maintenanceCrewContact,
    "status": status,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
  };
}

class EquipmentContract {
  final int? id;
  final String? contractNo;
  final String? contractType;
  final dynamic contractRate;
  final int? customerId;
  final int? equipmentId;
  final int? projectId;
  final String? projectName;
  final dynamic siteId;
  final dynamic siteName;
  final String? currency;
  final dynamic renter;
  final String? renterCompany;
  final dynamic rentee;
  final String? renteeCompany;
  final String? rateType;
  final dynamic rate;
  final String? owner;
  final String? commitmentType;
  final dynamic committedTime;
  final dynamic commitmentUnit;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? duration;
  final String? overtime;
  final dynamic overtimeRate;
  final dynamic overtimeUnit;
  final String? contractStatus;
  final dynamic status;
  final String? action;
  final String? addedFrom;
  final dynamic confirmation;
  final String? source;
  final dynamic createdBy;
  final dynamic updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic totalCount;
  final dynamic make;
  final dynamic model;
  final dynamic licensePlateNumber;
  final dynamic machineType;
  final dynamic modelYear;
  final dynamic assetId;
  final dynamic image;
  final List<InvoicePdf>? invoicePdf;
  final dynamic iotenabled;

  EquipmentContract({
    this.id,
    this.contractNo,
    this.contractType,
    this.contractRate,
    this.customerId,
    this.equipmentId,
    this.projectId,
    this.projectName,
    this.siteId,
    this.siteName,
    this.currency,
    this.renter,
    this.renterCompany,
    this.rentee,
    this.renteeCompany,
    this.rateType,
    this.rate,
    this.owner,
    this.commitmentType,
    this.committedTime,
    this.commitmentUnit,
    this.startDate,
    this.endDate,
    this.duration,
    this.overtime,
    this.overtimeRate,
    this.overtimeUnit,
    this.contractStatus,
    this.status,
    this.action,
    this.addedFrom,
    this.confirmation,
    this.source,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.totalCount,
    this.make,
    this.model,
    this.licensePlateNumber,
    this.machineType,
    this.modelYear,
    this.assetId,
    this.image,
    this.invoicePdf,
    this.iotenabled,
  });

  factory EquipmentContract.fromJson(Map<String, dynamic> json) => EquipmentContract(
    id: json["id"],
    contractNo: json["contractNo"],
    contractType: json["contractType"],
    contractRate: json["contractRate"],
    customerId: json["customerId"],
    equipmentId: json["equipmentId"],
    projectId: json["projectId"],
    projectName: json["projectName"],
    siteId: json["siteId"],
    siteName: json["siteName"],
    currency: json["currency"],
    renter: json["renter"],
    renterCompany: json["renterCompany"],
    rentee: json["rentee"],
    renteeCompany: json["renteeCompany"],
    rateType: json["rateType"],
    rate: json["rate"],
    owner: json["owner"],
    commitmentType: json["commitmentType"],
    committedTime: json["committedTime"],
    commitmentUnit: json["commitmentUnit"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    duration: json["duration"],
    overtime: json["overtime"],
    overtimeRate: json["overtimeRate"],
    overtimeUnit: json["overtimeUnit"],
    contractStatus: json["contractStatus"],
    status: json["status"],
    action: json["action"],
    addedFrom: json["addedFrom"],
    confirmation: json["confirmation"],
    source: json["source"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    totalCount: json["totalCount"],
    make: json["make"],
    model: json["model"],
    licensePlateNumber: json["licensePlateNumber"],
    machineType: json["machineType"],
    modelYear: json["modelYear"],
    assetId: json["assetId"],
    image: json["image"],
    invoicePdf: json["invoicePdf"] == null ? [] : List<InvoicePdf>.from(json["invoicePdf"]!.map((x) => InvoicePdf.fromJson(x))),
    iotenabled: json["iotenabled"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "contractNo": contractNo,
    "contractType": contractType,
    "contractRate": contractRate,
    "customerId": customerId,
    "equipmentId": equipmentId,
    "projectId": projectId,
    "projectName": projectName,
    "siteId": siteId,
    "siteName": siteName,
    "currency": currency,
    "renter": renter,
    "renterCompany": renterCompany,
    "rentee": rentee,
    "renteeCompany": renteeCompany,
    "rateType": rateType,
    "rate": rate,
    "owner": owner,
    "commitmentType": commitmentType,
    "committedTime": committedTime,
    "commitmentUnit": commitmentUnit,
    "startDate": "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
    "endDate": "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
    "duration": duration,
    "overtime": overtime,
    "overtimeRate": overtimeRate,
    "overtimeUnit": overtimeUnit,
    "contractStatus": contractStatus,
    "status": status,
    "action": action,
    "addedFrom": addedFrom,
    "confirmation": confirmation,
    "source": source,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "totalCount": totalCount,
    "make": make,
    "model": model,
    "licensePlateNumber": licensePlateNumber,
    "machineType": machineType,
    "modelYear": modelYear,
    "assetId": assetId,
    "image": image,
    "invoicePdf": invoicePdf == null ? [] : List<dynamic>.from(invoicePdf!.map((x) => x.toJson())),
    "iotenabled": iotenabled,
  };
}

class InvoicePdf {
  final int? id;
  final int? equipmentId;
  final String? customerId;
  final String? filename;
  final String? pdfUrl;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? status;
  final dynamic createdBy;
  final dynamic updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic totalAmount;
  final DateTime? invoiceDate;
  final dynamic projectName;
  final String? make;
  final String? model;
  final String? company;
  final int? contractId;

  InvoicePdf({
    this.id,
    this.equipmentId,
    this.customerId,
    this.filename,
    this.pdfUrl,
    this.startDate,
    this.endDate,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.totalAmount,
    this.invoiceDate,
    this.projectName,
    this.make,
    this.model,
    this.company,
    this.contractId,
  });

  factory InvoicePdf.fromJson(Map<String, dynamic> json) => InvoicePdf(
    id: json["id"],
    equipmentId: json["equipmentId"],
    customerId: json["customerId"],
    filename: json["filename"],
    pdfUrl: json["pdfUrl"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    status: json["status"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    totalAmount: json["totalAmount"],
    invoiceDate: json["invoiceDate"] == null ? null : DateTime.parse(json["invoiceDate"]),
    projectName: json["projectName"],
    make: json["make"],
    model: json["model"],
    company: json["company"],
    contractId: json["contractId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "equipmentId": equipmentId,
    "customerId": customerId,
    "filename": filename,
    "pdfUrl": pdfUrl,
    "startDate": startDate?.toIso8601String(),
    "endDate": endDate?.toIso8601String(),
    "status": status,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "totalAmount": totalAmount,
    "invoiceDate": "${invoiceDate!.year.toString().padLeft(4, '0')}-${invoiceDate!.month.toString().padLeft(2, '0')}-${invoiceDate!.day.toString().padLeft(2, '0')}",
    "projectName": projectName,
    "make": make,
    "model": model,
    "company": company,
    "contractId": contractId,
  };
}

class General {
  final int? id;
  final String? assetId;
  final dynamic iotAssetId;
  final String? make;
  final String? model;
  final String? modelYear;
  final String? machineType;
  final String? yearOfPurchase;
  final String? licensePlateNumber;
  final dynamic machineId;
  final int? machineAge;
  final String? owner;
  final String? meterReading;
  final String? attachmentType;
  final int? customerId;
  final String? isFleetMgmt;
  final dynamic isIotEnable;
  final dynamic projectId;
  final dynamic siteId;
  final dynamic criticality;
  final dynamic latestHmr;
  final DateTime? latestHmrDate;
  final dynamic latestFuel;
  final DateTime? latestFuelDate;
  final String? machineHealth;
  final dynamic weeklyEarnings;
  final dynamic weeklyUtilization;
  final dynamic overdueService;
  final dynamic dueSoonService;
  final dynamic serviceCount;
  final String? color;
  final dynamic startTime;
  final dynamic endTime;
  final dynamic assetImages;
  final String? status;
  final dynamic createdBy;
  final dynamic updatedBy;
  final dynamic createdAt;
  final DateTime? updatedAt;
  final String? vin;

  General({
    this.id,
    this.assetId,
    this.iotAssetId,
    this.make,
    this.model,
    this.modelYear,
    this.machineType,
    this.yearOfPurchase,
    this.licensePlateNumber,
    this.machineId,
    this.machineAge,
    this.owner,
    this.meterReading,
    this.attachmentType,
    this.customerId,
    this.isFleetMgmt,
    this.isIotEnable,
    this.projectId,
    this.siteId,
    this.criticality,
    this.latestHmr,
    this.latestHmrDate,
    this.latestFuel,
    this.latestFuelDate,
    this.machineHealth,
    this.weeklyEarnings,
    this.weeklyUtilization,
    this.overdueService,
    this.dueSoonService,
    this.serviceCount,
    this.color,
    this.startTime,
    this.endTime,
    this.assetImages,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.vin,
  });

  factory General.fromJson(Map<String, dynamic> json) => General(
    id: json["id"],
    assetId: json["assetId"],
    iotAssetId: json["iotAssetId"],
    make: json["make"],
    model: json["model"],
    modelYear: json["modelYear"],
    machineType: json["machineType"],
    yearOfPurchase: json["yearOfPurchase"],
    licensePlateNumber: json["licensePlateNumber"],
    machineId: json["machineId"],
    machineAge: json["machineAge"],
    owner: json["owner"],
    meterReading: json["meterReading"],
    attachmentType: json["attachmentType"],
    customerId: json["customerId"],
    isFleetMgmt: json["isFleetMgmt"],
    isIotEnable: json["isIotEnable"],
    projectId: json["projectId"],
    siteId: json["siteId"],
    criticality: json["criticality"],
    latestHmr: json["latestHmr"],
    latestHmrDate: json["latestHmrDate"] == null ? null : DateTime.parse(json["latestHmrDate"]),
    latestFuel: json["latestFuel"],
    latestFuelDate: json["latestFuelDate"] == null ? null : DateTime.parse(json["latestFuelDate"]),
    machineHealth: json["machineHealth"],
    weeklyEarnings: json["weeklyEarnings"],
    weeklyUtilization: json["weeklyUtilization"],
    overdueService: json["overdueService"],
    dueSoonService: json["dueSoonService"],
    serviceCount: json["serviceCount"],
    color: json["color"],
    startTime: json["startTime"],
    endTime: json["endTime"],
    assetImages: json["assetImages"],
    status: json["status"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    vin: json["vin"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "assetId": assetId,
    "iotAssetId": iotAssetId,
    "make": make,
    "model": model,
    "modelYear": modelYear,
    "machineType": machineType,
    "yearOfPurchase": yearOfPurchase,
    "licensePlateNumber": licensePlateNumber,
    "machineId": machineId,
    "machineAge": machineAge,
    "owner": owner,
    "meterReading": meterReading,
    "attachmentType": attachmentType,
    "customerId": customerId,
    "isFleetMgmt": isFleetMgmt,
    "isIotEnable": isIotEnable,
    "projectId": projectId,
    "siteId": siteId,
    "criticality": criticality,
    "latestHmr": latestHmr,
    "latestHmrDate": "${latestHmrDate!.year.toString().padLeft(4, '0')}-${latestHmrDate!.month.toString().padLeft(2, '0')}-${latestHmrDate!.day.toString().padLeft(2, '0')}",
    "latestFuel": latestFuel,
    "latestFuelDate": "${latestFuelDate!.year.toString().padLeft(4, '0')}-${latestFuelDate!.month.toString().padLeft(2, '0')}-${latestFuelDate!.day.toString().padLeft(2, '0')}",
    "machineHealth": machineHealth,
    "weeklyEarnings": weeklyEarnings,
    "weeklyUtilization": weeklyUtilization,
    "overdueService": overdueService,
    "dueSoonService": dueSoonService,
    "serviceCount": serviceCount,
    "color": color,
    "startTime": startTime,
    "endTime": endTime,
    "assetImages": assetImages,
    "status": status,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "createdAt": createdAt,
    "updatedAt": updatedAt?.toIso8601String(),
    "vin": vin,
  };
}

class OperationDetail {
  final int? id;
  final int? equipmentId;
  final String? operatorName;
  final String? operatorContact;
  final int? contactId;
  final String? status;
  final dynamic createdBy;
  final dynamic updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  OperationDetail({
    this.id,
    this.equipmentId,
    this.operatorName,
    this.operatorContact,
    this.contactId,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  factory OperationDetail.fromJson(Map<String, dynamic> json) => OperationDetail(
    id: json["id"],
    equipmentId: json["equipmentId"],
    operatorName: json["operatorName"],
    operatorContact: json["operatorContact"],
    contactId: json["contactId"],
    status: json["status"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "equipmentId": equipmentId,
    "operatorName": operatorName,
    "operatorContact": operatorContact,
    "contactId": contactId,
    "status": status,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
  };
}
