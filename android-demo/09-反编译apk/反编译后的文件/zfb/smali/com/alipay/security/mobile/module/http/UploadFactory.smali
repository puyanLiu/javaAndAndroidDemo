.class public Lcom/alipay/security/mobile/module/http/UploadFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createV2(Landroid/content/Context;)Lcom/alipay/security/mobile/module/http/v2/IUploadV2;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    move-result-object v0

    goto :goto_0
.end method
