.class public Lcom/taobao/gcanvas/GAudioPlayer;
.super Ljava/lang/Object;
.source "GAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AudioPlayer"

.field private static MEDIA_DURATION:I

.field private static MEDIA_ERROR:I

.field private static MEDIA_ERR_ABORTED:I

.field private static MEDIA_ERR_DECODE:I

.field private static MEDIA_ERR_NETWORK:I

.field private static MEDIA_ERR_NONE_ACTIVE:I

.field private static MEDIA_ERR_NONE_SUPPORTED:I

.field private static MEDIA_POSITION:I

.field private static MEDIA_READY:I

.field private static MEDIA_STATE:I


# instance fields
.field private audioFile:Ljava/lang/String;

.field private duration:F

.field private handler:Lcom/taobao/gcanvas/GAudioHandler;

.field private iRecoderCount:I

.field private id:Ljava/lang/String;

.field private mode:Lcom/taobao/gcanvas/GAudioPlayer$MODE;

.field private player:Landroid/media/MediaPlayer;

.field private prepareOnly:Z

.field private recorder:Landroid/media/MediaRecorder;

.field private resultContext:Lcom/taobao/gcanvas/GCanvasResult;

.field private seekOnPrepared:I

.field private state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

.field private tempFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 59
    sput v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_STATE:I

    .line 60
    sput v2, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_DURATION:I

    .line 61
    sput v3, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_POSITION:I

    .line 62
    sput v4, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_READY:I

    .line 63
    const/16 v0, 0x9

    sput v0, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERROR:I

    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_NONE_ACTIVE:I

    .line 67
    sput v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_ABORTED:I

    .line 68
    sput v2, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_NETWORK:I

    .line 69
    sput v3, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_DECODE:I

    .line 70
    sput v4, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_NONE_SUPPORTED:I

    return-void
.end method

