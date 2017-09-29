.class public interface abstract Lcom/alipay/mobile/beehive/service/PhotoSelectListener;
.super Ljava/lang/Object;
.source "PhotoSelectListener.java"


# virtual methods
.method public abstract onPhotoSelected(Ljava/util/List;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onSelectCanceled()V
.end method
