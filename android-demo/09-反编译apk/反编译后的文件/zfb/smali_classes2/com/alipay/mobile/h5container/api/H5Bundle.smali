.class public Lcom/alipay/mobile/h5container/api/H5Bundle;
.super Ljava/lang/Object;
.source "H5Bundle.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Bundle"


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Listener;",
            ">;"
        }
    .end annotation
.end field

.field private params:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->listeners:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V
    .locals 1

    .prologue
    .line 25
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    return-void
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->params:Landroid/os/Bundle;

    .line 36
    return-void
.end method
