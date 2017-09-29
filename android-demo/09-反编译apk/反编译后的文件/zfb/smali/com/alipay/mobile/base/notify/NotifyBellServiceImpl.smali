.class public Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;
.super Lcom/alipay/mobile/framework/service/notify/NotifyBellService;
.source "NotifyBellServiceImpl.java"


# static fields
.field private static final BUSINESS_NOTIFY:Ljava/lang/String; = "BusinessNotify"

.field private static final DEFAULT_VIBRATOR_TIME:J = 0x2bcL

.field private static final SOCIAL_NOTIFY:Ljava/lang/String; = "SocailNotify"

.field private static final SOUND_OPEN:Ljava/lang/String; = "SoundOpen"

.field private static final SP_NAME:Ljava/lang/String; = "notifybell"

.field private static final TAG:Ljava/lang/String; = "NotifyBellServiceImpl"

.field private static final VIBRATION_OPEN:Ljava/lang/String; = "VibrationOpen"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;-><init>()V

    return-void
.end method


# virtual methods
.method public isBusinessNotifyOpen()Z
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "BusinessNotify"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOpenSound()Z
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "SoundOpen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOpenVibration()Z
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "VibrationOpen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSocialNotifyOpen()Z
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "SocailNotify"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "notifybell"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    .line 82
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public playSound()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "SoundOpen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 115
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 116
    const-string/jumbo v0, "audio"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 117
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 119
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 120
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 121
    new-instance v0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl$1;-><init>(Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;)V

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 128
    new-instance v0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl$2;-><init>(Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;)V

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "NotifyBellServiceImpl"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public playSoundFile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public playSystemAlert()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->playSound()V

    .line 60
    return-void
.end method

.method public playSystemVibrate()V
    .locals 2

    .prologue
    .line 64
    const-wide/16 v0, 0x2bc

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->playVibration(J)V

    .line 65
    return-void
.end method

.method public playSystemVibrate(J)V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->playVibration(J)V

    .line 70
    return-void
.end method

.method public playVibration(J)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "VibrationOpen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->vibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_1

    .line 97
    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->vibrator:Landroid/os/Vibrator;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBusinessNotifyOpen(Z)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "BusinessNotify"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    :cond_0
    return-void
.end method

.method public setSocialNotifyOpen(Z)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "SocailNotify"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    :cond_0
    return-void
.end method

.method public setSoundOpen(Z)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "SoundOpen"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    :cond_0
    return-void
.end method

.method public setVibrationOpen(Z)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "VibrationOpen"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    :cond_0
    return-void
.end method
