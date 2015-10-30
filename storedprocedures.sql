use dbOnlineDoctorAppointment

--1. tblMasterQualification

--insert procedure
Create PROC sp_InsertQualification(
@QualificationId int,
@QualificationName VarChar(50)
)
As
begin
insert into tblMasterQualification(QualificationId,QualificationName) values(@QualificationId,@QualificationName)
end

-- delete procedure
Create proc sp_DeleteQualification(
@QualificationId int
)
As
Begin
Delete from tblMasterQualification where QualificationId=@QualificationId
End

--Select Procedure
Create proc sp_SelectQualification(
@QualificationId int
)
As
Begin
Select * from tblMasterQualification where QualificationId=@QualificationId
End

-- Update procedure
Create proc sp_UpdateQualification(
@QualificationId int,
@QualificationName VarChar(50)
)
As
Begin
Update tblMasterQualification set QualificationName=@QualificationName where QualificationId=@QualificationId
End

--2. tblMasterCountry

--insert procedure
Create PROC sp_InsertCountry(
@CountryId int,
@CountryName VarChar(50)
)
As
begin
insert into tblMasterCountry(CountryId,CountryName) values(@CountryId,@CountryName)
end

-- delete procedure
Create proc sp_DeleteCountry(
@CountryId int
)
As
Begin
Delete from tblMasterCountry where CountryId=@CountryId
End

--Select Procedure
Create proc sp_SelectCountry(
@CountryId int
)
As
Begin
Select * from tblMasterCountry where CountryId=@CountryId
End

-- Update procedure
Create proc sp_UpdateCountry(
@CountryId int,
@CountryName VarChar(50)
)
As
Begin
Update tblMasterCountry set CountryName=@CountryName where CountryId=@CountryId
End

--3. tblMasterState

--insert procedure
Create PROC sp_InsertState(
@StateId int,
@StateName VarChar(50),
@CountryId int
)
As
begin
insert into tblMasterState(StateId,StateName,CountryId) values(@StateId,@StateName,@CountryId)
end

-- delete procedure
Create proc sp_DeleteState(
@StateId int
)
As
Begin
Delete from tblMasterState where StateId=@StateId
End

--Select Procedure
Create proc sp_SelectState(
@StateId int
)
As
Begin
Select * from tblMasterState where StateId=@StateId
End

-- Update procedure
Create proc sp_UpdateState(
@StateId int,
@StateName VarChar(50),
@CountryId int
)
As
Begin
Update tblMasterState set StateName=@StateName,CountryId=@CountryId where StateId=@StateId
End

--4. tblMasterCity

--insert procedure
Create PROC sp_InsertCity(
@CityId int,
@CityName VarChar(50),
@StateId int
)
As
begin
insert into tblMasterCity(CityId,CityName,StateId) values(@CityId,@CityName,@StateId)
end

-- delete procedure
Create proc sp_DeleteCity(
@CityId int
)
As
Begin
Delete from tblMasterCity where CityId=@CityId
End

--Select Procedure
Create proc sp_SelectCity(
@CityId int
)
As
Begin
Select * from tblMasterCity where CityId=@CityId
End

-- Update procedure
Create proc sp_UpdateCity(
@CityId int,
@CityName VarChar(50),
@StateId int
)
As
Begin
Update tblMasterCity set CityName=@CityName,StateId=@StateId where CityId=@CityId
End

-- 5. tblMasterDepartment

--insert procedure
Create PROC sp_InsertDepartment(
@DepartmentId int,
@DepartmentName VarChar(50)
)
As
begin
insert into tblMasterDepartment(DepartmentId,DepartmentName) values(@DepartmentId,@DepartmentName)
end

-- delete procedure
Create proc sp_DeleteDepartment(
@DepartmentId int
)
As
Begin
Delete from tblMasterDepartment where DepartmentId=@DepartmentId
End

--Select Procedure
Create proc sp_SelectDepartment(
@DepartmentId int
)
As
Begin
Select * from tblMasterDepartment where DepartmentId=@DepartmentId
End

-- Update procedure
Create proc sp_UpdateDepartment(
@DepartmentId int,
@DepartmentName VarChar(50)
)
As
Begin
Update tblMasterDepartment set DepartmentName=@DepartmentName where DepartmentId=@DepartmentId
End

-- 6. tblMasterDisease

--insert procedure
Create PROC sp_InsertDisease(
@DiseaseId int,
@DiseaseName VarChar(50)
)
As
begin
insert into tblMasterDisease(DiseaseId,DiseaseName) values(@DiseaseId,@DiseaseName)
end

-- delete procedure
Create proc sp_DeleteDisease(
@DiseaseId int
)
As
Begin
Delete from tblMasterDisease where DiseaseId=@DiseaseId
End

--Select Procedure
Create proc sp_SelectDisease(
@DiseaseId int
)
As
Begin
Select * from tblMasterDisease where DiseaseId=@DiseaseId
End

