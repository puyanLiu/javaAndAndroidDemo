.class public Lcom/alipay/mobile/beehive/util/GradientColor;
.super Ljava/lang/Object;
.source "GradientColor.java"


# static fields
.field public static final BLUE:Lcom/alipay/mobile/beehive/util/GradientColor;

.field private static final BLUE_END_COLOR:I = -0xc3a257

.field private static final BLUE_START_COLOR:I = -0xaf7b41

.field public static final GREEN:Lcom/alipay/mobile/beehive/util/GradientColor;

.field private static final GREEN_END_COLOR:I = -0xf96876

.field private static final GREEN_START_COLOR:I = -0xe7516c

.field public static final RED:Lcom/alipay/mobile/beehive/util/GradientColor;

.field private static final RED_END_COLOR:I = -0x25a37c

.field private static final RED_START_COLOR:I = -0x129892


# instance fields
.field private endColor:I

.field private startColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lcom/alipay/mobile/beehive/util/GradientColor;

    const v1, -0x129892

    const v2, -0x25a37c

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/util/GradientColor;-><init>(II)V

    sput-object v0, Lcom/alipay/mobile/beehive/util/GradientColor;->RED:Lcom/alipay/mobile/beehive/util/GradientColor;

    .line 16
    new-instance v0, Lcom/alipay/mobile/beehive/util/GradientColor;

    const v1, -0xe7516c

    const v2, -0xf96876

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/util/GradientColor;-><init>(II)V

    sput-object v0, Lcom/alipay/mobile/beehive/util/GradientColor;->GREEN:Lcom/alipay/mobile/beehive/util/GradientColor;

    .line 17
    new-instance v0, Lcom/alipay/mobile/beehive/util/GradientColor;

    const v1, -0xaf7b41

    const v2, -0xc3a257

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/util/GradientColor;-><init>(II)V

    sput-object v0, Lcom/alipay/mobile/beehive/util/GradientColor;->BLUE:Lcom/alipay/mobile/beehive/util/GradientColor;

    .line 5
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/alipay/mobile/beehive/util/GradientColor;->startColor:I

    .line 21
    iput p2, p0, Lcom/alipay/mobile/beehive/util/GradientColor;->endColor:I

    .line 22
    return-void
.end method


# virtual methods
.method public getStartEndColors()[I
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/alipay/mobile/beehive/util/GradientColor;->startColor:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/alipay/mobile/beehive/util/GradientColor;->endColor:I

    aput v2, v0, v1

    return-object v0
.end method
