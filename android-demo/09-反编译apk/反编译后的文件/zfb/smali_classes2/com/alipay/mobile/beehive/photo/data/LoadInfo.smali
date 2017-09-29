.class public Lcom/alipay/mobile/beehive/photo/data/LoadInfo;
.super Ljava/lang/Object;
.source "LoadInfo.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadInfo"


# instance fields
.field public isNeedFullScreen:Z

.field public loading:Z

.field public loadingOrigin:Z

.field public photoItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

.field public photoPreview:Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

.field public progress:I

.field public proxy:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

.field public taskId:Ljava/lang/String;

.field public thumbHeight:I

.field public thumbWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCanceled(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoadInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onLoadCanceled "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->proxy:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->proxy:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;->onLoadCanceled(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onLoadComplete(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoadInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onLoadComplete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->proxy:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->proxy:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;->onLoadComplete(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onLoadFailed(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoadInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onLoadFailed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->proxy:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->proxy:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;->onLoadFailed(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onLoadProgress(Ljava/lang/String;II)V
    .locals 4

    .prologue
    .line 39
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoadInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onLoadProgress "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->proxy:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->proxy:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;->onLoadProgress(Ljava/lang/String;II)V

    .line 43
    :cond_0
    return-void
.end method