.method public constructor <init>(Lcom/taobao/gcanvas/GAudioHandler;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasResult;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$MODE;->NONE:Lcom/taobao/gcanvas/GAudioPlayer$MODE;

    iput-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->mode:Lcom/taobao/gcanvas/GAudioPlayer$MODE;

    .line 75
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_NONE:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    iput-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    .line 77
    iput-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->audioFile:Ljava/lang/String;

    .line 78
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->duration:F

    .line 80
    iput-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 81
    iput-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->tempFile:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->prepareOnly:Z

    .line 85
    iput v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->seekOnPrepared:I

    .line 86
    iput v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->iRecoderCount:I

    .line 97
    iput-object p1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->handler:Lcom/taobao/gcanvas/GAudioHandler;

    .line 98
    iput-object p2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/taobao/gcanvas/GAudioPlayer;->audioFile:Ljava/lang/String;

    .line 100
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 101
    iput-object p4, p0, Lcom/taobao/gcanvas/GAudioPlayer;->resultContext:Lcom/taobao/gcanvas/GCanvasResult;

    .line 103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/tmprecording.3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->tempFile:Ljava/lang/String;

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/gcanvas/GAudioHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cache/tmprecording.3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->tempFile:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDurationInSeconds()F
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private loadAudioFile(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/taobao/gcanvas/GAudioPlayer;->isStreaming(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 557
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$MODE;->PLAY:Lcom/taobao/gcanvas/GAudioPlayer$MODE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setMode(Lcom/taobao/gcanvas/GAudioPlayer$MODE;)V

    .line 558
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_STARTING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setState(Lcom/taobao/gcanvas/GAudioPlayer$STATE;)V

    .line 559
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 560
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 589
    :goto_0
    return-void

    .line 563
    :cond_0
    const-string/jumbo v0, "/android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->handler:Lcom/taobao/gcanvas/GAudioHandler;

    invoke-virtual {v1}, Lcom/taobao/gcanvas/GAudioHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 566
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 582
    :goto_1
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_STARTING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setState(Lcom/taobao/gcanvas/GAudioPlayer$STATE;)V

    .line 583
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 584
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 587
    invoke-direct {p0}, Lcom/taobao/gcanvas/GAudioPlayer;->getDurationInSeconds()F

    move-result v0

    iput v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->duration:F

    goto :goto_0

    .line 569
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 573
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 577
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private playMode()Z
    .locals 2

    .prologue
    .line 478
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$1;->$SwitchMap$com$taobao$gcanvas$GAudioPlayer$MODE:[I

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->mode:Lcom/taobao/gcanvas/GAudioPlayer$MODE;

    invoke-virtual {v1}, Lcom/taobao/gcanvas/GAudioPlayer$MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 489
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 480
    :pswitch_1
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$MODE;->PLAY:Lcom/taobao/gcanvas/GAudioPlayer$MODE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setMode(Lcom/taobao/gcanvas/GAudioPlayer$MODE;)V

    goto :goto_0

    .line 485
    :pswitch_2
    const-string/jumbo v0, "AudioPlayer"

    const-string/jumbo v1, "AudioPlayer Error: Can\'t play in record mode."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", { \"code\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    .line 487
    const/4 v0, 0x0

    goto :goto_1

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readyPlayer(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 498
    invoke-direct {p0}, Lcom/taobao/gcanvas/GAudioPlayer;->playMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    sget-object v2, Lcom/taobao/gcanvas/GAudioPlayer$1;->$SwitchMap$com$taobao$gcanvas$GAudioPlayer$STATE:[I

    iget-object v3, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-virtual {v3}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 538
    const-string/jumbo v1, "AudioPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AudioPlayer Error: startPlaying() called during invalid state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Media.onStatus(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    .line 542
    :cond_0
    :goto_0
    return v0

    .line 501
    :pswitch_0
    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 502
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    .line 505
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/gcanvas/GAudioPlayer;->loadAudioFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Media.onStatus(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :pswitch_1
    const-string/jumbo v1, "AudioPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AudioPlayer Loading: startPlaying() called during media preparation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_STARTING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-virtual {v3}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iput-boolean v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->prepareOnly:Z

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 518
    goto :goto_0

    .line 521
    :pswitch_3
    iget-object v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->audioFile:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 523
    iget-object v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 524
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    move v0, v1

    .line 525
    goto :goto_0

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 530
    :try_start_1
    invoke-direct {p0, p1}, Lcom/taobao/gcanvas/GAudioPlayer;->loadAudioFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 532
    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Media.onStatus(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sendJavascript(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->resultContext:Lcom/taobao/gcanvas/GCanvasResult;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->resultContext:Lcom/taobao/gcanvas/GCanvasResult;

    invoke-virtual {v0, p1}, Lcom/taobao/gcanvas/GCanvasResult;->calljs(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method private setMode(Lcom/taobao/gcanvas/GAudioPlayer$MODE;)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->mode:Lcom/taobao/gcanvas/GAudioPlayer$MODE;

    .line 451
    iput-object p1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->mode:Lcom/taobao/gcanvas/GAudioPlayer$MODE;

    .line 452
    return-void
.end method

.method private setState(Lcom/taobao/gcanvas/GAudioPlayer$STATE;)V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    if-eq v0, p1, :cond_0

    .line 435
    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_STATE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    .line 438
    :cond_0
    iput-object p1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    .line 439
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_RUNNING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_PAUSED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    if-ne v0, v1, :cond_1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 135
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_STOPPED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setState(Lcom/taobao/gcanvas/GAudioPlayer$STATE;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 138
    iput-object v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GAudioPlayer;->stopRecording()V

    .line 142
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 143
    iput-object v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 145
    :cond_3
    return-void
.end method

.method public getCurrentPosition()J
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_RUNNING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_PAUSED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    if-ne v0, v1, :cond_1

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Media.onStatus(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_POSITION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    .line 317
    int-to-long v0, v0

    .line 320
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getDuration(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 352
    const/high16 v0, -0x40000000    # -2.0f

    .line 367
    :goto_0
    return v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 357
    iget v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->duration:F

    goto :goto_0

    .line 362
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->prepareOnly:Z

    .line 363
    invoke-virtual {p0, p1}, Lcom/taobao/gcanvas/GAudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 367
    iget v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->duration:F

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->ordinal()I

    move-result v0

    return v0
.end method

.method public isStreaming(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 332
    const-string/jumbo v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadingAudio()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->audioFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->readyPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_READY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    .line 264
    :cond_0
    return-void
.end method

.method public moveFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 191
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->tempFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "renaming "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->tempFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    const-string/jumbo v2, "AudioPlayer"

    invoke-static {v2, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "AudioPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FAILED "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    return-void

    .line 197
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->handler:Lcom/taobao/gcanvas/GAudioHandler;

    invoke-virtual {v2}, Lcom/taobao/gcanvas/GAudioHandler;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 304
    const-string/jumbo v0, "AudioPlayer"

    const-string/jumbo v1, "on completion is calling stopped"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_STOPPED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setState(Lcom/taobao/gcanvas/GAudioPlayer$STATE;)V

    .line 306
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    .line 417
    const-string/jumbo v0, "AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioPlayer.onError("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 421
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', { \"code\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 381
    iget v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->seekOnPrepared:I

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->seekToPlaying(I)V

    .line 383
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->prepareOnly:Z

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 385
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_RUNNING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setState(Lcom/taobao/gcanvas/GAudioPlayer$STATE;)V

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->seekOnPrepared:I

    .line 391
    :goto_0
    invoke-direct {p0}, Lcom/taobao/gcanvas/GAudioPlayer;->getDurationInSeconds()F

    move-result v0

    iput v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->duration:F

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->prepareOnly:Z

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_DURATION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->duration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    .line 397
    return-void

    .line 388
    :cond_0
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_STARTING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setState(Lcom/taobao/gcanvas/GAudioPlayer$STATE;)V

    goto :goto_0
.end method

.method public pausePlaying()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_RUNNING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 274
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_PAUSED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setState(Lcom/taobao/gcanvas/GAudioPlayer$STATE;)V

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    const-string/jumbo v0, "AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioPlayer Error: pausePlaying() called during invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-virtual {v2}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", { \"code\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_NONE_ACTIVE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekToPlaying(I)V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->audioFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->readyPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 252
    const-string/jumbo v0, "AudioPlayer"

    const-string/jumbo v1, "Send a onStatus update for the new seek"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_POSITION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iput p1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->seekOnPrepared:I

    goto :goto_0
.end method

.method public setSourceAudio(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->audioFile:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 471
    :cond_0
    return-void
.end method

.method public startPlaying(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0, p1}, Lcom/taobao/gcanvas/GAudioPlayer;->readyPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 239
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_RUNNING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setState(Lcom/taobao/gcanvas/GAudioPlayer$STATE;)V

    .line 240
    iput v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->seekOnPrepared:I

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iput-boolean v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->prepareOnly:Z

    goto :goto_0
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$1;->$SwitchMap$com$taobao$gcanvas$GAudioPlayer$MODE:[I

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->mode:Lcom/taobao/gcanvas/GAudioPlayer$MODE;

    invoke-virtual {v1}, Lcom/taobao/gcanvas/GAudioPlayer$MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 155
    :pswitch_0
    const-string/jumbo v0, "AudioPlayer"

    const-string/jumbo v1, "AudioPlayer Error: Can\'t record in play mode."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", { \"code\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_1
    iput-object p1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->audioFile:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 161
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 162
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 163
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->tempFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 166
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 167
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_RUNNING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setState(Lcom/taobao/gcanvas/GAudioPlayer$STATE;)V

    .line 168
    iget v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->iRecoderCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->iRecoderCount:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 176
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", { \"code\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 179
    :pswitch_2
    const-string/jumbo v0, "AudioPlayer"

    const-string/jumbo v1, "AudioPlayer Error: Already recording."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", { \"code\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stopPlaying()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_RUNNING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_PAUSED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    if-ne v0, v1, :cond_1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 288
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 289
    const-string/jumbo v0, "AudioPlayer"

    const-string/jumbo v1, "stopPlaying is calling stopped"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_STOPPED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setState(Lcom/taobao/gcanvas/GAudioPlayer$STATE;)V

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_1
    const-string/jumbo v0, "AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioPlayer Error: stopPlaying() called during invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-virtual {v2}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GAudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", { \"code\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GAudioPlayer;->MEDIA_ERR_NONE_ACTIVE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->iRecoderCount:I

    if-lez v0, :cond_1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->state:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_RUNNING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 214
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_STOPPED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->setState(Lcom/taobao/gcanvas/GAudioPlayer$STATE;)V

    .line 216
    :cond_0
    iget v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->iRecoderCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->iRecoderCount:I

    .line 217
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 218
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioPlayer;->audioFile:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GAudioPlayer;->moveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_1
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
