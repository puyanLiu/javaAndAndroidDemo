.class public Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;
.super Landroid/os/Handler;
.source "LoadDataProcessHandler.java"


# instance fields
.field private a:Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;->a:Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;

    .line 18
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;->a:Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 24
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;->a:Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;->loadData(Landroid/os/Bundle;)V

    .line 26
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;->a:Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;

    .line 30
    return-void
.end method
