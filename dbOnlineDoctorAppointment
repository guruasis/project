-- for renameing table column "sp_rename 'tablename.columnname','newcolumnname', 'COLUMN'"

create database dbOnlineDoctorAppointment;
use dbOnlineDoctorAppointment;

-- 1. Qualification table
Create table tblMasterQualification(
QualificationId int primary key,
QualificationName varChar(50) not null
);

-- 2.Country table

Create table tblMasterCountry(
CountryId int primary key,
CountryName VarChar(50) not null
);

-- 3. State table
Create table tblMasterState(
StateId int primary key,
StateName VarChar(50) not null,
CountryId int not null constraint fk_StateCountry foreign key references tblMasterCountry(CountryId) on delete cascade on update cascade 
);

-- 4. City table
Create table tblMasterCity(
CityId int primary key,
CityName VarChar(50) not null,
StateId int not null constraint fk_CityState foreign key references tblMasterState(StateId) on delete cascade on update cascade 
);

-- 5. Department table
Create table tblMasterDepartment(
DepartmentId int primary Key,
DepartmentName VarChar(50) not null
);

--6. Disease table
Create table tblMasterDisease(
DieaseId int primary key,
DiseaseName VarChar(50) not null
);

--7. SubDisease table
Create table tblMasterSubDisease(
SubDiseaseId int primary Key,
SubDiseaseName varChar(50) not null,
DiseaseId int not null Constraint fk_DiseaseSubDisease foreign key references tblMasterDisease(DiseaseId) on delete cascade on update cascade
);
--8. Designation table
Create table tblMasterDesignation(
DesignationId int primary key,
DesignationName VarChar(50) not null,
);

--9. Hospital table
Create table tblHospital(
HospitalId int primary key,
HospitalName VarChar(100) not null,
HospitalLocation VarChar(150) not null,
HospitalCityId int not null constraint fk_HopitalCity references tblMasterCity(CityId) ,
HospitalStateId int not null constraint fk_HopitalState references  tblMasterState(StateId) ,
HospitalCountryId int not null constraint fk_HopitalCountry references  tblMasterCountry(CountryId) ,
HospitalType VarChar(20) not null,
HospitalPincode int not null,
HospitalPhoneNumber int not null,
HospitalEmailAddress VarChar(50) not null,
HospitalWebsite VarChar(50) not null
);

-- 10. Doctor table updated doctor table with stateid and countryid
Create table tblDoctor(
Doctorid int Primary key,
DoctorName VarChar(50) not null,
DoctorAddress VarChar(100) not null,
DoctorCityId int not null constraint fk_DoctorCity foreign key references tblMasterCity(CityId),
DoctorStateId int not null constraint fk_DoctorState foreign key references tblMasterState(StateId),
DoctorCountryId int not null constraint fk_DoctorCountry foreign key references tblMasterCountry(CountryId),
DoctorPhoneNumber int not null,
DoctorPicture VarChar(100),
DoctorHospitalId int not null constraint fk_DoctorHopital foreign key references tblHospital(HospitalId),
DoctorEmailId VarChar(100) not null,
DoctorGender VarChar(10) not null,
DoctorAge int not null,
DoctorExperience int not null,
DoctorDepartmentId int not null constraint fk_DoctorDepartment foreign key references tblMasterDepartment(DepartmentId),
DoctorDesignationId int not null constraint fk_DoctorDesignation foreign key references tblMasterDesignation(DesignationId),
DoctorSpeciality int not null Constraint fk_DoctorSpeciality foreign key references tblMasterSubDisease(SubDiseaseId) 
)

-- 11. Patient table
Create table tblPatient(
Patientid int Primary key,
PatientName VarChar(50) not null,
PatientAddress VarChar(100) not null,
PatientCityId int not null constraint fk_PatientCity foreign key references tblMasterCity(CityId),
PatientStateId int not null constraint fk_PatientState foreign key references tblMasterState(StateId),
PatientCountryId int not null constraint fk_PatientCountry foreign key references tblMasterCountry(CountryId),
PatientPhoneNumber int not null,
PatientEmailId VarChar(100) not null,
PatientGender VarChar(10) not null,
PatientAge int not null,
PatientAnnualSalary int not null,
PatientDiseaseId int not null constraint fk_PatientDisease foreign key references tblMasterDisease(DiseaseId),
PatientSubDiseaseId int not null Constraint fk_PatientSubDisease foreign key references tblMasterSubDisease(SubDiseaseId) 
)
