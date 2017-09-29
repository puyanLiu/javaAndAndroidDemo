.class public abstract Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack$Stub;
.super Landroid/os/Binder;
.source "IIPCCallBack.java"

# interfaces
.implements Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.alipay.mobile.common.ipc.api.aidl.IIPCCallBack"

.field static final TRANSACTION_call:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.api.aidl.IIPCCallBack"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;
    .locals 2

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.api.aidl.IIPCCallBack"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.api.aidl.IIPCCallBack"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.api.aidl.IIPCCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;

    .line 60
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack$Stub;->call(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    move-result-object v0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {v0, p3, v1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v1

    .line 69
    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 67
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
