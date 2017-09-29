.class public Lcom/alipay/mobile/common/logging/render/ExceptionRender;
.super Lcom/alipay/mobile/common/logging/render/BaseRender;
.source "ExceptionRender.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/render/BaseRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string/jumbo v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v1, "4"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v1, "exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1, p4}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "appID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->getDes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {v0, p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "refViewID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "viewID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "actionID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "actionToken"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 103
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v0, p3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    invoke-static {p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
