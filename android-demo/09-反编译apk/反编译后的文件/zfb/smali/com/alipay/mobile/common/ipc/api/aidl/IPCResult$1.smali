.class final Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult$1;
.super Ljava/lang/Object;
.source "IPCResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;-><init>(Landroid/os/Parcel;)V

    .line 81
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;
    .locals 1

    .prologue
    .line 86
    new-array v0, p1, [Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult$1;->newArray(I)[Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    move-result-object v0

    return-object v0
.end method
