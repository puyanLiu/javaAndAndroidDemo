.class public final enum Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;
.super Ljava/lang/Enum;
.source "AdSpaceCodeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

.field public static final enum b:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

.field public static final enum c:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

.field public static final enum d:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

.field public static final enum e:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

.field public static final enum f:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

.field private static final synthetic i:[Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 18
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    const-string/jumbo v1, "UNKNOWN"

    .line 19
    const-string/jumbo v2, "UNKNOWN"

    sget v3, Lcom/alipay/android/phone/openplatform/R$string;->f:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    .line 21
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    const-string/jumbo v1, "BANNER"

    .line 22
    const-string/jumbo v2, "BANNER_APPCENTER"

    sget v3, Lcom/alipay/android/phone/openplatform/R$string;->c:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->b:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    .line 24
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    const-string/jumbo v1, "APPICON"

    .line 25
    const-string/jumbo v2, "APPICON_APPCENTER"

    sget v3, Lcom/alipay/android/phone/openplatform/R$string;->a:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->c:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    .line 27
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    const-string/jumbo v1, "APPTIPS"

    .line 28
    const-string/jumbo v2, "APPTIPS_APPCENTER"

    sget v3, Lcom/alipay/android/phone/openplatform/R$string;->b:I

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->d:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    .line 30
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    const-string/jumbo v1, "DROPDOWN"

    .line 31
    const-string/jumbo v2, "DROPDOWN_APPCENTER"

    sget v3, Lcom/alipay/android/phone/openplatform/R$string;->d:I

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->e:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    .line 33
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    const-string/jumbo v1, "TOPTIPS"

    const/4 v2, 0x5

    .line 34
    const-string/jumbo v3, "TOPTIPS"

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->e:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->f:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->b:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->c:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->d:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->e:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->f:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->i:[Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->g:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->h:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->i:[Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->g:Ljava/lang/String;

    return-object v0
.end method
