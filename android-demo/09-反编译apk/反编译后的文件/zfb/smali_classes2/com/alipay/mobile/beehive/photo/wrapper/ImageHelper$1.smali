.class Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;
.super Ljava/lang/Object;
.source "ImageHelper.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# instance fields
.field private final synthetic val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/data/LoadInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;->val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;->val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$3;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;->val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$3;-><init>(Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;Lcom/alipay/mobile/beehive/photo/data/LoadInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onProcess(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;->val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$2;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;->val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$2;-><init>(Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;Lcom/alipay/mobile/beehive/photo/data/LoadInfo;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;->val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$1;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;->val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$1;-><init>(Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;Lcom/alipay/mobile/beehive/photo/data/LoadInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
