.class public abstract Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager$Stub;
.super Landroid/os/Binder;
.source "IIPCManager.java"

# interfaces
.implements Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.alipay.mobile.common.ipc.api.aidl.IIPCManager"

.field static final TRANSACTION_call:I = 0x1

.field static final TRANSACTION_hashRegister:I = 0x4

.field static final TRANSACTION_registerCallBack:I = 0x2

.field static final TRANSACTION_unregisterCallBack:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.api.aidl.IIPCManager"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;
    .locals 2

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.api.aidl.IIPCManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 48
    :sswitch_0
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.api.aidl.IIPCManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.api.aidl.IIPCManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;

    .line 61
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager$Stub;->call(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    move-result-object v0

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {v0, p3, v1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    :sswitch_2
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.api.aidl.IIPCManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager$Stub;->registerCallBack(Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    :sswitch_3
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.api.aidl.IIPCManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager$Stub;->unregisterCallBack(Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    :sswitch_4
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.api.aidl.IIPCManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager$Stub;->hashRegister()Z

    move-result v0

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
