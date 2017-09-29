.class public interface abstract Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;
.super Ljava/lang/Object;
.source "IDrawTask.java"


# virtual methods
.method public abstract addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
.end method

.method public abstract clearDanmakusOnScreen(J)V
.end method

.method public abstract draw(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer",
            "<*>;)",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;"
        }
    .end annotation
.end method

.method public abstract prepare()V
.end method

.method public abstract quit()V
.end method

.method public abstract removeAllDanmakus()V
.end method

.method public abstract removeAllLiveDanmakus()V
.end method

.method public abstract requestClear()V
.end method

.method public abstract requestHide()V
.end method

.method public abstract reset()V
.end method

.method public abstract seek(J)V
.end method

.method public abstract setParser(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;)V
.end method

.method public abstract start()V
.end method
