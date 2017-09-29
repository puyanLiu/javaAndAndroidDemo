.class public interface abstract Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;
.super Ljava/lang/Object;
.source "IRenderer.java"


# static fields
.field public static final CACHE_RENDERING:I = 0x1

.field public static final NOTHING_RENDERING:I = 0x0

.field public static final TEXT_RENDERING:I = 0x2


# virtual methods
.method public abstract clear()V
.end method

.method public abstract draw(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;J)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;
.end method

.method public abstract release()V
.end method
