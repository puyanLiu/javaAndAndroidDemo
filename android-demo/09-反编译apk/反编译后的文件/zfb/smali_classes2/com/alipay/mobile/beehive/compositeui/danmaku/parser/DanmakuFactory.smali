.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;
.super Ljava/lang/Object;
.source "DanmakuFactory.java"


# static fields
.field public static final BILI_PLAYER_HEIGHT:F = 438.0f

.field public static final BILI_PLAYER_WIDTH:F = 682.0f

.field public static final COMMON_DANMAKU_DURATION:J = 0xed8L

.field public static CURRENT_DISP_HEIGHT:I = 0x0

.field private static CURRENT_DISP_SIZE_FACTOR:F = 0.0f

.field public static CURRENT_DISP_WIDTH:I = 0x0

.field public static final DANMAKU_MEDIUM_TEXTSIZE:I = 0x19

.field public static MAX_DANMAKU_DURATION:J = 0x0L

.field public static final MAX_DANMAKU_DURATION_HIGH_DENSITY:J = 0x2328L

.field public static MAX_Duration_Fix_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration; = null

.field public static MAX_Duration_Scroll_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration; = null

.field public static MAX_Duration_Special_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration; = null

.field public static final MIN_DANMAKU_DURATION:J = 0x1770L

.field public static final OLD_BILI_PLAYER_HEIGHT:F = 385.0f

.field public static final OLD_BILI_PLAYER_WIDTH:F = 539.0f

.field public static REAL_DANMAKU_DURATION:J

.field public static sLastDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;

