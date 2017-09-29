.class final Lcom/alipay/mobile/socialsdk/chat/processer/j;
.super Ljava/lang/Object;
.source "ChatResourceProcesser.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/j;->a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 394
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;->getSourcePath()Ljava/lang/String;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/j;->a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8868\u60c5\u56fe\u7247\u4e0b\u8f7d\u8d44\u6e90\u5931\u8d25 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/j;->a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProcess(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public final onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;->getSourcePath()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/j;->a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;Ljava/lang/String;)V

    goto :goto_0
.end method
