.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;
.super Ljava/lang/Object;
.source "AlipayDanmaku.java"


# instance fields
.field private borderColor:I

.field private duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

.field private isLive:Z

.field private padding:I

.field private priority:B

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textShadowColor:I

.field private textSize:F

.field private time:J

.field private underlineColor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->time:J

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->textColor:I

    .line 34
    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->textShadowColor:I

    .line 39
    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->underlineColor:I

    .line 44
    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->borderColor:I

    .line 49
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    const-wide/16 v1, 0xed8

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    .line 54
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->textSize:F

    .line 59
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->padding:I

    .line 64
    iput-byte v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->priority:B

    .line 69
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->isLive:Z

    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->text:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public borderColor(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->borderColor:I

    .line 97
    return-object p0
.end method

.method public build()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->createDanmaku(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    .line 122
    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;)V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    .line 126
    iget-wide v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->time:J

    iput-wide v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 127
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->textColor:I

    iput v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textColor:I

    .line 128
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->textShadowColor:I

    iput v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textShadowColor:I

    .line 129
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->underlineColor:I

    iput v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->underlineColor:I

    .line 130
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->borderColor:I

    iput v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->borderColor:I

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iput-object v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    .line 132
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->textSize:F

    iput v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textSize:F

    .line 133
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->padding:I

    iput v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->padding:I

    .line 134
    iget-byte v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->priority:B

    iput-byte v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->priority:B

    .line 135
    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->isLive:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isLive:Z

    .line 136
    return-object v0
.end method

.method public duration(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    .line 102
    return-object p0
.end method

.method public padding(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->padding:I

    .line 117
    return-object p0
.end method

.method public priority(B)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;
    .locals 0

    .prologue
    .line 111
    iput-byte p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->priority:B

    .line 112
    return-object p0
.end method

.method public textColor(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->textColor:I

    .line 82
    return-object p0
.end method

.method public textShadowColor(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->textShadowColor:I

    .line 87
    return-object p0
.end method

.method public textSize(F)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->textSize:F

    .line 77
    return-object p0
.end method

.method public time(J)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;
    .locals 0

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->time:J

    .line 107
    return-object p0
.end method

.method public underlineColor(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlipayDanmaku$Builder;->underlineColor:I

    .line 92
    return-object p0
.end method
