.class public abstract Lcom/alipay/mobile/beehive/service/PhotoService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "PhotoService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract browsePhoto(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/util/List;Landroid/os/Bundle;Lcom/alipay/mobile/beehive/service/PhotoBrowseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/alipay/mobile/beehive/service/PhotoBrowseListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract editPhoto(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/os/Bundle;Lcom/alipay/mobile/beehive/service/PhotoEditListener;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public abstract selectPhoto(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Lcom/alipay/mobile/beehive/service/PhotoSelectListener;)V
.end method

.method public abstract selectPhoto(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/util/List;Landroid/os/Bundle;Lcom/alipay/mobile/beehive/service/PhotoSelectListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/alipay/mobile/beehive/service/PhotoSelectListener;",
            ")V"
        }
    .end annotation
.end method
