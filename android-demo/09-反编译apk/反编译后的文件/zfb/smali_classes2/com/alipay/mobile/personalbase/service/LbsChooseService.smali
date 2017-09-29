.class public abstract Lcom/alipay/mobile/personalbase/service/LbsChooseService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "LbsChooseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/personalbase/service/LbsChooseService$ChooseCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract chooseLbs(Lcom/alipay/mobile/personalbase/service/LbsChooseService$ChooseCallback;)V
.end method

.method public abstract removeCallback()V
.end method
