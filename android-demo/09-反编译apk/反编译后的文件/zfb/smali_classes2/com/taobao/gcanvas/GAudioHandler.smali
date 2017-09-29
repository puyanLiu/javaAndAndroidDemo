.class public Lcom/taobao/gcanvas/GAudioHandler;
.super Ljava/lang/Object;
.source "GAudioHandler.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field pausedForPhone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/gcanvas/GAudioPlayer;",
            ">;"
        }
    .end annotation
.end field

.field players:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/gcanvas/GAudioPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private volObs:Lcom/taobao/gcanvas/GAudioHandler$VolumeObserver;

.field public webView:Lcom/taobao/gcanvas/GCanvasWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "AudioHandler"

    sput-object v0, Lcom/taobao/gcanvas/GAudioHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->volObs:Lcom/taobao/gcanvas/GAudioHandler$VolumeObserver;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/gcanvas/GAudioHandler;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/taobao/gcanvas/GAudioHandler;->getPlayers()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getPlayers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/gcanvas/GAudioPlayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    return-object v0
.end method

.method private release(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 291
    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GAudioPlayer;->destroy()V

    .line 293
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    const-string/jumbo v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 481
    :cond_0
    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    if-nez p1, :cond_0

    .line 138
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v2, "action is null: GAutioHandler.java -> boolean execute(...)"

    invoke-static {v0, v2}, Lcom/taobao/gcanvas/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 215
    :goto_0
    return v0

    .line 142
    :cond_0
    const-string/jumbo v3, ""

    .line 144
    const-string/jumbo v0, "startRecordingAudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/gcanvas/GAudioHandler;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/taobao/gcanvas/GAudioHandler;->startRecordingAudio(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasResult;)V

    .line 213
    :goto_1
    invoke-virtual {p3, v3}, Lcom/taobao/gcanvas/GCanvasResult;->success(Ljava/lang/String;)V

    move v0, v2

    .line 215
    goto :goto_0

    .line 147
    :cond_1
    const-string/jumbo v0, "stopRecordingAudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GAudioHandler;->stopRecordingAudio(Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_2
    const-string/jumbo v0, "startPlayingAudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    const-string/jumbo v0, "tag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Audioplayer startPlayingAudio src="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/gcanvas/GAudioHandler;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/taobao/gcanvas/GAudioHandler;->startPlayingAudio(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasResult;)V

    goto :goto_1

    .line 154
    :cond_3
    const-string/jumbo v0, "seekToAudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/gcanvas/GAudioHandler;->seekToAudio(Ljava/lang/String;I)V

    goto :goto_1

    .line 157
    :cond_4
    const-string/jumbo v0, "pausePlayingAudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 158
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GAudioHandler;->pausePlayingAudio(Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :cond_5
    const-string/jumbo v0, "stopPlayingAudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GAudioHandler;->stopPlayingAudio(Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_6
    const-string/jumbo v0, "setVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/gcanvas/GAudioHandler;->setVolume(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 167
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 168
    :cond_7
    const-string/jumbo v0, "getCurrentPositionAudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 169
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GAudioHandler;->getCurrentPositionAudio(Ljava/lang/String;)F

    move-result v0

    .line 170
    invoke-virtual {p3, v0}, Lcom/taobao/gcanvas/GCanvasResult;->success(F)V

    move v0, v2

    .line 171
    goto/16 :goto_0

    .line 173
    :cond_8
    const-string/jumbo v0, "getDurationAudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/taobao/gcanvas/GAudioHandler;->getDurationAudio(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasResult;)F

    move-result v0

    .line 175
    invoke-virtual {p3, v0}, Lcom/taobao/gcanvas/GCanvasResult;->success(F)V

    move v0, v2

    .line 176
    goto/16 :goto_0

    .line 178
    :cond_9
    const-string/jumbo v0, "create"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 179
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/gcanvas/GAudioHandler;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    const-string/jumbo v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Audioplayer create src1="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v4, Lcom/taobao/gcanvas/GAudioPlayer;

    invoke-direct {v4, p0, v0, v1, p3}, Lcom/taobao/gcanvas/GAudioPlayer;-><init>(Lcom/taobao/gcanvas/GAudioHandler;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasResult;)V

    .line 183
    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 185
    :cond_a
    const-string/jumbo v0, "release"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 186
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioHandler;->release(Ljava/lang/String;)Z

    move-result v0

    .line 187
    invoke-virtual {p3, v0}, Lcom/taobao/gcanvas/GCanvasResult;->success(Z)V

    move v0, v2

    .line 188
    goto/16 :goto_0

    .line 190
    :cond_b
    const-string/jumbo v0, "disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 191
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "disable the audio."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GAudioHandler;->onDestroy()V

    move v0, v2

    .line 193
    goto/16 :goto_0

    .line 195
    :cond_c
    const-string/jumbo v0, "setSourceAudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 196
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/gcanvas/GAudioHandler;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    iget-object v5, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 199
    if-eqz v0, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 200
    :cond_d
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v2, "audio\'s id error"

    invoke-static {v0, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 201
    goto/16 :goto_0

    .line 203
    :cond_e
    invoke-virtual {v0, v4}, Lcom/taobao/gcanvas/GAudioPlayer;->setSourceAudio(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    :cond_f
    const-string/jumbo v0, "startLoadingAudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 206
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GAudioHandler;->startLoadingAudio(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    move v0, v1

    .line 210
    goto/16 :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAudioOutputDevice()I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 450
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 451
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 458
    :goto_0
    return v0

    .line 454
    :cond_0
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    .line 455
    goto :goto_0

    .line 458
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentPositionAudio(Ljava/lang/String;)F
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 396
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GAudioPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 399
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getDurationAudio(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasResult;)F
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 412
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0, p2}, Lcom/taobao/gcanvas/GAudioPlayer;->getDuration(Ljava/lang/String;)F

    move-result v0

    .line 420
    :goto_0
    return v0

    .line 418
    :cond_0
    new-instance v0, Lcom/taobao/gcanvas/GAudioPlayer;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/gcanvas/GAudioPlayer;-><init>(Lcom/taobao/gcanvas/GAudioHandler;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasResult;)V

    .line 419
    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-virtual {v0, p2}, Lcom/taobao/gcanvas/GAudioPlayer;->getDuration(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public getWebView()Lcom/taobao/gcanvas/GCanvasWebView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->webView:Lcom/taobao/gcanvas/GCanvasWebView;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/taobao/gcanvas/GCanvasWebView;)V
    .locals 4

    .prologue
    .line 116
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/taobao/gcanvas/GAudioHandler;->activity:Landroid/app/Activity;

    .line 121
    :goto_0
    iput-object p2, p0, Lcom/taobao/gcanvas/GAudioHandler;->webView:Lcom/taobao/gcanvas/GCanvasWebView;

    .line 124
    const-string/jumbo v0, "mode_ringer"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/taobao/gcanvas/GAudioHandler$VolumeObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/taobao/gcanvas/GAudioHandler$VolumeObserver;-><init>(Lcom/taobao/gcanvas/GAudioHandler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/taobao/gcanvas/GAudioHandler;->volObs:Lcom/taobao/gcanvas/GAudioHandler$VolumeObserver;

    .line 126
    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/taobao/gcanvas/GAudioHandler;->volObs:Lcom/taobao/gcanvas/GAudioHandler$VolumeObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/taobao/gcanvas/GUtil;->preInitActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->activity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 222
    const-string/jumbo v0, "tag"

    const-string/jumbo v1, "AudioHandler onDestroy"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 224
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GAudioPlayer;->destroy()V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->volObs:Lcom/taobao/gcanvas/GAudioHandler$VolumeObserver;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioHandler;->volObs:Lcom/taobao/gcanvas/GAudioHandler$VolumeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 233
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 252
    const-string/jumbo v0, "telephone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    const-string/jumbo v0, "ringing"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "offhook"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 259
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GAudioPlayer;->getState()I

    move-result v2

    sget-object v3, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_RUNNING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-virtual {v3}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 260
    iget-object v2, p0, Lcom/taobao/gcanvas/GAudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GAudioPlayer;->pausePlaying()V

    goto :goto_0

    .line 268
    :cond_2
    const-string/jumbo v0, "idle"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 270
    invoke-virtual {v0, v4}, Lcom/taobao/gcanvas/GAudioPlayer;->startPlaying(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 275
    :cond_4
    return-object v4
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GAudioHandler;->onDestroy()V

    .line 240
    return-void
.end method

.method public pausePlayingAudio(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 364
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GAudioPlayer;->pausePlaying()V

    .line 367
    :cond_0
    return-void
.end method

.method public seekToAudio(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 353
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p2}, Lcom/taobao/gcanvas/GAudioPlayer;->seekToPlaying(I)V

    .line 356
    :cond_0
    return-void
.end method

.method public setAudioOutputDevice(I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 431
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 432
    if-ne p1, v5, :cond_0

    .line 433
    invoke-virtual {v0, v3, v5, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 441
    :goto_0
    return-void

    .line 435
    :cond_0
    if-ne p1, v4, :cond_1

    .line 436
    invoke-virtual {v0, v3, v4, v2}, Landroid/media/AudioManager;->setRouting(III)V

    goto :goto_0

    .line 439
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "AudioHandler.setAudioOutputDevice() Error: Unknown output device."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVolume(Ljava/lang/String;F)V
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 470
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0, p2}, Lcom/taobao/gcanvas/GAudioPlayer;->setVolume(F)V

    .line 475
    :goto_0
    return-void

    .line 473
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioHandler.setVolume() Error: Unknown Audio Player "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLoadingAudio(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 384
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GAudioPlayer;->loadingAudio()V

    .line 387
    :cond_0
    return-void
.end method

.method public startPlayingAudio(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasResult;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 328
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 329
    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lcom/taobao/gcanvas/GAudioPlayer;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/gcanvas/GAudioPlayer;-><init>(Lcom/taobao/gcanvas/GAudioHandler;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasResult;)V

    .line 331
    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_0
    invoke-virtual {v0, p2}, Lcom/taobao/gcanvas/GAudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mode_ringer"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 338
    if-eq v1, v3, :cond_1

    .line 339
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/gcanvas/GAudioPlayer;->setVolume(F)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/taobao/gcanvas/GAudioPlayer;->setVolume(F)V

    goto :goto_0
.end method

.method public startRecordingAudio(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasResult;)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 303
    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/taobao/gcanvas/GAudioPlayer;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/gcanvas/GAudioPlayer;-><init>(Lcom/taobao/gcanvas/GAudioHandler;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasResult;)V

    .line 305
    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_0
    invoke-virtual {v0, p2}, Lcom/taobao/gcanvas/GAudioPlayer;->startRecording(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public stopPlayingAudio(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GAudioPlayer;->stopPlaying()V

    .line 380
    :cond_0
    return-void
.end method

.method public stopRecordingAudio(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer;

    .line 316
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GAudioPlayer;->stopRecording()V

    .line 319
    :cond_0
    return-void
.end method
