.class public abstract Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;
.super Landroid/os/Binder;
.source "IAPMInnerService.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;


# static fields
.field static final TRANSACTION_obtainFluencyUsage:I = 0x3

.field static final TRANSACTION_obtainMemoryUsage:I = 0x2

.field static final TRANSACTION_obtainStorageStructure:I = 0x4

.field static final TRANSACTION_obtainStorageUsage:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.alipay.android.phone.mobilesdk.apm.service.IAPMInnerService"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v0, "com.alipay.android.phone.mobilesdk.apm.service.IAPMInnerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v1, "com.alipay.android.phone.mobilesdk.apm.service.IAPMInnerService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v1, "com.alipay.android.phone.mobilesdk.apm.service.IAPMInnerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;->obtainStorageUsage()Landroid/os/Bundle;

    move-result-object v1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {v1, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    :sswitch_2
    const-string/jumbo v1, "com.alipay.android.phone.mobilesdk.apm.service.IAPMInnerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;->obtainMemoryUsage()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {v1, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    :sswitch_3
    const-string/jumbo v1, "com.alipay.android.phone.mobilesdk.apm.service.IAPMInnerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;->obtainFluencyUsage()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v1, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    :sswitch_4
    const-string/jumbo v1, "com.alipay.android.phone.mobilesdk.apm.service.IAPMInnerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;->obtainStorageStructure()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
