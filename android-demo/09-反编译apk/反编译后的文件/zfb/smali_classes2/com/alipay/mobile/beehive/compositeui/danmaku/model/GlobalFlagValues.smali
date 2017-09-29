.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;
.super Ljava/lang/Object;
.source "GlobalFlagValues.java"


# static fields
.field public static MEASURE_RESET_FLAG:I

.field public static VISIBLE_RESET_FLAG:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    .line 6
    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    .line 10
    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    .line 11
    return-void
.end method

.method public static updateMeasureFlag()V
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    .line 19
    return-void
.end method

.method public static updateVisibleFlag()V
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    .line 15
    return-void
.end method
