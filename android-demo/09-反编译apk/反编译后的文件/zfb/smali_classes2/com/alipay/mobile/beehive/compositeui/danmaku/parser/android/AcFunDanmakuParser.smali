.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AcFunDanmakuParser;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;
.source "AcFunDanmakuParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;-><init>()V

    return-void
.end method

.method private _parse(Lorg/json/JSONArray;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/high16 v3, -0x1000000

    .line 64
    if-nez p2, :cond_6

    .line 65
    new-instance v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>()V

    .line 67
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    move-object v0, v1

    .line 100
    :goto_1
    return-object v0

    .line 72
    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 73
    const-string/jumbo v2, "c"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    array-length v5, v2

    if-lez v5, :cond_2

    .line 76
    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 77
    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    .line 70
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    move-object v0, v1

    .line 100
    goto :goto_1

    .line 81
    :cond_4
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    .line 82
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    or-int/2addr v8, v3

    .line 83
    const/4 v9, 0x3

    aget-object v2, v2, v9

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 84
    iget-object v9, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AcFunDanmakuParser;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;

    invoke-static {v5, v9}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->createDanmaku(ILcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v5

    .line 85
    if-eqz v5, :cond_2

    .line 86
    iput-wide v6, v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 87
    iget v6, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AcFunDanmakuParser;->mDispDensity:F

    const v7, 0x3f19999a    # 0.6f

    sub-float/2addr v6, v7

    mul-float/2addr v2, v6

    iput v2, v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textSize:F

    .line 88
    iput v8, v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textColor:I

    .line 89
    if-gt v8, v3, :cond_5

    const/4 v2, -0x1

    :goto_3
    iput v2, v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textShadowColor:I

    .line 90
    const-string/jumbo v2, "m"

    const-string/jumbo v6, "...."

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->fillText(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Ljava/lang/String;)V

    .line 91
    iput v0, v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->index:I

    .line 92
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AcFunDanmakuParser;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->setTimer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)V

    .line 93
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 96
    :catch_0
    move-exception v2

    goto :goto_2

    :cond_5
    move v2, v3

    .line 89
    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_6
    move-object v1, p2

    goto/16 :goto_0
.end method

.method private doParse(Lorg/json/JSONArray;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;
    .locals 3

    .prologue
    .line 47
    new-instance v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>()V

    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    return-object v1

    .line 51
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 53
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AcFunDanmakuParser;->_parse(Lorg/json/JSONArray;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic parse()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AcFunDanmakuParser;->parse()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    move-result-object v0

    return-object v0
.end method

.method public parse()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AcFunDanmakuParser;->mDataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AcFunDanmakuParser;->mDataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;

    instance-of v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AcFunDanmakuParser;->mDataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;

    .line 36
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->data()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AcFunDanmakuParser;->doParse(Lorg/json/JSONArray;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>()V

    goto :goto_0
.end method