.field public static sSpecialDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 41
    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_WIDTH:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_HEIGHT:I

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_SIZE_FACTOR:F

    .line 55
    const-wide/16 v0, 0xed8

    sput-wide v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    .line 57
    const-wide/16 v0, 0x1770

    sput-wide v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    .line 67
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>()V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->sSpecialDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDanmaku(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->sLastDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;

    invoke-static {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->createDanmaku(ILcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    return-object v0
.end method

.method public static createDanmaku(IFFF)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    .locals 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 128
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->updateViewportState(FFF)Z

    move-result v1

    .line 129
    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    if-nez v2, :cond_3

    .line 130
    new-instance v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    sget-wide v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;-><init>(J)V

    .line 131
    sput-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    sget-object v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v3, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scrollSpeedFactor:F

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->setFactor(F)V

    .line 136
    :cond_0
    :goto_0
    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    if-nez v2, :cond_1

    .line 137
    new-instance v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    const-wide/16 v3, 0xed8

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;-><init>(J)V

    sput-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    .line 140
    :cond_1
    if-eqz v1, :cond_2

    cmpl-float v1, p1, v5

    if-lez v1, :cond_2

    .line 141
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->updateMaxDanmakuDuration()V

    .line 144
    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_WIDTH:I

    if-lez v1, :cond_4

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_HEIGHT:I

    if-lez v1, :cond_4

    .line 145
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_WIDTH:I

    int-to-float v0, v0

    div-float v1, p1, v0

    .line 146
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_HEIGHT:I

    int-to-float v0, v0

    div-float v0, p2, v0

    .line 148
    :goto_1
    cmpl-float v2, p2, v5

    if-lez v2, :cond_2

    .line 149
    invoke-static {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->updateSpecialDanmakusDate(FF)V

    .line 153
    :cond_2
    const/4 v0, 0x0

    .line 154
    packed-switch p0, :pswitch_data_0

    .line 172
    :goto_2
    :pswitch_0
    return-object v0

    .line 132
    :cond_3
    if-eqz v1, :cond_0

    .line 133
    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    sget-wide v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->setValue(J)V

    goto :goto_0

    .line 156
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;)V

    goto :goto_2

    .line 159
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FBDanmaku;

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FBDanmaku;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;)V

    goto :goto_2

    .line 162
    :pswitch_3
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;)V

    goto :goto_2

    .line 165
    :pswitch_4
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;)V

    goto :goto_2

    .line 168
    :pswitch_5
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;-><init>()V

    .line 169
    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->sSpecialDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static createDanmaku(IIIF)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    .locals 2

    .prologue
    .line 115
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-static {p0, v0, v1, p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->createDanmaku(IFFF)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    return-object v0
.end method

.method public static createDanmaku(ILcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    .locals 3

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    .line 94
    :cond_0
    sput-object p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->sLastDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;

    .line 95
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v1

    sget v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_SIZE_FACTOR:F

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->createDanmaku(IIIF)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    goto :goto_0
.end method

.method public static createDanmaku(ILcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;F)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    .locals 2

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :cond_0
    sput-object p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->sLastDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;

    .line 102
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->createDanmaku(IIIF)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    goto :goto_0
.end method

.method public static fillAlphaData(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;IIJ)V
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 294
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 292
    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->setAlphaData(IIJ)V

    .line 293
    invoke-static {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->updateSpecicalDanmakuDuration(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    goto :goto_0
.end method

.method public static fillLinePathData(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;[[FFF)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 271
    aget-object v0, p1, v1

    array-length v0, v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v0, v1

    .line 273
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_2

    .line 277
    check-cast p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->setLinePathData([[F)V

    goto :goto_0

    .line 274
    :cond_2
    aget-object v2, p1, v0

    aget v3, v2, v1

    mul-float/2addr v3, p2

    aput v3, v2, v1

    .line 275
    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget v4, v2, v3

    mul-float/2addr v4, p3

    aput v4, v2, v3

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fillText(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    const-string/jumbo v1, "/n"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 242
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 243
    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static fillTranslationData(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;FFFFJJFF)V
    .locals 9

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 266
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 263
    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;

    mul-float v1, p1, p9

    mul-float v2, p2, p10

    mul-float v3, p3, p9

    .line 264
    mul-float v4, p4, p10

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 263
    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->setTranslationData(FFFFJJ)V

    .line 265
    invoke-static {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->updateSpecicalDanmakuDuration(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    goto :goto_0
.end method

.method public static notifyDispSizeChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V
    .locals 1

    .prologue
    .line 82
    if-eqz p0, :cond_0

    .line 83
    sput-object p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->sLastDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;

    .line 84
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->createDanmaku(ILcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 85
    return-void
.end method

.method public static resetDurationsData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    sput-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->sLastDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_HEIGHT:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_WIDTH:I

    .line 74
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->sSpecialDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->clear()V

    .line 75
    sput-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    .line 76
    sput-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    .line 77
    sput-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Special_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    .line 78
    const-wide/16 v0, 0x1770

    sput-wide v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    .line 79
    return-void
.end method

.method public static updateDurationFactor(F)V
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->setFactor(F)V

    .line 232
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->updateMaxDanmakuDuration()V

    goto :goto_0
.end method

.method public static updateMaxDanmakuDuration()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 217
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 218
    :goto_0
    sget-object v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    if-nez v4, :cond_1

    move-wide v4, v2

    .line 219
    :goto_1
    sget-object v6, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Special_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    if-nez v6, :cond_2

    .line 221
    :goto_2
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 222
    sput-wide v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    .line 224
    const-wide/16 v0, 0xed8

    sget-wide v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    .line 225
    sget-wide v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    sget-wide v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    .line 226
    return-void

    .line 217
    :cond_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    goto :goto_0

    .line 218
    :cond_1
    sget-object v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Fix_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v4, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    goto :goto_1

    .line 219
    :cond_2
    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Special_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    goto :goto_2
.end method

.method private static updateSpecialDanmakusDate(FF)V
    .locals 12

    .prologue
    .line 196
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->sSpecialDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    .line 197
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;

    move-result-object v11

    .line 198
    :cond_0
    :goto_0
    invoke-interface {v11}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    return-void

    .line 199
    :cond_1
    invoke-interface {v11}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;

    .line 200
    iget v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->beginX:F

    iget v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->beginY:F

    .line 201
    iget v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->endX:F

    iget v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->endY:F

    iget-wide v5, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->translationDuration:J

    .line 202
    iget-wide v7, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->translationStartDelay:J

    move v9, p0

    move v10, p1

    .line 200
    invoke-static/range {v0 .. v10}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->fillTranslationData(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;FFFFJJFF)V

    .line 203
    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->linePaths:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;

    .line 204
    if-eqz v3, :cond_0

    array-length v1, v3

    if-lez v1, :cond_0

    .line 205
    array-length v4, v3

    .line 206
    add-int/lit8 v1, v4, 0x1

    const/4 v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    .line 207
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_2

    .line 211
    invoke-static {v0, v1, p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->fillLinePathData(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;[[FFF)V

    goto :goto_0

    .line 208
    :cond_2
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->getBeginPoint()[F

    move-result-object v5

    aput-object v5, v1, v2

    .line 209
    add-int/lit8 v5, v2, 0x1

    aget-object v6, v3, v2

    invoke-virtual {v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->getEndPoint()[F

    move-result-object v6

    aput-object v6, v1, v5

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static updateSpecicalDanmakuDuration(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
    .locals 4

    .prologue
    .line 297
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Special_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Special_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_Duration_Special_Danmaku:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    .line 299
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->updateMaxDanmakuDuration()V

    .line 301
    :cond_1
    return-void
.end method

.method public static updateViewportState(FFF)Z
    .locals 5

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_WIDTH:I

    float-to-int v2, p0

    if-ne v1, v2, :cond_0

    .line 179
    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_HEIGHT:I

    float-to-int v2, p1

    if-ne v1, v2, :cond_0

    .line 180
    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_SIZE_FACTOR:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x1

    .line 182
    const v1, 0x456d8000    # 3800.0f

    .line 183
    mul-float v2, p2, p0

    const v3, 0x442a8000    # 682.0f

    div-float/2addr v2, v3

    .line 182
    mul-float/2addr v1, v2

    float-to-long v1, v1

    sput-wide v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    .line 184
    const-wide/16 v1, 0x2328

    .line 185
    sget-wide v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    .line 184
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    sput-wide v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    .line 186
    const-wide/16 v1, 0x1770

    sget-wide v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    sput-wide v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->REAL_DANMAKU_DURATION:J

    .line 188
    float-to-int v1, p0

    sput v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_WIDTH:I

    .line 189
    float-to-int v1, p1

    sput v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_HEIGHT:I

    .line 190
    sput p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->CURRENT_DISP_SIZE_FACTOR:F

    .line 192
    :cond_1
    return v0
.end method
