.class public abstract Lcom/alipay/mobile/framework/service/ext/ExternalService;
.super Lcom/alipay/mobile/framework/service/MicroService;
.source "ExternalService.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/MicroService;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/ExternalService;->a:Z

    return-void
.end method


# virtual methods
.method public final create(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/ExternalService;->a:Z

    .line 24
    return-void
.end method

.method public final destroy(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->onDestroyContent(Lcom/alipay/mobile/framework/MicroContent;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->onDestroy(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/ExternalService;->a:Z

    .line 31
    return-void
.end method

.method public final isActivated()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/ExternalService;->a:Z

    return v0
.end method
