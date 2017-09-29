.class public interface abstract Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuView;
.super Ljava/lang/Object;
.source "IDanmakuView.java"


# static fields
.field public static final THREAD_TYPE_HIGH_PRIORITY:I = 0x2

.field public static final THREAD_TYPE_LOW_PRIORITY:I = 0x3

.field public static final THREAD_TYPE_MAIN_THREAD:I = 0x1

.field public static final THREAD_TYPE_NORMAL_PRIORITY:I


# virtual methods
.method public abstract addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addDanmaku(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addDanmakuBuffered(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
.end method

.method public abstract addDanmakuListBuffered(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearDanmakusOnScreen()V
.end method

.method public abstract enableDanmakuDrawingCache(Z)V
.end method

.method public abstract getCurrentTime()J
.end method

.method public abstract getHeight()I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getWidth()I
.end method

.method public abstract hide()V
.end method

.method public abstract hideAndPauseDrawTask()J
.end method

.method public abstract isDanmakuDrawingCacheEnabled()Z
.end method

.method public abstract isHardwareAccelerated()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract isShown()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public abstract removeAllDanmakus()V
.end method

.method public abstract removeAllLiveDanmakus()V
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(Ljava/lang/Long;)V
.end method

.method public abstract setCallback(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;)V
.end method

.method public abstract setDrawingThreadType(I)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract show()V
.end method

.method public abstract showAndResumeDrawTask(Ljava/lang/Long;)V
.end method

.method public abstract showFPS(Z)V
.end method

.method public abstract start()V
.end method

.method public abstract start(J)V
.end method

.method public abstract stop()V
.end method

.method public abstract toggle()V
.end method
