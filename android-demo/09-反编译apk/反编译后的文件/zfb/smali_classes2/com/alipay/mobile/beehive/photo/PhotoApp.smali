.class public Lcom/alipay/mobile/beehive/photo/PhotoApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "PhotoApp.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BizsdkApplication"


# instance fields
.field private param:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/PhotoApp;->param:Landroid/os/Bundle;

    .line 12
    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/PhotoApp;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BizsdkApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onCreate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/PhotoApp;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BizsdkApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDestroy "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/PhotoApp;->getAppId()Ljava/lang/String;

    .line 47
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BizsdkApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onStop "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/PhotoApp;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
