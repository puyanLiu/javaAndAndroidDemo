.class public Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;
.super Ljava/lang/Object;
.source "MtopSysNewDeviceIdRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private c0:Ljava/lang/String;

.field private c1:Ljava/lang/String;

.field private c2:Ljava/lang/String;

.field private c3:Ljava/lang/String;

.field private c4:Ljava/lang/String;

.field private c5:Ljava/lang/String;

.field private c6:Ljava/lang/String;

.field private device_global_id:Ljava/lang/String;

.field private new_device:Z

.field private new_id_rule:Z

.field private old_device_id:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private sdk_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "mtop.sys.newDeviceId"

    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->API_NAME:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "4.0"

    iput-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->VERSION:Ljava/lang/String;

    .line 32
    iput-boolean v2, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->NEED_ECODE:Z

    .line 38
    iput-boolean v2, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->NEED_SESSION:Z

    .line 43
    iput-boolean v2, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->new_device:Z

    .line 48
    iput-boolean v2, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->new_id_rule:Z

    .line 53
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c6:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->package_name:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->sdk_version:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c5:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c4:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c3:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->old_device_id:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c1:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c2:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->device_global_id:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getC0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c0:Ljava/lang/String;

    return-object v0
.end method

.method public getC1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c1:Ljava/lang/String;

    return-object v0
.end method

.method public getC2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c2:Ljava/lang/String;

    return-object v0
.end method

.method public getC3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c3:Ljava/lang/String;

    return-object v0
.end method

.method public getC4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c4:Ljava/lang/String;

    return-object v0
.end method

.method public getC5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c5:Ljava/lang/String;

    return-object v0
.end method

.method public getC6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c6:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_global_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->device_global_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOld_device_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->old_device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->sdk_version:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->NEED_SESSION:Z

    return v0
.end method

.method public isNew_device()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->new_device:Z

    return v0
.end method

.method public isNew_id_rule()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->new_id_rule:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->API_NAME:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setC0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c0:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setC1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c1:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setC2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c2:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setC3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c3:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setC4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c4:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setC5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c5:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setC6(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c6:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setDevice_global_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->device_global_id:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->NEED_ECODE:Z

    .line 158
    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->NEED_SESSION:Z

    .line 176
    return-void
.end method

.method public setNew_device(Z)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->new_device:Z

    .line 192
    return-void
.end method

.method public setNew_id_rule(Z)V
    .locals 0

    .prologue
    .line 207
    iput-boolean p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->new_id_rule:Z

    .line 208
    return-void
.end method

.method public setOld_device_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->old_device_id:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->package_name:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setSdk_version(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->sdk_version:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->VERSION:Ljava/lang/String;

    .line 140
    return-void
.end method
