.class Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1$1;
.super Ljava/lang/Object;
.source "EmotionPackageDownloadHelper.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/widget/AddPackageCallback;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1$1;->this$1:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 76
    const-string/jumbo v0, "KEY_BUILD_IN_FLAG"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/StorageHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
