.class public Lcom/alipay/mobile/beehive/photo/data/PhotoItem;
.super Lcom/alipay/mobile/beehive/service/PhotoInfo;
.source "PhotoItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private selectable:Z

.field public takePhoto:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem$1;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;-><init>(Landroid/os/Parcel;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->selectable:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->takePhoto:Z

    .line 44
    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    :cond_1
    move v1, v2

    .line 43
    goto :goto_1
.end method

.method public constructor <init>(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;-><init>(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setSelected(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 34
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setLeftText(Ljava/lang/String;)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 35
    invoke-virtual {p0, p4}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setRightText(Ljava/lang/String;)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->selectable:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->takePhoto:Z

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->selectable:Z

    return v0
.end method

.method public setSelectable(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->selectable:Z

    .line 56
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->selectable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->takePhoto:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void

    :cond_0
    move v0, v2

    .line 66
    goto :goto_0

    :cond_1
    move v1, v2

    .line 67
    goto :goto_1
.end method
