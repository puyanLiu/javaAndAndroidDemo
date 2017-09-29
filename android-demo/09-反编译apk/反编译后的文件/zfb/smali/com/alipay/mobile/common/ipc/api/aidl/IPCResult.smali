.class public Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;
.super Ljava/lang/Object;
.source "IPCResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IPCResult"


# instance fields
.field public resultCode:I

.field public resultMsg:Ljava/lang/String;

.field public resultType:Ljava/lang/String;

.field public resultValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultType:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultType:Ljava/lang/String;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultValue:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 46
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultType:Ljava/lang/String;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultValue:[B

    if-nez v0, :cond_1

    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultValue:[B

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method
