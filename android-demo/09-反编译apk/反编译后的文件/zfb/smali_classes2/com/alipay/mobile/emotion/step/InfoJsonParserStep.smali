.class public Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;
.super Lcom/alipay/mobile/emotion/step/Step;
.source "InfoJsonParserStep.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final KEY_EMOTIONFID:Ljava/lang/String; = "emotionFid"

.field private static final KEY_EMOTIONS:Ljava/lang/String; = "emotions"

.field private static final KEY_GIFPREVIEWINDEX:Ljava/lang/String; = "gifPreviewIndex"

.field private static final KEY_HASGIF:Ljava/lang/String; = "hasGif"

.field private static final KEY_ID:Ljava/lang/String; = "emotionId"

.field private static final KEY_PACKAGEID:Ljava/lang/String; = "packageId"

.field private static final KEY_SHORTCUT:Ljava/lang/String; = "shortCut"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mFile:Ljava/io/File;

.field private mJsonFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "InfoJsonParserStep"

    sput-object v0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    sget-object v0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/step/Step;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object v1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mJsonFilePath:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mFile:Ljava/io/File;

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mFile:Ljava/io/File;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sget-object v0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/step/Step;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object v1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mJsonFilePath:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mFile:Ljava/io/File;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mJsonFilePath:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static loadFaceFromLocalFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 121
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 124
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 127
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 129
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 135
    :goto_1
    return-object v0

    .line 125
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    sget-object v1, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadFaceFromLocalFile-->>"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onPreStart()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mFile:Ljava/io/File;

    if-nez v1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mJsonFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mJsonFilePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mJsonFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mFile:Ljava/io/File;

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected parseContentForEmoiDetails(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 80
    const-string/jumbo v3, "emotions"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 82
    :goto_0
    if-lt v1, v3, :cond_0

    .line 110
    :goto_1
    return-object v0

    .line 83
    :cond_0
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 84
    new-instance v5, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-direct {v5}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;-><init>()V

    .line 85
    const-string/jumbo v6, "packageId"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    .line 86
    const-string/jumbo v6, "emotionId"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    .line 87
    const-string/jumbo v6, "hasGif"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    const-string/jumbo v6, "hasGif"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v5, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z

    .line 92
    :goto_2
    const-string/jumbo v6, "emotionFid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    .line 93
    const-string/jumbo v6, "shortCut"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 94
    const-string/jumbo v6, "shortCut"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->shortCut:Ljava/lang/String;

    .line 98
    :goto_3
    const-string/jumbo v6, "gifPreviewIndex"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 99
    const-string/jumbo v6, "gifPreviewIndex"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->gifPreviewIndex:I

    .line 103
    :goto_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string/jumbo v1, "parseContentForEmoiDetails---->>"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 96
    :cond_3
    :try_start_1
    const-string/jumbo v6, ""

    iput-object v6, v5, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->shortCut:Ljava/lang/String;

    goto :goto_3

    .line 101
    :cond_4
    const/4 v4, -0x1

    iput v4, v5, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->gifPreviewIndex:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public start()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mFile:Ljava/io/File;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->loadFaceFromLocalFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->parseContentForEmoiDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->setData(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->notifyStepSuccess()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->notifyStepError(Z)V

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start error--->>mJsonFilePath: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->mJsonFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
