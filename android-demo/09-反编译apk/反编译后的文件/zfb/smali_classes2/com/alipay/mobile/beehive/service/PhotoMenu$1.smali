.class Lcom/alipay/mobile/beehive/service/PhotoMenu$1;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alipay/mobile/beehive/service/PhotoMenu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/beehive/service/PhotoMenu;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/beehive/service/PhotoMenu;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/service/PhotoMenu$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/beehive/service/PhotoMenu;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/alipay/mobile/beehive/service/PhotoMenu;
    .locals 1

    .prologue
    .line 134
    new-array v0, p1, [Lcom/alipay/mobile/beehive/service/PhotoMenu;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/service/PhotoMenu$1;->newArray(I)[Lcom/alipay/mobile/beehive/service/PhotoMenu;

    move-result-object v0

    return-object v0
.end method
