.class Lcom/alipay/mobile/nebulacore/download/ConnectInfo$1;
.super Ljava/lang/Object;
.source "ConnectInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alipay/mobile/nebulacore/download/ConnectInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;-><init>(B)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 1

    .prologue
    .line 215
    new-array v0, p1, [Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$1;->newArray(I)[Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    move-result-object v0

    return-object v0
.end method
