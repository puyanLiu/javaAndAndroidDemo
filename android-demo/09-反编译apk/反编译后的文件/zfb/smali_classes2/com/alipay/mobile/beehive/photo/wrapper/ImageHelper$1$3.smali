.class Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$3;
.super Ljava/lang/Object;
.source "ImageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;

.field private final synthetic val$apImageDownloadRsp:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;

.field private final synthetic val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;Lcom/alipay/mobile/beehive/photo/data/LoadInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$3;->this$1:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$3;->val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    iput-object p3, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$3;->val$apImageDownloadRsp:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$3;->val$loadInfo:Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$1$3;->val$apImageDownloadRsp:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;->getSourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->onLoadFailed(Ljava/lang/String;)V

    .line 226
    return-void
.end method
