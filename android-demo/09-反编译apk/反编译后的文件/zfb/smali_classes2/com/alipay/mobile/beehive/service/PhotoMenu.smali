.class public Lcom/alipay/mobile/beehive/service/PhotoMenu;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoMenu;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORT_PHOTO:Ljava/lang/Byte;

.field public static final SUPPORT_VIDEO:Ljava/lang/Byte;

.field public static final SUPPORT_VIDEO_ORI:Ljava/lang/Byte;

.field public static final TAG:Ljava/lang/String; = "PhotoMenu"

.field public static final TAG_COLLECT:Ljava/lang/String; = "collect"

.field public static final TAG_DELETE:Ljava/lang/String; = "delete"

.field public static final TAG_SAVE:Ljava/lang/String; = "save"

.field public static final TAG_SCAN_QR:Ljava/lang/String; = "scan_qr"

.field public static final TAG_SHARE:Ljava/lang/String; = "share"


# instance fields
.field public enableImpl:Z

.field public enabled:Z

.field public extra:Ljava/lang/String;

.field public supportType:Ljava/lang/Byte;

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->SUPPORT_PHOTO:Ljava/lang/Byte;

    .line 65
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->SUPPORT_VIDEO:Ljava/lang/Byte;

    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->SUPPORT_VIDEO_ORI:Ljava/lang/Byte;

    .line 127
    new-instance v0, Lcom/alipay/mobile/beehive/service/PhotoMenu$1;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/service/PhotoMenu$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->SUPPORT_PHOTO:Ljava/lang/Byte;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->supportType:Ljava/lang/Byte;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->title:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->tag:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->extra:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enableImpl:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enabled:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->supportType:Ljava/lang/Byte;

    .line 110
    return-void

    :cond_0
    move v0, v2

    .line 107
    goto :goto_0

    :cond_1
    move v1, v2

    .line 108
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/beehive/service/PhotoMenu;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->SUPPORT_PHOTO:Ljava/lang/Byte;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->supportType:Ljava/lang/Byte;

    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->title:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->tag:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->extra:Ljava/lang/String;

    .line 99
    iput-boolean p3, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enableImpl:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enabled:Z

    .line 101
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isPhotoSupport()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->supportType:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    sget-object v1, Lcom/alipay/mobile/beehive/service/PhotoMenu;->SUPPORT_PHOTO:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoOriSupport()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->supportType:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    sget-object v1, Lcom/alipay/mobile/beehive/service/PhotoMenu;->SUPPORT_VIDEO_ORI:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoSupport()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->supportType:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    sget-object v1, Lcom/alipay/mobile/beehive/service/PhotoMenu;->SUPPORT_VIDEO:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuSupportType(B)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->supportType:Ljava/lang/Byte;

    .line 77
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->extra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enableImpl:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enabled:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->supportType:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 125
    return-void

    :cond_0
    move v0, v2

    .line 122
    goto :goto_0

    :cond_1
    move v1, v2

    .line 123
    goto :goto_1
.end method