-- Update procedure
Create proc sp_UpdateDisease(
@DiseaseId int,
@DiseaseName VarChar(50)
)
As
Begin
Update tblMasterDisease set DiseaseName=@DiseaseName where DiseaseId=@DiseaseId
End

--7. tblMasterSubDisease

--insert procedure
Create PROC sp_InsertSubDisease(
@SubDiseaseId int,
@SubDiseaseName VarChar(50),
@DiseaseId int
)
As
begin
insert into tblMasterSubDisease(SubDiseaseId,SubDiseaseName,DiseaseId) values(@SubDiseaseId,@SubDiseaseName,@DiseaseId)
end

-- delete procedure
Create proc sp_DeleteSubDisease(
@SubDiseaseId int
)
As
Begin
Delete from tblMasterSubDisease where SubDiseaseId=@SubDiseaseId
End

--Select Procedure
Create proc sp_SelectSubDisease(
@SubDiseaseId int
)
As
Begin
Select * from tblMasterSubDisease where SubDiseaseId=@SubDiseaseId
End

-- Update procedure
Create proc sp_UpdateSubDisease(
@SubDiseaseId int,
@SubDiseaseName VarChar(50),
@DiseaseId int
)
As
Begin
Update tblMasterSubDisease set SubDiseaseName=@SubDiseaseName,DiseaseId=@DiseaseId where SubDiseaseId=@SubDiseaseId
End

-- 8. tblMasterDesignation

--insert procedure
Create PROC sp_InsertDesignation(
@DesignationId int,
@DesignationName VarChar(50)
)
As
begin
insert into tblMasterDesignation(DesignationId,DesignationName) values(@DesignationId,@DesignationName)
end

-- delete procedure
Create proc sp_DeleteDesignation(
@DesignationId int
)
As
Begin
Delete from tblMasterDesignation where DesignationId=@DesignationId
End

--Select Procedure
Create proc sp_SelectDesignation(
@DesignationId int
)
As
Begin
Select * from tblMasterDesignation where DesignationId=@DesignationId
End

-- Update procedure
Create proc sp_UpdateDesignation(
@DesignationId int,
@DesignationName VarChar(50)
)
As
Begin
Update tblMasterDesignation set DesignationName=@DesignationName where DesignationId=@DesignationId
End

-- 9. tblHospital

--insert procedure
create PROC sp_InsertHospital(
@HospitalId int,
@HospitalName VarChar(100),
@HospitalLocation VarChar(150),
@HospitalCityId int,
@HospitalStateId int,
@HospitalCountryId int,
@HospitalType VarChar(20),
@HospitalPincode int,
@HospitalPhoneNumber int,
@HospitalEmailAddress VarChar(50),
@HospitalWebsite VarChar(50)
)
As
begin
insert into tblHospital(HospitalId,HospitalName,HospitalLocation,HospitalCityId,HospitalStateId,HospitalCountryId,HospitalType,HospitalPincode,HospitalPhoneNumber,HospitalEmailAddress,HospitalWebsite) values(@HospitalId,@HospitalName,@HospitalLocation,@HospitalCityId,@HospitalStateId,@HospitalCountryId,@HospitalType,@HospitalPincode,@HospitalPhoneNumber,@HospitalEmailAddress,@HospitalWebsite)
end

-- delete procedure
Create proc sp_DeleteHospital(
@HospitalId int
)
As
Begin
Delete from tblHospital where HospitalId=@HospitalId
End

--Select Procedure
Create proc sp_SelectHospital(
@HospitalId int
)
As
Begin
Select * from tblHospital where HospitalId=@HospitalId
End

-- Update procedure
Create proc sp_UpdateHospital(
@HospitalId int,
@HospitalName VarChar(100),
@HospitalLocation VarChar(150),
@HospitalCityId int,
@HospitalStateId int,
@HospitalCountryId int,
@HospitalType VarChar(20),
@HospitalPincode int,
@HospitalPhoneNumber int,
@HospitalEmailAddress VarChar(50),
@HospitalWebsite VarChar(50)
)
As
Begin
Update tblHospital set HospitalName=@HospitalName,HospitalLocation=@HospitalLocation,HospitalCityId=@HospitalCityId,HospitalStateId=@HospitalStateId,HospitalCountryId=@HospitalCountryId,HospitalType=@HospitalType,HospitalPincode=@HospitalPincode,HospitalPhoneNumber=@HospitalPhoneNumber,HospitalEmailAddress=@HospitalEmailAddress,HospitalWebsite=@HospitalWebsite where HospitalId=@HospitalId
End

-- 10. tblDoctor

