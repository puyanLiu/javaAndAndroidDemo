.class final Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter$1;
.super Ljava/lang/Object;
.source "IPCParameter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;-><init>(Landroid/os/Parcel;)V

    .line 101
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;
    .locals 1

    .prologue
    .line 106
    new-array v0, p1, [Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter$1;->newArray(I)[Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;

    move-result-object v0

    return-object v0
.end method
