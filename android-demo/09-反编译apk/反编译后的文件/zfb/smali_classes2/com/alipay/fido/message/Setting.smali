.class public Lcom/alipay/fido/message/Setting;
.super Ljava/lang/Object;
.source "Setting.java"


# static fields
.field public static APPID:Ljava/lang/String;

.field public static majorVersion:I

.field public static minorVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/alipay/fido/message/Setting;->majorVersion:I

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/alipay/fido/message/Setting;->minorVersion:I

    .line 21
    const-string/jumbo v0, "https://manifest.long.alipay.net:8443/"

    sput-object v0, Lcom/alipay/fido/message/Setting;->APPID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