--insert procedure
create PROC sp_InsertDoctor(
@DoctorId int,
@DoctorName VarChar(50),
@DoctorAddress VarChar(100),
@DoctorCityId int,
@DoctorStateId int,
@DoctorCountryId int,
@DoctorPhoneNumber int,
@DoctorPicture int,
@DoctorHospitalId int,
@DoctorEmailId VarChar(50),
@DoctorGender VarChar(10),
@DoctorAge int,
@DoctorExperience VarChar(50)
)
As
begin
insert into tblDoctor(DoctorId,DoctorName,DoctorAddress,DoctorCityId,DoctorStateId,DoctorCountryId,DoctorPhoneNumber,DoctorPicture,DoctorHospitalId,DoctorEmailId,DoctorGender,DoctorAge,DoctorExperience) values(@DoctorId,@DoctorName,@DoctorAddress,@DoctorCityId,@DoctorStateId,@DoctorCountryId,@DoctorPhoneNumber,@DoctorPicture,@DoctorHospitalId,@DoctorEmailId,@DoctorGender,@DoctorAge,@DoctorExperience)
end

-- delete procedure
Create proc sp_DeleteDoctor(
@DoctorId int
)
As
Begin
Delete from tblDoctor where DoctorId=@DoctorId
End

--Select Procedure
Create proc sp_SelectDoctor(
@DoctorId int
)
As
Begin
Select * from tblDoctor where DoctorId=@DoctorId
End

-- Update procedure
Create proc sp_UpdateDoctor(
@DoctorId int,
@DoctorName VarChar(50),
@DoctorAddress VarChar(100),
@DoctorCityId int,
@DoctorStateId int,
@DoctorCountryId int,
@DoctorPhoneNumber int,
@DoctorPicture int,
@DoctorHospitalId int,
@DoctorEmailId VarChar(50),
@DoctorGender VarChar(10),
@DoctorAge int,
@DoctorExperience VarChar(50)
)
As
Begin
Update tblDoctor set DoctorName=@DoctorName,DoctorAddress=@DoctorAddress,DoctorCityId=@DoctorCityId,DoctorStateId=@DoctorStateId,DoctorCountryId=@DoctorCountryId,DoctorPhoneNumber=@DoctorPhoneNumber,DoctorPicture=@DoctorPicture,DoctorHospitalId=@DoctorHospitalId,DoctorEmailId=@DoctorEmailId,DoctorGender=@DoctorGender,DoctorAge=@DoctorAge,DoctorExperience=@DoctorExperience where DoctorId=@DoctorId
End


-- 11. tblPatient

--insert procedure
create PROC sp_InsertPatient(
@PatientId int,
@PatientName VarChar(50),
@PatientAddress VarChar(100),
@PatientCityId int,
@PatientStateId int,
@PatientCountryId int,
@PatientPhoneNumber int,
@PatientEmailId VarChar(50),
@PatientGender VarChar(10),
@PatientAge int,
@PatientAnnualSalary int,
@PatientDiseaseId int,
@PatientSubDiseaseId int
)
As
begin
insert into tblPatient(PatientId,PatientName,PatientAddress,PatientCityId,PatientStateId,PatientCountryId,PatientPhoneNumber,PatientEmailId,PatientGender,PatientAge,PatientAnnualSalary,PatientDiseaseId,PatientSubDiseaseId) values(@PatientId,@PatientName,@PatientAddress,@PatientCityId,@PatientStateId,@PatientCountryId,@PatientPhoneNumber,@PatientEmailId,@PatientGender,@PatientAge,@PatientAnnualSalary,@PatientDiseaseId,@PatientSubDiseaseId)
end

-- delete procedure
Create proc sp_DeletePatient(
@PatientId int
)
As
Begin
Delete from tblPatient where PatientId=@PatientId
End

--Select Procedure
Create proc sp_SelectPatient(
@PatientId int
)
As
Begin
Select * from tblPatient where PatientId=@PatientId
End

-- Update procedure
Create proc sp_UpdatePatient(
@PatientId int,
@PatientName VarChar(50),
@PatientAddress VarChar(100),
@PatientCityId int,
@PatientStateId int,
@PatientCountryId int,
@PatientPhoneNumber int,
@PatientEmailId VarChar(50),
@PatientGender VarChar(10),
@PatientAge int,
@PatientAnnualSalary int,
@PatientDiseaseId int,
@PatientSubDiseaseId int)
As
Begin
Update tblPatient set PatientName=@PatientName,PatientAddress=@PatientAddress,PatientCityId=@PatientCityId,PatientStateId=@PatientStateId,PatientCountryId=@PatientCountryId,PatientPhoneNumber=@PatientPhoneNumber,PatientEmailId=@PatientEmailId,PatientGender=@PatientGender,PatientAge=@PatientAge,PatientAnnualSalary=@PatientAnnualSalary,PatientDiseaseId=@PatientDiseaseId,PatientSubDiseaseId=@PatientSubDiseaseId where PatientId=@PatientId
End



